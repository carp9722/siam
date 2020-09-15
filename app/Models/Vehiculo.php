<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;


class Vehiculo extends Model
{
    
    protected $table = "vehiculo";
    protected $fillable = ['placa', 'marca', 'modelo', 'chasis	', 'motor', 'fecha_matricula','fecha_vida_util','foto'];
    
    public $incrementing = false;
    public function mantenimientos()
    {
        return $this->HasMany(Mantenimiento::class);
    }
}
