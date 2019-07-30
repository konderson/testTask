<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class OwnerEvent extends Model
{
    protected $table = 'owner_event';

static  public  function  getEmailOwner($id){
    $owner=User::where('id',$id)->first();
    return $owner->email;

}

public static  function  getEventOwnre(){

  $event= DB::table('owner_event')->select('event')->where('owner_id',Auth::id())->first();
    return $event->event;
}

}
