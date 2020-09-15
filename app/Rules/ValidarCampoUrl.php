<?php

namespace App\Rules;

use Illuminate\Contracts\Validation\Rule;
use App\Models\Admin\Menu;

class ValidarCampoUrl implements Rule
{
    /**
     * Create a new rule instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */

     //regla de validadción del menu mediante su campo url
     //si la url es diferente a cualquiere caracter, entonces que la guarde,
     //sino, que retorne un mensaje de la url ya esta ocupada
    public function passes($attribute, $value)
    {
        if($value != '#'){
            $menu = Menu::where($attribute, $value)->where('id', '!=', request()->route('id'))->get();
            return $menu->isEmpty();
        } 
        return true;
    }

    /**
     * Get the validation error message.
     *
     * @return string
     */
    public function message()
    {
        return 'Esta url ya esta asignada';
    }
}