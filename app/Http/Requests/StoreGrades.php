<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreGrades extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'name'    => 'required|unique:grades,name->ar,'.$this->id,
            'name_en' => 'required|unique:grades,name->en,'.$this->id,
            //'notes'   => 'nullable',
        ];
    }

    public function messages()
    {
        return [
            'name.required'     => trans('validation.required'),
            'name.unique'       => trans('validation.unique'),
            'name_en.required'  => trans('validation.required'),
            'name_en.unique'    => trans('validation.unique'),
        ];
    }
}
