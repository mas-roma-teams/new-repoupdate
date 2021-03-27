<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndoCity extends Model
{
    use HasFactory;
    protected $table= "indonesia_cities";
    protected $fillable = [
     'id','name','meta','province_id'
   ];
}
