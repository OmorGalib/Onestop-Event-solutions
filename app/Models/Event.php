<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Event extends Model
{
    use HasFactory,SoftDeletes;

    protected $guarded = [];

    protected $casts = [
        'date' => 'timestamp',
        'reg_last_date' => 'timestamp',
        'fee' => 'json',
    ];



    public function participants()
    {
        return $this->hasMany(Participant::class);
    }
}
