<?php

namespace App\Listeners;
use App\Models\Seguridad\Usuario;
use App\Notifications\MantenimientoNotification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Notification;

class MantenimientoListener
{
    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  object  $event
     * @return void
     */
    public function handle($event)
    {
        Usuario::all()
            ->except($event->mantenimiento->usuario_id)
            ->each(function(Usuario $usuario) use ($event){
                Notification::send($usuario, new MantenimientoNotification($event->mantenimiento));
            }); 

    }
}
