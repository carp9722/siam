<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ValidacionMantenimiento extends FormRequest
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

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            //
    
            'vehiculo_id' => 'required|String',
            'prioridad' => 'required|in:alta,media,baja',
            'notificación' => 'required|date_format:Y-m-d'    
        ];
    }
}
