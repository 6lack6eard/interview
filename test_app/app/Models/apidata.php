<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class apidata extends Model
{
    use HasFactory;

    protected $fillable = [
        'userId',
        'apidata',
        'completed',
    ];
}
