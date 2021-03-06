<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Translatable\HasTranslations;

class Teacher extends Authenticatable
{
    use HasFactory;

    use HasTranslations;

    public $translatable = ['name'];

    protected $guarded=[];

    public function specializations()
    {
        return $this->belongsTo('App\Models\Specialization', 'specialization_id');
    }

    public function genders()
    {
        return $this->belongsTo('App\Models\Gender', 'gender_id');
    }

    public function sections()
    {
        return $this->belongsToMany('App\Models\Section', 'teacher_sections');
    }
}
