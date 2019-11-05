<?php

namespace app\home\controller;

use think\Controller;
use Request, Cookie, Config, Db, Session;
use data\service\Email;
use data\service\HuserReg;

class Login extends Controller
{

    private $loginWay = [
        'user',
        'phone',
        'email'
    ];
    // protected $middleware = [\app\http\middleware\AuthHome::class];
    // 用户登录
    public function uLogin()
    {
        $logUserInfo[] =  Session::get('user_id');
        $logUserInfo[] =  Session::get('user_name');
        if (Request::isAjax()) {
            $userData = Request::param();
            $salt = Config::get('cus.secure_salt');    //获取加密字符串
            foreach($this->loginWay as $key => $value) {        //账号验证
                $user = Db::name('h_user')->where($value, $userData['user'])->find();
                if ($user) {
                    break;
                }
            }

            if (!$user) {
                return json(['state'=>-1, 'msg'=> '用户不存在']);
            }

            if (!strcmp( md5($userData['pass'].$salt), $user['password']) == 0) {
                return json(['state'=>-1, 'msg'=> '密码错误']);
            }
            
            Session::set('user_id', $user['id']);
            Session::set('user_name', $user['user']);
            
            return json(['state'=>1, 'msg'=> '登录成功']);
        }

        $this->assign('logUserInfo', $logUserInfo);
        return $this->fetch();
    }

    //用户注册
    public function memberRegister()
    {
        $logUserInfo[] =  Session::get('user_id');
        $logUserInfo[] =  Session::get('user_name');
        if (Request::isAjax()) {
            $userInfo = Request::param();
            if (Cookie::get('regCode') !== $userInfo['vercode']){
                return json(['state'=>0, 'msg'=>'验证码错误']);
                exit();
            }
            $HuserReg = new HuserReg; 
            if ($HuserReg->check($userInfo)) {    //数据验证是否为空
                // 判断该邮箱用户是否已存在
                $ifEmail = Db::name('h_user')->where('email', $userInfo['email'])->find();
                if ($ifEmail) {
                    return json(['state'=>-1, 'msg'=>'该邮箱用户已存在']);
                    exit();
                }
                // 判断该手机号是否已存在
                $ifphone = Db::name('h_user')->where('phone', $userInfo['phone'])->find();
                if ($ifphone) {
                    return json(['state'=>-1, 'msg'=>'该手机号已存在']);
                    exit();
                }

                $salt = Config::get('cus.secure_salt');     //获取盐值
                // 构建用户注册信息
                $userInfo = [
                    'user'=>$userInfo['user']
                    ,'phone'=>$userInfo['phone']
                    ,'email'=>$userInfo['email']
                    ,'password'=> md5($userInfo['password'].$salt)
                ];
                $res = Db::name('h_user')->insertGetId($userInfo);
                if ($res) {
                    Session::set('user_id', $res);
                    Session::set('user_name', $userInfo['user']);
                    return json(['state'=>1, 'msg'=>'注册成功']);
                } else{

                    return json(['state'=>1, 'msg'=>'注册失败']);
                }
            } else{
                return json(['status'=>-1,'msg'=>$HuserReg->getError()]);
            }

           
        }
        $this->assign('logUserInfo', $logUserInfo);
        return $this->fetch();
    }

    //邮箱发送
    public function emailReg()
    {
        if (Request::isAjax()) {
            $emailData = Request::param();     //参数获取
            // return $emailData['email'];
            $emailClass = new Email;       //实列化邮箱类
            $emailClass->email($emailData['email']);     //方法调用
        }
    }

}