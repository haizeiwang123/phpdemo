<?php
namespace app\admin\controller;
use app\common\controller\Curd;
use app\common\repositories\ArticleCategoryRepository;
use think\Cache;
use think\Cookie;
use think\Db;
use think\Request;

class ArticleCategory extends Curd {

    protected $articleCategoryRepository;
    public function __construct(
        Request $request,
        ArticleCategoryRepository $articleCategoryRepository
    )
    {
        parent::__construct($request);

        $this->articleCategoryRepository = $articleCategoryRepository;
        $this->init();

    }
    public function init(){

        $this->route = 'article_category';  //路由
        $this->label = '文章分类';
        $this->views['index'] = 'admin@ArticleCategory/index';

        //字典
        $this->translations = [
            'id'    =>  ['text'  =>  '#'],
            'category_name'  =>  ['text'  =>  '分类名'],
            'sort' => ['text' => '排序'],
            'tid'  => [
                'text' => '上级菜单',
                'type' => 'select',
                'data' => $this->getSelectData(),
            ],
            'created_at'  =>  ['text'  =>  '添加日期']
        ];

        //表单页
        $this->formFields = [
            'category_name', 'tid', 'sort'
        ];

    }

    public function model()
    {
       return \app\common\model\ArticleCategory::class;
    }

    /**
     * 重写列表数据
     * @return array
     */
    public function getList()
    {	$this->page=request()->get("page")?request()->get("page"):1;
        return $this->articleCategoryRepository->getCategory();
    }

    /**
     * 获取select框
     */
    protected function getSelectData(){
        $_list = $this->articleCategoryRepository->getCategory();
        $_select_data = '';

        $tid = 0;  //分类id
        $id = '';
        if (!empty(request()->routeInfo()['var']['id'])){
            $id = request()->routeInfo()['var']['id']; //获取id
            $category_id = $this->model->where('id', $id)->value('tid');
            if ($category_id){
                $tid = $category_id;
            }
        }

        $this->articleCategoryRepository->getCategoryList($_list, $_select_data, $id, $tid);

        return $_select_data;
    }

    public function save(Request $request)
    {
        Cache::rm('article_category');
        return parent::save($request);
    }
    public function update(Request $request, $id)
    {
        Cache::rm('article_category');
        return parent::update($request, $id);
    }
    public function delete($id)
    {
        Cache::rm('article_category');
        return parent::delete($id);
    }

}