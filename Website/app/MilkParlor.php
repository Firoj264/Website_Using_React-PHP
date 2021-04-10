<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MilkParlor extends Model
{
    protected $table = 'milkparlors';

    protected $fillable=[
        'collectorName','stallNo','animalId','litre','price','totalAmount'
    ];
}
