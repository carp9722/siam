<?php

use Carbon\Carbon;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;;

class TablaVehiculoSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $now = Carbon::now()->toDateTimeString();
        $vehiculos = [
            array('id' => 'TZ100', 'placa' => 'TAZ374', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA2EF302783',  'motor' => '73530496',  'fecha_matricula' => '2013-09-02',  'fecha_vida_util' => '2025-09-02',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ101', 'placa' => 'TAZ375', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA2EF302752',  'motor' => '73527678',  'fecha_matricula' => '2013-09-02',  'fecha_vida_util' => '2025-09-02',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ102', 'placa' => 'TAZ376', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA4EF302753',  'motor' => '73526716',  'fecha_matricula' => '2013-09-02',  'fecha_vida_util' => '2025-09-02',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ104', 'placa' => 'WCM809', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA6EF302771',  'motor' => '73528060',  'fecha_matricula' => '2013-08-12',  'fecha_vida_util' => '2025-08-12',  'created_at' => $now, 'updated_at' => $now), 
            array('id' => 'TZ105', 'placa' => 'WCM810', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA8EF302772',  'motor' => '73529404',  'fecha_matricula' => '2013-08-13',  'fecha_vida_util' => '2025-08-13',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ106', 'placa' => 'WCM811', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA6EF302754',  'motor' => '73526706',  'fecha_matricula' => '2013-08-13',  'fecha_vida_util' => '2025-08-13',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ107', 'placa' => 'WCM814', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA5EF302762',  'motor' => '73528054',  'fecha_matricula' => '2013-08-13',  'fecha_vida_util' => '2025-08-13',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ108', 'placa' => 'WCM818', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA6EF302768',  'motor' => '73528058',  'fecha_matricula' => '2013-08-14',  'fecha_vida_util' => '2025-08-14',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ109', 'placa' => 'WCM822', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPAXEF302773',  'motor' => '73529407',  'fecha_matricula' => '2013-08-12',  'fecha_vida_util' => '2025-08-12',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ110', 'placa' => 'WCM827', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA8EF302786',  'motor' => '73530232',  'fecha_matricula' => '2013-08-12',  'fecha_vida_util' => '2025-08-12',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ111', 'placa' => 'WCM830', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA7EF302780',  'motor' => '73528042',  'fecha_matricula' => '2013-08-13',  'fecha_vida_util' => '2025-08-13',  'created_at' => $now, 'updated_at' => $now), 
            array('id' => 'TZ112', 'placa' => 'WDD950', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA0EF302751',  'motor' => '73527679',  'fecha_matricula' => '2013-09-11',  'fecha_vida_util' => '2025-09-11',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ113', 'placa' => 'WEU982', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA6FF305896',  'motor' => '73591995',  'fecha_matricula' => '2014-02-06',  'fecha_vida_util' => '2026-02-06',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ114', 'placa' => 'WEU983', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA8FF305897',  'motor' => '73591567',  'fecha_matricula' => '2014-02-06',  'fecha_vida_util' => '2026-02-06',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ115', 'placa' => 'WEU984', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPAXFF305898',  'motor' => '73591986',  'fecha_matricula' => '2014-02-12',  'fecha_vida_util' => '2026-02-12',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ116', 'placa' => 'WEU985', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPAXFF305903',  'motor' => '73592479',  'fecha_matricula' => '2014-02-06',  'fecha_vida_util' => '2026-02-06',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ117', 'placa' => 'WEU986', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA1FF305904',  'motor' => '73592473',  'fecha_matricula' => '2014-02-06',  'fecha_vida_util' => '2026-02-06',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ118', 'placa' => 'WEU987', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA7FF305910',  'motor' => '73591569',  'fecha_matricula' => '2014-02-06',  'fecha_vida_util' => '2026-02-06',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ119', 'placa' => 'WCL328', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA4EF301599',  'motor' => '73518622',  'fecha_matricula' => '2013-07-24',  'fecha_vida_util' => '2025-07-24',  'created_at' => $now, 'updated_at' => $now),
            array('id' => 'TZ120', 'placa' => 'TAZ500', 'modelo' => '2014',  'marca' => 'BLUEBIRD',  'chasis' => '1BDYNCPA2EF302783',  'motor' => '73530496',  'fecha_matricula' => '2013-09-02',  'fecha_vida_util' => '2025-09-02',  'created_at' => $now, 'updated_at' => $now)
            
        ];
        DB::table('vehiculo')->insert($vehiculos);
    }
}
