<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProductVariationsPropertiesValuesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pro_var_pro_val', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('pro_var_id')->unsigned();
            $table->foreign('pro_var_id')->references('id')->on('product_variations')->onDelete('cascade');
            $table->bigInteger('propertie_value_id')->unsigned();
            $table->foreign('propertie_value_id')->references('id')->on('properties_values')->onDelete('cascade');
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
        Schema::dropIfExists('product_variations_properties_values');
    }
}
