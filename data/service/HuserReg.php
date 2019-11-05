<?php
namespace data\service;

use think\captcha\Captcha;
use think\Validate;

class HuserReg extends Validate{
    protected $rule = [
        'user'       => 'require',
        'phone'      => 'require',
        'email'      => 'require',
        'password'      => 'require',
    ];

    protected $message = [
        'user.require'     =>'您没有输入账号',
        'phone.require'    =>'您没有输入手机好',
        'email.require'    =>'您没有输入邮箱',
        'password.require' =>'您没有输入密码',
    ];
}