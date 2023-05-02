<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;
use Illuminate\Support\Facades\Crypt;
class mainSlide extends JsonResource
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
            'ansid'=>Crypt::encrypt($this->id),
            'articlename'=> $this->articlename,
            'articlebodyone'=> $this->articlebodyone,
            'articlebodytwo'=> $this->articlebodytwo,
            'articlebodythree'=> $this->articlebodythree,
            'articlebodyfour' => $this->articlebodyfour,
            'articlebodyfive' => $this->articlebodyfive,
            'dataup' => $this->dataup,
            'picture'=>$this->picture,
            'yearup' => $this->yearup,
            'categories' => $this->categories,
        ];
    }
}
