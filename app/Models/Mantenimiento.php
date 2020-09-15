<?php

namespace App\Models;

use App\Models\Seguridad\Usuario;
use Illuminate\Database\Eloquent\Model;

class Mantenimiento extends Model
{
    //
    protected $table = "mantenimiento";
    protected $fillable = ['usuario_id', 'vehiculo_id', 'prioridad', 'notificación'];


    public function usuario()
    {
        return $this->belongsTo(Usuario::class, 'usuario_id');
    }

    public function vehiculo()
    {
        return $this->belongsTo(Vehiculo::class, 'vehiculo_id');
    }
}