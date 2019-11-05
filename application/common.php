<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
function ajaxReturn($code, $data=[])
{
    $result = ['status'=>$code, 'msg'=>getMessage($code)];
    $result = (!empty($data)) ? $result['data'] = $data : $result;
    return $result;
}

function getMessage($code)
{
    $info  = Config::get('message.info');
    return (array_key_exists($code,$info)) ? $info[$code] : '操作失败';
}