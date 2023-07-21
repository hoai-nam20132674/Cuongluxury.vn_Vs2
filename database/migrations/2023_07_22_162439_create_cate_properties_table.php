<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCatePropertiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('cate_properties', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('propertie_id')->unsigned();
            $table->foreign('propertie_id')->references('id')->on('properties')->onDelete('cascade');
            $table->bigInteger('cate_id')->unsigned();
            $table->foreign('cate_id')->references('id')->on('product_cates')->onDelete('cascade');
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
        Schema::dropIfExists('cate_properties');
    }
}
