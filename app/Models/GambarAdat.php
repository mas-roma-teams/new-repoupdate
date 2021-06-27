<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class GambarAdat extends Model
{
    use HasFactory;
    protected $table= "gambar_adat";
    protected $fillable = [
     'id','province_id','gambar'
   ];

   public function provinsi(){
    return $this->belongsTo(Provinsi::class,'province_id');
  }
  
}


