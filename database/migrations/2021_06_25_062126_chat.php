<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Chat extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chat', function (Blueprint $table) {
            $table->id();
            $table->unsignedInteger('user');
            $table->unsignedInteger('vendor');
            $table->string('kode_chat')->nullable();
            $table->unsignedInteger('jasa_id');
            $table->unsignedBigInteger('nominal')->default(0);
            $table->string('pesan')->nullable();
            $table->enum('status_chat', ['chat', 'nego','deal']);
            $table->unsignedInteger('is_read')->default(0);
            $table->timestamps();
        });
    }

    public function down()
    {
        //
    }
}
