<?php
namespace app\test\controller;

use think\Controller;
use Request;

class Index extends Controller
{
    public function index(Request $request)
    {
        return view();
    }

    public function execute(Request $request)
    {
        $arr = $request::param();// 注意这里
        $namespace  = $arr['namespace'];
        $className  = $arr['className'];
        $action     = $arr['action'];
        $param      = $arr['param'];

        // 判断 命名空间写全了  类命名空间完善
        $class = ($className == "") ? $namespace : $namespace.'\\'.$className;

        //             要提换的值  需要的结果
        $class = str_replace("/", "\\", $class);
        // 创建需要测试的类
        $service = new $class();
        // 参数的解析
        $param = ($param == "") ? [] : explode('|', $param) ;
        // 执行测试类方法
        $data = call_user_func_array([$service, $action], $param);
        // 输出
        return (is_array($data)) ? json_encode($data) : var_dump($data);
    }
}
