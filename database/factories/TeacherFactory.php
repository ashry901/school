<?php

namespace Database\Factories;

use App\Models\Teacher;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class TeacherFactory extends Factory
{
    protected $model = Teacher::class;

    public function definition()
    {
        return [
            'email'             => $this->faker->unique()->safeEmail(),
            'password'          => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
            'name'              => $this->faker->name(),
            'specialization_id' => rand(1, 11),
            'gender_id'         => rand(1, 2),
            'joining_date'      => $this->faker->date(),
            'address'           => $this->faker->text(20),
        ];

    }



}
