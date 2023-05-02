<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class payment extends Model
{
    use HasFactory;

    protected $fillable = [

         'plan_name',
          'price',
          'code',
          'message',
           'user_id',
           'status',
            'days',
            'number_of_article',
            'remaining_days',

    ];
}
