<?php

namespace App\Repository;

use App\Models\Grade;
use App\Models\Subject;
use App\Models\Teacher;

class SubjectRepository implements SubjectRepositoryInterface
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

    public function store($request)
    {
        try {
            $subjects = new Subject();
            $subjects->name = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $subjects->grade_id = $request->grade_id;
            $subjects->classroom_id = $request->classroom_id;
            $subjects->teacher_id = $request->teacher_id;
            $subjects->save();

            toastr()->success(trans('cpavel/messages.success'));
            return redirect()->route('subjects.create');
        }
        catch (\Exception $e) {
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function edit($id)
    {
        $subject = Subject::findorfail($id);
        $grades = Grade::get();
        $teachers = Teacher::get();
        return view('dashboard.subjects.edit', compact('subject','grades', 'teachers'));
    }

    public function update($request)
    {
        try {
            $subjects =  Subject::findorfail($request->id);

            $subjects->name         = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $subjects->grade_id     = $request->grade_id;
            $subjects->classroom_id = $request->classroom_id;
            $subjects->teacher_id   = $request->teacher_id;
            $subjects->save();

            toastr()->success(trans('cpavel/messages.Update'));
            return redirect()->route('subjects.create');
        }
        catch (\Exception $e) {
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function destroy($request)
    {
        try {
            Subject::destroy($request->id);
            toastr()->error(trans('cpavel/messages.Delete'));
            return redirect()->back();
        }

        catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }
}
