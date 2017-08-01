<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use think\Request;

class AdminLoginLogs extends Curd {


    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->init();

    }
    public function init(){

        $this->route = 'admin_login_logs';  //路由(填写资源路由)
        $this->buttons['create'] = 0;
        $this->buttons['edit'] = 0;
        $this->buttons['delete'] = 0;
        $this->label = '登录日志';  //标题展示

        //字典
        $this->translations = ['id'  => ['text' => 'ID'],
            'username'  => ['text' => '账号'],
            'ip'  => ['text' => '登录ip'],
            'created_at'  => ['text' => '登录时间'],
            ];

        //列表页字段
        $this->listFields = [
            'id', 'username', 'ip', 'created_at', 
        ];

    }
    //实例化model类（不可删，必写）
    public function model()
    {
        return \app\common\model\AdminLoginLogs::class;
    }
}