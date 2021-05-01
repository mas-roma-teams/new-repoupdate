<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HistoryTransaksi extends Model
{
    use HasFactory;
    protected $table = 'histrory_transaksi';
    protected $fillable = [
        'user_id', 'jumlah_penarikan','metode_transaksi'
    ];
}
