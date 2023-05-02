<?php

namespace App\Http\Resources;

use App\Models\Author;
use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Crypt;

class storieslist extends JsonResource
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
            'encryptid'=>Crypt::encrypt($this->id),
            "author"=>Author::where(['user_id'=>$this->authors_id])->first()->author,
            'title'=>$this->articlename,
            'date'=>Carbon::parse($this->created_at)->format('Y-m-d'),
            'status'=>$this->status
        ];
    }
}
