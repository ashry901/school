<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreFeesRequest extends FormRequest
{
    public function authorize()
    {
        return true;
    }

    public function rules()
    {
        return [
            'title_ar'        => 'required',
            'title_en'        => 'required',
            'amount'          => 'required|numeric',
            'grade_id'        => 'required|integer',
            'classroom_id'    => 'required|integer',
            //'classroom_id'    => 'required|integer|unique:fees,classroom_id,'.$this->id,
            'year'            => 'required',
        ];
    }

    public function messages()
    {
        return [
            'title_ar.required'     => trans('validation.required'),
            'title_en.required'     => trans('validation.unique'),
            'Password.required'     => trans('validation.required'),
            'amount.required'       => trans('validation.required'),
            'amount.numeric'        => trans('validation.numeric'),
            'Grade_id.required'     => trans('validation.required'),
            'Classroom_id.required' => trans('validation.required'),
            'year.required'         => trans('validation.required'),
        ];
    }
}
