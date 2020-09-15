<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Permiso extends Model
{
    //
    protected $table = "permiso";
     protected $fillable = ['nombre', 'slug'];
    protected $guarded = ['id'];
    public function roles()
    {       
        //belongsToManyrefiere a una relación de muchos a muchos
        // solo puede emparejarse con otra belongsToManyrelación y 
        //significa que tiene una tercera tabla dinámica.

        return $this->belongsToMany(Rol::class, 'permiso_rol', 'permiso_id', 'rol_id');
    }
}
