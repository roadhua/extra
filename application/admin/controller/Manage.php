<?php
namespace app\admin\controller;

use think\Controller;
use Session;
use think\Db;

class Manage extends Controller
{
    protected $middleware = [\app\http\middleware\AuthMiddleware::class];

    //管理员
    public function adminInfo()
    {

        return $this->fetch();
    }

    // 管理员添加
    public function adminInfoAdd()
    {

        return $this->fetch();
    }

    //用户
    public function adminUser()
    {

        return $this->fetch();
    }

    //角色设计
    public function adminRole()
    {

        return $this->fetch();
    }
}