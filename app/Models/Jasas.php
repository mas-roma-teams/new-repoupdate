<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jasas extends Model
{
    use HasFactory;
    protected $table = 'jasas';
    protected $primaryKey = 'id';
    protected $fillable = [
     'id',
     'nama_jasa',
     'slug',
     'photo_jasa',
     'deskripsi',
     'kategori_id',
     'user_id',
     'vendor_id',
     'harga',
     'jumlah_dp',
     'jumlah_dp_uang',
     'dilihat',
     'status',


   ];
     public function vendors()
	{
	    return $this->belongsTo(Vendors::class);
	}

    public function kategoris()
    {
        return $this->hasMany(Jasas::class);
    }
}
