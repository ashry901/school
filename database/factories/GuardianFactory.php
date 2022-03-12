<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;
use App\Models\Guardian;
use App\Models\Bloodtype;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class GuardianFactory extends Factory
{
    public function definition()
    {
        return [
            'email'                          => $this->faker->unique()->safeEmail,
            'password'                       => '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi',
            'name_father'                    => $this->faker->name(),
            'national_id_father'             => $this->faker->numberBetween(14),
            'passport_id_father'             => $this->faker->numberBetween(10),
            'phone_father'                   => $this->faker->numberBetween(11),
            'job_father'                     => $this->faker->text(10),
            'nationality_father_id'          => rand(1, 246),
            'blood_type_father_id'           => rand(1, 12),
            'religion_father_id'             => rand(1, 2),
            'address_father'                 => $this->faker->text(20),
            'name_mother'                    => $this->faker->name(),
            'national_id_mother'             => $this->faker->numberBetween(14),
            'passport_id_mother'             => $this->faker->numberBetween(10),
            'phone_mother'                   => $this->faker->numberBetween(11),
            'job_mother'                     => $this->faker->text(10),
            'nationality_mother_id'          => rand(1, 246),
            'blood_type_mother_id'           => rand(1, 12),
            'religion_mother_id'             => rand(1, 2),
            'address_mother'                 => $this->faker->text(20),
        ];
    }

}
