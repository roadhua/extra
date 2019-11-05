<?php
namespace app\admin\controller;

use think\Controller;
use Request,Db,Session;
use think\captcha\Captcha;
use data\service\LoginVali;
use data\model\User as UserModel;    //如果引入失败，查看是否命名问题
use data\service\TestService;
use Sc;

class Login extends Controller
{
    /**
     * 控制器中间件
     */
    // 只对当前Login控制器生效
    // protected $middleware = [\app\http\middleware\AuthMiddleware::class];
    protected $middleware = [
        // 'AuthMiddleware' => ['except' => ['login','ver']]
        // '\app\admin\http\middleware\AuthMiddleware::class'
    ];
   
    // protected $middleware = [
    //     'auth'  =>   ['except' => 'login']
    // ]; 

    // const用于类成员变量的定义，一经定义，不可修改。Define不可以用于类成员变量的定义，可用于全局常量。

    public function login()
    {   
        if (Request::isPost()){
            $data = Request::param();
            //实列化验证类
            $LoginData = new LoginVali;
            if ($LoginData->check($data)){
                //实列化模型
                $userVali = new UserModel;
                // $res = $userVali->dataFind($data);
                // return $res;
                return ajaxReturn($userVali->dataFind($data));
            }else{
                return json(['status'=>-1,'msg'=>$LoginData->getError(),'ver'=>$this->ver()]);
            }
        }
        // return  dirname($_SERVER['SERVER_NAME']).'\\public/';
        $data = new TestService;
        // return $data->index();
        return view('login');
    }
    
    // public function test()
    // {
        
    //     return  request()->ip();
    // }

    /**
     * @route('ver','get')
     */
    public function ver(){
        //验证码配置
        $config = [
            'codeSet'  => 'utf8',
            'fontSize' => 50,
            'length'   => 4,
            'useNoise' => true,
            'codeSet'  => '0123456789'
        ];
        $captcha = new Captcha($config);
        return $captcha->entry();
    }

    //退出系统
    public function signOut(){
        // $id = Session::get('user_id');
        // $loginTime = Session::get('loginTime');
        // Db::name('user')->where('id', $id)->update(['add_time'=>$loginTime]);

        // Session::delete('user_id');
        // return redirect('admin/login/login');
        Sc::clear();
        return redirect('admin/login/login');
    }
}