<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class Advest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'name'=>'required|regex:/^[a-zA-Z0-9-  ]*$/',
            'email'=>'required|email|',
            'companyname'=>'required|regex:/^[a-zA-Z0-9-  ]*$/',
            // 'image'=>'required|regex:/^[\s\w-]*$/',
            'message'=> 'required|regex:/^[a-zA-Z0-9-  ]*$/'
        ];


    }
}
