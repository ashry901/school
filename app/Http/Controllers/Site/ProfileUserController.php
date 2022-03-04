<?php

namespace App\Http\Controllers\Site;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;

class ProfileUserController extends Controller
{
    public function editUserProfile()
    {
        return view('front.profile.edit');
    }
}
