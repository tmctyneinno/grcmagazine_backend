<?php

namespace App\Http\Resources;

use App\Models\comment;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Crypt;
class articlesresource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return[
            'id'=>$this->id,
            'articlename'=>$this->articlename,
            'encryptid'=>Crypt::encrypt($this->id),
            'countmessage'=>count(comment::where('articles_id', $this->id)->get())
        ];
    }
}
