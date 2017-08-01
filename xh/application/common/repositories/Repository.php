<?php
namespace app\common\repositories;

use think\App;

abstract class Repository{

    protected $model;

    function __construct()
    {
        $this->makeModel();
    }

    abstract public function model();

    /**
     * 实例化model
     */
    public function makeModel(){
        $this->model = App::invokeClass($this->model());
    }

    /**
     * 添加
     * @param array $data ['text' => 'xxx', 'status' => 1]
     * @param bool $field
     * @return bool
     */
    public function add($data, $field = true){
        $this->model->data($data);
        $res = $this->model->allowField($field)->save();

        if ($res){
            return $this->model;
        }else{
            return false;
        }
    }

    /**
     * 更新
     * @param array $data ['text' => 'xxx', 'status' => 1]
     * @param int $id 1
     * @param bool $field
     * @return bool
     */
    public function update($data, $id, $field = true){
        $res = $this->model->allowField($field)->save($data, ['id' => $id]);

        if ($res){
            return $res;
        }else{
            return false;
        }
    }

    /**
     * 批量更新
     * @param array $list [['id' => 1, 'text' => 'xxx'], ['id' => 2, 'text' => 'xxx']]
     * @return bool
     */
    public function updateAll($list){
        $res = $this->model->saveAll($list);

        if ($res){
            return true;
        }else{
            return false;
        }
    }

    /**
     * 删除
     * @param int|array $id 单个id 1； 或者多个id [1, 2, 3]
     * @return bool
     */
    public function delete($id){
        $res = $this->model->destroy($id);

        if ($res){
            return $res;
        }else{
            return false;
        }
    }

    /**
     * 条件删除
     * @param array $where ['status' => 0]
     * @return bool
     */
    public function deleteByWhere($where){
        $res = $this->model->destroy($where);

        if ($res){
            return $res;
        }else{
            return false;
        }
    }

}