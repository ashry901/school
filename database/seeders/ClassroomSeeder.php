<?php

namespace Database\Seeders;

use App\Models\Classroom;
use App\Models\Grade;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassroomSeeder extends Seeder
{

    public function run()
    {
        DB::table('classrooms')->delete();
        $classrooms = [
            ['en'=> 'First Grade', 'ar'=> 'الصف الاول'],
            ['en'=> 'Second Grade', 'ar'=> 'الصف الثاني'],
            ['en'=> 'Third Grade', 'ar'=> 'الصف الثالث'],

            ['en'=> 'Fourth Grade', 'ar'=> 'الصف الرابع'],
            ['en'=> 'Fifth Grade', 'ar'=> 'الصف الخامس'],
            ['en'=> 'Sixth Grade', 'ar'=> 'الصف السادس'],
        ];

        foreach ($classrooms as $classroom) {
            Classroom::create([
            'name_class' => $classroom,
            'grade_id' => Grade::all()->unique()->random()->id
            ]);
        }
    }
}
