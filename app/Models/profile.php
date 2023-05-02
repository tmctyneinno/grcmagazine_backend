<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class profile extends Model
{
    use HasFactory;
    // formData.append('name',  name)
// formData.append('email',  email)
// formData.append('phone',  phone)
// formData.append('state',  state)
// formData.append('country',  country)
// formData.append('city',  city)
// formData.append('zipcode',  zipcode)
protected $fillable = [
    'name',
    'email',
    'picture',
    'phone',
    'state',
    'country',
    'city',
    'zipcode'
];
}
