<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreClassroom extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'list_classes.*.name' => 'required',
            'list_classes.*.name_class_en' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'name.required'          => trans('validation.required'),
            'name_class_en.required' => trans('validation.required'),
        ];
    }
}
