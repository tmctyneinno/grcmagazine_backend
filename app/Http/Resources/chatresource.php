<?php

namespace App\Http\Resources;

use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class chatresource extends JsonResource
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
            'sender'=>[
                'id'=>User::where(['id'=>$this->send_id])->first()->id,
                'name'=>User::where(['id'=>$this->send_id])->first()->name,
            ],
            'recevicer'=>[
             'id'=>User::where('id', $this->rec_id)->value('id'),
             'name'=>User::where('id',$this->rec_id)->value('name'),
            ],
            'send_id'=>$this->send_id,
            'rec_id'=>$this->rec_id,
            'message'=>$this->message,
            'status' => $this->status,
            'created_at'=>Carbon::parse($this->created_at)->format('Y-m-d'),
        ];
    }
}
