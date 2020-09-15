@extends("theme.$theme.layout")
@section('prestado_a')
Mantenimiento
@endsection

@section("scripts")
<script src="{{asset("assets/pages/scripts/mantenimiento/crear.js")}}" type="text/javascript"></script>
@endsection

@section('contenido')
<div class="row">
    <div class="col-lg-12">
        @include('includes.mensaje')
        @include('includes.form-error')
        <div class="card card-danger">
            <div class="card-header">
                <h3 class="card-title">Mantenimiento</h3>
                <div class="card-tools">
                    <a href="{{route('Mantenimiento')}}" class="btn btn-outline-info btn-sm">
                        <i class="fa fa-fw fa-reply-all"></i> Volver al listado
                    </a>
                </div>
            </div>
            <form action="{{route('Mantenimiento.guardar')}}" id="form-general" class="form-horizontal form--label-right" method="POST" autocomplete="off" enctype="multipart/form-data">
                @csrf
                <div class="card-body">
                    <div class="form-group row">
                        <label for="vehiculo_id" class="col-lg-3 col-form-label requerido">Vehiculo</label>
                        <div class="col-lg-8">
                            <select name="vehiculo_id" id="vehiculo_id" class="form-control" required>
                            @foreach($vehiculos as $id => $vehiculo)
                                    <option value="{{$id}}">{{$vehiculo}}</option>
                                @endforeach
                                
                            </select>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label for="prioridad" class="col-lg-3 col-form-label requerido">Prioridad</label>
                        <div class="col-lg-8">
                        <select name="prioridad" id="prioridad" class="form-control" required>
                        <option value="alta" checked> alta </option>
                        <option value="media" checked> media </option>
                        <option value="baja" checked> baja </option>
                    </select>                      
                     </div>
                 </div>

                    
                    <div class="form-group row">
                        <label for="notificación" class="col-lg-3 col-form-label requerido">Fecha de ingreso</label>
                        <div class="col-lg-8">
                        <input type="text" name="notificación" id="notificación" class="form-control" value="{{old('notificación', date('Y-m-d'))}}" required/>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div class="row">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-6">
                            @include('includes.boton-form-crear')
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection