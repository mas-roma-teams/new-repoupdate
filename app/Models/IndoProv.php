<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class IndoProv extends Model
{
    use HasFactory;
    protected $table= "indonesia_provinces";
    protected $fillable = [
     'id','name','meta','province_id'
   ];

}	