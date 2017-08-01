<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use app\common\repositories\ArticleCategoryRepository;
use think\Db;
use think\Request;

class Articles extends Curd {

    protected $articleCategoryRepository;

    public function __construct(Request $request, ArticleCategoryRepository $articleCategoryRepository)
    {
        parent::__construct($request);
        $this->articleCategoryRepository = $articleCategoryRepository;

        $this->init();

    }
    public function init(){

        $this->route = 'articles';  //路由
        $this->label = '文章';

        //字典
        $this->translations = [
            'id'    =>  ['text'  =>  '#'],
            'title'    =>  ['text'  =>  '文章标题'],
            'category_id'    =>  [
                'text'  =>  '所属分类',
                'type' => 'select',
                'data' => $this->getSelectData(),
            ],
            'keywords'  =>  [
                'text'  =>  '文章关键词',
                'type' => 'textarea'
            ],
            'description'  =>  [
                'text'  =>  '文章介绍',
                'type' => 'textarea'
            ],
            'content'  =>  [
                'text'  =>  '文章内容',
                'type'  => 'ueditor'
            ],
            'file' => [
                'text'  =>  '附件',
                'type'  => 'images'
            ],
            'created_at'  =>  ['text'  =>  '添加日期'],
            'updated_at'  =>  ['text'  =>  '更新日期']
        ];

        //列表页
        $this->listFields = [
            'id', 'title', 'category_id', 'created_at', 'updated_at'
        ];

        //表单页
        $this->formFields = [
            'title', 'category_id', 'keywords', 'description', 'file', 'content'
        ];

        $this->buttons['search'] = 1; //启用搜索
        //搜素字段
        $this->searchFields = [
            ['field' => 'title', 'type' => 'like']
        ];

    }

    public function model()
    {
        return \app\common\model\Article::class;
    }

    public function getList()
    {
        $list = $this->model
            ->field('article.*, article_category.category_name as category_id')
            ->join('article_category', 'article.category_id = article_category.id', 'LEFT')
            ->where($this->getWhere())
            ->order('article.id', 'desc')
            ->paginate($this->perPage);


        return $list;
    }

    /**
     * 获取select框
     */
    protected function getSelectData(){
        $_list = $this->articleCategoryRepository->getCategory();
        $_select_data = '';

        $tid = 0;  //分类id
        if (!empty(request()->routeInfo()['var']['id'])){
            $id = request()->routeInfo()['var']['id']; //获取文章id
            $category_id = Db::table('article')->where('id', $id)->value('category_id');
            if ($category_id){
                $tid = $category_id;
            }
        }

        $this->articleCategoryRepository->getCategoryList($_list, $_select_data, '', $tid);
        //
        return $_select_data;
    }

}