<?php

namespace app\http\middleware;

use Session,Request,Sc,OnlyLogin;

class AuthMiddleware
{
    public function handle($request, \Closure $next)
    {
        if (!OnlyLogin::onlyCheck()) {
            // Sc::clear();  //清除登录信息
            // var_dump(OnlyLogin::onlyCheck());
            echo '<script>
                alert("提示:您的账号已到异地登录-当前账号下线");
                
            </script>';
            return redirect('admin/login/login');
        }
        // var_dump(OnlyLogin::onlyCheck());
        // 判断用户登录
        if (!Sc::getLogin()) {
            return redirect('admin/login/login');
        }
        // $data = Sc::getUserInfo();
        // var_dump(Sc::getUserInfo());

        return $next($request);
    }
}