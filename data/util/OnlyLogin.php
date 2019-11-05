<?php
namespace data\util;

use Cache,Cookie,Sc;

/**
 * 
 */

 class OnlyLogin
 {
    public function onlyCheck()
    {
        // 获取客户端唯一标识
        $cookieToken = Cookie::get('TOKEN'.Sc::getUserInfo()['id']);
        //获取服务端唯一标识
        $cacheToken = Cache::get('TOKEN'.Sc::getUserInfo()['id']);

        if (empty($cookieToken) || empty($cacheToken)) {
            return true;
        }

        //异地登录
        if($cookieToken != $cacheToken) {
            return false;
        }

        return true;
    }

    public function onlyRecord($user_id)
    {
        $token = $this->createToken($user_id);
        
        Cookie::set('TOKEN'.$user_id, $token);
        Cache::set('TOKEN'.$user_id, $token);
    }

    /**
     * 生成唯一标识
     */
    public function createToken($user_id)
    {
        $time = time();
        $nonce = mt_rand(10, 1000);
        $array = array($time, $nonce, 'ONLY_USER_TOKEN', $user_id);
        sort($array);
        $token = implode($array);
        return sha1($token);
    }
 }