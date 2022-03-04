<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Guardian extends Model
{
    use HasFactory;

    use HasTranslations;

    public $translatable = ['name_father', 'job_father', 'name_mother', 'job_mother'];

    protected $table = 'guardians';

    protected $guarded=[];
}
