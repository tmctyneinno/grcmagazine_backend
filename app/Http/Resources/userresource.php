<?php

namespace App\Http\Resources;

use App\Models\profile;
use Illuminate\Http\Resources\Json\JsonResource;

class userresource extends JsonResource
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
            'status'=>$this->status,
            'picture'=>profile::where('email', $this->email)->first()?profile::where('email', $this->email)->first()->picture:''
        ];
    }
}
