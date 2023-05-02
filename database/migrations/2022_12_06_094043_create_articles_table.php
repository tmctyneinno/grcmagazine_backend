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
        Schema::create('articles', function (Blueprint $table) {
            $table->id();
            $table->tinyText('articlename')->nullable();
            $table->longText('articlebodyone')->nullable();
            $table->longText('articlebodytwo')->nullable();
            $table->longText('articlebodythree')->nullable();
            $table->longText('articlebodyfour')->nullable();
            $table->longText('articlebodyfive')->nullable();
            $table->longText('articlecoatbody')->nullable();
            $table->tinyText('picture')->nullable();
            $table->unsignedBigInteger('authors_id')->nullable();
            $table->foreign('authors_id')->references('id')->on('authors');
            $table->boolean('status')->default(0);
            $table->dateTime('dataup');
            $table->tinyText('yearup')->nullable();
            $table->tinyText('categories')->nullable();
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
        Schema::dropIfExists('articles');
    }
};
