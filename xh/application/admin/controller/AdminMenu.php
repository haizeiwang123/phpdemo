<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Cache;
use think\Cookie;
use think\Request;

class AdminMenu extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'admin_menu';  //路由
        $this->label = '后台菜单';
//        $this->buttons['delete'] = 0;
        $this->views['index'] = 'admin@Menu/index';

        //字典
        $this->translations = [
            'id'    =>  ['text'  =>  '#'],
            'name'  =>  ['text'  =>  '菜单名'],
            'tid'   =>  [
                'text' => '上级',
                'type' => 'guanlian',
                'table'=> 'admin_menu',
                'show_field'=> 'name',
                'where'=> 'tid = 0'
            ],
            'route'  =>  ['text'  =>  '链接'],
            'sort'  =>  ['text'  =>  '排序'],
            'highlight'  =>  ['text'  =>  '高亮菜单'],
            'icon'  =>  ['text'  =>  '图标'],
            'created_at'  =>  ['text'  =>  '添加日期']
        ];

        //列表页
        $this->listFields = [
            'id', 'name', 'route', 'sort', 'icon', 'created_at'
        ];

        //表单页
        $this->formFields = [
            'name', 'route', 'tid', 'sort', 'highlight', 'icon'
        ];

    }

    public function model()
    {
        return \app\common\model\AdminMenu::class;
    }

    /**
     * 重写列表页
     * @return array
     */
    public function getList()
    {
        $list = $this->getMenuCache();

        return $list;
    }

    /**
     * 重写验证规则
     * @return array
     */
    public function getValidateRule()
    {
        return [
            'name' => 'require',
            'sort' => 'require',
            'highlight' => 'require'
        ];
    }

    public function save(Request $request)
    {
        Cache::rm('admin_menu');
        return parent::save($request);
    }

    /**
     * 重写更新，清除缓存
     * @param Request $request
     * @param $id
     * @return array
     */
    public function update(Request $request, $id)
    {
        Cache::rm('admin_menu');
        return parent::update($request, $id);
    }

    /**
     * 重新删除，清除缓存
     * @param $id
     * @return array
     */
    public function delete($id)
    {
        Cache::rm('admin_menu');
        return parent::delete($id);
    }

}