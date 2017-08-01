<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use app\common\repositories\WebMenuRepository;
use think\Cache;
use think\Cookie;
use think\Db;
use think\Request;

class WebMenu extends Curd {


    protected $webMenuRepository;

    public function __construct(Request $request, WebMenuRepository $webMenuRepository)
    {
        parent::__construct($request);
        $this->webMenuRepository = $webMenuRepository;
        $this->init();

    }
    public function init(){

        $this->route = 'web_menu';  //路由(填写资源路由)
        $this->label = '前台菜单';  //标题展示
        $this->views['index'] = 'admin@WebMenu/index';

        //字典
        $this->translations = ['id'  => ['text' => '#'],
            'name'  => ['text' => '菜单名'],
            'sort'  => ['text' => '排序'],
            'url'  => ['text' => '链接'],
            'icon'  => [
                'text' => '图标',
                'type' => 'image'
            ],
            'tid'  => [
                'text' => '上级菜单',
                'type' => 'select',
                'data' => $this->getSelectData(),
            ],
            'created_at'  => ['text' => '添加时间'],
            'updated_at'  => ['text' => '更新时间'],
        ];

        //表单页字段
        $this->formFields = [
            'name', 'sort', 'url', 'tid'
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\WebMenu::class;
    }
    /**
     * 重写列表数据
     * @return array
     */
    public function getList()
    {
        return $this->webMenuRepository->getWebMenu();
    }

    /**
     * 获取select框
     */
    protected function getSelectData(){
        $_list = $this->webMenuRepository->getWebMenu();
        $_select_data = '';

        $tid = 0;  //分类id
        $id = '';
        if (!empty(request()->routeInfo()['var']['id'])){
            $id = request()->routeInfo()['var']['id']; //获取菜单id
            $category_id = $this->model->where('id', $id)->value('tid');
            if ($category_id){
                $tid = $category_id;
            }
        }

        $this->getWebMenuList($_list, $_select_data, $id, $tid);

        return $_select_data;
    }
    /**
     * 递归展示的一维数组（后台）
     * @param string $data 数据
     * @param string $show 数据处理结果集
     * @param string $nid 禁选id（自己以及所有下级禁选）
     * @param int $tid 上级菜单
     * @param bool $select 是否选中
     * @return array
     */
    protected function getWebMenuList($data, &$show, $nid = '', $tid = 0, $select = true){
        foreach ($data as $k => $v){
            if ($nid != ''){
                if ($v['id'] == $nid) {
                    $select = false;
                }
            }
            $selected = '';
            $readonly = '';
            $text = '';
            if ($v['id'] == $tid) $selected = 'selected';
            if (!$select) {
                $readonly = 'disabled';
                $text = '(禁选)';
            }
            $show[] = '<option value="'.$v['id'].'" '.$selected.' '.$readonly.'>'.str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;├─ ',  $v['level']-1).''.$v['name'].$text.'</option>';

            if(count($v['child']) > 0){
                $this->getWebMenuList($v['child'], $show, $nid, $tid, $select);
            }
            $select = true;
        }
        return $show;
    }

    public function save(Request $request)
    {
        Cache::rm('web_menu');
        return parent::save($request);
    }
    public function update(Request $request, $id)
    {
        Cache::rm('web_menu');
        return parent::update($request, $id);
    }
    public function delete($id)
    {
        Cache::rm('web_menu');
        return parent::delete($id);
    }
}