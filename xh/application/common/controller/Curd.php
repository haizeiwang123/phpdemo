<?php

namespace app\common\controller;

use app\admin\controller\Base;
use app\common\model\User;
use think\App;
use think\Db;
use think\Request;
use think\Validate;

abstract class Curd extends Base
{
    protected $model;
    protected $perPage  = 20;
    protected $pageName = 'page';
    protected $page     = null;
    protected $label = '';
    protected $route = '';

    //验证
    protected $validateRules = [];

    //列表查询条件
    protected $where = [];

    //列表排序
    protected $order = ['id' => 'desc'];

    protected $fields       = ['*'];
    protected $listFields   = [];  //列表字段
    protected $formFields   = [];  //表单字段
    protected $searchFields = [];  //搜索字段
    /**
     * @var array
     * type
     * text  文本输入
     * textarea 文本框
     * status 状态
     * guanlian 关联
     *
     */
    protected $translations = [];

    //操作按钮的显示与否
    public $buttons = [
        'create'                 => 1,
        'edit'                   => 1,
        'delete'                 => 1,
        'daochu'                 => 0,
        'search'                 => 0
    ];
    //更多按钮
    public $moreButtons = [];
    //模板
    protected $views = [
        'index'  => 'common@Curd/index',
        'create' => 'common@Curd/ajax_create',
        'edit'   => 'common@Curd/ajax_edit',

    ];

    public function __construct(Request $request)
    {
        parent::__construct($request);
        $this->make();
    }

    abstract protected function model();

    /**
     * 初始化
     */
    protected function make(){
        $this->model = App::invokeClass($this->model());
    }

    /**
     * 验证规则
     */
    protected function getValidateRule(){
        $rule = [];
        foreach ($this->formFields as $item){
            $rule[$item] = 'require';
        }

        return $rule;
    }

    /**
     * 验证提示信息
     */
    protected function getValidateMessage(){
        $message = [];
        foreach ($this->formFields as $item){
            $message[$item.'.require'] = $this->translations[$item]['text'].'不能为空！';
        }

        return $message;
    }

    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index()
    {
        return view($this->views['index'])->assign([
            'list' => empty($this->translations)? [] : $this->getList(),
            'listFields' => $this->listFields,
            'buttons' => $this->buttons,
            'searchFields' => $this->searchFields,
            'moreButtons' => $this->moreButtons,
            'page'=>$this->page,
            'perPage'=>$this->perPage,
            'allPage'=>$this->model->where("id",">=",1)->count()
        ]);
    }
	
    /**
     * 获取列表数据,并获取分页详情
     * @return mixed
     */
    public function getList(){
		$this->page=request()->get("page")?request()->get("page"):1;
        $list = $this->model->field($this->fields)->where($this->getWhere())->order($this->order)->paginate($this->perPage);
		
        return $list;
    }

    /**
     * 获取搜索条件
     * @return array
     */
    protected function getWhere(){
        $where = $this->where;
        $request = request()->get();
        //如果开启了搜索
        if ($this->buttons['search'] == 1){
            foreach ($this->searchFields as $k => $v) {
                if (!empty($request[$v['field']])){
                    if ($v['type'] == 'like'){
                        $where[$v['field']] = [$v['type'], '%'.$request[$v['field']].'%'];
                    }else{
                        $where[$v['field']] = [$v['type'], $request[$v['field']]];
                    }
                }
            }
        }
        return $where;
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create()
    {
        return view($this->views['create'])->assign([
            'formFields'    => $this->formFields
        ]);
    }

    /**
     * 保存新建的资源
     * @param Request $request
     * @return array
     */
    public function save(Request $request)
    {
        $validate = new Validate($this->getValidateRule(), $this->getValidateMessage());
        $data = $request->post();
        $result   = $validate->check($data);
        if(!$result){
            if (request()->isAjax()){
                return ['status' => -1, 'msg' => $validate->getError()];
            }else{
                $this->error($validate->getError());
            }
        }

        $data['created_at'] = date('Y-m-d H:i:s', time());
        $data['updated_at'] = date('Y-m-d H:i:s', time());

        $res = $this->model->allowField(true)->save($data);
        if (request()->isAjax()){
            if ($res){
                return ['status' => 1, 'msg' => '添加成功！'];
            }else{
                return ['status' => -1, 'msg' => '添加失败！'];
            }
        }else{
            if ($res){
                $this->success('添加成功！', url('/admin/'.$this->route));
            }else{
                $this->error('添加失败！');
            }
        }
    }

    /**
     * 显示指定的资源
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function read($id)
    {
        //
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int  $id
     * @return \think\Response
     */
    public function edit($id)
    {

        return view($this->views['edit'])->assign([
            'formFields'    => $this->formFields,
            'data'          => $this->getDataById($id),
            'id'            => $id
        ]);
    }

    /**
     * 通过id获取单条数据
     * @param $id
     * @return mixed
     */
    protected function getDataById($id){

        return $this->model->field($this->formFields)->where('id', $id)->find();
    }

    /**
     * 保存更新的资源
     * @param Request $request
     * @param $id
     * @return array
     */
    public function update(Request $request, $id)
    {

        $validate = new Validate($this->getValidateRule(), $this->getValidateMessage());

        $data = $request->post();
        if ($request->isAjax()){
            $data = $request->put();
        }
        $result   = $validate->check($data);
        if(!$result){
            if (request()->isAjax()){
                return ['status' => -1, 'msg' =>  $validate->getError()];
            }else{
                $this->error($validate->getError());
            }
        }


        $data['updated_at'] = date('Y-m-d H:i:s', time());

        $res = $this->model->allowField(true)->save($data, ['id' => $id]);
        if (request()->isAjax()){
            if ($res >= 0){
                return ['status' => 1, 'msg' => '更新成功！'];
            }else{
                return ['status' => -1, 'msg' => '更新失败！'];
            }
        }else{
            if ($res >= 0){
                $this->success('更新成功！', url('/admin/'.$this->route));
            }else{
                $this->error('更新失败！');
            }
        }
    }

    /**
     * 删除指定资源
     * @param $id
     * @return array
     */
    public function delete($id)
    {
        $id = trim($id, ',');
        $id_array = explode(',', $id);

        $res = $this->model->destroy($id_array);
        if ($res){
            return ['status' => 1, 'msg' => '删除成功！'];
        }else{
            return ['status' => -1, 'msg' => '删除失败！'];
        }
    }


    public function __destruct()
    {
        $this->assign('translations', $this->translations);
        $this->assign('label', $this->label);
        $this->assign('route', $this->route);
    }
}
