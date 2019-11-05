<?php

namespace app\admin\behavior;

use think\Facade;  //facade注册
use think\Loader;  //别名代理
use Config;

class LoaderBehavior
{
    public function run()
    {
        // 通过钩子执行Facade;
       Facade::bind(Config::get('facade.facade'));
       Loader::addClassAlias(Config::get('facade.alias'));
    }
}