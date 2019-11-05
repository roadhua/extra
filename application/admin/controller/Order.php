<?php
namespace app\admin\controller;

use think\Controller;
use Session;
use think\Db;

class Order extends Controller
{
    protected $middleware = [\app\http\middleware\AuthMiddleware::class];
    
    public function orderInfo()
    {

        return $this->fetch();
    }

    public function orderQuery()
    {
        
        return $this->fetch();
    }
}