<?php

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;


class UsuarioAdministradorSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //puede entrar a crear los usuarios que quiera al ser el primer admin
        DB::table('usuario')->insert([
            'cedula' => '1075308463',
            'usuario' => 'carlos.9722',
            'password' => bcrypt('pass123'),
            'primer_nombre' => 'carlos',
            'segundo_nombre' => 'enrique',
            'primer_apellido' => 'peña',
            'segundo_apellido' => 'perez',
            'edad' => '22',
            'sexo' => 'hombre',
            'email' => 'carlos.9722@outlook.com',

        ]); 

        DB::table('usuario_rol')->insert([
            'rol_id' => 1,
            'usuario_id' => 1,
        ]);

        
    }
}
