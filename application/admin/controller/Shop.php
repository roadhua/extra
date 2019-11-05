<?php
namespace app\admin\controller;

use think\Controller;
use Session,Request;
use think\Db;
use data\model\Picture;
use think\File;
use data\service\GetGoodsCate;

class Shop extends Controller
{

    protected $middleware = [\app\http\middleware\AuthMiddleware::class];
    
    //店铺设置
    public function setShop()
    {
        return $this->fetch();
    }

    //分类管理
    public function shopSort()
    {
        if (Request::isAjax()){
            if (Request::param('way') == 'add'){
                $tId = Request::param();
                $res = Db::name('category')
                    ->where('id', $tId['tId'])
                    ->data(['cate_name' => $tId['tTit']])
                    ->update();

                return json([$res]);
            } elseif (Request::param('way') == 'del'){
                
            }
        }
        return $this->fetch();
    }

    //后台请求分类数据
    public function goodsCate()
    {
        header('Content-type:application/text;charset=utf-8');
        $goodsReal =new GetGoodsCate;
        $TopGoodsCate = $goodsReal->getGoodsCateList(['pid'=> 0]);

        return json($TopGoodsCate);

        // var_dump($TopGoodsCate);
        
    }

    public function shopSortAdd()
    {
        return $this->fetch();
    }
    //轮播图图片操作
    public function shopChart()
    {
        if (Request::isAjax()){
            //获取文件
            $files = request()->file('file');
            //实列化模型
            // $pic = new Picture;
            // $res = $pic->upload($files);
            $info = $files->validate(['size'=>3145728,'ext'=>'jpg,png,gif'])->move('./static/banner');
            if ($info){
                //上传成功  获取文件名
                $filename = $info->getFilename();
                //获取文件保存的路径
                $savename = $info->getSaveName();
                //转换路径
                $savename = str_replace('\\','/',$savename);
                //获取上传图片的宽高
                list($width, $height) = getimagesize('./static/banner/'.$savename);
                if ($width<=1250 && $height<=380) {
                    //上传成功
                    return json(['state' => 1,'msg'=>['./static/banner/', $savename]]);
                }else{
                    //上传失败
                    return json(['state' => 0,'msg'=>'上传图片大小不符和规定']);
                }
                
            }else{
                //上传失败
                return json(['state' => 0 ,'msg'=>$files->getError()]);
            }
            // return json($res);
        } else{
            // $data = Request::param('data');
            // return $data;
        }
        $db = Db::name('banner')->select();

        $this->assign('banner',$db);
        return $this->fetch();
    }

    //轮播图更新入库
    public function shopChartAdd()
    {
        if (Request::isPost()){
            $data = Request::param();
            $chagnePic = Db::name('banner')
                ->where('id',$data['sele'])
                ->data([
                    'pic_name'  => $data['name'],
                    'pic_address' => $data['list'],
                    'pic_goods_link'=> $data['address']
                ])->update();
                if ($chagnePic) {
                    return json(['state' => 1,'msg'=>[
                        'upinfo' =>'上传成功', 
                        'pid' =>$data['sele'],
                        'srclink'=> $data['list'].$data['name'],
                        ]
                        ]);
                } else{
                    return json(['state' => 0,'msg'=>'上传失败(请勿重复提交)']);
                }
        }
    }

    //商品促销
    public function shopSales(){

        return $this->fetch();
    }
}