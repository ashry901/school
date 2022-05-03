<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
//use Illuminate\Support\Facades\Request;
use Request;

class Authenticate extends Middleware
{
//    protected function redirectTo($request)
//    {
//        if (! $request->expectsJson()) {
//            return route('login');
//        }
//    }

//    protected function redirectTo($request)
//    {
//        if (!$request->expectsJson()) {
//            if (Request::is(app()->getLocale() . '/student/dashboard')) {
//                return route('selection');
//            }
//            elseif(Request::is(app()->getLocale() . '/teacher/dashboard')) {
//                return route('selection');
//            }
//            elseif(Request::is(app()->getLocale() . '/parent/dashboard')) {
//                return route('selection');
//            }
//            else {
//                return route('selection');
//            }
//        }
//    }

    protected function redirectTo($request)
    {
        if (!$request->expectsJson()){
            if (Request::is(app()->getLocale().'/admin*'))
                return route('admin.login');

            elseif (Request::is(app()->getLocale().'/teacher*'))
                return route('teacher.login');

            elseif (Request::is(app()->getLocale().'/student*'))
                return route('student.login');

            elseif (Request::is(app()->getLocale().'/guardian*'))
                return route('guardian.login');

            else
                return route('selection');

        }
    }
}
