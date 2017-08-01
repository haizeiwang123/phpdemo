<?php

namespace app\common\repositories;

use app\common\model\WebMenu;
use think\Cookie;
use think\Db;

class WebMenuRepository extends Repository
{
    public function model()
    {
        return WebMenu::class;
    }

    /**
     * 获取菜单数据
     * @return array
     */
    public function getWebMenu(){

        if (!Cookie::has('web_menu')){
            $_list = $this->recursion();
            Cookie::set('web_menu', $_list);
        }
        $list = Cookie::get('web_menu');

        return $list;
    }

    /**
     * 递归菜单无限级（后台）
     * @param int $id
     * @param int $level
     * @return mixed array 无限数组
     */
    protected function recursion($id = 0, $level = 1){
        $res = Db::table('web_menu')
            ->where('tid', $id)
            ->order('sort', 'desc')
            ->select();
        foreach ($res as $k=>$v){
            $res[$k]['level']=$level;
            $res[$k]['child']=$this->recursion($v['id'],++$level);
            --$level;
        }
        return $res;
    }
}
