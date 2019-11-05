<?php

namespace app\home\controller;

use think\Controller;
use Request, Db, Session;
use data\service\GetGoodsCate;

class Index extends Controller
{
    public function index()
    {
        $logUserInfo[] =  Session::get('user_id');
        $logUserInfo[] =  Session::get('user_name');

        $numCar= Db::name('h_car')->where('user_id', $logUserInfo['0'])->sum('goods_num');   //商品数量
        $bann = Db::name('banner')->select();     // 轮播图渲染
        
        header('Content-type:application/text;charset=utf-8');
        $goodsReal =new GetGoodsCate;             //分类渲染
        $TopGoodsCate = $goodsReal->getGoodsCateList(['pid'=> 0]);

        //热销推荐
        $goodshole = Db::name('goods')->where('is_host',1)->field('goods_name,market_price,price,cost,picture,goods_number')->select();
        foreach ($goodshole as &$value ) {
            $pic = Db::name('picture')->where('id',$value['picture'])->find();
            $value['pic'] = './static/shopImg/'.$pic['name'];
        }
        //本店新品
        $goodNew = Db::name('goods')->where('is_new',1)->field('goods_name,market_price,price,cost,picture,goods_number')->select();
        foreach ($goodNew as &$value ) {
            $pic = Db::name('picture')->where('id',$value['picture'])->find();
            $value['pic'] = './static/shopImg/'.$pic['name'];
        }

        //更多推荐
        $goodMore = Db::name('goods')->where('is_more',1)->field('goods_name,market_price,price,cost,picture,goods_number')->select();
        foreach ($goodMore as &$value ) {
            $pic = Db::name('picture')->where('id',$value['picture'])->find();
            $value['pic'] = './static/shopImg/'.$pic['name'];
        }

        $this->assign('numCar', $numCar);        //购物车数量
        $this->assign('logUserInfo', $logUserInfo);    //用户登录信息
        $this->assign('goodMore', $goodMore);    //本店新品
        $this->assign('goodNew', $goodNew);    //本店新品
        $this->assign('goodshole', $goodshole);    //热销部分
        $this->assign('TopGoodsCate', $TopGoodsCate);    //商品分类
        $this->assign('bann',$bann);     //轮播图
        return $this->fetch();
    }

    public function itemInfo()
    {
        $logUserInfo[] =  Session::get('user_id');
        $logUserInfo[] =  Session::get('user_name');

        $numCar= Db::name('h_car')->where('user_id', $logUserInfo['0'])->sum('goods_num');   //商品数量
        $goodsReal =new GetGoodsCate;            
        $TopGoodsCate = $goodsReal->getGoodsCateList(['pid'=> 0]);      // 导航渲染
        
        $getGoodsInfo = Request::param('goods_num');
        if ($getGoodsInfo) {
            $infoGoods = Db::name('goods')->where('goods_number',$getGoodsInfo)->field('goods_name, price, picture, more_style, img_id_array, stock, size, goods_number')->find();
            
            $pic = Db::name('picture')->where('id',$infoGoods['picture'])->find();
            $infoGoods['pic'] = './static/shopImg/'.$pic['name'];     //商品主图

            $infoPicf = explode(",", $infoGoods['img_id_array']);      //商品主图(小轮播图区)
            $infoGoods['size'] = explode(',',$infoGoods['size']);

            foreach ($infoPicf as $value) {
               $resPic = Db::name('picture')->where('id',$value)->field('name')->find();
               $infoGoods['arrImg'][] = './static/shopImg/'.$resPic['name'];
            }

            //商品多款选择
            $infoGoodsMore = explode(',', $infoGoods['more_style']);
            foreach ($infoGoodsMore as $value) {
                $goodsFu = Db::name('goods')->field('picture, goods_number')->where('id',$value)->find();    //查询该商品的图片id和商品id
                $twoPic = Db::name('picture')->where('id',$goodsFu['picture'])->field('name')->find();       //主图二级查询
                $goodsFu['picture'] = './static/shopImg/'.$twoPic['name'];
                $infoGoods['more_style_goods'][] = $goodsFu;
            }

            $this->assign('numCar', $numCar);        //购物车数量
            $this->assign('logUserInfo', $logUserInfo);
            $this->assign('infoGoods', $infoGoods);
            $this->assign('TopGoodsCate', $TopGoodsCate);
            return $this->fetch();
        }
        return redirect('home/index/index');
    }

