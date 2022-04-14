<?php

use Illuminate\Support\Facades\Route;

Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {

    Route::group([
        'namespace' => 'Dashboard',
        'middleware' => 'auth:admin',
        //'prefix' => 'admin'
    ], function () {

        Route::group(['prefix' => 'admin'], function () {
            Route::get('/dashboard', 'DashboardController@index')->name('admin.dashboard');
            Route::get('logout', 'LoginController@logout')->name('admin.logout');
        });



        // Route::get('/', [DashboardController::class, 'index'])->name('admin.cpanel');
        // Route::get('logout', [LoginController::class, 'logout'])->name('admin.logout');

        Route::group(['prefix' => 'profile'], function () {
            Route::get('edit', 'ProfileController@editProfile')->name('edit.profile');
            Route::put('update', 'ProfileController@updateprofile')->name('update.profile');
        });

        Route::group(['prefix' => 'school_grade'], function () {
            Route::resource('grades', 'GradeController');
        });

        //==============================Classrooms============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('classrooms', 'ClassroomController');

            Route::post('delete_all', 'ClassroomController@delete_all')->name('delete_all');
            Route::post('filter_classes', 'ClassroomController@Filter_Classes')->name('Filter_Classes');
        });

        ############################# Sections ###################################
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('sections', 'SectionController');
            Route::get('classes/{id}', 'SectionController@getclasses')->name('classes');
        });

        //==============================parents============================
        Route::view('add_parent','livewire.show_form')->name('add_parent');

        //==============================teachers============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('teachers', 'TeacherController');
        });

        //==============================Students============================
        Route::group(['prefix' => 'admin', 'namespace' => 'Students'], function () {
            //Route::resource('students', 'StudentController');
            //Route::resource('students', StudentController::class);

            Route::get('/', 'StudentController@index')->name('admin.students');
            Route::get('create', 'StudentController@create')->name('admin.students.create');
            Route::get('show/{id}', 'StudentController@show')->name('admin.students.show');
            Route::post('store', 'StudentController@store')->name('admin.students.store');
            Route::get('edit/{id}', 'StudentController@edit')->name('admin.students.edit');
            Route::post('update/{id}', 'StudentController@update')->name('admin.students.update');
            Route::get('delete/{id}','StudentController@destroy') -> name('admin.students.delete');

            Route::get('get_classrooms/{id}', 'StudentController@getClassrooms')->name('get_classrooms');
            Route::get('get_sections/{id}', 'StudentController@getSections')->name('get_sections');

            Route::post('upload_attachment', 'StudentController@upload_attachment')->name('upload_attachment');
            Route::get('download_attachment/{studentsname}/{filename}', 'StudentController@download_attachment')
                ->name('download_attachment');
            Route::post('delete_attachment', 'StudentController@delete_attachment')->name('delete_attachment');

//            Route::group(['prefix' => 'promotion'], function () {
//                Route::get('/', 'PromotionController@index')->name('admin.promotion');
//                Route::get('create', 'PromotionController@create')->name('admin.promotion.create');
//                Route::get('show/{id}', 'PromotionController@show')->name('admin.promotion.show');
//                Route::post('store', 'PromotionController@store')->name('admin.promotion.store');
//                Route::get('edit/{id}', 'PromotionController@edit')->name('admin.promotion.edit');
//                Route::post('update/{id}', 'PromotionController@update')->name('admin.promotion.update');
//                Route::get('delete/{id}','PromotionController@destroy') -> name('admin.promotion.delete');
//            });

//            Route::group(['prefix' => 'graduated'], function () {
//                Route::get('/', 'GraduatedController@index')->name('admin.graduated');
//                Route::get('create', 'GraduatedController@create')->name('admin.graduated.create');
//                Route::get('show/{id}', 'GraduatedController@show')->name('admin.graduated.show');
//                Route::post('store', 'GraduatedController@store')->name('admin.graduated.store');
//                Route::get('edit/{id}', 'GraduatedController@edit')->name('admin.graduated.edit');
//                Route::post('update/{id}', 'GraduatedController@update')->name('admin.graduated.update');
//                Route::get('delete/{id}','GraduatedController@destroy') -> name('admin.graduated.delete');
//            });

            Route::resource('graduated', 'GraduatedController');
            Route::resource('promotion', 'PromotionController');
            Route::resource('fees', 'FeesController');
            Route::resource('fees_invoices', 'FeesInvoicesController');
            Route::resource('receipt_students', 'ReceiptStudentsController');
            Route::resource('processingFee', 'ProcessingFeeController');
            Route::resource('payment_students', 'PaymentController');
            Route::resource('attendance', 'AttendanceController');

            Route::resource('online_classes', 'OnlineClasseController');
            Route::get('/indirect', 'OnlineClasseController@indirectCreate')->name('indirect.create');
            Route::post('/indirect', 'OnlineClasseController@storeIndirect')->name('indirect.store');

            Route::resource('library', 'LibraryController');
            Route::get('download_file/{filename}', 'LibraryController@downloadAttachment')->name('downloadAttachment');

        });

        //==============================Subjects============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('subjects', 'SubjectController');
        });

        //==============================Quizzes============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('Quizzes', 'QuizzController');
        });

        //==============================questions============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('questions', 'QuestionController');
        });

        //==============================Setting============================
        Route::resource('settings', 'SettingController');
    });

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
