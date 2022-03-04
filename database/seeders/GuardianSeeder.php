<?php

namespace Database\Seeders;

use App\Models\Classroom;
use App\Models\Grade;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Guardian;

class GuardianSeeder extends Seeder
{

    public function run()
    {
        //DB::table('classrooms')->delete();

        //Guardian::factory()->count(40)->create();
        Guardian::factory()->times(100)->create();
    }
}
