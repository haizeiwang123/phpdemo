<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class Tankuang extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'tankuang';  //路由(填写资源路由)
        $this->label = '弹框展示页';  //标题展示

        //字典
        $this->translations = ['id'  => ['text' => 'ID'],
            'p_name'  => ['text' => '商品名称'],
            'p_desc'  => ['text' => '商品描述',
                            'type'=>'ueditor'
                ],
            'p_pic'  => ['text' => '商品照片',
                          'type'=> 'image'
                ],
            'created_at'  => ['text' => '创建时间'],
            'updated_at'  => ['text' => '修改时间'],
            ];

        //列表页字段
        $this->listFields = [
            'id', 'p_name', 'p_desc', 'p_pic', 'created_at', 'updated_at', 
        ];

        //表单页字段
        $this->formFields = [
             'p_name','p_pic', 'p_desc'
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\Tankuang::class;
    }
}