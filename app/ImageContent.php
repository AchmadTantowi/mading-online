<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImageContent extends Model
{
    protected $fillable = [
        'content_id', 'image'
    ];
}
