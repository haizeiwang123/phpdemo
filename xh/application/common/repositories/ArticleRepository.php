<?php

namespace app\common\repositories;

use app\common\model\Article;

class ArticleRepository extends Repository
{
    public function model()
    {
        return Article::class;
    }

    /**
     * 获取文章列表
     * @param array $where 条件
     * @param int $page_size 每页多少条
     * @return mixed
     */
    public function get($where = [], $page_size = 20){
        return $this->model->where($where)->order('id', 'desc')->paginate($page_size);
    }

    /**
     * 通过分类id获取分类下所有文章
     * @param int $category_id 分类id
     * @param array $where 条件
     * @param int $page_size 每页多少条
     * @return bool
     */
    public function getByCategory($category_id, $where = [], $page_size = 20){
        if (empty($category_id)) return false;

        $articleCategory = new ArticleCategoryRepository();
        $category_ids = $articleCategory->getById($category_id);

        return $this->model->whereIn('category_id', $category_ids)->where($where)->order('id', 'desc')->paginate($page_size);
    }

    /**
     * 通过ID查询文章详情
     * @param $id
     * @param array $where
     * @return bool
     */
    public function getById($id, $where = []){
        if (empty($id)) return false;
        $where['id'] = $id;
        return $this->model->where($where)->find();
    }
}
