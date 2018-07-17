<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Content extends Model
{
    protected $fillable = [
        'title', 'category', 'image', 'content', 'type_content', 'active'
    ];
}