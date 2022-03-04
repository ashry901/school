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
            ['en'=> 'First grade', 'ar'=> 'الصف الاول'],
            ['en'=> 'Second grade', 'ar'=> 'الصف الثاني'],
            ['en'=> 'Third grade', 'ar'=> 'الصف الثالث'],

            ['en'=> 'Fourth grade', 'ar'=> 'الصف الرابع'],
            ['en'=> 'fifth grade', 'ar'=> 'الصف الخامس'],
            ['en'=> 'Sixth grade', 'ar'=> 'الصف السادس'],
        ];

        foreach ($classrooms as $classroom) {
            Classroom::create([
            'name_class' => $classroom,
            'grade_id' => Grade::all()->unique()->random()->id
            ]);
        }
    }
}