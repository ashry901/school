<?php

namespace App\Http\Middleware;

use App\Providers\RouteServiceProvider;
use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class RedirectIfAuthenticated
{
//    public function handle(Request $request, Closure $next, ...$guards)
//    {
//        $guards = empty($guards) ? [null] : $guards;
//        foreach ($guards as $guard) {
//            if (Auth::guard($guard)->check()) {
//                return redirect(RouteServiceProvider::HOME);
//            }
//        }
//        return $next($request);
//    }

    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {

            if($guard === 'admin')
                return redirect(RouteServiceProvider::ADMIN);

            elseif ($guard === 'teacher')
                return redirect(RouteServiceProvider::TEACHER);

            elseif ($guard === 'student')
                return redirect(RouteServiceProvider::STUDENT);

            elseif ($guard === 'guardian')
                return redirect(RouteServiceProvider::GUARDIAN);

            else
                return redirect(RouteServiceProvider::HOME);

        }
        return $next($request);
    }
}
