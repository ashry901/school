<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Grade;

class GradeSeeder extends Seeder
{
    public function run()
    {
        DB::table('grades')->delete();

        $grades = [
            ['en' => 'Nursery',         'ar' => 'الحضانة'],
            ['en' => 'Primary Stage',   'ar' => 'المرحلة الابتدائية'],
            ['en' => 'Middle School',   'ar' => 'المرحلة الاعدادية'],
            ['en' => 'High school',     'ar' => 'المرحلة الثانوية'],
        ];
        foreach ($grades as $gra) {
            Grade::create(['name' => $gra]);
        }
    }
}
