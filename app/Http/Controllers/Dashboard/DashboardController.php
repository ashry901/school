<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        return view('dashboard.index');
    }

    public function teacher()
    {
        return view('dashboard.teachers.cpanel.teacher-cpanel');
    }

    public function student()
    {
        return view('dashboard.students.cpanel.student-cpanel');
    }
}
