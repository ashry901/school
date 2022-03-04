<?php

namespace Database\Factories;

use App\Models\Classroom;
use App\Models\Grade;
use App\Models\Nationalitie;
use App\Models\Section;
use App\Models\Student;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Guardian;
use App\Models\Bloodtype;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;


class StudentFactory extends Factory
{
    protected $model = Student::class;

    public function definition()
    {
        return [
            'name'              => $this->faker->name(),
            'email'             => $this->faker->unique()->safeEmail(),
            'password'          => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
            'gender_id'         => rand(1, 2),
            'nationalitie_id'   => rand(1, 246),
            'blood_id'          => rand(1, 8),
            'date_birth'        => $this->faker->date(),
            'grade_id'          => rand(1, 4),
            'classroom_id'      => rand(43, 54),
            'section_id'        => rand(2, 10),
            'parent_id'         => rand(8, 107),
            'academic_year'     => $this->faker->year(),
        ];

    }



}
