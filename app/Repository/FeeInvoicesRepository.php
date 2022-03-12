<?php

namespace App\Repository;

use App\Models\Fee;
use App\Models\Fee_invoice;
use App\Models\Grade;
use App\Models\Student;
use App\Models\StudentAccount;
use Illuminate\Support\Facades\DB;

class FeeInvoicesRepository implements FeeInvoicesRepositoryInterface
{
    public function index()
    {
        $fee_invoices = Fee_invoice::all();
        $grades = Grade::all();
        return view('dashboard.fees_invoices.index', compact('fee_invoices','grades'));
    }

    public function show($id)
    {
        $student = Student::findorfail($id);
        $fees = Fee::where('classroom_id', $student->classroom_id)->get();
        return view('dashboard.fees_invoices.add', compact('student', 'fees'));
    }

    public function store($request)
    {
        $List_Fees = $request->List_Fees;

        DB::beginTransaction();
        try {
            foreach ($List_Fees as $List_Fee) {
                // حفظ البيانات في جدول فواتير الرسوم الدراسية
                $fees = new Fee_invoice();

                $fees->invoice_date = date('Y-m-d');
                $fees->student_id   = $List_Fee['student_id'];
                $fees->grade_id     = $request->grade_id;
                $fees->classroom_id = $request->classroom_id;
                $fees->fee_id       = $List_Fee['fee_id'];
                $fees->amount       = $List_Fee['amount'];
                $fees->description  = $List_Fee['description'];
                $fees->save();

                // حفظ البيانات في جدول حسابات الطلاب
                $StudentAccount = new StudentAccount();

                $StudentAccount->date           = date('Y-m-d');
                $StudentAccount->type           = 'invoice';
                $StudentAccount->fee_invoice_id = $fees->id;
                $StudentAccount->student_id     = $List_Fee['student_id'];
                $StudentAccount->debit          = $List_Fee['amount'];
                $StudentAccount->credit         = 0.00;
                $StudentAccount->description    = $List_Fee['description'];
                $StudentAccount->save();
            }
            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));

            return redirect()->route('Fees_Invoices.index');

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function edit($id)
    {
        $fee_invoices = Fee_invoice::findorfail($id);
        $fees = Fee::where('classroom_id',$fee_invoices->classroom_id)->get();
        return view('dashboard.fees_invoices.edit', compact('fee_invoices','fees'));
    }

    public function update($request)
    {
        DB::beginTransaction();
        try {
            // تعديل البيانات في جدول فواتير الرسوم الدراسية
            $Fees = Fee_invoice::findorfail($request->id);

            $Fees->fee_id       = $request->fee_id;
            $Fees->amount       = $request->amount;
            $Fees->description  = $request->description;
            $Fees->save();

            // تعديل البيانات في جدول حسابات الطلاب
            $StudentAccount = StudentAccount::where('fee_invoice_id', $request->id)->first();
            $StudentAccount->debit       = $request->amount;
            $StudentAccount->description = $request->description;
            $StudentAccount->save();
            DB::commit();

            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('Fees_Invoices.index');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function destroy($request)
    {
        try {
            Fee_invoice::destroy($request->id);
            toastr()->error(trans('cpanel/messages.Delete'));
            return redirect()->back();
        }

        catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

}
