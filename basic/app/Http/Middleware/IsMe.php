<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Auth;

class IsMe
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
        // ဟိန်းထက်ဇံ မဟုတ်ရင် create ကိုလာလို့မရဘူး

        if(Auth::id() != 101){
            return redirect()->route('denied');
        }

//        dd("Hello I'm isMe middleware");
        return $next($request);
    }
}
