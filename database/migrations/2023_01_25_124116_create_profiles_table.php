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
        Schema::create('profiles', function (Blueprint $table) {
            $table->id();
            $table->tinyText('name')->nullable();
            $table->tinyText('email')->nullable();
            $table->longText('picture')->nullable();
            $table->mediumInteger('phone')->nullable();
            $table->tinyText('state')->nullable();
            $table->tinyText('country')->nullable();
            $table->tinyText('city')->nullable();
            $table->tinyText('zipcode')->nullable();
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
        Schema::dropIfExists('profiles');
    }
};
