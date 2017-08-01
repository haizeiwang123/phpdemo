<?php

use think\Route;

Route::group('admin',function(){
    Route::resource('admin_menu', 'admin/admin_menu'); //后台菜单
    Route::resource('article_category', 'admin/article_category');  //文章分类
    Route::resource('articles', 'admin/articles');  //文章
    Route::resource('sys_article', 'admin/sys_article');  //系统文章
    Route::resource('user', 'admin/user');  //用户
    Route::resource('image_category', 'admin/image_category'); //图片分类
    Route::resource('images', 'admin/images');  //图片
    Route::resource('admin_login_logs', 'admin/admin_login_logs'); //登录日志
    Route::resource('site_link', 'admin/site_link'); //友情链接
    Route::resource('web_menu', 'admin/web_menu'); //web前台菜单
    Route::resource('qzh', 'admin/qzh'); //个人链接
    Route::resource('tankuang', 'admin/tankuang'); //商品弹窗显示
	Route::resource('people', 'admin/people'); //商品弹窗显示
});
