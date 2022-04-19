<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreFeesRequest;
use App\Repository\FeesRepositoryInterface;
use Illuminate\Http\Request;
use App\Models\Classroom;
use App\Models\Fee;
use App\Models\Grade;
//use Illuminate\Support\Facades\DB;
use App\Models\Section;
use DB;

class FeesController extends Controller
{
    public function index()
    {
        $fees = Fee::all();
        $grades = Grade::all();
        return view('dashboard.fees.index', compact('fees','grades'));
    }

    public function create()
    {
        $grades = Grade::all();
        return view('dashboard.fees.add', compact('grades'));
    }

    public function store(StoreFeesRequest $request)
    {
        try {
            $fees = new Fee();
            $fees->title        = ['en' => $request->title_en, 'ar' => $request->title_ar];
            $fees->amount       = $request->amount;
            $fees->fee_type     = $request->fee_type;
            $fees->grade_id     = $request->grade_id;
            $fees->classroom_id = $request->classroom_id;
            $fees->description  = $request->description;
            $fees->year         = $request->year;

            $fees->save();

            toastr()->success(trans('cpanel/messages.success'));

            return redirect()->route('admin.fees');

        }

        catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function edit($id)
    {
        $fee = Fee::findorfail($id);
        $grades = Grade::all();
        return view('dashboard.fees.edit', compact('fee','grades'));
    }

    public function update(StoreFeesRequest $request)
    {
        try {
            $fees = Fee::findorfail($request->id);

            DB::beginTransaction();

            $fees->title            = ['en' => $request->title_en, 'ar' => $request->title_ar];
            $fees->amount           = $request->amount;
            $fees->fee_type         = $request->fee_type;
            $fees->grade_id         = $request->grade_id;
            $fees->classroom_id     = $request->classroom_id;
            $fees->description      = $request->description;
            $fees->year             = $request->year;
            $fees->save();

            DB::commit();
            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('admin.fees');
        }

        catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            Fee::destroy($request->id);
            toastr()->error(trans('cpanel/messages.Delete'));
            return redirect()->back();
        }

        catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function getClasroom($id)
    {
        $list_classes = Classroom::where("grade_id", $id)->pluck("name_class", "id");
        return $list_classes;
    }

    public function getSectione($id)
    {
        $list_sections = Section::where("class_id", $id)->pluck("name_section", "id");
        return $list_sections;
    }
}
