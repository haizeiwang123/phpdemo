<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class ImageCategory extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'image_category';  //路由(填写资源路由)
        $this->label = '';  //标题展示

        //字典
        $this->translations = [
            /*
             * 请填入数据库字段名，以及类型
             * .....
             *
             */
        
            'id'  => ['text' => '#'],
            
            'category_name'  => ['text' => '分类名'],
            
            'created_at'  => ['text' => '添加时间'],
            
            'updated_at'  => ['text' => '更新时间'],
            ];

        //列表页字段
        $this->listFields = [
            'id', 'category_name', 'created_at', 'updated_at', 
        ];

        //表单页字段
        $this->formFields = [
            'category_name'
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\ImageCategory::class;
    }
}