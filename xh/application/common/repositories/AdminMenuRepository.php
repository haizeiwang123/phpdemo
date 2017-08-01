<?php

namespace app\common\repositories;

use app\common\model\AdminMenu;

class AdminMenuRepository extends Repository
{
    public function model()
    {
        return AdminMenu::class;
    }

    public function getMenu(){
        $list = $this->model->order('sort')->select();

        return $list;
    }
}
