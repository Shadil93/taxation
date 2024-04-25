<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('employees', function (Blueprint $table) {
            $table->id();
            $table->integer('qty');
            $table->integer('amount');
            $table->integer('totalAmount');
            $table->integer('taxPercentage');
            $table->integer('taxAmount');
            $table->integer('netAmount');
            $table->string('customerName');
            $table->date('invoiceDate');
            $table->string('photo');
            $table->string('customerEmail');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('employees');
    }
};
