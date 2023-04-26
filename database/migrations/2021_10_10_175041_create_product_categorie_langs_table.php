<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductCategorieLangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('product_categorie_langs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_cate_id')->unsigned();
            $table->foreign('product_cate_id')->references('id')->on('product_cates')->onDelete('cascade');
            $table->bigInteger('product_cate_lang_id');
            $table->string('lang');
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
        Schema::dropIfExists('product_categorie_langs');
    }
}