    //用户退出
    public function userOut()
    {
        Session::delete('user_id');
        Session::delete('user_name');
        $this->success('退出成功', 'home/Index/index');
    }


    //测试模块
    public function table() 
    {
        header("Content-type:text/html;charset=utf-8");
        // $data = json([
        //     "code"=> 0,
        //     "msg"=> "",
        //     "count"=> 1000,
        //     "data"=> [
        //         [
        //             "id"=> 10000,
        //             "username"=> "user-0",
        //             "experience"=> 83641,
        //             "phone"=> "15915845254",
        //             "email"=> "1366430517@qq.com",
        //             "sex"=> "女",
        //             "ip"=> '129.12.4.5',
        //             "regTime"=> 82830700,
        //         ],
        //         ]
        //     ]);

        $data = json(
            ["msg"=>"true","code"=>0,"data"=>[["permissionId"=>1,"permissionName"=>"系统管理","permissionUrl"=>null,"permissionType"=>null,"icon"=>null,"pid"=>0,"seq"=>0,"resType"=>"0"],["permissionId"=>2,"permissionName"=>"账户管理","permissionUrl"=>"/link/sysUsers","permissionType"=>"管理登录的账户","icon"=>null,"pid"=>1,"seq"=>1,"resType"=>"1"],["permissionId"=>3,"permissionName"=>"部门管理","permissionUrl"=>"/link/deparAdministrate","permissionType"=>"部门的管理","icon"=>null,"pid"=>1,"seq"=>2,"resType"=>"1"],["permissionId"=>4,"permissionName"=>"角色管理","permissionUrl"=>"/link/sysRoleManage","permissionType"=>"设定角色的权限","icon"=>null,"pid"=>1,"seq"=>3,"resType"=>"1"],["permissionId"=>5,"permissionName"=>"权限管理","permissionUrl"=>"/link/sysPermission","permissionType"=>"对权限进行编辑","icon"=>null,"pid"=>1,"seq"=>4,"resType"=>"1"],["permissionId"=>6,"permissionName"=>"系统日志","permissionUrl"=>"/link/sysLog","permissionType"=>"系统日志","icon"=>null,"pid"=>1,"seq"=>5,"resType"=>"1"]],"count"=>6]
        );    
        // $obj = {"code":0,"msg":"","count":1000,"data":[{"id":10000,"username":"user-0","sex":"女","city":"城市-0","sign":"签名-0","experience":83641,"logins":24,"wealth":82830700,"classify":"作家","score":57},{"id":10001,"username":"user-1","sex":"男","city":"城市-1","sign":"签名-1","experience":884,"logins":58,"wealth":64928690,"classify":"词人","score":27},{"id":10002,"username":"user-2","sex":"女","city":"城市-2","sign":"签名-2","experience":650,"logins":77,"wealth":6298078,"classify":"酱油","score":31},{"id":10003,"username":"user-3","sex":"女","city":"城市-3","sign":"签名-3","experience":362,"logins":157,"wealth":37117017,"classify":"诗人","score":68},{"id":10004,"username":"user-4","sex":"男","city":"城市-4","sign":"签名-4","experience":807,"logins":51,"wealth":76263262,"classify":"作家","score":6},{"id":10005,"username":"user-5","sex":"女","city":"城市-5","sign":"签名-5","experience":173,"logins":68,"wealth":60344147,"classify":"作家","score":87},{"id":10006,"username":"user-6","sex":"女","city":"城市-6","sign":"签名-6","experience":982,"logins":37,"wealth":57768166,"classify":"作家","score":34},{"id":10007,"username":"user-7","sex":"男","city":"城市-7","sign":"签名-7","experience":727,"logins":150,"wealth":82030578,"classify":"作家","score":28},{"id":10008,"username":"user-8","sex":"男","city":"城市-8","sign":"签名-8","experience":951,"logins":133,"wealth":16503371,"classify":"词人","score":14},{"id":10009,"username":"user-9","sex":"女","city":"城市-9","sign":"签名-9","experience":484,"logins":25,"wealth":86801934,"classify":"词人","score":75}]};
        
        // echo '<pre>';
        // var_dump($data);
        return $data;
        // $logUserInfo[] =  Session::get('user_id');
        // $logUserInfo[] =  Session::get('user_name');
        // var_dump($logUserInfo);
    }
}

