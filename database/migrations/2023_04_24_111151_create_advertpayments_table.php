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
        Schema::create('advertpayments', function (Blueprint $table) {
            $table->id();
            $table->tinyText('adname')->nullable();
            $table->mediumInteger('adprice')->nullable();
            $table->mediumInteger('addays')->nullable();
            $table->foreignId('advestments_id')->references('id')->on('advestments');
            $table->foreignId('user_id')->references('id')->on('users');
            $table->tinyText('code')->nullable();
            $table->tinytext('message')->nullable();
            $table->tinytext('status')->nullable();
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
        Schema::dropIfExists('advertpayments');
    }
};
