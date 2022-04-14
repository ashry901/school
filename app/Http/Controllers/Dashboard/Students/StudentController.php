<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreStudentsRequest;
use App\Models\Student;
use App\Repository\StudentRepositoryInterface;
use Illuminate\Http\Request;
use App\Models\Classroom;
use App\Models\Gender;
use App\Models\Grade;
use App\Models\Image;
use App\Models\Guardian;
use App\Models\Nationalitie;
use App\Models\Section;
use App\Models\Bloodtype;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
//use DB;

class StudentController extends Controller
{
    public function index()
    {
        $students = Student::orderBy('id', 'DESC')->paginate(10);
        return view('dashboard.students.index', compact('students'));
    }

    public function create()
    {
//        $brands = Brand::select('id')->get();
//        return view('dashboard.brands.create', compact('brands'));
        $data = [];
        //$data['my_classes'] = Grade::select('id')->get();
        $data['my_classes']     = Grade::all();
        $data['classrooms']     = Classroom::all();
        $data['parents']        = Guardian::all();
        $data['genders']        = Gender::all();
        $data['nationals']      = Nationalitie::all();
        $data['bloodtypes']     = Bloodtype::all();

        return view('dashboard.students.add', $data);
    }

    public function store(StoreStudentsRequest $request)
    {
        DB::beginTransaction();

        try {
            $students = new Student();
            $students->name             = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $students->email            = $request->email;
            $students->password         = Hash::make($request->password);
            $students->gender_id        = $request->gender_id;
            $students->nationalitie_id  = $request->nationalitie_id;
            $students->blood_id         = $request->blood_id;
            $students->date_birth       = $request->date_birth;
            $students->grade_id         = $request->grade_id;
            $students->classroom_id     = $request->classroom_id;
            $students->section_id       = $request->section_id;
            $students->parent_id        = $request->parent_id;
            $students->academic_year    = $request->academic_year;
            $students->save();

            // insert img
            if($request->hasfile('photos'))
            {
                foreach($request->file('photos') as $file)
                {
                    $name = $file->getClientOriginalName();
                    $file->storeAs('attachments/students/'.$students->name, $file->getClientOriginalName(),'upload_attachments');

                    // insert in image_table
                    $images= new Image();
                    $images->filename=$name;
                    $images->imageable_id= $students->id;
                    $images->imageable_type = 'App\Models\Student';
                    $images->save();
                }
            }
            DB::commit(); // insert data
            toastr()->success(trans('cpanel/messages.success'));
            return redirect()->route('admin.students.create');

        }

        catch (\Exception $e){
            DB::rollback();
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function show($id)
    {
        $student = Student::findorfail($id);
        return view('dashboard.students.show', compact('student'));
    }

    public function getClassrooms($id)
    {
        $list_classes = Classroom::where("grade_id", $id)->pluck("name_class", "id");
        return $list_classes;
    }

    public function getSections($id)
    {
        $list_sections = Section::where("class_id", $id)->pluck("name_section", "id");
        return $list_sections;
    }

    public function edit($id)
    {
        $data['grades']      = Grade::all();
        $data['parents']     = Guardian::all();
        $data['genders']     = Gender::all();
        $data['nationals']   = Nationalitie::all();
        $data['type_bloods'] = Bloodtype::all();

        $students =  Student::findOrFail($id);
        return view('dashboard.students.edit', $data, compact('students'));
    }

    public function update(StoreStudentsRequest $request)
    {
        try {
            $edit_students = Student::findorfail($request->id);
            $edit_students->name            = ['ar' => $request->name_ar, 'en' => $request->name_en];
            $edit_students->email           = $request->email;
            $edit_students->password        = Hash::make($request->password);
            $edit_students->gender_id       = $request->gender_id;
            $edit_students->nationalitie_id = $request->nationalitie_id;
            $edit_students->blood_id        = $request->blood_id;
            $edit_students->date_birth      = $request->date_birth;
            $edit_students->grade_id        = $request->grade_id;
            $edit_students->classroom_id    = $request->classroom_id;
            $edit_students->section_id      = $request->section_id;
            $edit_students->parent_id       = $request->parent_id;
            $edit_students->academic_year   = $request->academic_year;

            $edit_students->save();
            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('admin.students');
        } catch (\Exception $e) {
            return redirect()->back()->withErrors(['error' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        Student::destroy($request->id);
        toastr()->error(trans('cpanel/messages.Delete'));
        return redirect()->route('admin.students');
    }

    public function upload_attachment(Request $request)
    {
        foreach($request->file('photos') as $file)
        {
            $name = $file->getClientOriginalName();
            $file->storeAs('attachments/students/'.$request->student_name, $file->getClientOriginalName(),'upload_attachments');

            // insert in image_table
            $images= new image();
            $images->filename=$name;
            $images->imageable_id = $request->student_id;
            $images->imageable_type = 'App\Models\Student';
            $images->save();
        }
        toastr()->success(trans('cpanel/messages.success'));
        return redirect()->route('students.show',$request->student_id);
    }

    public function download_attachment($studentsname,$filename)
    {
        return response()->download(public_path('attachments/students/'.$studentsname.'/'.$filename));
    }

    public function delete_attachment(Request $request)
    {
        // Delete img in server disk
        Storage::disk('upload_attachments')->delete('attachments/students/'.$request->student_name.'/'.$request->filename);

        // Delete in data
        image::where('id',$request->id)->where('filename',$request->filename)->delete();
        toastr()->error(trans('cpanel/messages.Delete'));
        return redirect()->route('students.show',$request->student_id);
    }

}
