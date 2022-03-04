<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Specialization;
use Illuminate\Support\Facades\DB;

class SpecializationSeeder extends Seeder
{
    public function run()
    {
        DB::table('specializations')->delete();

        $specializations = [
            ['en' => 'Arabic',          'ar' => 'عربي'],
            ['en' => 'English',         'ar' => 'انجليزي'],
            ['en' => 'German',          'ar' => 'المانى'],
            ['en' => 'Sciences',        'ar' => 'علوم'],
            ['en' => 'Mathematics',     'ar' => 'رياضيات'],
            ['en' => 'Social Studies',  'ar' => 'دراسات اجتماعية'],
            ['en' => 'Computer',        'ar' => 'حاسب الي'],
            ['en' => 'Discover',        'ar' => 'اكتشف'],
            ['en' => 'religion',        'ar' => 'دين'],
            ['en' => 'fee',             'ar' => 'رسم'],
            ['en' => 'games',           'ar' => 'العاب'],

        ];
        foreach ($specializations as $S) {
            Specialization::create(['name' => $S]);
        }
    }
}
