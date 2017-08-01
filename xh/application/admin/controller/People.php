<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class People extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'people';  //路由(填写资源路由)
        $this->label = '我的分类';  //标题展示
        $this->views['index'] = 'admin@People/index';
        //字典
        $this->translations = ['name'  => ['text' => '名字'],
            'password'  => ['text' => '密码'],
            'id'  => ['text' => 'id'],
            ];

        //列表页字段
        $this->listFields = [
            'name', 'password', 'id', 
        ];

        //表单页字段
        $this->formFields = [
            'name', 'password', 'id', 
        ];

    }
	/**
     * 验证规则
     */
    protected function getValidateRule(){
        $rule = [];
        foreach ($this->formFields as $item){
            $rule[$item] = ['require','min'=>3];
		}
		$rule['__token__'] = 'token';
        return $rule;
    }

    /**
     * 验证提示信息
     */
    protected function getValidateMessage(){
        $message = [];
        foreach ($this->formFields as $item){
            $message[$item.'.require'] = $this->translations[$item]['text'].'是不能为空的哟亲！';
        }

        return $message;
    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\People::class;
    }
}