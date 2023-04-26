<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateKyguiImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('kygui_images', function (Blueprint $table) {
            $table->id();
            $table->string('url');
            $table->bigInteger('kygui_id')->unsigned();
            $table->foreign('kygui_id')->references('id')->on('kyguis')->onDelete('cascade');
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
        Schema::dropIfExists('kygui_images');
    }
}
