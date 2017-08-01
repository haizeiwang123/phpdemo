<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 刘志淳 <chun@engineer.com>
// +----------------------------------------------------------------------

namespace app\common\command;

use think\Config;
use think\console\command\Make;
use think\console\input\Option;
use think\Db;

class Curd extends Make
{

    protected $type = "Curd";
    protected $model = '';

    protected function configure()
    {
        parent::configure();
        $this->setName('make:curd')
            ->addOption('plain', null, Option::VALUE_NONE, 'Generate an empty repository class.')
            ->setDescription('Create a new resource repository class');
    }

    protected function getClassName($name)
    {
        $name = parent::getClassName($name);
        return $name;
    }

    protected function getStub()
    {
        return __DIR__ . '/stubs/curd.stub';
    }

    protected function getNamespace($appNamespace, $module)
    {
        return 'app\admin\controller';
    }

    protected function buildClass($name)
    {
        $stub = file_get_contents($this->getStub());

        $namespace = trim(implode('\\', array_slice(explode('\\', $name), 0, -1)), '\\');

        $class = str_replace($namespace . '\\', '', $name);
        $translations = "";

        $str = explode('/', $class);
        $str_count = count($str);

        $_name = $str[$str_count-1];

        $route = trim(preg_replace_callback('/([A-Z]{1})/',function($matches){
            return '_'.strtolower($matches[0]);
        },$_name), '_');

        $table = Db::query('show full columns from '.$route);

        $field = '';
        foreach ($table as $item) {
            $field .= "'".$item['Field']."', ";
            $translations .= "'".$item['Field']."'  => ['text' => '".$item['Comment']."'],
            ";
        }
        $field = trim($field, ',');
//        $translations = json_encode($table);

        system('php think make:model '.$_name);
        return str_replace(['{%className%}', '{%namespace%}', '{%app_namespace%}', '{%translations%}', '{%route%}', '{%model%}', '{%field%}'], [
            $class,
            $namespace,
            Config::get('app_namespace'),
            $translations,
            $route,
            $_name,
            $field
        ], $stub);
    }

}
