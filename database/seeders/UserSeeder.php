<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use App\Models\User;

class UserSeeder extends Seeder
{
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'Tarek Ashry',
            'email' => 'userashry@gmail.com',
            'password' => Hash::make('userashry'),
        ]);
    }
}
