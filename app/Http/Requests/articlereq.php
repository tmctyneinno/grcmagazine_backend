<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class articlereq extends FormRequest
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
            "articlename"=>"required|regex:/^[a-zA-Z0-9 ]+$/",
            "articlebodyone"=>"required|string",
            "articlebodytwo"=>"required|string",
            "articlebodythree"=>'required|string',
            "articlebodyfour"=>'string',
            "articlebodyfive"=>'string',
            "articlecoatbody"=>'string',
            "dataup"=>'required|date',
            "picture"=>'required|image',
            "categories"=>"required|regex:/^[a-zA-Z0-9  ]*$/",
            "authors_id"=>"regex:/^[0-9  ]*$/",
            "author"=>"regex:/^[a-zA-Z0-9  ]*$/",
            "user_id"=>"regex:/^[0-9  ]*$/"
        ];
    }
}
