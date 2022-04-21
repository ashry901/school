<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreLibrary extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'file' => 'required|csv,txt,xlx,xls,pdf|max:2048',
        ];
    }

    public function messages()
    {
        return [
            'name_section_ar.required'  => trans('cpanel/sections.required_ar'),
            'name_section_en.required'  => trans('cpanel/sections.required_en'),
            'grade_id.required'         => trans('cpanel/sections.Grade_id_required'),
            'class_id.required'         => trans('cpanel/sections.Class_id_required'),
        ];
    }
}
