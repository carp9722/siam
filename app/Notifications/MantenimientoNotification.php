<?php

namespace App\Notifications;
use Carbon\Carbon;
use App\Models\Mantenimiento;
use App\Models\Vehiculo;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;

class MantenimientoNotification extends Notification
{
    use Queueable;

    /**
     * Create a new notification instance.
     *
     * @return void
     */
    public function __construct(Mantenimiento $mantenimiento)
    {
        //
        $this->mantenimiento =  $mantenimiento;
    }

    /**
     * Get the notification's delivery channels.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function via($notifiable)
    {
        return ['database'];
    }

    /**
     * Get the mail representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return \Illuminate\Notifications\Messages\MailMessage
     */
    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->line('The introduction to the notification.')
                    ->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');
    }

    /**
     * Get the array representation of the notification.
     *
     * @param  mixed  $notifiable
     * @return array
     */
    public function toArray($notifiable)
    { 
        return $this->mantenimiento;
        return [
            //
            'mantenimiento'  => $this->mantenimiento->id,
            'vehiculo_id' => $this->mantenimiento->vehiculo_id,
            'prioridad'   =>  $this->mantenimiento->prioridad,
            'notificación'   =>  $this->mantenimiento->notificación,
            'time'  =>  Carbon::now()->diffForHumans(),
        ];
    }
}
