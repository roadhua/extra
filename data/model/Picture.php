<?php
/**
 * Created by PhpStorm.
 * User: 13664
 * Date: 2019/5/21
 * Time: 21:11
 */

namespace data\model;

use think\Model;
use Db,Request;

class Picture extends Model{
    public function upload($file)
    {
//        foreach ($file as $files){
            //获取文件名
            $info = $file->validate(['size'=>3145728,'ext'=>'jpg,png,gif'])->move('./static/banner');
            if ($info){
                //上传成功  获取文件名
                $filename = $info->getFilename();
                //获取文件保存的路径
                $savename = $info->getSaveName();
                //转换路径
                $savename = str_replace('\\','/',$savename);

                //写入商品表
                $picture = self::create([
                    'name'       =>  $filename,
                    'pic_addr'   =>  $savename,
                    'upload_time'=> time(),
                ]);

                $pic_id = $picture->id;
                return [
                    'fileId'   =>  $pic_id,
                    'filename' =>  $picture->name,
                    'fileSave' =>  'uploads/'.$savename,
                    'state'    =>   true,
                ];
            }else{
                //上传失败
                return ['state' => false,'msg'=>$file->getError()];
            }
        }

//    }

}