@extends("theme.$theme.layout")
@section('titulo')
Mantenimiento
@endsection

@section("scripts")
<script src="{{asset("assets/pages/scripts/mantenimiento/index.js")}}" type="text/javascript"></script>
@endsection

@section('contenido')
<div class="row">
    <div class="col-lg-12">
        @csrf
        @include('includes.mensaje')
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Autos en mantenimiento</h3>
                <div class="card-tools">
                    <a href="{{route('Mantenimiento.crear')}}" class="btn btn-block btn-success btn-sm">
                        <i class="fa fa-fw fa-plus-circle"></i> Prestar nuevo mantanimiento
                    </a>
                </div>
            </div>
            <div class="card-body table-responsive p-0">
                <table class="table table-striped table-bordered table-hover" id="tabla-data">
                    <thead>
                        <tr>
                            <th>Placa</th>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Prioridad</th>
                            <th>Notificado </th>
                            <th class="width80"></th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($vehiculos as $data)
                        <tr>
                            <td>{{$data->vehiculo->placa}}</td>
                            <td>{{$data->usuario->primer_nombre.' '.$data->usuario->segundo_nombre}}</td>
                            <td>{{$data->usuario->primer_apellido}}</td>
                            <td>{{$data->prioridad}}</td>
                            <td>{{$data->notificación}}</td>
                            <td class="width70"></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection