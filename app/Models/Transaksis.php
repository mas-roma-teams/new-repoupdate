<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Transaksis extends Model
{
    use HasFactory;

    protected $table = "transaksis";
    protected $fillable = [
        'id','kode_transaksi','waktu_transaksi','jasa_id','vendor_id','user_id','harga_total','down_payment','sisa_pembayaran','status'
      ];

    /* public function vendor()
    {

        return $this->hasOne
        (Vendors::class,'vendor_id');

        return $this->belongsTo(Vendors::class);

    }*/

    public function jasa()
    {
        return $this->belongsTo(Jasas::class,'jasa_id');
    }

    public function vendor()
    {
        return $this->belongsTo(Vendors::class,'vendor_id');
    }
}
