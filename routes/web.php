<?php

use Illuminate\Support\Facades\Route;

//Route::get('/', function () {
//    return view('welcome');
//});

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {
    //Auth::routes();
    Route::get('/', 'HomeController@index')->name('home');
    Route::get('selection', 'HomeController@select')->name('selection');

    Route::group([
        'namespace' => 'Dashboard',
        'middleware' => 'guest:admin',
        'prefix' => 'admin'
    ], function () {
        // Route::get('login', [LoginController::class, 'login'])->name('admin.login');
        // Route::post('login', [LoginController::class, 'postLogin'])->name('admin.post.login');
        Route::get('login', 'LoginController@login')->name('admin.login');
        Route::post('login', 'LoginController@postLogin')->name('admin.post.login');
    });

    //Route::get('loginteacher', 'Dashboard\Teachers\TeacherLoginController@loginTeacher')->name('teacher.login-teacher');
    //Route::post('loginteacher', 'Dashboard\Teachers\TeacherLoginController@postLoginTeacher')->name('teacher.post.login-teacher');

    Route::group([
        'namespace' => 'Dashboard\Teachers',
        //'middleware' => 'guest:teacher',
        'prefix' => 'teacher'
    ], function () {
        Route::get('loginteacher', 'TeacherLoginController@loginTeacher')->name('teacher.login-teacher');
        Route::post('loginteacher', 'TeacherLoginController@postLoginTeacher')->name('teacher.post.login-teacher');
    });

    Route::group([
        'namespace' => 'Dashboard\Students',
        'middleware' => 'guest:student',
        'prefix' => 'student'
    ], function () {
        Route::get('loginstudent', 'StudentLoginController@loginStudent')->name('student.login-student');
        Route::post('loginstudent', 'StudentLoginController@postLoginStudent')->name('student.post.login-student');
    });


});



//Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
