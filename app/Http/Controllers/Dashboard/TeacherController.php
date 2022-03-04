<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTeachers;
use App\Models\Gender;
use App\Models\Specialization;
use App\Models\Teacher;
use Illuminate\Http\Request;
use App\Repository\TeacherRepositoryInterface;
use Illuminate\Support\Facades\DB;
//use DB;

class TeacherController extends Controller
{
    protected $teacher;

    public function __construct(TeacherRepositoryInterface $teacher)
    {
        $this->teacher = $teacher;
    }

    public function index()
    {
        $teachers = $this->teacher->getAllTeachers();
        //$Teachers = Teacher::all();
        return view('dashboard.teachers.teachers', compact('teachers'));
    }

    public function create()
    {
        $specializations = $this->teacher->Getspecialization();
        $genders = $this->teacher->getGender();
        return view('dashboard.teachers.create', compact('specializations','genders'));
    }

    public function store(Request $request)
    {
        return $this->teacher->StoreTeachers($request);
    }

    public function show($id)
    {
        //
    }

    public function edit($id)
    {
        $teachers = $this->teacher->editTeachers($id);
        $specializations = $this->teacher->Getspecialization();
        $genders = $this->teacher->getGender();
        return view('dashboard.teachers.edit', compact('teachers','specializations', 'genders'));
    }

    public function update(Request $request, $id)
    {
        return $this->teacher->UpdateTeachers($request);
    }

    public function destroy(Request $request)
    {
        return $this->teacher->DeleteTeachers($request);
    }
}
