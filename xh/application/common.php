<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
/**
 * 静态文件目录
 * @param $static_dir
 * @return string
 */
function asset($static_dir){
    return config('view_dir').$static_dir;
}
//静态缓存
function stamp($file){
	$path=ROOT_PATH.'public/'.$file;
	return "/xh/public/".$file."?tid=".filemtime($path);
}
/**
 * 匹配字符是否存在与字符串内
 * @param $path
 * @param $highlight
 * @return bool|int
 */
function is_true($path, $highlight){
    $str= $highlight;
    $needle= trim($path, '/');
    if ($needle == 'admin'){
        $needle = 'admin/index';
    }
    $pos = strpos($str, $needle);
    return $pos;
}

/**
 * 获取关联数据列表（后台使用）
 * @param $table
 * @param $where
 * @return false|PDOStatement|string|\think\Collection
 */
function get_guanlian_list($table, $where){
    return \think\Db::table($table)->where($where)->select();
}

function dd()
{
    array_map(function ($x) {
        dump($x);
    }, func_get_args());

    die(1);
}


