<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class profilereq extends FormRequest
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
            'email'=>'required|email',
            'phone'=>'required|numeric|regex:/^[0-9 ]*$/',
            'state'=>'required|regex:/^[a-zA-Z ]*$/',
            'country'=>'required|regex:/^[a-zA-Z ]*$/',
            'city'=>'required|regex:/^[a-zA-Z ]*$/',
            'zipcode'=>'required|regex:/^[0-9 ]*$/',
        ];
    }
}
