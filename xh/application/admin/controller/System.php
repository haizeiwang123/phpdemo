<?php
namespace app\admin\controller;

use app\common\model\Config;
use think\Db;
use think\File;
use think\Session;

class System extends Base
{
    /**
     * 系统设置
     */
    public function edit(){

        if (request()->isPost()){
            $data = request()->post();
            //dump($data);die;
            $files = request()->file();
            if (!empty($files)){
                foreach($files as $key => $file){

                    $info = $file->validate(['size'=>20000000, 'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public/uploads/system');
                    if($info){
                        $data[$key] = '/uploads/system/'.$info->getSaveName();
                    }else{
                        // 上传失败获取错误信息
                        $this->error($file->getError());
                    }
                }
            }
            $up_data = [];
            foreach ($data as $key => $value) {
                $up_data[] = ['id' => $key, 'value' => $value];
            }
            $config = new Config();
            $rows = $config->saveAll($up_data);
            if ($rows >= 0){
                $this->success('保存成功！', 'admin/system/edit');
            }else{
                $this->error('保存失败！');
            }
            exit();
        }

        return view('admin@System/edit')->assign([
            'jichu' => $this->getSystemConfig(1),
            'gaoji' => $this->getSystemConfig(2)
        ]);
    }

    /**
     * 获取系统配置列表
     * @param int $type 1，基础；2，高级
     * @return false|\PDOStatement|string|\think\Collection
     */
    protected function getSystemConfig($type = 1){
        return Db::table('config')->where('type', $type)->order('sort', 'desc')->select();
    }

    /**
     * 修改密码
     */
    public function updatePassword(){

        $admin_id = Session::get('admin_info')['id'];

        $data = request()->post('password');
        if (empty($data)) return ['status' => -1, 'msg' => '请输入新密码！'];

        $row = Db::table('admin')->where('id', $admin_id)->update(['password' => md5($data)]);

        if ($row >= 0){
            return ['status' => 1, 'msg' => '修改成功！'];
        }else{
            return ['status' => -1, 'msg' => '修改失败！'];
        }
    }

}
