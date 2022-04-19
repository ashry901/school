<?php

namespace App\Repository;

use App\Models\ProcessingFee;
use App\Models\Student;
use App\Models\StudentAccount;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;
//use DB;

class ProcessingFeeRepository implements ProcessingFeeRepositoryInterface
{
    public function index()
    {
        $processingFees = ProcessingFee::all();
        return view('dashboard.processing_fee.index', compact('processingFees'));
    }

    public function show($id)
    {
        $student = Student::findorfail($id);
        return view('dashboard.processing_fee.add', compact('student'));
    }

    public function store($request)
    {
        DB::beginTransaction();
        try {
            // حفظ البيانات في جدول معالجة الرسوم
            $processingFee = new ProcessingFee();
            $processingFee->date = date('Y-m-d');
            $processingFee->student_id = $request->student_id;
            $processingFee->amount = $request->debit;
            $processingFee->description = $request->description;
            $processingFee->save();

            // حفظ البيانات في جدول حساب الطلاب
            $students_accounts = new StudentAccount();
            $students_accounts->date = date('Y-m-d');
            $students_accounts->type = 'ProcessingFee';
            $students_accounts->student_id = $request->student_id;
            $students_accounts->processing_id = $processingFee->id;
            $students_accounts->debit = 0.00;
            $students_accounts->credit = $request->debit;
            $students_accounts->description = $request->description;
            $students_accounts->save();

            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));

            return redirect()->route('processingFee.index');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function edit($id)
    {
        $processingFee = ProcessingFee::findorfail($id);
        return view('dashboard.processing_fee.edit',compact('processingFee'));
    }

    public function update($request)
    {
        DB::beginTransaction();

        try {
            // تعديل البيانات في جدول معالجة الرسوم
            $processingFee = ProcessingFee::findorfail($request->id);;
            $processingFee->date = date('Y-m-d');
            $processingFee->student_id = $request->student_id;
            $processingFee->amount = $request->debit;
            $processingFee->description = $request->description;
            $processingFee->save();

            // تعديل البيانات في جدول حساب الطلاب
            $students_accounts = StudentAccount::where('processing_id',$request->id)->first();;
            $students_accounts->date = date('Y-m-d');
            $students_accounts->type = 'ProcessingFee';
            $students_accounts->student_id = $request->student_id;
            $students_accounts->processing_id = $processingFee->id;
            $students_accounts->debit = 0.00;
            $students_accounts->credit = $request->debit;
            $students_accounts->description = $request->description;
            $students_accounts->save();


            DB::commit();
            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('processingFee.index');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function destroy($request)
    {
        try {
            ProcessingFee::destroy($request->id);
            toastr()->error(trans('cpanel/messages.Delete'));
            return redirect()->back();
        }

        catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }
}
