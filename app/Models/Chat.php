<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chat extends Model
{
    use HasFactory;
    protected $table="chat";

    public function jasa()
	{
	    return $this->belongsTo(Jasas::class,'jasa_id');
	}

    public function vendors()
	{
	    return $this->belongsTo(Vendors::class,'vendor');
	}

    public function users()
	{
	    return $this->belongsTo(User::class,'user');
	}


}
