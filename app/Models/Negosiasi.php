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
     'nama_user','id_negosiasi','id_user','id_city','id_district','id_province','id_villages','jumlah_negosiasi','alamat_lengkap','status','keterangan'
   ];
}
