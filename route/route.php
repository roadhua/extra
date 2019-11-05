<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2018 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: liu21st <liu21st@gmail.com>
// +----------------------------------------------------------------------

Route::get('think', function () {
    return 'hello,ThinkPHP5!';
});

// Route::rule('login','admin/login/login');
// Route::rule('signOut','admin/login/signOut');
//Route::rule('index','admin/index/index')->middleware(app\http\middleware\Check::class);
//Route::rule('goods','admin/goods/goodslist')->middleware(app\http\middleware\Check::class);

//控制器设置中间件路由
Route::group('admin',[
    Route::rule('adminWork',        'admin/login/login'),
    Route::rule('signOut',          'admin/login/signOut'),
    Route::rule('admin',            'admin/index/index'),
    Route::rule('console',          'admin/index/console'),
    Route::rule('goodsList',        'admin/Goods/goodsList'),
    Route::rule('goodsAdd',         'admin/Goods/goodsAdd'),
    Route::rule('goodsRecycle',     'admin/Goods/goodsRecycle'),
    Route::rule('goodsProvide',     'admin/Goods/goodsProvide'),
    Route::rule('deleteGoods',      'admin/Goods/deleteGoods'),
    Route::rule('goodsSer',         'admin/Goods/goodsSer'),
    Route::rule('provideAdd',       'admin/Goods/provideAdd'),
    Route::rule('orderInfo',        'admin/Order/orderInfo'),
    Route::rule('orderQuery',       'admin/Order/orderQuery'),
    Route::rule('setShop',          'admin/Shop/setShop'),
    Route::rule('shopSort',         'admin/Shop/shopSort'),
    Route::rule('shopSortAdd',      'admin/Shop/shopSortAdd'),
    Route::rule('shopChart',        'admin/Shop/shopChart'),
    Route::rule('shopChartAdd',     'admin/Shop/shopChartAdd'),
    Route::rule('shopSales',        'admin/Shop/shopSales'),
    Route::rule('goodsCate',        'admin/Shop/goodsCate'),
    Route::rule('adminInfo',        'admin/Manage/adminInfo'),
    Route::rule('adminInfoAdd',     'admin/Manage/adminInfoAdd'),
    Route::rule('adminUser',        'admin/Manage/adminUser'),
    Route::rule('adminRole',        'admin/Manage/adminRole'),
    Route::rule('goodsLiGet',        'admin/Goods/goodsLiGet'),
    
]);
Route::group('home',[
        Route::rule('index',             'home/index/index'),
        Route::rule('memberLogin',       'home/Login/uLogin'),
        Route::rule('memberRegister',    'home/Login/memberRegister'),
        Route::rule('itemInfo',          'home/Index/itemInfo'),
        Route::rule('table',             'home/Index/table'),
        Route::rule('userInfo',          'home/Person/userInfo'),
        Route::rule('userSet',           'home/Person/userSet'),
        Route::rule('address',           'home/Person/address'),
        Route::rule('userCar',           'home/Person/userCar'),
        Route::rule('order',             'home/Person/order'),
        Route::rule('userPass',          'home/Person/userPass'),
        Route::rule('emailReg',          'home/Login/emailReg'),
        Route::rule('userOut',           'home/Index/userOut'),
        Route::rule('shopCar',           'home/Item/shopCar'),
        Route::rule('carDecInc',         'home/Item/carDecInc'),
        Route::rule('deleShop',          'home/Item/deleShop'),
    ]);
// Route::miss('admin/login/login');
return [

];