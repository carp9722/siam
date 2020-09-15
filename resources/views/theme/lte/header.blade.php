@php
    use Carbon\Carbon;
@endphp

<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
        <li class="nav-item">
            <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
        </li>
    </ul>
    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
        <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" placeholder="Buscar" aria-label="Buscar">
            <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </form>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
 <!-- Notifications Dropdown Menu -->
 <li class="nav-item dropdown">
                <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="fas fa-bell"></i>
                @if(auth()->user() || !empty(auth()->user()))
                    @if (count(auth()->user()->unreadNotifications))
                        <span class="badge badge-warning">{{ count(auth()->user()->unreadNotifications) }}</span>
                    @endif
                @endif

                <!---->
                    </span>
                </a>
                <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <span class="dropdown-header" >Unread Notifications</span>
                @if(auth()->user() || !empty(auth()->user()))
                  @forelse (auth()->user()->unreadNotifications as $notification)
                  <a href="#" class="dropdown-item">
                    <i class="fas fa-envelope mr-2"></i> {{ $notification->data['vehiculo_id'] }}
                    <span class="ml-3 pull-right text-muted text-sm">{{ $notification->created_at->diffForHumans() }}</span>
                  </a>
                  @empty
                    <span class="ml-3 pull-right text-muted text-sm">Sin notificaciones por leer </span>  
                  @endforelse
                @endif
                 
                  <div class="dropdown-divider"></div>
                  <span class="dropdown-header">Read Notifications</span>
                  @if(auth()->user() || !empty(auth()->user()))
                  @forelse (auth()->user()->readNotifications as $notification)
                  <a href="#" class="dropdown-item">
                    <i class="fas fa-users mr-2"></i> {{ $notification->data['prioridad'] }}
                    <span class="ml-3 pull-right text-muted text-sm">{{ $notification->created_at->diffForHumans() }}</span>
                  </a>
                  @empty
                    <span class="ml-3 pull-right text-muted text-sm">Sin notificaciones leidas                      </span>
                  @endforelse
                  @endif


                  <div class="dropdown-divider"></div>
                  <a href="{{ route('markAsRead') }}" class="dropdown-item dropdown-footer">Mark all as read</a>
                </div>
              </li>

        
      <!-- Notifications Dropdown Menu 2-->
        <li class="nav-item dropdown">       
            <a class="nav-link" data-toggle="dropdown" href="#">
                
                <i class="fas fa-user"></i> {{session()->get('nombre_usuario', 'Inivitado')}} - {{session()->get('rol_nombre', 'Guest')}}
            </a>
            
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                
            @guest
                    <a href="{{route('login')}}" class="dropdown-item">
                        <i class="fas fa-lock mr-2"></i> Login
                    </a>
                    @endguest
            
                @auth
                    <a href="{{route('logout')}}" class="nav-link">
                        <i class="fas fa-users mr-2"></i> Salir
                    </a>
                    
                    @endauth
                <div class="dropdown-divider"></div>
                @if(session()->get("roles") && count(session()->get("roles")) > 1)
                    <a href="#" class="cambiar-rol dropdown-item dropdown-footer">Cambiar Rol</a>
                @endif
            </div>
            
        </li>

    </ul>
</nav>