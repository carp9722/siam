<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidarPermiso extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }
  /** En la parte de authorize() se comprobará si el usuario está autorizado a realizar esa request.
     *Por ejemplo podrás comprobar si el usuario tiene los permisos adecuados, 
     *si aquello que intenta modificar le pertenece y cosas así. Si te fijas, 
     *cuando creas el Requests se devuelve un return false, y eso querrá decir que no se le deja pasar.*/

/**En la parte de rules() indicarás las reglas que deben de cumplirse para que se
 considere que los datos son válidos. Si los campos existen y tienen los valores que se esperan, 
 numéricos, cadenas, de unas dimensiones, etc. */
    /**
     * 
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'nombre' => 'required|max:50|unique:permiso,nombre,' . $this->route('id'),
            'slug' => 'required|max:50|unique:permiso,slug,' . $this->route('id'),
        ];
    }
}
