<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {

        Schema::create('advestments', function (Blueprint $table) {
            $table->id();
            $table->tinyText('name')->nullable();
            $table->tinyText('email')->nullable();
            $table->tinyText('companyname')->nullable();
            $table->unsignedBigInteger('price')->nullable();
            $table->tinyText('image')->nullable();
            $table->longText('message')->nullable();
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
        Schema::dropIfExists('advestments');
    }
};
