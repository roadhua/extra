<?php

namespace app\home\controller;

use think\Controller;
use Request, Session, Db;

class Person extends Controller
{
    // protected $middleware = [\app\http\middleware\AuthHome::class];//
    
    public function userInfo()
    {
        $logUserInfo[] =  Session::get('user_id');
        $logUserInfo[] =  Session::get('user_name');
        $numCar= Db::name('h_car')->where('user_id', $logUserInfo['0'])->sum('goods_num');   //商品数量

        $this->assign('numCar', $numCar);        //购物车数量
        $this->assign('logUserInfo', $logUserInfo);
        return $this->fetch();
    }

    public function userSet()
    {
        

        return $this->fetch();
    }

    public function address()
    {
        

        return $this->fetch();
    }

    public function userCar()
    {
        $logUserInfo[] =  Session::get('user_id');
        $logUserInfo[] =  Session::get('user_name');
        $numCar= Db::name('h_car')->where('user_id', $logUserInfo['0'])->sum('goods_num');   //购物车数量

        $getDateCar = Db::name('h_car')->where('user_id', $logUserInfo['0'])->select();
        foreach ($getDateCar as $key => $value) {
            $getDategoodsr = Db::name('goods')->field('goods_name, picture')->where('goods_number', $value['goods_serial'])->find();
            $getDateCar[$key]['goods_name'] = $getDategoodsr['goods_name'];      //商品名
            $pic = Db::name('picture')->field('name')->where('id', $getDategoodsr['picture'])->find();//
            $getDateCar[$key]['pic'] = './static/shopImg/'.$pic['name'];          //商品图
            // break;
        }
        // var_dump($getDateCar);
        $this->assign('numCar', $numCar);        //购物车数量
        $this->assign('getDateCar', $getDateCar);
        $this->assign('logUserInfo', $logUserInfo);        

        return $this->fetch();
    }

    public function order()
    {
        

        return $this->fetch();
    }
    
    public function userPass()
    {
        

        return $this->fetch();
    }

}