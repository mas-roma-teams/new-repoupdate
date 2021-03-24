<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jasas extends Model
{
    use HasFactory;
    protected $table = 'jasas';
    protected $primaryKey = 'id';
     public function vendors()
	{
	    return $this->hasMany(Vendors::class);
	}
}
