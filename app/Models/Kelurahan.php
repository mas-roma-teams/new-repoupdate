<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kelurahan extends Model
{
    use HasFactory;
    protected $table="indonesia_villages";
    protected $fillable = [
        'id','name','meta','disctrict_id',
      ];
}
