<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;




namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Vendors extends Model
{
    use HasFactory;


    //

    protected $primaryKey = 'id';
    protected $table = 'vendors';
    protected $fillable = [
        'id',
        'user_id',
        'photo_vendor',
        'nama_vendor',
        'kontak',
        'email',
        'provinsi_id',
        'kabupaten_id',
        'kecamatan_id',
        'kelurahan_id',
        'status',
        'alamat_lengkap',
        'ktp',
    ];

    public function jasas()
    {
        return $this->hasMany(Jasas::class);
    }

    public function wilayah()
    {
        return $this->belongsTo(Provinsi::class,'provinsi_id');
    }

    public function kecamatan()
    {
        return $this->belongsTo(Kecamatan::class,'kecamatan_id');
    }


}



