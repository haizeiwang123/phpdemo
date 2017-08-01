/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : tp_5

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-01 11:24:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '1' COMMENT '1，启用；-1，禁用',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', '2017-03-17 11:40:26', '2017-03-17 11:40:28');

-- ----------------------------
-- Table structure for admin_login_logs
-- ----------------------------
DROP TABLE IF EXISTS `admin_login_logs`;
CREATE TABLE `admin_login_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_login_logs
-- ----------------------------
INSERT INTO `admin_login_logs` VALUES ('1', 'admin', '127.0.0.1', '2017-03-21 08:53:49');
INSERT INTO `admin_login_logs` VALUES ('2', 'admin', '127.0.0.1', '2017-03-21 11:50:10');
INSERT INTO `admin_login_logs` VALUES ('3', 'admin', '0.0.0.0', '2017-07-25 17:22:53');
INSERT INTO `admin_login_logs` VALUES ('4', 'admin', '127.0.0.1', '2017-07-26 09:42:29');
INSERT INTO `admin_login_logs` VALUES ('5', 'admin', '127.0.0.1', '2017-07-26 10:11:03');
INSERT INTO `admin_login_logs` VALUES ('6', 'admin', '127.0.0.1', '2017-07-26 10:40:23');
INSERT INTO `admin_login_logs` VALUES ('7', 'admin', '0.0.0.0', '2017-07-26 11:49:18');
INSERT INTO `admin_login_logs` VALUES ('8', 'admin', '0.0.0.0', '2017-07-26 13:25:37');
INSERT INTO `admin_login_logs` VALUES ('9', 'admin', '0.0.0.0', '2017-07-26 14:37:26');
INSERT INTO `admin_login_logs` VALUES ('10', 'admin', '0.0.0.0', '2017-07-28 09:51:20');
INSERT INTO `admin_login_logs` VALUES ('11', 'admin', '0.0.0.0', '2017-07-29 08:53:43');
INSERT INTO `admin_login_logs` VALUES ('12', 'admin', '0.0.0.0', '2017-07-29 10:44:13');
INSERT INTO `admin_login_logs` VALUES ('13', 'admin', '0.0.0.0', '2017-07-29 13:52:55');
INSERT INTO `admin_login_logs` VALUES ('14', 'admin', '0.0.0.0', '2017-07-31 09:18:05');
INSERT INTO `admin_login_logs` VALUES ('15', 'admin', '0.0.0.0', '2017-07-31 17:49:41');
INSERT INTO `admin_login_logs` VALUES ('16', 'admin', '0.0.0.0', '2017-08-01 09:32:38');

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tid` int(11) DEFAULT '0' COMMENT '上级',
  `icon` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL COMMENT '路由（网址）',
  `role` varchar(255) DEFAULT NULL COMMENT '权限',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `highlight` varchar(255) DEFAULT NULL COMMENT '高亮',
  `show` tinyint(2) DEFAULT '1' COMMENT '是否显示',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tid` (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '系统管理', '0', 'fa fa-cog', '', null, '0', 'admin/test,admin/admin_menu,admin/system,admin/site_link,admin/admin_login_logs,admin/guest,admin/web_menu', '1', '2017-03-17 13:07:38', '2017-07-29 10:13:26');
INSERT INTO `admin_menu` VALUES ('5', '后台菜单', '1', '', '/admin/admin_menu', null, '0', 'admin/admin_menu', '1', '2017-03-17 15:15:12', '2017-03-17 21:17:31');
INSERT INTO `admin_menu` VALUES ('7', '系统设置', '1', '', 'admin/system/edit', null, '2', 'admin/system', '1', '2017-03-17 16:46:51', '2017-03-17 16:46:51');
INSERT INTO `admin_menu` VALUES ('9', '文章模块', '0', 'fa fa-sheqel', '', null, '3', 'admin/article_category,admin/articles,admin/sys_article', '1', '2017-03-17 20:57:31', '2017-03-17 22:50:53');
INSERT INTO `admin_menu` VALUES ('10', '文章分类', '9', '', '/admin/article_category', null, '0', 'admin/article_category', '1', '2017-03-17 20:58:04', '2017-03-17 20:58:04');
INSERT INTO `admin_menu` VALUES ('11', '文章列表', '9', '', '/admin/articles', null, '0', 'admin/articles', '1', '2017-03-17 21:07:22', '2017-03-17 21:23:48');
INSERT INTO `admin_menu` VALUES ('12', '系统文章', '9', '', '/admin/sys_article', null, '0', 'admin/sys_article', '1', '2017-03-17 22:08:49', '2017-03-17 22:08:55');
INSERT INTO `admin_menu` VALUES ('13', '用户列表', '21', '', '/admin/user', null, '0', 'admin/user', '1', '2017-03-17 22:45:18', '2017-03-21 18:26:40');
INSERT INTO `admin_menu` VALUES ('15', '图片模块', '0', 'fa fa-file-image-o', '', null, '4', 'admin/image_category,admin/images', '1', '2017-03-18 11:30:48', '2017-03-18 11:36:38');
INSERT INTO `admin_menu` VALUES ('16', '图片分类', '15', '', '/admin/image_category', null, '0', 'admin/image_category', '1', '2017-03-18 11:35:39', '2017-03-18 11:35:39');
INSERT INTO `admin_menu` VALUES ('17', '图片列表', '15', '', '/admin/images', null, '1', 'admin/images', '1', '2017-03-18 11:36:29', '2017-03-18 11:36:29');
INSERT INTO `admin_menu` VALUES ('18', '登录日志', '1', '', '/admin/admin_login_logs', null, '4', 'admin/admin_login_logs', '1', '2017-03-21 08:57:40', '2017-03-21 08:57:40');
INSERT INTO `admin_menu` VALUES ('19', '留言反馈', '1', '', '/admin/guest', null, '5', 'admin/guest', '1', '2017-03-21 09:05:48', '2017-03-21 09:05:48');
INSERT INTO `admin_menu` VALUES ('20', '友情链接', '1', '', '/admin/site_link', null, '6', 'admin/site_link', '1', '2017-03-21 18:25:32', '2017-03-21 18:27:50');
INSERT INTO `admin_menu` VALUES ('21', '用户管理', '0', 'fa fa-group', '#', null, '5', 'admin/user', '1', '2017-03-21 18:26:22', '2017-03-21 18:26:22');
INSERT INTO `admin_menu` VALUES ('22', '前台菜单', '1', '', '/admin/web_menu', null, '1', 'admin/web_menu', '1', '2017-03-21 20:47:50', '2017-07-29 10:13:44');
INSERT INTO `admin_menu` VALUES ('23', '我的菜单', '9', 'fa fa-cog', '/admin/people', null, '0', 'admin/test,admin/admin_menu,admin/system,admin/site_link,admin/admin_login_logs,admin/guest,admin/web_menu', '1', '2017-07-28 11:39:26', '2017-07-28 11:39:51');

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keywords` text,
  `description` text COMMENT '介绍',
  `content` longtext,
  `file` varchar(255) DEFAULT NULL COMMENT '附件',
  `category_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('2', ' 是是是', '/uploads/images/20170318\\b0d3539dfa816fe4e857a804a259330e.png', null, '<p>ssssssssssssss</p>', null, '1', '2017-03-18 12:26:04', '2017-03-18 17:01:21');
INSERT INTO `article` VALUES ('3', '阿萨斯多', 'asdas', null, '<p>asdas</p>', null, '2', '2017-03-18 16:31:16', '2017-03-18 16:31:16');
INSERT INTO `article` VALUES ('4', 'sdfsdsd', 'sdfsdfsd', null, '<p>sdfsdsdf</p>', null, '1', '2017-03-18 16:59:57', '2017-03-18 17:13:39');
INSERT INTO `article` VALUES ('5', 'sadas', '/uploads/images/20170318\\a20279ea860d3c72c710d83172477c88.png', '12213', '<p>asdasdfd</p>', '/uploads/images/20170321\\b7ccf0c5644c5a1bbd275a810c038d91.png,', '2', '2017-03-18 17:14:16', '2017-03-21 17:00:10');
INSERT INTO `article` VALUES ('6', 'asdfasdasdasd', 'dgfdgfdgfdgf', 'dgfdgfdgf', '<p>asdasdasdas</p>', '/uploads/images/20170318\\3f1fbf0212145d09e0fc4ca2fbe2b6f0.png,', '2', '2017-03-18 17:34:13', '2017-03-18 18:22:15');

-- ----------------------------
-- Table structure for article_category
-- ----------------------------
DROP TABLE IF EXISTS `article_category`;
CREATE TABLE `article_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT '0' COMMENT '上级',
  `sort` int(11) DEFAULT '0',
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_category
-- ----------------------------
INSERT INTO `article_category` VALUES ('1', '1', '4', '操作指南', '2017-03-21 17:01:23', '2017-03-21 17:01:23');
INSERT INTO `article_category` VALUES ('2', '3', '1', '新闻资讯1', '2017-03-17 20:59:37', '2017-07-31 11:11:50');
INSERT INTO `article_category` VALUES ('3', '1', '2', '网站公告', '2017-03-17 20:59:56', '2017-03-21 16:59:54');
INSERT INTO `article_category` VALUES ('5', '5', '3', '网站公告', '2017-03-17 20:59:56', '2017-03-21 15:57:37');
INSERT INTO `article_category` VALUES ('12', '1', '5', '充值指南', '2017-03-21 17:01:34', '2017-03-21 18:08:42');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `is_show` tinyint(2) DEFAULT '1' COMMENT '是否显示1，显示；2，不显示',
  `type` tinyint(2) DEFAULT '1' COMMENT '1，基础；2，高级',
  `leixing` tinyint(2) DEFAULT '1' COMMENT '类型：1，input；2，textarea；3，radio；4，image',
  `message` varchar(255) DEFAULT NULL COMMENT '小提示',
  `sort` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'SITE_TITLE', '河南开天网络科技', '网站标题', '1', '1', '1', null, '0', '2017-03-17 16:54:29', '2017-03-17 16:54:31');
