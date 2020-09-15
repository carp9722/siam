@extends("theme.$theme.layout")
@section('titulo')
Vehiculos
@endsection

@section("scripts")
<script src="{{asset("assets/pages/scripts/vehiculo/index.js")}}" type="text/javascript"></script>
@endsection

@section('contenido')
<div class="row">
    <div class="col-lg-12">
        @csrf
        @include('includes.mensaje')
        <div class="card card-info">
            <div class="card-header">
                <h3 class="card-title">Vehiculos</h3>
                <div class="card-tools">
                    </a>
                </div>
            </div>
            <div class="box-body">
                <table class="table table-striped table-bordered table-hover" id="tabla-data">
                    <thead>
                        <tr>
             <th>#</th>
            <th>ID</th>
            <th>Placa </th>
            <th>Marca</th>
            <th>Modelo</th>
            <th>Chasis</th>
            <th>Motor</th>
            <th>Fecha Matricula</th>
            <th>Fin Vida util</th>
            <th class="width70"></th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach ($datas as $data)
                        <tr>
            <td>{{$loop->iteration}}</td>
            <td>{{ $data->id}}</td>
            <td>{{ $data->placa}}</td>
            <td>{{ $data->marca}}</td>
            <td>{{ $data->modelo}}</td>
            <td>{{ $data->chasis}}</td>
            <td>{{ $data->motor}}</td>
            <td>{{ $data->fecha_matricula}}</td>
            <td>{{ $data->fecha_vida_util}}</td>
            <td class="width70"></td>
            @endforeach

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="modal-ver-libro" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title">Libro</h4>
            </div>
            <div class="modal-body"></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Cerrar</button>
            </div>
        </div>
    </div>
</div>
@endsection