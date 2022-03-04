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

});



//Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