INSERT INTO `config` VALUES ('2', 'SITE_KEYWORDS', '河南开天网络科技，网站建设', '网站关键词', '1', '1', '2', null, '0', '2017-03-17 17:26:36', '2017-03-17 17:26:37');
INSERT INTO `config` VALUES ('3', 'SITE_LOGO', '/uploads/system/20170321\\e4ba614d9429d7f08a0ed9b38881d0b1.png', '网站logo', '1', '1', '4', null, '0', '2017-03-17 17:36:42', '2017-03-17 17:36:45');
INSERT INTO `config` VALUES ('4', 'SITE_FOOTER', '网站底部内容', '网站底部内容', '1', '1', '2', null, '0', null, null);

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_size` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `type` tinyint(2) DEFAULT '1' COMMENT '1，图片；2，文件',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', null, null, '/uploads/images/20170728\\7220bf847cada8af70a9930c1c772746.png', '1', '2017-07-28 10:47:00', '2017-07-28 10:47:00');
INSERT INTO `file` VALUES ('2', null, null, '/uploads/images/20170728\\643d93c9811638f9b66a9264189b2cbb.png', '1', '2017-07-28 10:47:12', '2017-07-28 10:47:12');

-- ----------------------------
-- Table structure for guest
-- ----------------------------
DROP TABLE IF EXISTS `guest`;
CREATE TABLE `guest` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '内容',
  `phone` varchar(255) DEFAULT NULL COMMENT 'l联系手机号',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of guest
-- ----------------------------

-- ----------------------------
-- Table structure for images
-- ----------------------------
DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '图片介绍',
  `pic` varchar(255) DEFAULT NULL COMMENT '图片路径',
  `pic_url` varchar(255) DEFAULT NULL COMMENT '图片链接',
  `sort` int(11) DEFAULT '0' COMMENT '排序（越大越靠前）',
  `category_id` int(11) DEFAULT NULL COMMENT '分类id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('2', '图片测试', '/uploads/images/20170318\\892b77f7ca35ed61efd1e28625c51717.jpg', '', '1', '1', '2017-03-18 14:30:18', '2017-03-18 14:33:23');
INSERT INTO `images` VALUES ('3', '微信测试', '/uploads/images/20170728\\7220bf847cada8af70a9930c1c772746.png', '', '2', '1', '2017-03-18 14:38:18', '2017-07-29 10:44:56');

-- ----------------------------
-- Table structure for image_category
-- ----------------------------
DROP TABLE IF EXISTS `image_category`;
CREATE TABLE `image_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL COMMENT '分类名',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image_category
-- ----------------------------
INSERT INTO `image_category` VALUES ('1', '首页轮播图', '2017-03-18 11:37:45', '2017-03-18 11:37:45');
INSERT INTO `image_category` VALUES ('2', '关于我们内页图', '2017-03-18 11:37:59', '2017-03-18 11:37:59');
INSERT INTO `image_category` VALUES ('3', '留言顶部图', '2017-03-18 11:38:12', '2017-03-18 11:38:12');

