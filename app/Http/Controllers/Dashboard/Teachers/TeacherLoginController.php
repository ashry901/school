<?php

namespace App\Http\Controllers\Dashboard\Teachers;

use App\Http\Controllers\Controller;
use App\Http\Requests\TeacherLoginRequest;

class TeacherLoginController extends Controller
{
    public function loginTeacher()
    {
        return view('dashboard.auth.teacher-login');
    }

    public function postLoginTeacher(TeacherLoginRequest $request)
    {
        //validation
        //check , store , update

        //$remember_me = $request->has('remember_me') ? true : false;
        if (auth()->guard('teacher')->attempt([
            'email'     => $request->input("email"),
            'password'  => $request->input("password")])) {
            return redirect()->route('teacher.dashboard');
        }
        return redirect()->back()->with(['error' => 'Something Wrong Try Again']);
    }

    public function logoutTeacher()
    {
        $gaurd = $this->getGaurdTeacher();
        $gaurd->logout();

        return redirect()->route('teacher.login-teacher');
    }

    private function getGaurdTeacher()
    {
        return auth('teacher');
    }

}
