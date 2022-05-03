<?php

namespace App\Http\Controllers\Dashboard\Students;

use App\Http\Controllers\Controller;
use App\Http\Requests\StudentLoginRequest;
use App\Http\Requests\TeacherLoginRequest;

class StudentLoginController extends Controller
{
    public function loginStudent()
    {
        return view('dashboard.auth.student-login');
    }

    public function postLoginStudent(StudentLoginRequest $request)
    {
        if (auth()->guard('student')->attempt([
            'email'     => $request->input("email"),
            'password'  => $request->input("password")])) {
            return redirect()->route('dashboard.students.cpanel.student-cpanel');
        }
        return redirect()->back()->with(['error' => 'Something Wrong Try Again']);
    }

//    public function logoutStudent()
//    {
//        $gaurd = $this->getGaurdStudent();
//        $gaurd->logout();
//
//        return redirect()->route('student.login-student');
//    }

//    private function getGaurdStudent()
//    {
//        return auth('student');
//    }

}
