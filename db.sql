/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wizijuanzenghefenpei
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wizijuanzenghefenpei` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wizijuanzenghefenpei`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-07 11:08:17'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-07 11:08:17'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-07 11:08:17'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-07 11:08:17'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-07 11:08:17'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-07 11:08:17'),(7,'wuzi_types','物资类型',1,'物资类型1',NULL,NULL,'2023-04-07 11:08:17'),(8,'wuzi_types','物资类型',2,'物资类型2',NULL,NULL,'2023-04-07 11:08:17'),(9,'wuzi_types','物资类型',3,'物资类型3',NULL,NULL,'2023-04-07 11:08:17'),(10,'wuzi_types','物资类型',4,'物资类型4',NULL,NULL,'2023-04-07 11:08:17'),(11,'wuzi_order_types','订单类型',101,'已申请',NULL,NULL,'2023-04-07 11:08:17'),(12,'wuzi_order_types','订单类型',102,'已取消申请',NULL,NULL,'2023-04-07 11:08:17'),(13,'wuzi_order_types','订单类型',103,'已同意',NULL,NULL,'2023-04-07 11:08:17'),(14,'wuzi_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-07 11:08:17'),(15,'wuzi_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-04-07 11:08:17'),(16,'wuzi_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-04-07 11:08:17'),(17,'juanzeng_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-04-07 11:08:17'),(18,'juanzeng_yuyue_yesno_types','报名状态',2,'接受捐赠',NULL,NULL,'2023-04-07 11:08:17'),(19,'juanzeng_yuyue_yesno_types','报名状态',3,'拒绝捐赠',NULL,NULL,'2023-04-07 11:08:17');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jigou_id` int(11) DEFAULT NULL COMMENT '机构',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='物资论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`jigou_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,NULL,'发布内容1',317,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',264,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',108,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(4,'帖子标题4',3,NULL,NULL,'发布内容4',429,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',322,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',382,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(7,'帖子标题7',3,NULL,NULL,'发布内容7',119,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(8,'帖子标题8',3,NULL,NULL,'发布内容8',335,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',486,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(10,'帖子标题10',3,NULL,NULL,'发布内容10',117,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(11,'帖子标题11',3,NULL,NULL,'发布内容11',359,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',463,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',89,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(14,'帖子标题14',1,NULL,NULL,'发布内容14',47,1,'2023-04-07 11:08:42','2023-04-07 11:08:42','2023-04-07 11:08:42'),(15,'帖子',1,NULL,NULL,'<p>帖子1111</p>',NULL,1,'2023-04-07 11:49:28',NULL,'2023-04-07 11:49:28'),(16,NULL,NULL,NULL,1,'1234156',15,2,'2023-04-07 11:52:15',NULL,'2023-04-07 11:52:15'),(17,NULL,NULL,1,NULL,'好的呢',15,2,'2023-04-07 11:53:53',NULL,'2023-04-07 11:53:53');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-04-07 11:08:42','公告详情1','2023-04-07 11:08:42'),(2,'公告名称2','upload/gonggao2.jpg',2,'2023-04-07 11:08:42','公告详情2','2023-04-07 11:08:42'),(3,'公告名称3','upload/gonggao3.jpg',1,'2023-04-07 11:08:42','公告详情3','2023-04-07 11:08:42'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-04-07 11:08:42','公告详情4','2023-04-07 11:08:42'),(5,'公告名称5','upload/gonggao5.jpg',1,'2023-04-07 11:08:42','公告详情5','2023-04-07 11:08:42'),(6,'公告名称6','upload/gonggao6.jpg',1,'2023-04-07 11:08:42','公告详情6','2023-04-07 11:08:42'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-04-07 11:08:42','公告详情7','2023-04-07 11:08:42'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-04-07 11:08:42','公告详情8','2023-04-07 11:08:42'),(9,'公告名称9','upload/gonggao9.jpg',2,'2023-04-07 11:08:42','公告详情9','2023-04-07 11:08:42'),(10,'公告名称10','upload/gonggao10.jpg',1,'2023-04-07 11:08:42','公告详情10','2023-04-07 11:08:42'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-04-07 11:08:42','公告详情11','2023-04-07 11:08:42'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-04-07 11:08:42','公告详情12','2023-04-07 11:08:42'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-04-07 11:08:42','公告详情13','2023-04-07 11:08:42'),(14,'公告名称14','upload/gonggao14.jpg',2,'2023-04-07 11:08:42','公告详情14','2023-04-07 11:08:42');

/*Table structure for table `jigou` */

DROP TABLE IF EXISTS `jigou`;

CREATE TABLE `jigou` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jigou_name` varchar(200) DEFAULT NULL COMMENT '机构姓名 Search111 ',
  `jigou_phone` varchar(200) DEFAULT NULL COMMENT '机构手机号',
  `jigou_photo` varchar(200) DEFAULT NULL COMMENT '机构头像',
  `jigou_email` varchar(200) DEFAULT NULL COMMENT '机构邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='机构';

/*Data for the table `jigou` */

insert  into `jigou`(`id`,`username`,`password`,`jigou_name`,`jigou_phone`,`jigou_photo`,`jigou_email`,`create_time`) values (1,'a1','123456','机构姓名1','17703786901','upload/jigou1.jpg','1@qq.com','2023-04-07 11:08:42'),(2,'a2','123456','机构姓名2','17703786902','upload/jigou2.jpg','2@qq.com','2023-04-07 11:08:42'),(3,'a3','123456','机构姓名3','17703786903','upload/jigou3.jpg','3@qq.com','2023-04-07 11:08:42');

/*Table structure for table `juanzeng_yuyue` */

DROP TABLE IF EXISTS `juanzeng_yuyue`;

CREATE TABLE `juanzeng_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `juanzeng_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `jigou_id` int(11) DEFAULT NULL COMMENT '机构',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `juanzeng_yuyue_text` longtext COMMENT '物资信息',
  `juanzeng_yuyue_shuliang` int(11) DEFAULT NULL COMMENT '捐赠数量 ',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `juanzeng_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `juanzeng_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '物资申报时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='物资捐赠';

/*Data for the table `juanzeng_yuyue` */

insert  into `juanzeng_yuyue`(`id`,`juanzeng_yuyue_uuid_number`,`jigou_id`,`wuzi_id`,`yonghu_id`,`juanzeng_yuyue_text`,`juanzeng_yuyue_shuliang`,`wuzi_types`,`juanzeng_yuyue_yesno_types`,`juanzeng_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1680836922685',1,1,1,'物资信息1',76,3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(2,'1680836922749',1,2,2,'物资信息2',251,2,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(3,'1680836922731',2,3,3,'物资信息3',334,4,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(4,'1680836922727',3,4,2,'物资信息4',105,4,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(5,'1680836922759',1,5,2,'物资信息5',312,3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(6,'1680836922678',1,6,3,'物资信息6',171,3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(7,'1680836922706',3,7,2,'物资信息7',82,3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(8,'1680836922741',3,8,1,'物资信息8',366,3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(9,'1680836922708',1,9,3,'物资信息9',111,2,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(10,'1680836922670',3,10,2,'物资信息10',152,2,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(11,'1680836922716',2,11,2,'物资信息11',27,1,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(12,'1680836922697',2,12,1,'物资信息12',500,4,3,'2023-04-07 11:53:34','2023-04-07 11:08:42','2023-04-07 11:08:42'),(13,'1680836922762',2,13,1,'物资信息13',86,2,3,'2023-04-07 11:45:52','2023-04-07 11:08:42','2023-04-07 11:08:42'),(14,'1680836922740',2,14,2,'物资信息14',108,4,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(15,'1680837980555',1,2,1,'手打大 ',50,1,2,'2023-04-07 11:41:18','2023-04-07 11:26:37','2023-04-07 11:26:37'),(16,'1680839574655',1,2,1,'捐赠给你 的物资',100,1,2,'2023-04-07 11:53:28','2023-04-07 11:53:12','2023-04-07 11:53:12');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','m1senb5xaxd15dv5uiz0zudiepq8s081','2023-04-07 11:11:00','2023-04-07 12:49:08'),(2,1,'admin','users','管理员','6uvfqwbtkd5navkkr7g12onwz509rbgu','2023-04-07 11:20:45','2023-04-07 12:57:39'),(3,1,'a1','jigou','机构','i9txvrxsejy95mpw717ayibgeklxnr8z','2023-04-07 11:26:14','2023-04-07 12:52:45');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-07 11:08:17');

/*Table structure for table `wuzi` */

DROP TABLE IF EXISTS `wuzi`;

CREATE TABLE `wuzi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_name` varchar(200) DEFAULT NULL COMMENT '物资名称  Search111 ',
  `wuzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '物资编号',
  `wuzi_photo` varchar(200) DEFAULT NULL COMMENT '物资照片',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_content` longtext COMMENT '物资介绍 ',
  `wuzi_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='物资';

/*Data for the table `wuzi` */

insert  into `wuzi`(`id`,`wuzi_name`,`wuzi_uuid_number`,`wuzi_photo`,`wuzi_types`,`wuzi_content`,`wuzi_delete`,`insert_time`,`create_time`) values (1,'物资名称1','1680836922676','upload/wuzi1.jpg',4,'物资介绍1',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(2,'物资名称2','1680836922716','upload/wuzi2.jpg',2,'物资介绍2',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(3,'物资名称3','1680836922684','upload/wuzi3.jpg',3,'物资介绍3',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(4,'物资名称4','1680836922696','upload/wuzi4.jpg',3,'物资介绍4',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(5,'物资名称5','1680836922749','upload/wuzi5.jpg',2,'物资介绍5',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(6,'物资名称6','1680836922764','upload/wuzi6.jpg',2,'物资介绍6',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(7,'物资名称7','1680836922762','upload/wuzi7.jpg',1,'物资介绍7',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(8,'物资名称8','1680836922761','upload/wuzi8.jpg',4,'物资介绍8',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(9,'物资名称9','1680836922760','upload/wuzi9.jpg',1,'物资介绍9',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(10,'物资名称10','1680836922736','upload/wuzi10.jpg',2,'物资介绍10',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(11,'物资名称11','1680836922684','upload/wuzi11.jpg',2,'物资介绍11',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(12,'物资名称12','1680836922713','upload/wuzi12.jpg',3,'物资介绍12',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(13,'物资名称13','1680836922684','upload/wuzi13.jpg',3,'物资介绍13',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(14,'物资名称14','1680836922729','upload/wuzi14.jpg',2,'物资介绍14',1,'2023-04-07 11:08:42','2023-04-07 11:08:42');

/*Table structure for table `wuzi_order` */

DROP TABLE IF EXISTS `wuzi_order`;

CREATE TABLE `wuzi_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='物资申请';

/*Data for the table `wuzi_order` */

insert  into `wuzi_order`(`id`,`wuzi_order_uuid_number`,`wuzi_id`,`yonghu_id`,`wuzi_order_types`,`insert_time`,`create_time`) values (1,'1680837453295',14,1,103,'2023-04-07 11:17:33','2023-04-07 11:17:33'),(2,'1680839391127',14,1,103,'2023-04-07 11:49:51','2023-04-07 11:49:51');

/*Table structure for table `wuzi_yuyue` */

DROP TABLE IF EXISTS `wuzi_yuyue`;

CREATE TABLE `wuzi_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `wuzi_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzi_yuyue_text` longtext COMMENT '物资信息',
  `wuzi_types` int(11) DEFAULT NULL COMMENT '物资类型 Search111',
  `wuzi_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `wuzi_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '物资申报时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='用户物资捐赠';

/*Data for the table `wuzi_yuyue` */

insert  into `wuzi_yuyue`(`id`,`wuzi_yuyue_uuid_number`,`wuzi_id`,`yonghu_id`,`wuzi_yuyue_text`,`wuzi_types`,`wuzi_yuyue_yesno_types`,`wuzi_yuyue_shenhe_time`,`insert_time`,`create_time`) values (1,'1680836922765',1,1,'物资信息1',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(2,'1680836922758',2,3,'物资信息2',2,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(3,'1680836922682',3,1,'物资信息3',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(4,'1680836922719',4,2,'物资信息4',2,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(5,'1680836922697',5,3,'物资信息5',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(6,'1680836922691',6,1,'物资信息6',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(7,'1680836922698',7,1,'物资信息7',2,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(8,'1680836922745',8,2,'物资信息8',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(9,'1680836922702',9,3,'物资信息9',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(10,'1680836922695',10,3,'物资信息10',1,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(11,'1680836922717',11,1,'物资信息11',4,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(12,'1680836922690',12,2,'物资信息12',4,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(13,'1680836922686',13,1,'物资信息13',1,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(14,'1680836922731',14,2,'物资信息14',3,1,NULL,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(15,'1680839478627',14,1,'捐赠物资  数量50',4,2,'2023-04-07 11:51:52','2023-04-07 11:51:32','2023-04-07 11:51:32');

/*Table structure for table `wuzifafang` */

DROP TABLE IF EXISTS `wuzifafang`;

CREATE TABLE `wuzifafang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `wuzi_id` int(11) DEFAULT NULL COMMENT '物资',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `wuzifafang_shuliang` int(11) DEFAULT NULL COMMENT '发放数量 ',
  `wuzifafang_content` longtext COMMENT '发放介绍 ',
  `wuzifafang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='发放';

/*Data for the table `wuzifafang` */

insert  into `wuzifafang`(`id`,`wuzi_id`,`yonghu_id`,`wuzifafang_shuliang`,`wuzifafang_content`,`wuzifafang_delete`,`insert_time`,`create_time`) values (1,1,3,476,'发放介绍1',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(2,2,2,209,'发放介绍2',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(3,3,1,326,'发放介绍3',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(4,4,3,254,'发放介绍4',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(5,5,1,360,'发放介绍5',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(6,6,1,390,'发放介绍6',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(7,7,3,291,'发放介绍7',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(8,8,2,145,'发放介绍8',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(9,9,3,403,'发放介绍9',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(10,10,3,181,'发放介绍10',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(11,11,2,282,'发放介绍11',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(12,12,1,110,'发放介绍12',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(13,13,1,179,'发放介绍13',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(14,14,1,259,'发放介绍14',1,'2023-04-07 11:08:42','2023-04-07 11:08:42'),(15,14,1,50,'<p>物资发放</p>',1,'2023-04-07 11:46:56','2023-04-07 11:46:56'),(16,14,1,20,'<p>手打撒 </p>',1,'2023-04-07 11:50:57','2023-04-07 11:50:57');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-04-07 11:08:42'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','2023-04-07 11:08:42'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',1,'3@qq.com','2023-04-07 11:08:42');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
