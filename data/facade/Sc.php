<?php

namespace data\facade;

use think\Facade;

class Sc extends Facade
{
    /**
     * 获取当前Facade对应类名（或者已经绑定的容器对象标识）
     * @access protected
     * @return string
     */

    protected static function getFacadeClass()
    {
        // return 'data\util\Sc';
    }
}
