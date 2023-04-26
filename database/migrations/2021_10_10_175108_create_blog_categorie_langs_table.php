<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBlogCategorieLangsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('blog_categorie_langs', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('blog_cate_id')->unsigned();
            $table->foreign('blog_cate_id')->references('id')->on('blog_cates')->onDelete('cascade');
            $table->bigInteger('blog_cate_lang_id');
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
        Schema::dropIfExists('blog_categorie_langs');
    }
}
