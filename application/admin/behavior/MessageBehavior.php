<?php

namespace app\admin\behavior;

use Config;

class MessageBehavior
{
    public function run()
    {
        $codes = Config::get('message.code');
        foreach ($codes as $key => $value) {
            \define($key ,$value);
        }
        // var_dump(USER_ERROR);
    }
}