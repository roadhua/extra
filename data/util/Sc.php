<?php
namespace data\util;

use Session;

class Sc
{
    //登录tokey
    // CONST LOGIN_MARK_SESSION_KEY = '';
    //权限
    // CONST USER_ROLE_SESSION = '';
    //用户信息记录
    // CONST USER_INFO_SESSION = '';

    //设置用户登录token
    public function setLogin($value)
    {
        return Session::set('LOGIN_MARK_KEY', password_hash($value, 1));
    }
    //用户是否登录
    public function getLogin()
    {
        return Session::get('LOGIN_MARK_KEY');
    }

    //设置用户信息
    public function setUserInfo($value)
    {
        Session::set('USER_INFO', $value);
    }

    // 获取用户的信息
    public function getUserInfo($value = null)
    {
      return Session::get('USER_INFO');
        // return ($value) ? $userInfo[$value] : $userInfo;
    }

      //设置和获取用户的权限
    //   public function setUserRole($value)
    //   {
    //       Session::set(self::USER_ROLE_SESSION, $value);
    //   }
      // 获取用户的信息
    //   public function getUserRole()
    //   {
    //       Session::get(self::USER_ROLE_SESSION);
    //   }


      //-------------------------用户退出清空用户缓存信息
      // 退出登入
      public function clear()
      {
        Session::delete('LOGIN_MARK_KEY');
        Session::delete('USER_INFO');
        //   Session::del(self::USER_ROLE_SESSION);
      }
}