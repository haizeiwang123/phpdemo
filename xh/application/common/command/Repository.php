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

class Repository extends Make
{

    protected $type = "Repository";

    protected function configure()
    {
        parent::configure();
        $this->setName('make:repository')
            ->addOption('plain', null, Option::VALUE_NONE, 'Generate an empty repository class.')
            ->setDescription('Create a new resource repository class');
    }

    protected function getStub()
    {
        return __DIR__ . '/stubs/repository.stub';
    }

    protected function getClassName($name)
    {
        return parent::getClassName($name) . 'Repository';
    }

    protected function getNamespace($appNamespace, $module)
    {
        return 'app\common\repositories';
    }

}
