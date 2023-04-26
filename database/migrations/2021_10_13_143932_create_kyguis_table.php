<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKyguisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kyguis', function (Blueprint $table) {
            $table->id();
            $table->string('lkg')->nullable();
            $table->string('lbds')->nullable();
            $table->string('name')->nullable();
            $table->string('phone')->nullable();
            $table->string('email')->nullable();
            $table->bigInteger('price')->nullable();
            $table->string('da')->nullable();
            $table->string('tbds')->nullable();
            $table->integer('dt')->nullable();
            $table->integer('mt')->nullable();
            $table->string('nt')->nullable();
            $table->string('th')->nullable();
            $table->integer('pn')->nullable();
            $table->integer('vs')->nullable();
            $table->integer('st')->nullable();
            $table->longText('content')->nullable();
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
        Schema::dropIfExists('kyguis');
    }
}
