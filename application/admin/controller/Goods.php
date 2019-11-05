<?php
namespace app\admin\controller;

use function PHPSTORM_META\type;
use Session,Db,Request,Config;
use think\Controller;
use data\model\User;
use data\model\Picture;
use think\File;

class Goods extends Controller
{
    // public $num = 0;
    protected $middleware = [\app\http\middleware\AuthMiddleware::class];
    //商品列表显示
    public function goodsList()
    {
        // for ($i=0; $i< 4 ;$i ++){
            // $this->num = $this->num + 1;
            // echo $this->num;
        // }
        // setcookie('88888', isset($_COOKIE['88888']) ? $_COOKIE['88888']+ 1 : 1);

        // echo $_COOKIE['88888'];

        // if (isset($_COOKIE['dec'])){
        //     setcookie('dec', $_COOKIE['dec'] + 1 );
        //     echo $_COOKIE['dec'];
        // } else{
        //     setcookie('dec', 1 );
        //     echo $_COOKIE['dec'];
        // }
        

//        $spliData = [];
//        $salt = Config::get('cus.goodsId');
//        $split = str_split('080980');
//        $spl   = count($split);
//                //通过键值获取键
//        for ($i=0;$i<$spl;$i++){
//            array_push($spliData,array_keys($salt,$split[$i]));
//                    array_keys($salt,$split[$i]);
//        }
//        var_dump($spliData);

        // if (Request::isAjax()){
        //     $page = Request::param('page');
        //     $page = $page ? $page : 1;

        //     $data = Db::name('goods')->field('id,picture,goods_name,cost,price,stock,sales,is_shelf,create_time')->page($page,5)->select();
        //     foreach ($data as &$value){
        //         $value['create_time'] = date('Y-m-d',$value['create_time']);
        //         $pic_addr = Db::name('picture')->where('id',$value['picture'])->find();
        //         $value['pic_addr'] = './static/uploads/'.$pic_addr['pic_addr'];

        //         //数据安全处理
        //         $spliData = [];
        //         $salt = Config::get('cus.goodsId');
        //         $split = str_split($value['id']);
        //         $spl   = count($split);
        //         //通过键值获取键
        //         for ($i=0;$i<$spl;$i++){
        //             array_push($spliData,array_keys($salt,$split[$i]));
        //         }

        //         //添加到id
        //         $idVale = '';
        //         $id = count($spliData);
        //         for ($i=0;$i<$id;$i++){
        //             $idVale .= strval($spliData[$i][0]);
        //         }
        //         $value['id'] = $idVale;
        //     }

        //     $dataCount = [];
        //     //获取商品总页数
        //     $dataCount['counts'] = Db::name('goods')->count();
        //     //计算一共多少页，10条数据为一页
        //     $dataCount['page']  = ceil($dataCount['counts']/5);

        //     //ar_dump($data);

        //     //$this->assign(['count' => $dataCount]);
        //     //$this->assign(['goodsData'=>$data])
        //     if ($data){
        //         return json(['state'=>true,'goodsData' => $data,'count' => $dataCount, 'page'=>$page]);
        //     }else{
        //         return json(['state'=>false,'msg' => '该页面暂无数据']);
        //     }
        // }
            
        
        return $this->fetch();
    }

    //商品列表渲染
    public function goodsLiGet()
    {
        $page = Request::param('page');    //获取分页页码

        $goods = Db::name('goods')->field('id, goods_name, picture, price, stock, sales')->page($page,5)->select();
        $count = Db::name('goods')->count();

        foreach ($goods as &$value) {
            $pic =  Db::name('picture')->where('id', $value['picture'])->find();
            $value['picture'] = './static/shopImg/'.$pic['name'];
        }

        return json([
            "code"=> 0,
            "msg"=> "",
            "count"=> $count,
            "data"=> $goods
        ]);
        // return json([
            // "code"=> 0,
            // "msg"=> "",
            // "count"=> 3000000,
            // "data"=> [
        //       [
        //         "id"=> "10001",
        //         "goods"=> "新款上衣",
        //         "price"=> "99.00",
        //         "stock"=> "65",
        //         "sales"=> "12",
        //         "isup"=> "上架",
        //       ],
        //     ]
        //     ]);
    }

