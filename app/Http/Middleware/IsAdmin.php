<?php

namespace App\Http\Middleware;

use App\Role;
use Closure;

class IsAdmin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {


        if(Role::isAdmin()){
            return $next($request);
        }
        return redirect('/');

    }
}
