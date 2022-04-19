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
});



//Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
