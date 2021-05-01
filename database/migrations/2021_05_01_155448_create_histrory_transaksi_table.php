<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHistroryTransaksiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('histrory_transaksi', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id');
            $table->string('jumlah_penarikan')->nullable();
            $table->string('metode_penarikan')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('histrory_transaksi');
    }
}
