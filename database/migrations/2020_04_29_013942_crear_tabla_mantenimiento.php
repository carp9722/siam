<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CrearTablaMantenimiento extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mantenimiento', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('usuario_id');
            $table->foreign('usuario_id', 'fk_mantenimiento_usuario')->references('id')->on('usuario')->onDelete('restrict')->onUpdate('restrict');
            $table->string('vehiculo_id');
            $table->foreign('vehiculo_id', 'fk_mantenimiento_vehiculo')->references('id')->on('vehiculo')->onDelete('restrict')->onUpdate('restrict');
            $table->enum('prioridad', ['alta', 'media','baja']);
            $table->date('notificación')->nullable();
            $table->charset = 'utf8mb4';
            $table->collation = 'utf8mb4_spanish_ci';
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
        Schema::dropIfExists('mantenimiento');
    }
}
