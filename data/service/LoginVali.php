<?php
namespace data\service;

use think\captcha\Captcha;
use think\Validate;

class LoginVali extends Validate{
    protected $rule = [
        'ver'       => 'checkVer',
        'user'      => 'require',
        'pass'      => 'require',
    ];

    protected $message = [
        'user.require' =>'您没有输入账号',
        'pass.require' =>'您没有输入密码',
    ];

    protected function checkVer($value, $rule, $data=[]){
        //验证码进行验证
        $captcha = new Captcha;
        return $captcha->check($value) ? true : '！注意:验证码错误';
    }
}