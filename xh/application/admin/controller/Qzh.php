<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Db;
use think\Request;

class Qzh extends Curd {


    public function __construct(Request $request)
    {

        parent::__construct($request);
        //echo 'sdfsd';die;
        $this->init();

    }
    public function init(){

        $this->route = 'qzh';  //路由(填写资源路由)

        $this->label = '我的名字';  //标题展示


        //字典
        $this->translations = [
            'id'  => ['text' => '#'],
            'name'=>['text' => '用户名称'],
            'u_age'=>[
                'text' => '用户年龄',
                'type' => 'guanlian',
                'table'=> 'choujiang',
                'show_field'=> 'user_ip',
                'where'=> ''
            ],

            'status'   =>  [
                'text' => '状态',
                'type' => 'status',
                'label'=> [
                    -1 => ['class' => 'label label-danger', 'text' => '禁用'],
                    1 => ['class' => 'label label-info', 'text' => '启用']
                ]
            ],

            'created_at'  => ['text'=>'添加日期'],
            'updated_at'  => ['text'  =>'更新日期'],
            ];

        //列表页字段
        $this->listFields = [
            'id','name','u_age','created_at','updated_at','status'
        ];


        //表单页字段
        $this->formFields = [
            'name','u_age','status'
        ];
        //开启搜索
        $this->buttons['search'] = 1;
        $this->buttons['daochu'] = 1;

        $this->searchFields=[

            ['field'=> 'u_age','type'=>'=']

        ];

        $this->moreButtons = [
            ['text' => '拒绝', 'class' => 'btn btn-success btn-xs', 'id' => '', 'a' => '#'],
            ['text' => '通过', 'class' => 'btn btn-info btn-xs', 'id' => '', 'a' => '#'],

        ];



    }

    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\Qzh::class;
    }

    public function myAge()
    {

        $arr = $this->model->field('u_age')->select();

        //dump($arr);
        return $arr;

    }




}