<?php

namespace Database\Seeders;

use App\Models\Classroom;
use App\Models\Grade;
use App\Models\Section;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SectionsSeeder extends Seeder
{
    public function run()
    {
        DB::table('sections')->delete();

        $sections = [
            ['en' => 'a', 'ar' => 'ا'],
            ['en' => 'b', 'ar' => 'ب'],
            ['en' => 'c', 'ar' => 'ج'],
            ['en' => 'd', 'ar' => 'د'],
        ];

        foreach ($sections as $section) {
            Section::create([
                'name_section' => $section,
                'status' => 1,
                'grade_id' => Grade::all()->unique()->random()->id,
                'class_id' => Classroom::all()->unique()->random()->id
            ]);
        }
    }
}
