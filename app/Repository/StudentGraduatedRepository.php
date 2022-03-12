<?php

namespace App\Repository;

use App\Models\Grade;
use App\Models\Student;

class StudentGraduatedRepository implements StudentGraduatedRepositoryInterface
{
    public function index()
    {
        $students = Student::onlyTrashed()->get();
        return view('dashboard.students.graduated.index', compact('students'));
    }

    public function create()
    {
        $grades = Grade::all();
        return view('dashboard.students.graduated.create', compact('grades'));
    }

    public function SoftDelete($request)
    {
        $students = Student::where('grade_id', $request->grade_id)
            ->where('classroom_id', $request->classroom_id)
            ->where('section_id',$request->section_id)->get();

        if($students->count() < 1){
            return redirect()->back()->with('error_Graduated', __('cpanel/students.error-promotions'));
        }

        foreach ($students as $student){
            $ids = explode(',',$student->id);
            student::whereIn('id', $ids)->Delete();
        }

        toastr()->success(trans('cpanel/messages.success'));

        return redirect()->route('Graduated.index');
    }

    public function ReturnData($request)
    {
        student::onlyTrashed()->where('id', $request->id)->first()->restore();
        toastr()->success(trans('cpanel/messages.success'));
        return redirect()->back();
    }

    public function destroy($request)
    {
        student::onlyTrashed()->where('id', $request->id)->first()->forceDelete();
        toastr()->error(trans('cpanel/messages.Delete'));
        return redirect()->back();
    }


}
