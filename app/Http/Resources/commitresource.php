<?php

namespace App\Http\Resources;

use App\Models\profile;
use App\Models\Reply;
use Illuminate\Http\Resources\Json\JsonResource;

class commitresource extends JsonResource
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
            "id"=>$this->id,
            "articles_id"=>$this->articles_id,
            "email"=>$this->email,
            "message"=>$this->message,
            "picture"=>profile::where('email', $this->email)->first()?profile::where('email', $this->email)->first()->picture:"",
            'name'=>$this->name,
            'pinned'=>$this->pinned,
            'reply'=>replyresource::collection(Reply::where(['comment_id'=>$this->id, 'article_id'=>$this->articles_id])->get()),
            'created_at'=>$this->created_at
        ];
    }
}
