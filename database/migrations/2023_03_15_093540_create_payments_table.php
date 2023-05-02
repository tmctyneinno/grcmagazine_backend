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
            // 'plan_name',
                // 'price',
                // 'code',
                // 'message',
                //  'user_id',
                //status,
                // days
                // number_of_article
        Schema::create('payments', function (Blueprint $table) {
            $table->id();
            $table->tinyText('plan_name')->nullable();
            $table->unsignedBigInteger('price')->nullable();
            $table->mediumText('code')->nullable();
            $table->tinyText('message')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->tinyText('status')->nullable();
            $table->unsignedBigInteger('days')->nullable();
            $table->unsignedBigInteger('number_of_article')->nullable();
            $table->unsignedBigInteger('remaining_days')->nullable();
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
        Schema::dropIfExists('payments');
    }
};
