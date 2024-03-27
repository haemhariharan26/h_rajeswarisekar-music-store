<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Album extends Model
{
     /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['id','title','artist_name','artist_id','album_date','album_image','album_type'];

    /**
     * The attributes excluded from the model's JSON form.
     *
     * @var array
     */
    protected $hidden = [];
}
