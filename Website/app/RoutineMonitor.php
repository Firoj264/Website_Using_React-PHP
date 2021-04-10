<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoutineMonitor extends Model
{
    protected $table = 'routine_monitor';
    protected $fillable = [
        'stall_no','animalId','weight','height','milk_per_day','date','note','animal_image','service_name','result','monitoring_time'
    ];
}
