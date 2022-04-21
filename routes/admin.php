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
            Route::get('dashboard', 'DashboardController@index')->name('admin.dashboard');
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

            Route::get('get_classrooms/{id}', 'StudentController@getClassrooms')
                ->name('get_classrooms');
            Route::get('get_sections/{id}', 'StudentController@getSections')
                ->name('get_sections');

            Route::post('upload_attachment', 'StudentController@upload_attachment')
                ->name('upload_attachment');
            Route::get('download_attachment/{studentsname}/{filename}', 'StudentController@download_attachment')
                ->name('download_attachment');
            Route::post('delete_attachment', 'StudentController@delete_attachment')
                ->name('delete_attachment');

            Route::group(['prefix' => 'promotion'], function () {
                Route::get('/', 'PromotionController@index')->name('admin.promotion');
                Route::get('create', 'PromotionController@create')->name('admin.promotion.create');
                Route::post('store', 'PromotionController@store')->name('admin.promotion.store');
                Route::get('get_classrooms/{id}', 'PromotionController@getClassrooms')->name('get_classrooms');
                Route::get('get_sections/{id}', 'PromotionController@getSections')->name('get_sections');
                Route::get('delete/{id}','PromotionController@destroy') -> name('admin.promotion.delete');
            });

            Route::group(['prefix' => 'graduated'], function () {
                Route::get('/', 'GraduatedController@index')->name('admin.graduated');
                Route::get('create', 'GraduatedController@create')->name('admin.graduated.create');
                Route::post('store', 'GraduatedController@store')->name('admin.graduated.store');
                Route::post('update/{id}', 'GraduatedController@update')->name('admin.graduated.update');
                Route::get('delete/{id}','GraduatedController@destroy') -> name('admin.graduated.delete');
                Route::get('get_classrooms/{id}', 'GraduatedController@getClassroom')->name('get_classrooms');
                Route::get('get_sections/{id}', 'GraduatedController@getSection')->name('get_sections');
            });

            Route::group(['prefix' => 'fees'], function () {
                Route::get('/', 'FeesController@index')->name('admin.fees');
                Route::get('create', 'FeesController@create')->name('admin.fees.create');
                Route::post('store', 'FeesController@store')->name('admin.fees.store');
                Route::get('edit/{id}', 'FeesController@edit')->name('admin.fees.edit');
                Route::post('update/{id}', 'FeesController@update')->name('admin.fees.update');
                Route::get('delete/{id}','FeesController@destroy') -> name('admin.fees.delete');
                Route::get('get_classrooms/{id}', 'FeesController@getClasroom')->name('get_classrooms');
                Route::get('get_sections/{id}', 'FeesController@getSectione')->name('get_sections');
            });

            Route::group(['prefix' => 'fees_invoices'], function () {
                Route::get('/', 'FeesInvoicesController@index')->name('admin.fees_invoices');
                //Route::get('create', 'FeesInvoicesController@create')->name('admin.fees_invoices.create');
                Route::get('show/{id}', 'FeesInvoicesController@show')->name('admin.fees_invoices.show');
                Route::post('store', 'FeesInvoicesController@store')->name('admin.fees_invoices.store');
                Route::get('edit/{id}', 'FeesInvoicesController@edit')->name('admin.fees_invoices.edit');
                Route::post('update/{id}', 'FeesInvoicesController@update')->name('admin.fees_invoices.update');
                Route::get('delete/{id}','FeesInvoicesController@destroy') -> name('admin.fees_invoices.delete');
                Route::get('get_classrooms/{id}', 'FeesInvoicesController@getClasroom')->name('get_classrooms');
                Route::get('get_sections/{id}', 'FeesInvoicesController@getSectione')->name('get_sections');
            });

//            Route::resource('graduated', 'GraduatedController');
//            Route::resource('promotion', 'PromotionController');
//            Route::resource('fees', 'FeesController');
//            Route::resource('fees_invoices', 'FeesInvoicesController');

            Route::resource('receipt_students', 'ReceiptStudentsController');
            Route::resource('processingFee', 'ProcessingFeeController');
            Route::resource('payment_students', 'PaymentController');
            Route::resource('attendance', 'AttendanceController');

