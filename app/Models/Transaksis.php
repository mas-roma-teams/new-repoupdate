<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksis extends Model
{
    use HasFactory;

    protected $table = "transaksis";

    public function vendor()
    {

        return $this->hasOne
        (Vendors::class,'vendor_id');

        return $this->belongsTo(Vendors::class);

    }

    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
