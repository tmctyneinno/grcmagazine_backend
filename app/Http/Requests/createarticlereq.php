<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class createarticlereq extends FormRequest
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
            "articlename"=>"required|regex:/^[a-zA-Z ]*$/",
            "articlebodyone"=>"required|regex:/^[a-zA-Z0-9  ]*$/",
            "articlebodythree"=>"required|regex:/^[a-zA-Z0-9  ]*$/",
            "articlebodyfour"=>"regex:/^[a-zA-Z0-9  ]*$/",
            "articlebodyfive"=>"regex:/^[a-zA-Z0-9  ]*$/",
            "articlecoatbody"=>"regex:/^[a-zA-Z ]*$/",
            "dataup"=>"required|date_format:Y-m-d",
            "picture"=>"required|regex:/^[a-zA-Z0-9  ]*$/",
            "categories"=>"required|regex:/^[a-zA-Z  ]*$/"
        ];
    }
}
