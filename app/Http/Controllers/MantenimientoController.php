<?php

namespace App\Http\Controllers;

use App\Events\MantenimientoEvent;
use App\Models\Mantenimiento;
use App\Models\Seguridad\Usuario;
use App\Models\Vehiculo;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ValidacionMantenimiento;
use App\Notifications\MantenimientoNotification;
use Illuminate\Support\Facades\Auth;



class MantenimientoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        /*VEA MIPLE :V

        Llama una relación que no existe
        El with() es para llamar relaciones, en el momentosolo tiene 2: usuario y vehículo*/
        $vehiculos = Mantenimiento::with('usuario:id,primer_nombre,segundo_nombre,primer_apellido', 'vehiculo:id,placa')->orderBy('notificación')->get();
        return view('Mantenimiento.index', compact('vehiculos'));
    }

    public function crear()
    {

        $vehiculos = Vehiculo::orderBy('id')->pluck('placa', 'id')->toArray();
        return view('Mantenimiento.crear', compact('vehiculos','prioridades'));
        
        
    }


    public function guardar(ValidacionMantenimiento $request)
    {
       
        $vehiculo = Vehiculo::findOrFail($request->vehiculo_id);
        $mantenimiento = new Mantenimiento();
        $mantenimiento->usuario_id = auth()->user()->id;
        $mantenimiento->vehiculo_id = $request->vehiculo_id;
        $mantenimiento->prioridad = $request->prioridad;
        $mantenimiento->notificación = $request->notificación;
        $mantenimiento->save();
        /*$vehiculo->mantenimientos()->create([
            'prioridad' => $request->prioridad,
            'notificación' => $request->notificación,
            'usuario_id' => auth()->user()->id
        ]);*/
       /* Usuario::all()
            ->except($vehiculo->usuario_id)
            ->each(function(Usuario $usuario) use ($mantenimiento){
                $usuario->notify(new MantenimientoNotification($mantenimiento));
            });*/
            event(new MantenimientoEvent($mantenimiento));
        
        return redirect()->route('Mantenimiento')->with('mensaje', 'Se regitro el vehiculo a mantenimiento');
    }

    public function store()
    {
        $MantenimientoNotifications = auth()->user()->unreadNotifications;
        return view('mantenimiento.notifications', compact('MantenimientoNotifications'));
    }

    public function editar($id)
    {
       
    }


    public function actualizar( $request, $id)
    {
        
    }

    public function eliminar(Request $request,$id)
    {
        
    }
    public function markNotification(Request $request)
    {
        auth()->user()->unreadNotifications
                ->when($request->input('id'), function($query) use ($request){
                    return $query->where('id', $request->input('id'));
                })->markAsRead();
        return response()->noContent();
    }
}
