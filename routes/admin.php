<?php

use Illuminate\Support\Facades\Route;
// use App\http\Controllers\Dashboard\SliderController;

//note that the prefix is admin for all file route
Route::group([
    'prefix' => LaravelLocalization::setLocale(),
    'middleware' => ['localeSessionRedirect', 'localizationRedirect', 'localeViewPath']
], function () {

    Route::group([
        'namespace' => 'Dashboard',
        'middleware' => 'auth:admin',
        //'prefix' => 'admin'
    ], function () {

        Route::get('/admin', 'DashboardController@index')->name('admin.dashboard');

        Route::get('logout', 'LoginController@logout')->name('admin.logout');

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
            Route::get('/classes/{id}', 'SectionController@getclasses');
        });

        //==============================parents============================
        Route::view('add_parent','livewire.show_form')->name('add_parent');

        //==============================teachers============================
        Route::group(['prefix' => 'admin'], function () {
            Route::resource('teachers', 'TeacherController');
        });

        //==============================Students============================
        Route::group([
            'namespace' => 'Students',
            'prefix' => 'admin'
        ], function () {
            Route::resource('Students', 'StudentController');
            Route::resource('Graduated', 'GraduatedController');
            Route::resource('Promotion', 'PromotionController');
            Route::resource('Fees', 'FeesController');
            Route::resource('Fees_Invoices', 'FeesInvoicesController');
            Route::resource('receipt_students', 'ReceiptStudentsController');
            Route::resource('ProcessingFee', 'ProcessingFeeController');
            Route::resource('Payment_students', 'PaymentController');
            Route::resource('Attendance', 'AttendanceController');

            Route::resource('online_classes', 'OnlineClasseController');
            Route::get('/indirect', 'OnlineClasseController@indirectCreate')->name('indirect.create');
            Route::post('/indirect', 'OnlineClasseController@storeIndirect')->name('indirect.store');

            Route::resource('library', 'LibraryController');
            Route::get('download_file/{filename}', 'LibraryController@downloadAttachment')->name('downloadAttachment');

            Route::get('/Get_classrooms/{id}', 'StudentController@Get_classrooms');
            Route::get('/Get_Sections/{id}', 'StudentController@Get_Sections');
            Route::post('Upload_attachment', 'StudentController@Upload_attachment')->name('Upload_attachment');
            Route::get('Download_attachment/{studentsname}/{filename}', 'StudentController@Download_attachment')->name('Download_attachment');
            Route::post('Delete_attachment', 'StudentController@Delete_attachment')->name('Delete_attachment');
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
