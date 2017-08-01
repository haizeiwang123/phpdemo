<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class Guest extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'guest';  //路由(填写资源路由)
        $this->label = '留言反馈';  //标题展示
        $this->buttons['create'] = 0;
        $this->buttons['edit'] = 0;

        //字典
        $this->translations = [
            'id'  => ['text' => '#'],
            'content'  => ['text' => '内容'],
            'phone'  => ['text' => '联系手机号'],
            'created_at'  => ['text' => '留言时间'],
            ];

        //列表页字段
        $this->listFields = [
            'id', 'phone', 'content', 'created_at',
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\Guest::class;
    }
}