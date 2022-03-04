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

//    public function handle($request, Closure $next)
//    {
//        if (auth('web')->check()) {
//            return redirect(RouteServiceProvider::HOME);
//        }
//        if (auth('web')->check()) {
//            return redirect(RouteServiceProvider::ADMIN);
//        }
//        if (auth('student')->check()) {
//            return redirect(RouteServiceProvider::STUDENT);
//        }
//        if (auth('teacher')->check()) {
//            return redirect(RouteServiceProvider::TEACHER);
//        }
//        if (auth('parent')->check()) {
//            return redirect(RouteServiceProvider::GUARDIAN);
//        }
//        return $next($request);
//    }

    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {

            if($guard === 'admin')
                return redirect(RouteServiceProvider::ADMIN);
            else
                return redirect(RouteServiceProvider::HOME);

        }
        return $next($request);
    }
}
