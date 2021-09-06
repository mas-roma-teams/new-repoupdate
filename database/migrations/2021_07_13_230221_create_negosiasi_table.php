<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateNegosiasiTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('negosiasi', function (Blueprint $table) {
            $table->id()->primary();
            $table->string('nama_user',255)->nullable();
            $table->string('id_negosiasi',255)->nullable();
            $table->bigInteger('id_user',255)->nullable();
            $table->bigInteger('id_city',255)->nullable();
            $table->bigInteger('id_district',255)->nullable();
            $table->bigInteger('id_province',255)->nullable();
            $table->bigInteger('id_villages',255)->nullable();
            $table->string('jumlah_negosiasi')->nullable();
            $table->string('alamat_lengkap')->nullable();
            $table->bigInteger('status',11)->nullable();
            $table->string('keterangan',255)->nullable();
            
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
        Schema::dropIfExists('negosiasi');
    }
}
