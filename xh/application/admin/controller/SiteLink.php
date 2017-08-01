<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class SiteLink extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'site_link';  //路由(填写资源路由)
        $this->label = '友情链接';  //标题展示

        //字典
        $this->translations = [
            'id'  => ['text' => '#'],
            'site_name'  => ['text' => '网站名称'],
            'site_icon'  => [
                'text' => '网站图标',
                'type' => 'image'
            ],
            'site_link'  => ['text' => '网站链接'],
            'status'  => [
                'text' => '状态',
                'type' => 'status',
                'label'=> [
                    -1 => ['class' => 'label label-danger', 'text' => '隐藏'],
                    1 => ['class' => 'label label-info', 'text' => '启用']
                ]
            ],
            'created_at'  => ['text' => '添加时间'],
            'updated_at'  => ['text' => '更新时间'],
            ];

        //列表页字段
        $this->listFields = [
            'id', 'site_name', 'site_icon', 'site_link', 'status', 'created_at', 'updated_at', 
        ];

        //表单页字段
        $this->formFields = [
            'site_name', 'site_icon', 'site_link', 'status'
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\SiteLink::class;
    }
}