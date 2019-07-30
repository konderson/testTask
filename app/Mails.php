<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Mail;
class Mails extends Model
{
    static public function owner_email($owner_email,$client_data) {

        $to_name = 'Организатор';//email
        $to_email = $owner_email;
        $data = array('data'=>$client_data);

        Mail::send('ownermail', $data, function($message) use ($to_email,$to_name) {
            $message->to($to_email, $to_name)
                ->subject('Уведомление организатору');
            $message->from('test@gmail','Web');
        });

    }


    static public function client_email($client_email,$client_name) {

        $to_name = $client_name;//email
        $to_email = $client_email;
        $data = array('name'=>"$client_name");

        Mail::send('mail', $data, function($message) use ($to_email,$to_name) {
            $message->to($to_email, $to_name)
                ->subject('Уведомление клиенту');
            $message->from('test@gmail','Web');
        });

    }



}
