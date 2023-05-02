<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Models\profile;
class replyresource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
             'id'=>$this->id,
            'name'=>$this->name,
            'email'=>$this->email,
            'message'=>$this->message,
            "picture"=>profile::where('email', $this->email)->first()->picture,
            'created_at'=>$this->created_at
        ];
    }
}
