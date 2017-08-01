## TP5-Admin
> 简单TP5搭建的后台管理系统
#### 安装
1. 把代码解压到应用目录
2. 导入目录下的sql文件，并修改数据库连接信息

#### 环境配置
1. 请配置php的环境变量，能在CMD中执行php命令
2. 最好配置一下composer

#### 四步搭建CURD管理
1. 创建数据库`user`，并设计字段；
2. 添加资源路由，在`application/route`中添加：
```php
 Route::resource('user', 'admin/user');
 ```
 > 资源路由概念请参考：http://www.kancloud.cn/manual/thinkphp5/118035
3. 创建模型和CURD控制器：
```php
php think make:curd User
```
5. 后台侧边栏添加链接：
```
/admin/user
```

#### 注意:
1. 数据库名以及路由请用下划线法命名;
2. 模型和控制器请用首字母大写驼峰法命名;
3. 数据库名，模型名，CURD控制器名，路由名，建议保持一致;

#### 使用

1. 打开刚刚创建的CURD方法`application/admin/controller/User`
```php
    //字典
    $this->translations = [
        'id'  => ['text' => '#'],
        'text'  => [
            'text' => '文本',
            'type' => 'textarea'
         ],
        'status'  => [
            'text' => '状态',
            'type' => 'status',
            'label'=> [
                -1 => ['class' => 'label label-danger', 'text' => '禁用'],
                1 => ['class' => 'label label-info', 'text' => '启用']
            ]
        ],
    ];
    
    //列表页字段
    $this->listFields = [
        'id', 'text', 'status', 
    ];
    
    //表单页字段
    $this->formFields = [
        'id', 'text', 'status', 
    ];
```
- `translations`中字段对应的是数据库字段，`text`是在表单和列表头显示的文本，
- 'type' 字段类型
    1. 默认没有`type`，表示是输入框
    2. `textarea`: 文本框
    3. `ueditor`: 百度富文本编辑器
    4. `image`: 单图上传
    5. `images`: 多图上传
    6. `file`: 单文件上传
    7. `files`: 多文件上传
    8. `status`: 状态、类型
        - 需要设置`label`，例
            ```php
            'status'  => [
                'text' => '状态',
                'type' => 'status',
                'label'=> [
                    -1 => ['class' => 'label label-danger', 'text' => '禁用'],
                    1 => ['class' => 'label label-info', 'text' => '启用']
                ]
            ],
            ```
            > -1, 1 键名分别代表状态值，`class`为列表展示class类, `text`为状态值显示的文本
    9. `guanlian`: 关联（不完善）
        - 例：
            ```php
            'categort_id'  => [
                'text' => '所属分类',
                'type' => 'guanlian',
                'table'=> 'category',  //关联表名
                'where'=> '', //附加where条件（可为空）
                'show_field' => 'category_name' //setect框显示的字段
            ],
            ```
        > 这个不完善，列表页需要重写数据才能展示，后期完善
        
#### 重写数据 (标准的资源路由对应控制器)
> 重写数据用于处理一些需要多表联查，或者使用缓存增删改数据时清除缓存等；

1. 重写列表页面：`public function index(){}`
2. 重写列表数据：
    ```php
    public function getList(){
       $list = [[1, 2, 3], [1, 2, 3, 4]];
       return $list;
    }
    ``` 
3. 重写添加页面：`public function create(){}`
4. 重写添加验证：`public function save(){}`；例：

    ```php
    public function save(Request $request){
 
       Cache::rm('admin_menu'); //清除缓存
       return parent::save($request);
    }
    ```
    
5. 重写编辑页面：`public function edit(){}`
5. 重写编辑验证：`public function update(){}`
6. 重写删除：`public function delete(){}`

#### 更换模板
在继承的CURD控制器里有模板定义，你可以改变某个值来更换渲染的模板：
```php
//模板
protected $views = [
    'index'  => 'common@Curd/index',
    'create' => 'common@Curd/ajax_create',
    'edit'   => 'common@Curd/ajax_edit'
];
```
#### 控制显示按钮
在继承的CURD控制器里有按钮定义，你可以改变某个值来控制按钮是否显示：
```php
//操作按钮的显示与否
public $buttons = [
    'create'                 => 1,  //添加按钮
    'edit'                   => 1,  //编辑按钮
    'delete'                 => 1  //删除按钮
];
```
> 1表示显示，0为不显示
- 添加更多按钮
    ```php
    $this->moreButtons = [
        [
          'text' => '测试按钮1',  //显示文本
          'class' => 'btn btn-success btn-xs', //class属性 
          'id' => '',  //id属性
          'a' => '#' //指向连接
        ],
        [
          'text' => '测试按钮2', 
          'class' => 'btn btn-info btn-xs', 
          'id' => '', 
          'a' => '#'
        ]
    ];
    ```