    //商品数据删除
    public function deleteGoods()
    {
        if (Request::isAjax()){
            $goodsId = Request::param('goodsId');
            $salt = Config::get('cus.goodsId');

            $deleId = '';
            $result = str_split($goodsId,5);
            for ($i=0;$i<count($result);$i++){
                $deleId .= $salt[$result[$i]];
            }
            $result = Db::name('goods')->where('id',$deleId)->delete();
            if ($result){
                return json(['state'=>true,'msg'=>'删除成功','goodsId'=>$goodsId]);
            }else{
                return json(['state'=>false,'msg'=>'删除失败']);
            }
        }
    }

    //商品查询
    public function goodsSer(){
        if (Request::isAjax()){
            $goodsInfo = Request::param();
            $result = Db::name('goods')->where('goods_name','like','%'.$goodsInfo["ser_con"].'%')->select();

            if ($result){
                return json(['state'=>true,'msg'=>$result]);
            }else{
                return json(['state'=>false,'msg'=>'查询词有误']);
            }
        }
        
        return $this->fetch();
    }

    //商品添加
    public function goodsAdd()
    {
       if (Request::isAjax()){
           $data = Request::param('getData');

           //多图获取处理
           $imsLen = count($data[20]);
           $dataImgLen = '';
           for ($i=0;$i<$imsLen;$i++) {
               $dataImgLen .= $data[20][$i].',';
           }
           //数据构建
           $data = [
               "goods_name"     =>  $data[0],
               "description"    =>  $data[1],
               "category_id"    =>  $data[2].','.$data[3],
               "keywords"       =>  $data[4],
               "size"           =>  $data[5],
               "goods_brand"    =>  $data[6],
               "market_price"   =>  $data[7],
               "cost"           =>  $data[8],
               "price"          =>  $data[9],
               "stock"          =>  $data[10],
               "shipping_fee"   =>  $data[11],
               "is_shelf"       =>  $data[12],
               "is_recommend"   =>  $data[13],
               "is_host"        =>  $data[14],
               "provider"       =>  $data[15],
               "shop_clicks"    =>  $data[16],
               "like_clicks"    =>  $data[17],
               "sales"          =>  $data[18],
               "picture"        =>  $data[19],
               "img_id_array"   =>  $dataImgLen,
               "details"        =>  $data[21],
               "create_time"    =>  time()
           ];
           $row = Db::name("goods")->insert($data);
           if ($row) {
               return json(['state'=>true,'msg'=>'入库成功']);
           }
           return json(['state'=>false,'msg'=>'入库失败']);
       }

        return $this->fetch();
    }

    //商品添加分类获取
    public function goodsCate(){
        if (Request::isAjax()){
            $getCateDate = Db::name('category')->where('pid','0')->select();
            $getCateDate[]['cateTwo'] = Db::name('category')->where('pid','1')->select();
            return json([$getCateDate]);
        }
    }

    //商品二级分类获取
    public function goodsCateTwo(){
        if (Request::isAjax()){
            $cate = Request::param('cate');
            $getCateTwo = Db::name('category')->where('pid','=',$cate)->select();
            return json([$getCateTwo]);
        }
    }

    //商品主图上传
    public function imgUpload()
    {
        //获取文件
        $files = request()->file('file');
        //实列化模型
        $pic = new Picture;
        $res = $pic->upload($files);
        return json($res);
    }

    //商品回收站
    public function goodsRecycle()
    {
        return $this->fetch();
    }

    //商品供应商
    public function goodsProvide()
    {

        return $this->fetch();
    }

    //商品供应商添加
    public function provideAdd()
    {

        return $this->fetch();
    }
}