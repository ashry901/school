<?php

use App\Models\Teacher;
use Illuminate\Support\Facades\Route;
//use App\http\Controllers\Dashboard\Teachers\Cpanel;

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {

    Route::group([
        'namespace' => 'Dashboard',
        'middleware' => 'auth:teacher',
        'prefix' => 'teacher'
    ], function () {
        Route::get('teacherDashboard', 'DashboardController@teacher')->name('teacher.dashboard');

        Route::group(['prefix' => 'teacherCpanel', 'namespace' => 'Teachers',], function () {
            Route::get('logoutTeacher', 'TeacherLoginController@logoutTeacher')->name('teacher.logout');
        });

        Route::get('/teacher/dashboard', function () {

            $ids = Teacher::findorFail(auth()->user()->id)->Sections()->pluck('section_id');
            $data['count_sections']= $ids->count();
            $data['count_students']= \App\Models\Student::whereIn('section_id',$ids)->count();

            return view('dashboard.teachers.cpanel.teacher-cpanel', $data);
        });

        Route::group(['prefix' => 'teacherdash','namespace' => 'Teachers\Cpanel'], function () {
            Route::get('/','TeacherStudentController@index')->name('teacher.student.dash');
            Route::get('sections','TeacherStudentController@sections')->name('sections');
            Route::post('attendance','TeacherStudentController@attendance')->name('attendance');
            Route::post('edit_attendance','TeacherStudentController@editAttendance')->name('attendance.edit');
        });

    });






});