#### 列表搜索
你可以定义列表搜索：
```php
$this->buttons['search'] = 1; //启用搜索
//搜素字段
$this->searchFields = [
    [
        'field' => 'title', //搜索字段
        'type' => 'like' //搜索类型, like 模糊查找，= 精确查找
    ],
    [
        'field' => 'status', //搜索字段
        'type' => '='
    ]
];
```

目前，就这些功能，后续会优化添加，一些复杂的模块就需要单独的拉出来写了，不用公用CURD的控制器，请继承Base控制器：
  ```php
  class User extends Base{
  
      public function __construct(Request $request)
      {
          parent::__construct($request);
      }
  }
  ```
  
#### 前台调用

> 一些模块公用的方法建议统一写在`application/common/repositories`中（称之为仓库=.=），逻辑也在里面写，这样的易维护，比如以后项目不止WEB模块，可能有很多模块，商城、社区、后台、商户端、app接口等等，可以直接调用，无需再次复制代码，渲染不同的输出模式；举个例子：


1. 创建一个用户仓库：`php think make:repository User`，内容类似于这样：

    ```php
    <?php

    namespace app\common\repositories;

    class UserRepository extends Repository
    {
        public function model()
        {
            //return
        }
    }
    ```

2. 在model方法中你需要返回一个用户的模型（没有创建模型，请自行创建`php think make:model User`）：

    ```php
    <?php
    
    namespace app\common\repositories;
    
    use app\common\model\User;
    
    class UserRepository extends Repository
    {
        public function model()
        {
            return User::class;
        }
    }
    
    ```
    
3. 我们在里面写入获取用户列表：

    ```php
    <?php
    
    namespace app\common\repositories;
    
    use app\common\model\User;
    
    class UserRepository extends Repository
    {
        public function model()
        {
            return User::class;
        }
        /**
        * 获取用户列表
        */
        public function getUserList(){
            return $this->model->select();
        }
    }
    ```

4. 然后在其他模块调用

    ```php
    <?php
    namespace app\web\controller;
    
    use app\common\repositories\UserRepository;
    
    class Index
    {
        public function index(UserRepository $userRepository){
            dump($userRepository->getUserList());
        }
    }
    ```

##### 预置的一些调用方法：

    ```php
    <?php
    namespace app\web\controller;
    
    use app\common\repositories\ArticleCategoryRepository;
    use app\common\repositories\ArticleRepository;
    use app\common\repositories\ConfigRepository;
    use app\common\repositories\SysArticleRepository;
    use app\common\repositories\WebMenuRepository;
    
    class Index
    {
        public function index(
            ArticleRepository $articleRepository,
            SysArticleRepository $sysArticleRepository,
            ArticleCategoryRepository $articleCategoryRepository,
            ConfigRepository $configRepository,
            WebMenuRepository $webMenuRepository
        )
        {
            //获取文章
            dump($articleRepository->get()->toArray());
            //通过id获取文章详情
            dump($articleRepository->getById(2));
            //通过分类id获取文章列表
            dump($articleRepository->getByCategory(1));
            //获取菜单
            dump($webMenuRepository->getWebMenu());
            //获取系统文章
            dump($sysArticleRepository->getById(1)->toArray());
            //获取文章分类
            dump($articleCategoryRepository->getCategory());
            //获取系统配置
            dump($configRepository->getConfig());
            dump($configRepository->getConfig('SITE_TITLE'));
            //获取某文章分类下所有分类id
            dump($articleCategoryRepository->getById(1));
    
        }
    }
    ```
## 工具推荐
1. 强烈建议使用IDE工具，代码提示以及自动引入命名空间等等，对开发效率有所帮助，推荐使用 PhpStorm =.=
## 工具推荐
1. 强烈建议使用IDE工具，代码提示以及自动引入命名空间等等，对开发效率有所帮助，推荐使用 PhpStorm =.=