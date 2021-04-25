<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jasas extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $table = 'jasas';
    protected $primaryKey = 'id';
    protected $fillable = [
     'id',
     'nama_jasa',
     'slug',
     'photo_jasa',
     'deskripsi',
     'kategori_id',
     'harga_total',
     'user_id',
     'vendor_id',
     'jumlah_dp',
     'jumlah_dp_uang',
     'dilihat',
     'status',


   ];
     public function vendors()
	{
	    return $this->belongsTo(Vendors::class,'vendor_id');
	}

    public function user()
    {
        return $this->belongsTo(User::class,'id');
    }

    public function kategoris()
    {
        return $this->hasMany(Jasas::class);
    }
}
