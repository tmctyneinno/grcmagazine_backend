<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Nicolaslopezj\Searchable\SearchableTrait;
class article extends Model
{
    use HasFactory;
     use SearchableTrait;

    protected $searchable = [
        'columns' => [
            'articles.articlename' => 10,
        ]

        ];

    protected $fillable = [
        'articlename',
        'articlebodyone',
        'articlebodytwo',
        'articlebodythree',
        'articlebodyfour',
        'articlebodyfive',
        'articlecoatbody',
        'dataup',
        'picture',
        'status',
        'yearup',
        'authors_id',
        'categories',
    ];
}
