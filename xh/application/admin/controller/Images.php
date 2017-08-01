<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class Images extends Curd {


    public function __construct(Request $request)
    {

        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'images';  //路由(填写资源路由)
        $this->label = '图片展示';  //标题展示

        //字典
        $this->translations = [
            /*
             * 请填入数据库字段名，以及类型
             * .....
             *
             */
        
            'id'  => ['text' => '#'],
            
            'name'  => ['text' => '图片介绍'],
            
            'pic'  => [
                'text' => '图片路径',
                'type' => 'image'
            ],
            
            'pic_url'  => ['text' => '图片链接'],
            
            'sort'  => ['text' => '排序（越大越靠前）'],

            'category_id'    =>  [
                'text'  =>  '所属分类',
                'type' => 'guanlian',
                'table'=> 'image_category',
                'show_field'=> 'category_name',
                'where'=> ''
            ],
            
            'created_at'  => ['text' => '添加时间'],
            
            'updated_at'  => ['text' => '更新时间'],
            ];

        //列表页字段
        $this->listFields = [
            'id', 'name', 'pic', 'pic_url', 'sort', 'category_id', 'created_at', 'updated_at', 
        ];

        //表单页字段
        $this->formFields = [
            'name', 'pic', 'pic_url', 'sort', 'category_id',
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\Images::class;
    }

    public function getList()
    {
        $list = $this->model
            ->field('images.*, image_category.category_name as category_id')
            ->join('image_category', 'images.category_id = image_category.id', 'LEFT')
            ->where($this->where)
            ->order('images.id', 'desc')
            ->paginate($this->perPage);
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
            'category_id' => 'require'
        ];
    }
}