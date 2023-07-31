<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('user_id')->unsigned();
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->string('name');
            $table->string('title')->nullable();
            $table->longText('content')->nullable();
            $table->longText('short_description')->nullable();
            $table->longText('seo_description')->nullable();
            $table->string('seo_keyword')->nullable();
            $table->string('url');
            $table->boolean('display');
            $table->string('avata')->nullable();
            $table->bigInteger('price');
            $table->boolean('tiente')->nullable();
            $table->bigInteger('sale')->nullable();
            $table->string('lang')->nullable();
            $table->string('ma')->nullable();
            $table->boolean('stock')->nullable();
            $table->boolean('highlight')->nullable();
            $table->integer('view')->nullable();
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
        Schema::dropIfExists('products');
    }
}
