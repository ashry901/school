<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    public function run()
    {
        DB::table('users')->insert([
            'name' => 'samir gamal',
            'email' => 'samir.gamal77@yahoo.com',
            'password' => Hash::make('p@ssw0rd'),
        ]);
    }
}
