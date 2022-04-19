<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Models\Fee;
use App\Models\Fee_invoice;
use App\Models\Grade;
use App\Models\Student;
use App\Models\StudentAccount;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class FeesInvoicesController extends Controller
{
    public function index()
    {
        $fee_invoices = Fee_invoice::all();
        $grades = Grade::all();
        return view('dashboard.fees_invoices.index', compact('fee_invoices','grades'));
    }

//    public function create($id)
//    {
//        $student = Student::findorfail($id);
//        $fees = Fee::where('classroom_id', $student->classroom_id)->get();
//        return view('dashboard.fees_invoices.add', compact('student', 'fees'));
//    }

    public function show($id)
    {
        $student = Student::findorfail($id);
        $fees = Fee::where('classroom_id', $student->classroom_id)->get();
        return view('dashboard.fees_invoices.add', compact('student', 'fees'));
    }

    public function store(Request $request)
    {
        $list_fees = $request->list_fees;

        DB::beginTransaction();
        try {
            foreach ($list_fees as $list_fee) {
                // حفظ البيانات في جدول فواتير الرسوم الدراسية
                $fees = new Fee_invoice();

                $fees->invoice_date = date('Y-m-d');
                $fees->student_id   = $list_fee['student_id'];
                $fees->grade_id     = $request->grade_id;
                $fees->classroom_id = $request->classroom_id;
                $fees->fee_id       = $list_fee['fee_id'];
                $fees->amount       = $list_fee['amount'];
                $fees->description  = $list_fee['description'];
                $fees->save();

                // حفظ البيانات في جدول حسابات الطلاب
                $studentAccount = new StudentAccount();

                $studentAccount->date           = date('Y-m-d');
                $studentAccount->type           = 'invoice';
                $studentAccount->fee_invoice_id = $fees->id;
                $studentAccount->student_id     = $list_fee['student_id'];
                $studentAccount->debit          = $list_fee['amount'];
                $studentAccount->credit         = 0.00;
                $studentAccount->description    = $list_fee['description'];
                $studentAccount->save();
            }
            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));

            return redirect()->route('admin.fees_invoices');

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

    public function update(Request $request)
    {
        DB::beginTransaction();
        try {
            // تعديل البيانات في جدول فواتير الرسوم الدراسية
            $fees = Fee_invoice::findorfail($request->id);

            $fees->fee_id       = $request->fee_id;
            $fees->amount       = $request->amount;
            $fees->description  = $request->description;
            $fees->save();

            // تعديل البيانات في جدول حسابات الطلاب
            $studentAccount = StudentAccount::where('fee_invoice_id', $request->id)->first();
            $studentAccount->debit       = $request->amount;
            $studentAccount->description = $request->description;
            $studentAccount->save();
            DB::commit();

            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('admin.fees_invoices');
        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
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
