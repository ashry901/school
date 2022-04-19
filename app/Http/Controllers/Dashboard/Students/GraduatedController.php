<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Models\Classroom;
use App\Models\Grade;
use App\Models\Promotion;
use App\Models\Section;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class GraduatedController extends Controller
{
    public function index()
    {
        $students = Student::onlyTrashed()->get();
        return view('dashboard.students.graduated.index', compact('students'));
    }

    public function create()
    {
//        $grades = Grade::all();
//        return view('dashboard.students.graduated.create',compact('grades'));

        $data = [];
        $data['grades']     = Grade::all();
        $data['classrooms'] = Classroom::all();

        return view('dashboard.students.graduated.create', $data);
    }

    public function store(Request $request)
    {
        DB::beginTransaction();

        try {
            $students = Student::where('grade_id', $request->grade_id)
                ->where('classroom_id', $request->classroom_id)
                ->where('section_id', $request->section_id)->get();

            if($students->count() < 1){
                return redirect()->back()->with('error_Graduated', __('cpanel/students.error_Graduated'));
            }

            foreach ($students as $student){
                $ids = explode(',',$student->id);
                student::whereIn('id', $ids)->Delete();
            }

            DB::commit();
            toastr()->success(trans('cpanel/messages.success'));
            return redirect()->back();

        } catch (\Exception $e) {
            DB::rollback();
            return redirect()->route('admin.graduated');
        }
    }

    public function update(Request $request)
    {
        student::onlyTrashed()->where('id', $request->id)->first()->restore();
        toastr()->success(trans('cpanel/messages.success'));
        return redirect()->back();
    }

    public function destroy(Request $request)
    {
        student::onlyTrashed()->where('id', $request->id)->first()->forceDelete();
        toastr()->error(trans('cpanel/messages.Delete'));
        return redirect()->back();
    }

    public function getClassroom($id)
    {
        $list_classes = Classroom::where("grade_id", $id)->pluck("name_class", "id");
        return $list_classes;
    }

    public function getSection($id)
    {
        $list_sections = Section::where("class_id", $id)->pluck("name_section", "id");
        return $list_sections;
    }

}
