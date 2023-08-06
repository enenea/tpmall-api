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
use think\facade\Route;
use thans\jwt\middleware\JWTAuthAndRefresh as jwt;

// Route::get('think', function () {
//     return 'hello,ThinkPHP6!';
// });


// 示例
Route::get('/', "Index/haha");

Route::group('/Home', function(){

  Route::post('',"Home/index");

  Route::post("/getgoods","Home/getGoods");

});

Route::group("/Goods", function(){

  Route::post("/detail", "Goods/detail");

});

Route::group("/Profile", function(){

  Route::post("/", "Profile/index")->middleware(jwt::class);

  Route::post("/login", "Profile/login");

  Route::post("/logout", "Profile/logout")->middleware(jwt::class);

  Route::post("/register", "Profile/register");

});