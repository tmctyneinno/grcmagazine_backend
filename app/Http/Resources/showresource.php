<?php

namespace App\Http\Resources;

use App\Models\Advestment;
use Illuminate\Http\Resources\Json\JsonResource;

class showresource extends JsonResource
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
            'advestments_id'=>$this->advestments_id,
            'status'=>$this->status,
            'adname'=>$this->adname,
            'image'=>Advestment::where(['id'=> $this->advestments_id])->first()->image,
            'message'=>Advestment::where(['id'=>$this->advestments_id])->first()->message,
            'companyname'=>Advestment::where(['id'=> $this->advestments_id])->first()->companyname
        ];
    }
}
