<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class Role extends Model
{
   public  static function isSuperAdmin(){
       $user_id=Auth::id();

       $isHas=DB::table('user_role')->where(['user_id'=>$user_id,'role_id'=>1])->count('user_id');
       if($isHas>0){
           return true;
       }else{
           return false;
       }

   }
    public  static function isAdmin(){
        $user_id=Auth::id();

        $isHas=DB::table('user_role')->where('user_id',$user_id,['role_id'=>[1,2]])->count('user_id');
        if($isHas>0){
            return true;
        }else{
            return false;
        }

    }

}
