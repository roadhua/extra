<?php
return [
    'facade'  =>   [
        \data\facade\Sc::class  =>  \data\util\Sc::class,
        \data\facade\OnlyLogin::class  =>  \data\util\OnlyLogin::class,
    ],
    'alias'   =>   [
        'Sc'  =>  \data\facade\Sc::class,
        'OnlyLogin'  =>  \data\facade\OnlyLogin::class,
    ]
];