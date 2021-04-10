<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CowsFeed extends Model
{
    protected $table = 'cows_feed';
    protected $fillable = [
        'stall_no','cow_no','date','note','food_item','item_quantity','unit','feedingTime'
    ];
}
