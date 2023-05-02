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
        Schema::create('messagechats', function (Blueprint $table) {
            $table->id();
            $table->tinyInteger('send_id')->nullable();
            $table->tinyInteger('rec_id')->nullable();
            $table->longText('message')->nullable();
            $table->tinyInteger('status')->nullable();
            $table->mediumText('uniquecode')->nullable();
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
        Schema::dropIfExists('messagechats');
    }
};
