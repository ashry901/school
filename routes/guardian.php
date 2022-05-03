<?php

use Illuminate\Support\Facades\Route;

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {

    Route::group([
        'namespace' => 'Dashboard\Guardians',
        'middleware' => 'auth:guardian',
        'prefix' => 'student'
    ], function () {



    });

    Route::group([
        'namespace' => 'Dashboard\Guardians',
        'middleware' => 'guest:guardian',
        'prefix' => 'student'
    ], function () {



    });


});


