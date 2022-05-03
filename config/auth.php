<?php

return [

    'defaults' => [
        'guard' => 'web',
        'passwords' => 'users',
    ],

    'guards' => [
        'web' => [
            'driver' => 'session',
            'provider' => 'users',
        ],

        'admin' => [
            'driver' => 'session',
            'provider' => 'admins',
        ],

        'teacher' => [
            'driver' => 'session',
            'provider' => 'teachers',
        ],

        'student' => [
            'driver' => 'session',
            'provider' => 'students',
        ],

        'guardian' => [
            'driver' => 'session',
            'provider' => 'guardians',
        ],


    ],

    'providers' => [
        'users' => [
            'driver' => 'eloquent',
            'model' => App\Models\User::class,
        ],

        'admins' => [
            'driver' => 'eloquent',
            'model' => App\Models\Admin::class,
        ],

        'teachers' => [
            'driver' => 'eloquent',
            'model' => App\Models\Teacher::class,
        ],

        'students' => [
            'driver' => 'eloquent',
            'model' => App\Models\Student::class,
        ],

        'guardians' => [
            'driver' => 'eloquent',
            'model' => App\Models\Guardian::class,
        ],

        // 'users' => [
        //     'driver' => 'database',
        //     'table' => 'users',
        // ],
    ],

    'passwords' => [
        'users' => [
            'provider' => 'users',
            'table' => 'password_resets',
            'expire' => 60,
            'throttle' => 60,
        ],
    ],

    'password_timeout' => 10800,

];
