<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Advestment extends Model
{
    use HasFactory;

    protected $fillable =[
        'name',
        'email',
        'companyname',
        'price',
        'image',
        'message'
    ];
}