-- ----------------------------
-- Table structure for people
-- ----------------------------
DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=546456485 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of people
-- ----------------------------
INSERT INTO `people` VALUES ('asdas', 'sad', '1');
INSERT INTO `people` VALUES ('小黑', 'dsa', '2');
INSERT INTO `people` VALUES ('asfsa', 'ada', '3');
INSERT INTO `people` VALUES ('safa', 'asda', '4');
INSERT INTO `people` VALUES ('safsa', 'fasdas', '5');
INSERT INTO `people` VALUES ('adasda', 'saf', '6');
INSERT INTO `people` VALUES ('safa', 'safsafas', '7');
INSERT INTO `people` VALUES ('dsa', 'fsa', '546456482');
INSERT INTO `people` VALUES ('sad', 'qweqw', '546456481');
INSERT INTO `people` VALUES ('sa', 'wqe', '546456480');
INSERT INTO `people` VALUES ('sadsa', 'wqewqe', '546456479');
INSERT INTO `people` VALUES ('dsa', 'wqe', '546456478');
INSERT INTO `people` VALUES ('dsa', 'ewq', '546456477');
INSERT INTO `people` VALUES ('dsa', 'wqe', '546456476');
INSERT INTO `people` VALUES ('fsa', 'rwq', '546456475');
INSERT INTO `people` VALUES ('das', 'rwq', '546456474');
INSERT INTO `people` VALUES ('fsa', 'qwe', '546456473');
INSERT INTO `people` VALUES ('das', 'qwr', '546456472');
INSERT INTO `people` VALUES ('fsa', 'qwe', '546456471');
INSERT INTO `people` VALUES ('dsa', 'rqw', '546456470');
INSERT INTO `people` VALUES ('ds', 'qrw', '546456469');
INSERT INTO `people` VALUES ('sa', 'qwr', '546456468');
INSERT INTO `people` VALUES ('fsa', 'rqw', '546456467');
INSERT INTO `people` VALUES ('wqe', 'rqw', '546456466');
INSERT INTO `people` VALUES ('sadasfas', 'fsafsasaf', '8');
INSERT INTO `people` VALUES ('afsfafsafsa', 'sgasagg', '9');
INSERT INTO `people` VALUES ('dsa', 'sad', '546456483');
INSERT INTO `people` VALUES ('ddsaa', 'saddsa', '546456484');

