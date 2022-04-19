<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Repository\SubjectRepositoryInterface;
use Illuminate\Http\Request;
use App\Models\Classroom;
use App\Models\Grade;
use App\Models\Section;
use App\Models\Subject;
use App\Models\Teacher;
use Illuminate\Support\Facades\DB;

class SubjectController extends Controller
{
    public function index()
    {
        $subjects = Subject::get();
        return view('dashboard.subjects.index', compact('subjects'));
    }

    public function create()
    {
        $grades = Grade::get();
        $teachers = Teacher::get();
        return view('dashboard.subjects.create', compact('grades','teachers'));
    }

    public function store(Request $request)
    {
        try {
            DB::beginTransaction();
            $subjects = new Subject();
            $subjects->name         = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $subjects->grade_id     = $request->grade_id;
            $subjects->classroom_id = $request->class_id;
            $subjects->teacher_id   = $request->teacher_id;
            $subjects->save();

            toastr()->success(trans('cpanel/messages.success'));
            DB::commit();
            return redirect()->route('admin.subjects.create');
        }
        catch (\Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $subject  = Subject::findorfail($id);
        $grades   = Grade::get();
        $teachers = Teacher::get();
        return view('dashboard.subjects.edit', compact('subject','grades', 'teachers'));
    }

    public function update(Request $request)
    {
        try {
            $subjects =  Subject::findorfail($request->id);

            $subjects->name         = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $subjects->grade_id     = $request->grade_id;
            $subjects->classroom_id = $request->class_id;
            $subjects->teacher_id   = $request->teacher_id;
            $subjects->save();

            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('admin.subjects');
        }
        catch (\Exception $e) {
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        try {
            Subject::destroy($request->id);
            toastr()->error(trans('cpanel/messages.Delete'));
            return redirect()->back();
        }

        catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function getClasses($id)
    {
        $list_classes = Classroom::where("grade_id", $id)->pluck("name_class", "id");
        return $list_classes;
    }
}
