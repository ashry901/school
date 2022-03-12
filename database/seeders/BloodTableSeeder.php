<?php

namespace Database\Seeders;

use App\Models\Bloodtype;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BloodTableSeeder extends Seeder
{
    public function run()
    {
        DB::table('bloodtypes')->delete();

        $bgs = ['O', 'O-', 'O+', 'A', 'A+', 'A-', 'B', 'B+', 'B-', 'AB', 'AB+', 'AB-'];

        foreach($bgs as  $bg){
            Bloodtype::create(['name' => $bg]);
        }
    }
}