-- ----------------------------
-- Table structure for site_link
-- ----------------------------
DROP TABLE IF EXISTS `site_link`;
CREATE TABLE `site_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '#',
  `site_name` varchar(255) DEFAULT NULL COMMENT '网站名称',
  `site_icon` varchar(255) DEFAULT NULL COMMENT '网站图标',
  `site_link` varchar(255) DEFAULT NULL COMMENT '网站链接',
  `status` tinyint(2) DEFAULT '1' COMMENT '1,显示，-1隐藏 状态',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_link
-- ----------------------------
INSERT INTO `site_link` VALUES ('1', '百度', '/uploads/images/20170321\\5da8315cee927d9599cc9a2dcecb65a0.png', 'http://www.baidu.com', '1', '2017-03-21 18:41:18', '2017-03-21 18:41:18');

-- ----------------------------
-- Table structure for sys_article
-- ----------------------------
DROP TABLE IF EXISTS `sys_article`;
CREATE TABLE `sys_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_article
-- ----------------------------
INSERT INTO `sys_article` VALUES ('1', '关于我们', '<p>关于我们关于我们关于我们关于我们关于我们</p>', '2017-03-17 21:43:51', '2017-03-17 22:10:08');
INSERT INTO `sys_article` VALUES ('2', '注册协议', '<p>注册协议注册协议注册协议注册协议注册协议注册协议注册协议注册协议注册协议注册协议</p>', '2017-03-17 22:10:20', '2017-03-17 22:10:20');
INSERT INTO `sys_article` VALUES ('3', '充值协议', '<p>充值协议充值协议充值协议充值协议</p>', '2017-03-17 22:14:41', '2017-03-17 22:14:41');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '1',
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1111111', '11111111', '1', null, '2017-03-18 17:55:45', '2017-03-18 17:55:45');
INSERT INTO `user` VALUES ('2', '2222222', '2222222', '-1', null, '2017-03-18 17:55:54', '2017-03-21 08:59:34');
INSERT INTO `user` VALUES ('3', '333333333', '333333', '1', null, '2017-03-18 17:55:59', '2017-03-18 17:55:59');

-- ----------------------------
-- Table structure for web_menu
-- ----------------------------
DROP TABLE IF EXISTS `web_menu`;
CREATE TABLE `web_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '#',
  `name` varchar(255) DEFAULT NULL COMMENT '菜单名',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `url` varchar(255) DEFAULT NULL COMMENT '链接',
  `icon` varchar(255) DEFAULT NULL COMMENT '图标',
  `tid` int(11) DEFAULT NULL COMMENT '上级菜单',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of web_menu
-- ----------------------------
INSERT INTO `web_menu` VALUES ('1', '首页', '1', 'web/index/index', '/uploads/images/20170321\\e4c25810315cf4f91bcb7d99b02f4d77.png', '0', '2017-03-21 21:39:50', '2017-03-21 23:39:35');
INSERT INTO `web_menu` VALUES ('2', '测试一', '2', 'web/index/index2', null, '1', '2017-03-21 21:44:30', '2017-03-21 21:44:30');

-- ----------------------------
-- Table structure for zt
-- ----------------------------
DROP TABLE IF EXISTS `zt`;
CREATE TABLE `zt` (
  `name` varchar(255) DEFAULT NULL,
  `pasword` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zt
-- ----------------------------
INSERT INTO `zt` VALUES ('132sad', 'asda', '1');
INSERT INTO `zt` VALUES ('sad', 'das', '2');
