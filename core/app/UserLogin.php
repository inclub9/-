<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class UserLogin extends Model
{
    protected $guarded = [];
    protected $table = "users";
    protected $primaryKey = 'id';


    public function user()
    {
        return $this->belongsTo(User::class)->withDefault();
    }

}
