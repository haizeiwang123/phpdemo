<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class User extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'user';  //路由
        $this->label = '用户';

        //字典
        $this->translations = [
            'id'    =>  ['text'  =>  '#'],
            'username'    =>  ['text'  =>  '用户名'],
            'phone'         =>  ['text' => '手机号'],
            'status'        =>  [
                'text' => '状态',
                'type' => 'status',
                'label'=> [
                    -1 => ['class' => 'label label-danger', 'text' => '禁用'],
                    1 => ['class' => 'label label-info', 'text' => '启用']
                ]
            ],
            'created_at'  =>  ['text'  =>  '添加日期'],
            'updated_at'  =>  ['text'  =>  '更新日期']
        ];

        //列表页
        $this->listFields = [
            'id', 'username', 'phone', 'status','created_at', 'updated_at'
        ];

        //表单页
        $this->formFields = [
            'username', 'phone', 'status'
        ];

        $this->buttons['search'] = 1; //启用搜索
        //搜素字段
        $this->searchFields = [
            ['field' => 'username', 'type' => 'like'],
            ['field' => 'phone', 'type' => '='],
            ['field' => 'status', 'type' => '=']
        ];

        $this->moreButtons = [
            ['text' => '测试按钮1', 'class' => 'btn btn-success btn-xs', 'id' => '', 'a' => '#'],
            ['text' => '测试按钮2', 'class' => 'btn btn-info btn-xs', 'id' => '', 'a' => '#']
        ];

    }

    

}