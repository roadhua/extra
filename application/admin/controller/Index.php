<?php
namespace app\admin\controller;

use think\Controller;
use Session;
use think\Db;
use Sc;

class Index extends Controller
{

    protected $middleware = [\app\http\middleware\AuthMiddleware::class];
    
    //验证登录信息
    public function getLoginInfo(){
        // $uid = Session::get('user_id');

    }

    public function index()
    {
       //获取用户信息
        $user_info = Sc::getUserInfo();        
        $this->assign([
            'uid'            =>   $user_info['id'],
            'user_name'      => $user_info['user_name'],
            'is_system'      => $user_info['is_system'],
            'user_img'       => $user_info['user_img'],
            'last_login_time'=> $user_info['last_login_time']
        ]);        
        
        return $this->fetch();
    }
    public function console()
    {


        
        return $this->fetch();
    }
}