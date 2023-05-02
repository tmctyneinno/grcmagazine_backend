<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class editarticlereq extends FormRequest
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
            "id"=>"required|regex:/^[0-9  ]*$/",
            "articlename"=>"required|string",
            "articlebodyone"=>"required|string",
            "articlebodytwo"=>"required|string",
            "articlebodythree"=>'required|string',
            "articlebodyfour"=>'string',
            "articlebodyfive"=>'string',
            "articlecoatbody"=>'required|string',
            "dataup"=>'required|date',
            "picture"=>'string',
            "categories"=>"required|string",
            "status"=>"regex:/^[0-9  ]*$/"
        ];
    }
}
