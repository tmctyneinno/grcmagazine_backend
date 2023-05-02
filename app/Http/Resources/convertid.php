<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Crypt;
class convertid extends JsonResource
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
            'id'=>Crypt::encrypt($this->id),
            'articlename'=> $this->articlename,
            'articlebodyone'=> $this->articlebodyone,
            'articlebodytwo'=> $this->articlebodytwo,
            'articlebodythree'=> $this->articlebodythree,
            'articlebodyfour' => $this->articlebodyfour,
            'articlebodyfive' => $this->articlebodyfive,
            'picture'=>$this->picture,
            'dataup' => $this->dataup,
            'yearup' => $this->yearup,
            'categories' => $this->categories,
            'status' => $this->status,
        ];
    }
}
