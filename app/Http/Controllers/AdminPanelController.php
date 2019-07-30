<?php

namespace App\Http\Controllers;

use App\OwnerEvent;
use App\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class AdminPanelController extends Controller
{
    public  function  index(){
if (Role::isSuperAdmin()){
    $entrys=DB::table('events')->get();

}
else{
$event= (OwnerEvent::getEventOwnre());
    $entrys=DB::table('events')->where('event_id',$event)->get();

}

        return view('admin.index',compact('entrys'));
    }

    public  function  deleteEntry($id){

        DB::table('events')->where('id',$id)->delete();
        return back();
    }
}
