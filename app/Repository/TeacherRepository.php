<?php

namespace App\Repository;

use App\Models\Gender;
use App\Models\Specialization;
use App\Models\Teacher;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
//use DB;

class TeacherRepository implements TeacherRepositoryInterface
{
    public function getAllTeachers()
    {
        return Teacher::all();
    }

    public function Getspecialization()
    {
        return Specialization::all();
    }

    public function getGender()
    {
       return Gender::all();
    }

    public function StoreTeachers($request)
    {
        try {
            DB::beginTransaction();

            $teachers = new Teacher();
            $teachers->email                = $request->email;
            $teachers->password             = Hash::make($request->password);
            $teachers->name                 = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $teachers->specialization_id    = $request->specialization_id;
            $teachers->gender_id            = $request->gender_id;
            $teachers->joining_date         = $request->joining_date;
            $teachers->address              = $request->address;
            $teachers->save();

            DB::commit();

            toastr()->success(trans('messages.success'));
            //return redirect()->route('teachers.index')->with(['success' => 'Added Successfully']);
            return redirect()->route('teachers.index');
        }
        catch (Exception $e) {

            DB::rollback();
            return redirect()->route('teachers.index')->with(['error' => $e->getMessage()]);
        }

    }

    public function editTeachers($id)
    {
        return Teacher::findOrFail($id);
    }

    public function UpdateTeachers($request)
    {
        try {
            DB::beginTransaction();

            $teachers = Teacher::findOrFail($request->id);
            $teachers->email             = $request->email;
            $teachers->password          = Hash::make($request->password);
            $teachers->name              = ['en' => $request->name_en, 'ar' => $request->name_ar];
            $teachers->specialization_id = $request->specialization_id;
            $teachers->gender_id         = $request->gender_id;
            $teachers->joining_date      = $request->joining_date;
            $teachers->address           = $request->address;
            $teachers->save();

            DB::commit();
            toastr()->success(trans('messages.Update'));
            return redirect()->route('teachers.index');
        }
        catch (Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function DeleteTeachers($request)
    {
        Teacher::findOrFail($request->id)->delete();
        toastr()->error(trans('messages.Delete'));
        return redirect()->route('teachers.index');
    }

}
