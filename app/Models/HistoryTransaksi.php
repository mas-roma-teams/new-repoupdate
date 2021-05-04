<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
Use Carbon\Carbon;

class HistoryTransaksi extends Model
{
    use HasFactory;
    protected $table = 'histrory_transaksi';
    protected $fillable = [
        'user_id', 'jumlah_penarikan','metode_transaksi','created_at','updated_at'
    ];

    protected $casts = [
    'created_at' => 'datetime:d/m/Y', // Change your format
    'updated_at' => 'datetime:d/m/Y',
	];

	public function getCreatedAtAttribute($date)
	{
	    return Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $date)->format('Y-m-d');
	}

	public function getUpdatedAtAttribute($date)
	{
	    return Carbon\Carbon::createFromFormat('Y-m-d H:i:s', $date)->format('Y-m-d');
	}
}
