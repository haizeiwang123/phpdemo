<?php

namespace app\common\repositories;

use app\common\model\SysArticle;

class SysArticleRepository extends Repository
{
    public function model()
    {
        return SysArticle::class;
    }

    /**
     * 获取系统文章
     * @param int $id 文章ID
     * @return bool
     */
    public function getById($id){
        if (empty($id)) return false;
        return $this->model->find($id);
    }
}
