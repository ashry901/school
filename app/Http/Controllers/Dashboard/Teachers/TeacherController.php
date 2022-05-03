<?php

namespace App\Http\Controllers\Dashboard\Teachers;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTeachers;
use App\Models\Gender;
use App\Models\Specialization;
use App\Models\Teacher;
use Illuminate\Http\Request;
//use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use DB;

class TeacherController extends Controller
{
    public function index()
    {
        $teachers = Teacher::all();
        $specializations = Specialization::all();
        $genders = Gender::all();
        return view('dashboard.teachers.index', compact(
            'teachers', 'specializations', 'genders'));
    }

    public function create()
    {
        $teachers = Teacher::all();
        $specializations = Specialization::all();
        $genders = Gender::all();
        return view('dashboard.teachers.create', compact(
            'specializations','genders', 'teachers'));
    }

    public function store(StoreTeachers $request)
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

            toastr()->success(trans('cpanel/messages.success'));
            //return redirect()->route('teachers.index')->with(['success' => 'Added Successfully']);
            return redirect()->route('teachers.index');
        }
        catch (Exception $e) {

            DB::rollback();
            return redirect()->route('teachers.index')->with(['error' => $e->getMessage()]);
        }
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $data['teachers']        = Teacher::all();
        $data['specializations'] = Specialization::all();
        $data['genders']         = Gender::all();
        return view('dashboard.teachers.edit', compact(
            'teachers','specializations', 'genders'));
    }

    public function update(StoreTeachers $request, $id)
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
            toastr()->success(trans('cpanel/messages.Update'));
            return redirect()->route('teachers.index');
        }
        catch (Exception $e) {
            DB::rollback();
            return redirect()->back()->with(['error' => $e->getMessage()]);
        }
    }

    public function destroy(Request $request)
    {
        Teacher::findOrFail($request->id)->delete();
        toastr()->error(trans('cpanel/messages.Delete'));
        return redirect()->route('teachers.index');
    }

}
