<?php

namespace app\admin\controller;

use app\common\model\Admin;
use think\Controller;
use think\Db;
use think\Session;

class Auth extends Controller{

    public function login(){

        if (Session::has('admin_info')){
            $this->redirect('admin/index/index');
        }
        if (request()->isPost()){
            $data = request()->post();
            /*dump($data);die;*/
            if (empty($data['username']) || empty($data['password'])){
                return ['status' => -1, 'msg' => '请输入用户名或密码！'];
            }
            if (empty($data['captcha']) || !captcha_check($data['captcha'])){
                return ['status' => -1, 'msg' => '验证码错误！'];
            };
            $user = Admin::where([
                'username'  => $data['username'],
                'password'  => md5($data['password'])
            ])->find();

            if (empty($user)){
                return ['status' => -1, 'msg' => '账号或密码错误！'];
            }else{
                Db::table('admin_login_logs')->insert([
                    'username' => $data['username'],
                    'ip' => request()->ip(),
                    'created_at' => date('Y-m-d H:i:s', time())
                ]);
                Session::set('admin_info', $user->toArray());
                return ['status' => 1, 'msg' => '登录成功！'];
            }
        }
        return $this->fetch();
    }

    /**
     * 退出登录
     */
    public function unlogin(){
        Session::delete('admin_info');
        if (Session::has('admin_info')){
            $this->error('退出失败');
        }else{
            $this->redirect('admin/auth/login');
        }
    }
}