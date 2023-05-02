<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class advertpayment extends Model
{
    use HasFactory;

    protected $fillable =[
        'adname',
        'adprice',
        'addays',
        'advestments_id',
        'user_id',
        'code',
        'message',
        'status',
    ];


    public function advestadds(){
        return $this->hasMany(Advestment::class, 'id');
     }
}
