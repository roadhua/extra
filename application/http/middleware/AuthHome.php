<?php

namespace app\http\middleware;

use Session,Request,Sc,OnlyLogin;

class AuthHome
{
    public function handle($request, \Closure $next)
    {
       echo '执行中间件';

        return $next($request);
    }
}