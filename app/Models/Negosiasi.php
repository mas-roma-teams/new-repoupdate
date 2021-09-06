<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Negosiasi extends Model
{
    use HasFactory;
    protected $primaryKey = 'id';
    protected $table = 'negosiasi';
    protected $fillable = ['id',
     'nama_user','id_negosiasi','id_user','id_city','id_district','id_province','id_villages','id_jasa','id_vendor','jumlah_negosiasi','alamat_lengkap','status','keterangan'
   ];

   public function kota()
    {
        return $this->belongsTo(IndoCity::class,'id_city');
    }

    public function users()
    {
        return $this->belongsTo(User::class,'id');
    }

    public function provinsi()
    {
        return $this->belongsTo(IndoProv::class,'id_province');
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class,'id_district');
    }

    public function kelurahan()
    {
        return $this->belongsTo(Kelurahan::class,'id_villages');
    }
    

    public function transaksis()
    {
        return $this->hasMany(Transaksis::class,'jasa_id');
    }

    public function vendors()
	{
	    return $this->belongsTo(Vendors::class,'id_vendor');
	}

    public function jasa()
    {
        return $this->belongsTo(Jasas::class,'id_jasa');
    }


    
}
