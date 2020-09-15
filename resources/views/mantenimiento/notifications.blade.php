@extends("theme.$theme.layout")
@section('titulo')
Mantenimiento Notificación
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
                <h3 class="card-title">Notificación de Mantemientos</h3>
                <div class="card-tools">
                    </a>
                </div>
            </div>

              @if (auth()->user())
              @forelse ($MantenimientoNotifications as $notification)
              <div class="alert alert-default-warning">
                Manteminiento Placa: {{ $notification->data['vehiculo_id'] }}
                <p>{{ $notification->created_at->diffForHumans() }}</p>
                <button type="submit" class="mark-as-read btn btn-sm btn-dark" data-id="{{ $notification->id }}">Mark as read</button>
              </div>
              @if ($loop->last)
                <a href="#" id="mark-all">Mark all as read</a>
                  
              @endif
              
              @empty
                No Tienes Notificaciones                  
              @endforelse
                          
              @endif
                            
            </div>
          </div>
        </div>
      </div>
    </div>
@endsection

@section('scripts')
<script>
  function sendMarkRequest(id = null){
    return $.ajax("{{ route('markNotification') }}", {
      method: 'POST',
      data: {
        _token: "{{ csrf_token() }}",
        id
      }
    });
  }

  $(function(){
    $('.mark-as-read').click(function(){
      let request = sendMarkRequest($(this).data('id'));

      request.done(() => {
        $(this).parents('div.alert').remove();
      });
    });

    $('#mark-all').click(function(){
      let request = sendMarkRequest();

      request.done(() => {
        $('div.alert').remove();
      })
    });
  });
</script>
@endsection