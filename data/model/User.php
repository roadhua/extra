<?php
namespace data\model;

use think\Model;
use Config,Db,Session;
use Sc,OnlyLogin;

class User extends Model
{
    private $loginWay = [
        'user',
        'phone',
        'email'
    ];
    public function dataFind($data)
    {
        $salt = Config::get('cus.secure_salt');
        // 获取加密字符串进行密码拼接
        $pass = md5($salt.$data['pass']);
        //账号验证
        foreach ($this->loginWay as $key => $value) {
            $user = User::where($value, $data['user'])->find();
            if ($user){
                break;
            }
        }

        //账号错误
        if (!$user) {
            return USER_ERROR;
        }

        //密码错误
        if (!strcmp($pass, $user->password) == 0) {
            return PASSWORD_ERROR;
        }

        //登录初始化-信息缓存
        $this->initLogin($user);
        //唯一登录
        OnlyLogin::onlyRecord($user->id);
        return SUCCESS;
    }

    public function initLogin($user)
    {
        Sc::setLogin(true);
        //缓存用户信息
        Sc::setUserInfo([
            'id'              =>  $user->id,
            'user_name'       =>  $user->user,
            'is_system'       =>  $user->is_system,
            'user_img'       =>  $user->user_img,
            'last_login_time' => $user->last_login_time,
        ]);

        //用户信息更新
        $data = [
            'user_ip'           =>  request()->ip(),
            'last_login_time'   =>  time(),
        ];
        User::where('id', $user->id)->update($data);;
    }
}