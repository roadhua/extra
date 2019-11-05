<?php
namespace data\service;
use Db;

class GetGoodsCate
{
    public function getGoodsCateList($data)
    {
        $cateData = Db::name('category')->where($data)->select();
        $array = array();
        foreach ($cateData as $value){
           $cateDataChilren = Db::name('category')->where(['pid'=>$value['id']])->select();
           $cateDataChilren ? $cateDataChilren : '';
           $arrChilen = array();
           foreach ($cateDataChilren as $values){
                $arrChilens = array(
                    'id'   => $values['id'],
                    'title'=> $values['cate_name'],
                    'pid'  => $values['pid'],
                );
                array_push($arrChilen,$arrChilens);
           }
           
            $arrPush = array(
                'id'   => $value['id'],
                'title'=> $value['cate_name'],
                'pid'  => $value['pid'],
                'children' => $arrChilen,
            );
            array_push($array,$arrPush);
        }

        return $array;
    }
}