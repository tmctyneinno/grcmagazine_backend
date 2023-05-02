<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class adsrequuest extends FormRequest
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
             'adname'=>'required|regex:/^[a-zA-Z0-9-  ]*$/',
             'adprice'=>'required|regex:/^[0-9  ]*$/',
             'addays'=>'required|regex:/^[0-9  ]*$/',
             'advestments_id'=>'required|regex:/^[a-zA-Z0-9-  ]*$/',
             'user_id'=>'required|regex:/^[0-9  ]*$/',
             'code'=>'required|alpha_dash',
             'message'=>'required|regex:/^[a-zA-Z0-9-  ]*$/',
             'status'=>'required|regex:/^[a-zA-Z  ]*$/',
        ];
    }
}
