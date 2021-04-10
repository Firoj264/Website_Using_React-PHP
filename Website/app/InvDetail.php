<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InvDetail extends Model
{
    protected $table = 'invdetail';

    protected $guarded = [];

    public function invMaster()
    {
        return $this->belongsTo('App\InvMaster', 'InvMasterId');
    }
}
