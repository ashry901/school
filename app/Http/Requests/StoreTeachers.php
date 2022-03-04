<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreTeachers extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'email'             => 'required|unique:teachers,email,'.$this->id,
            'password'          => 'required',
            'name_ar'           => 'required',
            'name_en'           => 'required',
            'specialization_id' => 'required',
            'gender_id'         => 'required',
            'joining_date'      => 'required|date|date_format:Y-m-d',
            'address'           => 'required',
        ];
    }

    public function messages()
    {
        return [
            'email.required'             => trans('validation.required'),
            'email.unique'               => trans('validation.unique'),
            'Password.required'          => trans('validation.required'),
            'Name_ar.required'           => trans('validation.required'),
            'Name_en.required'           => trans('validation.required'),
            'Specialization_id.required' => trans('validation.required'),
            'Gender_id.required'         => trans('validation.required'),
            'Joining_Date.required'      => trans('validation.required'),
            'Address.required'           => trans('validation.required'),
        ];
    }
}
