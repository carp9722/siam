<div class="form-group row">
    <label for="cedula" class="col-lg-3 col-form-label requerido">Cedula</label>
    <div class="col-lg-8">
        <input type="number" name="cedula" id="cedula" class="form-control" value="{{old('cedula', $data->cedula ?? '')}}" required />
    </div>
</div>
<div class="form-group row">
    <label for="primer_nombre" class="col-lg-3 col-form-label requerido">Primer Nombre</label>
    <div class="col-lg-8">
        <input type="text" name="primer_nombre" id="primer_nombre" class="form-control" value="{{old('primer_nombre', $data->primer_nombre?? '')}}" required/>
    </div>
</div>
<div class="form-group row">
    <label for="segundo_nombre" class="col-lg-3 col-form-label requerido">Segundo Nombre</label>
    <div class="col-lg-8">
        <input type="text" name="segundo_nombre" id="segundo_nombre" class="form-control" value="{{old('segundo_nombre', $data->segundo_nombre?? '')}}" required/>
    </div>
</div>
<div class="form-group row">
    <label for="primer_apellido" class="col-lg-3 col-form-label requerido">Primer Apellido</label>
    <div class="col-lg-8">
        <input type="text" name="primer_apellido" id="primer_apellido" class="form-control" value="{{old('primer_apellido', $data->primer_apellido?? '')}}" required/>
    </div>
</div>
<div class="form-group row">
    <label for="segundo_apellido" class="col-lg-3 col-form-label ">Segundo Apellido</label>
    <div class="col-lg-8">
        <input type="text" name="segundo_apellido" id="segundo_apellido" class="form-control" value="{{old('segundo_apellido', $data->segundo_apellido?? '')}}" />
    </div>
</div>
<div class="form-group row">
    <label for="edad" class="col-lg-3 col-form-label requerido">Edad</label>
    <div class="col-lg-8">
        <input type="number" name="edad" id="edad" class="form-control" value="{{old('edad', $data->edad ?? '')}}" required />
    </div>
</div>
<div class="form-group row">
    <label for="sexo" class="col-lg-3 col-form-label requerido">sexo</label>
    <div class="col-lg-8">
    <label class="radio-inline"> 
        <input type="radio" name="sexo" value="hombre" {{ (old('sexo') == "hombre") ? "checked" : ""}} >Hombre</label> 
         <label class="radio-inline"> <input type="radio" name="sexo" value="mujer"{{ (old('sexo') == "mujer") ? "checked" : ""}} >Mujer</label> 
    </div>
</div>
<div class="form-group row">
    <label for="usuario" class="col-lg-3 col-form-label requerido">Usuario</label>
    <div class="col-lg-8">
        <input type="text" name="usuario" id="usuario" class="form-control" value="{{old('usuario', $data->usuario ?? '')}}" required/>
    </div>
</div>
<div class="form-group row">
    <label for="email" class="col-lg-3 col-form-label requerido">E-Mail</label>
    <div class="col-lg-8">
        <input type="email" name="email" id="email" class="form-control" value="{{old('email', $data->email ?? '')}}" required/>
    </div>
</div>
<div class="form-group row">
<label for="password" class="col-lg-3 col-form-label {{!isset($data) ? 'requerido' : ''}}">Contraseña</label>
    <div class="col-lg-8">
    <input type="password" name="password" id="password" class="form-control" value="" {{!isset($data) ? 'required' : ''}} minlength="5"/>
    </div>
</div>
<div class="form-group row">
<label for="re_password" class="col-lg-3 col-form-label {{!isset($data) ? 'requerido' : ''}}">Repita Contraseña</label>
    <div class="col-lg-8">
    <input type="password" name="re_password" id="re_password" class="form-control" value="" {{!isset($data) ? 'required' : ''}} minlength="5"/>
    </div>
</div>
<div class="form-group row">
    <label for="rol_id" class="col-lg-3 col-form-label requerido">Rol</label>
    <div class="col-lg-8">
    <select name="rol_id[]" id="rol_id" class="form-control" >
            <option value="">Seleccione el rol</option>
            @foreach($rols as $id => $nombre)
            <option
                value="{{$id}}"
                {{is_array(old('rol_id')) ? (in_array($id, old('rol_id')) ? 'selected' : '')  : (isset($data) ? ($data->roles->firstWhere('id', $id) ? 'selected' : '') : '')}}
                >
                {{$nombre}}
                </option>            
                @endforeach
        </select>
    </div>
</div>