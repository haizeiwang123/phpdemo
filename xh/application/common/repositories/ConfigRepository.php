<?php

namespace app\common\repositories;

use app\common\model\Config;

class ConfigRepository extends Repository
{
    public function model()
    {
        return Config::class;
    }

    /**
     * 获取系统配置
     * @param string $name
     * @return mixed
     */
    public function getConfig($name = ''){
        $config = '';
        if (empty($name)){
            $list = $this->model->select();
            foreach ($list as $item) {
                $config[$item->name] = $item->value;
            }
        }else{
            $info = $this->model->where('name', $name)->find();
            $config = $info->value;
        }

        return $config;
    }
}
