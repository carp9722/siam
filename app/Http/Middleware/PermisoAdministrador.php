<?php

namespace App\Http\Middleware;

use Closure;

class PermisoAdministrador
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    /**El middleware proporciona un mecanismo conveniente para filtrar 
    las solicitudes HTTP que ingresan a su aplicación. Por ejemplo, Laravel 
    incluye un middleware que verifica que el usuario de su aplicación esté autenticado. 
    Si el usuario no está autenticado, el middleware lo redireccionará a la pantalla de inicio de sesión. 
    Sin embargo, 
    si el usuario está autenticado, el middleware permitirá que la solicitud continúe en la aplicación.*/
    public function handle($request, Closure $next)
    {
        if ($this->permiso())
            return $next($request);
        return redirect('/')->with('mensaje', 'No tiene permiso para entrar aquí');
    }

    private function permiso()
    {
        return session()->get('rol_nombre') == 'administrador';
    }
}
