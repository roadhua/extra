<?php

namespace app\home\controller;

use think\Controller;
use Request, Session, Db;

class Item extends Controller
{
    // protected $middleware = [\app\http\middleware\AuthHome::class];//
    
   public function shopCar()
   {
       $user_id = Session::get('user_id');    //获取用户id

       if (Request::isAjax()) {
            if (!$user_id) {
                return json(['state'=>-1, 'msg'=> '登录后可加入购物车']);
                exit();
            }

            $goodsData = Request::param();

            $price = Db::name('goods')->field('price')->where('goods_number', $goodsData['goodsIdNum'])->find();//获取商品的单价，以防数据被篡改
            $total = floatval($price['price']) * floatval($goodsData['goodsNum']);     //总价计算

            $isCar = Db::name('h_car')->where('goods_serial', $goodsData['goodsIdNum'])->where('goods_size', strval($goodsData['goodsSize']))->find();   //查询是否已有数据
            if ($isCar) {    //判断该商品是否已经在购物车
                $isHava = Db::name('h_car')->where('goods_serial', $goodsData['goodsIdNum'])->where('goods_size', strval($goodsData['goodsSize']))->setInc('goods_num', $goodsData['goodsNum']);
                if ($isHava) {
                    return json(['state'=>1, 'msg'=> '加入成功', 'numCar'=> Db::name('h_car')->where('user_id', $user_id)->sum('goods_num')]);
                }
            }

            // // //构建添加数据s
            $data = [
                'user_id'      => $user_id,
                'goods_serial' => $goodsData['goodsIdNum'],
                'unit_price'   => $price['price'],
                'goods_size'   => $goodsData['goodsSize'],
                'goods_num'    => $goodsData['goodsNum'],
                'total'        => $total
            ];

            $insCar = Db::name('h_car')->insert($data);
            if ($insCar) {
                return json(['state'=>1, 'msg'=> '加入成功', 'numCar'=> Db::name('h_car')->where('user_id', $user_id)->sum('goods_num')]);
            } else{
                return json(['state'=>-1, 'msg'=> '加入失败']);
            }
            
       }
   }

   //购物车商品加减操作
   public function carDecInc()
   {

   }

   //删除商品
   public function deleShop()
   {
       if(Request::isAjax()) {
            $dataId = Request::param('userId');
            $res = Db::name('h_car')->where('id', $dataId)->delete();
            if ($res) {
                return json(['state'=>1, 'msg'=>'删除成功']);
            } else{
                return json(['state'=>-1, 'msg'=>'删除失败']);
            }
       }
   }
}