<?php
namespace app\admin\controller;

use think\Cache;
use think\Controller;
use think\Db;
use think\Request;
use think\Session;

class Base extends Controller
{
	//配置公共模板，以及menu
    function __construct(Request $request)
    {
        parent::__construct($request);
        $this->isLogin();
        $this->view->config('layout_on', true);
        $this->view->config('layout_name', 'layout');
        $this->assign('admin_menu', $this->setMenu());
        // $this->assign('url_path', $this->getUrlPath());
    }

    /**
     * 验证用户是否登录
     */
    protected function isLogin(){
        if (!Session::has('admin_info')){
            $this->redirect('admin/auth/login');
        }
    }

    /**
     * 从缓存取出菜单列表
     * @return mixed
     */
    public function getMenuCache(){
        if (!Cache::has('admin_menu')){
            $this->getMenu();
        }
//        $this->getMenu();
        return Cache::get('admin_menu');
    }

    /**
     * 获取菜单数据
     * @return array
     */
    protected function getMenu(){
        $list = Db::table('admin_menu')->where('show', 1)->order('sort')->select();

        $menu = [];
        foreach ($list as $key => $value) {
            if ($value['tid'] == 0){
                $menu[] = $value;
                unset($list[$key]);
            }
        }
        foreach ($menu as $key => $value) {
            foreach ($list as $_key => $_value) {
                if ($_value['tid'] == $value['id']){
                    $menu[$key]['child'][] = $_value;
                    unset($list[$_key]);
                }
            }
        }
        Cache::set('admin_menu', $menu);
        return $menu;
    }

    /**
     * 获取请求路由
     * @return string
     */
    protected function getUrlPath(){
        $routeInfo = request()->dispatch()['module'];
        $path = $routeInfo[0].'/'.$routeInfo[1];
//        dump($path);
        return $path;
    }

    /**
     * 获取菜单栏html
     * @return string
     */
    protected function setMenu(){
        $list = $this->getMenuCache();
        $url_path = $this->getUrlPath();
//dump($url_path);
        $html = '<li ';
        if($url_path == 'admin/index'){
            $html .= 'class="active"';
        }
        $html .= '><a href="'.url('admin/index/index').'"><i class="fa fa-th-large"></i> <span class="nav-label">控制台</span></a></li>';

        foreach ($list as $k => $v) {
            $in = false;
            $html .= '<li ';
            if(is_true($url_path, $v['highlight']) !== false){
                $html .= 'class="active"';
                $in = true;
            }
            $html .= '><a href="#"><i class="'.$v['icon'].'"></i> <span class="nav-label">'.$v['name'].'</span><span class="fa arrow"></span></a>';
            if(isset($v['child'])){
                if ($in){
                    $html .= '<ul class="nav nav-second-level in">';
                }else{
                    $html .= '<ul class="nav nav-second-level collapse">';
                }
                foreach ($v['child'] as $_k => $_v) {
                    $html .= ' <li ';
                    if(is_true($url_path, $_v['highlight']) !== false){
                        $html .= 'class="active"';
                    }
                    $html .= '><a href="'.url($_v['route']).'"> '.$_v['name'].'</a>';
                }
                $html .= '</ul>';
            }
            $html .= '</li>';
        }

        return $html;
    }
}
