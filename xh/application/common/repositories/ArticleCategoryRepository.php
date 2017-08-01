<?php

namespace app\common\repositories;

use app\common\model\ArticleCategory;
use think\Cookie;
use think\Db;

class ArticleCategoryRepository extends Repository
{
    public function model()
    {
        return ArticleCategory::class;
    }

    /**
     * 获取文章分类数据（后台）
     * @return array
     */
    public function getCategory(){

        if (!Cookie::has('article_category')){
            $_list = $this->recursion();
            Cookie::set('article_category', $_list);
        }
        $list = Cookie::get('article_category');

        return $list;
    }
    /**
     * 递归文章无限分类（后台）
     * @param int $id
     * @param int $level
     * @return mixed array 无限分类数组
     */
    protected function recursion($id = 0, $level = 1){
        $res=Db::table('article_category')
            ->all()
            ->order('sort')
            ->select();
//      foreach ($res as $k=>$v){
//          $res[$k]['level']=$level;
//          $res[$k]['child']=$this->recursion($v['id'],++$level);
//          --$level;
//      }
		dump($res);
        return $res;
    }

    /**
     * 递归展示的一维数组（后台）
     * @param string $data 数据
     * @param string $show 数据处理结果集
     * @param string $nid 禁选id（自己以及所有下级禁选）
     * @param int $tid 上级分类
     * @param bool $select 是否选中
     * @return array
     */
    public function getCategoryList($data, &$show, $nid = '', $tid = 0, $select = true){
        foreach ($data as $k => $v){
            if ($nid != ''){
                if ($v['id'] == $nid) {
                    $select = false;
                }
            }
            $selected = '';
            $readonly = '';
            $text = '';
            if ($v['id'] == $tid) $selected = 'selected';
            if (!$select) {
                $readonly = 'disabled';
                $text = '(禁选)';
            }
            $show[] = '<option value="'.$v['id'].'" '.$selected.' '.$readonly.'>'.str_repeat('&nbsp;&nbsp;&nbsp;&nbsp;├─ ',  $v['level']-1).''.$v['category_name'].$text.'</option>';

            if(count($v['child']) > 0){
                $this->getCategoryList($v['child'], $show, $nid, $tid, $select);
            }
            $select = true;
        }
        return $show;
    }

    /**
     * 获取分类id下所有分类id
     * @param $id
     * @return string
     */
    public function getById($id){

        $cate_list = $this->getCategory();

        $ids = '';
        $ids = $this->returnId($id, $cate_list, $ids);

        return $ids;
    }

    /**
     * 递归数据获取分类id下所有分类id
     * @param $id
     * @param $data
     * @param $ids
     * @param bool $find
     * @return array
     */
    protected function returnId($id, $data, &$ids, $find = false){
        if ($find){
            foreach ($data as $k => $v){
                $ids[] = $v['id'];
                if (!empty($v['child'])){
                    $this->returnId($id, $v['child'], $ids, $find);
                }
            }
            return $ids;
        }

        foreach ($data as $k => $v){
            if ($v['id'] == $id){
                $find = true;
                $ids[] = $v['id'];
                $this->returnId($id, $v['child'], $ids, $find);
            }else{
                if (!empty($v['child'])){
                    $this->returnId($id, $v['child'], $ids);
                }
            }
        }
        return $ids;
    }

    /**
     * 递归数据库获取分类id下所有分类id（效率太低，暂且不用）
     * @param $id
     * @param $ids
     * @return string
     */
//    protected function returnId($id, &$ids){
//        $res = Db::table('article_category')
//            ->field('id')
//            ->where('tid', $id)
//            ->order('sort')
//            ->select();
//        foreach ($res as $k=>$v){
//            $ids .= $v['id'].',';
//            $this->returnId($v['id'], $ids);
//        }
//        return trim($ids, ',');
//    }


}
