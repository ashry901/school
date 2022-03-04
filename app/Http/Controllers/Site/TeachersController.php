<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Image;

use DB;

class TeachersController extends Controller
{
    public function teachers()
    {
        return view('front.teachers');
    }
}
