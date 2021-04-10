<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InvMaster extends Model
{
    protected $table = 'invmaster';

    protected $guarded = [];

    public function invDetails()
    {
        return $this->hasMany(InvDetail::class,'InvMasterId');
    }
}
