<?php
namespace app\web\controller;

use app\common\model\Choujiang;
use app\common\repositories\ArticleCategoryRepository;
use app\common\repositories\ArticleRepository;
use app\common\repositories\ConfigRepository;
use app\common\repositories\SysArticleRepository;
use app\common\repositories\WebMenuRepository;
use think\console\command\make\Controller;
use think\Db;

class Index extends Base
{
    /*public function index(
        ArticleRepository $articleRepository,
        SysArticleRepository $sysArticleRepository,
        ArticleCategoryRepository $articleCategoryRepository,
        ConfigRepository $configRepository,
        WebMenuRepository $webMenuRepository
    )
    {
        //获取文章
        dump($articleRepository->get()->toArray());
        dump($articleRepository->getById(2));
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

    }*/


    public function index()
    {

       
       
      return $this->fetch('index');
    }

    public function choujiang()
    {
        $user_ip = $this->request->ip();

       $ip = Db::table('choujiang')->where('user_ip='."'$user_ip'")->find();

        if(!$ip){

           $cj =  new Choujiang();

           $cj->data([

               'user_ip'=>$user_ip,
               'created_at' => time(),
               'user_cishu' => 0 ,
           ]);

           $cj->save();


        }else{

           $cj = new Choujiang();

           $cj->save([

               'user_ip'=>$user_ip,
               'created_at' => time(),
               'user_cishu' => $ip['user_cishu'] + 1,


           ],['user_ip'=>$user_ip]);

        }

        $user_cishu = Db::table('choujiang')->where("user_ip="."'$user_ip'")->field('user_cishu')->find();



        echo json_encode($user_cishu);

    }



}
