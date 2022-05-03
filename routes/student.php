<?php

use Illuminate\Support\Facades\Route;

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {

    Route::group([
        'namespace' => 'Dashboard',
        'middleware' => 'auth:student',
        'prefix' => 'student'
    ], function () {
        Route::get('studentDashboard', 'DashboardController@student')
            ->name('student.dashboard');
    });


    Route::group([
        'namespace' => 'Dashboard\Students',
        'middleware' => 'auth:student',
        'prefix' => 'student'
    ], function () {



    });

    Route::group([
        'namespace' => 'Dashboard\Students',
        'middleware' => 'guest:student',
        'prefix' => 'student'
    ], function () {



    });


});