//            Route::resource('online_classes', 'OnlineClasseController');
//            Route::get('/indirect', 'OnlineClasseController@indirectCreate')
//                ->name('indirect.create');
//            Route::post('/indirect', 'OnlineClasseController@storeIndirect')
//                ->name('indirect.store');

            Route::group(['prefix' => 'online_classes'], function () {
                Route::get('/', 'OnlineClasseController@index')
                    ->name('admin.online_classes');
                Route::get('create', 'OnlineClasseController@create')
                    ->name('admin.online_classes.create');
                Route::get('show/{id}', 'OnlineClasseController@show')
                    ->name('admin.online_classes.show');
                Route::post('store', 'OnlineClasseController@store')
                    ->name('admin.online_classes.store');
                Route::get('edit/{id}', 'OnlineClasseController@edit')
                    ->name('admin.online_classes.edit');
                Route::post('update/{id}', 'OnlineClasseController@update')
                    ->name('admin.online_classes.update');
                Route::get('delete/{id}','OnlineClasseController@destroy')
                    ->name('admin.online_classes.delete');

                Route::get('/indirect', 'OnlineClasseController@indirectCreate')
                    ->name('admin.indirect.create');
                Route::post('/indirect', 'OnlineClasseController@storeIndirect')
                    ->name('admin.indirect.store');

                Route::get('get_classrooms/{id}', 'OnlineClasseController@getClasroom')
                    ->name('get_classrooms');
                Route::get('get_sections/{id}', 'OnlineClasseController@getSectione')
                    ->name('get_sections');
            });

            //Route::resource('library', 'LibraryController');
            Route::group(['prefix' => 'library'], function () {
                Route::get('/', 'LibraryController@index')
                    ->name('admin.library');
                Route::get('create', 'LibraryController@create')
                    ->name('admin.library.create');
                Route::get('show/{id}', 'LibraryController@show')
                    ->name('admin.library.show');
                Route::post('store', 'LibraryController@store')
                    ->name('admin.library.store');
                Route::get('edit/{id}', 'LibraryController@edit')
                    ->name('admin.library.edit');
                Route::post('update/{id}', 'LibraryController@update')
                    ->name('admin.library.update');
                Route::get('delete/{id}','LibraryController@destroy')
                    ->name('admin.library.delete');

                Route::get('download_file/{filename}', 'LibraryController@downloadAttachment')
                    ->name('downloadAttachment');

                Route::get('get_classrooms/{id}', 'LibraryController@getClasroom')
                    ->name('get_classrooms');
                Route::get('get_sections/{id}', 'LibraryController@getSectione')
                    ->name('get_sections');
            });
        });

        //==============================Subjects============================
//        Route::group(['prefix' => 'admin'], function () {
//            Route::resource('subjects', 'SubjectController');
//        });

        Route::group(['prefix' => 'subjects'], function () {
            Route::get('/', 'SubjectController@index')->name('admin.subjects');
            Route::get('create', 'SubjectController@create')->name('admin.subjects.create');
            Route::post('store', 'SubjectController@store')->name('admin.subjects.store');
            Route::get('edit/{id}', 'SubjectController@edit')->name('admin.subjects.edit');
            Route::post('update/{id}', 'SubjectController@update')->name('admin.subjects.update');
            Route::get('delete/{id}','SubjectController@destroy') -> name('admin.subjects.delete');
            Route::get('classes/{id}', 'SectionController@getclasses')->name('classes');
        });

        //==============================Quizzes============================
        Route::group(['prefix' => 'quizzes'], function () {
            //Route::resource('Quizzes', 'QuizzController');
            Route::get('/', 'QuizzController@index')->name('admin.quizzes');
            Route::get('create', 'QuizzController@create')->name('admin.quizzes.create');
            Route::post('store', 'QuizzController@store')->name('admin.quizzes.store');
            Route::get('edit/{id}', 'QuizzController@edit')->name('admin.quizzes.edit');
            Route::post('update/{id}', 'QuizzController@update')->name('admin.quizzes.update');
            Route::get('delete/{id}','QuizzController@destroy') -> name('admin.quizzes.delete');
            Route::get('get_classrooms/{id}', 'QuizzController@getClassrooms')->name('get_classrooms');
            Route::get('get_sections/{id}', 'QuizzController@getSections')->name('get_sections');
        });

        //==============================questions============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('questions', 'QuestionController');
        });

        //==============================Setting============================
        Route::resource('settings', 'SettingController');
    });



});
