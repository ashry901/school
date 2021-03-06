<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Section extends Model
{
    use HasTranslations;
    public $translatable = ['name_section'];
    protected $fillable=['name_section', 'grade_id', 'class_id'];

    protected $table = 'sections';
    public $timestamps = true;


    // علاقة بين الاقسام والصفوف لجلب اسم الصف في جدول الاقسام

    public function my_classs()
    {
        return $this->belongsTo('App\Models\Classroom', 'class_id');
    }

    public function teachers()
    {
        return $this->belongsToMany('App\Models\Teacher', 'teacher_sections');
    }

    public function grades()
    {
        return $this->belongsTo('App\Models\Grade','grade_id');
    }

}
