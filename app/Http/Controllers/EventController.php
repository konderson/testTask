<?php

namespace App\Http\Controllers;

use App\Jobs\SendReminderEmail;
use App\Mails;
use App\OwnerEvent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class EventController extends Controller
{
    public function index($id){

        return view('event',compact('id'));
    }


    public function  save(Request $request){
        $ip = $_SERVER['REMOTE_ADDR'];
$name=$request->name;
$utm=$request->utm;
$sname=$request->sname;
$email=$request->email;
$phone=$request->phone;
$educ=$request->educ;
$id=$request->id;
        DB::table('events')->insert(array('name'=>$name,'sname'=>$sname,'education'=>$educ,'ip'=>$ip,
            'utm'=>$utm,'phone'=>$phone,'email'=>$email ,'event_id'=>$id));
        $data=[$name,$sname,$email,$phone,$educ];
        $owner_id=OwnerEvent::where('event',$id)->first();
        $owner_email=OwnerEvent::getEmailOwner($owner_id->owner_id	);
        dispatch(new SendReminderEmail($owner_email,$email,$name,$data));

        return 'good';
    }
}
