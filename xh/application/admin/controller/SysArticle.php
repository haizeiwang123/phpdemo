<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class SysArticle extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'sys_article';  //路由
        $this->buttons['delete'] = 0;
        $this->label = '文章';

        //字典
        $this->translations = [
            'id'    =>  ['text'  =>  '#'],
            'title'    =>  ['text'  =>  '模块'],
            'content'  =>  [
                'text'  =>  '内容',
                'type'  => 'ueditor'
            ],
            'created_at'  =>  ['text'  =>  '添加日期'],
            'updated_at'  =>  ['text'  =>  '更新日期']
        ];

        //列表页
        $this->listFields = [
            'id', 'title', 'created_at', 'updated_at'
        ];

        //表单页
        $this->formFields = [
            'title', 'content'
        ];

    }

    public function model()
    {
        return \app\common\model\SysArticle::class;
    }


}