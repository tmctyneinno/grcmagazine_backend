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
        Schema::create('comments', function (Blueprint $table) {
            $table->id();
            $table->tinytext('name')->nullable();
            $table->tinytext('email')->nullable();
            $table->longtext('message')->nullable();
            $table->boolean('pinned')->default(0)->nullable();
            $table->unsignedBigInteger('articles_id')->nullable();
            // $table->foreign('articles_id')->references('id')->on('articles');
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
        Schema::dropIfExists('comments');
    }
};
