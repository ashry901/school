<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreSections extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name_section_ar'   => 'required',
            'name_section_en'   => 'required',
            'grade_id'          => 'required',
            'class_id'          => 'required',
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
