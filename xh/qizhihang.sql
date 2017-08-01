/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : qizhihang

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-13 14:22:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
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
INSERT INTO `admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '1', '2017-03-17 11:40:26', '2017-03-17 11:40:28');

-- ----------------------------
-- Table structure for `admin_login_logs`
-- ----------------------------
DROP TABLE IF EXISTS `admin_login_logs`;
CREATE TABLE `admin_login_logs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_login_logs
-- ----------------------------
INSERT INTO `admin_login_logs` VALUES ('1', 'admin', '127.0.0.1', '2017-03-21 08:53:49');
INSERT INTO `admin_login_logs` VALUES ('2', 'admin', '127.0.0.1', '2017-03-21 11:50:10');
INSERT INTO `admin_login_logs` VALUES ('3', 'admin', '127.0.0.1', '2017-03-23 09:12:25');
INSERT INTO `admin_login_logs` VALUES ('4', 'admin', '127.0.0.1', '2017-03-25 13:57:31');
INSERT INTO `admin_login_logs` VALUES ('5', 'admin', '127.0.0.1', '2017-03-25 14:15:23');
INSERT INTO `admin_login_logs` VALUES ('6', 'admin', '127.0.0.1', '2017-03-26 14:55:47');
INSERT INTO `admin_login_logs` VALUES ('7', 'admin', '127.0.0.1', '2017-03-27 09:07:54');
INSERT INTO `admin_login_logs` VALUES ('8', 'admin', '127.0.0.1', '2017-03-27 19:07:06');
INSERT INTO `admin_login_logs` VALUES ('9', 'admin', '127.0.0.1', '2017-03-28 10:19:37');
INSERT INTO `admin_login_logs` VALUES ('10', 'admin', '127.0.0.1', '2017-03-28 11:39:07');
INSERT INTO `admin_login_logs` VALUES ('11', 'admin', '127.0.0.1', '2017-03-28 15:47:04');
INSERT INTO `admin_login_logs` VALUES ('12', 'admin', '127.0.0.1', '2017-03-29 10:50:27');
INSERT INTO `admin_login_logs` VALUES ('13', 'admin', '127.0.0.1', '2017-04-19 09:56:46');
INSERT INTO `admin_login_logs` VALUES ('14', 'admin', '127.0.0.1', '2017-05-04 16:50:39');

-- ----------------------------
-- Table structure for `admin_menu`
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '系统管理', '0', 'fa fa-cog', '', null, '0', 'admin/test,admin/admin_menu,admin/system,admin/site_link,admin/admin_login_logs,admin/guest,admin/web_menu', '1', '2017-03-17 13:07:38', '2017-03-21 20:48:04');
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
INSERT INTO `admin_menu` VALUES ('22', '前台菜单', '1', '', '/admin/web_menu', null, '6', 'admin/web_menu', '1', '2017-03-21 20:47:50', '2017-03-21 20:47:50');
INSERT INTO `admin_menu` VALUES ('23', '姓名管理', '0', 'fa fa-cog', '', null, '6', '/admin/qzh', '1', '2017-03-26 15:00:57', '2017-03-26 15:01:47');
INSERT INTO `admin_menu` VALUES ('24', '我的姓名', '23', '', '/admin/qzh', null, '1', '/admin/qzh', '1', '2017-03-26 15:02:55', '2017-03-26 15:02:55');
INSERT INTO `admin_menu` VALUES ('25', '商品弹框管理', '23', '', '/admin/tankuang', null, '5', '/admin/tankuang', '1', '2017-03-27 10:16:54', '2017-03-27 10:16:54');

-- ----------------------------
-- Table structure for `article`
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('5', 'sadas', '/uploads/images/20170318\\a20279ea860d3c72c710d83172477c88.png', '12213', '<p>asdfd</p>', '/uploads/images/20170321\\b7ccf0c5644c5a1bbd275a810c038d91.png,', '2', '2017-03-18 17:14:16', '2017-03-23 09:53:52');
INSERT INTO `article` VALUES ('6', '韩国大是大非', 'dgfdgfdgfdgf', 'dgfdgfdgf', '<p>asdasdasdas</p>', '/uploads/images/20170323\\b576bec26946bf4a4da62d81382c7e87.jpg,', '2', '2017-03-18 17:34:13', '2017-03-27 17:51:16');
INSERT INTO `article` VALUES ('7', 'wer', 'werwrwerw', 'fsdfsdfsdf', '<p>werwefdgedffsdfdsf</p>', '/uploads/images/20170323\\7bc2a9584547d06e793a48903398edc1.jpg,/uploads/images/20170327\\710883255cebbc17b6652112c1f3fc2d.png,', '2', '2017-03-23 14:54:58', '2017-03-27 18:19:18');

-- ----------------------------
-- Table structure for `article_category`
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
INSERT INTO `article_category` VALUES ('1', '0', '0', '用户指南', '2017-03-17 20:59:26', '2017-03-17 20:59:26');
INSERT INTO `article_category` VALUES ('2', '0', '0', '新闻资讯', '2017-03-17 20:59:37', '2017-03-17 20:59:37');
INSERT INTO `article_category` VALUES ('3', '0', '0', '网站公告', '2017-03-17 20:59:56', '2017-03-21 16:59:54');
INSERT INTO `article_category` VALUES ('5', '5', '0', '网站公告', '2017-03-17 20:59:56', '2017-03-21 15:57:37');
INSERT INTO `article_category` VALUES ('11', '1', '1', '操作指南', '2017-03-21 17:01:23', '2017-03-21 17:01:23');
INSERT INTO `article_category` VALUES ('12', '1', '2', '充值指南', '2017-03-21 17:01:34', '2017-03-21 18:08:42');

-- ----------------------------
-- Table structure for `article_category_copy`
-- ----------------------------
DROP TABLE IF EXISTS `article_category_copy`;
CREATE TABLE `article_category_copy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT '0' COMMENT '上级',
  `sort` int(11) DEFAULT '0',
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_category_copy
-- ----------------------------
INSERT INTO `article_category_copy` VALUES ('1', '0', '0', '用户指南', '2017-03-17 20:59:26', '2017-03-17 20:59:26');
INSERT INTO `article_category_copy` VALUES ('2', '0', '0', '新闻资讯', '2017-03-17 20:59:37', '2017-03-17 20:59:37');
INSERT INTO `article_category_copy` VALUES ('3', '0', '0', '网站公告', '2017-03-17 20:59:56', '2017-03-21 16:59:54');
INSERT INTO `article_category_copy` VALUES ('5', '5', '0', '网站公告', '2017-03-17 20:59:56', '2017-03-21 15:57:37');
INSERT INTO `article_category_copy` VALUES ('11', '1', '1', '操作指南', '2017-03-21 17:01:23', '2017-03-21 17:01:23');
INSERT INTO `article_category_copy` VALUES ('12', '1', '2', '充值指南', '2017-03-21 17:01:34', '2017-03-21 18:08:42');

-- ----------------------------
-- Table structure for `article_category_copy1`
-- ----------------------------
DROP TABLE IF EXISTS `article_category_copy1`;
CREATE TABLE `article_category_copy1` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tid` int(11) DEFAULT '0' COMMENT '上级',
  `sort` int(11) DEFAULT '0',
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of article_category_copy1
-- ----------------------------
INSERT INTO `article_category_copy1` VALUES ('1', '0', '0', '用户指南', '2017-03-17 20:59:26', '2017-03-17 20:59:26');
INSERT INTO `article_category_copy1` VALUES ('2', '0', '0', '新闻资讯', '2017-03-17 20:59:37', '2017-03-17 20:59:37');
INSERT INTO `article_category_copy1` VALUES ('3', '0', '0', '网站公告', '2017-03-17 20:59:56', '2017-03-21 16:59:54');
INSERT INTO `article_category_copy1` VALUES ('5', '5', '0', '网站公告', '2017-03-17 20:59:56', '2017-03-21 15:57:37');
INSERT INTO `article_category_copy1` VALUES ('11', '1', '1', '操作指南', '2017-03-21 17:01:23', '2017-03-21 17:01:23');
INSERT INTO `article_category_copy1` VALUES ('12', '1', '2', '充值指南', '2017-03-21 17:01:34', '2017-03-21 18:08:42');

-- ----------------------------
-- Table structure for `choujiang`
-- ----------------------------
DROP TABLE IF EXISTS `choujiang`;
CREATE TABLE `choujiang` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_ip` varchar(255) NOT NULL,
  `user_cishu` varchar(20) NOT NULL,
  `created_at` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of choujiang
-- ----------------------------
INSERT INTO `choujiang` VALUES ('8', '127.0.0.1', '1', '1491531207');

-- ----------------------------
-- Table structure for `config`
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
  `status` int(20) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES ('1', 'SITE_TITLE', '手机大抽奖', '网站标题', '1', '1', '1', null, '0', '2017-03-17 16:54:29', '2017-03-17 16:54:31', '1');
INSERT INTO `config` VALUES ('2', 'SITE_KEYWORDS', '手机抽奖', '网站关键词', '1', '1', '2', null, '0', '2017-03-17 17:26:36', '2017-03-17 17:26:37', '1');
INSERT INTO `config` VALUES ('3', 'SITE_LOGO', '/uploads/system/20170323\\755a728302596080bec6e54829b9609a.jpg', '网站logo', '1', '1', '4', null, '0', '2017-03-17 17:36:42', '2017-03-17 17:36:45', '1');
INSERT INTO `config` VALUES ('4', 'SITE_FOOTER', '网站底部内容', '网站底部内容', '1', '1', '1', null, '0', '2017-03-23 14:42:50', '2017-03-23 14:42:58', '1');
INSERT INTO `config` VALUES ('5', 'SITE_STATUS', '1', '网站是否开启', '1', '1', '3', null, '0', null, null, '1');

-- ----------------------------
-- Table structure for `file`
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', null, null, '/uploads/images/20170323\\b576bec26946bf4a4da62d81382c7e87.jpg', '1', '2017-03-23 09:17:39', '2017-03-23 09:17:39');
INSERT INTO `file` VALUES ('2', null, null, '/uploads/images/20170323\\fc1bf11fb8276443d99f02498490d34a.jpg', '1', '2017-03-23 09:27:00', '2017-03-23 09:27:00');
INSERT INTO `file` VALUES ('3', null, null, '/uploads/images/20170323\\61a69d9d9a30ef4ef35a64489ad50ec4.jpg', '1', '2017-03-23 09:28:33', '2017-03-23 09:28:33');
INSERT INTO `file` VALUES ('4', null, null, '/uploads/images/20170323\\d76d983e7a8adf9981dfa70e9efb8b44.jpg', '1', '2017-03-23 09:29:20', '2017-03-23 09:29:20');
INSERT INTO `file` VALUES ('5', null, null, '/uploads/images/20170323\\a7a0829e92ce81c96008d812b762a9c2.jpg', '1', '2017-03-23 09:31:50', '2017-03-23 09:31:50');
INSERT INTO `file` VALUES ('6', null, null, '/uploads/images/20170323\\7be7c5435df436ffd78a9968243a6a0d.jpg', '1', '2017-03-23 09:35:22', '2017-03-23 09:35:22');
INSERT INTO `file` VALUES ('7', null, null, '/uploads/images/20170323\\7bc2a9584547d06e793a48903398edc1.jpg', '1', '2017-03-23 14:54:50', '2017-03-23 14:54:50');
INSERT INTO `file` VALUES ('8', null, null, '/uploads/images/20170327\\e771c0dee02a725d3a64304a007b1991.png', '1', '2017-03-27 09:09:01', '2017-03-27 09:09:01');
INSERT INTO `file` VALUES ('9', null, null, '/uploads/images/20170327\\eef1a63eb0404bfdc9aa37f794dee4da.png', '1', '2017-03-27 10:28:36', '2017-03-27 10:28:36');
INSERT INTO `file` VALUES ('10', null, null, '/uploads/images/20170327\\0eabfe59f55a04be6fcaf0ccb0ec3b5c.jpg', '1', '2017-03-27 10:30:18', '2017-03-27 10:30:18');
INSERT INTO `file` VALUES ('11', null, null, '/uploads/images/20170327\\749a180eb031e4abb564a952e22c1458.jpg', '1', '2017-03-27 10:54:40', '2017-03-27 10:54:40');
INSERT INTO `file` VALUES ('12', null, null, '/uploads/images/20170327\\68a95f4409baaf4835cf2e98d5806308.jpg', '1', '2017-03-27 10:54:57', '2017-03-27 10:54:57');
INSERT INTO `file` VALUES ('13', null, null, '/uploads/images/20170327\\0b6a190d3e308452f328e7550687d9fb.png', '1', '2017-03-27 11:46:53', '2017-03-27 11:46:53');
INSERT INTO `file` VALUES ('14', null, null, '/uploads/images/20170327\\2de59aa0c9099af4b4dbbe9c28d17e87.jpg', '1', '2017-03-27 12:01:40', '2017-03-27 12:01:40');
INSERT INTO `file` VALUES ('15', null, null, '/uploads/images/20170327\\710883255cebbc17b6652112c1f3fc2d.png', '1', '2017-03-27 16:38:06', '2017-03-27 16:38:06');
INSERT INTO `file` VALUES ('16', null, null, '/uploads/images/20170327\\6992fb6a39bd147c7c1ad0f61a194daa.png', '1', '2017-03-27 16:42:36', '2017-03-27 16:42:36');
INSERT INTO `file` VALUES ('17', null, null, '/uploads/images/20170327\\dca7102fdbdbfbda875824f3b3a1507f.png', '1', '2017-03-27 16:42:38', '2017-03-27 16:42:38');

-- ----------------------------
-- Table structure for `guest`
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
-- Table structure for `images`
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of images
-- ----------------------------
INSERT INTO `images` VALUES ('2', '图片测试', '/uploads/images/20170323\\d76d983e7a8adf9981dfa70e9efb8b44.jpg', '', '1', '1', '2017-03-18 14:30:18', '2017-03-23 09:29:27');
INSERT INTO `images` VALUES ('3', '微信测试', '/uploads/images/20170323\\61a69d9d9a30ef4ef35a64489ad50ec4.jpg', '', '2', '1', '2017-03-18 14:38:18', '2017-03-23 09:28:42');
INSERT INTO `images` VALUES ('4', '关于我们页面底部图图片', '/uploads/images/20170323\\a7a0829e92ce81c96008d812b762a9c2.jpg', '', '2', '2', '2017-03-23 09:32:08', '2017-03-27 17:05:32');
INSERT INTO `images` VALUES ('5', '关于我们第二张', '/uploads/images/20170327\\e771c0dee02a725d3a64304a007b1991.png', '', '2', '4', '2017-03-23 09:35:30', '2017-03-27 09:09:06');

-- ----------------------------
-- Table structure for `image_category`
-- ----------------------------
DROP TABLE IF EXISTS `image_category`;
CREATE TABLE `image_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL COMMENT '分类名',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image_category
-- ----------------------------
INSERT INTO `image_category` VALUES ('1', '首页轮播图', '2017-03-18 11:37:45', '2017-03-18 11:37:45');
INSERT INTO `image_category` VALUES ('2', '关于我们内页图', '2017-03-18 11:37:59', '2017-03-18 11:37:59');
INSERT INTO `image_category` VALUES ('3', '留言顶部图', '2017-03-18 11:38:12', '2017-03-18 11:38:12');
INSERT INTO `image_category` VALUES ('5', '关于我们页面', '2017-03-28 16:15:49', '2017-03-28 16:15:49');

-- ----------------------------
-- Table structure for `nj_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `nj_userinfo`;
CREATE TABLE `nj_userinfo` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `tel` varchar(200) DEFAULT NULL,
  `name2` varchar(200) DEFAULT NULL,
  `pp` varchar(200) DEFAULT NULL,
  `cx` varchar(200) DEFAULT NULL,
  `created_at` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nj_userinfo
-- ----------------------------
INSERT INTO `nj_userinfo` VALUES ('40', '郭庆林', '13213075181', '惠济区京水社区', '华晨宝马', '宝马5系', '2017-04-15 16:25:27');
INSERT INTO `nj_userinfo` VALUES ('34', null, null, null, null, null, '2017-04-15 15:25:07');
INSERT INTO `nj_userinfo` VALUES ('35', '曹草原', '13838185009', '新郑市和庄镇辛集大门口东300米平原宾馆', '一汽奔腾', 'X40', '2017-04-15 15:30:07');
INSERT INTO `nj_userinfo` VALUES ('36', '曹方原', '15838018811', '新郑市和庄镇辛集大门口东300米平原宾馆', '一汽奔腾', 'X40', '2017-04-15 15:31:15');
INSERT INTO `nj_userinfo` VALUES ('30', '柴', '13653715402', '郑州市管城区石化路52号院', '上海大众', 'POLO', '2017-04-15 15:04:50');
INSERT INTO `nj_userinfo` VALUES ('31', '张海朋', '18738100382', '中牟县三官庙乡皛店村', '东风风度', 'MX5', '2017-04-15 15:18:37');
INSERT INTO `nj_userinfo` VALUES ('32', '张海朋', '18738100382', '中牟县三官庙乡皛店村', '东风风度', 'MX5', '2017-04-15 15:19:14');
INSERT INTO `nj_userinfo` VALUES ('33', '曹定原', '15890108912', '河南省郑州市和庄镇辛集村', '一汽奔腾', 'X40', '2017-04-15 15:24:57');
INSERT INTO `nj_userinfo` VALUES ('37', '马小顺', '15890681986', '中牟县三官庙乡坡董村', '东风风度', 'MX5', '2017-04-15 16:06:08');
INSERT INTO `nj_userinfo` VALUES ('38', '马小顺', '15890681986', '郑州市中牟县三官庙坡董村', '吉利汽车', '远景', '2017-04-15 16:09:07');
INSERT INTO `nj_userinfo` VALUES ('39', '李鑫', '15515858500', '新郑市人民路联通公司', '一汽-大众奥迪', '奥迪Q5', '2017-04-15 16:20:35');
INSERT INTO `nj_userinfo` VALUES ('41', '黄向阳', '15981909011', '远大理想城南门n3', '哈弗', 'H9', '2017-04-15 16:41:20');
INSERT INTO `nj_userinfo` VALUES ('42', '张盼', '13526888642', '郑州市二七区马寨镇张河村113调度室', '一汽丰田', '卡罗拉', '2017-04-15 16:46:42');
INSERT INTO `nj_userinfo` VALUES ('43', '张盼', '13526888642', '郑州市二七区马寨镇张河村113调度室', '一汽丰田', '卡罗拉', '2017-04-15 16:47:35');
INSERT INTO `nj_userinfo` VALUES ('44', '关全喜', '18838264344', '郑州市高新区沟赵办事处郭村豫王富苑农林科技园', '东风风行', '菱智', '2017-04-15 16:50:50');
INSERT INTO `nj_userinfo` VALUES ('45', '庞翠民', '13939087140', '郑州市高新区沟赵办事处郭村豫王富苑农林科技园', '东风风行', '菱智', '2017-04-15 16:52:46');
INSERT INTO `nj_userinfo` VALUES ('46', '孟向阳', '15303807232', '睢县唉城隍镇建设中路老防疫站院内', '广汽Jeep', '指南者', '2017-04-15 17:24:42');
INSERT INTO `nj_userinfo` VALUES ('47', '王', '15038113283', '中关大厦一楼F118', '上海大众', 'POLO', '2017-04-15 17:33:10');
INSERT INTO `nj_userinfo` VALUES ('48', '王', '15038113283', '中关大厦一楼F118', '上海大众', 'POLO', '2017-04-15 17:34:11');
INSERT INTO `nj_userinfo` VALUES ('49', '王', '15038113283', '中关大厦一楼F118', '上海大众', 'POLO', '2017-04-15 17:35:50');
INSERT INTO `nj_userinfo` VALUES ('50', '闫好利', '18037309686', '郑州大学中路95号海馨静悦酒店', '吉利汽车', '博越', '2017-04-15 17:39:36');
INSERT INTO `nj_userinfo` VALUES ('51', '史志超', '13303914156', '三门峡市开发区汽车城，三门峡天鸿汽车运输有限公司', '广汽传祺', 'GS8', '2017-04-15 17:44:29');
INSERT INTO `nj_userinfo` VALUES ('52', '刘文鹏', '18838045127', '航海路紫荆山路永恒理想世界五里堡5号楼超市', '哈弗', 'H9', '2017-04-15 17:54:45');
INSERT INTO `nj_userinfo` VALUES ('53', '田先生', '18790269805', '郑州市中原区桐柏北路城开绿园二期物业', '宝骏', '宝骏730', '2017-04-15 18:01:11');
INSERT INTO `nj_userinfo` VALUES ('54', '刘磊', '13213224603', '郑州市长江路京广路交叉口海豫花园', '哈弗', 'H6 Coupe', '2017-04-15 18:04:25');
INSERT INTO `nj_userinfo` VALUES ('55', '陈中帅', '13523473830', '河南机场集团有限公司  职工公寓', '荣威', 'i6', '2017-04-15 18:38:06');
INSERT INTO `nj_userinfo` VALUES ('56', '崔俊昌', '15515850555', '荥阳市林业局', '东风风度', 'MX6', '2017-04-15 18:42:37');
INSERT INTO `nj_userinfo` VALUES ('57', '蔡伟', '15037177977', '郑州市二七区美好佳苑7号楼三单元二楼东户', 'MG', 'ZS', '2017-04-15 18:48:03');
INSERT INTO `nj_userinfo` VALUES ('58', '杨永霞', '13140195212', '郑州市 金水区 东风路20号院河畔人家人家人家2号楼1单元2楼', '广汽Jeep', '指南者', '2017-04-15 18:50:42');
INSERT INTO `nj_userinfo` VALUES ('59', '何康', '17736966207', '郑州市二七区合作路王立砦北街6号院一单元一楼东', '一汽丰田', '卡罗拉', '2017-04-15 18:53:03');
INSERT INTO `nj_userinfo` VALUES ('60', null, null, null, null, null, '2017-04-15 18:53:13');
INSERT INTO `nj_userinfo` VALUES ('61', '何康', '17736966207', '郑州市二七区合作路王立砦北街6号院一单元一楼东', '一汽丰田', '卡罗拉', '2017-04-15 18:53:38');
INSERT INTO `nj_userinfo` VALUES ('62', '马彦杰', '13523726666', '中原区鸟语花香餐厅', 'Jeep(进口) ', '自由光(进口)', '2017-04-15 19:01:35');
INSERT INTO `nj_userinfo` VALUES ('63', '刘梦浩', '15890109936', '中原区冉囤路与秦岭路晶华城29号楼2单元', '吉利汽车', '帝豪GS', '2017-04-15 19:13:18');
INSERT INTO `nj_userinfo` VALUES ('64', '刘梦浩', '15890109936', '中原区冉囤路与秦岭路晶华城29号楼2单元', '吉利汽车', '帝豪GS', '2017-04-15 19:13:32');
INSERT INTO `nj_userinfo` VALUES ('65', '李昕雨', '18537137114', '文化路北三环横店影视城四楼', '一汽丰田', '卡罗拉', '2017-04-15 19:15:34');
INSERT INTO `nj_userinfo` VALUES ('66', '李昕雨', '18537137114', '文化路北三环横店影视城四楼', '一汽丰田', '卡罗拉', '2017-04-15 19:15:40');
INSERT INTO `nj_userinfo` VALUES ('67', '牛帅峰', '13526405327', '郑州惠济区古荥镇孙庄村', '上汽通用别克', '英朗', '2017-04-15 19:36:13');
INSERT INTO `nj_userinfo` VALUES ('68', '殷治华', '18625901747', '河南省郑州市新郑航空港区豫康新城山顶公寓', '哈弗', 'H6', '2017-04-15 20:34:18');
INSERT INTO `nj_userinfo` VALUES ('69', '李金芳', '13803908581', '平顶山市舞钢市朱兰', '荣威', 'RX5', '2017-04-15 20:41:10');
INSERT INTO `nj_userinfo` VALUES ('70', '孟庆利', '18639000588', '郑州东区龙子湖高校园区华北水利水电大学', '一汽丰田', '威驰FS', '2017-04-15 20:42:34');
INSERT INTO `nj_userinfo` VALUES ('71', '赵框', '13949098550', '电厂路化工路向东500米龙腾西城', '广汽丰田', '雷凌', '2017-04-15 20:47:15');
INSERT INTO `nj_userinfo` VALUES ('72', '王小东', '17709151805', '郑州市黄河路10号院2号楼1单元', '长安福特', '致胜', '2017-04-15 20:49:33');
INSERT INTO `nj_userinfo` VALUES ('73', '金志强', '13623855919', '郑州市二七区保全街10号院4-1-602', '广汽Jeep', '自由光', '2017-04-15 20:51:22');
INSERT INTO `nj_userinfo` VALUES ('74', '李小开', '18153056068', '河南省新蔡县古吕镇喜盈门西教堂门口', '众泰汽车', '云100', '2017-04-15 20:52:59');
INSERT INTO `nj_userinfo` VALUES ('75', '李小开', '18153056068', '河南省新蔡县古吕镇喜盈门西教堂门口', '众泰汽车', '云100', '2017-04-15 20:53:56');
INSERT INTO `nj_userinfo` VALUES ('76', '王自兴', '15286806197', '郑州市莆田西路与七里河南路交叉口河南一建工地', '吉利汽车', '帝豪', '2017-04-15 21:09:18');
INSERT INTO `nj_userinfo` VALUES ('77', '郭帅', '15538270646', '郑州市管城区西大街205号中国人寿五楼502', '哈弗', 'H6', '2017-04-15 21:12:09');
INSERT INTO `nj_userinfo` VALUES ('78', '孙闯', '13676916350', '郑州市管城区郑汴路未来路交叉口绿都广场A座2606室', '东风风行', 'S500', '2017-04-15 21:29:35');
INSERT INTO `nj_userinfo` VALUES ('79', '孙发金', '13083605932', '郑州市中原区秦岭路与西流湖路交叉口凯安医院往南100米江苏华江建设工地', '吉利汽车', '帝豪GS', '2017-04-15 21:41:29');
INSERT INTO `nj_userinfo` VALUES ('80', '朱朋', '13663818784', '中牟县东工都市家苑北院', '广汽Jeep', '指南者', '2017-04-15 21:44:05');
INSERT INTO `nj_userinfo` VALUES ('81', '聂新远', '18537125885', '河南省郑州市金水区花园北路省直花园55号', '东风风光', '330', '2017-04-15 21:45:35');
INSERT INTO `nj_userinfo` VALUES ('82', '王鹤', '18595608720', '新郑市龙湖镇祥安路向东小区11号楼三层五号', '江淮', '瑞风S3', '2017-04-15 21:50:56');
INSERT INTO `nj_userinfo` VALUES ('83', '陈鹏飞', '18939524840', '二七万达广场12B', '长安商用', '欧诺', '2017-04-15 21:51:59');
INSERT INTO `nj_userinfo` VALUES ('84', '冉书祥', '15137138089', '郑州经济开发区九龙镇太平庄五组', '江淮', '瑞风', '2017-04-15 21:58:07');
INSERT INTO `nj_userinfo` VALUES ('85', '周全来', '18838069606', '郑州市二七区京广南路十号院中岳大厦1号楼2911', '一汽-大众奥迪', '奥迪A4L ', '2017-04-15 21:58:31');
INSERT INTO `nj_userinfo` VALUES ('86', '董菁华', '18638192979', '中牟县广惠花园东楼503', '长安福特', '锐界', '2017-04-15 22:06:13');
INSERT INTO `nj_userinfo` VALUES ('87', '高东雷', '15890661901', '河南省新郑市烟厂大街178号（地质队招待所正对面）铭和复印店', '广汽Jeep', '自由光', '2017-04-15 22:16:11');
INSERT INTO `nj_userinfo` VALUES ('88', '赵金海', '13503485158', '大石桥清华园B座1308室', '吉利汽车', '豪情SUV', '2017-04-15 22:19:28');
INSERT INTO `nj_userinfo` VALUES ('89', '赵金海', '13503485158', '大石桥清华园B座1308室', '吉利汽车', '豪情SUV', '2017-04-15 22:19:42');
INSERT INTO `nj_userinfo` VALUES ('90', '李统友', '13523496115', '化工路西段16号收割机厂院内', '东风风神', 'AX7', '2017-04-15 22:19:53');
INSERT INTO `nj_userinfo` VALUES ('91', '王魁', '15538229000', '新郑市人民医院解放路院区', '广汽本田', '奥德赛', '2017-04-15 22:41:38');
INSERT INTO `nj_userinfo` VALUES ('92', ' 徐女土', '13643823178', '建新街66号院', '哈弗', 'H6', '2017-04-15 22:44:20');
INSERT INTO `nj_userinfo` VALUES ('93', '杨光辉', '13783595362', '郑汴路与未来路交叉口向南300路西黑马广告店', '上汽通用别克', '昂科威', '2017-04-15 22:48:04');
INSERT INTO `nj_userinfo` VALUES ('94', '累先生', '13213021731', '建新街75号', '广汽丰田', '汉兰达', '2017-04-15 22:56:57');
INSERT INTO `nj_userinfo` VALUES ('95', '杨星亮', '15538718959', '永平路康平路鑫苑世纪东城西苑3号楼2单元1103', '宝骏', '宝骏310', '2017-04-15 22:59:09');
INSERT INTO `nj_userinfo` VALUES ('96', '姚莉', '18937108719', '河南省郑州市金水区永威翡翠城5号楼一单元503', '保时捷', '保时捷911', '2017-04-15 23:19:39');
INSERT INTO `nj_userinfo` VALUES ('97', '毛杰超', '18568225693', '河南省郑州市金水区永威翡翠城5号楼一单元503', '吉利汽车', '博越', '2017-04-15 23:21:19');
INSERT INTO `nj_userinfo` VALUES ('98', '吴发强', '13592569990', '中牟一高，中牟县学苑路', '一汽-大众奥迪', '奥迪Q5', '2017-04-15 23:21:24');
INSERT INTO `nj_userinfo` VALUES ('99', '司宽', '15324809666', '郑州市中牟县郑庵镇宏达车业广场', '众泰汽车', 'Z700', '2017-04-15 23:22:00');
INSERT INTO `nj_userinfo` VALUES ('100', '杜新新', '15838117433', '中牟县姚家镇姚家镇工业园区冠宇工贸有限公司', '宝骏', '宝骏510', '2017-04-15 23:23:14');
INSERT INTO `nj_userinfo` VALUES ('101', '刘勇', '18538349609', '郑州市经开区第五大街170号河南邦仁医药', '吉利汽车', '金刚', '2017-04-15 23:46:28');
INSERT INTO `nj_userinfo` VALUES ('102', '张松涛', '13674996445', '郑州市二七区马寨镇学院路马寨一中', '广汽传祺', 'GS4', '2017-04-15 23:49:33');
INSERT INTO `nj_userinfo` VALUES ('103', '尹中', '13838018068', '中原路西三环湖光苑', '广汽Jeep', '自由光', '2017-04-16 00:10:28');
INSERT INTO `nj_userinfo` VALUES ('104', '尹中', '13838018068', '中原路湖光苑', '斯柯达', '柯迪亚克', '2017-04-16 00:11:49');
INSERT INTO `nj_userinfo` VALUES ('105', '尹中', '13838018068', '中原路湖光苑', '上汽通用雪佛兰', '探界者', '2017-04-16 00:12:33');
INSERT INTO `nj_userinfo` VALUES ('106', '刘胜其', '13027781368', '中原区梧桐新语2号搂', '东风悦达起亚', 'KX5', '2017-04-16 00:19:08');
INSERT INTO `nj_userinfo` VALUES ('107', '丁利苹', '18530712951', '河南省郑州市管城回族区文德路福耀玻璃有限公司', '广汽传祺', 'GS4', '2017-04-16 00:25:22');
INSERT INTO `nj_userinfo` VALUES ('108', '张雷', '13592560369', '郑州市淮河路9号建委对面', 'MG', '锐腾', '2017-04-16 00:45:19');
INSERT INTO `nj_userinfo` VALUES ('109', '陈文涛', '18530712950', '河南省郑州市管城回族区文德路福耀玻璃有限公司', '广汽传祺', 'GS4', '2017-04-16 01:27:50');
INSERT INTO `nj_userinfo` VALUES ('110', '孟勋', '13607640322', '郑州市金水区花园路59号21世纪社区', '一汽-大众奥迪', '奥迪A6L', '2017-04-16 07:12:17');
INSERT INTO `nj_userinfo` VALUES ('111', '张先生', '13733836158', '郑州南曹乡郑州29中旁雅视眼镜', 'MG', '锐腾', '2017-04-16 07:43:47');
INSERT INTO `nj_userinfo` VALUES ('112', '张志刚', '15639009303', '南阳路大石桥丹尼斯soho广场de座2010室', '上海大众', '凌渡', '2017-04-16 07:53:16');
INSERT INTO `nj_userinfo` VALUES ('113', '余名洋', '15517100173', '未来路德风街中联花园3号楼', '奇瑞汽车', '艾瑞泽5', '2017-04-16 07:59:02');
INSERT INTO `nj_userinfo` VALUES ('114', '田娟', '18336466955', '郑州经济技术开发区经南三路与十四大街交叉口桂香苑8号楼', '北汽威旺', 'M20', '2017-04-16 08:00:12');
INSERT INTO `nj_userinfo` VALUES ('115', '田娟', '18336466955', '郑州经济技术开发区经南三路与十四大街交叉口桂香苑8号楼三单元', '北汽威旺', 'M20', '2017-04-16 08:05:55');
INSERT INTO `nj_userinfo` VALUES ('116', '田娟', '18336466955', '郑州经济技术开发区经南三路与十四大街交叉口桂香苑8号楼三单元', '北汽威旺', 'M20', '2017-04-16 08:07:14');
INSERT INTO `nj_userinfo` VALUES ('117', '师欢庆', '13027795697', '河南省郑州市高新区玉兰街创业大厦', '一汽丰田', '卡罗拉', '2017-04-16 08:39:36');
INSERT INTO `nj_userinfo` VALUES ('118', '钟红光', '18530922468', '郑州市二七区华中路腾晖花园1号楼902', '上汽通用雪佛兰', '赛欧', '2017-04-16 08:43:20');
INSERT INTO `nj_userinfo` VALUES ('119', '张浩', '18738112694', '郑州市二七区行云路腾晖花园1号楼902', '上汽通用雪佛兰', '赛欧', '2017-04-16 08:46:00');
INSERT INTO `nj_userinfo` VALUES ('120', '韩宏伟', '18838081086', '河南省郑州市紫荆山路商城路裕鸿国际b座1008', '东南汽车', 'DX3', '2017-04-16 08:46:28');
INSERT INTO `nj_userinfo` VALUES ('121', '刘国浩', '13733154707', '郑州市金水区中州大道与连霍高速交叉口向南600米路西', '长安福特', '蒙迪欧', '2017-04-16 08:58:08');
INSERT INTO `nj_userinfo` VALUES ('122', '王永强', '13333811292', '郑州市瑞达路19号南流小区', '东风风神', '东风A9', '2017-04-16 09:06:35');
INSERT INTO `nj_userinfo` VALUES ('123', '高', '15737543754', '平顶山市郏县李口镇', '东风风行', 'SX6', '2017-04-16 09:19:02');
INSERT INTO `nj_userinfo` VALUES ('124', '窦欣', '13213293355', '郑州市金水路通泰路向南50米yu\'xing', '吉利汽车', '帝豪GL', '2017-04-16 09:26:13');
INSERT INTO `nj_userinfo` VALUES ('125', '宋亚军', '15639508187', '中原区棉防路与同', '长安汽车', 'CS75', '2017-04-16 09:43:00');
INSERT INTO `nj_userinfo` VALUES ('126', '左伟超', '15038152808', '新郑市和庄镇火车站', '广汽本田', '飞度', '2017-04-16 09:45:07');
INSERT INTO `nj_userinfo` VALUES ('127', '宋亚军', '15639508187', '中原区棉防路盛润锦绣城', '奇瑞汽车', '艾瑞泽5', '2017-04-16 09:45:10');
INSERT INTO `nj_userinfo` VALUES ('128', '张明明', '15137106167', '郑州北三环文化路瀚海北金A座7007室', '上海大众', 'POLO', '2017-04-16 10:04:46');
INSERT INTO `nj_userinfo` VALUES ('129', '唐威娥', '15224987567', '惠济区福利园路西湖花园东区53号楼', '一汽大众', '迈腾', '2017-04-16 10:14:52');
INSERT INTO `nj_userinfo` VALUES ('130', '李宝军', '15838075613', '北三环福利园路西湖花园东区53号楼一单元四楼东户', '荣威', 'RX5', '2017-04-16 10:21:28');
INSERT INTO `nj_userinfo` VALUES ('131', '李宝军', '15838075613', '北三环福利园路西湖花园东区53号楼一单元四楼东户', '荣威', 'RX5', '2017-04-16 10:21:55');
INSERT INTO `nj_userinfo` VALUES ('132', '薛冰', '15138989570', '美景天城15号楼四单元201', '上汽通用别克', '威朗', '2017-04-16 10:27:50');
INSERT INTO `nj_userinfo` VALUES ('133', '刘海伟', '15324962628', '河南省新郑市观音寺镇前河刘大队下河村', '吉利汽车', '帝豪', '2017-04-16 10:39:53');
INSERT INTO `nj_userinfo` VALUES ('134', '孙俊宇', '15038036877', '郑州航空港区航南新城安置区4号地', '长安福特', '福睿斯', '2017-04-16 10:43:54');
INSERT INTO `nj_userinfo` VALUES ('135', '孙俊宇', '15038036877', '郑州航空港区航南新城安置区4号地', '长安福特', '福睿斯', '2017-04-16 10:44:38');
INSERT INTO `nj_userinfo` VALUES ('136', '高阳', '13838214698', '新郑壹品蓝湾', '猎豹汽车', 'CS10', '2017-04-16 10:45:32');
INSERT INTO `nj_userinfo` VALUES ('137', '刘海伟', '15324962628', '河南省新郑市观音寺镇前河刘大队下河村', '吉利汽车', '帝豪', '2017-04-16 10:49:49');
INSERT INTO `nj_userinfo` VALUES ('138', '高阳', '13838214698', '新郑壹品蓝湾', '猎豹汽车', 'CS10', '2017-04-16 10:50:13');
INSERT INTO `nj_userinfo` VALUES ('139', '杨喜兰', '13949033633', '郑州市管城区富田太阳城童星幼儿园', '江淮', '瑞风A60', '2017-04-16 10:51:29');
INSERT INTO `nj_userinfo` VALUES ('140', '刘海伟', '15324962628', '河南省新郑市观音寺镇前河刘大队下河村', '吉利汽车', '帝豪', '2017-04-16 11:05:27');
INSERT INTO `nj_userinfo` VALUES ('141', '陈林', '17788121553', '新郑市郑州大学西亚斯国际学院', '东南汽车', 'DX3', '2017-04-16 11:14:38');
INSERT INTO `nj_userinfo` VALUES ('142', '秦中州', '15238662233', '新密市曲梁镇第二初级中学', '东风日产', '奇骏', '2017-04-16 11:22:21');
INSERT INTO `nj_userinfo` VALUES ('143', '秦中州', '15238662233', '新密市曲梁镇第二初级中学', '东风日产', '奇骏', '2017-04-16 11:23:29');
INSERT INTO `nj_userinfo` VALUES ('144', '陈二鹏', '13676928660', '美巢装修', '阿斯顿马丁', 'Vanquish', '2017-04-16 11:26:36');
INSERT INTO `nj_userinfo` VALUES ('145', '刘胜', '15638286871', '祥盛街建业如意家园19号楼', '华晨宝马', '宝马3系', '2017-04-16 11:36:05');
INSERT INTO `nj_userinfo` VALUES ('146', '刘晓光', '18623798106', '洛阳市栾川县庙子镇', '猎豹汽车', 'CS6', '2017-04-16 11:40:18');
INSERT INTO `nj_userinfo` VALUES ('147', '厉建勇', '13674975802', '南阳路和孟寨南街，10号五号楼六楼', '众泰汽车', 'Z700', '2017-04-16 11:44:21');
INSERT INTO `nj_userinfo` VALUES ('148', '张伟', '15038225803', '中牟县城河街佳琪窗帘店', '一汽大众', '迈腾', '2017-04-16 11:49:49');
INSERT INTO `nj_userinfo` VALUES ('149', '乔森', '15225072783', '中原万达a座2133', '哈弗', 'H7', '2017-04-16 12:02:14');
INSERT INTO `nj_userinfo` VALUES ('150', '王杰', '17719855859', '文化路农业路建业贰号城邦', '一汽丰田', '卡罗拉', '2017-04-16 12:08:30');
INSERT INTO `nj_userinfo` VALUES ('151', '王春艳', '18237113301', '新郑市新建北路粮食储备库院内一休', '长安福特', '福睿斯', '2017-04-16 12:09:16');
INSERT INTO `nj_userinfo` VALUES ('152', '李海龙', '17752507871', '丰产路27号院', '江淮', '瑞风S3', '2017-04-16 12:15:52');
INSERT INTO `nj_userinfo` VALUES ('153', '杨帅', '17638183281', '郑州东风南路地铁c口中通快递院内', '北汽威旺', 'M50F', '2017-04-16 12:16:03');
INSERT INTO `nj_userinfo` VALUES ('154', '左明阳', '15896632540', '河南省郑州市中原区华山路联运家属院4号楼2单元1南户楼', '宝骏', '宝骏510', '2017-04-16 12:17:41');
INSERT INTO `nj_userinfo` VALUES ('155', '左明阳', '15896632540', '郑州市中原区华山路联运家属院4号楼2单元一楼南户', '东南汽车', 'DX3', '2017-04-16 12:19:48');
INSERT INTO `nj_userinfo` VALUES ('156', '左明阳', '15896632540', '郑州市中原区华山路联运家属院4号楼2单元1楼南户', '宝骏', '宝骏510', '2017-04-16 12:21:40');
INSERT INTO `nj_userinfo` VALUES ('157', '赵保丰', '15238071658', '焦作市武陟县乔庙乡前赵村向阳五街', '启辰', 'T90', '2017-04-16 12:27:42');
INSERT INTO `nj_userinfo` VALUES ('158', '李国伟', '15538388898', '金水区国基路108号9号楼', '一汽大众', '宝来', '2017-04-16 12:39:38');
INSERT INTO `nj_userinfo` VALUES ('159', '谢大海', '15939012293', '第一大街与经北三路交叉口碧桂园工地', '众泰汽车', 'SR9', '2017-04-16 12:42:14');
INSERT INTO `nj_userinfo` VALUES ('160', '郭江', '18574172110', '郑州市二七区侯', '广汽传祺', 'GS8', '2017-04-16 12:42:18');
INSERT INTO `nj_userinfo` VALUES ('161', '陈占强', '18638648818', '荥阳市310国道与塔山路交叉口南苑春光小区', '广汽本田', '锋范', '2017-04-16 12:42:47');
INSERT INTO `nj_userinfo` VALUES ('162', '郭江', '18574172110', '郑州市二七区侯乡侯寨村228', '广汽传祺', 'GS8', '2017-04-16 12:43:08');
INSERT INTO `nj_userinfo` VALUES ('163', '郭江', '18574172110', '郑州市二七区侯寨乡侯寨村228号', '广汽传祺', 'GS8', '2017-04-16 12:43:21');
INSERT INTO `nj_userinfo` VALUES ('164', '吴琨鹏', '13526565216', '郑州市二七区中原路兴华街交叉口，绿城广场南交通银行五楼512室', '哈弗', 'H6', '2017-04-16 12:55:50');
INSERT INTO `nj_userinfo` VALUES ('165', '林元元', '13673878998', '鹿邑县教体局', '广汽传祺', 'GS8', '2017-04-16 13:14:32');
INSERT INTO `nj_userinfo` VALUES ('166', '刘灿军', '15617777288', '郑州市中原区中原西路42号', '哈弗', 'H6 Coupe', '2017-04-16 13:17:35');
INSERT INTO `nj_userinfo` VALUES ('167', '杨峰', '17719831081', '中牟商都路与万三路交叉口星城国际', '东风雪铁龙', 'C4L', '2017-04-16 13:21:24');
INSERT INTO `nj_userinfo` VALUES ('168', '李广建', '15603813868', '郑州市未来路与福元路', '起亚(进口)', '极睿', '2017-04-16 13:23:52');
INSERT INTO `nj_userinfo` VALUES ('169', '赵女士', '13503822785', '河南省郑州市管城区', '广汽传祺', 'GS8', '2017-04-16 13:24:57');
INSERT INTO `nj_userinfo` VALUES ('170', '谭勇', '18903851856', '郑州市纬五路30号院2号楼5单元2楼37号', 'MG', 'ZS', '2017-04-16 13:34:29');
INSERT INTO `nj_userinfo` VALUES ('171', '王作洋', '13253622720', '河南省郑州市二七区青秀佳苑9号楼', '东风风行', '景逸X3', '2017-04-16 13:36:56');
INSERT INTO `nj_userinfo` VALUES ('172', '纪志强', '13838176074', '金水区中方园东区21号楼', '一汽-大众奥迪', '奥迪Q5', '2017-04-16 13:37:49');
INSERT INTO `nj_userinfo` VALUES ('173', '郑贡献', '13271070733', '河南省新乡市北环路188号力之星西门', '广汽传祺', 'GS4', '2017-04-16 13:43:48');
INSERT INTO `nj_userinfo` VALUES ('174', '李慧珍', '13213116051', '郑州市中牟县永福街祥和小区五号楼401室', '长安福特', '锐界', '2017-04-16 13:59:29');
INSERT INTO `nj_userinfo` VALUES ('175', '王书凯', '13298348625', '河南省郑州市中牟县永福街祥和小区5号楼401室', '长安福特', '锐界', '2017-04-16 14:02:09');
INSERT INTO `nj_userinfo` VALUES ('176', '李慧珍', '13213116051', '郑州市中牟县永福街祥和小区五号楼401室', '长安福特', '锐界', '2017-04-16 14:06:35');
INSERT INTO `nj_userinfo` VALUES ('177', '翁志愿', '13017676317', '郑东新区圃田乡河沟王安置区北门大药房', '哈弗', 'H6', '2017-04-16 15:14:18');
INSERT INTO `nj_userinfo` VALUES ('178', '刘柯', '13333847192', '河南省新郑市龙王乡庙前刘村', '哈弗', 'H9', '2017-04-16 15:23:44');
INSERT INTO `nj_userinfo` VALUES ('179', '王先生', '18538072515', '金水路与民航路交叉口文物交流大厦一楼', '一汽丰田', '卡罗拉', '2017-04-16 15:34:17');
INSERT INTO `nj_userinfo` VALUES ('180', '孙玉伟', '13700857865', '河南省郑州市新郑市航空港区薛店镇薛店南街村', '东南汽车', 'DX3', '2017-04-16 15:40:50');
INSERT INTO `nj_userinfo` VALUES ('181', '孙玉伟', '13700857865', '河南省郑州市新郑市航空港区薛店镇薛店南街村', '东南汽车', 'DX3', '2017-04-16 15:41:08');
INSERT INTO `nj_userinfo` VALUES ('182', '孙玉伟', '13700857865', '河南省郑州市新郑市航空港区薛店镇薛店南街村', '东南汽车', 'V3菱悦', '2017-04-16 15:41:15');
INSERT INTO `nj_userinfo` VALUES ('183', '夏宪中', '13700887156', '任砦北街3号院7号楼东门=楼', '宝骏', '宝骏510', '2017-04-16 15:44:23');
INSERT INTO `nj_userinfo` VALUES ('184', '夏宪中', '13700887156', '任砦北街3号院7号楼东门=楼', '宝骏', '宝骏510', '2017-04-16 15:44:35');
INSERT INTO `nj_userinfo` VALUES ('185', '夏宪中', '13700887156', '任砦北街3号院7号楼东门=楼', '宝骏', '宝骏510', '2017-04-16 15:45:32');
INSERT INTO `nj_userinfo` VALUES ('186', '夏宪中', '13700887156', '任砦北街3号院7号楼东门=楼', '宝骏', '宝骏510', '2017-04-16 15:45:48');
INSERT INTO `nj_userinfo` VALUES ('187', '马芳芳', '13526437407', '河南省中牟县官渡大街大海照相馆', '广汽丰田', 'YARiS L 致炫', '2017-04-16 15:52:23');
INSERT INTO `nj_userinfo` VALUES ('188', '马根群', '15093338346', '河南省中牟县官渡大街大海照相馆', '广汽丰田', 'YARiS L 致炫', '2017-04-16 15:53:07');
INSERT INTO `nj_userinfo` VALUES ('189', '马蕊蕊', '18838122037', '河南省中牟县官渡大街大海照相馆', '宝骏', '宝骏310', '2017-04-16 15:58:45');
INSERT INTO `nj_userinfo` VALUES ('190', '赵海仙', '15038172274', '河南省中牟县官渡大街大海照相馆', '宝骏', '宝骏310', '2017-04-16 15:59:26');
INSERT INTO `nj_userinfo` VALUES ('191', '吴旭晓', '13503845896', '郑州市经开区第五大街经北一路87号', '长安福特', '福睿斯', '2017-04-16 15:59:40');
INSERT INTO `nj_userinfo` VALUES ('192', '马尧', '15136485846', '河南省中牟县官渡大街大海照相馆', '宝骏', '宝骏310', '2017-04-16 16:00:06');
INSERT INTO `nj_userinfo` VALUES ('193', '景彩华', '13803895026', '郑州二七区大学路与南四环百荣世贸A2区7排386号腾龙干果', '广汽丰田', '汉兰达', '2017-04-16 16:19:46');
INSERT INTO `nj_userinfo` VALUES ('194', '陈璐', '13838563190', '郑州市建设路秦岭路金源第一城17号楼1单元1002', '一汽丰田', '卡罗拉', '2017-04-16 16:29:11');
INSERT INTO `nj_userinfo` VALUES ('195', '禹建蛟', '13137122240', '郑州市花园路与三全路花半里\'小区', '广汽丰田', '雷凌', '2017-04-16 16:33:57');
INSERT INTO `nj_userinfo` VALUES ('196', '刘兴幸', '15903645643', '郑州市高新区西四环大师姑村', '长安商用', '欧诺', '2017-04-16 16:37:28');
INSERT INTO `nj_userinfo` VALUES ('197', '关全喜', '18838264344', '郑州市高新区沟赵办事处郭村豫王富苑农林科园', '东风风行', '菱智', '2017-04-16 16:37:39');
INSERT INTO `nj_userinfo` VALUES ('198', '张培培', '13633952871', '河南省郑州市管城区南曹乡野曹村一通路兴友公司', '宝骏', '宝骏510', '2017-04-16 16:41:40');
INSERT INTO `nj_userinfo` VALUES ('199', '别小伟', '13103800504', '化工路与梧桐街兰寨新城小区1号楼', '吉利汽车', '远景', '2017-04-16 16:44:05');
INSERT INTO `nj_userinfo` VALUES ('200', '张小翠', '15737107116', '高新区药厂街祝福红城3期', '长城汽车', 'C30', '2017-04-16 16:47:47');
INSERT INTO `nj_userinfo` VALUES ('201', '唐爱军', '15136151817', '高新区药厂街祝福红城3期', 'Jeep(进口) ', '自由光(进口)', '2017-04-16 16:49:17');
INSERT INTO `nj_userinfo` VALUES ('202', '朱传武', '18637277080', '河南省郑州市河南省中医院东风路一号', '比亚迪', 'S7', '2017-04-16 16:59:16');
INSERT INTO `nj_userinfo` VALUES ('203', '王俊', '13592549684', '郑州市中牟县祥云街中段房管局办公室', '哈弗', 'H2', '2017-04-16 17:02:45');
INSERT INTO `nj_userinfo` VALUES ('204', '赵利强', '17703831283', '东风路铁道东风花园', '广汽传祺', 'GS4', '2017-04-16 17:11:12');
INSERT INTO `nj_userinfo` VALUES ('205', null, null, null, null, null, '2017-04-16 17:11:21');
INSERT INTO `nj_userinfo` VALUES ('206', '张杰', '15617824766', '花园路花半里2号楼（花园路西侧）', '斯柯达', '明锐', '2017-04-16 17:13:25');
INSERT INTO `nj_userinfo` VALUES ('207', '蒋国栋', '15981995411', '河南省郑州市中牟县九龙镇宇通和谐家园六区七号楼', '上海大众', '朗逸', '2017-04-16 17:22:31');
INSERT INTO `nj_userinfo` VALUES ('208', '陈明贺', '18703836033', '河南省平顶山市叶县东环路曹庄学校南50米凯迪宾馆', '东风本田', 'XR-V', '2017-04-16 17:30:33');
INSERT INTO `nj_userinfo` VALUES ('209', '贾广兵', '15517152955', '郑州桐柏路沁河路欧丽小区', '江铃福特', '探险者', '2017-04-16 17:34:36');
INSERT INTO `nj_userinfo` VALUES ('210', '赵先生', '13673396205', '金水区南阳路大石桥', '吉利汽车', '远景SUV', '2017-04-16 17:58:05');
INSERT INTO `nj_userinfo` VALUES ('211', '谢长军', '18664348898', '二七区嵩山路黄岗寺小区', '长安福特', '锐界', '2017-04-16 18:25:47');
INSERT INTO `nj_userinfo` VALUES ('212', '陈红锋', '15517597507', '新密市曲梁镇锦荣衣天下j15西', '吉利汽车', '帝豪GL', '2017-04-16 18:44:01');
INSERT INTO `nj_userinfo` VALUES ('213', '王', '13838195002', '新密市苟堂镇', '长安福特', '翼搏', '2017-04-16 18:58:37');
INSERT INTO `nj_userinfo` VALUES ('214', '彩红旗', '18438214404', '郑州市郑东新区，商都路通泰路世贸中心B座2102', '猎豹汽车', 'CS10', '2017-04-16 19:12:54');
INSERT INTO `nj_userinfo` VALUES ('215', '单文涛', '15333835561', '安阳市内黄县果蔬城美食城', '吉利汽车', '远景SUV', '2017-04-16 19:21:44');
INSERT INTO `nj_userinfo` VALUES ('216', '李本行', '18638670407', '郑州市二七区一马路街道铁道苗圃花园19号院一号楼三单元', '沃尔沃', 'S60L', '2017-04-16 19:22:47');
INSERT INTO `nj_userinfo` VALUES ('217', '翟梦丽', '18530082165', '河南省郑州市二七区一马路铁道苗圃花园19号院1楼3单元', '沃尔沃', 'S60L', '2017-04-16 19:22:54');
INSERT INTO `nj_userinfo` VALUES ('218', '李鹏举', '18790895151', '河南省林州市东姚镇财税所', '吉利汽车', '帝豪GS', '2017-04-16 19:44:26');
INSERT INTO `nj_userinfo` VALUES ('219', '孙超峰', '13838041903', '郑州市上街区汝南路桃源名门17号楼2单元302', '启辰', 'T90', '2017-04-16 19:45:49');
INSERT INTO `nj_userinfo` VALUES ('220', '孙超峰', '13838041903', '郑州市上街区汝南路桃源名门17号楼2单元302', '启辰', 'T90', '2017-04-16 19:46:40');
INSERT INTO `nj_userinfo` VALUES ('221', '孙超峰', '13838041903', '郑州市上街区汝南路桃源名门17号楼2单元302', '启辰', 'T90', '2017-04-16 19:47:06');
INSERT INTO `nj_userinfo` VALUES ('222', '李晓庆', '18737193823', '荥阳市郑上路屏荣食品厂', '宝骏', '宝骏730', '2017-04-16 19:48:41');
INSERT INTO `nj_userinfo` VALUES ('223', '李鹏举', '18790895151', '河南省林州市东姚镇财税所', '吉利汽车', '帝豪GS', '2017-04-16 19:52:30');
INSERT INTO `nj_userinfo` VALUES ('224', '安萍', '13838133272', '郑州市上街区', '启辰', 'T90', '2017-04-16 19:53:20');
INSERT INTO `nj_userinfo` VALUES ('225', '安萍', '13838133272', '郑州市上街区济源路郑州银行上街支行', '启辰', 'T90', '2017-04-16 19:54:38');
INSERT INTO `nj_userinfo` VALUES ('226', '安萍', '13838133272', '郑州市上街区济源路郑州银行上街支行', '启辰', 'T90', '2017-04-16 19:55:27');
INSERT INTO `nj_userinfo` VALUES ('227', '蒋兴业', '13140129590', '中原工学院南苑九号楼', '宝马(进口)', '宝马Z4', '2017-04-16 20:08:22');
INSERT INTO `nj_userinfo` VALUES ('228', '王旭', '15903618009', '金水区红旗路122号院2号楼6楼西户', '长安福特', '锐界', '2017-04-16 20:24:05');
INSERT INTO `nj_userinfo` VALUES ('229', '刘利会', '18790823807', '河南省安阳市安阳地区医院   家庭一起去', '吉利汽车', '帝豪GS', '2017-04-16 20:30:42');
INSERT INTO `nj_userinfo` VALUES ('230', '蔡海龙', '15903687605', '新郑市新建路风台苑小区', '广汽传祺', 'GS4', '2017-04-16 20:33:56');
INSERT INTO `nj_userinfo` VALUES ('231', '张蕊', '18937451299', '河南省许昌市健康路西湖左岸小区7号楼402', '广汽三菱', '劲炫ASX', '2017-04-16 20:35:37');
INSERT INTO `nj_userinfo` VALUES ('232', '张蕊', '18937451299', '河南省许昌市健康路西湖左岸小区7号楼402', '广汽三菱', '劲炫ASX', '2017-04-16 20:37:32');
INSERT INTO `nj_userinfo` VALUES ('233', '关建涛', '18237502908', '河南平顶山郏县薛店', '广汽传祺', 'GS4', '2017-04-16 20:42:36');
INSERT INTO `nj_userinfo` VALUES ('234', '关纪航', '15151734051', '河南平顶山郏县薛店', '广汽传祺', 'GA5新能源', '2017-04-16 20:44:44');
INSERT INTO `nj_userinfo` VALUES ('235', '范永华', '18595524088', '高新区科学大道高新广告产业园4号楼26楼办公室', '荣威', 'RX5', '2017-04-16 21:11:06');
INSERT INTO `nj_userinfo` VALUES ('236', '宋笑育', '15617908946', '郑州市郑东新区金水东路与心怡路绿地新都会1202', '长安福特', '福克斯', '2017-04-16 21:26:20');
INSERT INTO `nj_userinfo` VALUES ('237', '连先生', '15938781816', '中牟县牟山路富源花都5号楼1单元', '猎豹汽车', 'Q6', '2017-04-16 21:28:10');
INSERT INTO `nj_userinfo` VALUES ('238', '孙先生', '13592460897', '河南省荥阳市', '一汽大众', '高尔夫', '2017-04-16 21:33:51');
INSERT INTO `nj_userinfo` VALUES ('239', '周伟东', '18236776564', '管城区经开第十五大街', '哈弗', 'H6', '2017-04-16 21:39:53');
INSERT INTO `nj_userinfo` VALUES ('240', '郭红伟', '18039281612', '郑州高新区银屏路19号', '广汽传祺', 'GS8', '2017-04-16 21:42:07');
INSERT INTO `nj_userinfo` VALUES ('241', '徐占敏', '18610614910', '荥阳市', '一汽大众', '高尔夫', '2017-04-16 21:42:47');
INSERT INTO `nj_userinfo` VALUES ('242', '邵高升', '18864115756', '锦艺城', '上汽通用别克', '威朗', '2017-04-16 21:44:46');
INSERT INTO `nj_userinfo` VALUES ('243', '宋华龙', '18638663513', '郑州市航海路与中州大道交叉口一站式购物广场二楼永乐电器厨卫科', '哈弗', 'H6', '2017-04-16 21:53:16');
INSERT INTO `nj_userinfo` VALUES ('244', '张海峰', '15938762380', '郑州市新郑市航空港区天成公寓29A201', '荣威', 'RX5', '2017-04-16 22:04:55');
INSERT INTO `nj_userinfo` VALUES ('245', '闫坤', '18037772690', '管城区李南岗', '东风日产', 'LANNIA 蓝鸟', '2017-04-16 22:29:40');
INSERT INTO `nj_userinfo` VALUES ('246', '周杰', '18639495787', '郑州市港区郑港六路郑港6街', '哈弗', 'H5', '2017-04-16 22:36:31');
INSERT INTO `nj_userinfo` VALUES ('247', '陈月红', '13253512059', '东明路与城北路交叉口外贸仓库3号楼5号库', '现代(进口)', '劳恩斯-酷派', '2017-04-16 22:39:04');
INSERT INTO `nj_userinfo` VALUES ('248', '杨', '18639015255', '二七区', '广汽丰田', '汉兰达', '2017-04-16 22:52:08');
INSERT INTO `nj_userinfo` VALUES ('249', '李', '18638570407', '郑州市二七区一马路街道铁道苗圃家园19号院一号楼3单元', '沃尔沃', 'S60L', '2017-04-16 22:54:55');
INSERT INTO `nj_userinfo` VALUES ('250', '李玉林', '15617579889', '金水区金水路与玉凤路交叉口南100米发展国际706', '一汽-大众奥迪', '奥迪A3', '2017-04-16 23:37:17');
INSERT INTO `nj_userinfo` VALUES ('251', '贾金龙', '18736029740', '中牟县九龙镇和谐家园五区五号楼', '广汽传祺', 'GS4', '2017-04-16 23:37:47');
INSERT INTO `nj_userinfo` VALUES ('252', '岳卫林', '13014662322', '新郑市祥和3街', '奇瑞汽车', '艾瑞泽7', '2017-04-16 23:38:35');
INSERT INTO `nj_userinfo` VALUES ('253', '陈亚萌', '18637171523', '乾宏领袖空间8号楼一栋430', '东风标致', '308', '2017-04-16 23:43:35');
INSERT INTO `nj_userinfo` VALUES ('254', '张军鹏', '13733166271', '秦岭路与汝河路向西100米汝河烟酒商行', 'MG', '锐腾', '2017-04-16 23:44:34');
INSERT INTO `nj_userinfo` VALUES ('255', '张军鹏', '13733166271', '秦岭路与汝河路向西100米汝河烟酒商行', 'MG', '锐腾', '2017-04-16 23:47:08');
INSERT INTO `nj_userinfo` VALUES ('256', '刘晓兵', '13673397748', '阳光嘉苑19楼', '宝骏', '宝骏310', '2017-04-17 00:13:57');
INSERT INTO `nj_userinfo` VALUES ('257', '刘晓兵', '13673397748', '阳光嘉苑19楼', '宝骏', '宝骏310', '2017-04-17 00:15:09');
INSERT INTO `nj_userinfo` VALUES ('258', '高阳', '18574131867', '经开第七大街经北二路交叉口烛光苑小区', '北京现代', '名图', '2017-04-17 00:25:21');
INSERT INTO `nj_userinfo` VALUES ('259', '冯先生', '13526566568', '中原路建校家属院', '长安福特', '福睿斯', '2017-04-17 00:31:30');
INSERT INTO `nj_userinfo` VALUES ('260', '冯先生', '13526566568', '中原路建校家属院', '长安福特', '福睿斯', '2017-04-17 00:32:10');
INSERT INTO `nj_userinfo` VALUES ('261', '姚月昊', '18339991722', '中原路茜城五月天七号楼1单元1122', '东南汽车', 'V3菱悦', '2017-04-17 00:34:55');
INSERT INTO `nj_userinfo` VALUES ('262', '张伯野', '18637138654', '中原路茜城五月天七号楼1单元1122', '东南汽车', 'V3菱悦', '2017-04-17 00:36:20');
INSERT INTO `nj_userinfo` VALUES ('263', '张祥义', '13653814246', '郑州管城区商城东里11号院一单元5楼东', '上海大众', '帕萨特', '2017-04-17 07:24:53');
INSERT INTO `nj_userinfo` VALUES ('264', '张祥义', '13653814246', '郑州管城区商城东里11号院一单元5楼东', '上海大众', '帕萨特', '2017-04-17 07:25:32');
INSERT INTO `nj_userinfo` VALUES ('265', '张祥义', '13653814246', '郑州管城区商城东里11号院一单元5楼东', '上海大众', '帕萨特', '2017-04-17 07:27:34');
INSERT INTO `nj_userinfo` VALUES ('266', '张祥义', '13653814246', '郑州管城区商城东里11号院一单元5楼东', '上海大众', '帕萨特', '2017-04-17 07:28:16');
INSERT INTO `nj_userinfo` VALUES ('267', '孙振强', '18538932270', '郑州市白沙镇电厂路富康嘉苑一期门卫室', '宝骏', '宝骏510', '2017-04-17 07:30:18');
INSERT INTO `nj_userinfo` VALUES ('268', '蔡剑', '13523564548', '九龙镇加油站对面古川门业', '东风悦达起亚', 'KX3', '2017-04-17 07:31:48');
INSERT INTO `nj_userinfo` VALUES ('269', '姜金明', '13938295363', '新密市城关镇老城北后街720号', '比亚迪', '宋', '2017-04-17 07:58:36');
INSERT INTO `nj_userinfo` VALUES ('270', '姜金明', '13938295363', '新密市城关镇老城北后街720号', '比亚迪', '宋', '2017-04-17 07:59:33');
INSERT INTO `nj_userinfo` VALUES ('271', '白春光', '15639085237', '郑州市高新区冬青街12号创业中心5号院北楼3层客服部', '上汽通用雪佛兰', '赛欧', '2017-04-17 08:01:36');
INSERT INTO `nj_userinfo` VALUES ('272', '张雅丽', '15838168549', '新密市城关镇老城北后街小广场', '比亚迪', '秦', '2017-04-17 08:01:44');
INSERT INTO `nj_userinfo` VALUES ('273', '刘渊', '17737126100', '郑东新区千玺广场31楼3111', '一汽大众', '速腾', '2017-04-17 08:35:16');
INSERT INTO `nj_userinfo` VALUES ('274', '周留彬', '13525522527', '玉凤路福元路南浦国际1727', '猎豹汽车', 'CS10', '2017-04-17 09:18:09');
INSERT INTO `nj_userinfo` VALUES ('275', '郭保许', '15515852221', '郑州市中牟县张庄镇南街百乐购', '上汽通用五菱', '五菱宏光', '2017-04-17 09:29:07');
INSERT INTO `nj_userinfo` VALUES ('276', '朱银刚', '15039675173', '河南省汝南县', '北汽威旺', 'M30', '2017-04-17 09:55:08');
INSERT INTO `nj_userinfo` VALUES ('277', '张兰格', '15539357678', '濮阳市大庆路238号', '长安福特', '福睿斯', '2017-04-17 09:55:29');
INSERT INTO `nj_userinfo` VALUES ('278', '宫建卫', '15238686166', '新密市气象北街西大街浴池', '一汽丰田', '卡罗拉', '2017-04-17 10:25:31');
INSERT INTO `nj_userinfo` VALUES ('279', '王玉彬', '15981862828', '新密市民康路，益康园店', '一汽丰田', '卡罗拉', '2017-04-17 10:25:38');
INSERT INTO `nj_userinfo` VALUES ('280', '朱艳申', '15036081806', '管城区金城街36号院', '上汽通用五菱', '五菱荣光V', '2017-04-17 10:28:09');
INSERT INTO `nj_userinfo` VALUES ('281', '马红霞', '15036096491', '新郑龙湖二中', '一汽丰田', '威驰', '2017-04-17 10:32:23');
INSERT INTO `nj_userinfo` VALUES ('282', '丁铭森', '18638237774', '中原区枫杨办事处国槐街15号', '东风悦达起亚', 'K5', '2017-04-17 10:52:43');
INSERT INTO `nj_userinfo` VALUES ('283', '宋宁', '15690788716', '郑州金水区姚桥路五月花', '宝骏', '宝骏510', '2017-04-17 12:17:51');
INSERT INTO `nj_userinfo` VALUES ('284', '宋宁', '15690788716', '郑州金水区姚桥路五月花城', '宝骏', '宝骏510', '2017-04-17 12:18:24');
INSERT INTO `nj_userinfo` VALUES ('285', '张国华', '18638733329', '东明路47号大河商务楼511室', 'Jeep(进口) ', '指南者(进口)', '2017-04-17 12:26:56');
INSERT INTO `nj_userinfo` VALUES ('286', '刘二涛', '18638114320', '中州大道维也纳森林15号楼506', '众泰汽车', 'T600', '2017-04-17 12:27:31');
INSERT INTO `nj_userinfo` VALUES ('287', '王华', '18703970323', '货站北街货栈街83号一楼中', '众泰汽车', 'E200', '2017-04-17 12:44:50');
INSERT INTO `nj_userinfo` VALUES ('288', '李明', '18703845333', '二七区大学南路郑航街王胡寨幸福家园3号楼1单元1602', '北京奔驰', 'E级', '2017-04-17 13:13:11');
INSERT INTO `nj_userinfo` VALUES ('289', '刘红丽', '13623711161', '郑州新密大卫镇观寨村026号', '江淮', '瑞风S2mini', '2017-04-17 13:22:41');
INSERT INTO `nj_userinfo` VALUES ('290', '杨', '13285070521', '管城区，南曹乡，被装修理所', '猎豹汽车', 'Q6', '2017-04-17 13:25:30');
INSERT INTO `nj_userinfo` VALUES ('291', '楚亚飞', '13393888836', '商务外环西七街中华保险大厦22楼', '广汽本田', '飞度', '2017-04-17 13:29:56');
INSERT INTO `nj_userinfo` VALUES ('292', '刘巧丽', '15837122635', '东风路同乐小区南院51楼1单元5号', '别克(进口)', '昂科雷', '2017-04-17 13:34:44');
INSERT INTO `nj_userinfo` VALUES ('293', '李猛', '13838055822', '郑州市二七区航海中路68号国营嵩山机械厂', '广汽丰田', '汉兰达', '2017-04-17 13:42:33');
INSERT INTO `nj_userinfo` VALUES ('294', '贾志江', '18837165733', '郑州经济开放区明湖街道亚太花园小区1栋5单元4楼西户', '一汽丰田', '卡罗拉', '2017-04-17 13:43:33');
INSERT INTO `nj_userinfo` VALUES ('295', '岳喜文', '15517552659', '郑州市高新区科学大道西四环企业公园顺丰速运', '宝骏', '宝骏730', '2017-04-17 13:51:36');
INSERT INTO `nj_userinfo` VALUES ('296', '关松峰', '13273737776', '原阳县', '郑州日产', '锐骐皮卡 ', '2017-04-17 13:55:36');
INSERT INTO `nj_userinfo` VALUES ('297', '赵', '15038933337', '禹州市机器制造集团公司', '奇瑞汽车', '艾瑞泽7', '2017-04-17 14:01:24');
INSERT INTO `nj_userinfo` VALUES ('298', '赵', '15038933337', '禹州市机器制造集团公司', '奇瑞汽车', '艾瑞泽7', '2017-04-17 14:02:40');
INSERT INTO `nj_userinfo` VALUES ('299', '闫超男', '13343829063', '郑州市紫荆山路新郑路康城棕榈泉17号楼2单元', '猎豹汽车', 'CS10', '2017-04-17 14:06:57');
INSERT INTO `nj_userinfo` VALUES ('300', '毛春艳', '15093691044', '兰考县文体中心', '奇瑞汽车', '艾瑞泽5', '2017-04-17 14:08:41');
INSERT INTO `nj_userinfo` VALUES ('301', '李白玉', '15225139659', '河南省郑州市二七区马寨镇满星路一号', 'MG', 'ZS', '2017-04-17 14:39:32');
INSERT INTO `nj_userinfo` VALUES ('302', '高金广', '13903844193', '郑州市二七区兴华南街与南三环交叉囗郑州图书城A205号。', '广汽丰田', '汉兰达', '2017-04-17 15:01:26');
INSERT INTO `nj_userinfo` VALUES ('303', '刘锋', '15343820755', '东风南路，祥盛街口建业如意家园1号楼4单元7楼西户。', '上汽通用雪佛兰', '科鲁兹', '2017-04-17 15:03:19');
INSERT INTO `nj_userinfo` VALUES ('304', '闫艳艳', '15837140979', '郑州市西三环电厂路正商明钻沁园', 'Jeep(进口) ', '指南者(进口)', '2017-04-17 15:09:58');
INSERT INTO `nj_userinfo` VALUES ('305', '赵利伟', '15603902719', '河南省新郑市八千乡人民路与新港大道交叉口五矿二十三冶项目部', '江铃汽车', '驭胜S350', '2017-04-17 15:14:32');
INSERT INTO `nj_userinfo` VALUES ('306', '赵俊杰', '13939202091', '河南省新郑市八千乡人民路与新港大道交叉口五矿二十三冶项目部', '荣威', 'RX5', '2017-04-17 15:16:30');
INSERT INTO `nj_userinfo` VALUES ('307', '赵俊杰', '13939202091', '新郑市八千乡人民路与新港大道交叉口五矿二十三冶项目部', '荣威', 'RX5', '2017-04-17 15:23:46');
INSERT INTO `nj_userinfo` VALUES ('308', '刘畅', '15838088082', '航海东路与中州大道交叉口富田太阳城一楼海澜之家', '长安福特', '蒙迪欧', '2017-04-17 15:25:04');
INSERT INTO `nj_userinfo` VALUES ('309', '姚坤', '15093202467', '郑州市北环路57号清清佳苑一号楼', '哈弗', 'H2s', '2017-04-17 15:38:10');
INSERT INTO `nj_userinfo` VALUES ('310', '孙晓静', '13949051708', '河南郑州恵济广高速', '东风风行', 'F600', '2017-04-17 15:43:59');
INSERT INTO `nj_userinfo` VALUES ('311', '贾广兵', '15517152955', '中原区桐柏路沁河路欧丽小区', '江铃福特', '福克斯(进口)', '2017-04-17 15:51:45');
INSERT INTO `nj_userinfo` VALUES ('312', '石继硕', '18738133298', '郑州中原区', '斯柯达', '晶锐', '2017-04-17 16:00:12');
INSERT INTO `nj_userinfo` VALUES ('313', '孟青松', '15903649939', '郑州市管城回族区紫东路荷塘月色西区一号楼', '东南汽车', 'DX3', '2017-04-17 16:14:27');
INSERT INTO `nj_userinfo` VALUES ('314', '孟青松', '15903649939', '郑州市管城回族区紫东路荷塘月色西区一号楼', '东南汽车', 'DX3', '2017-04-17 16:15:31');
INSERT INTO `nj_userinfo` VALUES ('315', '孟青松', '15903649939', '郑州市管城回族区紫东路荷塘月色西区一号楼', '东南汽车', 'DX3', '2017-04-17 16:16:17');
INSERT INTO `nj_userinfo` VALUES ('316', '谷亚辉', '15518056161', '周口市邦杰路农机公司', '荣威', 'RX5', '2017-04-17 16:17:48');
INSERT INTO `nj_userinfo` VALUES ('317', '李健', '13623817144', '京广南路联合雅园西院', '奇瑞汽车', '艾瑞泽5', '2017-04-17 16:19:38');
INSERT INTO `nj_userinfo` VALUES ('318', '张中勤', '13949047465', '仁恒上元小区', '长城汽车', 'C50', '2017-04-17 16:22:05');
INSERT INTO `nj_userinfo` VALUES ('319', '李志超', '15981845028', '荥阳市工业南路鑫鑫花园', 'MG', 'ZS', '2017-04-17 16:40:48');
INSERT INTO `nj_userinfo` VALUES ('320', '冀是', '15838163386', '金水区博颂路与丰庆路富邦铭邸1号楼', '众泰汽车', 'T600', '2017-04-17 16:43:52');
INSERT INTO `nj_userinfo` VALUES ('321', '屈', '13838289052', '五栋大楼A座910爱巢木业', '荣威', '350', '2017-04-17 16:47:38');
INSERT INTO `nj_userinfo` VALUES ('322', '桑帅锋', '13523293786', '禹州市韩城办光明街光明小区西楼六楼南户', 'MG', 'ZS', '2017-04-17 17:00:30');
INSERT INTO `nj_userinfo` VALUES ('323', '郑瑞锋', '13460626099', '开封市尉氏县小陈乡小齐村', '哈弗', 'H6', '2017-04-17 17:10:35');
INSERT INTO `nj_userinfo` VALUES ('324', '邹品稳', '13623869751', '新郑市西亚斯国际学院QQ美食', '广汽传祺', 'GS8', '2017-04-17 17:26:24');
INSERT INTO `nj_userinfo` VALUES ('325', '孙斌', '13592605369', '开发区小双桥村', '一汽丰田', '普拉多', '2017-04-17 17:46:20');
INSERT INTO `nj_userinfo` VALUES ('326', '孙斌', '13592605369', '开发区小双桥村', '一汽丰田', '普拉多', '2017-04-17 17:47:02');
INSERT INTO `nj_userinfo` VALUES ('327', '袁百峰', '13939041759', '中牟银榕小区', '吉利汽车', '帝豪GS', '2017-04-17 18:02:12');
INSERT INTO `nj_userinfo` VALUES ('328', '张顺利', '15537162968', '河南省巩义市西村镇西村村', '东风风神', 'AX5', '2017-04-17 18:30:49');
INSERT INTO `nj_userinfo` VALUES ('329', '张顺利', '15537162968', '河南省巩义市西村镇西村村', '东风风神', 'AX5', '2017-04-17 18:31:16');
INSERT INTO `nj_userinfo` VALUES ('330', '李文昶', '18838238344', '河南省巩义市桐本路安乐街上口有间客栈小巷内', '昌河汽车', 'M50', '2017-04-17 18:39:05');
INSERT INTO `nj_userinfo` VALUES ('331', '李建新', '13700862935', '河南省巩义市桐本路安乐街上口有间客栈小巷内', '昌河汽车', 'M50', '2017-04-17 18:40:43');
INSERT INTO `nj_userinfo` VALUES ('332', '景艺博', '15037197678', '登封市行政服务中心', '广汽传祺', 'GS8', '2017-04-17 18:57:01');
INSERT INTO `nj_userinfo` VALUES ('333', '陆生', '18927564548', '郑东新区心怡路畅和街26号院高层', '一汽大众', '宝来', '2017-04-17 18:58:50');
INSERT INTO `nj_userinfo` VALUES ('334', '王女士', '13525595712', '郑州市美景鸿城一期7号楼', '长安福特', '福克斯', '2017-04-17 19:32:06');
INSERT INTO `nj_userinfo` VALUES ('335', '张先生', '13838152331', '郑州市七里河美景鸿城一期7号楼', '上汽通用别克', '英朗', '2017-04-17 19:34:03');
INSERT INTO `nj_userinfo` VALUES ('336', '王先生', '17797769359', '郑州市七里河美景鸿城一期7号楼', '上汽通用别克', '君越', '2017-04-17 19:36:08');
INSERT INTO `nj_userinfo` VALUES ('337', '张先生', '13525595712', '郑州市七里河美景鸿城一期7号楼', '上汽通用别克', '凯越', '2017-04-17 19:37:25');
INSERT INTO `nj_userinfo` VALUES ('338', '王建立', '13523487719', '郑州市十八里河宇通公司南门行政北楼510房', '吉利汽车', '远景SUV', '2017-04-17 19:43:38');
INSERT INTO `nj_userinfo` VALUES ('339', '李城炜', '13608689161', '郑州市利海托斯卡纳小区', '上汽通用别克', '英朗', '2017-04-17 19:44:19');
INSERT INTO `nj_userinfo` VALUES ('340', '韩淼', '13525533693', '黄河路姚寨路交叉口金成时代广场6号楼1604室', '哈弗', 'H6', '2017-04-17 19:46:41');
INSERT INTO `nj_userinfo` VALUES ('341', '张慧', '15038192861', '郑州南三环淮南街郑飞公司', '东风风度', 'MX6', '2017-04-17 19:47:11');
INSERT INTO `nj_userinfo` VALUES ('342', '李艳谊', '13937748294', '黄河路姚寨路交叉口金成时代广场6号楼1604室', '哈弗', 'H6', '2017-04-17 19:49:09');
INSERT INTO `nj_userinfo` VALUES ('343', '李艳谊', '13937748294', '黄河路姚寨路交叉口金成时代广场6号楼1604室', '哈弗', 'H6', '2017-04-17 19:49:41');
INSERT INTO `nj_userinfo` VALUES ('344', '王凡', '13203709655', '郑州金水区红专路东明路名门国际1309', '华晨宝马', '宝马3系', '2017-04-17 19:58:38');
INSERT INTO `nj_userinfo` VALUES ('345', '李', '15981894761', '普罗旺世六期七号楼1单元2905', '一汽大众', '迈腾', '2017-04-17 20:11:23');
INSERT INTO `nj_userinfo` VALUES ('346', '张先生', '17734789060', '11', '东南汽车', 'DX7', '2017-04-17 20:19:15');
INSERT INTO `nj_userinfo` VALUES ('347', '司志利', '13460310275', '龙湖镇康桥溪桂园', '吉利汽车', '帝豪', '2017-04-17 20:44:04');
INSERT INTO `nj_userinfo` VALUES ('348', '高飞', '13592449827', '文化路95号', '东风风光', '370', '2017-04-17 20:49:27');
INSERT INTO `nj_userinfo` VALUES ('349', '张许', '18939265067', '新郑市龙湖镇鸿鹄花园小区', '北汽威旺', 'M50F', '2017-04-17 20:50:06');
INSERT INTO `nj_userinfo` VALUES ('350', '张学堂', '15838091366', '中牟县青年路党校家属院', '郑州日产', '帅客', '2017-04-17 21:02:52');
INSERT INTO `nj_userinfo` VALUES ('351', '陈苛飞', '15093161030', '农业南路与商都路交叉口东南角中信银行', '广汽丰田', '凯美瑞', '2017-04-17 21:05:45');
INSERT INTO `nj_userinfo` VALUES ('352', '杜长玉', '13213190939', '郑州航空港区八岗办事处蔡庄坡村', '吉利汽车', '豪情SUV', '2017-04-17 21:07:45');
INSERT INTO `nj_userinfo` VALUES ('353', '张洁', '13193923212', '文龙小区', '一汽马自达', 'CX-4', '2017-04-17 21:08:41');
INSERT INTO `nj_userinfo` VALUES ('354', '路文明', '13663866110', '中牟县畜牧局家属院', '郑州日产', '帅客', '2017-04-17 21:09:41');
INSERT INTO `nj_userinfo` VALUES ('355', '宋建斌', '13643849686', '二七区候寨乡杨朵村候寨农贸批发市场', '东风风行', '菱智', '2017-04-17 21:11:39');
INSERT INTO `nj_userinfo` VALUES ('356', '陈晨', '15837101118', '中牟县党校家属院', 'smart', 'forfour', '2017-04-17 21:12:36');
INSERT INTO `nj_userinfo` VALUES ('357', '丁艳红', '15038692630', '偃师劳动街102号', '哈弗', 'H6', '2017-04-17 21:15:13');
INSERT INTO `nj_userinfo` VALUES ('358', '李沛颖', '15517952630', '偃师市槐庙村劳动街102号', '哈弗', 'H2', '2017-04-17 21:16:37');
INSERT INTO `nj_userinfo` VALUES ('359', '张怡春', '13653848965', '中牟县青年路党校家属院', 'smart', 'forfour', '2017-04-17 21:27:44');
INSERT INTO `nj_userinfo` VALUES ('360', '董丽亚', '13949001861', '郑州市金水区黄河路与东三街交叉口东南角MINI国际1804室      ', 'Jeep(进口) ', '大切诺基(进口)', '2017-04-17 21:32:12');
INSERT INTO `nj_userinfo` VALUES ('361', '王亚非', '13603999790', '1、麻烦把  止血粉  发至：三门峡市中心医院   陈欣    13030360766   顺丰快递寄至医院，邮费多少发给我，我转你微信郑州市金水区黄河路与东三街交叉口东南角MINI国际1804室    ', 'Jeep(进口) ', '大切诺基(进口)', '2017-04-17 21:33:03');
INSERT INTO `nj_userinfo` VALUES ('362', '王亚非', '13603999790', '郑州市金水区黄河路与东三街交叉口东南角MINI国际1804室   ', 'Jeep(进口) ', '大切诺基(进口)', '2017-04-17 21:34:32');
INSERT INTO `nj_userinfo` VALUES ('363', '钟良帅', '13849066115', '登封市宣化', '一汽马自达', 'CX-4', '2017-04-17 21:42:16');
INSERT INTO `nj_userinfo` VALUES ('364', '靳保民', '13598024994', '新郑市宏基王朝牡丹园', '荣威', 'i6', '2017-04-17 21:54:45');
INSERT INTO `nj_userinfo` VALUES ('365', '张予红', '18336307117', '新郑市宏基王朝牡丹园', '荣威', 'i6', '2017-04-17 21:58:00');
INSERT INTO `nj_userinfo` VALUES ('366', '姜永宁', '18530929915', '郑州市九龙镇八里湾村美菜网', '昌河铃木', '北斗星', '2017-04-17 22:02:30');
INSERT INTO `nj_userinfo` VALUES ('367', '张学军', '17603721255', '汤阴w', '吉利汽车', '远景', '2017-04-17 22:03:00');
INSERT INTO `nj_userinfo` VALUES ('368', '曾峥', '17719828950', '荥阳实验高中', '一汽奔腾', 'B50', '2017-04-17 22:24:52');
INSERT INTO `nj_userinfo` VALUES ('369', '秦', '18625507335', '管城区紫荆山路城南路黄金叶小区', '哈弗', 'H1', '2017-04-17 22:25:20');
INSERT INTO `nj_userinfo` VALUES ('370', '王新军', '15803999807', '前程一条街', '北汽威旺', '306', '2017-04-17 22:43:16');
INSERT INTO `nj_userinfo` VALUES ('371', '杨红顺', '13140011899', '郑州市中原区煤仓北街22号院16号楼38号', '观致汽车', '观致3', '2017-04-17 22:49:01');
INSERT INTO `nj_userinfo` VALUES ('372', '王云', '13526526867', '二七区保全街95号院9号楼2单元2楼西户', '东风本田', 'CR-V', '2017-04-17 23:01:20');
INSERT INTO `nj_userinfo` VALUES ('373', '谢军伟', '13526514801', '郑州市经开区经开第五大街88号', '荣威', 'i6', '2017-04-17 23:04:54');
INSERT INTO `nj_userinfo` VALUES ('374', '路继伟', '13607645913', '保全街95号院9号楼2单元2楼西户', '雷诺(进口)', '科雷傲(进口)', '2017-04-17 23:06:42');
INSERT INTO `nj_userinfo` VALUES ('375', '闫斌斌', '17638592314', '河南省巩义市烟草局对面云顶记火锅店', '吉利汽车', '金刚', '2017-04-17 23:25:14');
INSERT INTO `nj_userinfo` VALUES ('376', '闫怡琳', '15038054926', '河南省巩义市烟草局对面云鼎记火锅店', '吉利汽车', '金刚', '2017-04-17 23:27:20');
INSERT INTO `nj_userinfo` VALUES ('377', '郭晓东', '15225179391', '郑州市中牟县姚家镇罗宋村', '一汽大众', '速腾', '2017-04-17 23:37:18');
INSERT INTO `nj_userinfo` VALUES ('378', '王实权', '13938411618', '新郑市薛店镇南街村', '吉利汽车', '博越', '2017-04-17 23:39:49');
INSERT INTO `nj_userinfo` VALUES ('379', '陈晓川', '13140120857', '郑汴路英协广场b座9008', 'MG', 'ZS', '2017-04-18 00:05:19');
INSERT INTO `nj_userinfo` VALUES ('380', '王博', '13526652151', '丰庆路正商世纪港湾', '长安福特', '福克斯', '2017-04-18 00:20:18');
INSERT INTO `nj_userinfo` VALUES ('381', '尹明勋', '18539911890', '郑州市二七区郑州火车站红珊瑚大酒店', '哈弗', 'H7', '2017-04-18 00:21:58');
INSERT INTO `nj_userinfo` VALUES ('382', '韩飞', '15824717647', '河南省郑州市中牟县张庄镇锦绣绿苑小区35栋305', '上汽通用别克', '英朗', '2017-04-18 00:34:43');
INSERT INTO `nj_userinfo` VALUES ('383', '李晨淼', '13213079922', '郑州市二七区保全街21号', '吉利汽车', '博越', '2017-04-18 00:43:49');
INSERT INTO `nj_userinfo` VALUES ('384', '武东岭', '18790541489', '惠济区花园路金桥路十号北方学校', '吉利汽车', '博越', '2017-04-18 00:44:01');
INSERT INTO `nj_userinfo` VALUES ('385', '李晨淼', '13783531668', '保全街21号', '吉利汽车', '博越', '2017-04-18 00:44:36');
INSERT INTO `nj_userinfo` VALUES ('386', '. 翟先生', '18037329506', '现场领取', '一汽丰田', '卡罗拉', '2017-04-18 00:55:40');
INSERT INTO `nj_userinfo` VALUES ('387', '孙时武', '13683825158', '尉氏县大桥乡', '江铃福特', '探险者', '2017-04-18 01:02:53');
INSERT INTO `nj_userinfo` VALUES ('388', '苏卫华', '13613863360', '嵩山北路农业路交叉口', '广汽传祺', 'GS8', '2017-04-18 01:07:36');
INSERT INTO `nj_userinfo` VALUES ('389', '苏卫华', '13613863360', '嵩山北路农业路交叉口', '广汽传祺', 'GS8', '2017-04-18 01:07:47');
INSERT INTO `nj_userinfo` VALUES ('390', '张开科', '13949131440', '中牟县韩寺镇', '江淮', '瑞风M3', '2017-04-18 02:02:36');
INSERT INTO `nj_userinfo` VALUES ('391', '徐相辉', '18903860500', '河南省巩义市北山口镇水地河村   巩义市金岭耐火材料有限公司', '一汽丰田', '卡罗拉', '2017-04-18 06:22:40');
INSERT INTO `nj_userinfo` VALUES ('392', '刘魂', '15036111230', '城东路88号院', '江淮', '瑞风M4', '2017-04-18 07:07:58');
INSERT INTO `nj_userinfo` VALUES ('393', '韩新伟', '15516757518', '河南省郑州市金水区杨金路办事处大贺庄', '哈弗', 'H2', '2017-04-18 07:09:42');
INSERT INTO `nj_userinfo` VALUES ('394', '刘魂', '15036111230', '城东路88号院', '江淮', '瑞风M4', '2017-04-18 07:12:00');
INSERT INTO `nj_userinfo` VALUES ('395', '刘记华', '15036111230', '城东路88号院', '江淮', '瑞风M4', '2017-04-18 07:13:04');
INSERT INTO `nj_userinfo` VALUES ('396', '孙国声', '13333893886', '新圃东街2号院', '北京现代', '朗动', '2017-04-18 07:13:37');
INSERT INTO `nj_userinfo` VALUES ('397', '刘记华', '15036111230', '城东路88号院', '江淮', '瑞风M4', '2017-04-18 07:14:05');
INSERT INTO `nj_userinfo` VALUES ('398', '贾玉峰', '13703822681', '新郑市梨河镇供销社', '一汽丰田', '锐志', '2017-04-18 07:23:45');
INSERT INTO `nj_userinfo` VALUES ('399', '李迎春', '15137153810', '焦作市山阳区中海漓江五号楼1803', '一汽大众', '迈腾', '2017-04-18 07:34:31');
INSERT INTO `nj_userinfo` VALUES ('400', '李迎春', '15137153810', '焦作市山阳区中海漓江五号楼1803', '一汽大众', '迈腾', '2017-04-18 07:35:13');
INSERT INTO `nj_userinfo` VALUES ('401', '李迎春', '15137153810', '焦作市山阳区中海漓江五号楼1803', '一汽大众', '迈腾', '2017-04-18 07:36:46');
INSERT INTO `nj_userinfo` VALUES ('402', '李迎春', '15137153810', '焦作市山阳区中海漓江五号楼1803', '一汽大众', '迈腾', '2017-04-18 07:36:59');
INSERT INTO `nj_userinfo` VALUES ('403', '李迎春', '15137153810', '焦作市山阳区中海漓江五号楼1803', '一汽大众', '迈腾', '2017-04-18 07:37:29');
INSERT INTO `nj_userinfo` VALUES ('404', '李迎春', '15137153810', '焦作市山阳区中海漓江五号楼1803', '一汽大众', '迈腾', '2017-04-18 07:38:52');
INSERT INTO `nj_userinfo` VALUES ('405', '刘文超', '15093447780', '新郑市龙湖镇康桥溪桂园', '宝骏', '宝骏510', '2017-04-18 07:45:56');
INSERT INTO `nj_userinfo` VALUES ('406', '赵志清', '13526651270', '巩义市农业局赵艳为收门票需2张', '荣威', 'RX5', '2017-04-18 07:46:47');
INSERT INTO `nj_userinfo` VALUES ('407', '刘文超', '15093447780', '新郑市龙湖镇康桥溪桂园', '宝骏', '宝骏510', '2017-04-18 07:46:52');
INSERT INTO `nj_userinfo` VALUES ('408', '王跃飞', '18039976344', '郑州市管城区东明路御玺大厦A805', '奇瑞汽车', '艾瑞泽5', '2017-04-18 07:53:01');
INSERT INTO `nj_userinfo` VALUES ('409', '鲍永', '13393806595', '尉氏县东关建材市场对面金泰园', '猎豹汽车', 'CS10', '2017-04-18 07:53:51');
INSERT INTO `nj_userinfo` VALUES ('410', '马海平', '13673667237', '新郑市玉前路266号', '东风日产', '骐达', '2017-04-18 07:54:57');
INSERT INTO `nj_userinfo` VALUES ('411', '买朋朋', '13803860741', '郑州市二七区铭功路自由路华润大厦1602', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-18 07:57:18');
INSERT INTO `nj_userinfo` VALUES ('412', '吕宝建', '13937468897', '新郑市玉前路266号', '广汽丰田', 'YARiS L 致炫', '2017-04-18 07:58:26');
INSERT INTO `nj_userinfo` VALUES ('413', '吕宝建', '13937468897', '新郑市玉前路266号', '广汽丰田', 'YARiS L 致炫', '2017-04-18 07:58:41');
INSERT INTO `nj_userinfo` VALUES ('414', '何莎莉', '15093447780', '新郑市龙湖镇康桥溪桂园', '宝骏', '宝骏510', '2017-04-18 08:37:16');
INSERT INTO `nj_userinfo` VALUES ('415', '卫玉环', '13674976081', '花园路英才街向西500米，天地湾佳苑', '广汽本田', '锋范', '2017-04-18 09:12:21');
INSERT INTO `nj_userinfo` VALUES ('416', '耿壮飞', '13203826550', '航海东路与腾飞路交叉口东200米中铁一局项目部', '广汽丰田', 'YARiS L 致享', '2017-04-18 09:18:45');
INSERT INTO `nj_userinfo` VALUES ('417', '杜凯', '13592573596', '新密市第三高级中学', '长安福特', '翼搏', '2017-04-18 09:25:31');
INSERT INTO `nj_userinfo` VALUES ('418', '马桂玲', '13438104580', '三全风雅颂天娇学府9号楼3单元7楼西户', '哈弗', 'H6', '2017-04-18 09:30:37');
INSERT INTO `nj_userinfo` VALUES ('419', '耿北海', '15238039976', '新密市青屏大街与文峰路十字路口南10米菲时特地暖', '哈弗', 'H2s', '2017-04-18 09:34:10');
INSERT INTO `nj_userinfo` VALUES ('420', '刘渊', '17737126100', '郑州市高新区万和城A区西门菜鸟驿站', '一汽大众', '速腾', '2017-04-18 09:52:32');
INSERT INTO `nj_userinfo` VALUES ('421', '徐军强', '18638528882', '航空港区张庄镇南街', '东风本田', 'CR-V', '2017-04-18 10:22:04');
INSERT INTO `nj_userinfo` VALUES ('422', '李国发', '18638131139', '郑州市金水区南阳路93号52号楼33户', '猎豹汽车', 'CS10', '2017-04-18 10:25:36');
INSERT INTO `nj_userinfo` VALUES ('423', '赵营', '17796652572', '。。。', '一汽吉林', '森雅R7', '2017-04-18 10:33:45');
INSERT INTO `nj_userinfo` VALUES ('424', '张胜利', '18703810857', '荥阳市万山南路帝旺世家10单元东户202#', '广汽Jeep', '自由光', '2017-04-18 10:49:16');
INSERT INTO `nj_userinfo` VALUES ('425', '常永超', '18317590444', '南四环百荣世贸商城B2馆183A酷熊电器', '东风日产', '轩逸', '2017-04-18 10:49:44');
INSERT INTO `nj_userinfo` VALUES ('426', '何先生', '15093393977', '登封市嵩阳街道办事处', '哈弗', 'H2', '2017-04-18 10:54:55');
INSERT INTO `nj_userinfo` VALUES ('427', '何先生', '15093393977', '嵩阳街道办事处', '哈弗', 'H2', '2017-04-18 10:55:52');
INSERT INTO `nj_userinfo` VALUES ('428', '王德钊', '15738805838', '郑州市中牟县白沙镇宽景一品小区2号楼1101', '江铃福特', '福克斯(进口)', '2017-04-18 11:07:16');
INSERT INTO `nj_userinfo` VALUES ('429', '刘智广', '15038830633', '河南省舞钢市八台镇', '东南汽车', 'DX3', '2017-04-18 11:16:09');
INSERT INTO `nj_userinfo` VALUES ('430', '李乐昭', '13526535061', '郑州市二七区马寨镇学院路68号', '吉利汽车', '博瑞', '2017-04-18 11:17:52');
INSERT INTO `nj_userinfo` VALUES ('431', '皮基震', '15736728356', '上街区许昌路与淮阳路交叉口亚星江南小镇B10栋', '吉利汽车', '帝豪', '2017-04-18 11:47:57');
INSERT INTO `nj_userinfo` VALUES ('432', '刘许辉', '17737718698', '郑州是二七区大学路康桥华城2号楼俏妃专卖店', '华晨宝马', '宝马5系', '2017-04-18 11:48:03');
INSERT INTO `nj_userinfo` VALUES ('433', '刘许辉', '17737718698', '郑州是二七区大学路康桥华城2号楼俏妃专卖店', '华晨宝马', '宝马5系', '2017-04-18 11:48:14');
INSERT INTO `nj_userinfo` VALUES ('434', '杜威', '15225173657', '第八大街与经北六路交叉口向东500米富康步行街', '上汽通用雪佛兰', '赛欧', '2017-04-18 12:04:50');
INSERT INTO `nj_userinfo` VALUES ('435', '张高卿', '13643718376', '郑州市二七区南屏路与发展路交叉口联合雅园14号楼二单元七楼69号', '路虎', '揽胜极光', '2017-04-18 12:09:18');
INSERT INTO `nj_userinfo` VALUES ('436', '查国红', '18103823930', '郑州市二七区侯寨乡尖岗村尖岗小学', '一汽大众', '迈腾', '2017-04-18 12:11:13');
INSERT INTO `nj_userinfo` VALUES ('437', '王玉', '13839657099', '河南省泌阳县盘古新城小区', '斯柯达', '柯迪亚克', '2017-04-18 12:12:01');
INSERT INTO `nj_userinfo` VALUES ('438', '王通', '15639710135', '郑州市园田路三号院一号楼二单元', '斯柯达', '柯迪亚克', '2017-04-18 12:27:39');
INSERT INTO `nj_userinfo` VALUES ('439', '袁卫勇', '13922817875', '河南郑州市金水区锦隆阳光都市小区6号楼三单元20c室 袁卫勇 13922817875', '广汽传祺', 'GS4', '2017-04-18 12:29:34');
INSERT INTO `nj_userinfo` VALUES ('440', '袁卫勇', '13922817875', '河南郑州市金水区锦隆阳光都市小区6号楼三单元20c室 袁卫勇 13922817875', '广汽传祺', 'GS4', '2017-04-18 12:30:40');
INSERT INTO `nj_userinfo` VALUES ('441', '李星强', '15890148896', '二七区碧云路与春晖路1号院', '宝沃汽车', '宝沃BX5', '2017-04-18 12:54:58');
INSERT INTO `nj_userinfo` VALUES ('442', '于冰', '18539273973', '郑州国贸360公寓2号楼3单元1706', '一汽丰田', '卡罗拉', '2017-04-18 12:56:27');
INSERT INTO `nj_userinfo` VALUES ('443', '袁凯套', '13838137945', '新郑港区豫康宿舍5栋419室', '一汽丰田', '威驰', '2017-04-18 13:01:43');
INSERT INTO `nj_userinfo` VALUES ('444', '续曦', '15639785353', '郑州市经开十五大街与经南八路中建观湖国际售楼部', '上海大众', 'POLO', '2017-04-18 13:33:00');
INSERT INTO `nj_userinfo` VALUES ('445', '于洋', '18538576790', '秦岭路汝河路卧龙花园28号楼3单元6楼西户', '北京奔驰', 'E级', '2017-04-18 13:37:51');
INSERT INTO `nj_userinfo` VALUES ('446', '常现文', '15565709777', '林州市西券街95号', '江淮', '瑞风S3', '2017-04-18 13:47:54');
INSERT INTO `nj_userinfo` VALUES ('447', '阮景贤', '18438036809', '郑州郑东新区龙子湖高校区郑州信息科技职业学院', '广汽本田', '雅阁', '2017-04-18 14:10:54');
INSERT INTO `nj_userinfo` VALUES ('448', '李远', '18739903388', '郑州经四路2号院2号楼3楼西户', '广汽Jeep', '自由光', '2017-04-18 14:11:17');
INSERT INTO `nj_userinfo` VALUES ('449', '弄leek', '13573974565', '郑州folklore哦女人了', '华晨宝马', '宝马2系旅行车', '2017-04-18 14:14:53');
INSERT INTO `nj_userinfo` VALUES ('450', '丁汉生', '13613761612', '新郑龙湖镇双湖大道2号中原工学院信息商务学院', '广汽菲亚特', '致悦', '2017-04-18 14:31:03');
INSERT INTO `nj_userinfo` VALUES ('451', '毛幸来', '15528098323', '郑州市高新区科学大道62号', '东风本田', '思域', '2017-04-18 14:38:51');
INSERT INTO `nj_userinfo` VALUES ('452', '曹远远', '18638773572', '和谐花园2单元11栋29楼', '东风本田', '思域', '2017-04-18 14:39:43');
INSERT INTO `nj_userinfo` VALUES ('453', '杜少辉', '18739869860', '郑州市经济技术开发区经开第十五大街与经南八路交叉口中建观湖国际售楼部', '广汽Jeep', '自由光', '2017-04-18 14:41:55');
INSERT INTO `nj_userinfo` VALUES ('454', '杨豪然', '18519104465', '河南省新密市苟堂镇大么岭村', '长安汽车', 'CS75', '2017-04-18 14:45:49');
INSERT INTO `nj_userinfo` VALUES ('455', '杨豪然', '18519104465', '河南省新密市幸福路', '宝骏', '宝骏310', '2017-04-18 14:54:19');
INSERT INTO `nj_userinfo` VALUES ('456', '蔡春光', '15638505123', '新密市牛店镇小寨', '东风风行', '景逸X5', '2017-04-18 15:02:09');
INSERT INTO `nj_userinfo` VALUES ('457', '杨恺', '15100110450', '东风路金水路交叉口15楼3单元080A建业如意家园', '哈弗', 'H6', '2017-04-18 15:15:32');
INSERT INTO `nj_userinfo` VALUES ('458', '刘运锋', '15038051897', '郑州金水东路与心怡路交叉口楷林ifc 20楼', '斯柯达', '明锐', '2017-04-18 15:20:30');
INSERT INTO `nj_userinfo` VALUES ('459', '王利', '13938242492', '通站路供销总公司家属楼', '吉利汽车', '帝豪', '2017-04-18 15:21:53');
INSERT INTO `nj_userinfo` VALUES ('460', '张凡', '15239998068', '河南水利与环境职业学院', '华晨宝马', '宝马5系', '2017-04-18 15:53:40');
INSERT INTO `nj_userinfo` VALUES ('461', '姜宗霖', '18237115855', '河南农业大学龙子湖校区桂花园南211', '哈弗', 'H6', '2017-04-18 16:03:44');
INSERT INTO `nj_userinfo` VALUES ('462', '王先生', '18638522991', '大石桥soho广场bc426', '广汽传祺', 'GS5', '2017-04-18 16:03:47');
INSERT INTO `nj_userinfo` VALUES ('463', '任小奎', '18613768675', '新乡市卫滨区东方国际东门', '哈弗', 'H6', '2017-04-18 16:11:20');
INSERT INTO `nj_userinfo` VALUES ('464', '胡婷婷', '17603856912', '郑州市上街区济源路80号', '上汽通用别克', '英朗', '2017-04-18 17:33:35');
INSERT INTO `nj_userinfo` VALUES ('465', '张益', '13863846506', '银基王朝物业', '上汽通用别克', '君威', '2017-04-18 17:48:34');
INSERT INTO `nj_userinfo` VALUES ('466', '黄俊伟', '13213146317', '航空港区绿苑小区', '本田(进口)', '本田CR-Z', '2017-04-18 17:56:55');
INSERT INTO `nj_userinfo` VALUES ('467', '张益', '13863846506', '银基王朝物业', '广汽本田', '雅阁', '2017-04-18 17:59:32');
INSERT INTO `nj_userinfo` VALUES ('468', '雷永胜', '18603545161', '18603545161', '一汽丰田', 'RAV4荣放', '2017-04-18 18:05:23');
INSERT INTO `nj_userinfo` VALUES ('469', '单百海', '15890196841', '花园路东风路口交通银行', '斯柯达', '明锐', '2017-04-18 18:10:02');
INSERT INTO `nj_userinfo` VALUES ('470', '赵二垒', '18739909499', '新郑市龙湖镇泰山路机电学院', '荣威', 'RX5', '2017-04-18 18:17:43');
INSERT INTO `nj_userinfo` VALUES ('471', '钱洪军', '15639509075', '漯河市中心医院', '斯柯达', '柯迪亚克', '2017-04-18 18:21:48');
INSERT INTO `nj_userinfo` VALUES ('472', '乔松刚', '14788816496', '新郑机场四港联动东方港汇、工商银行四楼', '哈弗', 'H6', '2017-04-18 18:38:43');
INSERT INTO `nj_userinfo` VALUES ('473', '乔松刚', '14788816496', '新郑机场四港联动东方港汇、工商银行四楼', '哈弗', 'H6', '2017-04-18 18:39:40');
INSERT INTO `nj_userinfo` VALUES ('474', '费洪涛', '18963379071', '东风南路建业如意家园三单元15楼8a', '北京现代', '瑞纳', '2017-04-18 19:23:39');
INSERT INTO `nj_userinfo` VALUES ('475', '李亚男', '15518611098', '新乡市牧野区北环路188号力之星摩托三轮有限公司', '荣威', 'RX5', '2017-04-18 19:43:16');
INSERT INTO `nj_userinfo` VALUES ('476', '关', '18039640988', '洛阳市栾川县', '长安福特', '蒙迪欧', '2017-04-18 19:45:24');
INSERT INTO `nj_userinfo` VALUES ('477', '张欢', '15294626251', '郑东新区商务东三街天下收藏南区南门', '凯迪拉克', 'XTS', '2017-04-18 19:51:28');
INSERT INTO `nj_userinfo` VALUES ('478', '田美玲', '18530923469', '中牟县新潮影院', '猎豹汽车', '黑金刚', '2017-04-18 19:54:19');
INSERT INTO `nj_userinfo` VALUES ('479', '陈小权', '15090168103', '新安石井', '长安商用', 'CX70', '2017-04-18 19:54:36');
INSERT INTO `nj_userinfo` VALUES ('480', '王鹏飞', '13939020297', '建设西路与西三环交叉口向北200米路东江山名居物业办公室', '凯迪拉克', 'XT5', '2017-04-18 20:00:20');
INSERT INTO `nj_userinfo` VALUES ('481', '梁宏', '13653806737', '郑州金水区省农科院西家属院22楼6单元71号', '郑州日产', '日产NV200', '2017-04-18 20:02:53');
INSERT INTO `nj_userinfo` VALUES ('482', '王鹏飞', '13939020297', '建设西路与西三环交叉口向北200米路东江山名居小区物业办公室', '凯迪拉克', 'XT5', '2017-04-18 20:02:57');
INSERT INTO `nj_userinfo` VALUES ('483', '何彦涛', '18137331613', '郑州市金水区北环路文化路北200米中国平安202', '吉利汽车', '博瑞', '2017-04-18 20:07:07');
INSERT INTO `nj_userinfo` VALUES ('484', '王永晓', '18937114503', '郑州市管城区新蓝钻e区', '长安福特', '福克斯', '2017-04-18 20:09:45');
INSERT INTO `nj_userinfo` VALUES ('485', null, null, null, null, null, '2017-04-18 20:09:55');
INSERT INTO `nj_userinfo` VALUES ('486', '', '', '', null, null, '2017-04-18 20:11:28');
INSERT INTO `nj_userinfo` VALUES ('487', '', '', '', '', '', '2017-04-18 20:17:56');
INSERT INTO `nj_userinfo` VALUES ('488', '张朝阳', '13663842658', '巩义市安康精神病医院', '启辰', 'R50', '2017-04-18 20:39:28');
INSERT INTO `nj_userinfo` VALUES ('489', '丁祖杰', '15515933586', '九龙南开发区', '长城汽车', '风骏6', '2017-04-18 20:40:17');
INSERT INTO `nj_userinfo` VALUES ('490', '赵海波', '15093255058', '大学路南三环吉祥花园小区1号楼2单元1202', '吉利汽车', '博越', '2017-04-18 20:40:30');
INSERT INTO `nj_userinfo` VALUES ('491', '周传杰', '13598355903', '', null, null, '2017-04-18 20:44:28');
INSERT INTO `nj_userinfo` VALUES ('492', '杜玉玲', '18339279272', '新郑港区富士康福鑫公寓', '吉利汽车', '远景SUV', '2017-04-18 20:46:52');
INSERT INTO `nj_userinfo` VALUES ('493', '杜飞飞', '15938769570', '北环路丰庆路中方园西区金座', '上汽通用别克', '君威', '2017-04-18 20:58:30');
INSERT INTO `nj_userinfo` VALUES ('494', '樊要民', '15093199867', '新密市岳村镇韦园村一组', '哈弗', 'H6', '2017-04-18 20:58:41');
INSERT INTO `nj_userinfo` VALUES ('495', '杜飞飞', '15938769570', '中方园西区金座', '上汽通用别克', '君威', '2017-04-18 20:59:35');
INSERT INTO `nj_userinfo` VALUES ('496', '樊要民', '15093199867', '新密市岳村镇韦园村一组', '哈弗', 'H6', '2017-04-18 20:59:40');
INSERT INTO `nj_userinfo` VALUES ('497', '郝卿', '18537171744', '荥阳市三公路汜河路交叉口隆兴御景阁北门', '上汽通用别克', '英朗', '2017-04-18 21:02:20');
INSERT INTO `nj_userinfo` VALUES ('498', '刘云', '13938390092', '龙湖镇梧桐郡售楼部', '江淮', '瑞风M3', '2017-04-18 21:02:38');
INSERT INTO `nj_userinfo` VALUES ('499', '卫发中', '18039286889', '郑州市中原区建设西路物华城上城小区8号楼1单元1303室', '郑州日产', '锐骐皮卡 ', '2017-04-18 21:03:23');
INSERT INTO `nj_userinfo` VALUES ('500', '卫发中', '18039286889', '郑州市中原区建设西路物华城上城小区8号楼', '郑州日产', '锐骐皮卡 ', '2017-04-18 21:05:44');
INSERT INTO `nj_userinfo` VALUES ('501', '李世平', '15516177730', '郑州高新区科学大道70号', '北汽幻速', 'S5', '2017-04-18 21:16:06');
INSERT INTO `nj_userinfo` VALUES ('502', '马健', '18697301129', '郑州高新区科学大道70号奥威', '东风悦达起亚', 'K3', '2017-04-18 21:17:40');
INSERT INTO `nj_userinfo` VALUES ('503', '陈猛辉', '18037278966', '郑州市中牟县泰安街安泰苑小区', '猎豹汽车', 'CS10', '2017-04-18 21:18:45');
INSERT INTO `nj_userinfo` VALUES ('504', '陈猛辉', '18037278966', '郑州市中牟县泰安街安泰苑小区', '猎豹汽车', 'CS10', '2017-04-18 21:22:31');
INSERT INTO `nj_userinfo` VALUES ('505', '姬伟', '18037691690', '郑州市郑东新区白沙镇东润华景', '哈弗', 'H6', '2017-04-18 21:41:43');
INSERT INTO `nj_userinfo` VALUES ('506', '王博', '15617916667', '平顶山市舞钢市朱兰建设路与干休路交叉口向南200米路西三源宾馆208室', '上汽通用雪佛兰', '科鲁兹', '2017-04-18 21:48:48');
INSERT INTO `nj_userinfo` VALUES ('507', '刘女士', '13937102584', '金水区二环路雅阁思达1号楼1单元13号', '本田(进口)', 'INSIGHT', '2017-04-18 21:55:56');
INSERT INTO `nj_userinfo` VALUES ('508', '李辉', '13653714523', '郑州市北环路与索凌路交叉口西北角', '东南汽车', 'DX3', '2017-04-18 22:05:57');
INSERT INTO `nj_userinfo` VALUES ('509', '周江涛', '18595603813', '上街区通航社区东区39号楼1001', '东南三菱', '翼神', '2017-04-18 22:12:01');
INSERT INTO `nj_userinfo` VALUES ('510', '王纪东', '18539948813', '中原区西三环陇海路东一百米路南战杰汽修', '荣威', 'i6', '2017-04-18 22:20:36');
INSERT INTO `nj_userinfo` VALUES ('511', '李先生', '13525933582', '伊川县豫港大道实验小学', '昌河铃木', '北斗星X5', '2017-04-18 22:23:31');
INSERT INTO `nj_userinfo` VALUES ('512', '李先生', '13525933582', '伊川县豫港大道实验小学', '昌河铃木', '北斗星X5', '2017-04-18 22:24:07');
INSERT INTO `nj_userinfo` VALUES ('513', '刘卫杰', '18739208396', '河南省鹤壁市福田四区403栋三单元602', '荣威', 'i6', '2017-04-18 22:32:18');
INSERT INTO `nj_userinfo` VALUES ('514', '刘', '18239105798', '三全路香山路北新龙商务', '吉利汽车', '远景SUV', '2017-04-18 22:38:02');
INSERT INTO `nj_userinfo` VALUES ('515', '张先生', '13273997056', '高新区药厂街与腊梅路交叉口郭庄盛世新天地46号楼2单元', '吉利汽车', '帝豪', '2017-04-18 22:54:15');
INSERT INTO `nj_userinfo` VALUES ('516', '李海燕', '18135723507', '安阳安钢六区100号楼', '宝骏', '宝骏560', '2017-04-18 23:01:32');
INSERT INTO `nj_userinfo` VALUES ('517', '周永超', '18530851528', '中立广告市场b区3排2号', '哈弗', 'H6', '2017-04-18 23:01:49');
INSERT INTO `nj_userinfo` VALUES ('518', '周永超', '18530851528', '中立广告市场b区3排2号', '哈弗', 'H6', '2017-04-18 23:02:35');
INSERT INTO `nj_userinfo` VALUES ('519', '董明奇', '18137183782', '郑州市二七区大学路南四环百荣商贸向南100米万科大都会映天建设项目部', '奇瑞汽车', '艾瑞泽5', '2017-04-18 23:11:45');
INSERT INTO `nj_userinfo` VALUES ('520', '闻先生', '18638252480', '中原区陇海西路199号', '斯柯达', '柯迪亚克', '2017-04-18 23:47:14');
INSERT INTO `nj_userinfo` VALUES ('521', '王', '13183000885', '惠济区八堡村红绿灯向南200米东方广告', '广汽丰田', '汉兰达', '2017-04-18 23:51:57');
INSERT INTO `nj_userinfo` VALUES ('522', '冯艳忠', '18538238329', '管城区郑蔚路与南三环向西300米路北永恒尚东5号楼', '吉利汽车', '博越', '2017-04-19 00:08:09');
INSERT INTO `nj_userinfo` VALUES ('523', '刘怀云', '18703809208', '郑州市二七区淮河路52号院2单元', '哈弗', 'H6', '2017-04-19 00:10:48');
INSERT INTO `nj_userinfo` VALUES ('524', '王玉洁', '18910873177', '亚星城市山水', '猎豹汽车', 'CT7', '2017-04-19 00:17:19');
INSERT INTO `nj_userinfo` VALUES ('525', '李亚强', '15638936162', '东明路14号', '江淮', '和悦', '2017-04-19 00:36:11');
INSERT INTO `nj_userinfo` VALUES ('526', '党二龙', '15036111307', '三全路长兴路交叉口向西300米路南时尚国际美发沙龙', '吉利汽车', '博越', '2017-04-19 00:53:11');
INSERT INTO `nj_userinfo` VALUES ('527', null, null, null, null, null, '2017-04-19 01:54:48');
INSERT INTO `nj_userinfo` VALUES ('528', '张伟', '13939188908', '郑州市中州大道与民航路交叉口企业一号四楼中国平安九处十课张伟收', '广汽丰田', '汉兰达', '2017-04-19 01:59:11');
INSERT INTO `nj_userinfo` VALUES ('529', '王志远', '18837305375', '长垣县蒲北区史庄村', '启辰', 'T70', '2017-04-19 02:42:36');
INSERT INTO `nj_userinfo` VALUES ('530', '高献顶', '13937562964', '平顶山湛河区', '昌河汽车', '福瑞达K22', '2017-04-19 05:01:35');
INSERT INTO `nj_userinfo` VALUES ('531', '杨兴义', '13676913258', '上街区工业路白马寺新村东天天超市', '广汽传祺', 'GS8', '2017-04-19 06:01:41');
INSERT INTO `nj_userinfo` VALUES ('532', '杨兴义', '13676913258', '上街区工业路白马寺新村东天天超市', '广汽传祺', 'GS8', '2017-04-19 06:03:51');
INSERT INTO `nj_userinfo` VALUES ('533', '赵建华', '15617718895', '新郑市龙湖镇文昌路1号', '上海大众', '朗逸', '2017-04-19 06:18:38');
INSERT INTO `nj_userinfo` VALUES ('534', '王树印', '13949088828', '河南省新乡市长垣县常村镇牛河', '东风本田', '思域', '2017-04-19 06:46:58');
INSERT INTO `nj_userinfo` VALUES ('535', '王建军', '17181575978', '乐尚天地生活广场3楼', '长安汽车', 'CS75', '2017-04-19 07:11:38');
INSERT INTO `nj_userinfo` VALUES ('536', '刘贵兵', '15738831916', '郑州市航空港区豫康新城华鸿小区五号楼华鸿美食城', '猎豹汽车', 'CS10', '2017-04-19 07:17:40');
INSERT INTO `nj_userinfo` VALUES ('537', '丁学武', '18037775092', '花园路国基路交叉口西', '一汽丰田', '普拉多', '2017-04-19 07:43:48');
INSERT INTO `nj_userinfo` VALUES ('538', '赵国良', '15738386339', '吴桥', '广汽丰田', '汉兰达', '2017-04-19 07:52:29');
INSERT INTO `nj_userinfo` VALUES ('539', '赵国良', '15738386339', '吴桥', '长安福特', '锐界', '2017-04-19 07:54:25');
INSERT INTO `nj_userinfo` VALUES ('540', '闫生', '18837170663', '登封市少林寺雷家沟村少林实战功夫学院', '斯柯达', '昕动', '2017-04-19 08:01:56');
INSERT INTO `nj_userinfo` VALUES ('541', '位二灵', '13613711677', '伏牛路淮河路南50米70年代物业客服中心', '上汽通用别克', '英朗', '2017-04-19 08:05:06');
INSERT INTO `nj_userinfo` VALUES ('542', '豆豆', '18737139037', '五龙口南路14号院（三个人）', '北京现代', '领动', '2017-04-19 08:07:42');
INSERT INTO `nj_userinfo` VALUES ('543', '张永行', '15136209756', '郑州市金水区姚桥乡薛岗社区', '长安商用', 'CX70', '2017-04-19 08:15:45');
INSERT INTO `nj_userinfo` VALUES ('544', '刘凯', '15803814471', '第八大街经北二路富士康科技集团', '吉利汽车', '帝豪GS', '2017-04-19 08:24:21');
INSERT INTO `nj_userinfo` VALUES ('545', '刘先生', '15617777288', '郑州市中原区中原西路42号附1号', '哈弗', 'H6', '2017-04-19 08:34:39');
INSERT INTO `nj_userinfo` VALUES ('546', '杨科旺', '18137837220', '英协路凤鸣路东方明珠茂详家园', '上汽通用别克', '英朗', '2017-04-19 08:39:29');
INSERT INTO `nj_userinfo` VALUES ('547', '李先生', '13353922061', '河南省鹤壁市浚县卫溪区北大街古城家生活馆李磊', '上海大众', '途昂', '2017-04-19 08:40:47');
INSERT INTO `nj_userinfo` VALUES ('548', '朱庆潘', '15936202753', '郑州郑东新区莲湖路明理路交叉口向东100米', '吉利汽车', '帝豪GS', '2017-04-19 08:56:18');
INSERT INTO `nj_userinfo` VALUES ('549', '张鹏', '15978428158', '管城区 印刷厂街4号院2单元', '北汽幻速', 'S6', '2017-04-19 09:06:11');
INSERT INTO `nj_userinfo` VALUES ('550', '李森', '15638111107', '二七区保全街16号院', '众泰汽车', 'SR9', '2017-04-19 09:09:00');
INSERT INTO `nj_userinfo` VALUES ('551', '于女士', '15737138127', '金水区优胜北路上都国际B座2909', '东风本田', '思域', '2017-04-19 09:09:18');
INSERT INTO `nj_userinfo` VALUES ('552', '黄磊', '18638750204', '二七区保全街16号院', '广汽传祺', 'GA3S视界', '2017-04-19 09:11:09');
INSERT INTO `nj_userinfo` VALUES ('553', '杨燕燕', '18538198759', '二七区二七路200号金博大一楼周大生', '猎豹汽车', 'CS10', '2017-04-19 09:13:20');
INSERT INTO `nj_userinfo` VALUES ('554', '姚鹏程', '18539998921', '高新区雪松路莲花街学府欣园一单元十一号楼4楼西户', '猎豹汽车', 'CS10', '2017-04-19 09:18:50');
INSERT INTO `nj_userinfo` VALUES ('555', '杨燕燕', '18538198759', '二七区二七路200号金博大一楼周大生  杨女士', '猎豹汽车', 'CS10', '2017-04-19 09:19:08');
INSERT INTO `nj_userinfo` VALUES ('556', '刘梓召', '15838298759', '中州大道陇海高架交叉口平顶山银行大厦', '哈弗', 'H6', '2017-04-19 09:21:05');
INSERT INTO `nj_userinfo` VALUES ('557', '李先生', '13017683518', '航海路阳光城2号院', '上汽通用雪佛兰', '迈锐宝', '2017-04-19 09:24:57');
INSERT INTO `nj_userinfo` VALUES ('558', '任永超', '13837845883', '郑州市中原区颍河路50号', '一汽大众', '速腾', '2017-04-19 09:27:57');
INSERT INTO `nj_userinfo` VALUES ('559', '王振江', '15603947103', '河南省商水县白寺镇白寺村', '哈弗', 'H6', '2017-04-19 09:30:49');
INSERT INTO `nj_userinfo` VALUES ('560', '王振江', '15603947103', '河南省商水县白寺镇白寺村', '哈弗', 'H6', '2017-04-19 09:32:13');
INSERT INTO `nj_userinfo` VALUES ('561', '李中伟', '13507632217', '惠济区江山路与开元路交叉路口惠龙社区', '东风风神', 'AX7', '2017-04-19 09:33:23');
INSERT INTO `nj_userinfo` VALUES ('562', '李中伟', '13507632217', '惠济区江山路与开元路交叉路口惠龙社区', '东风风神', 'AX7', '2017-04-19 09:33:37');
INSERT INTO `nj_userinfo` VALUES ('563', '赵', '13073798896', '郑州市未来路55号', '东风日产', '轩逸', '2017-04-19 10:12:09');
INSERT INTO `nj_userinfo` VALUES ('564', '柴元军', '13939035090', '郑州新密市牛店镇古角佳惠家具超市', '福田汽车', '风景V5', '2017-04-19 10:13:01');
INSERT INTO `nj_userinfo` VALUES ('565', '郑敏', '13513892611', '高新区莲花街牡丹路荣邦城', '哈弗', 'H1', '2017-04-19 10:13:15');
INSERT INTO `nj_userinfo` VALUES ('566', '孙洪水', '13839975790', '中牟席庄村', '上汽通用别克', '英朗', '2017-04-19 10:14:44');
INSERT INTO `nj_userinfo` VALUES ('567', '柴元军', '13939035090', '郑州新密市牛店镇古角佳惠家具超市', '福田汽车', '风景V5', '2017-04-19 10:15:27');
INSERT INTO `nj_userinfo` VALUES ('568', '潘万生', '13525538276', '龙湖镇轩辕路与湖滨路交叉口', '奇瑞汽车', '艾瑞泽7', '2017-04-19 10:20:11');
INSERT INTO `nj_userinfo` VALUES ('569', '孙振华', '13017606635', '郑州市港区四港联动大道锦绣枣园小区', '上汽通用别克', '英朗', '2017-04-19 10:34:00');
INSERT INTO `nj_userinfo` VALUES ('570', '孙振华', '13017606635', '郑州市港区四港联动大道锦绣枣园小区', '上汽通用别克', '英朗', '2017-04-19 10:37:17');
INSERT INTO `nj_userinfo` VALUES ('571', '苑来喜', '15836129758', '河南新乡河南心连心化肥厂', '广汽丰田', 'YARiS L 致炫', '2017-04-19 10:37:33');
INSERT INTO `nj_userinfo` VALUES ('572', '张', '13803861980', '中原西路阳光花苑18楼', '斯柯达', '柯迪亚克', '2017-04-19 10:44:16');
INSERT INTO `nj_userinfo` VALUES ('573', '岳亚鹏', '15515500363', '郑州市新郑市孟庄镇双湖大道与团结路交叉口水榭华城双唐小学西路东精修电动车', '别克(进口)', '昂科雷', '2017-04-19 10:46:14');
INSERT INTO `nj_userinfo` VALUES ('574', '闫俊康', '13673673341', '郑州市郑东新区金水东路33号美盛中心', '东风本田', 'CR-V', '2017-04-19 10:48:32');
INSERT INTO `nj_userinfo` VALUES ('575', '胡燕芳', '15515526722', '郑州市郑东新区金水东路33号美盛中心', '上汽通用别克', '英朗', '2017-04-19 10:49:14');
INSERT INTO `nj_userinfo` VALUES ('576', '马路遥', '13838562099', '陇海西路352号华润燃气公司', '长安福特', '福克斯', '2017-04-19 10:56:09');
INSERT INTO `nj_userinfo` VALUES ('577', '马路遥', '13838562099', '陇海西路352号华润燃气公司', '长安福特', '福克斯', '2017-04-19 10:58:05');
INSERT INTO `nj_userinfo` VALUES ('578', '杨静', '13838562099', '陇海西路352号华润燃气公司', '长安汽车', 'CS75', '2017-04-19 11:00:35');
INSERT INTO `nj_userinfo` VALUES ('579', '王耀', '13683812793', '秦岭路棉纺路热电厂812号院', '东风本田', 'XR-V', '2017-04-19 11:06:39');
INSERT INTO `nj_userinfo` VALUES ('580', '穆永芳', '17639109803', '河南省郑州市金水区纬四路东明路聂庄b区四号楼2715', '奇瑞汽车', '艾瑞泽5', '2017-04-19 11:08:07');
INSERT INTO `nj_userinfo` VALUES ('581', '窦亚乐', '18937579528', '河南省汝州市临汝镇鸡丁刀削面', '东风风度', 'MX5', '2017-04-19 11:20:36');
INSERT INTO `nj_userinfo` VALUES ('582', '朱佳习', '15333812390', '新密市西大街易发通讯', '一汽丰田', '卡罗拉', '2017-04-19 11:33:16');
INSERT INTO `nj_userinfo` VALUES ('583', '胡则慧', '13803812713', '管城回族区、东泰康路、大上海城六楼、奥斯卡国际影城', '一汽丰田', '普拉多', '2017-04-19 12:02:09');
INSERT INTO `nj_userinfo` VALUES ('584', '魏先生', '15036388093', '伊川县豫港大道实验小学', '上汽通用五菱', '五菱之光V', '2017-04-19 12:11:52');
INSERT INTO `nj_userinfo` VALUES ('585', '魏先生', '15036388093', '伊川县豫港大道实验小学', '上汽通用五菱', '五菱之光V', '2017-04-19 12:12:36');
INSERT INTO `nj_userinfo` VALUES ('586', '王顺兴', '13803994812', '中牟县官渡大街西段', '郑州日产', '日产NV200', '2017-04-19 12:20:15');
INSERT INTO `nj_userinfo` VALUES ('587', '王修志', '15890648687', '郑州东四环亚邦汽车科技产业园C区7排7号', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-19 12:22:03');
INSERT INTO `nj_userinfo` VALUES ('588', '张健鹏', '13673636376', '高新区冬青街龙柏里8号', '斯柯达', '柯迪亚克', '2017-04-19 12:27:47');
INSERT INTO `nj_userinfo` VALUES ('589', '彭晓辉', '15093351575', '河南郑州火车站万博商城—期5楼5190号彭氏针织', '哈弗', 'H6', '2017-04-19 12:35:29');
INSERT INTO `nj_userinfo` VALUES ('590', '韩亚娟', '13383813626', '中州大道农业路苏荷中心', '上汽通用别克', '君越', '2017-04-19 12:57:37');
INSERT INTO `nj_userinfo` VALUES ('591', '陈迪华', '18037499429', '郑州高新区化工路中央储备粮库对面500米二里屯', '东风本田', '杰德', '2017-04-19 13:08:52');
INSERT INTO `nj_userinfo` VALUES ('592', '陈迪华', '18037499429', '郑州高新区化工路中央储备粮库对面500米二里屯', '东风本田', '杰德', '2017-04-19 13:10:33');
INSERT INTO `nj_userinfo` VALUES ('593', '陈辉', '13283807300', '二七区淮北街1号院', '斯柯达', '速派', '2017-04-19 13:12:03');
INSERT INTO `nj_userinfo` VALUES ('594', '王小壮', '15555552932', '二七区西中和路和平南村4号楼四单元六楼东户', '宝马(进口)', '宝马5系(进口)', '2017-04-19 14:09:22');
INSERT INTO `nj_userinfo` VALUES ('595', '岳江', '18839775793', '河南省郑州市中牟县东风街道中牟汽车工业园青山变速器', '荣威', 'i6', '2017-04-19 14:27:48');
INSERT INTO `nj_userinfo` VALUES ('596', '郭小峰', '13938818905', '洛阳市洛宁县交通运输局', '哈弗', 'H2', '2017-04-19 14:45:10');
INSERT INTO `nj_userinfo` VALUES ('597', '宋卫国', '13937930370', '洛阳市洛宁县交通运输局执法所', '哈弗', 'H2', '2017-04-19 14:46:54');
INSERT INTO `nj_userinfo` VALUES ('598', '刘雪勇', '13203710646', '郑州市二七区马寨开发区明晖北路1号中原福利工贸有限公司', '哈弗', 'H6 Coupe', '2017-04-19 14:52:26');
INSERT INTO `nj_userinfo` VALUES ('599', '刘雪勇', '13203710646', '郑州市二七区马寨开发区明晖北路1号中原福利工贸有限公司', '哈弗', 'H6 Coupe', '2017-04-19 14:53:15');
INSERT INTO `nj_userinfo` VALUES ('600', null, null, null, null, null, '2017-04-19 14:57:50');
INSERT INTO `nj_userinfo` VALUES ('601', '杨立帅', '13523555073', '祈福中华', '哈弗', 'H6', '2017-04-19 15:01:53');
INSERT INTO `nj_userinfo` VALUES ('602', '陶延丽', '13721438746', '河南省郑州市金水区燕庄燕黑路龙升源小区顺丰点部', '奇瑞汽车', '瑞虎5', '2017-04-19 15:02:12');
INSERT INTO `nj_userinfo` VALUES ('603', '陶延涛', '13837135643', '河南省延津县产业集聚区河南笑脸食品有限公司', '奇瑞汽车', '艾瑞泽5', '2017-04-19 15:05:41');
INSERT INTO `nj_userinfo` VALUES ('604', '张群生', '18625884131', '郑州市高新区冬青街24号', '比亚迪', '宋', '2017-04-19 15:09:39');
INSERT INTO `nj_userinfo` VALUES ('605', '刘霞英', '13253533690', '郑州市金水区新龙小区', '东风风神', 'AX5', '2017-04-19 15:10:15');
INSERT INTO `nj_userinfo` VALUES ('606', '楚鹏慧', '13598401331', '河南省郑州市 荥阳市 贾欲镇步行街', '奇瑞汽车', '艾瑞泽5', '2017-04-19 15:12:22');
INSERT INTO `nj_userinfo` VALUES ('607', '申智勇', '18037163336', '杨金路和107快速化高架北107总包部', '斯柯达', '柯迪亚克', '2017-04-19 15:20:11');
INSERT INTO `nj_userinfo` VALUES ('608', '杨泽华', '18339290016', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '哈弗', 'H6', '2017-04-19 15:29:26');
INSERT INTO `nj_userinfo` VALUES ('609', ' 刘茜', '13253526218', '二七区西中和路和平南村4号楼四单元六楼东户', '奔驰(进口)', 'GLS', '2017-04-19 15:30:51');
INSERT INTO `nj_userinfo` VALUES ('610', '孙女士', '13603710222', '郑州经三路48号', '宝马(进口)', '宝马X3', '2017-04-19 15:30:55');
INSERT INTO `nj_userinfo` VALUES ('611', '温仟搴', '15039055286', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '宝骏', '宝骏560', '2017-04-19 15:31:11');
INSERT INTO `nj_userinfo` VALUES ('612', '温仟搴', '15039055286', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '宝骏', '宝骏560', '2017-04-19 15:31:12');
INSERT INTO `nj_userinfo` VALUES ('613', '温指南', '15038367001', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '哈弗', 'H6', '2017-04-19 15:32:05');
INSERT INTO `nj_userinfo` VALUES ('614', '米菊花', '15038296091', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '哈弗', 'H6', '2017-04-19 15:33:33');
INSERT INTO `nj_userinfo` VALUES ('615', '贾艳艳', '15903630520', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '哈弗', 'H6', '2017-04-19 15:34:22');
INSERT INTO `nj_userinfo` VALUES ('616', '温俊修', '13938524081', '郑州市登封市少林大道与菜园路交叉口路北三路公交站菊花纯棉布庄', '哈弗', 'H6', '2017-04-19 15:35:04');
INSERT INTO `nj_userinfo` VALUES ('617', '张冬艳', '13673973500', '郑州市金水区国基路与文化路交叉路口公交二公司第二修理公司', '长安福特', '福睿斯', '2017-04-19 15:38:16');
INSERT INTO `nj_userinfo` VALUES ('618', '张晓宇', '13683713845', '郑州金水区丰庆路国基路世纪港湾3号楼2单元', '上海大众', '朗逸', '2017-04-19 15:45:24');
INSERT INTO `nj_userinfo` VALUES ('619', '汤固强', '13083711955', '郑州中原区汝河路22', '一汽奔腾', 'X40', '2017-04-19 15:52:14');
INSERT INTO `nj_userinfo` VALUES ('620', '汤固强', '13083711955', '郑州中原区汝河路22号院3号楼', '一汽奔腾', 'X40', '2017-04-19 15:52:30');
INSERT INTO `nj_userinfo` VALUES ('621', '李连勇', '15938773161', '航海路未来路正商新蓝钻E区', '广汽丰田', '汉兰达', '2017-04-19 16:05:57');
INSERT INTO `nj_userinfo` VALUES ('622', '王翼羽', '15937190731', '郑州市上街区中安街汇源小区', '吉利汽车', '帝豪', '2017-04-19 16:07:42');
INSERT INTO `nj_userinfo` VALUES ('623', '王军亮', '18051899386', '鹤壁浚县善堂镇西海头村129号', '吉利汽车', 'GX7', '2017-04-19 16:08:01');
INSERT INTO `nj_userinfo` VALUES ('624', '王俊雨', '18339969815', '郑开大道与广惠街交叉口中建五局项目部', '东南汽车', 'DX3', '2017-04-19 16:15:01');
INSERT INTO `nj_userinfo` VALUES ('625', '黄磊', '17091318836', '管城区太极公馆10号楼1单选6楼1012室', '吉利汽车', '帝豪GL', '2017-04-19 16:22:40');
INSERT INTO `nj_userinfo` VALUES ('626', '郭润萍', '13676948138', '郑州白沙浩瀚建材园D区81号', '哈弗', 'H6', '2017-04-19 16:28:04');
INSERT INTO `nj_userinfo` VALUES ('627', '沈巧红', '13937100999', '淮河路39号郑州市建设委员会', '上海大众', '帕萨特', '2017-04-19 16:30:25');
INSERT INTO `nj_userinfo` VALUES ('628', '曹艳可', '13592635711', '河南省巩义市芝田镇八陵村', '东南汽车', 'DX3', '2017-04-19 16:35:35');
INSERT INTO `nj_userinfo` VALUES ('629', '郜常林', '18236867372', '焦作市高新区南海路1515', '奇瑞新能源', 'eQ1', '2017-04-19 17:01:34');
INSERT INTO `nj_userinfo` VALUES ('630', '叶芍果', '15507951888', '郑州市惠济区信基冷库冻品交易大厅T203', '上海大众', '途昂', '2017-04-19 17:04:34');
INSERT INTO `nj_userinfo` VALUES ('631', '刘琛', '18203709712', '富田太阳城永乐电器海尔电视展柜', '斯柯达', '明锐', '2017-04-19 17:07:47');
INSERT INTO `nj_userinfo` VALUES ('632', '刘琛', '18203709712', '富田太阳城永乐电器海尔电视展柜', '斯柯达', '明锐', '2017-04-19 17:08:25');
INSERT INTO `nj_userinfo` VALUES ('633', '陈国印', '15038314864', '中牟县张庄镇南街', '北京现代', '悦动', '2017-04-19 17:10:46');
INSERT INTO `nj_userinfo` VALUES ('634', '陈国印', '15038314864', '中牟县张庄镇南街', '北京现代', '悦动', '2017-04-19 17:10:46');
INSERT INTO `nj_userinfo` VALUES ('635', '李玉东', '13810979051', '郑州市二七区大学路航海路二七万达广场13号楼2025', '吉利汽车', '博越', '2017-04-19 17:12:33');
INSERT INTO `nj_userinfo` VALUES ('636', '杜飞', '18003855117', '硅谷广场a座17楼', '别克(进口)', '昂科雷', '2017-04-19 17:19:36');
INSERT INTO `nj_userinfo` VALUES ('637', '李胜杰', '13838015813', '中牟县张庄镇', '东风日产', '逍客', '2017-04-19 17:24:42');
INSERT INTO `nj_userinfo` VALUES ('638', '付红阳', '15517117167', '河南郑州管城区紫荆山南三环花都港湾18号楼', '哈弗', 'H6', '2017-04-19 17:30:48');
INSERT INTO `nj_userinfo` VALUES ('639', '孙先生', '13373931725', '金水区丰庆路小学', '上海大众', '朗逸', '2017-04-19 17:31:54');
INSERT INTO `nj_userinfo` VALUES ('640', '孙先生', '13373931725', '金水区丰庆路2号香桔市17号楼', '上海大众', '朗逸', '2017-04-19 17:33:00');
INSERT INTO `nj_userinfo` VALUES ('641', '冯会玲', '13253681119', '郑州市管城区航海路未来路蓝钻小区4号楼2单元2304', '一汽丰田', '卡罗拉', '2017-04-19 17:33:48');
INSERT INTO `nj_userinfo` VALUES ('642', '常海涛', '18903866855', '金水区园田路4号省中医院南家属院8号楼', '广汽丰田', '凯美瑞', '2017-04-19 17:38:41');
INSERT INTO `nj_userinfo` VALUES ('643', '孙超', '18625522052', '金水区东明路红砖路名门国际706', '一汽大众', '高尔夫·嘉旅', '2017-04-19 17:50:29');
INSERT INTO `nj_userinfo` VALUES ('644', '贾飞超', '15937137426', '郑州市航空港区豫康新城华鸿小区五号楼', '众泰汽车', '大迈X7', '2017-04-19 18:00:07');
INSERT INTO `nj_userinfo` VALUES ('645', '贾飞超', '15937137426', '郑州市航空港区豫康新城华鸿小区五号楼', '众泰汽车', '大迈X7', '2017-04-19 18:00:42');
INSERT INTO `nj_userinfo` VALUES ('646', '高发展', '18695859131', '郑州市航空港区山顶公寓', '江淮', '瑞风M3', '2017-04-19 18:03:58');
INSERT INTO `nj_userinfo` VALUES ('647', '申爱普', '18037176221', '郑州市三全路风雅颂南区19号楼二单元2楼西户', '长安汽车', 'CS35', '2017-04-19 18:20:37');
INSERT INTO `nj_userinfo` VALUES ('648', '耿红勤', '13213002841', '郑州管城区南曹乡南曹村', '吉利汽车', '经典帝豪', '2017-04-19 18:36:00');
INSERT INTO `nj_userinfo` VALUES ('649', '王子鹏', '18838210096', '大孟镇盆王村', '一汽马自达', '阿特兹', '2017-04-19 18:48:12');
INSERT INTO `nj_userinfo` VALUES ('650', '张女士', '13903859975', '郑州市陇海路京广路口铁道陇海家园3号楼2单元1501', '东南汽车', 'DX3', '2017-04-19 18:51:16');
INSERT INTO `nj_userinfo` VALUES ('651', '赵志华', '18639018009', '中州大道货站街南500米路西欢乐家园社区幼儿园内', '一汽丰田', '普拉多', '2017-04-19 18:57:12');
INSERT INTO `nj_userinfo` VALUES ('652', '王子鹏', '18838210096', '大孟镇盆王村', '一汽马自达', '阿特兹', '2017-04-19 18:58:36');
INSERT INTO `nj_userinfo` VALUES ('653', '王子鹏', '18838210096', '大孟镇盆王村', '一汽马自达', '阿特兹', '2017-04-19 19:00:26');
INSERT INTO `nj_userinfo` VALUES ('654', '李宁', '15981999717', '河南省巩义市站街镇豫联工业园区河南博奥建设有限公司', '广汽三菱', '欧蓝德', '2017-04-19 19:02:10');
INSERT INTO `nj_userinfo` VALUES ('655', '曲江龙', '13938276326', '河南省巩义市站街镇豫联工业园区河南博奥建设有限公司', '广汽传祺', 'GS4', '2017-04-19 19:08:45');
INSERT INTO `nj_userinfo` VALUES ('656', '申战卫', '13938229196', '郑州市二七区马寨镇光明路交和睦路顺丰快递网点   郭盛龙转(申战卫)', '江淮', '瑞风M3', '2017-04-19 19:10:38');
INSERT INTO `nj_userinfo` VALUES ('657', '崔雨', '15138482679', '河南省巩义市站街镇豫联工业园区河南博奥建设有限公司', '广汽本田', '缤智', '2017-04-19 19:14:00');
INSERT INTO `nj_userinfo` VALUES ('658', '何三秀', '13073730311', '中牟县商都路与万三路交叉口星城国际东苑3号楼一单元207', 'MG', 'ZS', '2017-04-19 19:31:04');
INSERT INTO `nj_userinfo` VALUES ('659', '蔡柯鑫', '13071021621', '郑州市经开区第十三大街与经南三路交叉口瑞锦小区桂香苑4号楼', '东风本田', '思域', '2017-04-19 19:33:07');
INSERT INTO `nj_userinfo` VALUES ('660', '蔡柯鑫', '13071021621', '河南省郑州市经开区第十三大街与经南三路交叉口瑞锦小区桂香苑4号楼', '东风本田', '思域', '2017-04-19 19:35:24');
INSERT INTO `nj_userinfo` VALUES ('661', '李飞龙', '15837184661', '城东路108号院6号楼4单元38号', '吉利汽车', '博越', '2017-04-19 19:37:39');
INSERT INTO `nj_userinfo` VALUES ('662', '单付金', '13213063828', '中医骨伤病医院', '东风本田', 'CR-V', '2017-04-19 19:40:38');
INSERT INTO `nj_userinfo` VALUES ('663', '谭向军', '18637110532', '郑州市金水区北环路西史赵西院21号楼', '上汽通用别克', '英朗', '2017-04-19 19:40:43');
INSERT INTO `nj_userinfo` VALUES ('664', '李文良', '13837199267', '东四环黄庄村红绿灯灯路口河南一建', '长安汽车', '悦翔V5', '2017-04-19 19:42:09');
INSERT INTO `nj_userinfo` VALUES ('665', '李文良', '13837199267', '东四环黄庄村红绿灯灯路口河南一建', '长安汽车', '悦翔V5', '2017-04-19 19:43:33');
INSERT INTO `nj_userinfo` VALUES ('666', '高学俊', '18538165577', '固始县南山头瑞丰典当公司', '奔驰(进口)', 'GLE', '2017-04-19 19:45:56');
INSERT INTO `nj_userinfo` VALUES ('667', '李耀华', '13213206800', '郑州市高新区东赵村92号', '广汽三菱', '欧蓝德', '2017-04-19 19:56:58');
INSERT INTO `nj_userinfo` VALUES ('668', '李耀华', '13213206800', '郑州市高新区东赵村92号', '广汽三菱', '欧蓝德', '2017-04-19 19:57:29');
INSERT INTO `nj_userinfo` VALUES ('669', '罗影', '18538221241', '管城区', '宝骏', '宝骏560', '2017-04-19 19:58:53');
INSERT INTO `nj_userinfo` VALUES ('670', '李耀华', '13213206800', '郑州市高新区东赵村92号', '广汽三菱', '欧蓝德', '2017-04-19 20:00:23');
INSERT INTO `nj_userinfo` VALUES ('671', '李耀华', '13213206800', '郑州市高新区东赵村92号', '广汽三菱', '欧蓝德', '2017-04-19 20:00:35');
INSERT INTO `nj_userinfo` VALUES ('672', '马姣姣', '15238349718', '管城区', '宝骏', '宝骏560', '2017-04-19 20:03:32');
INSERT INTO `nj_userinfo` VALUES ('673', '王中兴', '13426395128', '郑州市金水区顺河路4号院河南饭店家属院3单元4楼东户', '东风本田', 'CR-V', '2017-04-19 20:04:05');
INSERT INTO `nj_userinfo` VALUES ('674', '马姣姣', '15890182247', '管城区', '宝骏', '宝骏560', '2017-04-19 20:05:52');
INSERT INTO `nj_userinfo` VALUES ('675', '郭胜超', '15838052855', '河南省郑州市金水区未来路青年路升龙凤凰城c区3号楼1203室', '荣威', 'RX5', '2017-04-19 20:07:12');
INSERT INTO `nj_userinfo` VALUES ('676', '贾峰', '15890188601', '郑州市国基路与花园路交叉口向西500米路北，国基路60号，国家文化创意产业园B座2107室', '长安铃木', '奥拓', '2017-04-19 20:13:39');
INSERT INTO `nj_userinfo` VALUES ('677', '贾峰', '13017674810', '郑州市国基路与花园路交叉口向西500米路北，国基路60号，国家文化创意产业园B座2107室', '比亚迪', 'F0', '2017-04-19 20:17:49');
INSERT INTO `nj_userinfo` VALUES ('678', '贾峰', '13017674810', '郑州市国基路与花园路交叉口向西500米路北，国基路60号，国家文化创意产业园B座2107室', '比亚迪', 'F0', '2017-04-19 20:18:48');
INSERT INTO `nj_userinfo` VALUES ('679', '王永超', '13526320788', '柘城县安平村四队', '一汽大众', '宝来', '2017-04-19 20:19:29');
INSERT INTO `nj_userinfo` VALUES ('680', '张五一', '13007547676', '郑州市二七区', '一汽丰田', '卡罗拉', '2017-04-19 20:32:25');
INSERT INTO `nj_userinfo` VALUES ('681', '宋延超', '15937110412', '河南省郑州市中牟县张庄镇', '吉利汽车', '博瑞', '2017-04-19 20:45:00');
INSERT INTO `nj_userinfo` VALUES ('682', '宁改革', '13783679244', '郑州高新区科学大道169号', '广汽丰田', '汉兰达', '2017-04-19 20:46:00');
INSERT INTO `nj_userinfo` VALUES ('683', '顾俊功', '13783677715', '郑州高新区科学大道169号', '长安福特', '锐界', '2017-04-19 20:47:15');
INSERT INTO `nj_userinfo` VALUES ('684', '顾俊功', '13783677715', '郑州高新区科学大道169号', '长安福特', '锐界', '2017-04-19 20:47:48');
INSERT INTO `nj_userinfo` VALUES ('685', '李望', '15238379986', '河南省郑州市管城区南曹乡政府对面', '东南汽车', 'DX3', '2017-04-19 20:49:56');
INSERT INTO `nj_userinfo` VALUES ('686', '鲍亚存', '13623864012', '河南省郑州市管城区南曹乡政府对面', '哈弗', 'H2', '2017-04-19 20:52:21');
INSERT INTO `nj_userinfo` VALUES ('687', '陈会锋', '18137872595', '金水区经七路丰产路交叉口南200米路东中亨大厦四楼市场部', '哈弗', 'H1', '2017-04-19 20:53:32');
INSERT INTO `nj_userinfo` VALUES ('688', '耿晓强', '15238024697', '河南省郑州市管城回族区第七大街宏光公寓', '吉利汽车', '帝豪GS', '2017-04-19 20:56:14');
INSERT INTO `nj_userinfo` VALUES ('689', '胡东东', '13592582144', '郑州大学路长江路向西100米路南百特美发', '吉利汽车', '帝豪', '2017-04-19 21:01:43');
INSERT INTO `nj_userinfo` VALUES ('690', '尚会涛', '15838070264', '金水区丰乐花苑18号楼3单元1楼西', '江淮', '瑞风S3', '2017-04-19 21:06:42');
INSERT INTO `nj_userinfo` VALUES ('691', null, null, null, null, null, '2017-04-19 21:17:30');
INSERT INTO `nj_userinfo` VALUES ('692', '杨光', '15137156329', '郑州市新密市未来城小区（新二高南）', '奇瑞汽车', '艾瑞泽5', '2017-04-19 21:17:39');
INSERT INTO `nj_userinfo` VALUES ('693', '韩群英', '13598887683', '新郑市郭店镇鑫兴建材城东十排1号', '哈弗', 'H6', '2017-04-19 21:45:48');
INSERT INTO `nj_userinfo` VALUES ('694', '安兴伟', '13783593633', '郑州市管城回族区南曹乡政府', '广汽丰田', '汉兰达', '2017-04-19 21:54:51');
INSERT INTO `nj_userinfo` VALUES ('695', '左峰', '13837115544', '郑州市金水区花园路农科路鑫苑世家2号楼1116', '斯柯达', '柯迪亚克', '2017-04-19 21:59:10');
INSERT INTO `nj_userinfo` VALUES ('696', '宋娜', '18697313065', '郑州市龙湖镇祥云路温莎城堡', '荣威', 'i6', '2017-04-19 22:07:28');
INSERT INTO `nj_userinfo` VALUES ('697', '宋吉利', '15393707585', '新郑市 龙湖镇祥云路温莎城堡', '吉利汽车', '帝豪', '2017-04-19 22:12:51');
INSERT INTO `nj_userinfo` VALUES ('698', '杨先生', '15283484483', '金城街百合湾小区', '一汽奔腾', 'X80', '2017-04-19 22:13:47');
INSERT INTO `nj_userinfo` VALUES ('699', '杨先生', '15283484483', '金城街百合湾小区', '一汽奔腾', 'X80', '2017-04-19 22:14:09');
INSERT INTO `nj_userinfo` VALUES ('700', '洪晓艳', '15515873178', '金水区丰乐路南丰街晖达新街坊小区9号楼', '广汽本田', '奥德赛', '2017-04-19 22:15:42');
INSERT INTO `nj_userinfo` VALUES ('701', '王女士', '13782081018', '金城街百合湾小区', '长安汽车', 'CS75', '2017-04-19 22:16:44');
INSERT INTO `nj_userinfo` VALUES ('702', '姜治成', '18300680503', '郑州金水区天荣国际建材港B', '众泰汽车', 'T600', '2017-04-19 22:21:07');
INSERT INTO `nj_userinfo` VALUES ('703', '姜治成', '18300680503', '郑州金水区天荣国际建材港B', '众泰汽车', 'T600', '2017-04-19 22:21:09');
INSERT INTO `nj_userinfo` VALUES ('704', '姜治成', '18300680503', '郑州金水区天荣国际建材港B区112-12', '众泰汽车', 'T600', '2017-04-19 22:22:39');
INSERT INTO `nj_userinfo` VALUES ('705', '王秀美', '15290074949', '河南省周口市扶沟县汴岗邮政局', '宝骏', '宝骏510', '2017-04-19 22:31:25');
INSERT INTO `nj_userinfo` VALUES ('706', '王霞', '13693719785', '郑州金水区天荣国际建材港B区112-12', '东风风行', '景逸X5', '2017-04-19 22:32:17');
INSERT INTO `nj_userinfo` VALUES ('707', '邵春燕', '13523410811', '郑州金水区天荣国际建材港B区112-12', '一汽大众', '宝来', '2017-04-19 22:34:00');
INSERT INTO `nj_userinfo` VALUES ('708', '赫春辉', '18838191841', '郑州市管城区十八里河镇宇通公司西门', '宝骏', '宝骏510', '2017-04-19 22:34:13');
INSERT INTO `nj_userinfo` VALUES ('709', '李海燕', '13223010208', '郑州金水区天荣国际建材港B区112-12', '一汽大众', '宝来', '2017-04-19 22:35:27');
INSERT INTO `nj_userinfo` VALUES ('710', '雍百松', '15638419310', '中牟县姚家乡河南玉康洗涤有限公司', '东南汽车', 'DX3', '2017-04-19 22:36:59');
INSERT INTO `nj_userinfo` VALUES ('711', '吴永刚', '15736750309', '郑州市新郑市龙湖镇文昌路与祥安路交叉口郑银村镇银行', '广汽Jeep', '自由光', '2017-04-19 22:37:49');
INSERT INTO `nj_userinfo` VALUES ('712', '辛晓燕', '15248133956', '郑州市新郑市龙湖镇金立方小区', '广汽Jeep', '自由光', '2017-04-19 22:41:03');
INSERT INTO `nj_userinfo` VALUES ('713', '贾盈盈', '15517517599', '郑州市二七区侯寨乡袁河村', '广汽传祺', 'GS8', '2017-04-19 22:42:56');
INSERT INTO `nj_userinfo` VALUES ('714', '申泽范', '13838385315', '郑州市二七区侯寨乡袁河村', '比亚迪', '宋', '2017-04-19 22:43:49');
INSERT INTO `nj_userinfo` VALUES ('715', '李楠', '18567023782', '河南省开封市祥符区西姜寨乡李店村', '奇瑞汽车', '艾瑞泽5', '2017-04-19 22:46:53');
INSERT INTO `nj_userinfo` VALUES ('716', '殷治华', '18625901747', '河南省郑州市新郑航空港区豫康新城山顶公寓', '哈弗', 'H6', '2017-04-19 22:48:02');
INSERT INTO `nj_userinfo` VALUES ('717', '赵宇轩', '18530014785', '郑州市桐柏北路威尼斯水城三期41号楼一单元三楼西户', '斯柯达', '柯迪亚克', '2017-04-19 23:05:23');
INSERT INTO `nj_userinfo` VALUES ('718', '王', '13949018997', '石化路52号9号楼五层西南', '广汽Jeep', '指南者', '2017-04-19 23:07:25');
INSERT INTO `nj_userinfo` VALUES ('719', '李祥', '15515538606', '巩义市小关镇改新东路40号', '东风本田', 'CR-V', '2017-04-19 23:09:13');
INSERT INTO `nj_userinfo` VALUES ('720', '王先生', '15978630066', '郑州福塔西边中铁一局项目部', '奇瑞汽车', '瑞虎7', '2017-04-19 23:17:30');
INSERT INTO `nj_userinfo` VALUES ('721', '于先生', '15333877655', '河南省郸城县支农路南段中心药店', '一汽-大众奥迪', '奥迪A6L', '2017-04-19 23:40:00');
INSERT INTO `nj_userinfo` VALUES ('722', '刘承润', '13838001688', '金水区文博花园12号楼3单元801室', '东风本田', 'CR-V', '2017-04-19 23:41:41');
INSERT INTO `nj_userinfo` VALUES ('723', '刘承润', '13838001688', '金水区文博花园12号楼3单元801室', '东风本田', 'CR-V', '2017-04-19 23:42:29');
INSERT INTO `nj_userinfo` VALUES ('724', '刘承润', '13838001688', '金水区文博花园12号楼3单元801室', '东风本田', 'CR-V', '2017-04-19 23:44:22');
INSERT INTO `nj_userinfo` VALUES ('725', '王修文', '13027629075', '中州大道柳林高速口南500米路东中国重汽河南给力汽贸', '标致(进口)', '4008(进口)', '2017-04-19 23:48:30');
INSERT INTO `nj_userinfo` VALUES ('726', '赵长田', '13525587939', '郑州市中原区工人路319号～10', '上汽通用别克', '昂科拉', '2017-04-19 23:48:46');
INSERT INTO `nj_userinfo` VALUES ('727', '赵长田', '13525587939', '郑州市中原区工人路319号～10', '上汽通用别克', '昂科拉', '2017-04-19 23:48:47');
INSERT INTO `nj_userinfo` VALUES ('728', '赵长田', '13525587939', '郑州市中原区工人路319号～10', '上汽通用别克', '昂科拉', '2017-04-19 23:48:49');
INSERT INTO `nj_userinfo` VALUES ('729', '赵长田', '13525587939', '郑州市中原区工人路319号～10', '上汽通用别克', '昂科拉', '2017-04-19 23:50:22');
INSERT INTO `nj_userinfo` VALUES ('730', '关英俊', '13937111911', '郑州市二七区庆丰街17号鑫苑现代城六号楼', '凯迪拉克', 'XT5', '2017-04-20 00:01:39');
INSERT INTO `nj_userinfo` VALUES ('731', '田', '13164328999', '商都路七里河南路华丰灯饰界D区九楼彩虹建材科技公司', '一汽大众', '迈腾', '2017-04-20 00:01:50');
INSERT INTO `nj_userinfo` VALUES ('732', '王涛', '18337144933', '河南省郑州市上街区新安路156', '上汽通用雪佛兰', '赛欧', '2017-04-20 00:03:14');
INSERT INTO `nj_userinfo` VALUES ('733', '王涛', '18337144933', '河南省郑州市上街区新安路156号华晨上院', '上汽通用雪佛兰', '赛欧', '2017-04-20 00:04:25');
INSERT INTO `nj_userinfo` VALUES ('734', '张国瑄', '18838060080', '郑州市经开区107辅道与经北四路交叉口亚丰不锈钢市场B区2排12-15号', '众泰汽车', 'T600', '2017-04-20 00:06:25');
INSERT INTO `nj_userinfo` VALUES ('735', '关英俊', '13937111911', '郑州市二七区庆丰街17号鑫苑现代城六号楼二单元', '凯迪拉克', 'XT5', '2017-04-20 00:06:34');
INSERT INTO `nj_userinfo` VALUES ('736', '张国瑄', '18838060080', '郑州市经开区107辅道与经北四路交叉口亚丰不锈钢市场B区2排12-15号', '北汽幻速', 'H6', '2017-04-20 00:08:36');
INSERT INTO `nj_userinfo` VALUES ('737', '任培源', '18037461412', '郑州市二七区伊河路兴华街向西50米路北远成快运', '江淮', '星锐', '2017-04-20 01:00:02');
INSERT INTO `nj_userinfo` VALUES ('738', '连海锋', '13676913342', '高新技术开发区化工路与腊梅路交叉口', '一汽丰田', '威驰', '2017-04-20 01:25:47');
INSERT INTO `nj_userinfo` VALUES ('739', '王震', '18530072960', '郑州市荥阳市城关乡龙港路南100米', '广汽丰田', '汉兰达', '2017-04-20 06:21:29');
INSERT INTO `nj_userinfo` VALUES ('740', '陈静', '18538103155', '郑州市荥阳市城关乡龙港路南100米', '广汽丰田', '汉兰达', '2017-04-20 06:24:59');
INSERT INTO `nj_userinfo` VALUES ('741', '鲍建章', '13673375635', '经开区1大街与经北5路交叉口科达4楼', '宝骏', '宝骏510', '2017-04-20 06:44:36');
INSERT INTO `nj_userinfo` VALUES ('742', '许爱军', '15037118999', '郑东新区七里河南路79号东周鸣翠苑小区', '奔驰(进口)', 'C级(进口)', '2017-04-20 07:06:57');
INSERT INTO `nj_userinfo` VALUES ('743', '魏嘉琪', '13525567373', '河南省郑州市金水区北二七路110号郑州市公安局', '广汽丰田', 'YARiS L 致炫', '2017-04-20 07:08:41');
INSERT INTO `nj_userinfo` VALUES ('744', '魏嘉琪', '13525567373', '河南省郑州市金水区北二七路110号郑州市公安局', '广汽丰田', 'YARiS L 致炫', '2017-04-20 07:09:01');
INSERT INTO `nj_userinfo` VALUES ('745', '胡静', '13803860222', '郑东新区七里河南路79号东周鸣翠苑小区', '路虎', '发现神行', '2017-04-20 07:09:34');
INSERT INTO `nj_userinfo` VALUES ('746', '李经纬', '18939514441', '建设路工农路保利百合9-1-2808', '宝骏', '宝骏310', '2017-04-20 07:10:07');
INSERT INTO `nj_userinfo` VALUES ('747', '张树良', '13782910772', '郑州花园北路花园口新蒲集团', '广汽传祺', 'GS4', '2017-04-20 07:11:14');
INSERT INTO `nj_userinfo` VALUES ('748', '张树良', '13782910772', '郑州花园北路花园口新蒲集团', '广汽传祺', 'GS4', '2017-04-20 07:11:32');
INSERT INTO `nj_userinfo` VALUES ('749', '徐立新', '18838237206', '航海东路富田太阳城47号楼2单元13A151#', '上海大众', '途昂', '2017-04-20 07:18:51');
INSERT INTO `nj_userinfo` VALUES ('750', '李晓鹏', '18639593171', '经开第五大街鹤立幼儿园家属院', '上汽通用五菱', '五菱宏光', '2017-04-20 07:24:42');
INSERT INTO `nj_userinfo` VALUES ('751', '徐治雄', '15890607988', '郑州金水区优胜北路岗杜街188号院', '斯柯达', '柯迪亚克', '2017-04-20 07:38:09');
INSERT INTO `nj_userinfo` VALUES ('752', '陈江伟', '18538281955', '新郑市', '东风日产', '轩逸', '2017-04-20 08:01:59');
INSERT INTO `nj_userinfo` VALUES ('753', '庹朝彦', '13525516166', '郑州市紫荆山路60号金成国贸大厦2707室', '江淮', '瑞风M5', '2017-04-20 08:09:51');
INSERT INTO `nj_userinfo` VALUES ('754', '郑立宏', '18637169088', '郑州市紫荆山路60号金成国贸大厦2707', '江淮', '瑞风M5', '2017-04-20 08:11:07');
INSERT INTO `nj_userinfo` VALUES ('755', '庹新悦', '13838331378', '郑州市紫荆山路60号金成国贸大厦2707号', '江淮', '瑞风M5', '2017-04-20 08:13:04');
INSERT INTO `nj_userinfo` VALUES ('756', '肖星成', '13087063608', '郑州市紫荆山路60号金成国贸大厦2707', '江淮', '瑞风M5', '2017-04-20 08:14:55');
INSERT INTO `nj_userinfo` VALUES ('757', '庹新悦', '13838331378', '郑州市紫荆山路60号金成国贸大厦2707号', '江淮', '瑞风M5', '2017-04-20 08:15:13');
INSERT INTO `nj_userinfo` VALUES ('758', '陈元哲', '18100331758', '郑州市金水区宏达路和普庆路交叉口普罗旺世六期', '奔驰(进口)', 'E级(进口)', '2017-04-20 08:39:09');
INSERT INTO `nj_userinfo` VALUES ('759', '赵彦伟', '18606882803', '郑州市金水区丰乐路南丰街晖达新街坊小区9号楼', '广汽本田', '奥德赛', '2017-04-20 08:40:14');
INSERT INTO `nj_userinfo` VALUES ('760', '李鹏', '13838552924', '河南省新郑市解放路东方国际南院21号楼2单元803', 'Jeep(进口) ', '牧马人', '2017-04-20 09:08:14');
INSERT INTO `nj_userinfo` VALUES ('761', '李宝森', '13523545485', '河南省新郑市人民路东方国际南院21号楼2单元803', '长安商用', '长安之星7', '2017-04-20 09:10:21');
INSERT INTO `nj_userinfo` VALUES ('762', '李富山', '15538160381', '郑州市郑东新区商都路与贾陈街交叉口  郑州驰星改装部', '吉利汽车', '帝豪GL', '2017-04-20 09:22:57');
INSERT INTO `nj_userinfo` VALUES ('763', '金新', '15538209993', '新郑路30号院7号楼', '广汽本田', '雅阁', '2017-04-20 09:31:17');
INSERT INTO `nj_userinfo` VALUES ('764', '郭航宇', '15938723137', '郑州市金水区三全路丰庆路向北200米豫武康居', '一汽丰田', 'RAV4荣放', '2017-04-20 09:35:22');
INSERT INTO `nj_userinfo` VALUES ('765', '张梦迪', '15837513972', '郑州市南阳路农业路交叉口南阳新村5号楼1单元5楼东户', '长安福特', '蒙迪欧', '2017-04-20 09:43:50');
INSERT INTO `nj_userinfo` VALUES ('766', '杨松', '18039676332', '郑东新区七里河南路空管花园', '奇瑞汽车', '艾瑞泽5', '2017-04-20 10:07:12');
INSERT INTO `nj_userinfo` VALUES ('767', '杨松', '18039676332', '郑东新区七里河南路空管花园', '奇瑞汽车', '艾瑞泽5', '2017-04-20 10:07:26');
INSERT INTO `nj_userinfo` VALUES ('768', '王俊旗', '18539918196', '郑州市管城区文兴路鼎瑞街紫东钢铁园D区18号河南安卓钢铁', '江淮', '瑞风S3', '2017-04-20 10:08:56');
INSERT INTO `nj_userinfo` VALUES ('769', '王俊旗', '18539918196', '郑州市管城区文兴路鼎瑞街紫东钢铁园D区18号河南安卓钢铁', '江淮', '瑞风S3', '2017-04-20 10:25:45');
INSERT INTO `nj_userinfo` VALUES ('770', '董有财', '13073723681', '紫荆山路商城路裕鸿国际C座17楼泰康人寿', '沃尔沃(进口)', 'V60', '2017-04-20 10:27:37');
INSERT INTO `nj_userinfo` VALUES ('771', '董有财', '13073723681', '紫荆山路商城路裕鸿国际C座17楼泰康人寿', '沃尔沃(进口)', 'V60', '2017-04-20 10:28:33');
INSERT INTO `nj_userinfo` VALUES ('772', '李菲菲', '17729770786', '紫荆山路商城路裕鸿国际C座17楼泰康人寿', '沃尔沃(进口)', 'V60', '2017-04-20 10:29:23');
INSERT INTO `nj_userinfo` VALUES ('773', '李宁', '15981999717', '河南省巩义市站街镇豫联工业园区河南博奥建设有限公司', '广汽三菱', '欧蓝德', '2017-04-20 10:41:12');
INSERT INTO `nj_userinfo` VALUES ('774', '水源', '13613811115', '南阳路华林都市家园25号楼', '广汽传祺', 'GS8', '2017-04-20 10:43:48');
INSERT INTO `nj_userinfo` VALUES ('775', '黄定超', '15503953936', '漯河市龙江路西段莲花医疗', '长安福特', '福睿斯', '2017-04-20 10:48:11');
INSERT INTO `nj_userinfo` VALUES ('776', '和海鹏', '17739792757', '城东南路与紫东路交叉口滨河花园2号楼二单元六楼', '哈弗', 'H6', '2017-04-20 10:55:24');
INSERT INTO `nj_userinfo` VALUES ('777', '李燕', '18537167694', '文化路与任寨北街悦美整形', '广汽Jeep', '指南者', '2017-04-20 11:09:53');
INSERT INTO `nj_userinfo` VALUES ('778', '李武林', '15639934092', '新郑市薛店镇华福御景小区', '上汽通用雪佛兰', '科鲁兹', '2017-04-20 11:21:16');
INSERT INTO `nj_userinfo` VALUES ('779', '孙培', '15890685883', '金水区姚桥', '广汽传祺', 'GS4', '2017-04-20 11:29:07');
INSERT INTO `nj_userinfo` VALUES ('780', '张圣宝', '15515896615', '未来路与纬二路交汇处东中心驾校', '众泰汽车', 'Z700', '2017-04-20 11:29:27');
INSERT INTO `nj_userinfo` VALUES ('781', '孙培', '15890685883', '金水区姚桥', '广汽传祺', 'GS4', '2017-04-20 11:30:53');
INSERT INTO `nj_userinfo` VALUES ('782', '王先生', '18737110006', '郑州市金水区经三路广电南路金印现代城6号楼22楼', '吉利汽车', '博越', '2017-04-20 11:41:53');
INSERT INTO `nj_userinfo` VALUES ('783', '王先生', '18737110006', '郑州市金水区经三路广电南路金印现代城6号楼22楼', '吉利汽车', '博越', '2017-04-20 11:42:36');
INSERT INTO `nj_userinfo` VALUES ('784', '李文科', '13262125315', '十八里河中心小学', '吉利汽车', '博越', '2017-04-20 11:53:51');
INSERT INTO `nj_userinfo` VALUES ('785', '石朋冲', '18639717031', '郑州市金水区信息学院路博颂路便民疏导点', '宝骏', '宝骏730', '2017-04-20 11:54:18');
INSERT INTO `nj_userinfo` VALUES ('786', '苏耀祥', '15036007100', '新密市大隗镇', '东风悦达起亚', 'K2', '2017-04-20 11:55:49');
INSERT INTO `nj_userinfo` VALUES ('787', null, null, null, null, null, '2017-04-20 11:55:59');
INSERT INTO `nj_userinfo` VALUES ('788', null, null, null, null, null, '2017-04-20 11:55:59');
INSERT INTO `nj_userinfo` VALUES ('789', '苏耀祥', '15036007100', '新密市大隗镇', '比亚迪', '元', '2017-04-20 11:57:42');
INSERT INTO `nj_userinfo` VALUES ('790', '苏耀祥', '15036007100', '新密市大隗镇', '比亚迪', '元', '2017-04-20 11:58:26');
INSERT INTO `nj_userinfo` VALUES ('791', '徐俊豪', '13838283057', '经七路56号院', '上海大众', '朗行', '2017-04-20 12:16:51');
INSERT INTO `nj_userinfo` VALUES ('792', '徐俊豪', '13838283057', '经七路56号院', '上海大众', '朗行', '2017-04-20 12:17:22');
INSERT INTO `nj_userinfo` VALUES ('793', '李艳霞', '15617891777', '登封市卢店镇月河花园', '上海大众', '途昂', '2017-04-20 12:20:16');
INSERT INTO `nj_userinfo` VALUES ('794', '徐冠超', '15617891777', '登封市卢店镇月河花园', '上海大众', '途昂', '2017-04-20 12:20:53');
INSERT INTO `nj_userinfo` VALUES ('795', '张彩', '18736037027', '金水路英协路楷林2412', '上海大众', 'POLO', '2017-04-20 12:25:02');
INSERT INTO `nj_userinfo` VALUES ('796', null, null, null, null, null, '2017-04-20 12:25:12');
INSERT INTO `nj_userinfo` VALUES ('797', '张小名', '18237159168', '航海路未来路老蓝钻2-1301', '一汽大众', '速腾', '2017-04-20 12:32:17');
INSERT INTO `nj_userinfo` VALUES ('798', '朱存', '15194639010', '东风路园田路交叉口向北500卤来享熟食店（园田路文劳路公交站牌路西）', '东风风行', '菱智', '2017-04-20 12:42:04');
INSERT INTO `nj_userinfo` VALUES ('799', '刘其帅', '15238659102', '河南九州通医药有限公司', '哈弗', 'H6', '2017-04-20 12:42:57');
INSERT INTO `nj_userinfo` VALUES ('800', '朱存', '15194639010', '东风路园田路交叉口向北500卤来享熟食店（园田路文劳路公交站牌路西）', '东风风行', '菱智', '2017-04-20 12:43:01');
INSERT INTO `nj_userinfo` VALUES ('801', '陈园星', '13383709885', '河南省虞城县东大同新村', '东风本田', 'XR-V', '2017-04-20 12:43:26');
INSERT INTO `nj_userinfo` VALUES ('802', '朱存', '15194639010', '东风路园田路交叉口向北500卤来享熟食店（园田路文劳路公交站牌路西）', '东风风行', '菱智', '2017-04-20 12:43:47');
INSERT INTO `nj_userinfo` VALUES ('803', '马剑恒', '13526720071', '郑州市长江路长江一号5号楼', '江淮', '瑞风A60', '2017-04-20 12:46:04');
INSERT INTO `nj_userinfo` VALUES ('804', '李清华', '15937107389', '航海路六大街经南二路30一14', '东风本田', 'CR-V', '2017-04-20 13:08:47');
INSERT INTO `nj_userinfo` VALUES ('805', '王宏生', '13203855298', '郑州市金水区花园路79号郑州市林业科技师范中心', '一汽大众', '迈腾', '2017-04-20 13:10:50');
INSERT INTO `nj_userinfo` VALUES ('806', '宋彦超', '15638883791', '郑州市中原区常庄水库家属院', '宝马(进口)', '宝马5系(进口)', '2017-04-20 13:11:50');
INSERT INTO `nj_userinfo` VALUES ('807', '田文露', '15225067991', '郑州市中原区常庄水库家属院', '宝马(进口)', '宝马5系(进口)', '2017-04-20 13:12:43');
INSERT INTO `nj_userinfo` VALUES ('808', '赵学业', '15837127213', '郑州市二七区祥云路正商城和园3号院1号楼3单元502', '上海大众', '朗逸', '2017-04-20 13:40:04');
INSERT INTO `nj_userinfo` VALUES ('809', '夏鹏凯', '13523551252', '中牟万邦国际农产品物流城7号楼11号，聚菇菌业', '东风日产', '奇骏', '2017-04-20 13:42:17');
INSERT INTO `nj_userinfo` VALUES ('810', '田金亮', '18236935335', '河南省荥阳市城关乡老城钢材市场申通快递', '一汽奔腾', 'X40', '2017-04-20 13:43:07');
INSERT INTO `nj_userinfo` VALUES ('811', '陈晨', '13526400932', '河南省新密市西大街下庄河', '广汽传祺', 'GS4', '2017-04-20 13:45:22');
INSERT INTO `nj_userinfo` VALUES ('812', '郭建朋', '18638589429', '马寨树青医学院后勤楼', '吉利汽车', '帝豪', '2017-04-20 13:49:42');
INSERT INTO `nj_userinfo` VALUES ('813', '邱径国', '13838298419', '郑州市金水区群英路第三十一中学', '广汽丰田', '汉兰达', '2017-04-20 14:03:29');
INSERT INTO `nj_userinfo` VALUES ('814', '田一帆', '18638258215', '郑州市二七区嵩山路与汉江路叉口亚星悦都3号楼', '一汽丰田', '卡罗拉', '2017-04-20 14:05:02');
INSERT INTO `nj_userinfo` VALUES ('815', '李园园', '13283717982', '郑州市金水区群英路第31中学。', '上汽通用别克', '凯越', '2017-04-20 14:05:49');
INSERT INTO `nj_userinfo` VALUES ('816', '贾海立', '18568259777', '龙兴嘉园7号楼804', '猎豹汽车', 'CS10', '2017-04-20 14:25:05');
INSERT INTO `nj_userinfo` VALUES ('817', '张晶晶', '18530855466', '郑州市二七区长江中路京江花园1号楼8层', '上海大众', 'POLO', '2017-04-20 14:37:40');
INSERT INTO `nj_userinfo` VALUES ('818', '张鸿飞', '17737581313', '河南鹤壁浚县新镇镇新镇村', '东南汽车', 'DX7', '2017-04-20 14:48:37');
INSERT INTO `nj_userinfo` VALUES ('819', '张洁', '13193923212', '文龙小区24', '一汽马自达', 'CX-4', '2017-04-20 15:10:55');
INSERT INTO `nj_userinfo` VALUES ('820', '张地', '13526697830', '客运管理处', '一汽马自达', 'CX-4', '2017-04-20 15:12:27');
INSERT INTO `nj_userinfo` VALUES ('821', '孔辉杰', '15729203236', '新鑫花园21号楼四楼西户', '宝骏', '宝骏510', '2017-04-20 15:16:48');
INSERT INTO `nj_userinfo` VALUES ('822', '陈凤', '18736025295', '郑州市中原区华强城市广场二期北门', '一汽马自达', '阿特兹', '2017-04-20 15:22:23');
INSERT INTO `nj_userinfo` VALUES ('823', '吕臣浩', '15738388926', '河南农业大学文化路校区', '北京汽车', 'BJ20', '2017-04-20 15:23:18');
INSERT INTO `nj_userinfo` VALUES ('824', '李红涛', '18937678679', '郑州市郑东新区', '长安商用', '欧尚', '2017-04-20 15:25:52');
INSERT INTO `nj_userinfo` VALUES ('825', '皇甫丙艳', '17638194698', '郑州市冬青街电子商务产业园4号楼东户212', '吉利汽车', '博越', '2017-04-20 15:26:49');
INSERT INTO `nj_userinfo` VALUES ('826', '翟先生', '15890196531', '二七区兴华南街托99号院2号楼一单元五楼东户', '广汽三菱', '欧蓝德', '2017-04-20 15:28:11');
INSERT INTO `nj_userinfo` VALUES ('827', '杨明阳', '15225181830', '郑州中原区建设路华山路交叉口郑州同安中医骨伤科医院放射科', '东风风度', 'MX5', '2017-04-20 15:30:43');
INSERT INTO `nj_userinfo` VALUES ('828', '赵建中', '15003825388', '新郑市郭店镇华阳寨村', '广汽丰田', '汉兰达', '2017-04-20 15:31:31');
INSERT INTO `nj_userinfo` VALUES ('829', '刘猛', '18530800091', '郑州市金水区丰庆路新村路口瑞穗苑小区', '上汽通用别克', '英朗', '2017-04-20 15:39:17');
INSERT INTO `nj_userinfo` VALUES ('830', '周长伟', '13938587201', '陇海路与嵩山路叉口南200米路东康桥阳光四季', '上海大众', '途昂', '2017-04-20 16:07:57');
INSERT INTO `nj_userinfo` VALUES ('831', '江小芳', '15515519199', '郑州市二七区嵩山南路锦绣山河五号院七号楼二单元1401', '广汽丰田', '凯美瑞', '2017-04-20 16:21:19');
INSERT INTO `nj_userinfo` VALUES ('832', '王秋忠', '15036119622', '新密市农业路梁沟', '郑州日产', '帕拉丁', '2017-04-20 16:22:45');
INSERT INTO `nj_userinfo` VALUES ('833', '刘超', '15515872305', '中州大道南三环文兴路鼎尚街交叉口嘉祥领仕馆售楼部', '长安福特', '福睿斯', '2017-04-20 16:26:55');
INSERT INTO `nj_userinfo` VALUES ('834', '邢小兵', '18538102217', '郑州市二七区嵩山南路锦绣山河五号院七号楼二单元1401', '广汽丰田', '凯美瑞', '2017-04-20 16:32:41');
INSERT INTO `nj_userinfo` VALUES ('835', '王先生', '13633711050', '经开区 前程大街 宇通和谐家园三区', '奇瑞汽车', '艾瑞泽5', '2017-04-20 16:43:32');
INSERT INTO `nj_userinfo` VALUES ('836', '刘肖俊', '15515512579', '郑州市二七区万达广场2号院3号楼3302', '广汽Jeep', '指南者', '2017-04-20 16:52:14');
INSERT INTO `nj_userinfo` VALUES ('837', '彭俊俊', '13526886227', '郑州市管城区南三环文治路路北中州花园小区', '郑州日产', '帅客', '2017-04-20 17:06:21');
INSERT INTO `nj_userinfo` VALUES ('838', '冀昊', '15838163386', '郑州市博颂路富邦铭邸一号楼', '众泰汽车', 'T600', '2017-04-20 17:07:03');
INSERT INTO `nj_userinfo` VALUES ('839', '孙伟峰', '13733830237', '南四环与新郑快速路南500米', '一汽大众', '迈腾', '2017-04-20 17:12:08');
INSERT INTO `nj_userinfo` VALUES ('840', '孟', '17639855453', '郑州管城回族区圃田乡大孙庄列子小学', '启辰', 'T90', '2017-04-20 17:16:23');
INSERT INTO `nj_userinfo` VALUES ('841', '小志', '18539336135', '台前县名都物流', '众泰汽车', 'T600', '2017-04-20 17:23:26');
INSERT INTO `nj_userinfo` VALUES ('842', '王会帮', '15036048089', '河南省郑州市新郑机场综保区海关申报大', '宝骏', '宝骏510', '2017-04-20 17:31:47');
INSERT INTO `nj_userinfo` VALUES ('843', '丁庚寅', '13526595184', '张魏寨36号院36号楼一单元一楼东户', '长安福特', '福克斯', '2017-04-20 18:07:27');
INSERT INTO `nj_userinfo` VALUES ('844', '刘顺超', '13643806770', '郑州经济开发区。18大街东昇汽车零部件有限公司。', 'MG', 'ZS', '2017-04-20 18:09:32');
INSERT INTO `nj_userinfo` VALUES ('845', '刘贵兵', '15738861862', '？郑州市航空港区豫康新城华鸿小区五号楼', '江铃汽车', '驭胜S350', '2017-04-20 18:18:07');
INSERT INTO `nj_userinfo` VALUES ('846', '赵占魁', '13503846023', '郑州市淮河路与勤劳街交叉路口向西100米路南42号院', '长安汽车', 'CS95', '2017-04-20 18:20:36');
INSERT INTO `nj_userinfo` VALUES ('847', '郭云霄', '18538757183', '新乡原阳平原新区滨湖大道太行大道交叉口河南五建项目部', '长安汽车', 'CS75', '2017-04-20 18:24:23');
INSERT INTO `nj_userinfo` VALUES ('848', '栗燕宾', '13663830754', '郑州市二七区马寨镇光明路交和睦路顺丰快递网点   郭盛龙转(栗燕宾)', '江淮', '瑞风M4', '2017-04-20 18:33:16');
INSERT INTO `nj_userinfo` VALUES ('849', '崔国俊', '18303638366', '郑州市高新区莲花街牡丹路北荣邦城18号楼', '长安商用', '欧力威', '2017-04-20 18:34:19');
INSERT INTO `nj_userinfo` VALUES ('850', '张琳琳', '15937103554', '郑州市管城区南大街28号院佳苑小区3号楼五单元四楼', '江淮', '瑞风S2mini', '2017-04-20 18:40:11');
INSERT INTO `nj_userinfo` VALUES ('851', '郑华', '15038063305', '管城区', '北京奔驰', 'E级', '2017-04-20 18:41:43');
INSERT INTO `nj_userinfo` VALUES ('852', '赵丹', '13939006955', '郑密路86号华裕小区四号楼', '长安福特', '福克斯', '2017-04-20 18:47:13');
INSERT INTO `nj_userinfo` VALUES ('853', '王军', '13937108416', '博颂路九号', '昌河铃木', '利亚纳A6', '2017-04-20 19:17:27');
INSERT INTO `nj_userinfo` VALUES ('854', '钟小康', '13128819288', '郑州市新郑市薛店镇薛店北街', '荣威', 'i6', '2017-04-20 19:31:42');
INSERT INTO `nj_userinfo` VALUES ('855', '刘伟', '18037163179', '建业贰号城邦：农业路与文化路交叉口向西300米路北', '宝马(进口)', '宝马X5', '2017-04-20 19:32:51');
INSERT INTO `nj_userinfo` VALUES ('856', '卞秦雨', '15838266315', '郑州市郑东新区金水东路与农业南路交叉口郑州美盛喜来登酒店', '吉利汽车', '豪情SUV', '2017-04-20 19:33:49');
INSERT INTO `nj_userinfo` VALUES ('857', '汤玉萍', '15837124399', '东风路与丰庆路交叉口向西200米路南', '哈弗', 'H1', '2017-04-20 19:45:43');
INSERT INTO `nj_userinfo` VALUES ('858', '侯雅倩', '15639051657', '商鼎路与心怡路交叉口 永和宇宙星广场1716', '北京现代', '朗动', '2017-04-20 19:54:31');
INSERT INTO `nj_userinfo` VALUES ('859', '孙', '13837197005', '郑州市管城区中州大道与石化路交叉口万科美景龙堂', '华晨宝马', '宝马5系', '2017-04-20 20:08:55');
INSERT INTO `nj_userinfo` VALUES ('860', '张伟', '13613846793', '郑州市南阳路宋寨南街博金眼睛城四楼', '东风本田', '思域', '2017-04-20 20:16:39');
INSERT INTO `nj_userinfo` VALUES ('861', '李书科', '13838212615', '新郑市漁夫子路308号', '东风本田', '思铂睿', '2017-04-20 20:23:50');
INSERT INTO `nj_userinfo` VALUES ('862', '杨军甫', '15537456521', '河南省长葛市坡胡镇西赵庄村', '广汽传祺', 'GS8', '2017-04-20 20:25:24');
INSERT INTO `nj_userinfo` VALUES ('863', '朱智勇', '17320127997', '省政府北门正光路11号', '广汽本田', '雅阁', '2017-04-20 20:26:25');
INSERT INTO `nj_userinfo` VALUES ('864', '朱少聪', '17320127995', '省政府北门正光路11号', '北京奔驰', 'GLC ', '2017-04-20 20:29:29');
INSERT INTO `nj_userinfo` VALUES ('865', '张亚勤', '13503842185', '省政府北门正光路11号', '比亚迪', '宋', '2017-04-20 20:32:39');
INSERT INTO `nj_userinfo` VALUES ('866', '朱玉香', '15837116260', '省政府北门正光路11号', '东风本田', 'CR-V', '2017-04-20 20:36:37');
INSERT INTO `nj_userinfo` VALUES ('867', '刘亚飞', '15238311239', '郑州航空港区张庄镇南街', '宝骏', '宝骏560', '2017-04-20 20:41:13');
INSERT INTO `nj_userinfo` VALUES ('868', '张中豪', '18037781814', '花园路红专路向西100米路北天茗茶业', '长安福特', '福睿斯', '2017-04-20 20:42:57');
INSERT INTO `nj_userinfo` VALUES ('869', null, null, null, null, null, '2017-04-20 20:43:08');
INSERT INTO `nj_userinfo` VALUES ('870', '范彩霞', '18337124001', '经三路金城国际3号楼702', '东风日产', '轩逸', '2017-04-20 20:44:31');
INSERT INTO `nj_userinfo` VALUES ('871', '张羽飞', '15139165876', '郑州市金水区天伦锦城3号楼', '长安福特', '福睿斯', '2017-04-20 20:47:39');
INSERT INTO `nj_userinfo` VALUES ('872', '吴腾飞', '18530125053', '万科大都会一期', '上汽通用别克', '英朗', '2017-04-20 20:55:52');
INSERT INTO `nj_userinfo` VALUES ('873', '李新民', '15538228287', '郑州中牟县博奥科技园', '吉利汽车', '远景', '2017-04-20 20:58:25');
INSERT INTO `nj_userinfo` VALUES ('874', '于资华', '18191510469', '郑州市杭空港区华鸿小区8号', '哈弗', 'H6', '2017-04-20 20:58:29');
INSERT INTO `nj_userinfo` VALUES ('875', '于资华', '18191510469', '郑州市杭空港区华鸿小区8号', '哈弗', 'H6', '2017-04-20 21:01:04');
INSERT INTO `nj_userinfo` VALUES ('876', '吴腾飞', '18530125053', '万科大都会一期', '上汽通用别克', '英朗', '2017-04-20 21:02:37');
INSERT INTO `nj_userinfo` VALUES ('877', '郭爱菊', '13633801729', '郑州市三全路与香山路向北300米安泰新龙小区15号楼88号', '长安福特', '福克斯', '2017-04-20 21:03:25');
INSERT INTO `nj_userinfo` VALUES ('878', '靳明卫', '13014582792', '新郑市辛店镇阳光花园52号楼一单元三楼东户、', '广汽传祺', 'GS8', '2017-04-20 21:03:43');
INSERT INTO `nj_userinfo` VALUES ('879', '陈顺强', '13939044433', '新密市来集镇陈沟柿树行81号', '江淮', '瑞风M3', '2017-04-20 21:06:33');
INSERT INTO `nj_userinfo` VALUES ('880', '张珊', '15037827222', '中原区西四环元通纺织城', '福建奔驰', '威霆', '2017-04-20 21:09:48');
INSERT INTO `nj_userinfo` VALUES ('881', '庞', '13598317341', '花园路', '长安福特', '锐界', '2017-04-20 21:10:00');
INSERT INTO `nj_userinfo` VALUES ('882', '郭香玲', '13939008971', '新郑市辛店镇阳光花园52号楼一单元三楼东户、', '东风本田', 'CR-V', '2017-04-20 21:10:45');
INSERT INTO `nj_userinfo` VALUES ('883', '张建党', '15890937182', '元通纺织城3号馆2楼2001', '一汽-大众奥迪', '奥迪Q5', '2017-04-20 21:11:18');
INSERT INTO `nj_userinfo` VALUES ('884', '郭香玲', '13939008971', '新郑市辛店镇阳光花园52号楼一单元三楼东户、', '东风本田', 'CR-V', '2017-04-20 21:11:58');
INSERT INTO `nj_userinfo` VALUES ('885', '张恒', '15638528282', '元通纺织城', '上海大众', '途观L', '2017-04-20 21:12:34');
INSERT INTO `nj_userinfo` VALUES ('886', '胡令发', '15637137153', '郑州市郑东新区高速奥兰花园福禄街16号1号楼2单元', '宝骏', '宝骏310', '2017-04-20 21:13:19');
INSERT INTO `nj_userinfo` VALUES ('887', '陈涛', '18111110600', '北三环索凌路阳光嘉园小区停车办公室', '上海大众', '途昂', '2017-04-20 21:13:29');
INSERT INTO `nj_userinfo` VALUES ('888', '郭香玲', '13939008971', '新郑市辛店镇阳光花园52号楼一单元三楼东户、', '东风本田', 'CR-V', '2017-04-20 21:14:37');
INSERT INTO `nj_userinfo` VALUES ('889', '闫素君', '18530015805', '郑州市郑东新区高速奥兰花园福禄街16号1号楼2单元', '宝骏', '宝骏330', '2017-04-20 21:15:06');
INSERT INTO `nj_userinfo` VALUES ('890', '闫素君', '18530015805', '郑州市郑东新区高速奥兰花园福禄街16号1号楼2单元', '宝骏', '宝骏330', '2017-04-20 21:16:15');
INSERT INTO `nj_userinfo` VALUES ('891', '杨军甫', '15537456521', '河南省长葛市坡胡镇西赵庄村', '广汽传祺', 'GS8', '2017-04-20 21:25:12');
INSERT INTO `nj_userinfo` VALUES ('892', '万震', '18037721797', '鹤壁市浚县白寺乡  前岗村', '长安福特', '锐界', '2017-04-20 21:25:13');
INSERT INTO `nj_userinfo` VALUES ('893', '李康利', '15837843969', '开封市杞县泥沟乡王庄村', '长安福特', '金牛座', '2017-04-20 21:31:47');
INSERT INTO `nj_userinfo` VALUES ('894', '曹永庆', '18537163160', '民安路38号院', '广汽本田', '雅阁', '2017-04-20 21:32:15');
INSERT INTO `nj_userinfo` VALUES ('895', '王珊珊', '18568755156', '民安路38号院', '上海大众', '朗逸', '2017-04-20 21:35:12');
INSERT INTO `nj_userinfo` VALUES ('896', '徐昇', '18638507923', '淮北街汝河路交叉口', '长安福特', '蒙迪欧', '2017-04-20 21:38:40');
INSERT INTO `nj_userinfo` VALUES ('897', '刘国庆', '15738757690', '郑州北方汽修学校', '哈弗', 'H6', '2017-04-20 21:38:54');
INSERT INTO `nj_userinfo` VALUES ('898', '田锋', '13598867618', '郑州市陇海西路299号', '广汽传祺', 'GS5', '2017-04-20 21:39:13');
INSERT INTO `nj_userinfo` VALUES ('899', '刘国庆', '15738757690', '郑州北方汽修学校', '哈弗', 'H6', '2017-04-20 21:39:25');
INSERT INTO `nj_userinfo` VALUES ('900', '司建伟', '18103718087', '新郑市龙湖镇前胡东社区', '猎豹汽车', 'CS10', '2017-04-20 21:41:24');
INSERT INTO `nj_userinfo` VALUES ('901', '黄兴', '18739916340', '惠济区花园口镇上海嘉联超市', '宝骏', '宝骏730', '2017-04-20 21:45:04');
INSERT INTO `nj_userinfo` VALUES ('902', '张东朋', '18538769911', '郑州市勤劳街康桥金鱼域上郡2', '保时捷', 'Cayenne', '2017-04-20 21:48:07');
INSERT INTO `nj_userinfo` VALUES ('903', '赵奎奎', '18790516392', '河南省郑州市经开区第十八大街和经南八北二路交叉口郑州东昇零部件有限公司', '长安商用', '欧尚', '2017-04-20 21:51:31');
INSERT INTO `nj_userinfo` VALUES ('904', '赵奎奎', '18790516392', '河南省郑州市经开区第十八大街和经南八北二路交叉口郑州东昇零部件有限公司', '长安商用', '欧尚', '2017-04-20 21:54:19');
INSERT INTO `nj_userinfo` VALUES ('905', '刘海霞', '15393744861', '黄店店镇', '宝骏', '宝骏560', '2017-04-20 22:00:59');
INSERT INTO `nj_userinfo` VALUES ('906', '刘海霞', '13393744861', '黄店店镇', '宝骏', '宝骏560', '2017-04-20 22:04:01');
INSERT INTO `nj_userinfo` VALUES ('907', '吴东亮', '18336304018', '中牟县经济开发区祥符卢村336号', '宝骏', '宝骏560', '2017-04-20 22:05:00');
INSERT INTO `nj_userinfo` VALUES ('908', '闫宗敏', '15516987778', '河南省新密市白訾镇中心大道', '东风风光', '580', '2017-04-20 22:05:10');
INSERT INTO `nj_userinfo` VALUES ('909', '张辰魁', '15324875040', '黄店店镇', '东南汽车', 'DX3', '2017-04-20 22:05:46');
INSERT INTO `nj_userinfo` VALUES ('910', '张松臣', '15978421283', '黄店店镇', '宝骏', '宝骏510', '2017-04-20 22:08:06');
INSERT INTO `nj_userinfo` VALUES ('911', '张艳霞', '13783673891', '黄店店镇', '一汽大众', '捷达', '2017-04-20 22:09:34');
INSERT INTO `nj_userinfo` VALUES ('912', '王晓东', '15517551257', '管城区南曹乡美景鸿城七里河', '奇瑞汽车', '艾瑞泽5', '2017-04-20 22:16:02');
INSERT INTO `nj_userinfo` VALUES ('913', '董向峰', '15333838697', '郑州市金水区文博西路白庙小区', '宝骏', '宝骏730', '2017-04-20 22:20:46');
INSERT INTO `nj_userinfo` VALUES ('914', '乔石磊', '13526715341', '河南省郑州市新密市苟堂镇九龙咀村王庄组', '昌河铃木', '北斗星X5', '2017-04-20 22:21:33');
INSERT INTO `nj_userinfo` VALUES ('915', '付亚鹏', '13523028552', '郑州市中原区电厂南路西三环望湖花园7号楼', '广汽传祺', 'GS4', '2017-04-20 22:27:44');
INSERT INTO `nj_userinfo` VALUES ('916', '付亚波', '13523028552', '郑州市中原区电厂南路西三环望湖花园', '一汽大众', '捷达', '2017-04-20 22:34:13');
INSERT INTO `nj_userinfo` VALUES ('917', '耿卫星', '15515786985', '河南省二七区侯寨乡华美石材路与紫玉路向南200米', '哈弗', 'H6', '2017-04-20 22:35:28');
INSERT INTO `nj_userinfo` VALUES ('918', '贾艳宾', '13837080958', '河南民权县车站北路南段', '江铃汽车', '特顺', '2017-04-20 22:37:57');
INSERT INTO `nj_userinfo` VALUES ('919', '贾艳宾', '13837080958', '河南民权县车站北路南段', '江铃汽车', '特顺', '2017-04-20 22:38:16');
INSERT INTO `nj_userinfo` VALUES ('920', '刘彬', '15036185381', '郑州是市高新区长春路合欢街交叉口布袋里小区', '观致汽车', '观致5', '2017-04-20 22:42:21');
INSERT INTO `nj_userinfo` VALUES ('921', '刘彬', '15036185381', '郑州是市高新区长春路合欢街交叉口布袋里小区', '观致汽车', '观致5', '2017-04-20 22:43:09');
INSERT INTO `nj_userinfo` VALUES ('922', '黄修邦', '18039159867', '河南省商丘市北海路669号', '吉利汽车', '博越', '2017-04-20 22:46:35');
INSERT INTO `nj_userinfo` VALUES ('923', '李嘉慧', '18237190819', '郑州市中原区岗坡路煤机南院', '上海大众', 'POLO', '2017-04-20 22:50:11');
INSERT INTO `nj_userinfo` VALUES ('924', '李大宝', '13271508851', '郑州市高新区玉兰街101号，郑州瑞能电气', '哈弗', 'H6', '2017-04-20 23:05:39');
INSERT INTO `nj_userinfo` VALUES ('925', '焦占峰', '15638857120', '郑州市中原区工人南路帝湖花园东门雅美口腔门诊部', '广汽Jeep', '指南者', '2017-04-20 23:08:08');
INSERT INTO `nj_userinfo` VALUES ('926', '牛志武', '18574131218', '南三环微配大世界A区4排9号', '北汽幻速', 'H6', '2017-04-20 23:08:23');
INSERT INTO `nj_userinfo` VALUES ('927', '朱先森', '14788881225', '紫荆山路商城路金城国贸0410', '宝骏', '宝骏510', '2017-04-20 23:15:50');
INSERT INTO `nj_userinfo` VALUES ('928', '郑辉', '13569323564', '郑州市二七区淮河路街道陇海路勤劳街铁路技师学院', '哈弗', 'H6', '2017-04-20 23:16:11');
INSERT INTO `nj_userinfo` VALUES ('929', '郑辉', '13569323564', '郑州市二七区淮河路街道勤劳街铁路技师学院', '哈弗', 'H6', '2017-04-20 23:19:05');
INSERT INTO `nj_userinfo` VALUES ('930', '向曙光', '18603843533', '郑州市二七区河医家属院', '一汽丰田', '卡罗拉', '2017-04-20 23:21:44');
INSERT INTO `nj_userinfo` VALUES ('931', '梁国征', '18037771037', '郑州市嵩山南路河南工业大学老校区三餐厅10号', '长安商用', 'CX70', '2017-04-20 23:26:09');
INSERT INTO `nj_userinfo` VALUES ('932', '胡艳雯', '18614967263', '郑州市嵩山南路河南工业大学老校区三餐厅10号', '比亚迪', 'S7', '2017-04-20 23:27:22');
INSERT INTO `nj_userinfo` VALUES ('933', '赵先生', '13938568583', '郑州市二七区大学路航海路航院家属院26#3#2楼', '东风本田', '思域', '2017-04-20 23:30:56');
INSERT INTO `nj_userinfo` VALUES ('934', '赵先生', '13938568583', '郑州市二七区大学路航海路航院家属院26#3#2楼', '东风本田', '思域', '2017-04-20 23:32:52');
INSERT INTO `nj_userinfo` VALUES ('935', '王永', '13526550917', '玉凤路与凤鸣路交叉口向东300米聚锦国际1302室', '一汽丰田', '卡罗拉', '2017-04-20 23:34:04');
INSERT INTO `nj_userinfo` VALUES ('936', '李武', '15515598351', '中原区准河路', '郑州日产', '帅客', '2017-04-20 23:34:51');
INSERT INTO `nj_userinfo` VALUES ('937', '赵先生', '13938568583', '郑州市大学路航海路航院家属院26#3#2楼', '东风本田', '思域', '2017-04-20 23:40:15');
INSERT INTO `nj_userinfo` VALUES ('938', '陈先生', '17839938910', '郑州市二七区北广北广42号！郑州和康医院，办公室4楼。', '哈弗', 'H6', '2017-04-20 23:44:18');
INSERT INTO `nj_userinfo` VALUES ('939', '吴林平', '15290653009', '红专路与经三路交叉口冰熊大酒店', '上海大众', '帕萨特', '2017-04-20 23:44:29');
INSERT INTO `nj_userinfo` VALUES ('940', '熊双文', '15910283027', '郑州', '一汽丰田', '皇冠', '2017-04-20 23:51:30');
INSERT INTO `nj_userinfo` VALUES ('941', '李蒙蒙', '13071789972', '河南省汝州市南环路大唐滟澜山售楼部', '一汽大众', '高尔夫', '2017-04-21 00:04:18');
INSERT INTO `nj_userinfo` VALUES ('942', '钟明军', '13383718321', '郑州市管城区城东路18号兴亚商务广场南门口复印店', '江淮', '瑞风M4', '2017-04-21 00:52:27');
INSERT INTO `nj_userinfo` VALUES ('943', '齐彦军', '15333719861', '中原万达广场B2416', '东风标致', '508', '2017-04-21 00:57:37');
INSERT INTO `nj_userinfo` VALUES ('944', '任彦凯', '18749833137', '荥阳桃花源社区', '上海大众', '桑塔纳', '2017-04-21 05:26:00');
INSERT INTO `nj_userinfo` VALUES ('945', '宋先生', '15890068516', '锦艺国际华都', '宝骏', '宝骏510', '2017-04-21 07:09:04');
INSERT INTO `nj_userinfo` VALUES ('946', '张亚平', '13783537342', '郑州管城区东明路郑汴路交叉口西300米，路南，兰贵小区，', '东风日产', 'LANNIA 蓝鸟', '2017-04-21 07:10:16');
INSERT INTO `nj_userinfo` VALUES ('947', '刘永辉', '18530730404', '新郑市龙湖镇林锦店社区', 'MG', 'ZS', '2017-04-21 07:12:10');
INSERT INTO `nj_userinfo` VALUES ('948', '邱鹏', '13523415008', '新密市郑州监狱九号楼', '东风日产', '逍客', '2017-04-21 07:12:52');
INSERT INTO `nj_userinfo` VALUES ('949', '李文豪', '18737364612', '家庭', '北汽幻速', 'S3L', '2017-04-21 07:18:10');
INSERT INTO `nj_userinfo` VALUES ('950', '郭', '18137387199', '中牟县八岗镇', '广汽传祺', 'GS4', '2017-04-21 07:24:43');
INSERT INTO `nj_userinfo` VALUES ('951', '李勇利', '17337121618', '新郑观音寺', '奇瑞汽车', '艾瑞泽5', '2017-04-21 07:36:22');
INSERT INTO `nj_userinfo` VALUES ('952', '刘卫超', '13849074037', '新密市刘砦镇李岗中石油加油站', '哈弗', 'H6', '2017-04-21 07:48:32');
INSERT INTO `nj_userinfo` VALUES ('953', '王红娟', '15939020071', '新密市刘砦镇李岗中石油加油站', '哈弗', 'H6', '2017-04-21 07:51:52');
INSERT INTO `nj_userinfo` VALUES ('954', '王飞', '15837140951', '郑州市郑东新区金水路与通泰路交叉口', '上汽通用五菱', '五菱荣光V', '2017-04-21 07:59:50');
INSERT INTO `nj_userinfo` VALUES ('955', '赵港', '17630109873', '管城区顺河路', '东南汽车', 'DX3', '2017-04-21 08:28:20');
INSERT INTO `nj_userinfo` VALUES ('956', '冯国栋', '18699454118', '上街区和昌都汇广场3号楼一单元205', '广汽本田', '飞度', '2017-04-21 08:31:58');
INSERT INTO `nj_userinfo` VALUES ('957', '李帅旗', '18638290227', '莲花街枫林路向北 200米瑞龙混凝土有限公司', '一汽大众', '速腾', '2017-04-21 08:34:04');
INSERT INTO `nj_userinfo` VALUES ('958', '苏凯', '15890969920', '开封尉氏县邢庄乡尚村', '吉利汽车', '远景SUV', '2017-04-21 08:47:03');
INSERT INTO `nj_userinfo` VALUES ('959', '车先生', '13623980651', '高新区瑞达路91号宏莲花园', '郑州日产', '锐骐多功能车', '2017-04-21 08:50:44');
INSERT INTO `nj_userinfo` VALUES ('960', '张娟娟', '18339997917', '商都路与万三路交叉口', '广汽传祺', 'GS4', '2017-04-21 09:02:36');
INSERT INTO `nj_userinfo` VALUES ('961', '刘金名', '18638167739', '河南省郑州市郑东新区郑开大道与高庄路山水生态城', '东南汽车', 'V5菱致', '2017-04-21 09:04:05');
INSERT INTO `nj_userinfo` VALUES ('962', '王洁', '13592602131', '郑州市管城回族区西大街168号五楼东南户(郑州市第三中学高层家属楼）  ', '一汽大众', 'A级', '2017-04-21 09:07:08');
INSERT INTO `nj_userinfo` VALUES ('963', '孙工场', '18087917712', '中原区郑上路西岗五厂家属院', '上海大众', '途观', '2017-04-21 09:09:44');
INSERT INTO `nj_userinfo` VALUES ('964', '赵振杰', '13137722912', '紫荆山路139号院紫荆小区一号楼二单元19号', '一汽奔腾', 'B90', '2017-04-21 09:10:21');
INSERT INTO `nj_userinfo` VALUES ('965', '陈志远', '18637182629', '郑州市金水区东风路文博西路白庙小区3号楼2单元3201', '华晨宝马', '宝马5系', '2017-04-21 09:23:26');
INSERT INTO `nj_userinfo` VALUES ('966', '胡改烁', '15093387874', '郑州市上街区和昌都汇广场3号楼1单元205', '广汽本田', '飞度', '2017-04-21 09:25:15');
INSERT INTO `nj_userinfo` VALUES ('967', '胡改烁', '15093387874', '郑州市上街区和昌都汇广场3号楼1单元205', '广汽本田', '飞度', '2017-04-21 09:26:08');
INSERT INTO `nj_userinfo` VALUES ('968', '付红卫', '13938296878', '河南省郑州市上街区济源路明珠公馆西区', '奥迪(进口)', '奥迪A3(进口)', '2017-04-21 09:29:23');
INSERT INTO `nj_userinfo` VALUES ('969', '罗保', '15690871980', '郑州煤机家属院南院67楼二楼西南户', '广汽Jeep', '指南者', '2017-04-21 09:29:30');
INSERT INTO `nj_userinfo` VALUES ('970', '辛媛', '13938560092', '河南省郑州市上街区明珠公馆西区6号楼1单元', '奥迪(进口)', '奥迪Q3(进口)', '2017-04-21 09:30:32');
INSERT INTO `nj_userinfo` VALUES ('971', '孙绍强', '13271670606', '周口市扶沟县新区全民健身中心', '广汽Jeep', '指南者', '2017-04-21 09:45:10');
INSERT INTO `nj_userinfo` VALUES ('972', '杜先生', '17629001816', '郑州市二里岗街道盛煌燕归园小区5号楼', '哈弗', 'H6', '2017-04-21 09:56:03');
INSERT INTO `nj_userinfo` VALUES ('973', '王军安', '13592600516', '管城区南曹乡南曹村菜场南门', '上海大众', '途昂', '2017-04-21 09:56:22');
INSERT INTO `nj_userinfo` VALUES ('974', '王军安', '13592600516', '管城区南曹乡南曹村菜场南门', '上海大众', '途昂', '2017-04-21 09:57:00');
INSERT INTO `nj_userinfo` VALUES ('975', '楚帆', '13525500189', '荥阳市三公路万业世纪广场', '一汽大众', '蔚领', '2017-04-21 10:05:12');
INSERT INTO `nj_userinfo` VALUES ('976', '辛磊', '15936016028', '周口市沈丘县洪山镇洪山北街辛磊诊所', '上海大众', '途观L', '2017-04-21 10:27:43');
INSERT INTO `nj_userinfo` VALUES ('977', '辛磊', '15936016028', '周口市沈丘县洪山镇洪山北街辛磊诊所', '上海大众', '途观L', '2017-04-21 10:28:05');
INSERT INTO `nj_userinfo` VALUES ('978', '范祖华', '13346663639', '新乡市卫滨区解放路南158号', '哈弗', 'H6 Coupe', '2017-04-21 10:31:57');
INSERT INTO `nj_userinfo` VALUES ('979', '郑黎柏', '15188399160', '郑州市经开区经北三路10号华润河南医药', '东风悦达起亚', 'KX5', '2017-04-21 10:43:39');
INSERT INTO `nj_userinfo` VALUES ('980', '张孟', '13526551428', '郑州市经开八大街经北四路长胜广场', '吉利汽车', '博越', '2017-04-21 10:48:49');
INSERT INTO `nj_userinfo` VALUES ('981', '张孟', '13526551428', '郑州市经开八大街经北四路长胜广场', '吉利汽车', '博越', '2017-04-21 10:49:06');
INSERT INTO `nj_userinfo` VALUES ('982', '孟伟国', '18236697307', '中牟万邦水果批发市场', '哈弗', 'H6', '2017-04-21 10:59:23');
INSERT INTO `nj_userinfo` VALUES ('983', '李培琴', '13140071808', '郑州市管城区文治路鼎尚街交叉口嘉祥城一楼1318', '江淮', '瑞风S3', '2017-04-21 10:59:52');
INSERT INTO `nj_userinfo` VALUES ('984', '鲁保建', '15821151533', '金水区东风东路马庄街，北大花园6号3单元402室', '长安商用', '欧尚', '2017-04-21 11:04:54');
INSERT INTO `nj_userinfo` VALUES ('985', '张晓刚', '15981984689', '金水区双铺路', '广汽丰田', '凯美瑞', '2017-04-21 11:10:16');
INSERT INTO `nj_userinfo` VALUES ('986', '黄舒婷', '15938266874', '郑州北环路索凌路口东北角颐派欧华', '一汽-大众奥迪', '奥迪A4L ', '2017-04-21 11:12:58');
INSERT INTO `nj_userinfo` VALUES ('987', '王树军', '18637262606', '河北邯郸磁县仁和路鑫家园', '奇瑞汽车', '艾瑞泽7', '2017-04-21 11:24:00');
INSERT INTO `nj_userinfo` VALUES ('988', '陈军安', '15515931400', '郑州市中牟县韩寺镇供销社', '宝马(进口)', '宝马5系(进口)', '2017-04-21 11:28:07');
INSERT INTO `nj_userinfo` VALUES ('989', '张会军', '15036146762', '河南省郑州市中牟县九龙镇工业园区金诺包装对门', '宝骏', '宝骏560', '2017-04-21 11:32:48');
INSERT INTO `nj_userinfo` VALUES ('990', '田永鑫', '18530052883', '中原区文化宫路26号院', '广汽丰田', '凯美瑞', '2017-04-21 11:34:09');
INSERT INTO `nj_userinfo` VALUES ('991', '王素影', '15238338967', '河南省郑州市中牟县九龙镇工业园区金诺包装对门', '哈弗', 'H6', '2017-04-21 11:34:23');
INSERT INTO `nj_userinfo` VALUES ('992', '韩龙飞', '18211992715', '中牟九龙镇和谐家园', '宝骏', '宝骏560', '2017-04-21 11:51:40');
INSERT INTO `nj_userinfo` VALUES ('993', '刘学智', '15311426313', '河南省新乡市牧野区王村镇大里村', '吉利汽车', '帝豪GS', '2017-04-21 11:53:11');
INSERT INTO `nj_userinfo` VALUES ('994', '王寒辉', '15290405883', '新密市，刘寨镇水竹园八队', '东风风行', '景逸X5', '2017-04-21 11:55:10');
INSERT INTO `nj_userinfo` VALUES ('995', '王寒辉', '15290405883', '新密市，刘寨镇水竹园八队', '东风风行', '景逸X5', '2017-04-21 11:55:33');
INSERT INTO `nj_userinfo` VALUES ('996', '王寒辉', '15290405883', '新密市，刘寨镇水竹园八队', '东风风行', '景逸X5', '2017-04-21 11:56:09');
INSERT INTO `nj_userinfo` VALUES ('997', '郑威威', '15036145253', '郑州市二七区铭功路259号楠桦小区a栋四楼410', '荣威', 'RX5', '2017-04-21 11:57:03');
INSERT INTO `nj_userinfo` VALUES ('998', '李亮亮', '13939058957', '新密市，刘寨镇水竹园八队', '东风风行', '景逸X5', '2017-04-21 12:00:03');
INSERT INTO `nj_userinfo` VALUES ('999', '陶延丽', '13721438746', '金水区燕黑路龙升源小区顺丰快递', '奇瑞汽车', '瑞虎5', '2017-04-21 12:03:59');
INSERT INTO `nj_userinfo` VALUES ('1000', '周先生', '13333714670', '亚太明珠', '东风风行', 'S500', '2017-04-21 12:20:56');
INSERT INTO `nj_userinfo` VALUES ('1001', '蒋昂霖', '13738455850', '郑州管城回族区西大街银座国际a905', '华晨宝马', '宝马5系', '2017-04-21 12:27:12');
INSERT INTO `nj_userinfo` VALUES ('1002', '范保红', '13526742066', '登封市唐庄乡玉溪小区', '宝骏', '宝骏510', '2017-04-21 12:27:36');
INSERT INTO `nj_userinfo` VALUES ('1003', '姚莉', '13663830381', '郑州管城回族区西大街银座国际a905', '奇瑞汽车', 'QQ', '2017-04-21 12:28:46');
INSERT INTO `nj_userinfo` VALUES ('1004', '鲁军民', '13393733407', '惠济区南阳路135号', '荣威', '360', '2017-04-21 12:30:50');
INSERT INTO `nj_userinfo` VALUES ('1005', '郭惠华', '13673366401', '郑州市货站街33号院3号楼', '一汽丰田', '普拉多', '2017-04-21 12:34:50');
INSERT INTO `nj_userinfo` VALUES ('1006', '郭华', '13673366401', '郑州市货站街33号院3号楼', '长安福特', '翼虎', '2017-04-21 12:37:04');
INSERT INTO `nj_userinfo` VALUES ('1007', '白雪强', '18738988055', '开封市尉氏县纱厂西路中段', '江淮', '瑞风', '2017-04-21 12:53:56');
INSERT INTO `nj_userinfo` VALUES ('1008', '杨铭阳', '13838313015', '二七区淮北街17号院', '一汽大众', '迈腾', '2017-04-21 12:54:16');
INSERT INTO `nj_userinfo` VALUES ('1009', '白雪强', '18738988055', '开封市尉氏县纱厂西路中段', '江淮', '瑞风', '2017-04-21 12:54:54');
INSERT INTO `nj_userinfo` VALUES ('1010', '王利强', '13523025512', '毕河小学', '哈弗', 'H6', '2017-04-21 13:01:02');
INSERT INTO `nj_userinfo` VALUES ('1011', '王利强', '13523025512', '毕河小学', '哈弗', 'H6', '2017-04-21 13:01:20');
INSERT INTO `nj_userinfo` VALUES ('1012', '朱张亮', '13526611817', '经一路与红专路', '广汽传祺', 'GS4', '2017-04-21 13:01:30');
INSERT INTO `nj_userinfo` VALUES ('1013', '宋', '15603719296', '国基路渠东路交叉口向北200米圆融文化中心二楼', '一汽丰田', '威驰', '2017-04-21 13:02:10');
INSERT INTO `nj_userinfo` VALUES ('1014', '赵青芹', '15638201118', '新郑市新建北路府后街口南20米路西362号春林眼镜店二楼北户', '宝骏', '宝骏730', '2017-04-21 13:18:40');
INSERT INTO `nj_userinfo` VALUES ('1015', '闫鹏', '13607643175', '航海西路8号院金盾花园7号楼5单元1楼西', '斯柯达', '柯迪亚克', '2017-04-21 13:21:32');
INSERT INTO `nj_userinfo` VALUES ('1016', '周芳', '17797752822', '中原区航海西路8号院金盾花园7号楼5单元一楼西', '斯柯达', '柯迪亚克', '2017-04-21 13:23:03');
INSERT INTO `nj_userinfo` VALUES ('1017', '赵楠', '18638161683', '金水区文化路与北三环交叉口西200米路北四季广场接待中心', '东南汽车', 'DX3', '2017-04-21 13:31:56');
INSERT INTO `nj_userinfo` VALUES ('1018', '徐小胖', '17303827518', '河南省郑州市中牟县前程路8号郑州工商学院', '斯巴鲁', '森林人', '2017-04-21 13:33:39');
INSERT INTO `nj_userinfo` VALUES ('1019', '周耀东', '15838215954', '棉纺路盛润锦绣城11号楼', 'MG', '锐腾', '2017-04-21 13:34:34');
INSERT INTO `nj_userinfo` VALUES ('1020', '赵远军', '13673620855', '二七区候寨乡樱桃沟', '吉利汽车', '博越', '2017-04-21 13:46:09');
INSERT INTO `nj_userinfo` VALUES ('1021', '高先生', '18937188219', '郑州市金水区金水路与民航路交叉口植得口腔医院', '上汽通用别克', '英朗', '2017-04-21 13:49:20');
INSERT INTO `nj_userinfo` VALUES ('1022', '孙晓健', '17839958618', '郑州市航海路与嵩山路索克世纪大厦', '哈弗', 'H2s', '2017-04-21 13:50:31');
INSERT INTO `nj_userinfo` VALUES ('1023', '曹小磊', '18103902053', '郑州市航海路与嵩山路交叉口索克世纪大厦', '吉利汽车', '帝豪GS', '2017-04-21 13:52:32');
INSERT INTO `nj_userinfo` VALUES ('1024', '曹小磊', '18103902053', '郑州市航海路与嵩山路交叉口索克世纪大厦', '吉利汽车', '帝豪GS', '2017-04-21 14:03:13');
INSERT INTO `nj_userinfo` VALUES ('1025', '陈晓阳', '15037868067', '开封市杞县泥沟乡王庄村', '宝骏', '宝骏510', '2017-04-21 14:10:41');
INSERT INTO `nj_userinfo` VALUES ('1026', '肖同杰', '15639926799', '郑州市文化北路36号中鼎花园6号楼6—2—', '哈弗', 'H6', '2017-04-21 14:17:19');
INSERT INTO `nj_userinfo` VALUES ('1027', '宋桂玲', '13938597113', '文化北路36号院6号楼', '哈弗', 'H6', '2017-04-21 14:21:00');
INSERT INTO `nj_userinfo` VALUES ('1028', '江保民', '13027713508', '郑州市中原区建设西路同汇花园二期8号楼1808', '广汽传祺', 'GS4', '2017-04-21 14:44:35');
INSERT INTO `nj_userinfo` VALUES ('1029', '王建锋', '18848889800', '郑州中牟县大孟镇普罗旺世2区5号楼', '奇瑞汽车', '艾瑞泽5', '2017-04-21 15:12:31');
INSERT INTO `nj_userinfo` VALUES ('1030', '李慧', '15038052390', '郑州中牟县大孟镇普罗旺世2区2号楼', '吉利汽车', '帝豪', '2017-04-21 15:14:42');
INSERT INTO `nj_userinfo` VALUES ('1031', '刘文超', '18337241375', '生产路4号院', '哈弗', 'H6 Coupe', '2017-04-21 15:23:36');
INSERT INTO `nj_userinfo` VALUES ('1032', '刘洋', '13526101347', '生产路4号院1单元6楼东', '哈弗', 'H6', '2017-04-21 15:25:29');
INSERT INTO `nj_userinfo` VALUES ('1033', '李元元', '13140000870', '南阳路林荫大道小区3号楼2单元', '猎豹汽车', 'CS10', '2017-04-21 15:28:53');
INSERT INTO `nj_userinfo` VALUES ('1034', '冯延霞', '15838291720', '新郑龙湖镇国际城', '猎豹汽车', '猎豹CT5', '2017-04-21 15:46:15');
INSERT INTO `nj_userinfo` VALUES ('1035', '冯延霞', '15838291720', '新郑龙湖镇国际城', '猎豹汽车', '猎豹CT5', '2017-04-21 15:46:32');
INSERT INTO `nj_userinfo` VALUES ('1036', '薛京霞', '13353802687', '中原区文化宫路102号外国语小学', '哈弗', 'H6', '2017-04-21 15:49:23');
INSERT INTO `nj_userinfo` VALUES ('1037', '尚昆仑', '15738824612', '河南郑州郑东新区商鼎路和顺街交叉口广地和顺中心A座4楼', '长安福特', '福克斯', '2017-04-21 15:49:37');
INSERT INTO `nj_userinfo` VALUES ('1038', '闫宗敏', '15516987778', '河南省新密市白訾镇中心大道', '东风风光', '580', '2017-04-21 15:58:42');
INSERT INTO `nj_userinfo` VALUES ('1039', '杨勇', '18738125802', '经开区宇通和谐家园3号院21号楼', '哈弗', 'H2', '2017-04-21 16:05:00');
INSERT INTO `nj_userinfo` VALUES ('1040', '伊振俊', '13384038881', '新郑市龙湖镇祥云路双桥印象，三号楼六零二室', '东风风行', 'SX6', '2017-04-21 16:23:17');
INSERT INTO `nj_userinfo` VALUES ('1041', '康丽丽', '18203672584', '京开区宇通和谐家园3号院21号楼', '吉利汽车', '博越', '2017-04-21 16:26:44');
INSERT INTO `nj_userinfo` VALUES ('1042', '博永好', '13965878182', '安徽淮北梨园新村二期', '广汽传祺', 'GS4', '2017-04-21 16:46:04');
INSERT INTO `nj_userinfo` VALUES ('1043', '刘惠杰', '15038094317', '河南省新郑市八千乡沙张村', '奇瑞汽车', '艾瑞泽5', '2017-04-21 16:57:00');
INSERT INTO `nj_userinfo` VALUES ('1044', '赵飞', '13683817834', '二七区马寨镇曙光路杨寨菜市场西口', '吉利汽车', '帝豪GL', '2017-04-21 17:06:40');
INSERT INTO `nj_userinfo` VALUES ('1045', '李强威', '18639698670', '河南省郑州市新郑机场综保区海关申报大', '宝骏', '宝骏560', '2017-04-21 17:15:24');
INSERT INTO `nj_userinfo` VALUES ('1046', '李强威', '18639698670', '河南省郑州市新郑机场综保区海关申报大', '宝骏', '宝骏560', '2017-04-21 17:15:30');
INSERT INTO `nj_userinfo` VALUES ('1047', '宋刚', '13939067527', '郑州市中原路93号1413室（请寄两张）', '广汽传祺', 'GS8', '2017-04-21 17:23:15');
INSERT INTO `nj_userinfo` VALUES ('1048', '李权', '13213208942', '郑州市上街区许昌路理想名城6号楼', '上汽通用雪佛兰', '科沃兹', '2017-04-21 17:26:26');
INSERT INTO `nj_userinfo` VALUES ('1049', '张新胜', '13598081784', '郑州市惠济区绿源路9号', '众泰汽车', 'T600', '2017-04-21 17:32:22');
INSERT INTO `nj_userinfo` VALUES ('1050', '张新胜', '13598081784', '郑州市惠济区绿源路9号', '广汽传祺', 'GS5', '2017-04-21 17:34:35');
INSERT INTO `nj_userinfo` VALUES ('1051', '张新胜', '13598081784', '郑州市惠济区绿源路9号', '广汽传祺', 'GS5', '2017-04-21 17:34:50');
INSERT INTO `nj_userinfo` VALUES ('1052', '张进才', '13223081969', '郑州市航空港区综合保税区富士康k区大门口', '广汽丰田', '雷凌', '2017-04-21 17:36:20');
INSERT INTO `nj_userinfo` VALUES ('1053', '贾书杰', '15890620963', '郑州市宇通重工西门', '东风日产', '轩逸', '2017-04-21 17:52:30');
INSERT INTO `nj_userinfo` VALUES ('1054', '朱景霞', '13938501276', '荥阳市建业百货', '荣威', '360', '2017-04-21 17:54:15');
INSERT INTO `nj_userinfo` VALUES ('1055', '贾书杰', '15890620963', '郑州市宇通重工西门', '东风日产', '轩逸', '2017-04-21 17:54:56');
INSERT INTO `nj_userinfo` VALUES ('1056', '崔文辉', '15188320118', '郑州市上街区金华路德宝花南十米聚星美发店', '猎豹汽车', 'CS10', '2017-04-21 17:55:08');
INSERT INTO `nj_userinfo` VALUES ('1057', '贾书杰', '15890620963', '郑州市宇通重工西门', '东风日产', '轩逸', '2017-04-21 17:56:09');
INSERT INTO `nj_userinfo` VALUES ('1058', '支永峰', '15735399097', '郑州客运总站', '一汽大众', '速腾', '2017-04-21 18:27:03');
INSERT INTO `nj_userinfo` VALUES ('1059', '王世明', '18738902235', '新郑市新村镇中强木业睿龙家具厂', '长安商用', 'CX70', '2017-04-21 18:41:02');
INSERT INTO `nj_userinfo` VALUES ('1060', '刘霞英', '13253533690', '郑州市金水区新龙小区', '哈弗', 'H6', '2017-04-21 18:52:40');
INSERT INTO `nj_userinfo` VALUES ('1061', '李杰', '15837125371', '项城市范集鎮康庄大道481号', '长安福特', '锐界', '2017-04-21 19:03:14');
INSERT INTO `nj_userinfo` VALUES ('1062', '宗降霞', '13607683543', '郑州客运总站', '一汽大众', '速腾', '2017-04-21 19:06:36');
INSERT INTO `nj_userinfo` VALUES ('1063', '耿智鹏', '15649012717', '二七区中原路东路98号防空兵学院南门', '上海大众', '途观', '2017-04-21 19:11:21');
INSERT INTO `nj_userinfo` VALUES ('1064', '程平', '17603711888', '祥云路正商城6号院', '长安福特', '翼搏', '2017-04-21 19:22:54');
INSERT INTO `nj_userinfo` VALUES ('1065', '曲玉亮', '18530037641', '郑州阳光城五号院', '奔驰(进口)', 'S级', '2017-04-21 19:28:27');
INSERT INTO `nj_userinfo` VALUES ('1066', '曲玉亮', '18530037641', '郑州中原区电厂路正商明钻一期九号楼一单元509', '奔驰(进口)', 'S级', '2017-04-21 19:31:58');
INSERT INTO `nj_userinfo` VALUES ('1067', '李堃', '13203859777', '富田太阳城47号楼1单元015号', '北京现代', '朗动', '2017-04-21 19:32:01');
INSERT INTO `nj_userinfo` VALUES ('1068', '范占科', '15093325866', '郑州市新郑市郭店镇大范庄村108号', '哈弗', 'H9', '2017-04-21 19:33:45');
INSERT INTO `nj_userinfo` VALUES ('1069', '杨军甫', '15136865985', '长葛市坡胡镇西赵庄村', '广汽传祺', 'GS8', '2017-04-21 19:38:27');
INSERT INTO `nj_userinfo` VALUES ('1070', '沈明亮', '13333855213', '凤凰路城东路交叉口东150米～1+1名家', '江铃汽车', '驭胜S350', '2017-04-21 19:49:28');
INSERT INTO `nj_userinfo` VALUES ('1071', '王炎波', '13523422522', '新密市郑州监狱九号楼', '东风日产', '轩逸', '2017-04-21 19:53:33');
INSERT INTO `nj_userinfo` VALUES ('1072', '王炎波', '13523422522', '新密市郑州监狱九号楼', '东风日产', '轩逸', '2017-04-21 20:02:23');
INSERT INTO `nj_userinfo` VALUES ('1073', '贾玉斐', '13333672680', '河南省南阳市镇平县', '荣威', '950', '2017-04-21 20:03:30');
INSERT INTO `nj_userinfo` VALUES ('1074', '张帅伟', '18530553361', '河南省郑州市航空港区润丰悦尚8栋2单元903', '吉利汽车', '帝豪', '2017-04-21 20:09:03');
INSERT INTO `nj_userinfo` VALUES ('1075', '李文宁', '18736903332', '开封市禹王台区汪屯乡马头村', '上海大众', '桑塔纳', '2017-04-21 20:10:49');
INSERT INTO `nj_userinfo` VALUES ('1076', '胡海港', '13030314848', '桐柏路汝河路交叉口升龙玉玺项目部木工组胡海港', '东南汽车', 'DX3', '2017-04-21 20:19:26');
INSERT INTO `nj_userinfo` VALUES ('1077', '武凯', '15938705919', '荥阳市惠民路住建局城建监察大队', '哈弗', 'H2', '2017-04-21 20:29:53');
INSERT INTO `nj_userinfo` VALUES ('1078', '鲁德超', '15639908127', '中部两岸海鲜市场B5一122', '东风悦达起亚', 'KX7', '2017-04-21 20:30:16');
INSERT INTO `nj_userinfo` VALUES ('1079', '陈涛', '18603711368', '郑州国基路西史赵三期二十号路1921', '上海大众', '途昂', '2017-04-21 20:36:48');
INSERT INTO `nj_userinfo` VALUES ('1080', '李小涛', '15617665713', '金城街百合湾一号楼2504', '华晨宝马', '宝马3系', '2017-04-21 20:43:33');
INSERT INTO `nj_userinfo` VALUES ('1081', '王康', '15136772231', '郑州市管城区十八里河镇香江路与刘湾路东交叉口八郎寨国基工地', '东风日产', '逍客', '2017-04-21 20:46:33');
INSERT INTO `nj_userinfo` VALUES ('1082', '王亭杰', '13526711395', '郑州市二七区勤劳街58号院一单元11号', '一汽大众', '迈腾', '2017-04-21 20:58:00');
INSERT INTO `nj_userinfo` VALUES ('1083', '许从超', '18737159525', '郑州市正光路晖达新领地三期13号楼2单元', '广汽本田', '锋范', '2017-04-21 21:06:31');
INSERT INTO `nj_userinfo` VALUES ('1084', '陈远远', '15093292283', '河南省新郑市薛店镇世纪广场红绿灯南一百米超人燃具店', '东风本田', 'CR-V', '2017-04-21 21:07:23');
INSERT INTO `nj_userinfo` VALUES ('1085', '彭新英', '13838574391', '河南省新郑市薛店镇世纪广场红绿灯南一百米超人燃具店', '广汽丰田', '凯美瑞', '2017-04-21 21:09:37');
INSERT INTO `nj_userinfo` VALUES ('1086', '陈松', '17319736484', '郑州市金水区福彩路安泰嘉园', '一汽大众', '速腾', '2017-04-21 21:11:58');
INSERT INTO `nj_userinfo` VALUES ('1087', '陈水成', '13525570828', '河南省新郑市薛店镇世纪广场红绿灯南一百米超人燃具店', '东风日产', '奇骏', '2017-04-21 21:12:20');
INSERT INTO `nj_userinfo` VALUES ('1088', '冯晓明', '18603713926', '郑汴路环球国际大厦A座1706', '上海大众', '途观L', '2017-04-21 21:14:15');
INSERT INTO `nj_userinfo` VALUES ('1089', '焦海峰', '15890046036', '新郑薛店镇薛店大道椿长仪表厂', '奇瑞汽车', '艾瑞泽5', '2017-04-21 21:16:14');
INSERT INTO `nj_userinfo` VALUES ('1090', '李青奇', '13838298666', '巩义市邮局', '一汽大众', '迈腾', '2017-04-21 21:19:25');
INSERT INTO `nj_userinfo` VALUES ('1091', '汪锋', '18603856899', '郑州二七万达广场2号院', '上汽通用雪佛兰', '科沃兹', '2017-04-21 21:21:10');
INSERT INTO `nj_userinfo` VALUES ('1092', '陈宏乐', '13938248946', '河南省郑州市新郑市丽水华庭6-1001', '上海大众', '帕萨特', '2017-04-21 21:25:17');
INSERT INTO `nj_userinfo` VALUES ('1093', '时运丽', '15136228929', '郑州新郑郭店马安（家庭四人）', '长安福特', '致胜', '2017-04-21 21:27:17');
INSERT INTO `nj_userinfo` VALUES ('1094', '张先生', '13525551081', '巩义市孝义镇石灰务村大门口', '启辰', 'T70', '2017-04-21 21:27:22');
INSERT INTO `nj_userinfo` VALUES ('1095', '赵连超', '13938256360', '郑州上街区晨光社区16号院', '东风本田', '思域', '2017-04-21 21:27:37');
INSERT INTO `nj_userinfo` VALUES ('1096', '赵连超', '13938256360', '郑州上街区晨光社区16号院', '东风本田', '思域', '2017-04-21 21:29:00');
INSERT INTO `nj_userinfo` VALUES ('1097', '吕晓伯', '18603597323', '客运总站', '上海大众', '朗逸', '2017-04-21 21:32:04');
INSERT INTO `nj_userinfo` VALUES ('1098', '孟鹏飞', '18037871160', '河南省新郑市八千乡瑞安盾ofo共享单车', '荣威', '360', '2017-04-21 21:32:39');
INSERT INTO `nj_userinfo` VALUES ('1099', '孟鹏飞', '18037871160', '河南省新郑市八千乡瑞安盾门厂', '荣威', '360', '2017-04-21 21:33:14');
INSERT INTO `nj_userinfo` VALUES ('1100', '孟鹏飞', '18037871160', '河南省新郑市八千乡瑞安盾门厂', '荣威', '360', '2017-04-21 21:33:38');
INSERT INTO `nj_userinfo` VALUES ('1101', '李', '13673341139', '五龙口路秦岭路爱便利代收', '东风风行', '景逸X5', '2017-04-21 21:46:15');
INSERT INTO `nj_userinfo` VALUES ('1102', '李赞扬', '15617980629', '河南省郑州市荥阳市塔山路与汜河路路口向北200', '东风本田', '思域', '2017-04-21 21:47:09');
INSERT INTO `nj_userinfo` VALUES ('1103', '李', '13673341139', '五龙口路秦岭路爱便利代收', '东风风行', '景逸X5', '2017-04-21 21:47:12');
INSERT INTO `nj_userinfo` VALUES ('1104', '李莹洁', '18538061132', '郑州市高新区冬青街26号电子商务产业园6号楼1103  3张', '东风本田', '思域', '2017-04-21 21:50:25');
INSERT INTO `nj_userinfo` VALUES ('1105', '李海永', '18537108858', '郑州市郑东新区福禄街与西周路交叉口向东200米', '斯柯达', '柯迪亚克', '2017-04-21 21:50:30');
INSERT INTO `nj_userinfo` VALUES ('1106', '王莎莎', '15239706809', '长盛广场2#1817', '哈弗', 'H6', '2017-04-21 21:51:23');
INSERT INTO `nj_userinfo` VALUES ('1107', '于资华', '18191510469', '郑州市杭空港区华鸿小区8号', '郑州日产', '日产NV200', '2017-04-21 22:00:27');
INSERT INTO `nj_userinfo` VALUES ('1108', '王志远', '13837225987', '河南省安阳市龙安区太行路与文昌大道交叉口东10米路南北上广汽车超市', '上海大众', '朗逸', '2017-04-21 22:05:07');
INSERT INTO `nj_userinfo` VALUES ('1109', '13526721765', '13526721765', '万邦', '上汽通用别克', '英朗', '2017-04-21 22:18:45');
INSERT INTO `nj_userinfo` VALUES ('1110', '姚会峰', '13733198769', '航海路107 经北四路向东五百米  裕隆钢铁物流园 飞鹰6号库', '一汽奔腾', 'X40', '2017-04-21 22:19:18');
INSERT INTO `nj_userinfo` VALUES ('1111', '潘潘', '13526721765', '万邦', '上汽通用别克', '英朗', '2017-04-21 22:19:47');
INSERT INTO `nj_userinfo` VALUES ('1112', '姚会峰', '13733198769', '航海路107 经北四路向东五百米  裕隆钢铁物流园 飞鹰6号库', '江淮', '瑞风S3', '2017-04-21 22:20:59');
INSERT INTO `nj_userinfo` VALUES ('1113', '谢志明', '13598056999', '巩义市康店金工机械厂巩义市康店大桥北600米', '东风日产', '奇骏', '2017-04-21 22:26:28');
INSERT INTO `nj_userinfo` VALUES ('1114', '吴', '13700878555', '郑州市上街区工业路西段', '奔驰(进口)', 'S级', '2017-04-21 22:49:03');
INSERT INTO `nj_userinfo` VALUES ('1115', '康先生', '13937172220', '河南省荥阳市贾峪镇', '上汽通用雪佛兰', '探界者', '2017-04-21 22:50:06');
INSERT INTO `nj_userinfo` VALUES ('1116', '戚事业', '18224513518', '郑州市高新区冬青街101号', '上汽通用别克', '君威', '2017-04-21 22:56:42');
INSERT INTO `nj_userinfo` VALUES ('1117', '宋先生', '15637180176', '郑州市新密市美的顾客服务中心', '北汽幻速', 'H6', '2017-04-21 22:58:16');
INSERT INTO `nj_userinfo` VALUES ('1118', '卢浩垒', '15038115122', '郑州市新郑市龙湖镇岗东村', '宝骏', '宝骏510', '2017-04-21 23:12:29');
INSERT INTO `nj_userinfo` VALUES ('1119', '刘海领', '15565057558', '河南省郑州市新郑市后屯一巷', '东南汽车', 'DX3', '2017-04-21 23:13:01');
INSERT INTO `nj_userinfo` VALUES ('1120', '马晓华', '15188357051', '陇海路与未来路龙凤苑小区', '东风本田', 'CR-V', '2017-04-21 23:20:11');
INSERT INTO `nj_userinfo` VALUES ('1121', '马晓华', '15188357051', '陇海路与未来路龙凤苑小区', '东风本田', 'CR-V', '2017-04-21 23:20:26');
INSERT INTO `nj_userinfo` VALUES ('1122', '马晓华', '15188357051', '陇海路与未来路龙凤苑小区', '东风本田', 'CR-V', '2017-04-21 23:20:46');
INSERT INTO `nj_userinfo` VALUES ('1123', '马晓华', '15188357051', '陇海路与未来路龙凤苑小区', '东风本田', 'CR-V', '2017-04-21 23:21:03');
INSERT INTO `nj_userinfo` VALUES ('1124', '张向军', '18749493750', '航海路七大街宏光合园', '东风风行', '景逸X5', '2017-04-21 23:22:54');
INSERT INTO `nj_userinfo` VALUES ('1125', '潘潘', '13526721765', '万邦', '上汽通用别克', '英朗', '2017-04-21 23:29:45');
INSERT INTO `nj_userinfo` VALUES ('1126', '魏勇耀', '18790808593', '高新区荣邦城12号楼', '长安福特', '福克斯', '2017-04-21 23:30:16');
INSERT INTO `nj_userinfo` VALUES ('1127', '韦', '18574101629', '会展中心龙湖大厦405', '猎豹汽车', 'CS10', '2017-04-21 23:38:06');
INSERT INTO `nj_userinfo` VALUES ('1128', '刘会东', '15936238007', '洛阳市孟津县八一路华联超市', '哈弗', 'H7', '2017-04-21 23:39:51');
INSERT INTO `nj_userinfo` VALUES ('1129', '郭鹏飞', '13673691055', '郑州市管城区紫辰路紫楠花园3号楼2单元', '广汽丰田', '凯美瑞', '2017-04-21 23:51:50');
INSERT INTO `nj_userinfo` VALUES ('1130', '范延武', '15515530874', '文化路黄河路交叉口向南200米巴拉巴拉专卖店', '上汽通用雪佛兰', '迈锐宝', '2017-04-22 00:07:59');
INSERT INTO `nj_userinfo` VALUES ('1131', '刘望望', '18625188776', '经三路红旗路小南国', '上汽通用雪佛兰', '科鲁兹', '2017-04-22 00:12:48');
INSERT INTO `nj_userinfo` VALUES ('1132', '毛红伟', '13525988368', '洛阳市西工区五岳路18号洛冷西院', '长安汽车', 'CX20', '2017-04-22 00:12:49');
INSERT INTO `nj_userinfo` VALUES ('1133', '何康康', '13460223951', '花园路天伦路', '吉利汽车', '帝豪', '2017-04-22 01:00:03');
INSERT INTO `nj_userinfo` VALUES ('1134', '郭先生', '13707656163', '河南获嘉县凯旋路小学', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-22 06:52:48');
INSERT INTO `nj_userinfo` VALUES ('1135', '苗露露', '18638608734', '中州大道农业路苏荷中心14楼东南花瓣', '一汽大众', '速腾', '2017-04-22 06:54:53');
INSERT INTO `nj_userinfo` VALUES ('1136', '杨女士', '13460484055', '河南省获嘉县民主路西段', '一汽大众', '高尔夫', '2017-04-22 06:55:40');
INSERT INTO `nj_userinfo` VALUES ('1137', '刘高建', '15238363176', '郑州市管城区南曹乡野曹村', '东风本田', 'CR-V', '2017-04-22 07:05:14');
INSERT INTO `nj_userinfo` VALUES ('1138', '黄闯', '13613801579', '郑东新区金水东路通泰路鑫苑中央花园东区9号楼1单元302', '东风风行', 'F600', '2017-04-22 07:09:20');
INSERT INTO `nj_userinfo` VALUES ('1139', '黄闯', '13613801579', '郑东新区金水东路通泰路鑫苑中央花园东区9号楼1单元302', '东风风行', 'F600', '2017-04-22 07:10:26');
INSERT INTO `nj_userinfo` VALUES ('1140', '翟文超', '15515551055', '郑州市管城区未来路849号3号楼三单元41号', '一汽大众', '迈腾', '2017-04-22 07:11:49');
INSERT INTO `nj_userinfo` VALUES ('1141', '胡维林', '13783521003', '郑州东建材市场精品广场一楼b区62号英晖五金', '上海大众', '途昂', '2017-04-22 07:14:45');
INSERT INTO `nj_userinfo` VALUES ('1142', '李萍', '13611359320', '郑东新区金水东路通泰路鑫苑中央花园东区9号楼1单元302', '广汽传祺', 'GA6', '2017-04-22 07:18:27');
INSERT INTO `nj_userinfo` VALUES ('1143', '杨鹏', '13381206318', '郑东新区金水东路通泰路鑫苑中央花园东区9号楼1单元302', '宝骏', '宝骏730', '2017-04-22 07:21:29');
INSERT INTO `nj_userinfo` VALUES ('1144', '靳晓静', '15617985779', '新郑市周庄村', '一汽大众', 'CC', '2017-04-22 07:31:22');
INSERT INTO `nj_userinfo` VALUES ('1145', '王治琪', '18300671925', '河南省郑州市高新区莲花街雪松路东史马小区C1l楼189', '哈弗', 'H6', '2017-04-22 07:37:16');
INSERT INTO `nj_userinfo` VALUES ('1146', '陈云', '17503821757', '金水区纬一路省工会家属院8号楼501', '东风风行', '景逸S50 ', '2017-04-22 07:38:47');
INSERT INTO `nj_userinfo` VALUES ('1147', '陈云', '17503821757', '金水区纬一路省工会家属院8号楼501', '东风风行', '景逸S50 ', '2017-04-22 07:39:00');
INSERT INTO `nj_userinfo` VALUES ('1148', '陈云', '17503821757', '金水区纬一路省工会家属院8号楼501', '东风风行', '景逸S50 ', '2017-04-22 07:39:43');
INSERT INTO `nj_userinfo` VALUES ('1149', '校冬敏', '13592514188', '中牟县中原人家南邻', '东风本田', 'CR-V', '2017-04-22 07:46:39');
INSERT INTO `nj_userinfo` VALUES ('1150', '朱相宇', '18336146999', '二七区航海路碧云路正商城泰园小区二号院4号楼2单元504', '北京奔驰', 'E级', '2017-04-22 07:58:07');
INSERT INTO `nj_userinfo` VALUES ('1151', '申海峰', '13838061641', '航空港区薛店南街', '东南汽车', 'DX3', '2017-04-22 07:59:50');
INSERT INTO `nj_userinfo` VALUES ('1152', '张建', '15838300987', '郑州市经开区九龙镇宇通新能源和谐家园一区', '上海大众', '凌渡', '2017-04-22 08:16:31');
INSERT INTO `nj_userinfo` VALUES ('1153', '苏航', '18603866657', '郑州市中原区万达广场b座2624室', '一汽-大众奥迪', '奥迪A3', '2017-04-22 08:46:40');
INSERT INTO `nj_userinfo` VALUES ('1154', '李先生', '18638542880', '经七路35-9', '广汽传祺', 'GS4', '2017-04-22 08:48:36');
INSERT INTO `nj_userinfo` VALUES ('1155', '于利伟', '15237167858', '中原第一城', '广汽本田', '飞度', '2017-04-22 08:48:39');
INSERT INTO `nj_userinfo` VALUES ('1156', '王紫阳', '13683716332', '中牟尚庄红宇花园', '吉利汽车', '经典帝豪', '2017-04-22 08:52:22');
INSERT INTO `nj_userinfo` VALUES ('1157', '鲁德超', '15639908127', '中部两岸海鲜市场B5一122', '东风悦达起亚', 'KX7', '2017-04-22 09:12:14');
INSERT INTO `nj_userinfo` VALUES ('1158', '李清华', '15937107389', '航海路六大街经南二路30一14', '东风标致', '308', '2017-04-22 09:28:41');
INSERT INTO `nj_userinfo` VALUES ('1159', '李小艳', '18703697286', '郑州市二七区工人路南段正商蔚蓝港湾', '东风本田', 'CR-V', '2017-04-22 09:35:17');
INSERT INTO `nj_userinfo` VALUES ('1160', '张运平', '15516181852', '西昌小区10#0804#', '一汽大众', '迈腾', '2017-04-22 09:50:17');
INSERT INTO `nj_userinfo` VALUES ('1161', '何翠微', '18537185237', '西昌小区10#0804#曰', '长安商用', '欧尚', '2017-04-22 09:52:36');
INSERT INTO `nj_userinfo` VALUES ('1162', '张国胜', '13073700609', '西昌小区10#0804#昌', '宝骏', '宝骏560', '2017-04-22 09:54:12');
INSERT INTO `nj_userinfo` VALUES ('1163', '赵文胜', '13838314588', '郑州市二七区郑密路88号，珠江荣域', '广汽丰田', '凯美瑞', '2017-04-22 09:54:38');
INSERT INTO `nj_userinfo` VALUES ('1164', '邵玲玲', '15738882353', '郑州市农业东路3号郑州圣玛妇产医院', '上海大众', '凌渡', '2017-04-22 10:00:10');
INSERT INTO `nj_userinfo` VALUES ('1165', '张素强', '15738882353', '郑州市农业东路3号郑州圣玛妇产医院', '北京现代', '朗动', '2017-04-22 10:01:10');
INSERT INTO `nj_userinfo` VALUES ('1166', '卢翠翠', '15738882353', '郑州市农业东路3号郑州圣玛妇产医院', '一汽大众', '速腾', '2017-04-22 10:01:59');
INSERT INTO `nj_userinfo` VALUES ('1167', '李先生', '15038288000', '郑州市管城回族区商城路257 号科瑞大厦10楼', '长安福特', '锐界', '2017-04-22 10:15:36');
INSERT INTO `nj_userinfo` VALUES ('1168', '左利伟', '13783906180', '河南省兰考县纪委纪检监察二室', '上汽通用雪佛兰', '创酷', '2017-04-22 10:18:33');
INSERT INTO `nj_userinfo` VALUES ('1169', '武女士', '13298125777', '航海路12 号', 'Jeep(进口) ', '大切诺基(进口)', '2017-04-22 10:19:07');
INSERT INTO `nj_userinfo` VALUES ('1170', '刘书芳', '18037320322', '河南省郑州市金水区', '长安福特', '蒙迪欧', '2017-04-22 10:21:00');
INSERT INTO `nj_userinfo` VALUES ('1171', '魏晓斌', '15939331738', '河南省濮阳市华龙区明日星城', '东风本田', '思域', '2017-04-22 10:26:58');
INSERT INTO `nj_userinfo` VALUES ('1172', '李权', '13213208942', '郑州市上街区许昌路理想名城六号楼', '猎豹汽车', 'CS10', '2017-04-22 10:34:36');
INSERT INTO `nj_userinfo` VALUES ('1173', '马晓孟', '13939019301', '鑫苑都市领地4-1-103A', '猎豹汽车', 'CS10', '2017-04-22 10:36:47');
INSERT INTO `nj_userinfo` VALUES ('1174', '曾凡勇', '13027736321', '河南省郑州市荥阳市中原西路与京城路交叉口南300米', '荣威', 'i6', '2017-04-22 10:42:54');
INSERT INTO `nj_userinfo` VALUES ('1175', '武文忠', '13253430985', '上街区通航社区西区21号楼703户', '上汽通用别克', '别克GL8', '2017-04-22 10:55:57');
INSERT INTO `nj_userinfo` VALUES ('1176', '陈有良', '15514525610', '郑州市二七区郭睦路金三角广场东区17号', '路虎', '发现神行', '2017-04-22 10:56:57');
INSERT INTO `nj_userinfo` VALUES ('1177', '吴亚娟', '13253490756', '金水路与玉凤路向南18', '吉利汽车', '帝豪GS', '2017-04-22 11:20:54');
INSERT INTO `nj_userinfo` VALUES ('1178', '许真真', '13937115788', '郑州市中原区130号院', '广汽传祺', 'GS8', '2017-04-22 11:21:33');
INSERT INTO `nj_userinfo` VALUES ('1179', '莫冲', '18703684213', '金水路与玉凤路向南100米御状元', '吉利汽车', '帝豪GS', '2017-04-22 11:21:38');
INSERT INTO `nj_userinfo` VALUES ('1180', '许恒', '18538252573', '中原区工人路汝河路中原新城观澜一号5号楼2单元2102', '东风悦达起亚', 'KX7', '2017-04-22 11:22:21');
INSERT INTO `nj_userinfo` VALUES ('1181', '许巍', '18537198660', '中原区淮河路36号六冶大厦许巍', '东风日产', '逍客', '2017-04-22 11:24:52');
INSERT INTO `nj_userinfo` VALUES ('1182', '吴亚娟', '13253490756', '金水路与玉凤路向南100米御状元', '吉利汽车', '帝豪GS', '2017-04-22 11:26:44');
INSERT INTO `nj_userinfo` VALUES ('1183', '莫冲', '18703684213', '金水路与玉凤路向南100米御状元', '吉利汽车', '帝豪GS', '2017-04-22 11:27:25');
INSERT INTO `nj_userinfo` VALUES ('1184', '李帅霞', '18537117819', '登封市中禾广场座12楼', '广汽丰田', 'YARiS L 致享', '2017-04-22 11:28:51');
INSERT INTO `nj_userinfo` VALUES ('1185', '韩聪伟', '13513784166', '河南省开封市金明大道南段开利空分', '一汽-大众奥迪', '奥迪A4L ', '2017-04-22 11:32:38');
INSERT INTO `nj_userinfo` VALUES ('1186', '许建军', '18538168621', '金水区南阳路46号雅美佳小区122', '上海大众', '途昂', '2017-04-22 11:33:26');
INSERT INTO `nj_userinfo` VALUES ('1187', '韩聪伟', '13513784166', '河南省开封市金明大道南段开利空分', '一汽-大众奥迪', '奥迪A4L ', '2017-04-22 11:33:33');
INSERT INTO `nj_userinfo` VALUES ('1188', '李晓静', '17603788277', '河南省开封市金明大道南段开利空分', '上汽通用别克', '昂科威', '2017-04-22 11:34:22');
INSERT INTO `nj_userinfo` VALUES ('1189', '王新东', '17703844720', '航海路与云鹤路东郡香域巴黎6号楼915', '东风风行', '景逸X5', '2017-04-22 11:46:30');
INSERT INTO `nj_userinfo` VALUES ('1190', '姚冬梅', '15238370908', '郑州市大学路政通路升龙国际B区2号楼1单元2104', '上海大众', '桑塔纳', '2017-04-22 11:48:24');
INSERT INTO `nj_userinfo` VALUES ('1191', '李雷', '18569965751', '郑州市高新区化工路与白杨二路保利永威西溪花园9号楼1单元1705', '广汽菲亚特', '菲翔', '2017-04-22 12:01:45');
INSERT INTO `nj_userinfo` VALUES ('1192', '郑前锋', '15638208699', '郑州市中原区桐柏路汝河路 汝河小区', '东风标致', '408', '2017-04-22 12:36:42');
INSERT INTO `nj_userinfo` VALUES ('1193', '荆彦军', '18614959760', '荥阳市高村乡高村寺村', '奇瑞汽车', '艾瑞泽5', '2017-04-22 12:45:22');
INSERT INTO `nj_userinfo` VALUES ('1194', '李', '15638904685', '龙湖镇东徐村', '启辰', 'T70', '2017-04-22 12:58:27');
INSERT INTO `nj_userinfo` VALUES ('1195', '李', '15638904685', '龙湖镇东徐村', '启辰', 'T70', '2017-04-22 13:03:31');
INSERT INTO `nj_userinfo` VALUES ('1196', '韩向前', '15736707518', '经开区第六大街经南四路西50米远成快运', '江淮', '瑞风M3', '2017-04-22 13:48:50');
INSERT INTO `nj_userinfo` VALUES ('1197', '齐汉周', '18017593155', '郑州市二七区南三环中段郑飞小区邮政所', 'MG', 'MG6', '2017-04-22 13:56:38');
INSERT INTO `nj_userinfo` VALUES ('1198', '陈宇', '17839930527', '郑州惠济区', '东风标致', '4008', '2017-04-22 14:07:58');
INSERT INTO `nj_userinfo` VALUES ('1199', null, null, null, null, null, '2017-04-22 14:08:08');
INSERT INTO `nj_userinfo` VALUES ('1200', '闫威武', '13783635776', '开封市魏都路开封市和谐配件部', '广汽丰田', '雷凌', '2017-04-22 14:28:40');
INSERT INTO `nj_userinfo` VALUES ('1201', '张爱珍', '13343881059', '金水区丰乐路7号院一号楼二单元三O二室', '广汽本田', '飞度', '2017-04-22 14:37:04');
INSERT INTO `nj_userinfo` VALUES ('1202', '张晴', '15138682030', '河南省郑州市二七区马寨镇水磨村大队门口', '吉利汽车', '帝豪GS', '2017-04-22 14:40:41');
INSERT INTO `nj_userinfo` VALUES ('1203', '毕传方', '13598056348', '二七区马寨镇王庄村', '道奇(进口)', 'C30', '2017-04-22 14:43:59');
INSERT INTO `nj_userinfo` VALUES ('1204', '张乐', '15237115431', '郑汴路英协广场A座2309室', '吉利汽车', '帝豪GS', '2017-04-22 14:44:54');
INSERT INTO `nj_userinfo` VALUES ('1205', '孙先生', '18638145945', '安徽省宿州市泗县', '荣威', 'RX5', '2017-04-22 14:46:34');
INSERT INTO `nj_userinfo` VALUES ('1206', '黄凯', '13703996842', '金水区凤凰双语小学斜对面梦真锁业', '长安商用', 'CX70', '2017-04-22 14:57:52');
INSERT INTO `nj_userinfo` VALUES ('1207', '周宁', '13803753403', '河南省平顶山市新华区联盟鑫城4号楼', '奔驰(进口)', 'GLC(进口)', '2017-04-22 14:58:42');
INSERT INTO `nj_userinfo` VALUES ('1208', '王蒙', '13722119992', '河南省橄榄城柏林印象32号楼三单元', '华晨宝马', '宝马5系', '2017-04-22 15:11:42');
INSERT INTO `nj_userinfo` VALUES ('1209', '任先生', '17721397717', '新郑市航空港区郑港十路富士康K区市场（）', '哈弗', 'H6', '2017-04-22 15:14:41');
INSERT INTO `nj_userinfo` VALUES ('1210', '江女士', '17734826445', '新郑市航空港区郑港十路富士康K区', '哈弗', 'H6 Coupe', '2017-04-22 15:18:19');
INSERT INTO `nj_userinfo` VALUES ('1211', '张永平', '15937150047', '新郑市龙湖镇富田兴龙湾', '吉利汽车', '帝豪', '2017-04-22 15:28:15');
INSERT INTO `nj_userinfo` VALUES ('1212', '王学鹏', '13333832387', '郑东新区商务外环路世博大厦1212室', '哈弗', 'H6', '2017-04-22 15:38:41');
INSERT INTO `nj_userinfo` VALUES ('1213', '冯丽娟', '15937156654', '龙湖镇富田兴龙湾56号楼', '上海大众', '朗逸', '2017-04-22 16:03:19');
INSERT INTO `nj_userinfo` VALUES ('1214', '武榆欣', '15286997905', '聚源路宏图街崔庄社区南院6号楼一楼宅急送', '吉利汽车', '远景', '2017-04-22 16:07:13');
INSERT INTO `nj_userinfo` VALUES ('1215', '李银伟', '13939088083', '新密市民康路中段', '郑州日产', '帕拉丁', '2017-04-22 16:07:28');
INSERT INTO `nj_userinfo` VALUES ('1216', '李银伟', '13939088083', '新密市民康路中段', '郑州日产', '帕拉丁', '2017-04-22 16:08:33');
INSERT INTO `nj_userinfo` VALUES ('1217', '李银伟', '13783561399', '新密市民康路中段', '郑州日产', '帕拉丁', '2017-04-22 16:09:13');
INSERT INTO `nj_userinfo` VALUES ('1218', '刘方建', '18703880648', '郑州管城区南曹乡野曹村', '东风本田', 'CR-V', '2017-04-22 16:33:46');
INSERT INTO `nj_userinfo` VALUES ('1219', '李志强', '13673605819', '优胜南路36号明辉城市花园门卫室', '一汽丰田', '威驰', '2017-04-22 16:49:38');
INSERT INTO `nj_userinfo` VALUES ('1220', '刘艳瑞', '15890184762', '郑州市清华忆江南三期二区一栋三零三室', '宝骏', '宝骏730', '2017-04-22 17:39:53');
INSERT INTO `nj_userinfo` VALUES ('1221', '付瑞芬', '13523001987', '中牟县建设路南段郑州泰新汽车内饰件有限公司', '一汽马自达', 'CX-4', '2017-04-22 17:43:59');
INSERT INTO `nj_userinfo` VALUES ('1222', '刘', '15003715421', '郑州市二七区马寨镇学院路三号', '上海大众', '朗逸', '2017-04-22 18:00:17');
INSERT INTO `nj_userinfo` VALUES ('1223', '李先生', '18639501200', '漯河市源汇区五一路中机园', '上海大众', '途昂', '2017-04-22 18:07:50');
INSERT INTO `nj_userinfo` VALUES ('1224', '杨金法', '15298838350', '郑州市新郑市郭店镇芦家桥向西500米家家来运门业', '东风悦达起亚', 'K3', '2017-04-22 18:21:16');
INSERT INTO `nj_userinfo` VALUES ('1225', '曹阳', '18539477762', '金水区经八路农贸市场', '广汽丰田', '汉兰达', '2017-04-22 18:24:55');
INSERT INTO `nj_userinfo` VALUES ('1226', '陶志超', '13673561866', '淮阳县康乐路农牧局东康居装饰', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 18:46:15');
INSERT INTO `nj_userinfo` VALUES ('1227', '陶志超', '13673561866', '淮阳县康乐路农牧局东康居装饰', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 18:46:47');
INSERT INTO `nj_userinfo` VALUES ('1228', '赵凯', '13298321555', '河南省荥阳市香槟大道', '长安福特', '锐界', '2017-04-22 18:53:49');
INSERT INTO `nj_userinfo` VALUES ('1229', '王铁军', '18638165300', '郑东新区白沙镇宽景一品9号楼', '长城汽车', 'C30', '2017-04-22 19:17:31');
INSERT INTO `nj_userinfo` VALUES ('1230', '胡新华', '18539983890', '惠济区北三环沙囗路中原国际眼镜城湘西菜馆', '上汽通用别克', '昂科威', '2017-04-22 19:19:16');
INSERT INTO `nj_userinfo` VALUES ('1231', '懂灵芝', '18397706633', '惠济区北三环沙囗路中原国际眼镜城湘西菜馆', '上汽通用别克', '昂科威', '2017-04-22 19:22:20');
INSERT INTO `nj_userinfo` VALUES ('1232', '曹宏斌', '15617400725', '巩义市永安街道办丁香路十号', '东风本田', 'CR-V', '2017-04-22 19:24:34');
INSERT INTO `nj_userinfo` VALUES ('1233', '白科', '17737099238', '河南焦作温县城内小学', '一汽丰田', '普拉多', '2017-04-22 19:25:46');
INSERT INTO `nj_userinfo` VALUES ('1234', '王楠', '15937137217', '郑州市中原路与西三环交叉口绿都城商业街诚信汽修', '上海大众', '朗逸', '2017-04-22 19:43:33');
INSERT INTO `nj_userinfo` VALUES ('1235', '李鹏飞', '17337168393', '西三环正商花语里', '上汽通用五菱', '五菱宏光', '2017-04-22 19:56:56');
INSERT INTO `nj_userinfo` VALUES ('1236', '李长宝', '13949083451', '新密市刘寨镇水竹园村', '东风本田', 'CR-V', '2017-04-22 20:01:01');
INSERT INTO `nj_userinfo` VALUES ('1237', '尹卫华', '18336386877', '郑州市惠济区惠济桥村', '东南汽车', 'DX7', '2017-04-22 20:01:30');
INSERT INTO `nj_userinfo` VALUES ('1238', '楚海军', '13598090253', '新密市新惠街39巷11号', '广汽传祺', 'GS4', '2017-04-22 20:01:51');
INSERT INTO `nj_userinfo` VALUES ('1239', '郝娜娜', '18339717800', '郑州市金水区文劳路与园田路中海锦苑营销中心郝娜娜', '哈弗', 'H6', '2017-04-22 20:02:37');
INSERT INTO `nj_userinfo` VALUES ('1240', '张博琳', '18538128090', '京广路', '奥迪(进口)', '奥迪A5', '2017-04-22 20:04:13');
INSERT INTO `nj_userinfo` VALUES ('1241', '茅玲', '18336832013', '河南省焦作市高新区世纪大道河南理工大学', '东风标致', '4008', '2017-04-22 20:06:37');
INSERT INTO `nj_userinfo` VALUES ('1242', '陈伟', '13343621670', '河南省焦作市高新区世纪大道2001号河南理工大学', '东风标致', '4008', '2017-04-22 20:08:54');
INSERT INTO `nj_userinfo` VALUES ('1243', '茅风书', '13839124508', '河南省焦作市站前路远大未来城1号楼', '东风标致', '4008', '2017-04-22 20:10:35');
INSERT INTO `nj_userinfo` VALUES ('1244', '卢连强', '18749128681', '郑州市经济开发区第六大街99号', '广汽传祺', 'GS4', '2017-04-22 20:10:47');
INSERT INTO `nj_userinfo` VALUES ('1245', '赵梅花', '13183122328', '河南省焦作市站前路远大未来城1号楼', '东风标致', '4008', '2017-04-22 20:11:38');
INSERT INTO `nj_userinfo` VALUES ('1246', '小张', '18538128090', '二七区淮河东路5号', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 20:13:42');
INSERT INTO `nj_userinfo` VALUES ('1247', '寇淑云', '13298168029', '二匕区京广中路18', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 20:20:15');
INSERT INTO `nj_userinfo` VALUES ('1248', '魏东峰', '13071073638', '惠济区毛庄镇惠文鸣翠苑B10号楼二单元4楼西', '吉利汽车', '帝豪', '2017-04-22 20:25:13');
INSERT INTO `nj_userinfo` VALUES ('1249', '魏东峰', '13071073638', '惠济区毛庄镇惠文鸣翠苑B10号楼二单元4楼西', '吉利汽车', '帝豪', '2017-04-22 20:26:32');
INSERT INTO `nj_userinfo` VALUES ('1250', '赵晖', '13526765600', '荥阳市人民法院', '东风本田', '思域', '2017-04-22 20:30:16');
INSERT INTO `nj_userinfo` VALUES ('1251', '高光', '13253304603', '管城区南曹乡野曹村', '上汽通用五菱', '五菱荣光V', '2017-04-22 20:31:23');
INSERT INTO `nj_userinfo` VALUES ('1252', '魏东峰', '13071073638', '郑州市惠济区毛庄镇惠文鸣翠苑B10号楼二单元4楼西', '吉利汽车', '帝豪', '2017-04-22 20:31:54');
INSERT INTO `nj_userinfo` VALUES ('1253', '魏东峰', '13071073638', '郑州市惠济区毛庄镇惠文鸣翠苑B10号楼二单元4楼西', '吉利汽车', '帝豪', '2017-04-22 20:32:34');
INSERT INTO `nj_userinfo` VALUES ('1254', '蔡佩', '18339269996', '荥阳市财政局', '东风本田', '艾力绅', '2017-04-22 20:34:59');
INSERT INTO `nj_userinfo` VALUES ('1255', '魏西峰', '13283825860', '惠济区毛庄镇惠文鸣翠苑B10号楼二单元4西', '吉利汽车', '帝豪', '2017-04-22 20:36:07');
INSERT INTO `nj_userinfo` VALUES ('1256', '寇淑云', '15737171798', '二匕区京广中路18号院', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 20:36:35');
INSERT INTO `nj_userinfo` VALUES ('1257', '张女士', '13592609893', '郑州市郑花路76号美景花郡2号楼', '荣威', 'RX5', '2017-04-22 20:38:18');
INSERT INTO `nj_userinfo` VALUES ('1258', '魏西峰', '13283825860', '惠济区毛庄镇惠文鸣翠苑B10号楼二单元4西', '吉利汽车', '帝豪', '2017-04-22 20:38:30');
INSERT INTO `nj_userinfo` VALUES ('1259', '刘传良', '13148201818', '周口市', '广汽传祺', 'GS4', '2017-04-22 20:54:44');
INSERT INTO `nj_userinfo` VALUES ('1260', '杨帅林', '18738464887', '河南省郑州市管城回族区第22大街大王庄安置区', '广汽传祺', 'GS8', '2017-04-22 20:57:35');
INSERT INTO `nj_userinfo` VALUES ('1261', '郭燕昌', '13603840944', '永恒尚东小区8号楼1507号', '奥迪(进口)', '奥迪SQ5', '2017-04-22 21:06:41');
INSERT INTO `nj_userinfo` VALUES ('1262', null, null, null, null, null, '2017-04-22 21:06:51');
INSERT INTO `nj_userinfo` VALUES ('1263', '王耀成', '15936501801', '郑州市东风路文化路白庙社区七栋四单元606', '上汽通用雪佛兰', '科沃兹', '2017-04-22 21:11:03');
INSERT INTO `nj_userinfo` VALUES ('1264', '石海燕', '13603845482', '经三路广电南路金印现代城6号楼902', '广汽Jeep', '自由光', '2017-04-22 21:13:22');
INSERT INTO `nj_userinfo` VALUES ('1265', '张潘召', '15093060344', '郑州市中原路与西三环交叉口绿都城商业街诚信汽修', '上海大众', '朗逸', '2017-04-22 21:14:45');
INSERT INTO `nj_userinfo` VALUES ('1266', '陈先生', '15890019801', '工人路44号5单元附12号', '一汽大众', '速腾', '2017-04-22 21:17:41');
INSERT INTO `nj_userinfo` VALUES ('1267', '安娜', '13592483392', '郑州市管城区人民路75号鸿城光彩消防部', '上海大众', '朗逸', '2017-04-22 21:28:15');
INSERT INTO `nj_userinfo` VALUES ('1268', '张超臣', '15138963879', '新郑市港区二中', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 21:41:22');
INSERT INTO `nj_userinfo` VALUES ('1269', '张海桥', '13007622891', 'l郑密路48号院2号楼', '猎豹汽车', 'CS10', '2017-04-22 21:41:46');
INSERT INTO `nj_userinfo` VALUES ('1270', '张超臣', '15138963879', '新郑市港区二中', '一汽-大众奥迪', '奥迪Q5', '2017-04-22 21:41:56');
INSERT INTO `nj_userinfo` VALUES ('1271', '王少斌', '13619843873', '金水区顺河路43号院57号楼一单元一号', '上海大众', '途观', '2017-04-22 21:56:41');
INSERT INTO `nj_userinfo` VALUES ('1272', '谢润润', '15737178283', '郑州市二七区马寨镇康佳路康师傅宿舍楼', '宝骏', '宝骏560', '2017-04-22 21:56:59');
INSERT INTO `nj_userinfo` VALUES ('1273', '邢', '18039661861', '郑州市三全路长兴路交叉口西200米裕华美辰小区', '上汽通用别克', '君威', '2017-04-22 22:01:39');
INSERT INTO `nj_userinfo` VALUES ('1274', '邢', '18039661861', '郑州市三全路长兴路交叉口西200米裕华美辰小区', '上汽通用别克', '君威', '2017-04-22 22:01:58');
INSERT INTO `nj_userinfo` VALUES ('1275', '杜聪', '13283826771', '新乡市牧野区北干道和平路交叉口西北角知青大食堂', '吉利汽车', '远景', '2017-04-22 22:03:44');
INSERT INTO `nj_userinfo` VALUES ('1276', '杨亚克', '13838507304', '郑州中原区西四环昌达路娅丽达工业园', '东南汽车', 'DX3', '2017-04-22 22:05:50');
INSERT INTO `nj_userinfo` VALUES ('1277', '楚亚鸽', '13298365997', '郑州市金水区东风路信息学院路财智名座1606室', '东风本田', '杰德', '2017-04-22 22:09:03');
INSERT INTO `nj_userinfo` VALUES ('1278', '楚遂有', '13607672266', '新密市来集镇裴沟矿生活区玉娥粮油店', '东风风光', '580', '2017-04-22 22:13:28');
INSERT INTO `nj_userinfo` VALUES ('1279', '杨军伟', '13592626612', '郑州市金水区园田路文劳路交叉口泰宏集团办公楼206室', '吉利汽车', '帝豪GS', '2017-04-22 22:24:09');
INSERT INTO `nj_userinfo` VALUES ('1280', '吴奇能', '13633836298', '郑州市二七区长江路与连云路交叉口向南100米路东天地尚城5号楼2单元6楼西户', '北京奔驰', 'GLA', '2017-04-22 22:24:30');
INSERT INTO `nj_userinfo` VALUES ('1281', '王可可', '17760796062', '郑州市金水区南阳路219号15号楼', '吉利汽车', '帝豪GS', '2017-04-22 22:26:37');
INSERT INTO `nj_userinfo` VALUES ('1282', '王佳4张', '15981867290', '郑州市金水区北三环文化路瀚海爱特中心412', '东风悦达起亚', 'K5', '2017-04-22 22:30:13');
INSERT INTO `nj_userinfo` VALUES ('1283', '刘辈', '15037878695', '郑州市金水区顺河路32-3', '吉利汽车', '远景', '2017-04-22 22:35:54');
INSERT INTO `nj_userinfo` VALUES ('1284', '韩', '18237838373', '河南省郑州市中牟县刘集镇郑州电力高等专科学校', '荣威', 'i6', '2017-04-22 22:46:18');
INSERT INTO `nj_userinfo` VALUES ('1285', '赵盼锋', '13783174087', '洛阳市洛龙区文庭雅苑3-2604', '吉利汽车', '帝豪', '2017-04-22 22:47:21');
INSERT INTO `nj_userinfo` VALUES ('1286', '高升', '18437189945', '蓝天空港', '东风本田', '思域', '2017-04-22 22:53:12');
INSERT INTO `nj_userinfo` VALUES ('1287', '尉晓旗', '18736011468', '郑州工业应用技术学院老校区', '吉利汽车', '博越', '2017-04-22 22:53:46');
INSERT INTO `nj_userinfo` VALUES ('1288', '于', '13027730895', '陇海路未来路升龙凤凰城b区3号楼', '哈弗', 'H2', '2017-04-22 22:55:16');
INSERT INTO `nj_userinfo` VALUES ('1289', '张志炯', '18737906009', '京广路18号院30号', '林肯', '大陆', '2017-04-22 23:17:51');
INSERT INTO `nj_userinfo` VALUES ('1290', '张志炯', '18737906009', '京广路18号院30号', '林肯', '大陆', '2017-04-22 23:18:10');
INSERT INTO `nj_userinfo` VALUES ('1291', '李晓广', '18638188729', '河南省郑州市   金水区东风路轻工业学院第二生活园区', '广汽传祺', 'GS4', '2017-04-22 23:23:44');
INSERT INTO `nj_userinfo` VALUES ('1292', '张.志炯', '18530817264', '京广路18号院30号', '福田汽车', '图雅诺', '2017-04-22 23:28:44');
INSERT INTO `nj_userinfo` VALUES ('1293', '柏松', '15939697752', '郑州市管城区航海路与未来路交叉路口西北角世家房产', '长安福特', '蒙迪欧', '2017-04-22 23:34:07');
INSERT INTO `nj_userinfo` VALUES ('1294', '张洋洋', '18236791310', '新郑航空港区富士康科技E11联办', '东风风行', 'SX6', '2017-04-22 23:35:58');
INSERT INTO `nj_userinfo` VALUES ('1295', '张超鹏', '13221088374', '国基路与花园路黄河建工集团A座5楼8508郑州昊网', '北京现代', '朗动', '2017-04-22 23:45:28');
INSERT INTO `nj_userinfo` VALUES ('1296', '李新强', '13462321677', '封丘县黄池路水利局对面振兴广告', '上汽通用雪佛兰', '探界者', '2017-04-22 23:50:46');
INSERT INTO `nj_userinfo` VALUES ('1297', '胡俊岭', '17760794888', '河南省新郑市龙湖镇龙湖广场南50米比拉屋主题酒店808房间', '众泰汽车', 'SR9', '2017-04-22 23:58:35');
INSERT INTO `nj_userinfo` VALUES ('1298', '邓妍', '15037196570', '郑州市颖河路155号付6号', '长安福特', '锐界', '2017-04-23 00:03:37');
INSERT INTO `nj_userinfo` VALUES ('1299', '丁成立', '15837167700', '郑州市中原区棉纺西路2号院', '哈弗', 'H6', '2017-04-23 00:11:23');
INSERT INTO `nj_userinfo` VALUES ('1300', '罗东城', '13676932273', '河南省郑州市高新区须水河东路万科城紫兰苑16-1001', '上汽通用雪佛兰', '迈锐宝', '2017-04-23 00:13:42');
INSERT INTO `nj_userinfo` VALUES ('1301', '轩敏丽', '13937177886', '郑州市中原区锦艺国际9号楼1单元', '哈弗', 'H6', '2017-04-23 00:14:19');
INSERT INTO `nj_userinfo` VALUES ('1302', '郭亚磊', '18638280228', '河南省郑州市高新区须水河东路万科城紫兰苑16-1001', '东风悦达起亚', '智跑', '2017-04-23 00:15:41');
INSERT INTO `nj_userinfo` VALUES ('1303', '李新强', '13462321677', '封丘县黄池路水利局对面振兴广告', '宝骏', '宝骏560', '2017-04-23 00:20:58');
INSERT INTO `nj_userinfo` VALUES ('1304', '马亮', '13937163008', '郑东新区崔庄社区北院11号楼', '广汽Jeep', '指南者', '2017-04-23 00:21:15');
INSERT INTO `nj_userinfo` VALUES ('1305', '李新强', '13462321677', '封丘县黄池路水利局对面振兴广告', '宝骏', '宝骏560', '2017-04-23 00:23:43');
INSERT INTO `nj_userinfo` VALUES ('1306', '李新强', '13462321677', '封丘县', '宝骏', '宝骏560', '2017-04-23 00:25:16');
INSERT INTO `nj_userinfo` VALUES ('1307', '李新强', '13462321677', '封丘县封丘县', '宝骏', '宝骏560', '2017-04-23 00:25:52');
INSERT INTO `nj_userinfo` VALUES ('1308', '李新强', '13462321677', '封丘县封丘县', '宝骏', '宝骏560', '2017-04-23 00:27:11');
INSERT INTO `nj_userinfo` VALUES ('1309', '夏序桃', '18768867953', '郑州市管城区紫荆山路金城街交叉口百合湾2号楼502室', '长安福特', '金牛座', '2017-04-23 00:46:46');
INSERT INTO `nj_userinfo` VALUES ('1310', '陈卫浩', '15716426278', '淮河路汝河路工商银行旁边的彩票店', '哈弗', 'H6 Coupe', '2017-04-23 00:57:45');
INSERT INTO `nj_userinfo` VALUES ('1311', '陈二振', '15038252881', '淮河路汝河路工商银行旁边的彩票店', '一汽大众', '宝来', '2017-04-23 00:59:24');
INSERT INTO `nj_userinfo` VALUES ('1312', '陈二振', '15038252886', '淮河路汝河路工商银行旁边的彩票店', '上海大众', '朗逸', '2017-04-23 01:03:18');
INSERT INTO `nj_userinfo` VALUES ('1313', '张欣堆', '18530023101', '科学大道70号中金属制品院', '吉利汽车', '帝豪GS', '2017-04-23 01:10:07');
INSERT INTO `nj_userinfo` VALUES ('1314', '李松江', '15937165735', '郑州市新郑市龙湖镇湖滨路温莎城堡33号楼一单元', '长安商用', '欧尚', '2017-04-23 01:25:02');
INSERT INTO `nj_userinfo` VALUES ('1315', '蔡东', '15515633130', '红旗路西段一号，经贸学校', '东风本田', '思域', '2017-04-23 02:02:17');
INSERT INTO `nj_userinfo` VALUES ('1316', '张天瑞', '18003719028', '金水区丰乐路7号院一号楼二单元三O二室', '广汽本田', '飞度', '2017-04-23 05:49:27');
INSERT INTO `nj_userinfo` VALUES ('1317', '王自有', '18638613037', '郑州市金水区金水东路299号浦发国际金融中心B座1703室', '吉利汽车', '博越', '2017-04-23 06:09:35');
INSERT INTO `nj_userinfo` VALUES ('1318', '许清泽', '18637757969', '二七区京广路与南屏路溪景桂园9号搂1单元901室', '上汽通用别克', '君威', '2017-04-23 07:16:28');
INSERT INTO `nj_userinfo` VALUES ('1319', '李宏超', '18603852870', '河南省郑州市金水区未来路73号锦江国际花园10号楼12楼1211', '一汽-大众奥迪', '奥迪Q5', '2017-04-23 07:29:22');
INSERT INTO `nj_userinfo` VALUES ('1320', '雷瑞', '15303942577', '郑州市，中原区，须水镇，西陈庄铁道学院', '长安商用', '欧尚', '2017-04-23 07:33:03');
INSERT INTO `nj_userinfo` VALUES ('1321', '崔铁军', '18567257717', '郑州管城回族区长江路紫云路爱馨医院往东200米中建一局项目部', '广汽本田', '缤智', '2017-04-23 08:07:22');
INSERT INTO `nj_userinfo` VALUES ('1322', '阴松伟', '13253328527', '佛岗新剧', '广汽本田', '雅阁', '2017-04-23 08:09:51');
INSERT INTO `nj_userinfo` VALUES ('1323', '王士见', '13915286636', '郑州管城回族区长江路紫云路爱馨医院向东200米中建一局项目部', '一汽大众', '迈腾', '2017-04-23 08:14:35');
INSERT INTO `nj_userinfo` VALUES ('1324', '谢润润', '15737178253', '郑州市二七区马寨镇康佳路康师傅宿舍楼', '宝骏', '宝骏560', '2017-04-23 08:20:48');
INSERT INTO `nj_userinfo` VALUES ('1325', '宁帅官', '15939017062', '郑州市高新技术开发区玉兰街101号，河南省日立信股份有限公司', '哈弗', 'H6', '2017-04-23 08:27:49');
INSERT INTO `nj_userinfo` VALUES ('1326', '师建国', '13383831638', '郑州市二七区马寨镇学院路18号', '吉利汽车', '博瑞', '2017-04-23 08:36:04');
INSERT INTO `nj_userinfo` VALUES ('1327', '张慧贤', '15137187708', '郑州中原区工人路颖河路晚报家属院', '吉利汽车', '博瑞', '2017-04-23 08:37:31');
INSERT INTO `nj_userinfo` VALUES ('1328', '周兵', '15838947256', '郑州经开这九龙工业园西工机电', '东风标致', '2008', '2017-04-23 08:39:16');
INSERT INTO `nj_userinfo` VALUES ('1329', '张世刚', '13603718214', '广电南路嘉和园9号院5号楼三单元', '东风雷诺', '科雷傲', '2017-04-23 08:47:12');
INSERT INTO `nj_userinfo` VALUES ('1330', '赵国建', '18937897266', '兰考县健康路6号', '一汽大众', '迈腾', '2017-04-23 08:59:31');
INSERT INTO `nj_userinfo` VALUES ('1331', '程亚丽', '15838020683', '河南省郑州市高新区须水河东路万科城紫兰苑16～1001', '广汽传祺', 'GS8', '2017-04-23 09:03:19');
INSERT INTO `nj_userinfo` VALUES ('1332', '刘炎', '15638911795', '玉凤路凤鸣路中鑫之宝', '东风本田', '思域', '2017-04-23 09:08:50');
INSERT INTO `nj_userinfo` VALUES ('1333', '张红米', '15565059097', '郑州市玉凤路凤鸣路中鑫之宝', '东风本田', '思域', '2017-04-23 09:09:55');
INSERT INTO `nj_userinfo` VALUES ('1334', '徐宝建', '13598811523', '河南省郑州市上街区中心路区政府往东200米中国移动', '长安汽车', '奔奔', '2017-04-23 09:18:18');
INSERT INTO `nj_userinfo` VALUES ('1335', '史曾杰', '15238081961', '中州大道郑蔚路阳光城3号院', '猎豹汽车', 'Q6', '2017-04-23 09:31:15');
INSERT INTO `nj_userinfo` VALUES ('1336', '刘女士', '15713866595', '淮河路与工人路交叉路口电力大厦', '上汽通用别克', '昂科威', '2017-04-23 09:41:18');
INSERT INTO `nj_userinfo` VALUES ('1337', '周秀敏', '15638006225', '河南省沈丘县联通公司', '上海大众', '途观L', '2017-04-23 09:50:41');
INSERT INTO `nj_userinfo` VALUES ('1338', '朱留洋', '15638164616', '航海路未来路宝景花园德国印象', '东风标致', '301', '2017-04-23 09:52:58');
INSERT INTO `nj_userinfo` VALUES ('1339', '曹攀锋', '13598067018', '郑州市经济开发区第八大街69号宇通零部件', '奇瑞汽车', '艾瑞泽5', '2017-04-23 09:58:55');
INSERT INTO `nj_userinfo` VALUES ('1340', '曹攀锋', '13523090018', '郑州市经济开发区第八大街69号宇通零部件', '长安汽车', 'CS35', '2017-04-23 10:00:17');
INSERT INTO `nj_userinfo` VALUES ('1341', '崔丹', '13525707822', '农业路天明路索克时代大厦6楼603', '上海大众', '朗境', '2017-04-23 10:02:42');
INSERT INTO `nj_userinfo` VALUES ('1342', '张攀攀', '15671608262', '新郑市龙湖镇祥安路文昌路顺风总部', '宝骏', '宝骏510', '2017-04-23 10:07:51');
INSERT INTO `nj_userinfo` VALUES ('1343', '叶涛', '15937125901', '郑州市交通路162号院2号楼3单元37号', '宝骏', '宝骏510', '2017-04-23 10:22:22');
INSERT INTO `nj_userinfo` VALUES ('1344', '刘先生', '17729791961', '金成时代广场2号楼三单元', '哈弗', 'H6', '2017-04-23 10:29:15');
INSERT INTO `nj_userinfo` VALUES ('1345', '闫永斌', '13007510395', '政通路130号院', '一汽-大众奥迪', '奥迪Q5', '2017-04-23 10:29:53');
INSERT INTO `nj_userinfo` VALUES ('1346', '罗俊华', '15981821587', '政通路130院', '一汽-大众奥迪', '奥迪Q5', '2017-04-23 10:32:27');
INSERT INTO `nj_userinfo` VALUES ('1347', '何明', '18239979661', '河南省辉县市峪河镇何庄村201号', '宝骏', '宝骏560', '2017-04-23 10:32:30');
INSERT INTO `nj_userinfo` VALUES ('1348', '罗俊华', '15981821587', '政通路130院', '一汽-大众奥迪', '奥迪Q5', '2017-04-23 10:32:52');
INSERT INTO `nj_userinfo` VALUES ('1349', '刘兴河', '13598445977', '大学南路与郑航街王胡砦幸福花园2号楼3单元', '上汽通用别克', '别克GL8', '2017-04-23 10:34:23');
INSERT INTO `nj_userinfo` VALUES ('1350', '闫优赛', '15713668712', '郑州市二七区政通路嵩山路130号院', '奥迪(进口)', '奥迪A6(进口)', '2017-04-23 10:35:27');
INSERT INTO `nj_userinfo` VALUES ('1351', '郑玲', '13523553135', '新郑市烟厂大街189号', '起亚(进口)', '索兰托', '2017-04-23 10:35:32');
INSERT INTO `nj_userinfo` VALUES ('1352', '原建双', '13949111943', '郑州市郑东新区奥兰花园', '众泰汽车', 'SR9', '2017-04-23 10:44:03');
INSERT INTO `nj_userinfo` VALUES ('1353', '罗俊华', '15981821587', '政通路130院', '一汽大众', '迈腾', '2017-04-23 10:44:42');
INSERT INTO `nj_userinfo` VALUES ('1354', '罗俊华', '15981821587', '政通路130院', '一汽大众', '迈腾', '2017-04-23 10:46:21');
INSERT INTO `nj_userinfo` VALUES ('1355', '刘振中', '13663889573', '洛阳市洛龙区龙门大道与太康路交叉口鸿儒小区', '长安福特', '锐界', '2017-04-23 10:46:38');
INSERT INTO `nj_userinfo` VALUES ('1356', '杨学志', '13838138556', '上街区42街坊4栋902', '广汽传祺', 'GS4', '2017-04-23 11:01:55');
INSERT INTO `nj_userinfo` VALUES ('1357', '许汝方', '18695824585', '郑东商业中心', '上海大众', '辉昂', '2017-04-23 11:13:03');
INSERT INTO `nj_userinfo` VALUES ('1358', '许汝方', '18695824585', '郑东商业中心', '上海大众', '辉昂', '2017-04-23 11:13:26');
INSERT INTO `nj_userinfo` VALUES ('1359', '张玉峰', '13849462030', '郑东商业中心', '广汽本田', '奥德赛', '2017-04-23 11:14:55');
INSERT INTO `nj_userinfo` VALUES ('1360', '徐腾飞', '18530016542', '郑州市二七区蜜蜂张街 太和路 88号院 3号楼 郑大一附院进修公寓', '吉利汽车', '远景SUV', '2017-04-23 11:18:22');
INSERT INTO `nj_userinfo` VALUES ('1361', '杨路', '13140077601', '郑州市新郑市龙湖镇华商汇', '一汽大众', '速腾', '2017-04-23 11:18:59');
INSERT INTO `nj_userinfo` VALUES ('1362', '张世强', '17760765176', '西四环莲花街锦和苑4号楼', '广汽本田', '飞度', '2017-04-23 11:40:35');
INSERT INTO `nj_userinfo` VALUES ('1363', '王闯', '15638303267', '郑州市荥阳市郑州万通汽车学校', '克莱斯勒(进口)', '300C(进口)', '2017-04-23 11:41:17');
INSERT INTO `nj_userinfo` VALUES ('1364', '李明骏', '15639071570', '郑州市荥阳市郑州万通汽车学校', '华晨宝马', 'DB9', '2017-04-23 11:42:55');
INSERT INTO `nj_userinfo` VALUES ('1365', '李明骏郭国磊', '18337347559', '郑州市荥阳市郑州万通汽车学校', '华晨宝马', 'DB9', '2017-04-23 11:44:09');
INSERT INTO `nj_userinfo` VALUES ('1366', '郭国磊', '18568221305', '郑州市荥阳市郑州万通汽车学校', '一汽-大众奥迪', '奥迪A6L', '2017-04-23 11:45:36');
INSERT INTO `nj_userinfo` VALUES ('1367', '程成', '15890096155', '陇海路华山路昆仑华府6号楼2单元5楼068', '上海大众', '途昂', '2017-04-23 11:47:52');
INSERT INTO `nj_userinfo` VALUES ('1368', '魏建中', '17698070911', '郑州市中原区桐柏路与汝河路向西500米路南汝河小区院内帝湖分局交巡大队', '上汽通用别克', '别克GL8', '2017-04-23 11:53:46');
INSERT INTO `nj_userinfo` VALUES ('1369', '魏建中', '17698070911', '郑州市中原区桐柏路与汝河路向西500米路南汝河小区院内帝湖分局交巡大队', '上汽通用别克', '别克GL8', '2017-04-23 11:54:41');
INSERT INTO `nj_userinfo` VALUES ('1370', '郭国磊', '18337347559', '郑州市荥阳市郑州万通汽车学校', '华晨宝马', '宝马1系', '2017-04-23 12:11:49');
INSERT INTO `nj_userinfo` VALUES ('1371', '张纪明', '17719822166', '索凌路西史赵南院7号楼1单元1楼西户', '广汽Jeep', '指南者', '2017-04-23 12:18:14');
INSERT INTO `nj_userinfo` VALUES ('1372', '赵世民', '18339275059', '河南省荥阳市贾峪镇', '东风本田', '思域', '2017-04-23 12:39:55');
INSERT INTO `nj_userinfo` VALUES ('1373', '申泽成', '13203733228', '郑州市文治路宽广市场30楼1号', '野马汽车', 'T70', '2017-04-23 12:46:43');
INSERT INTO `nj_userinfo` VALUES ('1374', '王团伟', '13939426408', '河南省商水县白寺镇白寺村', '哈弗', 'H6', '2017-04-23 12:50:15');
INSERT INTO `nj_userinfo` VALUES ('1375', '郭', '13213190408', '郑州市中原区汝河路汝河小区18号楼', '日产(进口)', '途乐', '2017-04-23 12:55:35');
INSERT INTO `nj_userinfo` VALUES ('1376', '余洪波', '18003958853', '河南漯河舞阳县电业局', '宝骏', '宝骏730', '2017-04-23 12:58:38');
INSERT INTO `nj_userinfo` VALUES ('1377', '吴丙午', '15303883823', '洛阳市栾川县碧玲华庭西100米', '广汽本田', '缤智', '2017-04-23 13:00:12');
INSERT INTO `nj_userinfo` VALUES ('1378', '余鸿雁', '15890226918', '河南漯河舞阳县电业局', '宝骏', '宝骏730', '2017-04-23 13:01:55');
INSERT INTO `nj_userinfo` VALUES ('1379', '田力', '18568676685', '开封市儿童医院', '华晨宝马', '宝马3系', '2017-04-23 13:02:05');
INSERT INTO `nj_userinfo` VALUES ('1380', '梅德立', '13949057969', '民航路燕乐小区7号楼4单元4楼西户', '上汽通用别克', '英朗', '2017-04-23 13:02:38');
INSERT INTO `nj_userinfo` VALUES ('1381', '谢东', '15837100045', '郑州金水区沙口路1号院金沙汉飞国际小区', '宝马(进口)', '宝马3系(进口)', '2017-04-23 13:03:48');
INSERT INTO `nj_userinfo` VALUES ('1382', '老张', '15713800977', '开封市儿童医院', '北京奔驰', 'GLA', '2017-04-23 13:04:21');
INSERT INTO `nj_userinfo` VALUES ('1383', '李建', '15038074166', '二七区，航海路与兴华街', '比亚迪', 'F3', '2017-04-23 13:14:31');
INSERT INTO `nj_userinfo` VALUES ('1384', '李建', '15038074166', '二七区，航海路与兴华街', '比亚迪', 'F3', '2017-04-23 13:15:08');
INSERT INTO `nj_userinfo` VALUES ('1385', '李建', '15038074166', '二七区，航海路与兴华街', '比亚迪', 'F3', '2017-04-23 13:15:08');
INSERT INTO `nj_userinfo` VALUES ('1386', '王', '13203882589', '中原区郑上路三十里铺东陈庄村雅尊家纺', '奇瑞汽车', '瑞虎7', '2017-04-23 13:26:06');
INSERT INTO `nj_userinfo` VALUES ('1387', '王德功', '13526869813', '九如路与龙湖中环路交叉口向东1000米路北河南一建', '东风日产', '阳光', '2017-04-23 13:37:15');
INSERT INTO `nj_userinfo` VALUES ('1388', '杨公兴', '13255962651', '现场去领可以吗', '东风风行', 'SX6', '2017-04-23 13:44:44');
INSERT INTO `nj_userinfo` VALUES ('1389', '陈文倩', '13673695100', '郑州市管城区石化路美景天城66号楼', '上汽通用雪佛兰', '赛欧', '2017-04-23 13:58:49');
INSERT INTO `nj_userinfo` VALUES ('1390', '张先生', '13592446882', '新密市裴沟矿生活区10楼', '东风本田', '思域', '2017-04-23 14:18:17');
INSERT INTO `nj_userinfo` VALUES ('1391', '王超', '15037151723', '郑州市管城区东三马路新天地小区爱心超市', '哈弗', 'H6', '2017-04-23 14:18:49');
INSERT INTO `nj_userinfo` VALUES ('1392', '王超', '15037151723', '郑州市管城区东三马路新天地小区爱心超市', '哈弗', 'H6', '2017-04-23 14:19:02');
INSERT INTO `nj_userinfo` VALUES ('1393', '刘春丽', '18538278293', '郑东新区七里河南路西刘街交叉口空管花园2号楼1单位', '广汽丰田', 'YARiS L 致享', '2017-04-23 14:25:54');
INSERT INTO `nj_userinfo` VALUES ('1394', '刘闯', '18703666005', '郑州市中牟县九龙镇。席庄祥云寺村', '吉利汽车', '远景SUV', '2017-04-23 14:30:40');
INSERT INTO `nj_userinfo` VALUES ('1395', '张卫卫', '13283869750', '郑州市中牟县九龙镇。席庄祥云寺村', '吉利汽车', '帝豪GS', '2017-04-23 14:33:47');
INSERT INTO `nj_userinfo` VALUES ('1396', '张卫卫', '13283869750', '郑州市中牟县九龙镇。席庄祥云寺村', '吉利汽车', '帝豪GS', '2017-04-23 14:34:03');
INSERT INTO `nj_userinfo` VALUES ('1397', '聂晶', '18530099211', '五厂二街56号楼三单元一楼西户', '吉利汽车', '远景SUV', '2017-04-23 14:39:57');
INSERT INTO `nj_userinfo` VALUES ('1398', '王新伟', '15093760691', '汝州市人民法院', '长安福特', '福睿斯', '2017-04-23 14:43:25');
INSERT INTO `nj_userinfo` VALUES ('1399', '吴二伟', '15981858808', '郑州市金水区东建材大世界精品广场北门口三环锁业', '捷豹', 'F-PACE', '2017-04-23 14:45:05');
INSERT INTO `nj_userinfo` VALUES ('1400', '吴二伟', '15981858808', '郑州市金水区东建材大世界精品广场北门口三环锁业', '捷豹', 'F-PACE', '2017-04-23 14:45:32');
INSERT INTO `nj_userinfo` VALUES ('1401', '杜昆峰', '18839773937', '郑州市大学路郑州大学西生活区18号楼2单元10号', '上汽通用雪佛兰', '迈锐宝', '2017-04-23 14:50:19');
INSERT INTO `nj_userinfo` VALUES ('1402', '王振宇', '13608677441', '新郑市新华路轻工家属院9号', '东风本田', 'CR-V', '2017-04-23 15:25:59');
INSERT INTO `nj_userinfo` VALUES ('1403', '杨濮', '18237101346', '汇泉西悦城', '一汽丰田', '卡罗拉', '2017-04-23 15:31:12');
INSERT INTO `nj_userinfo` VALUES ('1404', '王文勇', '13783666586', '巩义市育英街22号', '江淮', '瑞风M5', '2017-04-23 15:42:43');
INSERT INTO `nj_userinfo` VALUES ('1405', '张建新', '13838357310', '新密市嵩山大道西路中兴集团调度室', '北京汽车', 'BJ20', '2017-04-23 16:02:17');
INSERT INTO `nj_userinfo` VALUES ('1406', '张鹏', '18838261297', '中原区棉纺西路4号院锦艺城2期美域1号楼2单元2楼0202室', '广汽传祺', 'GS4', '2017-04-23 16:07:46');
INSERT INTO `nj_userinfo` VALUES ('1407', '刘松凯', '18838070025', '未来路商城路西北角未来城', 'MG', 'MG3', '2017-04-23 16:11:01');
INSERT INTO `nj_userinfo` VALUES ('1408', '赵锐', '13937123416', '中原区棉纺西路4号院锦艺城2期美域1号楼2单元2楼0202室', '众泰汽车', 'Z500', '2017-04-23 16:11:04');
INSERT INTO `nj_userinfo` VALUES ('1409', '张小虎', '15836668596', '须水', '广汽丰田', '汉兰达', '2017-04-23 16:13:17');
INSERT INTO `nj_userinfo` VALUES ('1410', '张德炳', '13373935788', '郑州市黄河路11号院河南粮食大厦', '广汽三菱', '欧蓝德', '2017-04-23 16:13:22');
INSERT INTO `nj_userinfo` VALUES ('1411', '张德炳', '13373935788', '郑州市黄河路11号院河南粮食大厦', '广汽三菱', '欧蓝德', '2017-04-23 16:14:37');
INSERT INTO `nj_userinfo` VALUES ('1412', '王莉', '15838096699', '郑州市人民医院', '广汽三菱', '欧蓝德', '2017-04-23 16:16:34');
INSERT INTO `nj_userinfo` VALUES ('1413', '王莉', '15838096699', '郑州市人民医院', '广汽三菱', '欧蓝德', '2017-04-23 16:16:47');
INSERT INTO `nj_userinfo` VALUES ('1414', '胡燕燕', '13623838574', '郑州市金水区农业路70号郑州希福中医肿瘤医院。', '广汽丰田', 'YARiS L 致炫', '2017-04-23 16:32:14');
INSERT INTO `nj_userinfo` VALUES ('1415', '胡燕燕', '13623838574', '郑州市金水区农业路70号郑州希福中医肿瘤医院。', '广汽丰田', 'YARiS L 致享', '2017-04-23 16:33:09');
INSERT INTO `nj_userinfo` VALUES ('1416', '崔艳丽', '15737136777', '河南省郑州市荥阳市汜河路花园街北口崇秘堂养生疗肤会所', '奔驰(进口)', 'E级(进口)', '2017-04-23 16:39:50');
INSERT INTO `nj_userinfo` VALUES ('1417', '朱灵波', '18203979051', '河南省郑州市郑东新区郑州轨道交通有限公司运营分公司郑东车辆段', '吉利汽车', '帝豪GL', '2017-04-23 16:43:06');
INSERT INTO `nj_userinfo` VALUES ('1418', '王小飞', '13837890311', '河南交通职业技术学院航海路校区南门', '奔驰(进口)', 'G级', '2017-04-23 16:46:18');
INSERT INTO `nj_userinfo` VALUES ('1419', '张佳', '15238354538', '河南省新郑市龙王乡龙王村', '凯翼', 'X3', '2017-04-23 16:52:59');
INSERT INTO `nj_userinfo` VALUES ('1420', '陈学良', '13700878891', '荥阳市住房和城乡建设局', '郑州日产', '日产NV200', '2017-04-23 16:54:38');
INSERT INTO `nj_userinfo` VALUES ('1421', '杨先生', '15037185552', '鑫苑中央花园西苑24号楼3单元3楼西', '东南汽车', 'DX3', '2017-04-23 16:58:28');
INSERT INTO `nj_userinfo` VALUES ('1422', '郭卫星', '13849084366', '郑州市中牟县九龙镇菜市场', '宝骏', '宝骏730', '2017-04-23 17:08:17');
INSERT INTO `nj_userinfo` VALUES ('1423', '师广会', '13137591099', '张庄', '东南汽车', 'DX3', '2017-04-23 17:08:50');
INSERT INTO `nj_userinfo` VALUES ('1424', '董丰旗', '15290820217', '河南省新郑市龙王乡庙前刘村', '哈弗', 'H6 Coupe', '2017-04-23 17:20:52');
INSERT INTO `nj_userinfo` VALUES ('1425', '王长春', '15238595192', '中牟县青年街道纸厂院内', '吉利汽车', '博越', '2017-04-23 17:22:38');
INSERT INTO `nj_userinfo` VALUES ('1426', '王长春', '15238595192', '中牟县青年街道纸厂院内', '吉利汽车', '博越', '2017-04-23 17:23:14');
INSERT INTO `nj_userinfo` VALUES ('1427', '靳明伟', '13607671316', '新郑市辛店镇阳光花园', '广汽传祺', 'GS8', '2017-04-23 17:24:35');
INSERT INTO `nj_userinfo` VALUES ('1428', '李焕平', '15038354379', '河南省新郑市龙王乡庙前刘村', '哈弗', 'H6 Coupe', '2017-04-23 17:25:17');
INSERT INTO `nj_userinfo` VALUES ('1429', '王学全', '15839045937', '中牟县青年街道纸厂院内', '宝骏', '宝骏560', '2017-04-23 17:32:35');
INSERT INTO `nj_userinfo` VALUES ('1430', '王学全', '15839045937', '中牟县青年街道纸厂院内', '宝骏', '宝骏560', '2017-04-23 17:34:14');
INSERT INTO `nj_userinfo` VALUES ('1431', '王学全', '15839045937', '中牟县青年街道纸厂院内', '宝骏', '宝骏560', '2017-04-23 17:34:47');
INSERT INTO `nj_userinfo` VALUES ('1432', '王学全', '15839045937', '中牟县青年街道纸厂院内', '宝骏', '宝骏560', '2017-04-23 17:40:22');
INSERT INTO `nj_userinfo` VALUES ('1433', '王学全', '15839045937', '中牟县青年街道纸厂院内', '宝骏', '宝骏560', '2017-04-23 17:42:17');
INSERT INTO `nj_userinfo` VALUES ('1434', '赵亚龙', '18838226021', '天荣汽配城a67一16', '北京现代', '名图', '2017-04-23 18:05:16');
INSERT INTO `nj_userinfo` VALUES ('1435', '陈伟', '13027757114', '中原区郑上路66号院10号1单元4楼西', '奇瑞汽车', '瑞虎7', '2017-04-23 18:12:05');
INSERT INTO `nj_userinfo` VALUES ('1436', '王成', '13838297814', '郑州市二七区长江路与行云路向南500米路西王胡寨幸福家园小区，12号楼一楼东户', '福田汽车', '图雅诺', '2017-04-23 18:22:03');
INSERT INTO `nj_userinfo` VALUES ('1437', '张先生', '15093096030', '玉兰湾1号楼3303室', '东风本田', 'CR-V', '2017-04-23 18:31:48');
INSERT INTO `nj_userinfo` VALUES ('1438', '刘玉婷', '13503942355', '郑州市金水区东风路河南省中医院东门', '哈弗', 'H6', '2017-04-23 18:47:07');
INSERT INTO `nj_userinfo` VALUES ('1439', '陈海涛', '18037805531', '郑州市管城区永恒尚东小区2号楼1单元', '荣威', 'RX5', '2017-04-23 18:52:10');
INSERT INTO `nj_userinfo` VALUES ('1440', '刘磊', '13033960238', '中牟浩瀚广告材料市场A区15排29号', '长安商用', '欧尚', '2017-04-23 18:54:25');
INSERT INTO `nj_userinfo` VALUES ('1441', '王倩倩', '13523071768', '郑州市金水区永平路十里铺街邢屯社区14号楼4单元5号', '广汽传祺', 'GS8', '2017-04-23 19:07:45');
INSERT INTO `nj_userinfo` VALUES ('1442', '邢世园', '13523071768', '郑州市金水区永平路十里铺街邢屯社区14号楼4单元5号', '广汽传祺', 'GS8', '2017-04-23 19:08:49');
INSERT INTO `nj_userinfo` VALUES ('1443', '邢世园', '13526882592', '郑州市金水区永平路十里铺街邢屯社区14号楼4单元5号', '广汽传祺', 'GS8', '2017-04-23 19:13:04');
INSERT INTO `nj_userinfo` VALUES ('1444', '李洪柯', '15981992841', '河南省郑州市金水区文化路78号', 'Jeep(进口) ', '牧马人', '2017-04-23 19:14:18');
INSERT INTO `nj_userinfo` VALUES ('1445', '韩朝阳', '15036077907', '郑州', '东风本田', 'CR-V', '2017-04-23 19:16:18');
INSERT INTO `nj_userinfo` VALUES ('1446', '李勇', '15837127508', '巩义市豫联工业园区', '哈弗', 'H2s', '2017-04-23 19:17:08');
INSERT INTO `nj_userinfo` VALUES ('1447', '马东峰', '13938215595', '郑州市惠济区花园口镇八堡村', '宝骏', '宝骏510', '2017-04-23 19:20:49');
INSERT INTO `nj_userinfo` VALUES ('1448', '连中鄂', '18503862796', '郑州市煤仓北街风和日丽家园5号楼1单元301', '斯柯达', '柯迪亚克', '2017-04-23 19:32:30');
INSERT INTO `nj_userinfo` VALUES ('1449', null, null, null, null, null, '2017-04-23 19:32:40');
INSERT INTO `nj_userinfo` VALUES ('1450', '连中鄂', '18503862796', '郑州市煤仓北街风和日丽家园5号楼1单元301', '斯柯达', '柯迪亚克', '2017-04-23 19:34:40');
INSERT INTO `nj_userinfo` VALUES ('1451', '周航乾', '15638101377', '宇通客车有限公司', '哈弗', 'H2', '2017-04-23 20:07:45');
INSERT INTO `nj_userinfo` VALUES ('1452', '朱村磊', '18539966769', '经开区第十五大街瑞锦小区竹林苑', '凯迪拉克', 'XTS', '2017-04-23 20:09:27');
INSERT INTO `nj_userinfo` VALUES ('1453', '熊建丰', '18903797643', '老城区人民街23号洛阳宾馆内食品厂', '上汽通用五菱', '五菱宏光', '2017-04-23 20:14:48');
INSERT INTO `nj_userinfo` VALUES ('1454', '顾文生', '13949100990', '郑州市伏牛南路6号永威鑫城10楼2单元21号', '广汽三菱', '欧蓝德', '2017-04-23 20:17:06');
INSERT INTO `nj_userinfo` VALUES ('1455', '刘全云', '13598563939', '河南潢川', '华晨宝马', '宝马X1', '2017-04-23 20:28:27');
INSERT INTO `nj_userinfo` VALUES ('1456', '刘涛', '17839980127', '汉江路与兴华南街齐礼闫7号院', '一汽奔腾', 'B50', '2017-04-23 20:28:46');
INSERT INTO `nj_userinfo` VALUES ('1457', '要恒迁', '13140078762', '郑州市中牟县白沙镇袁庄村东文峰物流园12号库', '宝骏', '宝骏510', '2017-04-23 20:36:43');
INSERT INTO `nj_userinfo` VALUES ('1458', '耿昆', '13838120590', '郑州市二七区合作路鑫苑景园10号楼', '本田(进口)', '本田CR-Z', '2017-04-23 21:03:58');
INSERT INTO `nj_userinfo` VALUES ('1459', '卜女士', '15516954806', '中原路171号中原万达小区', '荣威', '360', '2017-04-23 21:08:28');
INSERT INTO `nj_userinfo` VALUES ('1460', '汪道涵', '15238399675', '河南省荥阳市万山路与汜河路向北200', '宝骏', '宝骏510', '2017-04-23 21:08:43');
INSERT INTO `nj_userinfo` VALUES ('1461', '刘素娜', '13674906859', '河南省荥阳市万山路与汜河路向北200路东浩浩辅食商行', '宝骏', '宝骏510', '2017-04-23 21:14:16');
INSERT INTO `nj_userinfo` VALUES ('1462', '王佳音', '15039090568', '郑州市中原区棉纺西路盛润锦绣城2号楼', '上汽通用雪佛兰', '科沃兹', '2017-04-23 21:15:45');
INSERT INTO `nj_userinfo` VALUES ('1463', '汪道涵', '15238399675', '河南省荥阳市万山路与汜河路向北200路东浩浩辅食商行', '宝骏', '宝骏560', '2017-04-23 21:16:39');
INSERT INTO `nj_userinfo` VALUES ('1464', '尹建超', '15093368896', '河南省新郑市直中学', '一汽大众', '高尔夫', '2017-04-23 21:55:53');
INSERT INTO `nj_userinfo` VALUES ('1465', '尹建超', '15093368896', '河南省新郑市直中学', '一汽大众', '高尔夫', '2017-04-23 21:56:24');
INSERT INTO `nj_userinfo` VALUES ('1466', '王俊博', '13674917111', '金水区丰庆路与龙门路交叉口向北50米（瀚宇天悦）', '一汽-大众奥迪', '奥迪A4L ', '2017-04-23 22:01:53');
INSERT INTO `nj_userinfo` VALUES ('1467', '杨莹', '13253333900', '金水区丰庆路与龙门路交叉口向北50米（瀚宇天悦）', '一汽-大众奥迪', '奥迪A4L ', '2017-04-23 22:07:26');
INSERT INTO `nj_userinfo` VALUES ('1468', '刘伟', '18337868093', '开封市公安局', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-23 22:14:50');
INSERT INTO `nj_userinfo` VALUES ('1469', '杨学志', '13838138556', '上街区42街坊4栋902', '广汽传祺', 'GS4', '2017-04-23 22:17:49');
INSERT INTO `nj_userinfo` VALUES ('1470', '汤冬冬', '15188394919', '郑州市金水区金水路河南省公安厅', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-23 22:22:30');
INSERT INTO `nj_userinfo` VALUES ('1471', '曲珂', '18625599311', '郑州市黄河南路与万通街万科房地产有限公司', '海马郑州', 'M6', '2017-04-23 22:34:15');
INSERT INTO `nj_userinfo` VALUES ('1472', '张', '18203654681', '东风路南阳路同乐社区北院35号楼3单元', '东风本田', 'XR-V', '2017-04-23 22:43:25');
INSERT INTO `nj_userinfo` VALUES ('1473', '张本超', '15539010757', '东风路沙口路往北300米火车北站铸造厂', '吉利汽车', '博瑞', '2017-04-23 22:45:46');
INSERT INTO `nj_userinfo` VALUES ('1474', '任永明', '15538206366', '金水区丰庆路36号丰庆佳苑小区11号楼5单元48号', '雷克萨斯', 'RX', '2017-04-23 22:54:55');
INSERT INTO `nj_userinfo` VALUES ('1475', '丘山', '18703615277', '郑州市管城区紫辰路滨河花园小区2号楼', '吉利汽车', '博瑞', '2017-04-23 22:59:36');
INSERT INTO `nj_userinfo` VALUES ('1476', '王继武', '15237151067', '郑州市新郑市龙湖镇华南城9B-1-83', '上海大众', '途昂', '2017-04-23 23:09:49');
INSERT INTO `nj_userinfo` VALUES ('1477', '窦志亮', '13103716720', '新密曲梁窦沟', '阿斯顿马丁', 'V12 Vantage', '2017-04-23 23:15:38');
INSERT INTO `nj_userinfo` VALUES ('1478', '王海柱', '13949052870', '郑州市金水区农科路9号院鑫苑世家2号楼', '斯威汽车', '斯威X7', '2017-04-23 23:17:16');
INSERT INTO `nj_userinfo` VALUES ('1479', '崔青海', '13383957732', '河南周口西华县无人机产业园', '东风风行', 'S500', '2017-04-23 23:17:45');
INSERT INTO `nj_userinfo` VALUES ('1480', '王海柱', '13949052870', '郑州市金水区农科路9号院鑫苑世家2号楼', '斯威汽车', '斯威X7', '2017-04-23 23:17:51');
INSERT INTO `nj_userinfo` VALUES ('1481', '张延宾', '13663713595', '郑州国家大学科技园(东区)6#楼G座', '哈弗', 'H6 Coupe', '2017-04-23 23:19:52');
INSERT INTO `nj_userinfo` VALUES ('1482', '杨旭', '13383957732', '河南周口西华县无人机产业园', '东风风光', '370', '2017-04-23 23:19:53');
INSERT INTO `nj_userinfo` VALUES ('1483', '张东朋', '18538769911', '郑州市勤劳街康桥金域上郡2号院4', '路虎', '发现神行', '2017-04-23 23:20:10');
INSERT INTO `nj_userinfo` VALUES ('1484', '张东朋', '18538769911', '郑州市二七区淮河路勤劳街康桥金域上郡2号院5号楼2006', '保时捷', 'Cayenne', '2017-04-23 23:21:57');
INSERT INTO `nj_userinfo` VALUES ('1485', '李红涛', '18937678679', '郑州市郑东新区宏图街', '长安商用', '欧尚', '2017-04-23 23:30:15');
INSERT INTO `nj_userinfo` VALUES ('1486', '李红涛', '18937678679', '郑州市郑东新区宏图街', '长安商用', '欧尚', '2017-04-23 23:30:56');
INSERT INTO `nj_userinfo` VALUES ('1487', '朱小利', '18503916771', '河南省焦作市沁阳市太行大道普罗旺斯小区', '江西五十铃', 'D-MAX', '2017-04-23 23:40:50');
INSERT INTO `nj_userinfo` VALUES ('1488', '郭保光', '18638289994', '中原区建设路百花路交叉口万乘国际705', '上海大众', '帕萨特', '2017-04-24 00:03:49');
INSERT INTO `nj_userinfo` VALUES ('1489', '徐亚凯', '13353787307', '南四环百荣世贸商城映天项目部', '长安福特', '福克斯', '2017-04-24 00:04:56');
INSERT INTO `nj_userinfo` VALUES ('1490', '徐亚凯', '13353787307', '南四环百荣世贸商城映天项目部', '长安福特', '福克斯', '2017-04-24 00:05:31');
INSERT INTO `nj_userinfo` VALUES ('1491', '宋明晓', '18737173174', '郑州市中牟县九龙镇和谐家园一号楼', '上汽通用别克', '君威', '2017-04-24 00:08:20');
INSERT INTO `nj_userinfo` VALUES ('1492', '贾玉峰', '13703822681', '新郑市梨河镇供销社', '一汽大众', '迈腾', '2017-04-24 00:15:46');
INSERT INTO `nj_userinfo` VALUES ('1493', '张文杰', '13071061112', '京广路陇海路向东二百米小赵寨温馨花园', '吉利汽车', '博瑞', '2017-04-24 00:32:18');
INSERT INTO `nj_userinfo` VALUES ('1494', '李乐意', '15515938637', '郑州市中牟县张庄镇西街', '吉利汽车', '帝豪GL', '2017-04-24 00:35:22');
INSERT INTO `nj_userinfo` VALUES ('1495', '张志强', '15238305099', '郑东新区商都路正商和谐大厦b座204', '广汽传祺', 'GS4', '2017-04-24 00:39:10');
INSERT INTO `nj_userinfo` VALUES ('1496', '丁晓虹', '15137100932', '郑州市交通路38', '宝骏', '宝骏510', '2017-04-24 06:44:14');
INSERT INTO `nj_userinfo` VALUES ('1497', null, null, null, null, null, '2017-04-24 06:44:24');
INSERT INTO `nj_userinfo` VALUES ('1498', '丁晓虹', '15137100932', '郑州市交通路38号院2号楼3单元37号', '宝骏', '宝骏510', '2017-04-24 06:46:35');
INSERT INTO `nj_userinfo` VALUES ('1499', '陈玉凤', '13523500573', '龙湖镇侯庄村', '哈弗', 'H6 Coupe', '2017-04-24 07:05:14');
INSERT INTO `nj_userinfo` VALUES ('1500', '陈玉凤', '13523500573', '龙湖镇侯庄村', '哈弗', 'H6 Coupe', '2017-04-24 07:05:41');
INSERT INTO `nj_userinfo` VALUES ('1501', '薛腾鹤', '13603451003', '中原区长椿路9号', '猎豹汽车', 'CS10', '2017-04-24 07:09:59');
INSERT INTO `nj_userinfo` VALUES ('1502', '周桂芳', '13603451003', '中原区长椿路9号', '猎豹汽车', 'CS10', '2017-04-24 07:11:09');
INSERT INTO `nj_userinfo` VALUES ('1503', '孙美枝', '18237133267', '惠济区弘润路1号院5号楼', '一汽大众', '捷达', '2017-04-24 07:19:12');
INSERT INTO `nj_userinfo` VALUES ('1504', '马志光', '15038015086', '郑州经开区经南三路第十四大街瑞锦小区桂香苑7号楼1单元1103', '吉利汽车', '帝豪GS', '2017-04-24 07:26:09');
INSERT INTO `nj_userinfo` VALUES ('1505', '段开放', '15903693155', '郑州经开区第十大街四方达公司', '宝骏', '宝骏510', '2017-04-24 07:29:29');
INSERT INTO `nj_userinfo` VALUES ('1506', '董有财', '17752549826', '紫荆山路商城路裕鸿国际1701室', '凯迪拉克(进口)', 'CTS(进口)', '2017-04-24 07:40:03');
INSERT INTO `nj_userinfo` VALUES ('1507', '张军庆', '13027711119', '经开区朝凤路亚太花园2号楼', '广汽本田', '奥德赛', '2017-04-24 07:45:16');
INSERT INTO `nj_userinfo` VALUES ('1508', '张军庆', '13027711119', '经开区亚太花园2号楼', '广汽本田', '奥德赛', '2017-04-24 07:47:54');
INSERT INTO `nj_userinfo` VALUES ('1509', '丁颖', '13839998620', '开封龙亭漫步帝庭402', '上海大众', '朗逸', '2017-04-24 08:05:52');
INSERT INTO `nj_userinfo` VALUES ('1510', '曹存', '18638620697', '经开区第三大街与经南五路交叉口北路西博赛生物', '广汽本田', '飞度', '2017-04-24 08:09:10');
INSERT INTO `nj_userinfo` VALUES ('1511', '王刘涛', '13419776810', '管城区十八里河镇河西袁村爱美资靴厂', '东风风行', 'SX6', '2017-04-24 08:13:31');
INSERT INTO `nj_userinfo` VALUES ('1512', null, null, null, null, null, '2017-04-24 08:19:37');
INSERT INTO `nj_userinfo` VALUES ('1513', '魏志斌', '15939009068', '新密市北环路移动营业厅', '上汽通用五菱', '五菱荣光', '2017-04-24 08:20:01');
INSERT INTO `nj_userinfo` VALUES ('1514', '田云峰', '18625744546', '周口市鹿邑县辛集镇田集行政村', '哈弗', 'H6', '2017-04-24 08:20:20');
INSERT INTO `nj_userinfo` VALUES ('1515', '田云峰', '18625744546', '周口市鹿邑县辛集镇田集行政村', '哈弗', 'H6', '2017-04-24 08:21:23');
INSERT INTO `nj_userinfo` VALUES ('1516', '田云飞', '13164333612', '河南省郑州市北环路36号', '哈弗', 'H6', '2017-04-24 08:22:54');
INSERT INTO `nj_userinfo` VALUES ('1517', '田云飞', '13164333612', '周口市鹿邑县辛集镇田集行政村', '哈弗', 'H6', '2017-04-24 08:23:40');
INSERT INTO `nj_userinfo` VALUES ('1518', '王先生', '18539220650', '河南省鹤壁市淇滨区鹤淇大道富士康西门口', '哈弗', 'H2s', '2017-04-24 09:33:01');
INSERT INTO `nj_userinfo` VALUES ('1519', '郭良鹏', '15824801345', '南四环嵩山路交叉口向西三百米畅兴物流', '一汽丰田', '普拉多', '2017-04-24 09:40:17');
INSERT INTO `nj_userinfo` VALUES ('1520', '高军升', '18838199908', '郑汴路升龙环球大厦b座1903室', '别克(进口)', '昂科雷', '2017-04-24 10:15:19');
INSERT INTO `nj_userinfo` VALUES ('1521', '董换礼', '15515791283', '秦岭路航海路西城花园', '一汽大众', '捷达', '2017-04-24 10:16:46');
INSERT INTO `nj_userinfo` VALUES ('1522', '荆', '13513710673', '嵩山路南三环向南2千米锦绣山河2号院', '东风本田', '思域', '2017-04-24 10:21:57');
INSERT INTO `nj_userinfo` VALUES ('1523', '张', '13949085779', '嵩山路南三环锦绣山河1号院', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-24 10:26:54');
INSERT INTO `nj_userinfo` VALUES ('1524', '胡延标', '18625538903', '新郑市龙湖镇绿都丹石街区22号楼', '奇瑞汽车', '艾瑞泽5', '2017-04-24 10:27:07');
INSERT INTO `nj_userinfo` VALUES ('1525', '李羚', '18625536903', '新郑市龙湖镇绿都丹石街区22号楼', '吉利汽车', '帝豪', '2017-04-24 10:28:54');
INSERT INTO `nj_userinfo` VALUES ('1526', '王明', '13937126568', '河南省巩义市鲁庄镇', '郑州日产', '帅客', '2017-04-24 10:29:35');
INSERT INTO `nj_userinfo` VALUES ('1527', '张圆圆', '13938159189', '焦作市都市花园御苑多层5号楼284', 'Jeep(进口) ', '自由光(进口)', '2017-04-24 10:38:15');
INSERT INTO `nj_userinfo` VALUES ('1528', null, null, null, null, null, '2017-04-24 10:38:34');
INSERT INTO `nj_userinfo` VALUES ('1529', '王占锋', '18638786888', '花园路英才街交叉口东南角环艺商务五楼', '一汽丰田', '兰德酷路泽', '2017-04-24 10:42:48');
INSERT INTO `nj_userinfo` VALUES ('1530', '杨晶晶', '13849120225', '开封市鼓楼区西南城坡路12号院  聂杰（收）', 'Jeep(进口) ', '自由光(进口)', '2017-04-24 10:43:01');
INSERT INTO `nj_userinfo` VALUES ('1531', '孙伟丽', '13838064723', '郑州市航空港区绿苑小区', '一汽丰田', '卡罗拉', '2017-04-24 10:52:00');
INSERT INTO `nj_userinfo` VALUES ('1532', '吴涛', '18238298829', '郑州市金水区河南牧业经济学院龙子湖校区', '宝沃汽车', '宝沃BX5', '2017-04-24 11:05:39');
INSERT INTO `nj_userinfo` VALUES ('1533', '张志超', '17760781206', '郑州市管城区东明路城北路省外贸仓库1号库', '吉利汽车', '远景SUV', '2017-04-24 11:09:21');
INSERT INTO `nj_userinfo` VALUES ('1534', '张志超', '17760781206', '郑州市管城区东明路城北路省外贸仓库1号库', '吉利汽车', '远景SUV', '2017-04-24 11:09:48');
INSERT INTO `nj_userinfo` VALUES ('1535', '韩亚楠', '13526589011', '郑州市管城区南关街178号院', '凯迪拉克', 'ATS-L', '2017-04-24 11:11:27');
INSERT INTO `nj_userinfo` VALUES ('1536', '李鹏辉', '17752512518', '郑州市管城区东明路城北路大河商务', '吉利汽车', '帝豪GS', '2017-04-24 11:12:21');
INSERT INTO `nj_userinfo` VALUES ('1537', '马若楠', '18339777761', '北三环与中方园路天伦水晶城8号', '长安福特', '金牛座', '2017-04-24 11:16:26');
INSERT INTO `nj_userinfo` VALUES ('1538', '李鹏辉', '17752512518', '郑州市管城区东明路城北路大河商务', '吉利汽车', '帝豪GS', '2017-04-24 11:21:05');
INSERT INTO `nj_userinfo` VALUES ('1539', '李鹏辉', '15238380832', '郑州市管城区东明路城北路大河商务', '吉利汽车', '远景SUV', '2017-04-24 11:23:05');
INSERT INTO `nj_userinfo` VALUES ('1540', '李鹏辉', '15238380832', '郑州市管城区东明路城北路大河商务', '吉利汽车', '远景SUV', '2017-04-24 11:23:35');
INSERT INTO `nj_userinfo` VALUES ('1541', '赵黎岗', '15333821886', '郑州市中原区建设路工农路北500米保利百合', '上海大众', '朗逸', '2017-04-24 11:27:04');
INSERT INTO `nj_userinfo` VALUES ('1542', '武士伟', '18339203601', '中牟县八岗镇常店村', '吉利汽车', '博瑞', '2017-04-24 11:28:23');
INSERT INTO `nj_userinfo` VALUES ('1543', '于淼', '15238099370', '九如东路与农业东路交叉口向南一百米路西', '一汽大众', '速腾', '2017-04-24 11:28:32');
INSERT INTO `nj_userinfo` VALUES ('1544', '郭珊珊', '15036177783', '郑州市郑东新区民生路1号市政设计院', '广汽Jeep', '自由侠', '2017-04-24 11:30:18');
INSERT INTO `nj_userinfo` VALUES ('1545', '张盼', '15617411633', '郑东新区农业东路九如东路中国人寿', '上海大众', '帕萨特', '2017-04-24 11:31:09');
INSERT INTO `nj_userinfo` VALUES ('1546', '于楠', '15524684661', '河南省郑州市中原区须水镇第六小学', '广汽Jeep', '自由光', '2017-04-24 11:36:37');
INSERT INTO `nj_userinfo` VALUES ('1547', '耿世超', '15093355484', '中牟县三管庙乡耿家村', '一汽丰田', '普拉多', '2017-04-24 12:00:12');
INSERT INTO `nj_userinfo` VALUES ('1548', '岳维林', '13073761337', '郑州市 管城区 经开第八大街 河南科建', '长安汽车', 'CS75', '2017-04-24 12:15:35');
INSERT INTO `nj_userinfo` VALUES ('1549', '岳维浩', '18703858212', '郑州市荥阳市贾峪镇恒大山水城科建项目部', '吉利汽车', '博瑞', '2017-04-24 12:24:17');
INSERT INTO `nj_userinfo` VALUES ('1550', null, null, null, null, null, '2017-04-24 12:24:27');
INSERT INTO `nj_userinfo` VALUES ('1551', '岳维浩', '18703858212', '郑州市荥阳市贾峪镇恒大山水城科建项目部', '吉利汽车', '博瑞', '2017-04-24 12:25:05');
INSERT INTO `nj_userinfo` VALUES ('1552', '郭浩浩', '17839982029', '中原区昌达路与西四环交叉口向西500米欣欣快捷宾馆', '东南汽车', 'DX3', '2017-04-24 12:31:18');
INSERT INTO `nj_userinfo` VALUES ('1553', '宋冬晓', '13298179004', '郑州港区富士康富鑫公寓10#', '吉利汽车', '帝豪', '2017-04-24 12:43:45');
INSERT INTO `nj_userinfo` VALUES ('1554', '赵龙龙', '18337152102', '荥阳市索河路与广武路交叉口郑州万通汽车学校', '上汽通用别克', '威朗', '2017-04-24 12:57:05');
INSERT INTO `nj_userinfo` VALUES ('1555', '苏腾飞', '18637186216', '巩义市金地花园11楼5单元711', '广汽本田', '飞度', '2017-04-24 13:09:35');
INSERT INTO `nj_userinfo` VALUES ('1556', '陈玲', '13526763969', '郑州市未来路与航海路启航大厦C1208', '上海大众', '朗逸', '2017-04-24 13:13:35');
INSERT INTO `nj_userinfo` VALUES ('1557', '王紫鹤', '13103864907', '郑东新区中州大道兴荣街伞花苑', '东风悦达起亚', 'K3', '2017-04-24 13:48:23');
INSERT INTO `nj_userinfo` VALUES ('1558', '张剑峰', '15225861574', '宏昌街与百福街交叉口闽南酒楼', '长安福特', '福睿斯', '2017-04-24 13:57:31');
INSERT INTO `nj_userinfo` VALUES ('1559', '楚文', '13783695567', '荥阳市索河东路荥阳市电业局', '广汽本田', '雅阁', '2017-04-24 14:10:56');
INSERT INTO `nj_userinfo` VALUES ('1560', '王洪波', '17737503988', '经一路1号院1号楼三门洞二楼西户', '上海大众', '途昂', '2017-04-24 15:13:17');
INSERT INTO `nj_userinfo` VALUES ('1561', '曹长明', '13903875461', '河南中医药大学', '东南汽车', 'DX7', '2017-04-24 15:21:00');
INSERT INTO `nj_userinfo` VALUES ('1562', '王美雪', '18737381958', '郑东新区农业南路与正光北街交叉口麒御酒店', '吉利汽车', '帝豪GL', '2017-04-24 15:23:34');
INSERT INTO `nj_userinfo` VALUES ('1563', '郭国磊', '18568221350', '河南省郑州市荥阳市郑州万通汽修学校', '华晨宝马', '宝马1系', '2017-04-24 15:23:54');
INSERT INTO `nj_userinfo` VALUES ('1564', '王美雪', '18737381958', '郑东新区农业南路与正光北街交叉口麒御酒店', '吉利汽车', '帝豪GL', '2017-04-24 15:24:06');
INSERT INTO `nj_userinfo` VALUES ('1565', '王美雪', '18737381958', '郑东新区农业南路与正光北街交叉口麒御酒店', '吉利汽车', '帝豪GL', '2017-04-24 15:25:06');
INSERT INTO `nj_userinfo` VALUES ('1566', '古长明', '13526524338', '管城区印刷厂街爱华幼儿园', '东风标致', '4008', '2017-04-24 15:25:12');
INSERT INTO `nj_userinfo` VALUES ('1567', '许江斌', '18539946130', '经开第十五大街经南三路百事可乐', '吉利汽车', '帝豪GS', '2017-04-24 15:26:11');
INSERT INTO `nj_userinfo` VALUES ('1568', '王兴光', '13460895846', '中牟县，张庄镇', '东风本田', 'XR-V', '2017-04-24 15:27:31');
INSERT INTO `nj_userinfo` VALUES ('1569', '王兴光', '13460895846', '中牟县，张庄镇', '东风本田', 'XR-V', '2017-04-24 15:28:01');
INSERT INTO `nj_userinfo` VALUES ('1570', '孙海宾', '13569633583', '中牟县张庄镇', '长安铃木', '维特拉', '2017-04-24 15:32:39');
INSERT INTO `nj_userinfo` VALUES ('1571', '平浩林', '13838575618', '荥阳市君临天下9号楼', '哈弗', 'H6', '2017-04-24 15:39:34');
INSERT INTO `nj_userinfo` VALUES ('1572', '赵丙军', '15188515968', '新郑市陶文路月季新城', '江淮', '帅铃T6', '2017-04-24 15:40:20');
INSERT INTO `nj_userinfo` VALUES ('1573', '周帅', '15737156382', '荥阳市河阴路与朝阳巷交叉口人民医院行政楼', '上汽通用雪佛兰', '迈锐宝', '2017-04-24 15:42:57');
INSERT INTO `nj_userinfo` VALUES ('1574', '黄伟涛', '15225136306', '陇海路与东明路交叉口往北50米郑州厨具市场1035号，欧尚店', '猎豹汽车', 'CS10', '2017-04-24 15:44:03');
INSERT INTO `nj_userinfo` VALUES ('1575', '黄伟涛', '15225136306', '陇海路与东明路交叉口往北50米郑州厨具市场1035号，欧尚店', '猎豹汽车', 'CS10', '2017-04-24 15:44:19');
INSERT INTO `nj_userinfo` VALUES ('1576', '常伟', '18695869064', '郑州市大学南路158号珍景小区2号楼2单元1707室', '广汽Jeep', '自由侠', '2017-04-24 15:44:59');
INSERT INTO `nj_userinfo` VALUES ('1577', '汪宏正', '18939570816', '郑州市金水区农业路59号', '北京现代', '领动', '2017-04-24 15:45:22');
INSERT INTO `nj_userinfo` VALUES ('1578', '陈怡帆', '15036100829', '郑州市管城区紫辰路南三环正商华钻一期6号楼', '上海大众', '朗逸', '2017-04-24 15:49:32');
INSERT INTO `nj_userinfo` VALUES ('1579', '何先生', '18838090199', '郑州市管城区南三环紫辰路华钻一期', '一汽大众', '速腾', '2017-04-24 15:55:06');
INSERT INTO `nj_userinfo` VALUES ('1580', '刘玉廷', '17737711017', '文化路北三环交叉口中国平安202', '东风悦达起亚', 'K5', '2017-04-24 15:57:46');
INSERT INTO `nj_userinfo` VALUES ('1581', '马非', '13343825880', '新郑市薛店镇', '上汽通用别克', '威朗', '2017-04-24 16:01:40');
INSERT INTO `nj_userinfo` VALUES ('1582', '王玮', '18503805579', '郑州市上街区青竹街6号楼8号', '一汽大众', 'CC', '2017-04-24 16:09:02');
INSERT INTO `nj_userinfo` VALUES ('1583', '马哲', '18203979131', '金水路未来路交叉口西南角居联峰尚装饰', '上汽通用别克', '威朗', '2017-04-24 16:20:45');
INSERT INTO `nj_userinfo` VALUES ('1584', '蔡鹏', '17319167867', '金水路未来路交叉口西南角居联峰尚装饰', '上汽通用别克', '威朗', '2017-04-24 16:23:42');
INSERT INTO `nj_userinfo` VALUES ('1585', '马志光', '15038015086', '郑州经开区经南三路第十四大街瑞锦小区桂香苑7号楼1单元1103', '宝骏', '宝骏510', '2017-04-24 16:23:43');
INSERT INTO `nj_userinfo` VALUES ('1586', '刘祥玉', '13683737130', '航空港区绿苑小区', '上海大众', '朗逸', '2017-04-24 16:24:56');
INSERT INTO `nj_userinfo` VALUES ('1587', '孙工场', '18087917712', '中原区郑上路西岗五厂家属院', '上海大众', '途观', '2017-04-24 16:26:54');
INSERT INTO `nj_userinfo` VALUES ('1588', '李振', '15981823227', '郑州东区白沙镇李湖桥社区', '广汽Jeep', '自由侠', '2017-04-24 16:37:15');
INSERT INTO `nj_userinfo` VALUES ('1589', '宋佳文', '15238678933', '郑州市纬五路12号供销大厦627', '上海大众', '途安', '2017-04-24 16:40:19');
INSERT INTO `nj_userinfo` VALUES ('1590', '胡玉增', '13607689055', '郑州市三全路57号院二号楼三单元301', '广汽Jeep', '自由光', '2017-04-24 16:42:11');
INSERT INTO `nj_userinfo` VALUES ('1591', '杜韦唯', '15324832655', '惠济区绿源路8号中原水产物流港', '奇瑞汽车', '艾瑞泽5', '2017-04-24 16:44:11');
INSERT INTO `nj_userinfo` VALUES ('1592', '杨东亮', '13526535787', '通站路南三环西北角BRT站台', '广汽传祺', 'GS8', '2017-04-24 16:44:48');
INSERT INTO `nj_userinfo` VALUES ('1593', '杨东亮', '13526535787', '通站路南三环西北角BRT站台', '广汽传祺', 'GS8', '2017-04-24 16:45:50');
INSERT INTO `nj_userinfo` VALUES ('1594', '杨东亮', '13526535787', '通站路南三环西北角BRT站台', '长安汽车', 'CS95', '2017-04-24 16:47:10');
INSERT INTO `nj_userinfo` VALUES ('1595', '周先生', '17797766797', '金水区鑫苑路26号', '荣威', '360', '2017-04-24 16:53:48');
INSERT INTO `nj_userinfo` VALUES ('1596', '袁艳龙', '13813862340', '经开第八大街经南二路宏光合园', '宝骏', '宝骏730', '2017-04-24 16:54:32');
INSERT INTO `nj_userinfo` VALUES ('1597', '李先生', '15538378213', '郑州市嵩山路友爱路交叉口长城商务一楼监控室', '路虎', '发现神行', '2017-04-24 16:57:43');
INSERT INTO `nj_userinfo` VALUES ('1598', '陈慧婷', '15938756232', '荥阳市乔楼镇任庄', '东风本田', 'CR-V', '2017-04-24 17:03:39');
INSERT INTO `nj_userinfo` VALUES ('1599', '何其乐', '15738388006', '河南警察学院龙子湖校区', '广汽菲亚特', '菲翔', '2017-04-24 17:14:52');
INSERT INTO `nj_userinfo` VALUES ('1600', '刘兴', '18837131626', '新郑市黄水路华龙一巷11', '荣威', 'i6', '2017-04-24 17:20:12');
INSERT INTO `nj_userinfo` VALUES ('1601', '牛先生', '18538097428', '郑州市管城区经北五路经开第二大街交叉口卓越集团内。', '吉利汽车', '博越', '2017-04-24 17:32:00');
INSERT INTO `nj_userinfo` VALUES ('1602', '王伟', '15203761196', '郑州市荥阳市城区索河湾西门', '一汽大众', '迈腾', '2017-04-24 17:34:05');
INSERT INTO `nj_userinfo` VALUES ('1603', '弓鹏', '18595678688', '西站路70号', '北京奔驰', 'C级', '2017-04-24 17:49:19');
INSERT INTO `nj_userinfo` VALUES ('1604', '代建新', '15539358883', '郑州市中牟县万邦国际物流园', '东风本田', '思域', '2017-04-24 17:49:26');
INSERT INTO `nj_userinfo` VALUES ('1605', '朱瑰红', '18803606662', '郑州市中牟县万邦国际物流园', '东风本田', '思域', '2017-04-24 17:52:03');
INSERT INTO `nj_userinfo` VALUES ('1606', '郑政', '13271559967', '郑州市二七区行云路汉江路亚洁小区', '东南汽车', 'DX7', '2017-04-24 18:12:38');
INSERT INTO `nj_userinfo` VALUES ('1607', '徐腾飞', '18738019557', '郑州市二七区蜜蜂张街 太和路 88号院 3号楼 郑大一附院进修公寓', '哈弗', 'H2s', '2017-04-24 18:15:38');
INSERT INTO `nj_userinfo` VALUES ('1608', '关水林', '15936268736', '金水区黄河路服装商场2楼2排12号', '奥迪(进口)', '奥迪Q5(进口)', '2017-04-24 18:17:02');
INSERT INTO `nj_userinfo` VALUES ('1609', '李', '18837174902', '郑州市二七区爱德花园3号楼', '哈弗', 'H2', '2017-04-24 18:24:35');
INSERT INTO `nj_userinfo` VALUES ('1610', '史成碧', '13333853958', '中鼎翡翠一期一号楼一单元1203', '哈弗', 'H6', '2017-04-24 18:31:28');
INSERT INTO `nj_userinfo` VALUES ('1611', null, null, null, null, null, '2017-04-24 18:32:34');
INSERT INTO `nj_userinfo` VALUES ('1612', '杨博文', '18567772357', '河南省郑州市惠济区天河路36号郑州财经学院', '宝马(进口)', '宝马i3', '2017-04-24 18:33:26');
INSERT INTO `nj_userinfo` VALUES ('1613', '申聪', '15639782866', '河南省新郑市文化路炎黄广场西侧允硕女装专卖店', '宝骏', '宝骏310', '2017-04-24 18:37:18');
INSERT INTO `nj_userinfo` VALUES ('1614', '高晓飞', '15503711415', '河南省新郑市文化路炎黄广场西侧允硕女装专卖店', '宝骏', '宝骏310', '2017-04-24 18:37:55');
INSERT INTO `nj_userinfo` VALUES ('1615', '吴帅功', '15137133114', '郑州市中牟县郑港六路豫康新城14栋605', '宝骏', '宝骏510', '2017-04-24 18:41:16');
INSERT INTO `nj_userinfo` VALUES ('1616', '王鹏', '13598889101', '郑州市中原区桐柏路与西站路向西500米景泓中央公园一单元一号楼2002', '上汽通用别克', '君越', '2017-04-24 18:41:21');
INSERT INTO `nj_userinfo` VALUES ('1617', '张继彪', '15738396350', '1573839635', '哈弗', 'H2', '2017-04-24 18:51:59');
INSERT INTO `nj_userinfo` VALUES ('1618', '张继彪', '15738396350', '管城区新郑路陇海南里206号院', '哈弗', 'H2', '2017-04-24 18:55:02');
INSERT INTO `nj_userinfo` VALUES ('1619', '胥大伟', '13273711136', '郑州市金水区红旗路政七街大河商务1号楼2楼218房间', '上海大众', '帕萨特', '2017-04-24 18:57:28');
INSERT INTO `nj_userinfo` VALUES ('1620', '孙先生', '15136426632', '河南郑州登封市颖阳镇', '荣威', 'i6', '2017-04-24 19:01:17');
INSERT INTO `nj_userinfo` VALUES ('1621', '来亚飞', '13343829455', '丰庆路与博颂路交叉口向西200米文雅新世界2期10号楼', '一汽大众', '高尔夫·嘉旅', '2017-04-24 19:01:26');
INSERT INTO `nj_userinfo` VALUES ('1622', '刘先生', '13323843321', '郑州登封市卢店镇', '荣威', 'i6', '2017-04-24 19:04:11');
INSERT INTO `nj_userinfo` VALUES ('1623', '李女士', '15517562311', '郑州市中原区陇海西路康桥幼儿园', '东风雷诺', '科雷傲', '2017-04-24 19:09:44');
INSERT INTO `nj_userinfo` VALUES ('1624', '晋亚娜', '15237952903', '郑州惠济区文化路开元路绿城银水湾2号楼2单元', '上海大众', '途观L', '2017-04-24 19:13:28');
INSERT INTO `nj_userinfo` VALUES ('1625', '任平常', '17637691715', '龙湖镇柏树刘小学', '东风风行', '菱智', '2017-04-24 19:17:05');
INSERT INTO `nj_userinfo` VALUES ('1626', '任平常', '17637691715', '龙湖镇柏树刘小学', '东风风行', '菱智', '2017-04-24 19:17:14');
INSERT INTO `nj_userinfo` VALUES ('1627', '王冠涛', '13598873507', '郑州市凤凰双语小学向东50米路北顺鑫文具', '长安商用', '欧尚', '2017-04-24 19:17:18');
INSERT INTO `nj_userinfo` VALUES ('1628', '王冠涛', '13598873507', '郑州市凤凰双语小学向东50米路北顺鑫文具', '长安商用', '欧尚', '2017-04-24 19:17:35');
INSERT INTO `nj_userinfo` VALUES ('1629', '任平常', '17637691715', '龙湖镇柏树刘小学', '东风风行', '菱智', '2017-04-24 19:18:58');
INSERT INTO `nj_userinfo` VALUES ('1630', '杨先生', '13523073695', '郑州市金水区北环路索凌路向北200米路西西史赵小区', '长城汽车', 'C50', '2017-04-24 19:19:49');
INSERT INTO `nj_userinfo` VALUES ('1631', '宋秋艳', '13643836497', '河南财政金融学院', '劳斯莱斯', '古思特', '2017-04-24 19:21:09');
INSERT INTO `nj_userinfo` VALUES ('1632', '杨永民', '13525555519', '新郑市龙湖镇文昌路，莱湾洁品批零售店', '上海大众', '途观L', '2017-04-24 19:23:41');
INSERT INTO `nj_userinfo` VALUES ('1633', '魏旗', '15515727135', '东明路陇海路郑州厨具市场', '吉利汽车', '帝豪', '2017-04-24 19:23:44');
INSERT INTO `nj_userinfo` VALUES ('1634', '温春雷', '18595527223', '河南省郑州市航空港区富士康富鑫宿舍', '长安汽车', '悦翔V7', '2017-04-24 19:29:05');
INSERT INTO `nj_userinfo` VALUES ('1635', '罗保军', '15138237103', '郑州市金水区中州大道国基路南维也纳森林19号楼', '上汽通用别克', '英朗', '2017-04-24 19:30:40');
INSERT INTO `nj_userinfo` VALUES ('1636', '李敬明', '13203720482', '东风路信息学院路沃德花园15楼2单元三楼东户', '吉利汽车', '帝豪GL', '2017-04-24 19:39:38');
INSERT INTO `nj_userinfo` VALUES ('1637', '周正康', '17639049588', '洛阳市白鹤镇东霞院村', '东风风神', 'AX7', '2017-04-24 19:40:26');
INSERT INTO `nj_userinfo` VALUES ('1638', '赵鼎祥', '18437970085', '郑州惠济区文化路开元路绿城银水湾2号楼1单元', '吉利汽车', '博越', '2017-04-24 19:51:13');
INSERT INTO `nj_userinfo` VALUES ('1639', '王超锋', '13949082917', '郑州市花园口国基路交叉口张北100米美景花郡', '江淮', '星锐', '2017-04-24 19:52:45');
INSERT INTO `nj_userinfo` VALUES ('1640', '徐进', '13683715328', '郑州航海西路166号院7号楼', '斯柯达', '柯迪亚克', '2017-04-24 20:05:41');
INSERT INTO `nj_userinfo` VALUES ('1641', '王红梅', '13526242799', '郑州市骨科医院14楼1病房3床', '荣威', 'RX5', '2017-04-24 20:08:57');
INSERT INTO `nj_userinfo` VALUES ('1642', '谢军强', '13598757705', '万邦前路捡村', '长安汽车', 'CS75', '2017-04-24 20:14:24');
INSERT INTO `nj_userinfo` VALUES ('1643', '马龙', '13607646688', '金水区索凌路瑞祥如意世家4号楼一门栋二楼西户', '日产(进口)', '途乐', '2017-04-24 20:18:35');
INSERT INTO `nj_userinfo` VALUES ('1644', '吴爱红', '13653855801', '郑州市金水区丰庆路富邦名邸二期3号楼2单元304', '上海大众', '途昂', '2017-04-24 20:34:55');
INSERT INTO `nj_userinfo` VALUES ('1645', '朱现勋', '15515580208', '航海路东路三大街梁湖社区3O号楼1单元', '宝骏', '宝骏560', '2017-04-24 20:37:53');
INSERT INTO `nj_userinfo` VALUES ('1646', '张凯', '13838384369', '郑州市惠济区花园口镇政府光扬路', '东风本田', '艾力绅', '2017-04-24 20:44:50');
INSERT INTO `nj_userinfo` VALUES ('1647', '史晓娇', '15136205273', '郑州市金水区黄河路姚寨路金城时代广场1号楼2单元', '上海大众', '帕萨特', '2017-04-24 20:49:31');
INSERT INTO `nj_userinfo` VALUES ('1648', '苏泉龙', '13323751620', '平顶山市湛河区亚兴路中建嘉天下', '一汽马自达', '阿特兹', '2017-04-24 20:49:49');
INSERT INTO `nj_userinfo` VALUES ('1649', '褚国军', '15393704222', '橡树玫瑰城54号楼705室', '上汽通用五菱', '五菱宏光', '2017-04-24 20:56:20');
INSERT INTO `nj_userinfo` VALUES ('1650', '胡永霞', '13838556300', '郑州市上街区鸿盛新城', 'MG', 'MG3', '2017-04-24 20:56:50');
INSERT INTO `nj_userinfo` VALUES ('1651', '马会军', '17839619352', '郑州市管城区南曹乡野曹村', '一汽奔腾', 'X40', '2017-04-24 21:05:30');
INSERT INTO `nj_userinfo` VALUES ('1652', '卢明亮', '13676966375', '河南省郑州市新郑市龙湖镇新嘉苑小区门口', '荣威', 'RX5', '2017-04-24 21:07:01');
INSERT INTO `nj_userinfo` VALUES ('1653', '赵全', '13523034203', '郑州金水区东明路民航新村4号楼28号', '广汽丰田', '汉兰达', '2017-04-24 21:11:49');
INSERT INTO `nj_userinfo` VALUES ('1654', '陈建民', '15803882704', '郑州市中原区航海西路办事处罗寨村92号', '一汽-大众奥迪', '奥迪A3', '2017-04-24 21:32:50');
INSERT INTO `nj_userinfo` VALUES ('1655', '苏彬彬', '15937116150', '郑州市管城回族区港湾路2号晋亿五金店', '宝骏', '宝骏560', '2017-04-24 21:42:57');
INSERT INTO `nj_userinfo` VALUES ('1656', '赵工明', '18736006189', '建设西路三环湖西路湖西购物中心1+公寓', '北京现代', '全新胜达', '2017-04-24 21:57:30');
INSERT INTO `nj_userinfo` VALUES ('1657', '李国保', '13849185463', '金水区金水路109号', '广汽传祺', 'GA6', '2017-04-24 21:58:03');
INSERT INTO `nj_userinfo` VALUES ('1658', '韩宽', '18937637445', '郑州市高新区莲花街红楠路交叉口 天迈科技', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-24 22:00:19');
INSERT INTO `nj_userinfo` VALUES ('1659', '陈俊', '13526810377', '郑州市中原区东冯湾', '上海大众', 'POLO', '2017-04-24 22:02:45');
INSERT INTO `nj_userinfo` VALUES ('1660', '陈龙', '13733853668', '郑州市永平路长通物流总部二楼', '东风雪铁龙', 'C5', '2017-04-24 22:04:14');
INSERT INTO `nj_userinfo` VALUES ('1661', '张志强', '15238305099', '商都路正商和谐大厦B坐204', '广汽传祺', 'GS4', '2017-04-24 22:10:25');
INSERT INTO `nj_userinfo` VALUES ('1662', '李宁', '13721834954', '郑州市新郑市龙湖镇河南机电职业学院', '比亚迪', '唐', '2017-04-24 22:13:18');
INSERT INTO `nj_userinfo` VALUES ('1663', '段文磊', '18736218343', '郑州市新郑市龙湖镇河南机电职业学院', '比亚迪', '唐', '2017-04-24 22:16:06');
INSERT INTO `nj_userinfo` VALUES ('1664', '杨龙', '13017693085', '郑州市新郑市龙湖镇河南机电职业学院', '比亚迪', '唐', '2017-04-24 22:17:27');
INSERT INTO `nj_userinfo` VALUES ('1665', '郝红涛', '18037592693', '新郑龙湖镇', '一汽-大众奥迪', '奥迪A3', '2017-04-24 22:18:42');
INSERT INTO `nj_userinfo` VALUES ('1666', '胡柏', '13071058609', '郑州市新郑市龙湖镇河南机电职业学院', '东风悦达起亚', 'K5', '2017-04-24 22:19:15');
INSERT INTO `nj_userinfo` VALUES ('1667', '宋小静', '18839774576', '管城区紫光花园东门门面房风格造型', '北京现代', '朗动', '2017-04-24 22:25:02');
INSERT INTO `nj_userinfo` VALUES ('1668', '时培杰', '15136115869', '郑州市南阳路135号东方肿瘤医院楼下灰指甲 手足癣店', '吉利汽车', '远景', '2017-04-24 22:36:00');
INSERT INTO `nj_userinfo` VALUES ('1669', '付春林', '13526496396', '郑州市二七区碧云路23号', '一汽丰田', '卡罗拉', '2017-04-24 22:36:24');
INSERT INTO `nj_userinfo` VALUES ('1670', '张曙光', '18838233595', '富田太阳城二期32号楼26层', '上汽通用别克', '昂科威', '2017-04-24 22:37:18');
INSERT INTO `nj_userinfo` VALUES ('1671', '王红伟', '13526788311', '菅城区南曹乡二十九旁', '上海大众', '途观L', '2017-04-24 22:39:16');
INSERT INTO `nj_userinfo` VALUES ('1672', '王红伟', '13526788311', '菅城区南曹乡二十九旁', '上海大众', '途观L', '2017-04-24 22:39:43');
INSERT INTO `nj_userinfo` VALUES ('1673', '赵松', '15539777817', '河南省郑州市紫东路银莺路二里岗派出所中岳七里香缇', '东风风光', '580', '2017-04-24 22:40:36');
INSERT INTO `nj_userinfo` VALUES ('1674', '赵松', '15539777817', '河南省郑州市紫东路银莺路二里岗派出所中岳七里香缇', '东风风光', '580', '2017-04-24 22:41:36');
INSERT INTO `nj_userinfo` VALUES ('1675', '赵松', '15539777817', '河南省郑州市紫东路银莺路二里岗派出所中岳七里香缇', '东风风光', '580', '2017-04-24 22:43:41');
INSERT INTO `nj_userinfo` VALUES ('1676', '魏贵军', '13673642613', '郑州市经开区祥云办事处后魏村', '长安福特', '金牛座', '2017-04-24 22:44:49');
INSERT INTO `nj_userinfo` VALUES ('1677', '李合龙', '17729763552', '河南省郑州市中州大道与郑汴路交叉口向东200 河南中德宝汽车销售服务有限公司', '宝骏', '宝骏730', '2017-04-24 22:47:47');
INSERT INTO `nj_userinfo` VALUES ('1678', '王慧芝', '18238062701', '河南省郑州市中州大道与郑汴路交叉口向东200 河南中德宝汽车销售服务有限公司', '一汽丰田', '卡罗拉', '2017-04-24 22:50:36');
INSERT INTO `nj_userinfo` VALUES ('1679', '郑瑞', '13693711846', '郑州市中州大道天伦路西100米路北利达国宾中心售楼部', '荣威', 'i6', '2017-04-24 22:52:41');
INSERT INTO `nj_userinfo` VALUES ('1680', '侯凤磊', '17752552293', '河南省郑州市中原区嵩山北路雅居一方斜对面中建七局工地', '广汽传祺', 'GS8', '2017-04-24 23:02:43');
INSERT INTO `nj_userinfo` VALUES ('1681', '刘广六', '15981950982', '河南省巩义市站街镇', '长安汽车', 'CS15', '2017-04-24 23:04:06');
INSERT INTO `nj_userinfo` VALUES ('1682', '赵可莹', '13373907118', '河南焦作武陟县詹店镇赵庄村', '哈弗', 'H6', '2017-04-24 23:05:16');
INSERT INTO `nj_userinfo` VALUES ('1683', '郭延钊', '15333711651', '嵩山中原区北路雅居一方斜对面中建七局工地', '东风日产', '奇骏', '2017-04-24 23:07:04');
INSERT INTO `nj_userinfo` VALUES ('1684', '孙凯', '13283813929', '郑州市经开区第六大街东风日产发动机工厂西门门卫室', '启辰', 'T90', '2017-04-24 23:08:06');
INSERT INTO `nj_userinfo` VALUES ('1685', '吴珂', '15136133105', '郑州市经开区第六大街东风日产发动机工厂西门门卫室', '启辰', 'T90', '2017-04-24 23:11:30');
INSERT INTO `nj_userinfo` VALUES ('1686', '王涛', '15514551018', '郑州市郑东新区前程路八号郑州工商学院', '广汽传祺', 'GA6', '2017-04-24 23:15:09');
INSERT INTO `nj_userinfo` VALUES ('1687', '姚磊', '15936299785', '陇海路一马路欢乐湖童装市场一楼2街25号', '上海大众', '途观L', '2017-04-24 23:15:10');
INSERT INTO `nj_userinfo` VALUES ('1688', '王涛', '13014587082', '郑州市郑东新区前程路八号郑州工商学院', '广汽传祺', 'GA6', '2017-04-24 23:16:05');
INSERT INTO `nj_userinfo` VALUES ('1689', '胡然', '13298403323', '郑州市郑州新区前程路万方科技学院', '阿斯顿马丁', 'DB9', '2017-04-24 23:18:03');
INSERT INTO `nj_userinfo` VALUES ('1690', '韩先生', '18638000768', '江山争雄', '吉利汽车', '博越', '2017-04-24 23:22:07');
INSERT INTO `nj_userinfo` VALUES ('1691', '韩芬芬', '17752559661', '江山路双桥汽配城一排12号', '吉利汽车', '博越', '2017-04-24 23:23:21');
INSERT INTO `nj_userinfo` VALUES ('1692', '狼', '18238515793', '河南省郑州市经济技术开发区二十二大街，东风日产', '江淮', '瑞风A60', '2017-04-24 23:25:42');
INSERT INTO `nj_userinfo` VALUES ('1693', '黄春生', '15238087481', '管城区新郑路陇海里铁路工务段家属院属院', '哈弗', 'H6', '2017-04-24 23:27:59');
INSERT INTO `nj_userinfo` VALUES ('1694', '琚孝峰', '15515577473', '汝河路工人路观澜小区6号楼2单元3202', '广汽传祺', 'GS8', '2017-04-24 23:33:46');
INSERT INTO `nj_userinfo` VALUES ('1695', '梁建伟', '13838012183', '河南省登封市阳城路大鸭梨红都制衣', '丰田(进口)', '奥迪A8', '2017-04-24 23:42:40');
INSERT INTO `nj_userinfo` VALUES ('1696', '郭奇安', '18037786100', '郑州市康平路与永平路鑫苑鑫城16号楼', '一汽-大众奥迪', '奥迪A4L ', '2017-04-24 23:46:46');
INSERT INTO `nj_userinfo` VALUES ('1697', '崔晨鹏', '18037886859', '河南省郑州市巩义市北山口镇白河村三组', '一汽大众', '速腾', '2017-04-25 00:04:03');
INSERT INTO `nj_userinfo` VALUES ('1698', '牛力士', '13472125489', '河南省郑州市中牟县大孟镇村', '上海大众', '帕萨特', '2017-04-25 00:06:40');
INSERT INTO `nj_userinfo` VALUES ('1699', '李鹤', '18538526605', '中原区秦岭路52号院。', '一汽丰田', '卡罗拉', '2017-04-25 00:10:25');
INSERT INTO `nj_userinfo` VALUES ('1700', '张进涛', '13803812706', '郑州市高新区格力生活区', '昌河铃木', '北斗星X5', '2017-04-25 00:13:20');
INSERT INTO `nj_userinfo` VALUES ('1701', '张进涛', '13803812706', '郑州市高新区格力生活区', '昌河铃木', '北斗星X5', '2017-04-25 00:14:01');
INSERT INTO `nj_userinfo` VALUES ('1702', '耿纪震', '15993320393', '开封县范村派出所', '吉利汽车', '博越', '2017-04-25 00:27:33');
INSERT INTO `nj_userinfo` VALUES ('1703', '耿贯钰', '18538307412', '河南省荥阳市王村镇小村', '吉利汽车', '博越', '2017-04-25 00:34:14');
INSERT INTO `nj_userinfo` VALUES ('1704', '陈洪建', '13838383197', '郑州市高新区化工路西段中原制药厂家属院30号楼', '一汽-大众奥迪', '奥迪Q3', '2017-04-25 05:47:37');
INSERT INTO `nj_userinfo` VALUES ('1705', '陈洪建', '13838383197', '郑州市高新区化工路西段中原制药厂家属院30号楼', '一汽-大众奥迪', '奥迪Q3', '2017-04-25 05:49:31');
INSERT INTO `nj_userinfo` VALUES ('1706', '张先生', '18538298086', '顺河路45号院4号楼0504', '一汽大众', '迈腾', '2017-04-25 06:30:54');
INSERT INTO `nj_userinfo` VALUES ('1707', '田珺', '15836197371', '郑州市中原西路与华山路交叉口向西五百米路北', '众泰汽车', 'T600', '2017-04-25 07:10:06');
INSERT INTO `nj_userinfo` VALUES ('1708', '谷仲涛', '13938219737', '郑州市惠济区万客隆家具城', '广汽丰田', '汉兰达', '2017-04-25 07:26:04');
INSERT INTO `nj_userinfo` VALUES ('1709', '曹宗刚', '13949035865', '经开区新安路与凤栖路尔克物流圆3号楼', '华晨金杯', '金杯快运', '2017-04-25 07:28:47');
INSERT INTO `nj_userinfo` VALUES ('1710', '朱根强', '15996587321', '郑州紫微小区7座32O8', '东风悦达起亚', '狮跑', '2017-04-25 07:30:50');
INSERT INTO `nj_userinfo` VALUES ('1711', '李小兵', '13057080943', '郑州紫微小区7座32O8', '吉利汽车', '帝豪', '2017-04-25 07:37:10');
INSERT INTO `nj_userinfo` VALUES ('1712', '何康', '18736966207', '郑州市二七区合作路王立砦6号院一单元一楼东', '一汽丰田', '卡罗拉', '2017-04-25 07:43:08');
INSERT INTO `nj_userinfo` VALUES ('1713', '李满', '18339227053', '郑州市惠济区民安北郡二期69', '比亚迪', 'F3', '2017-04-25 07:58:15');
INSERT INTO `nj_userinfo` VALUES ('1714', '李满', '18339227053', '郑州市惠济区民安北郡二期69', '比亚迪', 'F3', '2017-04-25 07:59:01');
INSERT INTO `nj_userinfo` VALUES ('1715', null, null, null, null, null, '2017-04-25 08:14:38');
INSERT INTO `nj_userinfo` VALUES ('1716', '潘泉水', '13523001269', '三大街毛庄', '福田汽车', '风景', '2017-04-25 08:15:17');
INSERT INTO `nj_userinfo` VALUES ('1717', '雍百松', '15638419310', '中牟县姚家乡河南玉康洗涤有限公司', '东南汽车', 'DX3', '2017-04-25 08:35:33');
INSERT INTO `nj_userinfo` VALUES ('1718', '何文龙', '15981806489', '南三环碧云路橄榄城柏林印象13号楼3单元43号', '广汽传祺', 'GS8', '2017-04-25 08:35:48');
INSERT INTO `nj_userinfo` VALUES ('1719', '王文涛', '15617753953', '巩义市回郭镇', '宝骏', '宝骏510', '2017-04-25 09:03:30');
INSERT INTO `nj_userinfo` VALUES ('1720', '汪洋', '18135783885', '郑州市金水区博颂路15号', '奥迪(进口)', '奥迪Q7', '2017-04-25 09:09:02');
INSERT INTO `nj_userinfo` VALUES ('1721', '冀坤', '13183005935', '管城回族区紫荆山南路388号花都港湾12号楼4单元702', '东风日产', '骊威', '2017-04-25 09:14:33');
INSERT INTO `nj_userinfo` VALUES ('1722', '李鹏磊', '15093345882', '长椿路矛钢路河南省化学工业学校对面', '广汽传祺', 'GS4', '2017-04-25 09:15:43');
INSERT INTO `nj_userinfo` VALUES ('1723', '陈争光', '13460333808', '上街区蓝天路河南省重竞技运动管理中心', '华晨宝马', '宝马X1', '2017-04-25 09:23:24');
INSERT INTO `nj_userinfo` VALUES ('1724', '肖永浩', '13072611595', '新乡市红旗区检察对面新东花园', '别克(进口)', '昂科雷', '2017-04-25 09:33:02');
INSERT INTO `nj_userinfo` VALUES ('1725', '李', '13213029664', '天荣汽配城B区093-16', '上海大众', '凌渡', '2017-04-25 09:34:16');
INSERT INTO `nj_userinfo` VALUES ('1726', '陈星光', '13672676280', '河南财经政法大学南区近邻宝', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-25 09:37:22');
INSERT INTO `nj_userinfo` VALUES ('1727', '王宇', '13027522606', '河南财经政法大学新校区南区近邻宝', '阿斯顿马丁', 'V12 Vantage', '2017-04-25 09:38:10');
INSERT INTO `nj_userinfo` VALUES ('1728', '郑东健(家人)', '15729362823', '郑州市中原区航西办事处石羊寺社区郑湾村', '江淮', '瑞风', '2017-04-25 09:38:31');
INSERT INTO `nj_userinfo` VALUES ('1729', '陈星光', '13672676280', '河南财经政法大学南区近邻宝', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-25 09:40:08');
INSERT INTO `nj_userinfo` VALUES ('1730', '魏妮', '15838037709', '郑州市惠济区南阳路兴南街昌建誉峰小区', '日产(进口)', '日产GT-R', '2017-04-25 10:04:28');
INSERT INTO `nj_userinfo` VALUES ('1731', '魏彩霞', '15729360897', '郑州市惠济区南阳路兴南街昌建誉峰小区', '郑州日产', '日产NV200', '2017-04-25 10:05:49');
INSERT INTO `nj_userinfo` VALUES ('1732', '罗春友', '13849718906', '通泰路66号正弘山', '长安福特', '金牛座', '2017-04-25 10:12:34');
INSERT INTO `nj_userinfo` VALUES ('1733', '罗春友', '13849718906', '通泰路66号正弘山', '长安福特', '金牛座', '2017-04-25 10:12:44');
INSERT INTO `nj_userinfo` VALUES ('1734', '陈云贵', '13523520501', '郑州市经开区九龙镇顺丰速运营业部', '东风日产', '轩逸', '2017-04-25 10:23:32');
INSERT INTO `nj_userinfo` VALUES ('1735', '岳成存', '18838103833', '郑州市新郑市龙湖镇升达经贸管理学院', '阿斯顿马丁', 'V12 Vantage', '2017-04-25 10:27:34');
INSERT INTO `nj_userinfo` VALUES ('1736', '冯念洲', '13523090391', '郑州市金水区郑花路76院，', '广汽传祺', 'GS4', '2017-04-25 10:28:17');
INSERT INTO `nj_userinfo` VALUES ('1737', '孙艳丽', '18203637330', '惠济区开元路江山路惠龙社区', '上海大众', '朗行', '2017-04-25 10:34:49');
INSERT INTO `nj_userinfo` VALUES ('1738', '王朋朋', '15995656701', '郑州市金水区广电南路9号海天公司', '一汽奔腾', 'X40', '2017-04-25 10:40:47');
INSERT INTO `nj_userinfo` VALUES ('1739', '戚志中', '18860363861', '郑州市惠济区黄河桥七组', '一汽-大众奥迪', '奥迪A4L ', '2017-04-25 10:41:10');
INSERT INTO `nj_userinfo` VALUES ('1740', '王中旗', '15890676840', '郑州市金水区广电南路9号海天公司', '奇瑞汽车', '艾瑞泽5', '2017-04-25 10:43:45');
INSERT INTO `nj_userinfo` VALUES ('1741', '李鹏飞', '15239971476', '濮阳市清丰县仙庄镇', '观致汽车', '观致5', '2017-04-25 10:58:03');
INSERT INTO `nj_userinfo` VALUES ('1742', '王会芳', '15893223943', '濮阳市清丰县仙庄镇', '凯翼', 'X5', '2017-04-25 10:59:28');
INSERT INTO `nj_userinfo` VALUES ('1743', '李鹏飞', '15239971476', '濮阳市清丰县仙庄镇', '观致汽车', '观致5', '2017-04-25 11:01:39');
INSERT INTO `nj_userinfo` VALUES ('1744', '侯亮凯', '18317896662', '河南省开封市禹王台区医院前街3号解放军第155中心医院', '广汽丰田', '雷凌', '2017-04-25 11:03:52');
INSERT INTO `nj_userinfo` VALUES ('1745', '李国鹏', '15346309993', '濮阳市清丰县仙庄镇', '北京汽车', 'BJ40', '2017-04-25 11:03:59');
INSERT INTO `nj_userinfo` VALUES ('1746', '赵虎', '13598807727', '河南省巩义市东区东方现代城西大门', '一汽丰田', '卡罗拉', '2017-04-25 11:17:48');
INSERT INTO `nj_userinfo` VALUES ('1747', '陈浩杰', '13783638509', '郑上路与富民路交叉口，西部荣城', '江铃福特', '福克斯(进口)', '2017-04-25 11:18:49');
INSERT INTO `nj_userinfo` VALUES ('1748', '王天亮', '18737122783', '二七区马寨镇郑州科技学院', '众泰汽车', 'Z500', '2017-04-25 11:19:21');
INSERT INTO `nj_userinfo` VALUES ('1749', '王天亮', '18737122783', '二七区马寨镇郑州科技学院', '众泰汽车', 'Z500', '2017-04-25 11:19:57');
INSERT INTO `nj_userinfo` VALUES ('1750', '郎小朋', '18037180729', '郑州市中原区桐柏路街道煤仓北街23号院郑工医院', '上海大众', 'POLO', '2017-04-25 11:32:04');
INSERT INTO `nj_userinfo` VALUES ('1751', '皮卡丘', '18530009238', '郑州市中原区', '奔驰(进口)', 'G级', '2017-04-25 11:36:57');
INSERT INTO `nj_userinfo` VALUES ('1752', '陈二振', '15038252886', '华山路淮河路十字路口彩票店', '上海大众', '朗逸', '2017-04-25 11:48:43');
INSERT INTO `nj_userinfo` VALUES ('1753', '陈', '15036100829', '郑州市管城区南三环与紫辰路华钻一期', '上海大众', '朗逸', '2017-04-25 11:50:10');
INSERT INTO `nj_userinfo` VALUES ('1754', '韩志国', '15981853883', '管城区商都路五州小区三号院九号楼四单元六楼', '哈弗', 'H6', '2017-04-25 12:06:36');
INSERT INTO `nj_userinfo` VALUES ('1755', '王立民', '15937315750', '郑州市航空港区薛店镇世纪广场', '上海大众', 'POLO', '2017-04-25 12:09:57');
INSERT INTO `nj_userinfo` VALUES ('1756', '余江涛', '18860389128', '郑州市龙湖镇升达大学小西门菜鸟驿站', '猎豹汽车', 'CS10', '2017-04-25 12:10:01');
INSERT INTO `nj_userinfo` VALUES ('1757', '王立民', '15937315750', '郑州市航空港区薛店镇世纪广场', '上海大众', 'POLO', '2017-04-25 12:10:25');
INSERT INTO `nj_userinfo` VALUES ('1758', '段欢', '15890168246', '郑州市上街区济源路与淮阳路交叉口正兴翡翠城售楼部', '华晨宝马', '宝马3系', '2017-04-25 12:18:48');
INSERT INTO `nj_userinfo` VALUES ('1759', '侯林彦', '13937774948', '河南省郑州市郑东新区东风南路与商鼎路交叉口文化产业大厦A座侯林彦', '哈弗', 'H6 Coupe', '2017-04-25 12:40:49');
INSERT INTO `nj_userinfo` VALUES ('1760', '曲鞍', '13223019099', '上街区淮阳路北段北一号楼三单元302', '北汽幻速', 'S3L', '2017-04-25 12:47:31');
INSERT INTO `nj_userinfo` VALUES ('1761', '张飞龙', '13903853871', '郑汴路升龙环球大厦b座1903室', '路虎', '揽胜极光', '2017-04-25 12:49:32');
INSERT INTO `nj_userinfo` VALUES ('1762', '张飞龙', '13903853871', '郑汴路升龙环球大厦b座1901室', '路虎', '揽胜极光', '2017-04-25 12:50:50');
INSERT INTO `nj_userinfo` VALUES ('1763', '董贵朋', '15516162764', '郑州市上街区新安路06小区一栋62号', '广汽传祺', 'GS4', '2017-04-25 12:52:45');
INSERT INTO `nj_userinfo` VALUES ('1764', '李', '13783282383', '新郑市', '长安跨越', 'V5', '2017-04-25 12:55:46');
INSERT INTO `nj_userinfo` VALUES ('1765', '赵红伟', '13598054574', '河南省巩义市小关镇口头村八组', '东风风行', '景逸X5', '2017-04-25 13:04:33');
INSERT INTO `nj_userinfo` VALUES ('1766', '杨亚克', '13838507304', '中原区西四环昌达路娅丽达工业园', '东南汽车', 'DX3', '2017-04-25 13:08:41');
INSERT INTO `nj_userinfo` VALUES ('1767', '石惠', '13839191269', '郑东新区农业南路青春圣地7#楼1单元58号', '广汽Jeep', '指南者', '2017-04-25 13:08:41');
INSERT INTO `nj_userinfo` VALUES ('1768', '代士彬', '18703871109', '开封', '一汽大众', '捷达', '2017-04-25 13:12:23');
INSERT INTO `nj_userinfo` VALUES ('1769', '郭女士', '18339251011', '二七区大学路汉江路富华花苑2号楼2单元', '长安福特', '福睿斯', '2017-04-25 13:16:01');
INSERT INTO `nj_userinfo` VALUES ('1770', '侯峰', '18137550302', '河南省新蔡县伟利国际广场2号楼莫干山板材', '奔驰(进口)', 'GLS', '2017-04-25 13:19:58');
INSERT INTO `nj_userinfo` VALUES ('1771', '庄文静', '18739102001', '焦作市解放区站前路铁路电缆厂南家属院', '广汽丰田', '汉兰达', '2017-04-25 13:20:12');
INSERT INTO `nj_userinfo` VALUES ('1772', '李强', '13283850199', '郑州高新区河南电子商务产业园6号楼1501', '一汽大众', '迈腾', '2017-04-25 13:24:55');
INSERT INTO `nj_userinfo` VALUES ('1773', '李强', '13283850199', '郑州高新区河南电子商务产业园6号楼1501', '一汽大众', '迈腾', '2017-04-25 13:24:55');
INSERT INTO `nj_userinfo` VALUES ('1774', '高俊', '13837107881', '郑州市管城区人民路鸿成光彩A52', '斯柯达', '柯迪亚克', '2017-04-25 13:25:20');
INSERT INTO `nj_userinfo` VALUES ('1775', '张超强', '15324818416', '郑州市中原区锦艺华都美域7号楼1单元2708', '江淮', '瑞风M3', '2017-04-25 13:29:01');
INSERT INTO `nj_userinfo` VALUES ('1776', '马先生', '15136474869', '大石桥', '广汽三菱', '劲炫ASX', '2017-04-25 13:35:09');
INSERT INTO `nj_userinfo` VALUES ('1777', '孙建国', '13785767577', '荥阳市豫龙之春', '广汽本田', '冠道', '2017-04-25 13:44:38');
INSERT INTO `nj_userinfo` VALUES ('1778', '刘先生', '13938491126', '郑州二七区中原路大学路交叉口中苑名都', '一汽丰田', '威驰', '2017-04-25 13:56:54');
INSERT INTO `nj_userinfo` VALUES ('1779', '叶雷', '18703807020', '五龙口南路冉屯路，威尼斯水城三期', '广汽传祺', 'GS4', '2017-04-25 14:03:50');
INSERT INTO `nj_userinfo` VALUES ('1780', '张志恒', '13014612321', '郑州市龙子湖办事处磨李社区29号楼', '上海大众', '途观L', '2017-04-25 14:07:20');
INSERT INTO `nj_userinfo` VALUES ('1781', '张志恒', '13014612321', '郑州市龙子湖办事处磨李社区29号楼', '广汽本田', '冠道', '2017-04-25 14:08:18');
INSERT INTO `nj_userinfo` VALUES ('1782', '武元行', '13733867858', '郑州市南关街384号五号楼第四单元702', '上汽通用别克', '昂科威', '2017-04-25 14:18:06');
INSERT INTO `nj_userinfo` VALUES ('1783', '郭先生', '15939110888', '河南省新郑市新新郑机场消防支队后门', '一汽马自达', 'CX-4', '2017-04-25 14:19:51');
INSERT INTO `nj_userinfo` VALUES ('1784', '郭先生', '15939110888', '河南省新郑市新郑机场消防支队后门', '长安马自达', '马自达3 Axela昂克赛拉', '2017-04-25 14:30:34');
INSERT INTO `nj_userinfo` VALUES ('1785', '张贺伟', '18538563106', '郑州市二七区盛世之都', '奥迪(进口)', '奥迪TT', '2017-04-25 14:33:24');
INSERT INTO `nj_userinfo` VALUES ('1786', '吴梅', '15136101788', '郑州市南关街384号五号楼四单元7楼南户', '东风标致', '4008', '2017-04-25 14:44:47');
INSERT INTO `nj_userinfo` VALUES ('1787', '孙森', '18237171877', '京广路漓江路联合花园9号楼二单元11楼东', '一汽丰田', '普拉多', '2017-04-25 14:49:28');
INSERT INTO `nj_userinfo` VALUES ('1788', '王安心', '15138201250', '河南省周口市扶沟县建材市场北', '荣威', 'RX5', '2017-04-25 14:51:26');
INSERT INTO `nj_userinfo` VALUES ('1789', '王祎斐', '15138201250', '河南省周口市扶沟县建材市场北', '荣威', 'RX5', '2017-04-25 14:53:06');
INSERT INTO `nj_userinfo` VALUES ('1790', '陈', '15093076061', '中牟县青年路老党校', '上海大众', '朗逸', '2017-04-25 14:57:18');
INSERT INTO `nj_userinfo` VALUES ('1791', '张留宝', '15837375137', '恵济区恵济桥', '广汽传祺', 'GS4', '2017-04-25 15:12:28');
INSERT INTO `nj_userinfo` VALUES ('1792', '王卫卫', '18903846784', '郑州市上街区翡翠城1号楼', '一汽大众', 'CC', '2017-04-25 15:17:26');
INSERT INTO `nj_userinfo` VALUES ('1793', '张东杰', '13623839367', '郑州市上街区理想名家2号楼', '吉利汽车', '帝豪', '2017-04-25 15:17:50');
INSERT INTO `nj_userinfo` VALUES ('1794', '阿梁', '15738373388', '郑州市二七区交通路升龙世纪花园2区5号楼底铺', '华晨宝马', '宝马5系', '2017-04-25 15:19:46');
INSERT INTO `nj_userinfo` VALUES ('1795', '。。王尔漫', '18293876512', '郑州工贸学，', '上海大众', '途观', '2017-04-25 15:20:39');
INSERT INTO `nj_userinfo` VALUES ('1796', '王崇尊', '17724847380', '嵩山路政通路升龙城6号院东门点创房产', '东南汽车', 'DX3', '2017-04-25 15:24:32');
INSERT INTO `nj_userinfo` VALUES ('1797', '张小虎', '15836668596', '郑州须水', '广汽丰田', '汉兰达', '2017-04-25 15:25:05');
INSERT INTO `nj_userinfo` VALUES ('1798', '张小虎', '15836668596', '郑州须水', '广汽丰田', '汉兰达', '2017-04-25 15:25:39');
INSERT INTO `nj_userinfo` VALUES ('1799', '靳献军', '15639308776', '濮阳县渠村乡政府大院', '哈弗', 'H2', '2017-04-25 15:25:54');
INSERT INTO `nj_userinfo` VALUES ('1800', '马辕锋', '13839888738', '河南省三门峡市渑池县仰韶大街西关菜市场如意粮行（雏鹰集团）', '哈弗', 'H6', '2017-04-25 15:27:23');
INSERT INTO `nj_userinfo` VALUES ('1801', '周亮', '13643856596', '郑州高新技术产业开发区雪松路6号', '上海大众', '桑塔纳', '2017-04-25 15:28:16');
INSERT INTO `nj_userinfo` VALUES ('1802', '靳献军', '15639308776', '濮阳县渠村乡政府大院', '哈弗', 'H2', '2017-04-25 15:31:37');
INSERT INTO `nj_userinfo` VALUES ('1803', '郭冬', '15516550105', '汝南县产业集聚区泰山路禾丰饲料厂西袁月英麦草画院内金地丰公司', '上汽通用雪佛兰', '迈锐宝', '2017-04-25 15:45:08');
INSERT INTO `nj_userinfo` VALUES ('1804', '娄本永', '13903783026', '通许县水榭花都小区门卫室收', '上海大众', '辉昂', '2017-04-25 15:55:00');
INSERT INTO `nj_userinfo` VALUES ('1805', '吴中良', '15515620868', '郑州市陇海南里15号院8号楼', '东风日产', '轩逸', '2017-04-25 15:55:30');
INSERT INTO `nj_userinfo` VALUES ('1806', '郭冬', '15516550105', '汝南县产业集聚区泰山路禾丰饲料厂西袁月英麦草画院内金地丰公司', '凯迪拉克', 'XTS', '2017-04-25 15:57:08');
INSERT INTO `nj_userinfo` VALUES ('1807', '任博', '15515828018', '金水区经一路19号院', '上汽通用别克', '威朗', '2017-04-25 15:57:39');
INSERT INTO `nj_userinfo` VALUES ('1808', '杜素真', '13903787659', '通许县水榭花都小区门卫室', '雪佛兰(进口)', '科迈罗', '2017-04-25 16:00:56');
INSERT INTO `nj_userinfo` VALUES ('1809', '杜素真', '13903787659', '通许县水榭花都小区门卫室', '雪佛兰(进口)', '科迈罗', '2017-04-25 16:01:48');
INSERT INTO `nj_userinfo` VALUES ('1810', '杜素真', '13903787659', '通许县水榭花都小区门卫室', '雪佛兰(进口)', '科迈罗', '2017-04-25 16:05:19');
INSERT INTO `nj_userinfo` VALUES ('1811', '郭贯周', '13073778686', '郑州市康宁街康平路奥兰花园6号楼1单元2301', '上汽通用雪佛兰', '赛欧', '2017-04-25 16:05:34');
INSERT INTO `nj_userinfo` VALUES ('1812', '武国坤', '13849030817', '中牟县新县城龙苑小区五号楼三单元五楼西户', '东风本田', '思域', '2017-04-25 16:20:42');
INSERT INTO `nj_userinfo` VALUES ('1813', '何素真', '13733874759', '金水区经五路32号附2号', '东风本田', 'CR-V', '2017-04-25 16:26:23');
INSERT INTO `nj_userinfo` VALUES ('1814', '魏文祥', '18037100909', '开元路19号邙山新区24一3', '沃尔沃(进口)', 'XC90', '2017-04-25 16:29:13');
INSERT INTO `nj_userinfo` VALUES ('1815', '魏文祥', '18037100909', '开元路19号邙山新区24一3', '沃尔沃(进口)', 'XC90', '2017-04-25 16:30:26');
INSERT INTO `nj_userinfo` VALUES ('1816', '孙俊峰', '13523028630', '郑州市惠济区银河路7号', '华晨宝马', '宝马5系', '2017-04-25 16:37:37');
INSERT INTO `nj_userinfo` VALUES ('1817', '玉飞', '15136172608', '伊河路40号', '宝骏', '宝骏730', '2017-04-25 16:42:14');
INSERT INTO `nj_userinfo` VALUES ('1818', '袁瑞江', '13460899133', '国泰路东方漓水', '长安商用', '欧尚', '2017-04-25 16:48:24');
INSERT INTO `nj_userinfo` VALUES ('1819', '袁瑞江', '13460899133', '国泰路东方漓水', '长安商用', '欧尚', '2017-04-25 16:50:07');
INSERT INTO `nj_userinfo` VALUES ('1820', null, null, null, null, null, '2017-04-25 16:50:17');
INSERT INTO `nj_userinfo` VALUES ('1821', '耿文跃', '18410439679', '郑州管城区', '广汽丰田', '凯美瑞', '2017-04-25 16:50:35');
INSERT INTO `nj_userinfo` VALUES ('1822', '吴莹莹', '13663808031', '中南邮政物流集散中心', '东风日产', '逍客', '2017-04-25 17:00:46');
INSERT INTO `nj_userinfo` VALUES ('1823', '吴莹莹', '13663808031', '中南邮政物流集散中心', '广汽Jeep', '自由侠', '2017-04-25 17:01:31');
INSERT INTO `nj_userinfo` VALUES ('1824', '张彦恒', '17703823511', '郑州市经济技术开发区第十八大街东风延峰汽车饰件系统有限公司', 'MG', 'MG3', '2017-04-25 17:33:52');
INSERT INTO `nj_userinfo` VALUES ('1825', '李天翅', '13592555850', '河南省郑州市新郑市航空港区山顶公寓', '长安汽车', 'CS75', '2017-04-25 17:49:20');
INSERT INTO `nj_userinfo` VALUES ('1826', '陈露', '13017687257', '新郑市龙湖镇华南城5A区1-323号', '上海大众', '桑塔纳', '2017-04-25 17:50:00');
INSERT INTO `nj_userinfo` VALUES ('1827', '姚昆', '18625505857', '东风路天明路开祥御龙城19号楼2405', 'MG', 'ZS', '2017-04-25 18:11:41');
INSERT INTO `nj_userinfo` VALUES ('1828', '杨朋克', '18614906023', '中原区西四环与昌达路娅丽达工业园', '东南汽车', 'DX3', '2017-04-25 18:12:11');
INSERT INTO `nj_userinfo` VALUES ('1829', '樊领希', '13643847351', '经开区加州第一城45号', '一汽马自达', 'CX-4', '2017-04-25 18:21:42');
INSERT INTO `nj_userinfo` VALUES ('1830', '樊领希', '13643847351', '经开区加州第一城45号', '一汽马自达', 'CX-4', '2017-04-25 18:22:25');
INSERT INTO `nj_userinfo` VALUES ('1831', '鲁发冉', '13213182820', '经开区加州第一城45号', '一汽马自达', '马自达6', '2017-04-25 18:24:43');
INSERT INTO `nj_userinfo` VALUES ('1832', '鲁发冉', '13213182820', '经开区加州第一城45号', '一汽马自达', '马自达6', '2017-04-25 18:25:20');
INSERT INTO `nj_userinfo` VALUES ('1833', '夏晓涛', '15038155620', '郑州中原区儿童福利院门口', '广汽传祺', 'GA6', '2017-04-25 18:33:01');
INSERT INTO `nj_userinfo` VALUES ('1834', '冯先生', '18039673575', '二七区大学中路51号院', '吉利汽车', '博越', '2017-04-25 18:36:51');
INSERT INTO `nj_userinfo` VALUES ('1835', '冯先生', '18039673575', '二七区大学中路51号院', '一汽大众', '速腾', '2017-04-25 18:38:59');
INSERT INTO `nj_userinfo` VALUES ('1836', '杨峥', '15238690527', '郑州市通泰路与商务内环交叉口河南移动', 'MG', 'ZS', '2017-04-25 18:47:24');
INSERT INTO `nj_userinfo` VALUES ('1837', '张华', '15003818777', '上街区中央名邸一单元', '华晨宝马', '宝马5系', '2017-04-25 19:02:07');
INSERT INTO `nj_userinfo` VALUES ('1838', '张华', '15003818777', '郑州市上街区中央名邸1703', '华晨宝马', '宝马5系新能源', '2017-04-25 19:04:26');
INSERT INTO `nj_userinfo` VALUES ('1839', '田卫中|', '15838261153', '郑州市汝河小区47号', '东风风光', '580', '2017-04-25 19:04:52');
INSERT INTO `nj_userinfo` VALUES ('1840', '田卫中|', '15838261153', '郑州市汝河小区47号', '东风风光', '580', '2017-04-25 19:05:51');
INSERT INTO `nj_userinfo` VALUES ('1841', '杨茹', '18625988781', '郑州市人民路河南中医药大学一附院', 'MG', 'ZS', '2017-04-25 19:11:41');
INSERT INTO `nj_userinfo` VALUES ('1842', '石永安', '18103963923', '西平县柏城商厂前台', '昌河汽车', 'Q35', '2017-04-25 19:11:49');
INSERT INTO `nj_userinfo` VALUES ('1843', '张东杰', '13623839367', '郑州上街区理想名家2号楼', '哈弗', 'H1', '2017-04-25 19:12:27');
INSERT INTO `nj_userinfo` VALUES ('1844', '李清梅', '13623839376', '郑州市上街区理想名家2号楼', '吉利汽车', '帝豪', '2017-04-25 19:13:42');
INSERT INTO `nj_userinfo` VALUES ('1845', '刘阳坤', '18840823006', '郑州市金水区升龙凤凰城D区1号楼3单元2114', '一汽大众', '高尔夫', '2017-04-25 19:35:14');
INSERT INTO `nj_userinfo` VALUES ('1846', '刘盼', '15838236757', '郑州市金水区升龙凤凰城D区1号楼3单元2114', '一汽大众', '高尔夫', '2017-04-25 19:37:48');
INSERT INTO `nj_userinfo` VALUES ('1847', '吴彪', '13429882525', '荥阳市高村乡', '哈弗', 'H6', '2017-04-25 19:40:02');
INSERT INTO `nj_userinfo` VALUES ('1848', '刘等等', '13938097659', '太康县民族骨科医院门口', '一汽大众', '高尔夫·嘉旅', '2017-04-25 19:40:41');
INSERT INTO `nj_userinfo` VALUES ('1849', '黄鹏举', '13530929595', '郑州市金水区升龙凤凰城D区1号楼3单元2114', '上海大众', '朗逸', '2017-04-25 19:41:04');
INSERT INTO `nj_userinfo` VALUES ('1850', '董亚宇', '15037001747', '商丘市夏邑县县府西路金虎家私北门', '一汽大众', '速腾', '2017-04-25 19:57:32');
INSERT INTO `nj_userinfo` VALUES ('1851', '辛文强', '15517122092', '郑州市二七区马寨镇树青医学院', '上海大众', '途观L', '2017-04-25 19:58:26');
INSERT INTO `nj_userinfo` VALUES ('1852', '宋北方', '13673695630', '升龙环球大厦A座1108', '斯柯达', '柯迪亚克', '2017-04-25 20:00:40');
INSERT INTO `nj_userinfo` VALUES ('1853', '雒巍巍', '13849002277', '荥阳市乔楼镇移动营业厅', '吉利汽车', '帝豪GS', '2017-04-25 20:05:15');
INSERT INTO `nj_userinfo` VALUES ('1854', '胡良俊', '13253694168', '郑州市金水区河南农业大学桃李园学生公寓', '东风风光', '580', '2017-04-25 20:05:28');
INSERT INTO `nj_userinfo` VALUES ('1855', '吴合义', '13523067872', '秦岭路，九龙城二期，天悦龙庭3号楼1208', '郑州日产', '帕拉丁', '2017-04-25 20:06:17');
INSERT INTO `nj_userinfo` VALUES ('1856', '赵燕', '15938764269', '管城区城东路135号院', '斯柯达', '昕动', '2017-04-25 20:10:41');
INSERT INTO `nj_userinfo` VALUES ('1857', '任凤彬', '15003863537', '金三全路渠东路', '比亚迪', '速锐', '2017-04-25 20:12:13');
INSERT INTO `nj_userinfo` VALUES ('1858', '任凤彬', '15003863537', '金水区三全路渠东路东岸尚景A区', '比亚迪', '速锐', '2017-04-25 20:13:26');
INSERT INTO `nj_userinfo` VALUES ('1859', '任凤彬', '15003863537', '金水区三全路渠东路东岸尚景A区', '比亚迪', '速锐', '2017-04-25 20:13:39');
INSERT INTO `nj_userinfo` VALUES ('1860', '田少伟', '13937148450', '大学南路荆湖社区3号院', '上汽通用别克', '英朗', '2017-04-25 20:22:00');
INSERT INTO `nj_userinfo` VALUES ('1861', '田少伟', '13937148450', '大学南路荆湖社区3号院', '上汽通用别克', '英朗', '2017-04-25 20:22:35');
INSERT INTO `nj_userinfo` VALUES ('1862', '马杰', '13592500826', '棉纺西路方圆经纬小区15号楼2单元709', '斯柯达', '柯迪亚克', '2017-04-25 20:26:43');
INSERT INTO `nj_userinfo` VALUES ('1863', '连雪', '13592500826', '棉纺西路方圆经纬小区15号楼2单元709', '斯柯达', '柯迪亚克', '2017-04-25 20:27:26');
INSERT INTO `nj_userinfo` VALUES ('1864', '任女士', '13460268999', '郑州市科学大道长春路与东青街1号楼311', '奔驰(进口)', 'C级(进口)', '2017-04-25 20:35:15');
INSERT INTO `nj_userinfo` VALUES ('1865', '孟新建', '15346560809', '郑州市东明路29号院4号楼3楼西户', '东风标致', '4008', '2017-04-25 20:40:19');
INSERT INTO `nj_userinfo` VALUES ('1866', '郭先生', '13103818129', '郑州', '广汽Jeep', '指南者', '2017-04-25 20:41:45');
INSERT INTO `nj_userinfo` VALUES ('1867', '牛朝飞', '18697315001', '郑州市郑东新区郑开大道大友路南熙福邸', '哈弗', 'H5', '2017-04-25 20:46:31');
INSERT INTO `nj_userinfo` VALUES ('1868', '杨峥', '18638243289', '郑州市陇海西路工人路郑州外国语中学', '广汽本田', '雅阁', '2017-04-25 21:06:23');
INSERT INTO `nj_userinfo` VALUES ('1869', '田爱敏', '18738301110', '农业东路如意东路蓝水岸小区', '一汽大众', '迈腾', '2017-04-25 21:10:58');
INSERT INTO `nj_userinfo` VALUES ('1870', '张五松', '13783640063', '郑州', '斯柯达', '柯迪亚克', '2017-04-25 21:17:34');
INSERT INTO `nj_userinfo` VALUES ('1871', '罗', '13939734498', '郑州的二七区碧云路与南屏路交叉口', '荣威', 'RX5', '2017-04-25 21:18:28');
INSERT INTO `nj_userinfo` VALUES ('1872', '肖电合', '15738509695', '二七区航海路连云路正商城三号院', '一汽大众', '捷达', '2017-04-25 21:19:11');
INSERT INTO `nj_userinfo` VALUES ('1873', '许翠玲', '15738509695', '二七区航海路连云路正商城三号院', '一汽大众', '捷达', '2017-04-25 21:20:01');
INSERT INTO `nj_userinfo` VALUES ('1874', '康飞', '18439805869', '经开区第八大街富士康', '宝骏', '宝骏730', '2017-04-25 21:21:09');
INSERT INTO `nj_userinfo` VALUES ('1875', '闫劲企', '15036634860', '新乡市原阳县师寨镇东中次村', '东风风光', '580', '2017-04-25 21:26:29');
INSERT INTO `nj_userinfo` VALUES ('1876', '陈闯闯', '13849941341', '洛阳市吉利区北辰村', '荣威', 'RX5', '2017-04-25 21:31:46');
INSERT INTO `nj_userinfo` VALUES ('1877', '丁树伟', '18037306693', '郑州市二七区中原东路96号', '一汽马自达', 'CX-4', '2017-04-25 21:34:27');
INSERT INTO `nj_userinfo` VALUES ('1878', '李岩伟', '13103858232', '新郑薛店欢喜地小区', '一汽-大众奥迪', '奥迪A3', '2017-04-25 21:38:25');
INSERT INTO `nj_userinfo` VALUES ('1879', '胡鹏子', '15235708046', '郑州市二七区淮河东路七彩鲜烘焙坊', '凯翼', 'X3', '2017-04-25 21:39:25');
INSERT INTO `nj_userinfo` VALUES ('1880', '胡鹏子', '15235708046', '郑州市二七区淮河东路七彩鲜烘焙坊', '凯翼', 'X3', '2017-04-25 21:39:55');
INSERT INTO `nj_userinfo` VALUES ('1881', '李威', '13653941066', '太康县人民医院', '一汽大众', '高尔夫', '2017-04-25 21:48:40');
INSERT INTO `nj_userinfo` VALUES ('1882', '刘琼', '18203620300', '中州大道航海路橡树玫瑰城', '众泰汽车', '大迈X7', '2017-04-25 21:51:05');
INSERT INTO `nj_userinfo` VALUES ('1883', '李治平', '18248964117', '长葛市盛合中央花园', '宝骏', '宝骏310', '2017-04-25 21:51:31');
INSERT INTO `nj_userinfo` VALUES ('1884', '刘沛锦', '15836852050', '河南省郑州万通', '梅赛德斯-AMG', 'G级AMG', '2017-04-25 21:51:37');
INSERT INTO `nj_userinfo` VALUES ('1885', '刘沛锦', '15836852050', '河南省郑州市，荥阳市索河路郑州万通汽修', '宾利', '欧陆', '2017-04-25 21:52:46');
INSERT INTO `nj_userinfo` VALUES ('1886', '杨晓培', '18134799973', '江山路', '上汽通用五菱', '五菱宏光', '2017-04-25 21:57:21');
INSERT INTO `nj_userinfo` VALUES ('1887', '杨晓培', '18134799973', '江山路', '上汽通用五菱', '五菱宏光', '2017-04-25 21:57:26');
INSERT INTO `nj_userinfo` VALUES ('1888', '杨晓培', '18134799973', '江山路', '上汽通用五菱', '五菱宏光', '2017-04-25 21:57:46');
INSERT INTO `nj_userinfo` VALUES ('1889', '杨晓培', '18134799973', '江山路', '上汽通用五菱', '五菱宏光', '2017-04-25 21:57:49');
INSERT INTO `nj_userinfo` VALUES ('1890', '杨晓培', '18134799973', '江山路', '上汽通用五菱', '五菱宏光', '2017-04-25 22:00:04');
INSERT INTO `nj_userinfo` VALUES ('1891', '李俊照', '13526604383', '郑州市管城回族区实验小学王芳老师', '上汽通用别克', '别克GL8', '2017-04-25 22:00:24');
INSERT INTO `nj_userinfo` VALUES ('1892', '杨海州', '13613717179', '幸福路隆福国际5号楼', '奥迪(进口)', '奥迪A8', '2017-04-25 22:01:38');
INSERT INTO `nj_userinfo` VALUES ('1893', '张小旭', '15824881186', '郑汴路', '广汽丰田', '雷凌', '2017-04-25 22:08:28');
INSERT INTO `nj_userinfo` VALUES ('1894', '宋冬冬', '13781428588', '商丘市民权县双塔乡冬冬手机城', '北京奔驰', 'E级', '2017-04-25 22:08:57');
INSERT INTO `nj_userinfo` VALUES ('1895', '李书有', '13838008488', '巩义市', '上汽通用别克', '威朗', '2017-04-25 22:09:27');
INSERT INTO `nj_userinfo` VALUES ('1896', '丁树伟', '18037306693', '郑州市二七区中原东路96号', '一汽马自达', 'CX-4', '2017-04-25 22:14:33');
INSERT INTO `nj_userinfo` VALUES ('1897', '刘卿', '17703843603', '郑州市管城区航海东路新蓝钻A区8号楼1单元1502', '一汽大众', '速腾', '2017-04-25 22:14:37');
INSERT INTO `nj_userinfo` VALUES ('1898', '芮茂铨', '13513805001', '航海路第三大街东100米路北润佰佳名车专修', '一汽丰田', '威驰', '2017-04-25 22:16:09');
INSERT INTO `nj_userinfo` VALUES ('1899', '吴浩楠', '15638252710', '登封市少林路嵩汉花园', '上汽通用雪佛兰', '赛欧', '2017-04-25 22:17:04');
INSERT INTO `nj_userinfo` VALUES ('1900', '朱振洲', '13333836250', '郑州市二七区二道街185号', '凯迪拉克', 'XTS', '2017-04-25 22:18:04');
INSERT INTO `nj_userinfo` VALUES ('1901', '王', '15893963087', '郑州市金水区', '长安福特', '锐界', '2017-04-25 22:18:41');
INSERT INTO `nj_userinfo` VALUES ('1902', '张海潮', '15036103520', '新郑市城关乡张庄', '东南汽车', 'DX3', '2017-04-25 22:25:48');
INSERT INTO `nj_userinfo` VALUES ('1903', '李宇辉', '13838206698', '金水路东明路交叉口河南中医学院', '上汽通用别克', '英朗', '2017-04-25 22:30:02');
INSERT INTO `nj_userinfo` VALUES ('1904', '张金月', '18203994025', '新郑市城关乡张庄', '上汽通用别克', '英朗', '2017-04-25 22:30:17');
INSERT INTO `nj_userinfo` VALUES ('1905', '阮金凯', '15736792741', '中原区中原路伏牛路交叉口中国平安三楼303', '沃尔沃(进口)', 'V90', '2017-04-25 22:30:32');
INSERT INTO `nj_userinfo` VALUES ('1906', '冯浩然', '17729759513', '新郑市陶文路金色家园', '比亚迪', '唐', '2017-04-25 22:32:07');
INSERT INTO `nj_userinfo` VALUES ('1907', '陈燕青', '13384005619', '郑州航空港区豫康南门', '荣威', '360', '2017-04-25 22:33:28');
INSERT INTO `nj_userinfo` VALUES ('1908', '陈瑞', '13298339130', '郑州市花园路国基路局根莫意', '奥迪(进口)', '奥迪S3', '2017-04-25 22:36:04');
INSERT INTO `nj_userinfo` VALUES ('1909', '徐子庸', '15238393370', '郑州市陇海西路188号锦绣华北12号楼1单元', '广汽丰田', '汉兰达', '2017-04-25 22:36:12');
INSERT INTO `nj_userinfo` VALUES ('1910', '陈瑞', '13298339130', '郑州市花园路国基路局根莫意', '奥迪(进口)', '奥迪S3', '2017-04-25 22:36:22');
INSERT INTO `nj_userinfo` VALUES ('1911', '邵陆军', '13939089368', '商都路31号河南国家粮食储备库', '东风雷诺', '科雷傲', '2017-04-25 22:38:40');
INSERT INTO `nj_userinfo` VALUES ('1912', '吴红伟', '15838691210', '郑州万通汽修学校', '宝骏', '宝骏730', '2017-04-25 22:39:46');
INSERT INTO `nj_userinfo` VALUES ('1913', '许永方', '13346682723', '郑州市管城回族区紫东路与紫辰路交叉口打电话', '吉利汽车', '远景', '2017-04-25 22:41:16');
INSERT INTO `nj_userinfo` VALUES ('1914', '黄振东', '13223078692', '郑州市新密市苟堂镇九龙咀村黄家领', '宝骏', '宝骏730', '2017-04-25 22:46:10');
INSERT INTO `nj_userinfo` VALUES ('1915', '伏修磊', '18037570750', '新密刘寨镇银基冰雪世界', '奇瑞汽车', '瑞虎3', '2017-04-25 22:48:54');
INSERT INTO `nj_userinfo` VALUES ('1916', '武振东', '13137739113', '中牟县九龙镇谢庄村', '长安汽车', 'CS75', '2017-04-25 22:49:14');
INSERT INTO `nj_userinfo` VALUES ('1917', '续立伟', '13017663768', '管城区城东南与航海路交差口向南300米路西一建公司门面房联通', '上海大众', '朗逸', '2017-04-25 22:50:39');
INSERT INTO `nj_userinfo` VALUES ('1918', '冯先生', '13703712900', '郑东新区祥盛街59号中豪汇景湾车位中心办公室', '福建奔驰', '威霆', '2017-04-25 23:02:44');
INSERT INTO `nj_userinfo` VALUES ('1919', '樊盼盼', '15617308696', '郑州经开区经北二路第九大街富士康科技集团', '奇瑞汽车', '艾瑞泽5', '2017-04-25 23:03:12');
INSERT INTO `nj_userinfo` VALUES ('1920', '张道莲', '13838052680', '郑州花园路北140-1号', '广汽本田', '雅阁', '2017-04-25 23:03:15');
INSERT INTO `nj_userinfo` VALUES ('1921', '冯先生', '13703712900', '郑东新区祥盛街59号中豪汇景湾车位中心办公室', '福建奔驰', '威霆', '2017-04-25 23:03:45');
INSERT INTO `nj_userinfo` VALUES ('1922', '冯先生', '13703712900', '郑东新区祥盛街59号中豪汇景湾车位中心办公室', '福建奔驰', '威霆', '2017-04-25 23:04:42');
INSERT INTO `nj_userinfo` VALUES ('1923', '王彬', '13949050359', '郑州市花园路140-1号', '哈弗', 'H9', '2017-04-25 23:04:47');
INSERT INTO `nj_userinfo` VALUES ('1924', '冯先生', '13703712900', '郑东新区祥盛街59号中豪汇景湾车位中心办公室', '福建奔驰', '威霆', '2017-04-25 23:04:51');
INSERT INTO `nj_userinfo` VALUES ('1925', '贾钢', '13598014032', '郑州市高新区银屏路16号', '上海大众', '朗行', '2017-04-25 23:06:38');
INSERT INTO `nj_userinfo` VALUES ('1926', '贾钢', '13598014032', '郑州市高新区银屏路16号', '上海大众', '朗行', '2017-04-25 23:07:40');
INSERT INTO `nj_userinfo` VALUES ('1927', '邵元武', '13073701980', '航海路与城东南路交差口向南300米路西一建公司门面房联通', '上海大众', '朗逸', '2017-04-25 23:08:25');
INSERT INTO `nj_userinfo` VALUES ('1928', '张道莲', '13838052680', '郑州市花园路140-1号', '广汽本田', '雅阁', '2017-04-25 23:09:36');
INSERT INTO `nj_userinfo` VALUES ('1929', '屈军建', '13603456746', '郑州二七区侯寨黄龙岗', '观致汽车', '观致5', '2017-04-25 23:10:48');
INSERT INTO `nj_userinfo` VALUES ('1930', '屈军建', '13603456746', '郑州二七区侯寨黄龙岗', '观致汽车', '观致5', '2017-04-25 23:10:59');
INSERT INTO `nj_userinfo` VALUES ('1931', '白晓飞', '13460330585', '新郑市中华路新郑财政局', '一汽丰田', '威驰', '2017-04-25 23:16:04');
INSERT INTO `nj_userinfo` VALUES ('1932', '苏伟超', '13783544868', '群英路22号单元一楼东户', '哈弗', 'H2', '2017-04-25 23:19:36');
INSERT INTO `nj_userinfo` VALUES ('1933', '甘', '17600720093', '金水区人民法院办公室', '华晨宝马', '宝马3系', '2017-04-25 23:24:06');
INSERT INTO `nj_userinfo` VALUES ('1934', '孙毅', '15838393758', '郑州市威尼斯水城三期商业街', '北京奔驰', 'GLA', '2017-04-25 23:24:55');
INSERT INTO `nj_userinfo` VALUES ('1935', '尹春丽', '15803827880', 'suv', '吉利汽车', '帝豪GL', '2017-04-25 23:27:03');
INSERT INTO `nj_userinfo` VALUES ('1936', '孙毅', '15838393758', '郑州市威尼斯水城三期商业街', '路虎', '发现神行', '2017-04-25 23:28:40');
INSERT INTO `nj_userinfo` VALUES ('1937', '穆亚珍', '15039002827', '航空港区薛店南街', '东南汽车', 'DX3', '2017-04-25 23:29:29');
INSERT INTO `nj_userinfo` VALUES ('1938', '周丰', '13523022113', '郑州市金水区花园路28号院2号楼4号', '荣威', 'RX5', '2017-04-25 23:31:32');
INSERT INTO `nj_userinfo` VALUES ('1939', '于海路', '18237881041', '郑州市金水路8号美莱医院', '一汽大众', '速腾', '2017-04-25 23:32:23');
INSERT INTO `nj_userinfo` VALUES ('1940', '李红霞', '18937183512', '金水区黄河路25号经津大厦9层64号', '一汽-大众奥迪', '奥迪Q3', '2017-04-25 23:35:25');
INSERT INTO `nj_userinfo` VALUES ('1941', '王显示', '15838122117', '大学南路泰宏建业国际城12号院19号楼2单元30楼', '比亚迪', '宋', '2017-04-25 23:36:17');
INSERT INTO `nj_userinfo` VALUES ('1942', '丁江龙', '15713699121', '郑州市新郑市中华北路郑州工业应用技术学院', '哈弗', 'H9', '2017-04-25 23:49:56');
INSERT INTO `nj_userinfo` VALUES ('1943', '丁江龙', '15713699121', '郑州市新郑市中华北路郑州工业应用技术学院', '哈弗', 'H9', '2017-04-25 23:50:16');
INSERT INTO `nj_userinfo` VALUES ('1944', '吴强', '18638288119', '嵩山路街道升龙城8号院七号楼1612号', '奥迪(进口)', '奥迪A8', '2017-04-25 23:57:07');
INSERT INTO `nj_userinfo` VALUES ('1945', '李瑞环', '13598096588', '荥阳市王村镇大洋流体自动化仪表厂', '吉利汽车', '博越', '2017-04-26 00:10:22');
INSERT INTO `nj_userinfo` VALUES ('1946', '李瑞环', '13598096588', '荥阳市大流体自动化仪表厂', '吉利汽车', '博越', '2017-04-26 00:12:15');
INSERT INTO `nj_userinfo` VALUES ('1947', '徐海永', '17637279418', '中牟县青年路', '宝骏', '宝骏510', '2017-04-26 03:13:20');
INSERT INTO `nj_userinfo` VALUES ('1948', '袁帅', '18614970330', '河南省郑州市嵩山路航海路绿城花园4号楼3单元8号', '宝骏', '宝骏510', '2017-04-26 07:04:18');
INSERT INTO `nj_userinfo` VALUES ('1949', '朱磊', '18530068261', '二七区郑飞小区73号楼3单元', '哈弗', 'H6', '2017-04-26 07:15:33');
INSERT INTO `nj_userinfo` VALUES ('1950', '张俊杰', '13598826723', '郑州市城东路22号院1单元44号', '广汽Jeep', '指南者', '2017-04-26 07:23:20');
INSERT INTO `nj_userinfo` VALUES ('1951', '张俊杰', '13598826723', '郑州市城东路22号院1单元44号', '广汽Jeep', '指南者', '2017-04-26 07:26:15');
INSERT INTO `nj_userinfo` VALUES ('1952', '李先生', '13323737005', '郑州市高新区北四环双桥办事处', '吉利汽车', '帝豪', '2017-04-26 07:26:34');
INSERT INTO `nj_userinfo` VALUES ('1953', '李先生', '13323737005', '郑州市高新区北四环双桥办事处', '吉利汽车', '帝豪', '2017-04-26 07:26:49');
INSERT INTO `nj_userinfo` VALUES ('1954', '周春磊', '18838113412', '郑州市中原区郑内小区', '一汽吉林', '森雅R7', '2017-04-26 07:27:55');
INSERT INTO `nj_userinfo` VALUES ('1955', '邢雷', '15903656400', '郑东新区白庄街与十里铺路交叉口大邢屯社区 9号楼2单元西户', '一汽马自达', 'CX-4', '2017-04-26 07:32:36');
INSERT INTO `nj_userinfo` VALUES ('1956', null, null, null, null, null, '2017-04-26 07:32:46');
INSERT INTO `nj_userinfo` VALUES ('1957', '石意', '13123724458', '郑州万通汽车学校', '保时捷', 'Cayman', '2017-04-26 07:34:31');
INSERT INTO `nj_userinfo` VALUES ('1958', '陈雪', '13733175526', '郑东新区白庄街与十里铺路交叉口大邢屯社区 9号楼2单元西户', '一汽马自达', 'CX-4', '2017-04-26 07:34:47');
INSERT INTO `nj_userinfo` VALUES ('1959', '石意', '13123724458', '郑州万通汽车学校', '保时捷', 'Cayman', '2017-04-26 07:35:55');
INSERT INTO `nj_userinfo` VALUES ('1960', '李玉林', '15617579889', '郑州市金水区玉凤路发展国际706', '一汽-大众奥迪', '奥迪A3', '2017-04-26 07:37:05');
INSERT INTO `nj_userinfo` VALUES ('1961', '赵浩智', '13623789591', '郑州市管城区十八里河高速出世贸汽车城口A区7号', '东风风神', 'AX7', '2017-04-26 07:42:57');
INSERT INTO `nj_userinfo` VALUES ('1962', '王立坤', '13629845003', '郑州市管城区通站路铁道安宁家园一单元1603', '广汽Jeep', '自由光', '2017-04-26 07:53:42');
INSERT INTO `nj_userinfo` VALUES ('1963', '郭德强', '13643811456', '河南省郑州市陈寨市场3号门口', '广汽本田', '缤智', '2017-04-26 08:02:57');
INSERT INTO `nj_userinfo` VALUES ('1964', '郭德强', '13643811456', '河南省郑州市陈寨市场3号门口', '广汽本田', '缤智', '2017-04-26 08:03:46');
INSERT INTO `nj_userinfo` VALUES ('1965', '梅昊东', '15803821922', '中牟县刘集2中', '华晨宝马', '宝马5系', '2017-04-26 08:05:32');
INSERT INTO `nj_userinfo` VALUES ('1966', '韩鹏程', '18137848889', '河南省郑州市东风南路永平路卢浮宫馆一期', '英菲尼迪(进口)', 'QX80', '2017-04-26 08:18:54');
INSERT INTO `nj_userinfo` VALUES ('1967', '丁颖', '13839998620', '开封市龙亭区新都汇帝庭', '上海大众', '朗逸', '2017-04-26 08:20:56');
INSERT INTO `nj_userinfo` VALUES ('1968', '武元行', '13733867858', '郑州市南关街384号五号楼四单元7楼南户', 'DS', '6', '2017-04-26 08:22:12');
INSERT INTO `nj_userinfo` VALUES ('1969', '李亚鹏', '15890673033', '郑州市货站街148号铁道紫荆苑4单元2楼', '东风风度', 'MX5', '2017-04-26 08:29:57');
INSERT INTO `nj_userinfo` VALUES ('1970', '王幸科', '18137122121', '登封市耿庄村', '东风风光', '580', '2017-04-26 08:33:17');
INSERT INTO `nj_userinfo` VALUES ('1971', '张贝', '18348426566', '郑州市管城区永平路西刘街鑫鑫花园东苑2906浪鲸卫浴', '哈弗', 'H6', '2017-04-26 08:34:50');
INSERT INTO `nj_userinfo` VALUES ('1972', '王明伟', '18037128001', '郑州市金水区花园新村小区，17栋', '吉利汽车', '远景', '2017-04-26 08:43:21');
INSERT INTO `nj_userinfo` VALUES ('1973', '刘百顺', '13598807795', '经三路广电南路格林融熙2816', '奔驰(进口)', 'R级', '2017-04-26 08:51:13');
INSERT INTO `nj_userinfo` VALUES ('1974', '许昭苏', '15225123801', '郑东新区姚桥乡磨李小区', '东风雷诺', '科雷傲', '2017-04-26 08:51:25');
INSERT INTO `nj_userinfo` VALUES ('1975', '许昭苏', '15225123801', '郑东新区姚桥乡磨李小区', '东风雷诺', '科雷傲', '2017-04-26 08:52:07');
INSERT INTO `nj_userinfo` VALUES ('1976', '许昭苏', '15225123801', '郑东新区姚桥乡磨李小区', '东风雷诺', '科雷傲', '2017-04-26 08:52:36');
INSERT INTO `nj_userinfo` VALUES ('1977', '王侑杰', '18539478386', '郑州市管城回族区朝凤路远大理想城54号楼', '玛莎拉蒂', '总裁', '2017-04-26 08:58:54');
INSERT INTO `nj_userinfo` VALUES ('1978', null, null, null, null, null, '2017-04-26 08:59:04');
INSERT INTO `nj_userinfo` VALUES ('1979', '刘全林', '18539929487', '郑州市管城回族区朝凤路远大理想城54号楼', '宝马(进口)', '宝马M', '2017-04-26 09:00:20');
INSERT INTO `nj_userinfo` VALUES ('1980', '罗保军', '15138237103', '金水区中州大道金水路豫海奥迪4S店', '一汽大众', '捷达', '2017-04-26 09:15:31');
INSERT INTO `nj_userinfo` VALUES ('1981', '孙晨', '13014647700', '郑汴路和玉凤路交叉口 北100米 路西 伟业芝华室2号楼160024', '上汽通用别克', '君威', '2017-04-26 09:24:26');
INSERT INTO `nj_userinfo` VALUES ('1982', '王小辉', '18803971741', '农业路政七街北二十米，豫新公寓五号楼一单元一楼东', '长安汽车', 'CX20', '2017-04-26 09:31:25');
INSERT INTO `nj_userinfo` VALUES ('1983', '宣超彦', '15378787082', '新郑市八千乡', '长安商用', 'CX70', '2017-04-26 09:43:04');
INSERT INTO `nj_userinfo` VALUES ('1984', '杜春连', '18638735898', '河南省巩义市小关镇口头村八组', '东风风行', '景逸X5', '2017-04-26 09:44:50');
INSERT INTO `nj_userinfo` VALUES ('1985', '鲁', '15538370343', '郑州市中原区郑州桐柏路煤仓北街交叉口工程机械厂家属院16号楼', '哈弗', 'H6', '2017-04-26 09:55:24');
INSERT INTO `nj_userinfo` VALUES ('1986', '王勇强', '15537117932', '郑州市郑东新区商务内环西六街丹尼斯2天地', '江淮', '瑞风M3', '2017-04-26 09:56:06');
INSERT INTO `nj_userinfo` VALUES ('1987', '余方师', '13643832852', '郑州市经开区九大街与经北二路交叉口海关西闸口', '上汽通用别克', '英朗', '2017-04-26 09:57:13');
INSERT INTO `nj_userinfo` VALUES ('1988', '刘学锋', '13526889765', '郑州市金水区八一路一号313房', '一汽丰田', '威驰', '2017-04-26 10:03:35');
INSERT INTO `nj_userinfo` VALUES ('1989', '王晓东', '13643825111', '荥阳市塔山路与大海寺路交叉华辰阳光公寓', '华晨宝马', '宝马5系', '2017-04-26 10:11:59');
INSERT INTO `nj_userinfo` VALUES ('1990', '王方方', '15037110111', '荥阳市塔山路与大海寺路交叉华辰阳光公寓', '东风本田', '宝马5系', '2017-04-26 10:13:13');
INSERT INTO `nj_userinfo` VALUES ('1991', '史桂胜', '15038168406', '郑州二七区漓江路97号联合花园10号楼1单元', '上海大众', '桑塔纳', '2017-04-26 10:21:18');
INSERT INTO `nj_userinfo` VALUES ('1992', '许伟彪', '15603958276', '河南大学龙子湖校区建没管委会', '上海大众', '朗逸', '2017-04-26 10:31:59');
INSERT INTO `nj_userinfo` VALUES ('1993', '屠长理', '17803821272', '西四环梧桐街交叉口', '上海大众', '途昂', '2017-04-26 10:38:47');
INSERT INTO `nj_userinfo` VALUES ('1994', '刘延博', '18530967053', '郑州市二七区康复后街西工房社区26号楼28室', '哈弗', 'H6', '2017-04-26 10:43:10');
INSERT INTO `nj_userinfo` VALUES ('1995', '孙睿琦', '13803859307', '航海路未来路启航大厦一楼七彩生活俱乐部', '哈弗', 'H7', '2017-04-26 10:44:25');
INSERT INTO `nj_userinfo` VALUES ('1996', '陈宪伟', '13783520361', '郑州市桐柏南路238号凯旋门A2706', '长安汽车', '逸动', '2017-04-26 10:46:57');
INSERT INTO `nj_userinfo` VALUES ('1997', '郅守权', '13700857614', '巩义市食品药品监督管理局', '一汽大众', '宝来', '2017-04-26 10:55:55');
INSERT INTO `nj_userinfo` VALUES ('1998', '郅守权', '13700857614', '巩义市食品药品监督管理局', '一汽大众', '宝来', '2017-04-26 10:57:12');
INSERT INTO `nj_userinfo` VALUES ('1999', '陈永辉', '13811823009', '河南省委党校', '广汽丰田', '汉兰达', '2017-04-26 11:01:53');
INSERT INTO `nj_userinfo` VALUES ('2000', '18638273236', '18638273236', '郑州市金水区北三环电厂路', '一汽吉林', '森雅R7', '2017-04-26 11:03:29');
INSERT INTO `nj_userinfo` VALUES ('2001', '孙朋飞', '13663812068', '中牟县星城国际东苑2-2-806', '长安汽车', 'CS95', '2017-04-26 11:07:02');
INSERT INTO `nj_userinfo` VALUES ('2002', '刘彦丽', '15890646850', '郑东新区姚桥乡时更小区', '北京现代', '朗动', '2017-04-26 11:08:14');
INSERT INTO `nj_userinfo` VALUES ('2003', '白马桩', '13903828715', '郑东新区姚桥乡时更小区', '北京现代', '领动', '2017-04-26 11:11:53');
INSERT INTO `nj_userinfo` VALUES ('2004', '蔡尚华', '13607674275', '二七区长江路行云路芙蓉花苑6号楼一单元401室', '长安汽车', 'CS35', '2017-04-26 11:21:18');
INSERT INTO `nj_userinfo` VALUES ('2005', '蔡尚华', '13607674275', '二七区长江路行云路芙蓉花苑6号楼一单元401室', '长安汽车', 'CS35', '2017-04-26 11:21:49');
INSERT INTO `nj_userinfo` VALUES ('2006', '李怀亮', '13608670159', '登封市颖颖河路嵩玉花园', '铃木(进口)', '速翼特', '2017-04-26 11:25:20');
INSERT INTO `nj_userinfo` VALUES ('2007', '金岩', '13213036693', '郑州市花园路纬四路交叉口正道花园百货一楼', '东风悦达起亚', 'KX3', '2017-04-26 11:31:19');
INSERT INTO `nj_userinfo` VALUES ('2008', '王先生', '18737008968', '金水区花园路邵庄佳帆阳光水岸10号楼3单元1楼', '一汽大众', '迈腾', '2017-04-26 11:51:13');
INSERT INTO `nj_userinfo` VALUES ('2009', '郭利利', '18638714886', '金水区文劳路园田路文雅小区14号楼三楼中户', 'MG', '锐腾', '2017-04-26 11:53:06');
INSERT INTO `nj_userinfo` VALUES ('2010', '郭先生', '18236773890', '金水区文劳路园田路文雅小区14号楼3楼中户', '英菲尼迪', 'Q50L', '2017-04-26 11:57:39');
INSERT INTO `nj_userinfo` VALUES ('2011', '陈经理', '15237888558', '河南开封杞县南关金水湾温泉宾馆', '东风本田', '思域', '2017-04-26 12:00:59');
INSERT INTO `nj_userinfo` VALUES ('2012', '平涛', '15136280805', '荥阳市京城办君临天下9号楼1单元1001', '上海大众', '朗逸', '2017-04-26 12:01:32');
INSERT INTO `nj_userinfo` VALUES ('2013', '平涛', '15136280805', '荥阳市京城办君临天下9号楼1单元1001', '上海大众', '朗逸', '2017-04-26 12:02:17');
INSERT INTO `nj_userinfo` VALUES ('2014', '陈女士', '13526866241', '金水区文劳路园田路文雅小区14号楼三楼中户', '沃尔沃', 'S60L', '2017-04-26 12:03:38');
INSERT INTO `nj_userinfo` VALUES ('2015', '李佳恒', '17737512881', '二七区京广路张魏寨锦祥小区附一号院', '吉利汽车', '博越', '2017-04-26 12:07:48');
INSERT INTO `nj_userinfo` VALUES ('2016', '李佳恒', '17737512881', '二七区京广路张魏寨锦祥小区附一号院', '吉利汽车', '博越', '2017-04-26 12:08:14');
INSERT INTO `nj_userinfo` VALUES ('2017', '赵博', '17760796778', '郑州市金水区宏明路渠东路大观音寺圆融文化中心二楼', '华晨宝马', '宝马X1', '2017-04-26 12:09:29');
INSERT INTO `nj_userinfo` VALUES ('2018', '李佳恒', '17737512881', '二七区京广路张魏寨锦祥小区', '广汽丰田', '汉兰达', '2017-04-26 12:10:00');
INSERT INTO `nj_userinfo` VALUES ('2019', '刘千方', '18103822208', '美景鸿城一期二号楼一单元3302', '一汽丰田', '卡罗拉', '2017-04-26 12:19:16');
INSERT INTO `nj_userinfo` VALUES ('2020', '翟好强', '18530012457', '郑州东区白沙镇康庄村郑州天瑞水泥厂', '宝骏', '宝骏510', '2017-04-26 12:20:11');
INSERT INTO `nj_userinfo` VALUES ('2021', '杜韦唯', '15324832655', '惠济区绿源路8号中原水产物流港', '奇瑞汽车', '艾瑞泽5', '2017-04-26 12:40:24');
INSERT INTO `nj_userinfo` VALUES ('2022', '王鹏辉', '17703904600', '汝州市梨园新区71栋', '东风风行', 'S500', '2017-04-26 12:40:48');
INSERT INTO `nj_userinfo` VALUES ('2023', '董海江', '18939256363', '河南省郑州市二七区合作路鑫苑景园10号楼', '一汽-大众奥迪', '奥迪A4L ', '2017-04-26 12:42:03');
INSERT INTO `nj_userinfo` VALUES ('2024', '冯彦昌', '15518000691', '周口市扶沟县北关阳光花园', '荣威', 'RX5', '2017-04-26 12:43:34');
INSERT INTO `nj_userinfo` VALUES ('2025', '苏航', '18683866657', '郑州中原区万达广场b座2624室', '一汽-大众奥迪', '奥迪A3', '2017-04-26 12:43:36');
INSERT INTO `nj_userinfo` VALUES ('2026', '张保巨', '13838108513', '新郑市龙湖镇柏树刘村', '广汽Jeep', '指南者', '2017-04-26 12:48:13');
INSERT INTO `nj_userinfo` VALUES ('2027', '周国强', '17303853590', '马寨王庄小学南300米', '北汽威旺', 'S50', '2017-04-26 12:48:26');
INSERT INTO `nj_userinfo` VALUES ('2028', '周佳培', '13526432108', '古荥镇政府', '长安福特', '蒙迪欧', '2017-04-26 12:51:47');
INSERT INTO `nj_userinfo` VALUES ('2029', '杨煜辉', '18037173936', '花园路农业路锦绣正弘1号楼5单元', '东风本田', '思铂睿', '2017-04-26 12:53:05');
INSERT INTO `nj_userinfo` VALUES ('2030', '周佳培', '13526432108', '古荥镇政府', '长安福特', '蒙迪欧', '2017-04-26 12:53:47');
INSERT INTO `nj_userinfo` VALUES ('2031', '牛夫生', '13838221184', '登封市告成镇告成村', '东风风行', 'CM7', '2017-04-26 13:03:27');
INSERT INTO `nj_userinfo` VALUES ('2032', '刘长征', '13633900445', '河南省辉县市峪河镇孔庄村', '宝马(进口)', '宝马M', '2017-04-26 13:10:42');
INSERT INTO `nj_userinfo` VALUES ('2033', '刘长征', '13633900445', '河南省辉县市峪河镇孔庄村', '宝马(进口)', '宝马M', '2017-04-26 13:11:51');
INSERT INTO `nj_userinfo` VALUES ('2034', '侯先生', '15538038893', '花园路东风路蓝堡湾1期7号楼', '奔驰(进口)', 'A级', '2017-04-26 13:13:03');
INSERT INTO `nj_userinfo` VALUES ('2035', '刘长征', '13633900445', '河南省辉县市峪河镇孔庄村', '宝马(进口)', '宝马M', '2017-04-26 13:13:34');
INSERT INTO `nj_userinfo` VALUES ('2036', '侯先生', '15538038893', '花园路东风路蓝堡湾1期7号楼', '奔驰(进口)', 'A级', '2017-04-26 13:13:59');
INSERT INTO `nj_userinfo` VALUES ('2037', '马先生', '18838950970', '花园路东风路蓝堡湾1期7号楼', '奥迪(进口)', '奥迪A4(进口)', '2017-04-26 13:16:48');
INSERT INTO `nj_userinfo` VALUES ('2038', '袁艺蕊', '15803817356', '经五路26号', '广汽Jeep', '指南者', '2017-04-26 13:22:56');
INSERT INTO `nj_userinfo` VALUES ('2039', '王玉锋', '18530852224', '21世纪社区湖适3号楼2205', '吉利汽车', '帝豪', '2017-04-26 13:22:59');
INSERT INTO `nj_userinfo` VALUES ('2040', '刘帅琛', '13838065302', '经五路26号', '广汽Jeep', '指南者', '2017-04-26 13:24:10');
INSERT INTO `nj_userinfo` VALUES ('2041', '刘杰', '15238380885', '华丰灯世界D区北楼801', '一汽大众', '宝来', '2017-04-26 13:25:32');
INSERT INTO `nj_userinfo` VALUES ('2042', '武梦凯', '13938598705', '南三环紫东钢铁企业园10号楼1055室', '哈弗', 'H6 Coupe', '2017-04-26 13:29:43');
INSERT INTO `nj_userinfo` VALUES ('2043', '陈朝阳', '17320198600', '新郑市大吴楼3巷23号', '上海大众', '帕萨特', '2017-04-26 13:37:59');
INSERT INTO `nj_userinfo` VALUES ('2044', '苏木容', '18838932616', '郑东花卉c区东排十号', '东风日产', '轩逸', '2017-04-26 13:42:13');
INSERT INTO `nj_userinfo` VALUES ('2045', '刘庆龙', '13225204028', '郑州市管城区长江东路岗东路阳光城3号院', '哈弗', 'H6', '2017-04-26 13:46:29');
INSERT INTO `nj_userinfo` VALUES ('2046', '刘天玉', '13213147987', '高新区863产业园9号楼419', '长安商用', '欧尚', '2017-04-26 13:50:15');
INSERT INTO `nj_userinfo` VALUES ('2047', '徐冰杰', '13838569205', '郑州市金水区花园路59号21世纪社区楼中楼26号', '奥迪(进口)', '奥迪A1', '2017-04-26 13:53:07');
INSERT INTO `nj_userinfo` VALUES ('2048', '刁翔羽', '18603833798', '郑州市金水区花园路59号楼中楼26号', '宝马(进口)', '宝马1系(进口)', '2017-04-26 14:00:58');
INSERT INTO `nj_userinfo` VALUES ('2049', '刁景林', '13703711187', '郑州市金水区花园路59号', '奔驰(进口)', 'GLC(进口)', '2017-04-26 14:03:27');
INSERT INTO `nj_userinfo` VALUES ('2050', '郭进', '13883023575', '洛阳市老城区道南路 龙城嘉园2期东门', '众泰汽车', 'Z700', '2017-04-26 14:13:13');
INSERT INTO `nj_userinfo` VALUES ('2051', '赵欢', '18638309166', '新乡市原阳县官厂乡官厂村', '东风风神', 'AX7', '2017-04-26 14:21:30');
INSERT INTO `nj_userinfo` VALUES ('2052', '王先生', '18539009881', '郑州市金水路与玉凤路交叉口', '上汽通用别克', '君威', '2017-04-26 14:22:48');
INSERT INTO `nj_userinfo` VALUES ('2053', '孟德新', '13693731038', '郑州市郑东新区祭城镇庙张北院烟酒百货批零', '上汽通用别克', '君威', '2017-04-26 15:09:19');
INSERT INTO `nj_userinfo` VALUES ('2054', '乔亚利', '15093258632', '大隗镇桃园村', '一汽吉林', '森雅R7', '2017-04-26 15:23:28');
INSERT INTO `nj_userinfo` VALUES ('2055', null, null, null, null, null, '2017-04-26 15:23:38');
INSERT INTO `nj_userinfo` VALUES ('2056', '曹', '18137511562', '上海。浦东。新厂镇。蒋桥村944号', '吉利汽车', '博越', '2017-04-26 15:27:02');
INSERT INTO `nj_userinfo` VALUES ('2057', '秦', '18625502293', '郑州金水区经三路农科路金城国际A座801', '东风悦达起亚', 'K2', '2017-04-26 15:29:51');
INSERT INTO `nj_userinfo` VALUES ('2058', '秦', '18625502293', '郑州金水区经三路农科路金城国际A座801', '东风悦达起亚', 'K2', '2017-04-26 15:29:58');
INSERT INTO `nj_userinfo` VALUES ('2059', '张锋', '15738376279', '郑州管城区', '上汽通用雪佛兰', '创酷', '2017-04-26 15:41:44');
INSERT INTO `nj_userinfo` VALUES ('2060', '史玉东', '15824614420', '河南省郑州市中原区枫杨办事处科学大道一百号', '一汽奔腾', 'X40', '2017-04-26 15:47:44');
INSERT INTO `nj_userinfo` VALUES ('2061', '罗航', '18837156937', '河南省郑州市中原区枫杨办事处科学大道100号', '一汽奔腾', 'X40', '2017-04-26 15:55:25');
INSERT INTO `nj_userinfo` VALUES ('2062', '司军亮', '13838328419', '新郑市龙湖镇双湖大道与创新路交叉口向南300米路西龙湖特警队', '广汽传祺', 'GS8', '2017-04-26 15:55:27');
INSERT INTO `nj_userinfo` VALUES ('2063', '范帅', '13526745118', '新郑市炎黄商贸城三号楼一单元302', '广汽丰田', '雷凌', '2017-04-26 15:58:19');
INSERT INTO `nj_userinfo` VALUES ('2064', '王磊', '18224518095', '郑东新区普惠路第一幼儿园', '广汽丰田', '雷凌', '2017-04-26 16:03:49');
INSERT INTO `nj_userinfo` VALUES ('2065', '封亚杰', '13663838095', '郑东新区普惠路第一幼儿园', '吉利汽车', '帝豪GL', '2017-04-26 16:05:49');
INSERT INTO `nj_userinfo` VALUES ('2066', '王凯', '18703602941', '郑州市中牟县陇海路中段升华广告', '一汽-大众奥迪', '奥迪A6L', '2017-04-26 16:15:39');
INSERT INTO `nj_userinfo` VALUES ('2067', '王磊', '18224518095', '郑东新区普惠路第一幼儿园', '广汽丰田', '雷凌', '2017-04-26 16:25:17');
INSERT INTO `nj_userinfo` VALUES ('2068', '戎泽付', '13592570234', '郑州市管城区南曹乡政府对面', '广汽丰田', '凯美瑞', '2017-04-26 16:26:00');
INSERT INTO `nj_userinfo` VALUES ('2069', '杨中州', '15021826141', '郑州市金水区顺河路与玉凤路交叉口向西100米路北福状元曼哈顿店', '宝骏', '宝骏510', '2017-04-26 16:26:48');
INSERT INTO `nj_userinfo` VALUES ('2070', '程丽', '13523508889', '三全路与文化路交叉口', '东南汽车', 'DX3', '2017-04-26 16:27:20');
INSERT INTO `nj_userinfo` VALUES ('2071', '王景', '17722690412', '郑州中原区建设西路工农路保利百合6号楼一单元', '一汽丰田', '皇冠', '2017-04-26 16:27:56');
INSERT INTO `nj_userinfo` VALUES ('2072', '杨中州', '15021826141', '郑州市金水区顺河路与玉凤路交叉口向西100米路北福状元曼哈顿店', '宝骏', '宝骏510', '2017-04-26 16:29:58');
INSERT INTO `nj_userinfo` VALUES ('2073', '徐琴', '18039971870', '郑东新区', '哈弗', 'H2', '2017-04-26 16:37:25');
INSERT INTO `nj_userinfo` VALUES ('2074', '刘新华', '13071018958', '惠济区长兴路30号泰力小区', '上汽通用别克', '别克GL8', '2017-04-26 16:38:37');
INSERT INTO `nj_userinfo` VALUES ('2075', '李民', '13633838256', '郑东新区', '哈弗', 'H2', '2017-04-26 16:39:06');
INSERT INTO `nj_userinfo` VALUES ('2076', '薛卡', '15093647157', '惠济区长兴路30号泰力小区', '上海大众', '途安', '2017-04-26 16:41:44');
INSERT INTO `nj_userinfo` VALUES ('2077', '张运涛', '13673639530', '郑州市惠济区石桥南示范渔场亿瑞租公司', '江淮', '瑞风M4', '2017-04-26 16:46:52');
INSERT INTO `nj_userinfo` VALUES ('2078', '王建立', '15093317872', '河南省郑州市金水区花园路纬五路金元公寓2号楼9楼', '长安铃木', '雨燕', '2017-04-26 16:56:18');
INSERT INTO `nj_userinfo` VALUES ('2079', '王丽', '17737159707', '河南省郑州市金水区花园路纬五路金元公寓2号楼9楼', '长安铃木', '雨燕', '2017-04-26 16:57:17');
INSERT INTO `nj_userinfo` VALUES ('2080', '赵浩', '13938262065', '郑州市管城区航海路紫荆山路紫光小区', '吉利汽车', '帝豪GL', '2017-04-26 17:13:30');
INSERT INTO `nj_userinfo` VALUES ('2081', '赵浩', '13938262065', '郑州市管城区航海路紫荆山路紫光小区', '吉利汽车', '帝豪GL', '2017-04-26 17:13:49');
INSERT INTO `nj_userinfo` VALUES ('2082', '赵浩', '13938262065', '郑州市管城区管城区航海路紫荆山路紫光小区', '吉利汽车', '帝豪GL', '2017-04-26 17:15:16');
INSERT INTO `nj_userinfo` VALUES ('2083', '靳云鹏', '18003948658', '周口市川汇区八一路与交通路交叉口西北角舒华专卖店', '北京奔驰', 'C级', '2017-04-26 17:28:57');
INSERT INTO `nj_userinfo` VALUES ('2084', '张岭勤', '13072645180', '河南省辉县市峪河镇孔庄村', '宝马(进口)', '宝马M', '2017-04-26 17:47:31');
INSERT INTO `nj_userinfo` VALUES ('2085', '张柳阳', '15237888318', '河南省开封市龙亭区东京大道开封大学新校区', '荣威', 'i6', '2017-04-26 18:01:19');
INSERT INTO `nj_userinfo` VALUES ('2086', '王菊萍', '15093390518', '中牟县泰安街融泽府', '哈弗', 'H6', '2017-04-26 18:03:27');
INSERT INTO `nj_userinfo` VALUES ('2087', '张跃军', '13014688696', '登封市东华镇南高马66号', '上海大众', '途观', '2017-04-26 18:09:09');
INSERT INTO `nj_userinfo` VALUES ('2088', '周耀卿', '15938728639', '新郑市薛店镇华福御景11#1001', '东风本田', '思域', '2017-04-26 18:16:23');
INSERT INTO `nj_userinfo` VALUES ('2089', '刘妍', '13673679542', '郑州二七区百荣世贸商城A3-6-210', '上汽通用别克', '英朗', '2017-04-26 18:17:14');
INSERT INTO `nj_userinfo` VALUES ('2090', '马超', '13523056212', '郑州市中原区晶华城三期30号楼商铺', '斯柯达', '柯迪亚克', '2017-04-26 18:20:28');
INSERT INTO `nj_userinfo` VALUES ('2091', '马豪杰', '15138982975', '郑州市中原区桐柏路农业路路口嵩岳小区16号楼三楼东', '广汽Jeep', '指南者', '2017-04-26 18:30:09');
INSERT INTO `nj_userinfo` VALUES ('2092', '连晓东', '13007515119', '新郑市升达大学', '宝骏', '宝骏510', '2017-04-26 18:38:49');
INSERT INTO `nj_userinfo` VALUES ('2093', null, null, null, null, null, '2017-04-26 18:38:59');
INSERT INTO `nj_userinfo` VALUES ('2094', '刘黎明', '15738314008', '中牟县万邦国际物流园', '沃尔沃', 'XC60', '2017-04-26 18:43:21');
INSERT INTO `nj_userinfo` VALUES ('2095', '杨先生', '13598718831', '新乡市红旗区文化路师专对过报亭', '广汽传祺', 'GS8', '2017-04-26 18:49:13');
INSERT INTO `nj_userinfo` VALUES ('2096', '李志伟', '13633715052', '郑州管城区百荣世贸商城b2区23排435', '东风风行', '景逸X5', '2017-04-26 18:52:55');
INSERT INTO `nj_userinfo` VALUES ('2097', '刘连启', '13613710695', '郑州管城区百荣世贸商城c2区12排408', '东风风行', '景逸X5', '2017-04-26 18:55:42');
INSERT INTO `nj_userinfo` VALUES ('2098', '杨惠媛', '13838025005', '航海路城东路正商幸福港湾青1号楼2单元350户', '北京现代', '悦动', '2017-04-26 19:18:27');
INSERT INTO `nj_userinfo` VALUES ('2099', '李卫星', '18137158658', '红云路二号', '东风本田', '思铂睿', '2017-04-26 19:19:41');
INSERT INTO `nj_userinfo` VALUES ('2100', '李汉龙', '13733189252', '李汉龙', '哈弗', 'H6', '2017-04-26 19:31:43');
INSERT INTO `nj_userinfo` VALUES ('2101', '李民', '13633838256', '金水区金阳光居易3号楼2单元', '哈弗', 'H6', '2017-04-26 19:45:58');
INSERT INTO `nj_userinfo` VALUES ('2102', '徐', '18039971870', '金水区金阳光居易3号楼2单元1005', '哈弗', 'H2', '2017-04-26 19:47:34');
INSERT INTO `nj_userinfo` VALUES ('2103', '李民', '13633838256', '金水区金阳光居易3号楼2单元1005', '上海大众', '朗逸', '2017-04-26 19:49:49');
INSERT INTO `nj_userinfo` VALUES ('2104', '郝女士', '15837184955', '航海路大学路交叉口二七万达8号楼三单元', '凯迪拉克', 'XTS', '2017-04-26 20:03:31');
INSERT INTO `nj_userinfo` VALUES ('2105', '杨彦三', '13733804336', '新郑市郭店镇华阳寨202号', '上汽通用五菱', '五菱荣光V', '2017-04-26 20:07:46');
INSERT INTO `nj_userinfo` VALUES ('2106', '杨斌', '13213028774', '西三环电厂路望湖花园8-1802', '一汽奔腾', 'B50', '2017-04-26 20:11:07');
INSERT INTO `nj_userinfo` VALUES ('2107', '陈华强', '15803990025', '郑州市东四环圃田乡政府新址', '东风标致', '4008', '2017-04-26 20:21:01');
INSERT INTO `nj_userinfo` VALUES ('2108', '许延军', '13949042586', '郑州市二七区学院路1号', '东风标致', '3008', '2017-04-26 20:23:02');
INSERT INTO `nj_userinfo` VALUES ('2109', '马红军', '18237710384', '郑州市荥阳市索河路中段16号万通汽修学校', '东风风光', '370', '2017-04-26 20:38:46');
INSERT INTO `nj_userinfo` VALUES ('2110', '马红军', '18237710384', '郑州市荥阳市索河路中段 16号万通汽修学校', '东风风光', '370', '2017-04-26 20:41:18');
INSERT INTO `nj_userinfo` VALUES ('2111', '申永亮', '13838336892', '中牟县卫计委', '一汽大众', '速腾', '2017-04-26 20:47:13');
INSERT INTO `nj_userinfo` VALUES ('2112', '张迎春', '18637198191', '郑州市二七区长江中路127号亚星雅居1#楼1单元15层89号', '上汽大通', 'G10', '2017-04-26 20:49:29');
INSERT INTO `nj_userinfo` VALUES ('2113', '薛刚', '13569980073', '新郑市辛店镇恒发水泥厂', '吉利汽车', '帝豪GS', '2017-04-26 20:51:35');
INSERT INTO `nj_userinfo` VALUES ('2114', '赵利便', '18739919909', '河南省巩义市河洛镇石板沟', '上汽通用五菱', '五菱宏光', '2017-04-26 20:52:52');
INSERT INTO `nj_userinfo` VALUES ('2115', '赵利便', '18739919909', '河南省巩义市河洛镇石板沟', '上汽通用五菱', '五菱宏光', '2017-04-26 20:53:59');
INSERT INTO `nj_userinfo` VALUES ('2116', '赵利便', '18739919909', '河南省巩义市河洛镇石板沟', '上汽通用五菱', '五菱宏光', '2017-04-26 20:54:59');
INSERT INTO `nj_userinfo` VALUES ('2117', '陈廷怀', '13007526292', '巩义市杜甫路宇华小区上院', '郑州日产', '帕拉丁', '2017-04-26 20:58:05');
INSERT INTO `nj_userinfo` VALUES ('2118', '张彦伟', '13623831981', '郑州二七区郑密路88号珠江荣域南院17号楼6单元4楼西', '东风标致', '408', '2017-04-26 20:58:53');
INSERT INTO `nj_userinfo` VALUES ('2119', '史', '15639783997', '新郑梨河镇', '丰田(进口)', 'Fortuner', '2017-04-26 21:07:28');
INSERT INTO `nj_userinfo` VALUES ('2120', '徐超', '18625581711', '金水区东三街与同乐路交叉口西北角门面房金座造型直营连锁', '广汽丰田', '汉兰达', '2017-04-26 21:10:50');
INSERT INTO `nj_userinfo` VALUES ('2121', '张', '18567869767', '新郑梨河', '上汽通用别克', '别克GL8', '2017-04-26 21:11:30');
INSERT INTO `nj_userinfo` VALUES ('2122', '史', '15638883668', '新郑梨河镇', '丰田(进口)', 'FJ 酷路泽', '2017-04-26 21:13:59');
INSERT INTO `nj_userinfo` VALUES ('2123', '谷文占', '18623708436', '国香茶城A区36号', '广汽本田', '缤智', '2017-04-26 21:16:24');
INSERT INTO `nj_userinfo` VALUES ('2124', '谷丹丹', '18623708436', '国香茶城A区36号', '东风日产', '逍客', '2017-04-26 21:19:34');
INSERT INTO `nj_userinfo` VALUES ('2125', '魏傲峰', '18300681379', '花园路北苑小区150号院8号楼东单元四楼西户', '东风风光', '580', '2017-04-26 21:24:29');
INSERT INTO `nj_userinfo` VALUES ('2126', '田振', '13838583645', '郑州市化工路30号', '昌河汽车', 'M70', '2017-04-26 21:24:34');
INSERT INTO `nj_userinfo` VALUES ('2127', '张丽恒', '18638267846', '郑州市荥阳市火车站报亭旁边 车站老饺子馆', '一汽大众', '蔚领', '2017-04-26 21:34:45');
INSERT INTO `nj_userinfo` VALUES ('2128', '靳振响', '18037388110', '郑州市管城区货站街180号建业香槟圣园', '吉利汽车', '帝豪GL', '2017-04-26 21:37:53');
INSERT INTO `nj_userinfo` VALUES ('2129', '常鹏飞', '13721416339', '幸福路9号院', '上海大众', '途观', '2017-04-26 21:38:14');
INSERT INTO `nj_userinfo` VALUES ('2130', '孙彪', '13939489223', '郑州市中原区科学大道白送路万泰四期项目部', '东风本田', '思域', '2017-04-26 21:38:57');
INSERT INTO `nj_userinfo` VALUES ('2131', '李玉岭', '13803714115', '郑州市五龙口南路16号院红河瀛园1号楼4单元', '东风日产', '轩逸', '2017-04-26 21:39:28');
INSERT INTO `nj_userinfo` VALUES ('2132', '王楠', '18937635776', '大学路桃源路', '上海大众', '朗逸', '2017-04-26 21:43:10');
INSERT INTO `nj_userinfo` VALUES ('2133', '邬子豪', '15515767317', '郑州市中原区科学大道白送路万泰四期项目部', '众泰汽车', 'SR9', '2017-04-26 21:46:22');
INSERT INTO `nj_userinfo` VALUES ('2134', '翟小飞', '15890191728', '南三环文兴路与鼎尚街向西300米路北东健汽修', '上汽通用别克', '威朗', '2017-04-26 21:50:16');
INSERT INTO `nj_userinfo` VALUES ('2135', '叶小杰', '13676964732', '南三环文兴路与鼎尚街向西300米路北东健汽修一', '一汽大众', '速腾', '2017-04-26 21:52:04');
INSERT INTO `nj_userinfo` VALUES ('2136', '王亚坤', '18637807858', '河南省开封市金明东街金康苑18号楼2单元', '北汽幻速', 'S5', '2017-04-26 21:55:42');
INSERT INTO `nj_userinfo` VALUES ('2137', '任盛隆', '15136217717', '郑州大学南路92号', '一汽吉林', '森雅R7', '2017-04-26 21:57:42');
INSERT INTO `nj_userinfo` VALUES ('2138', '魏中原', '15818790993', '金水区黄河路75号院社区公寓319', '哈弗', 'H2s', '2017-04-26 22:02:20');
INSERT INTO `nj_userinfo` VALUES ('2139', '贾二照', '15093054651', '九龙镇安zh', '荣威', '350', '2017-04-26 22:02:32');
INSERT INTO `nj_userinfo` VALUES ('2140', '陈桂利', '17731099109', '河南郑州金水区黄河路75号院社区公寓319', '上海大众', '朗逸', '2017-04-26 22:03:13');
INSERT INTO `nj_userinfo` VALUES ('2141', '崔大平', '15225181310', '登封市大金店', '上汽通用五菱', '五菱宏光', '2017-04-26 22:07:57');
INSERT INTO `nj_userinfo` VALUES ('2142', '曹俊杰', '13733876865', '郑州南三环橡树玫瑰城一期16号楼2单元301', '长安马自达', 'CX-5', '2017-04-26 22:08:24');
INSERT INTO `nj_userinfo` VALUES ('2143', '崔大平', '15225181310', '登封市大金店', '上汽通用五菱', '五菱宏光', '2017-04-26 22:08:40');
INSERT INTO `nj_userinfo` VALUES ('2144', '王西亚', '15225215613', '民权县', '长城汽车', 'C30', '2017-04-26 22:09:38');
INSERT INTO `nj_userinfo` VALUES ('2145', '安孟杰', '13071055453', '郑州二七区大学路南三环西200米郑飞小区70号楼一单元一楼西', '北汽新能源', 'EV系列', '2017-04-26 22:10:44');
INSERT INTO `nj_userinfo` VALUES ('2146', '王辉', '15237132291', '惠济区政协，开元路8号', '一汽丰田', '皇冠', '2017-04-26 22:12:34');
INSERT INTO `nj_userinfo` VALUES ('2147', '陈桂利', '17731099109', '河南省郑州市金水区黄河路75号院社区公寓201室', '上海大众', '朗逸', '2017-04-26 22:13:17');
INSERT INTO `nj_userinfo` VALUES ('2148', '王西亚', '15225215613', '姚店媞', '长城汽车', 'C30', '2017-04-26 22:13:30');
INSERT INTO `nj_userinfo` VALUES ('2149', '孙涛', '18135699987', '惠济区英才街2号河南牧业经济学院家属院18号楼一单元', '一汽-大众奥迪', '奥迪A6L', '2017-04-26 22:13:45');
INSERT INTO `nj_userinfo` VALUES ('2150', '李富胜', '15637693795', '郑州市惠济区金桥路十号北方汽修学校', '梅赛德斯-迈巴赫', '迈巴赫S级', '2017-04-26 22:14:54');
INSERT INTO `nj_userinfo` VALUES ('2151', '李志锋', '18790262304', '郑州市惠济区迎宾路街道金桥路10号北方汽修', '一汽-大众奥迪', '奥迪A4L ', '2017-04-26 22:14:57');
INSERT INTO `nj_userinfo` VALUES ('2152', '罗成', '18703769662', '郑州市惠济区迎宾路街道金桥路十号北方汽修学院', '保时捷', 'Panamera', '2017-04-26 22:15:00');
INSERT INTO `nj_userinfo` VALUES ('2153', '张路路', '13298254110', '许昌市阳光大道瑞达生物科技有限公司', '一汽丰田', '威驰FS', '2017-04-26 22:16:21');
INSERT INTO `nj_userinfo` VALUES ('2154', '毛子昂', '13939060791', '二七区西三环丹青路豫景园小区', '吉利汽车', '博越', '2017-04-26 22:21:35');
INSERT INTO `nj_userinfo` VALUES ('2155', '李志锋', '18790262304', '郑州市惠济区迎宾路街道金桥路10号北方汽修', '一汽-大众奥迪', '奥迪A4L ', '2017-04-26 22:22:13');
INSERT INTO `nj_userinfo` VALUES ('2156', '李龙光', '13938813074', '洛阳市偃师市人民医院办公室', '上海大众', '朗逸', '2017-04-26 22:24:48');
INSERT INTO `nj_userinfo` VALUES ('2157', '李卫锋', '13603991117', '新郑陶文路月季新城', '猎豹汽车', 'CS10', '2017-04-26 22:25:26');
INSERT INTO `nj_userinfo` VALUES ('2158', '桑志远', '15638120777', '郑州市新密平安路219号凯撒温泉隔壁中国杜康专营店', '东风日产', '天籁', '2017-04-26 22:26:33');
INSERT INTO `nj_userinfo` VALUES ('2159', '张蓓蓓', '18838865806', '洛阳市偃师市人民医院办公室', '一汽丰田', '卡罗拉', '2017-04-26 22:27:18');
INSERT INTO `nj_userinfo` VALUES ('2160', '张建波', '17739751268', '郑州市二七区连云路南三环都市广场', '广汽Jeep', '指南者', '2017-04-26 22:30:47');
INSERT INTO `nj_userinfo` VALUES ('2161', '白强', '18738183132', '荥阳市塔山路鸿祥今典小区五号楼三单元6楼西栋', '宝骏', '宝骏510', '2017-04-26 22:30:56');
INSERT INTO `nj_userinfo` VALUES ('2162', '闫龙龙', '18236473577', '郑州北方汽修学校', '一汽大众', 'CC', '2017-04-26 22:31:25');
INSERT INTO `nj_userinfo` VALUES ('2163', '何佩佩', '18939129260', '郑州市二七区连云路南三环都市广场', '哈弗', 'H6', '2017-04-26 22:31:40');
INSERT INTO `nj_userinfo` VALUES ('2164', '史德来', '18595925932', '惠济区金桥路', '比亚迪', '元', '2017-04-26 22:34:03');
INSERT INTO `nj_userinfo` VALUES ('2165', '云旗', '18037503592', '郑州市金水区顺河路16号院10号楼101号', '长城汽车', '风骏6', '2017-04-26 22:36:01');
INSERT INTO `nj_userinfo` VALUES ('2166', '张立', '18211672763', '郑州北方汽修学校', '宝骏', '宝骏730', '2017-04-26 22:36:51');
INSERT INTO `nj_userinfo` VALUES ('2167', '崔强', '13393898060', '河南省焦作市解放区解放西路开达学校对面砼盛源混凝土有限公司', '福建奔驰', '威霆', '2017-04-26 22:39:59');
INSERT INTO `nj_userinfo` VALUES ('2168', '苏新利', '13462893700', '郑州市建设路秦岭路南500米幸福六合门二期2号楼801', '哈弗', 'H6', '2017-04-26 22:40:02');
INSERT INTO `nj_userinfo` VALUES ('2169', '闫龙龙', '18236473577', '金桥路郑州北方汽修学校', '一汽大众', 'CC', '2017-04-26 22:40:11');
INSERT INTO `nj_userinfo` VALUES ('2170', null, null, null, null, null, '2017-04-26 22:40:21');
INSERT INTO `nj_userinfo` VALUES ('2171', '闫龙龙', '18236473577', '金桥路郑州北方汽修学校', '一汽大众', 'CC', '2017-04-26 22:41:41');
INSERT INTO `nj_userinfo` VALUES ('2172', '云旗', '18037503592', '郑州市金水区顺河路16号院10号楼101号', '长城汽车', '风骏6', '2017-04-26 22:42:41');
INSERT INTO `nj_userinfo` VALUES ('2173', '张立', '18211672763', '郑州金桥路北方汽修学校校内', '宝骏', '宝骏730', '2017-04-26 22:49:09');
INSERT INTO `nj_userinfo` VALUES ('2174', '张春强', '13663859305', '郑州市金水区政三街5号石化大厦601', '吉利汽车', '远景', '2017-04-26 22:49:50');
INSERT INTO `nj_userinfo` VALUES ('2175', '李先生', '13676945308', '桐柏北路与煤仓北街交叉口向西500米', '东风风行', '菱智', '2017-04-26 22:53:40');
INSERT INTO `nj_userinfo` VALUES ('2176', '晁俊华', '13223715153', '郑州中牟白沙镇康庄水暖洁具市场10排7号LD陶瓷', '北汽幻速', 'S6', '2017-04-26 22:55:40');
INSERT INTO `nj_userinfo` VALUES ('2177', '陶先生', '15936293971', '郑州市中牟县白沙镇康庄水暖洁具市场10排7号LD陶瓷', '北汽绅宝', 'X65', '2017-04-26 22:59:48');
INSERT INTO `nj_userinfo` VALUES ('2178', '张爱军', '17719882440', '郑州市紫辰路锦棠小区13号', '哈弗', 'H9', '2017-04-26 22:59:57');
INSERT INTO `nj_userinfo` VALUES ('2179', '王博', '15617642210', '郑州市中原区须水街西四环汇泉喜悦城售楼部（门口）', '东风风行', '景逸X5', '2017-04-26 23:01:21');
INSERT INTO `nj_userinfo` VALUES ('2180', '张俊辉', '15803885706', '维也纳森林15号楼505', '广汽Jeep', '自由光', '2017-04-26 23:05:49');
INSERT INTO `nj_userinfo` VALUES ('2181', '张辉辉', '13703996565', '巩义市北山口镇北湾村', '猎豹汽车', '黑金刚', '2017-04-26 23:14:39');
INSERT INTO `nj_userinfo` VALUES ('2182', '刘朝阳', '13938524673', '登封市', '东风风行', 'SX6', '2017-04-26 23:19:32');
INSERT INTO `nj_userinfo` VALUES ('2183', '苗宇坤', '13523030853', '秦岭路沁河路琴海花苑3号楼4单元9楼西户', '荣威', 'i6', '2017-04-26 23:23:35');
INSERT INTO `nj_userinfo` VALUES ('2184', '张剑', '13598059920', '二七区升龙国际世纪花园一区2号楼2803', '广汽Jeep', '自由光', '2017-04-26 23:25:54');
INSERT INTO `nj_userinfo` VALUES ('2185', '张月亭', '18638037273', '花园路与金桥路交叉口往西300米', '一汽大众', 'CC', '2017-04-26 23:30:00');
INSERT INTO `nj_userinfo` VALUES ('2186', '耿卫平', '13673362730', '南曹乡政府附近', '东风风行', 'SX6', '2017-04-26 23:33:43');
INSERT INTO `nj_userinfo` VALUES ('2187', '牛哥', '15738328620', '嵩山路南四环德亨物流园', '奥迪(进口)', '奥迪A6(进口)', '2017-04-26 23:38:34');
INSERT INTO `nj_userinfo` VALUES ('2188', '李先生', '18665636855', '中原区汝河路工人路西耿河小区', '一汽丰田', '威驰', '2017-04-26 23:40:07');
INSERT INTO `nj_userinfo` VALUES ('2189', '张彦涛', '13523495816', '经南五路于第三大街交叉口向东200米世和小区一号楼一单元', '广汽传祺', 'GS8', '2017-04-26 23:42:24');
INSERT INTO `nj_userinfo` VALUES ('2190', '余晓', '15103856884', '郑州大学第一附属医院郑东院区', '上海大众', '朗逸', '2017-04-26 23:57:22');
INSERT INTO `nj_userinfo` VALUES ('2191', '王迎宾', '18768881968', '郑州市郑东新区时埂社区南门', '东风本田', 'XR-V', '2017-04-26 23:59:04');
INSERT INTO `nj_userinfo` VALUES ('2192', '李闯', '15515695742', '河南省郑州市中牟县青年路办事处花桥东300米(光辉超市)', '北京现代', '悦动', '2017-04-27 00:16:29');
INSERT INTO `nj_userinfo` VALUES ('2193', '郭亮', '13523436301', '商城路268号', '广汽本田', '凌派', '2017-04-27 00:19:46');
INSERT INTO `nj_userinfo` VALUES ('2194', '徐素丹', '13613755270', '河南农业大学龙子湖校区', '长安福特', '蒙迪欧', '2017-04-27 00:20:52');
INSERT INTO `nj_userinfo` VALUES ('2195', '张濠麟', '15539790625', '河南农业大学龙子湖校区', '长安福特', '蒙迪欧', '2017-04-27 00:21:46');
INSERT INTO `nj_userinfo` VALUES ('2196', '刘利军', '18037803903', '经开区第三大街梁湖社区', 'MG', 'MG3', '2017-04-27 00:23:32');
INSERT INTO `nj_userinfo` VALUES ('2197', '徐素丹', '13613755270', '河南农业大学龙子湖校区', '长安福特', '蒙迪欧', '2017-04-27 00:23:40');
INSERT INTO `nj_userinfo` VALUES ('2198', '李风武', '15515695742', '河南省郑州市中牟县青年路办事处花桥东300米(光辉超市)', '北京现代', '悦动', '2017-04-27 00:24:21');
INSERT INTO `nj_userinfo` VALUES ('2199', '徐素丹', '13613755270', '河南农业大学龙子湖校区', '长安福特', '蒙迪欧', '2017-04-27 00:24:59');
INSERT INTO `nj_userinfo` VALUES ('2200', '徐素丹', '13613755270', '河南农业大学龙子湖校区', '长安福特', '蒙迪欧', '2017-04-27 00:27:41');
INSERT INTO `nj_userinfo` VALUES ('2201', '徐素丹', '13613755270', '河南农业大学龙子湖校区', '长安福特', '蒙迪欧', '2017-04-27 00:28:07');
INSERT INTO `nj_userinfo` VALUES ('2202', '姜志伟', '15838385387', '黄河路永平路月星家居', '宝骏', '宝骏730', '2017-04-27 06:56:24');
INSERT INTO `nj_userinfo` VALUES ('2203', '王浩', '17760736678', '黄河路永平路月星家居', '哈弗', 'H7', '2017-04-27 06:57:22');
INSERT INTO `nj_userinfo` VALUES ('2204', '耿国贤', '15938779621', '新郑龙湖三里岗', '金龙', '金威', '2017-04-27 07:05:15');
INSERT INTO `nj_userinfo` VALUES ('2205', '任军营', '13223090853', '郑州市中原区科学大道白松路万科城四期', '广汽菲亚特', '致悦', '2017-04-27 07:13:05');
INSERT INTO `nj_userinfo` VALUES ('2206', '曹堃', '15238645257', '金水区经一路11号', '东风本田', '思域', '2017-04-27 07:28:57');
INSERT INTO `nj_userinfo` VALUES ('2207', '庄新福', '17739750328', '郑州市管城区南曹乡野曹村', '北汽绅宝', 'X25', '2017-04-27 07:45:06');
INSERT INTO `nj_userinfo` VALUES ('2208', '王龙龙', '18037998630', '河南省洛阳市孟津县横水镇寒亮村', '广汽传祺', 'GS4', '2017-04-27 08:18:47');
INSERT INTO `nj_userinfo` VALUES ('2209', '侯茂青', '18337206595', '河南林州原康', '广汽本田', '锋范', '2017-04-27 08:19:15');
INSERT INTO `nj_userinfo` VALUES ('2210', '王浩锋', '13653823350', '郑州管城区安平路与心怡路高铁综合办7号楼7号楼', '众泰汽车', 'E200', '2017-04-27 08:20:28');
INSERT INTO `nj_userinfo` VALUES ('2211', '刘澜庆', '18749888265', '开封市晋安路西郊变电站家属院3号院', '北京奔驰', 'GLA', '2017-04-27 08:21:18');
INSERT INTO `nj_userinfo` VALUES ('2212', '李宏泽', '13838011856', '中原区桐柏路200号', '长安汽车', 'CS95', '2017-04-27 08:24:01');
INSERT INTO `nj_userinfo` VALUES ('2213', '韩帅', '18625588947', '河南省郑州市二七区二七路27号光彩美食街小贱哥卤面', '荣威', 'RX5', '2017-04-27 08:31:02');
INSERT INTO `nj_userinfo` VALUES ('2214', '张女士', '15138938243', '永平路东周路商都社区急诊科', '一汽丰田', '普拉多', '2017-04-27 08:41:11');
INSERT INTO `nj_userinfo` VALUES ('2215', '刘杰', '15290847799', '巩义市回郭镇柴沟村', '上海大众', '途观', '2017-04-27 08:41:44');
INSERT INTO `nj_userinfo` VALUES ('2216', '刘杰', '15290847799', '巩义市回郭镇柴沟村', '上海大众', '途观', '2017-04-27 08:42:22');
INSERT INTO `nj_userinfo` VALUES ('2217', '魏旭航', '15539560603', '漯河市漯河医专新校区', '吉利汽车', '帝豪GL', '2017-04-27 08:43:30');
INSERT INTO `nj_userinfo` VALUES ('2218', '刘杰', '15290847799', '巩义市回郭镇柴沟村', '上海大众', '途观', '2017-04-27 08:44:00');
INSERT INTO `nj_userinfo` VALUES ('2219', '刘杰', '15290847799', '巩义市回郭镇柴沟村', '上海大众', '途观', '2017-04-27 08:45:17');
INSERT INTO `nj_userinfo` VALUES ('2220', '张双', '18638921427', '郑东新区华北水利水电大学龙子湖校区', '东风悦达起亚', 'K5', '2017-04-27 08:55:57');
INSERT INTO `nj_userinfo` VALUES ('2221', '宋榜', '13526831426', '新郑航空港区四港联动大道裕鸿世界港', '东风本田', '思域', '2017-04-27 09:04:42');
INSERT INTO `nj_userinfo` VALUES ('2222', '赵九州', '18530946670', '荥阳市三公路万业金城二号院21号门面房，匠煜装饰', '一汽马自达', 'CX-4', '2017-04-27 09:07:49');
INSERT INTO `nj_userinfo` VALUES ('2223', '郜杰', '13939142750', '河南新郑港区富士康豫康新城住宿区', '上汽通用五菱', '五菱宏光', '2017-04-27 09:08:23');
INSERT INTO `nj_userinfo` VALUES ('2224', '白明明', '18336399353', '郑州未来路石化路铁道新景苑207', '吉利汽车', '帝豪GS', '2017-04-27 09:18:44');
INSERT INTO `nj_userinfo` VALUES ('2225', '李博', '15639721523', '郑州市紫辰路锦棠小区16号楼24楼089', '一汽马自达', '阿特兹', '2017-04-27 09:31:51');
INSERT INTO `nj_userinfo` VALUES ('2226', '贾佩芳', '13007539527', '新密市金成花园南门', '长安汽车', 'CS95', '2017-04-27 09:32:42');
INSERT INTO `nj_userinfo` VALUES ('2227', '梅超', '18848858951', '中牟县刘集镇', '阿斯顿马丁', 'V12 Vantage', '2017-04-27 09:36:26');
INSERT INTO `nj_userinfo` VALUES ('2228', null, null, null, null, null, '2017-04-27 09:37:13');
INSERT INTO `nj_userinfo` VALUES ('2229', '鞠保胜', '13213132469', '郑州市管城区石化路 铁道凤凰家园向东200米 自由风美发店', '标致(进口)', '昂科雷', '2017-04-27 09:37:21');
INSERT INTO `nj_userinfo` VALUES ('2230', '王震', '18530072960', '郑州市荥阳市城关乡龙港路南100米', '广汽丰田', '汉兰达', '2017-04-27 09:40:39');
INSERT INTO `nj_userinfo` VALUES ('2231', '刘晓龙', '13323627333', '河南省安阳市内黄县颛顼大道与小吃街路口汇鑫招待所', '一汽大众', '迈腾', '2017-04-27 09:46:46');
INSERT INTO `nj_userinfo` VALUES ('2232', '马世恒', '17630767625', '河南省商丘市民权县绿洲路中段劳保用品店', '上汽通用别克', '君越', '2017-04-27 09:47:29');
INSERT INTO `nj_userinfo` VALUES ('2233', '刘毅', '18539912058', '郑州市二七区马寨镇学院路1号', '保时捷', 'Panamera新能源', '2017-04-27 09:57:11');
INSERT INTO `nj_userinfo` VALUES ('2234', '罗淑辉', '13262199522', '中原区建设路与长椿路铁炉工业园向北100米卖卫生纸', '北京奔驰', 'C级', '2017-04-27 10:08:45');
INSERT INTO `nj_userinfo` VALUES ('2235', '陈国华', '18603820228', '中原区建设路与长椿路铁炉工业园侯师傅修车往北100米卖卫生纸', '奔驰(进口)', 'CLA级', '2017-04-27 10:09:14');
INSERT INTO `nj_userinfo` VALUES ('2236', '黄锦敏', '13526839729', '惠济区花园口镇赵兰庄48号', '上海大众', '途昂', '2017-04-27 10:09:20');
INSERT INTO `nj_userinfo` VALUES ('2237', '周艳霞', '13633868362', '中原区建设路与长椿路交叉口铁炉工业园侯师傅修车向北100米卖卫生纸', '奔驰(进口)', 'CLA级', '2017-04-27 10:12:18');
INSERT INTO `nj_userinfo` VALUES ('2238', '孙晓峰', '17634630607', '郑州万通汽修学校', '阿斯顿马丁', 'V12 Vantage', '2017-04-27 10:18:36');
INSERT INTO `nj_userinfo` VALUES ('2239', '陈子豪', '17630059076', '郑州市惠济区花园路金桥路10号北方汽修', 'Jeep(进口) ', '牧马人', '2017-04-27 10:19:32');
INSERT INTO `nj_userinfo` VALUES ('2240', '杨帅', '18339999422', '黄河路姚寨路交叉口天一大厦1906酷秀旅游', '广汽Jeep', '自由光', '2017-04-27 10:19:37');
INSERT INTO `nj_userinfo` VALUES ('2241', '丁学武', '13938515763', '金水区花园路汽配大世界', '一汽-大众奥迪', '奥迪Q5', '2017-04-27 10:22:36');
INSERT INTO `nj_userinfo` VALUES ('2242', '冯亚飞', '13203839690', '陇海路交通路南50米晨光文具', '奇瑞汽车', '艾瑞泽5', '2017-04-27 10:22:50');
INSERT INTO `nj_userinfo` VALUES ('2243', '司长仃', '13253645999', '登封', '猎豹汽车', 'CS10', '2017-04-27 10:24:19');
INSERT INTO `nj_userinfo` VALUES ('2244', '黄伟', '15637157345', '河南省登封市', '众泰汽车', 'Z700', '2017-04-27 10:32:00');
INSERT INTO `nj_userinfo` VALUES ('2245', '马红伟', '13553825260', '金水区文化路72号1号楼', '一汽-大众奥迪', '奥迪Q5', '2017-04-27 10:37:53');
INSERT INTO `nj_userinfo` VALUES ('2246', '王倩博', '15638902804', '河南省郑州市荥阳市石寨村石寨村委会', '吉利汽车', '帝豪', '2017-04-27 10:41:57');
INSERT INTO `nj_userinfo` VALUES ('2247', '刘庆磊', '18939016858', '洛阳开元大道与唐坊街电视大学家属院', '长安商用', 'CX70', '2017-04-27 10:48:15');
INSERT INTO `nj_userinfo` VALUES ('2248', '张霞', '15188358002', '河南省郑州市郑东新区圃田石王村', '长安汽车', 'CS75', '2017-04-27 10:55:49');
INSERT INTO `nj_userinfo` VALUES ('2249', '赵辉春', '13838208002', '河南省郑州市郑东新区圃田石王村', '长安商用', 'CX70', '2017-04-27 10:57:22');
INSERT INTO `nj_userinfo` VALUES ('2250', '张霞', '15188358002', '河南省郑州市郑东新区圃田石王村', '长安汽车', 'CS75', '2017-04-27 10:58:23');
INSERT INTO `nj_userinfo` VALUES ('2251', '王书锋', '13703711002', '花园路刘庄', '丰田(进口)', 'FJ 酷路泽', '2017-04-27 11:00:55');
INSERT INTO `nj_userinfo` VALUES ('2252', '田贝', '17737618776', '河南省周口市扶沟县西关中华保险', '丰田(进口)', 'FJ 酷路泽', '2017-04-27 11:03:34');
INSERT INTO `nj_userinfo` VALUES ('2253', '程永跃', '18538410785', '河南省郑州市第六人民医院北门消毒供应中心', '吉利汽车', '远景SUV', '2017-04-27 11:12:09');
INSERT INTO `nj_userinfo` VALUES ('2254', '王晓阳', '17772159702', '新郑市新村镇郑州工业应用技术学院老校区', '宝骏', '宝骏730', '2017-04-27 11:23:14');
INSERT INTO `nj_userinfo` VALUES ('2255', '李琰飞', '13939083775', '郑州市上街区32街坊艺术宫西门', '江淮', '江淮iEV', '2017-04-27 11:27:47');

-- ----------------------------
-- Table structure for `qzh`
-- ----------------------------
DROP TABLE IF EXISTS `qzh`;
CREATE TABLE `qzh` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(23) NOT NULL,
  `u_age` int(22) NOT NULL,
  `created_at` int(30) NOT NULL,
  `updated_at` int(30) DEFAULT NULL,
  `status` int(32) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qzh
-- ----------------------------
INSERT INTO `qzh` VALUES ('10', 'php think make:curd Use', '31', '2017', '2017', '-1');
INSERT INTO `qzh` VALUES ('11', 'wer', '32', '2017', '2017', '-1');
INSERT INTO `qzh` VALUES ('12', 'yyy', '32', '2017', '2017', '-1');
INSERT INTO `qzh` VALUES ('13', '543', '234', '2017', '2017', '-1');
INSERT INTO `qzh` VALUES ('14', '234', '8', '2017', '2017', '-1');

-- ----------------------------
-- Table structure for `site_link`
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of site_link
-- ----------------------------
INSERT INTO `site_link` VALUES ('1', '百度', '/uploads/images/20170321\\5da8315cee927d9599cc9a2dcecb65a0.png', 'http://www.baidu.com', '1', '2017-03-21 18:41:18', '2017-03-21 18:41:18');
INSERT INTO `site_link` VALUES ('2', '开天网络', '/uploads/images/20170323\\fc1bf11fb8276443d99f02498490d34a.jpg', 'www.ktwlkj.com', '1', '2017-03-23 09:27:19', '2017-03-23 09:27:19');

-- ----------------------------
-- Table structure for `sys_article`
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
-- Table structure for `tankuang`
-- ----------------------------
DROP TABLE IF EXISTS `tankuang`;
CREATE TABLE `tankuang` (
  `id` int(20) unsigned NOT NULL AUTO_INCREMENT,
  `p_name` varchar(255) DEFAULT NULL,
  `p_desc` varchar(255) DEFAULT NULL,
  `p_pic` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tankuang
-- ----------------------------
INSERT INTO `tankuang` VALUES ('3', '33333', '<p>tr ertret&nbsp;</p>', '/uploads/images/20170327\\2de59aa0c9099af4b4dbbe9c28d17e87.jpg', '2017-03-27 10:55:01', '2017-03-27 12:01:46');
INSERT INTO `tankuang` VALUES ('2', '222', '<p>ewrwerw&nbsp;</p>', '/uploads/images/20170327\\749a180eb031e4abb564a952e22c1458.jpg', '2017-03-27 10:54:43', '2017-03-27 10:54:43');

-- ----------------------------
-- Table structure for `user`
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
-- Table structure for `web_menu`
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of web_menu
-- ----------------------------
INSERT INTO `web_menu` VALUES ('1', '首页', '1', 'web/index/index', '/uploads/images/20170321\\e4c25810315cf4f91bcb7d99b02f4d77.png', '0', '2017-03-21 21:39:50', '2017-03-21 23:39:35');
INSERT INTO `web_menu` VALUES ('2', '测试一', '2', 'web/index/index2', null, '1', '2017-03-21 21:44:30', '2017-03-21 21:44:30');
INSERT INTO `web_menu` VALUES ('3', '关于我们', '3', '/admin/about', null, '0', '2017-03-27 09:28:19', '2017-03-27 09:28:19');
INSERT INTO `web_menu` VALUES ('4', '关于我们', '1', '/home/aboutUs', null, '0', '2017-03-27 09:29:08', '2017-03-27 09:29:08');
INSERT INTO `web_menu` VALUES ('5', '关于我们', '3', '/home/aboutus', null, '0', '2017-03-27 09:30:37', '2017-03-27 09:30:37');
