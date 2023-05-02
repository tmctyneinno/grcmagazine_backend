<?php

namespace App\Http\Resources;

use App\Models\comment;
use App\Models\User;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Http\Resources\Json\JsonResource;

class reportresource extends JsonResource
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
            'username'=>comment::where(['id'=>$this->comment_id])->first()->name,
            'user_id'=>$this->user_id,
            'message'=>$this->message,
            'comment_id'=>$this->comment_id,
            'comment_message'=>comment::where(['id'=>$this->comment_id])->first()->message,
            'articles_id'=>Crypt::encrypt(comment::where(['id'=>$this->comment_id])->first()->articles_id),
        ];
    }
}
