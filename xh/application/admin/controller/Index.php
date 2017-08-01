<?php
namespace app\admin\controller;

use think\Db;

class Index extends Base
{
    public function index()
    {
//        dump($this->getSystem());
        return view('Index/index')->assign('info', $this->getSystem());
    }

    /**
     * 获取系统信息
     */
    public function getSystem(){
        $mysql_v = Db::query('select VERSION() as v');
        $info = array(
            '操作系统'=>PHP_OS,
            //'运行环境'=>$_SERVER["SERVER_SOFT WARE"],
            '环境版本' => 'PHP: '.phpversion().' &nbsp;&nbsp;&nbsp;&nbsp; MYSQL: '.$mysql_v[0]['v'],
            '主机名'=>$_SERVER['SERVER_NAME'],
            'WEB服务端口'=>$_SERVER['SERVER_PORT'],
            '网站文档目录'=>$_SERVER["DOCUMENT_ROOT"],
            'ThinkPHP版本'=>THINK_VERSION,
            '上传附件限制'=>ini_get('upload_max_filesize'),
            '执行时间限制'=>ini_get('max_execution_time').'秒',
            '服务器时间'=>date("Y年n月j日 H:i:s"),
            '服务器域名/IP'=>$_SERVER['SERVER_NAME'].' [ '.gethostbyname($_SERVER['SERVER_NAME']).' ]',
            '用户的IP地址'=>$_SERVER['REMOTE_ADDR'],
            '剩余空间'=>round((disk_free_space(".")/(1024*1024)),2).'M',
            '程序制作'=>"<a href='http://ktwlkj.com' target='_blank'>小黑网络科技</a>"
        );

        return $info;
    }

    /**
     * 上传图片
     * @return array
     */
    public function upImg(){
        $files = request()->file();
        if (!empty($files)){
            foreach($files as $key => $file){
                $info = $file->validate(['size'=>20000000, 'ext'=>'jpg,png,gif'])->move(ROOT_PATH . 'public/uploads/images');
                if($info){
                    $_data = [
                        'file_path' =>  '/uploads/images/'.$info->getSaveName(),
                        'type' => 1,
                        'created_at' => date('Y-m-d H:i:s', time()),
                        'updated_at' => date('Y-m-d H:i:s', time()),
                    ];
                    Db::table('file')->insert($_data);
                    return ['status' => 1, 'msg' => '上传成功！', 'path' => $_data['file_path']];
                }else{
                    return ['status' => -1, 'msg' => $file->getError()];
                }
            }
        }else{
            return ['status' => -1, 'msg' => '未选择图片'];
        }
    }
    /**
     * 上传文件
     * @return array
     */
    public function upFile(){
        $files = request()->file();
        if (!empty($files)){
            foreach($files as $key => $file){
                $info = $file->validate(['size'=>20000000, 'ext'=>'jpg,png,gif,zip,rar,mp3,mp4,avi'])->move(ROOT_PATH . 'public/uploads/files');
                if($info){
                    $_data = [
                        'file_path' =>  '/uploads/files/'.$info->getSaveName(),
                        'type' => 2,
                        'created_at' => date('Y-m-d H:i:s', time()),
                        'updated_at' => date('Y-m-d H:i:s', time()),
                    ];
                    Db::table('file')->insert($_data);
                    return ['status' => 1, 'msg' => '上传成功！', 'path' => $_data['file_path']];
                }else{
                    return ['status' => -1, 'msg' => $file->getError()];
                }
            }
        }else{
            return ['status' => -1, 'msg' => '未选择文件'];
        }
    }

}
