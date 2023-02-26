/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.0.96-community-nt : Database - flowermall
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flowermall` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `flowermall`;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `username` varchar(255) default NULL COMMENT '用户名',
  `password` varchar(255) default NULL COMMENT '密码',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='管理员';

/*Data for the table `admins` */

insert  into `admins`(`id`,`username`,`password`) values (1,'admin','tuShOfiBrA8+br7ENrMS8A=='),(2,'rwj','HAMVRZRssPCADKqGjGWJtQ=='),(3,'root','tQWrl2xG++eMIgcCrWzv0Q==');

/*Table structure for table `carts` */

DROP TABLE IF EXISTS `carts`;

CREATE TABLE `carts` (
  `id` int(11) NOT NULL auto_increment,
  `amount` int(11) NOT NULL default '0' COMMENT '数量',
  `good_id` int(11) NOT NULL COMMENT '商品ID',
  `user_id` int(11) NOT NULL default '0' COMMENT '用户ID',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='购物车';

/*Data for the table `carts` */

insert  into `carts`(`id`,`amount`,`good_id`,`user_id`) values (2,1,51,11);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) unsigned NOT NULL auto_increment COMMENT 'ID',
  `cover` varchar(255) default NULL COMMENT '封面',
  `name` varchar(255) default NULL COMMENT '名称',
  `intro` varchar(255) default NULL COMMENT '介绍',
  `spec` varchar(255) default NULL COMMENT '规格',
  `price` int(11) NOT NULL default '0' COMMENT '价格',
  `stock` int(11) NOT NULL default '0' COMMENT '库存',
  `sales` int(11) NOT NULL default '0' COMMENT '销量',
  `content` text COMMENT '详情',
  `type_id` int(11) NOT NULL default '0' COMMENT '分类ID',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='商品';

/*Data for the table `goods` */

insert  into `goods`(`id`,`cover`,`name`,`intro`,`spec`,`price`,`stock`,`sales`,`content`,`type_id`) values (40,'../upload/20220611142957912.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',99,5,0,'',1),(41,'../upload/20220611142944445.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',66,3,2,'<img src=\"/upload/20200516130629327.jpg\" alt=\"\" />',1),(42,'../upload/20220611142928859.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',25,98,2,'',3),(43,'../upload/20220611142915904.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',20,99,1,'<img src=\"/upload/20200516131153036.jpg\" alt=\"\" />',3),(44,'../upload/20220611142905741.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',10,99,1,'',3),(45,'../upload/20220611142852752.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',100,100,0,'<img src=\"/upload/20200516131637620.jpg\" alt=\"\" />',6),(46,'../upload/20220611142825275.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',10,98,2,'',5),(47,'../upload/20220611142838241.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',288,50,0,'',2),(48,'../upload/20220611142809564.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',99,50,0,'<img src=\"/upload/20200516132225723.jpg\" alt=\"\" /><img src=\"/upload/20200516132232047.jpg\" alt=\"\" />',2),(49,'../upload/20220611142755947.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',555,100,0,'',2),(50,'../upload/20220611142744750.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',366,50,0,'',2),(51,'../upload/20220611142734566.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',999,73,27,'',2),(52,'../upload/20220611142719506.jpg','有红玫瑰、','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',100,99,1,'玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。',5),(53,'../upload/20220611142658568.jpg','有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',100,96,4,'',1),(54,'../upload/20220611142645020.jpg','紫玫瑰等，这些都代表美好的爱情。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',599,99,1,'玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。',5),(55,'../upload/20220611142624804.jpg','有红玫瑰、粉','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',298,49,1,'玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。',4),(56,'../upload/20220611142604991.jpg','百合','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',100,95,5,'有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。',2),(57,'../upload/20220611142541058.jpg','康乃馨','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',99,87,13,'',3),(58,'../upload/20220611142519496.jpg','粉玫瑰','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',49,100,0,'',1),(59,'../upload/20220611142454090.jpg','向日葵','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',99,98,2,'',6),(60,'../upload/20220611142434273.jpg','有红玫瑰、粉玫瑰。','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',239,3,2,'<div id=\"page\">\r\n	<div id=\"content\">\r\n		<div id=\"detail\">\r\n			<div id=\"J_DetailMeta\" class=\"tm-detail-meta tm-clear\">\r\n				<div class=\"tm-clear\">\r\n					<div class=\"tb-property\">\r\n						<div class=\"tb-wrap\">\r\n							<div class=\"tb-detail-hd\">\r\n								<h1>\r\n									<br />\r\n								</h1>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			</div>\r\n		</div>\r\n	</div>\r\n</div>',2),(61,'../upload/20220611142411224.jpg','有红玫瑰、','玫瑰花的花语是爱情，如果你喜欢一个人就可以送她玫瑰花，这代表你的爱，预示着想和对方厮守终生。玫瑰花是女神节、情人节、七夕节、圣诞节、生日、纪念日的常见花礼，一般是男生送给女生，不过也有女生送男生的，常见的有红玫瑰、粉玫瑰、白玫瑰、香槟玫瑰、蓝玫瑰、紫玫瑰等，这些都代表美好的爱情。','束',1212,1221,0,'你好！',6);

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `price` int(11) NOT NULL default '0' COMMENT '购买时价格',
  `amount` int(11) NOT NULL default '0' COMMENT '购买数量',
  `order_id` int(11) NOT NULL default '0' COMMENT '订单ID',
  `good_id` int(11) NOT NULL default '0' COMMENT '商品ID',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单项';

/*Data for the table `items` */

insert  into `items`(`id`,`price`,`amount`,`order_id`,`good_id`) values (58,10,1,46,46),(59,108,1,47,61),(60,999,1,48,51),(61,108,1,49,61),(62,99,1,50,59),(63,239,1,50,60),(64,108,1,50,61),(65,599,1,50,54),(66,298,1,50,55),(67,100,1,50,56),(68,108,1,51,61),(69,999,1,51,51),(70,99,1,51,57),(71,66,1,51,41),(72,108,1,52,61),(73,999,1,52,51),(74,108,1,53,61),(75,108,1,54,61),(76,239,1,55,60),(77,108,5,56,61),(78,999,4,56,51),(79,99,3,56,57),(80,108,3,57,61),(81,999,3,58,51),(82,99,2,58,57),(83,999,4,59,51),(84,999,1,60,51),(85,999,1,61,51),(86,999,1,62,51),(87,99,1,62,57);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `total` int(11) NOT NULL default '0' COMMENT '订单金额',
  `amount` int(11) NOT NULL default '0' COMMENT '商品总数',
  `status` tinyint(4) NOT NULL default '0' COMMENT '订单状态(1未付款/2已付款/3已发货/4已完成)',
  `paytype` tinyint(4) NOT NULL default '0' COMMENT '支付方式 (1微信/2支付宝/3积分)',
  `name` varchar(255) default NULL COMMENT '收货人',
  `phone` varchar(255) default NULL COMMENT '收货电话',
  `address` varchar(255) default NULL COMMENT '收货地址',
  `systime` datetime default NULL COMMENT '下单时间',
  `user_id` int(11) NOT NULL default '0' COMMENT '下单用户ID',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`total`,`amount`,`status`,`paytype`,`name`,`phone`,`address`,`systime`,`user_id`) values (46,10,1,2,1,'3213','231123','13212','2021-08-03 17:01:56',3),(47,108,1,1,0,NULL,NULL,NULL,'2021-08-08 11:20:42',4),(48,999,1,2,1,'faf','178947891738','??','2021-08-08 11:21:26',4),(49,108,1,2,1,'faf','178947891738','??','2021-09-09 00:37:32',4),(50,1443,6,1,0,NULL,NULL,NULL,'2021-09-10 22:37:06',4),(51,1272,4,2,2,'faf','178947891738','??','2021-09-10 22:40:46',4),(52,1107,2,3,3,'faf','178947891738','??','2021-09-10 22:41:39',4),(53,108,1,3,3,'faf','178947891738','??','2021-09-26 23:15:58',4),(54,108,1,3,1,'123','178947891738','2313','2021-10-13 18:29:10',5),(55,239,1,3,2,'faf','178947891738','111','2021-11-02 16:04:35',4),(56,4833,3,3,1,'faf','178947891738','??','2021-11-02 16:05:35',4),(57,324,1,3,1,'123','178947891738','2313','2021-11-10 12:23:45',5),(60,999,1,2,1,'123','124','gf','2021-11-20 11:02:59',10),(61,999,1,2,1,'123','12313123123','gfsa','2022-05-09 12:25:19',12),(62,1098,2,2,1,'1231','1819823901809','丽江市玉龙县丽江古城以北15公里处（玉龙雪山风景区）','2022-06-11 14:37:58',13);

/*Table structure for table `tops` */

DROP TABLE IF EXISTS `tops`;

CREATE TABLE `tops` (
  `id` int(11) NOT NULL auto_increment,
  `type` tinyint(4) NOT NULL default '0' COMMENT '推荐类型(1今日推荐)',
  `good_id` int(11) NOT NULL default '0' COMMENT '商品ID',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='推荐商品';

/*Data for the table `tops` */

insert  into `tops`(`id`,`type`,`good_id`) values (20,1,40),(21,1,42),(22,1,41),(23,1,53),(24,1,57),(27,1,51),(28,1,61),(29,1,60);

/*Table structure for table `types` */

DROP TABLE IF EXISTS `types`;

CREATE TABLE `types` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `name` varchar(50) default NULL COMMENT '名称',
  `num` int(11) default '0' COMMENT '排序号 (从小到大)',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='分类';

/*Data for the table `types` */

insert  into `types`(`id`,`name`,`num`) values (1,'玫瑰',1),(2,'百合',2),(3,'康乃馨',3),(4,'非洲菊',4),(5,'满天星',5),(6,'向日葵',1);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment COMMENT 'ID',
  `username` varchar(255) default NULL COMMENT '用户名',
  `password` varchar(255) default NULL COMMENT '密码',
  `name` varchar(255) default NULL COMMENT '收货人',
  `phone` varchar(255) default NULL COMMENT '收货电话',
  `address` varchar(255) default NULL COMMENT '收货地址',
  `point` double(11,2) unsigned zerofill default '00000000.00' COMMENT '积分',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`name`,`phone`,`address`,`point`) values (1,'user','R8FVKb/D6MgqaUITDhjuYQ==','','','',00000214.12),(2,'rwj','HAMVRZRssPCADKqGjGWJtQ==','','','',00000092.00),(3,'m','yJOXpxCuYkm+zIQrRHPdpQ==','3213','231123','13212',00000000.00),(4,'fa','yJOXpxCuYkm+zIQrRHPdpQ==','faf','178947891738','??',214259529.00),(5,'book','zMsYsMwmP0yYC/OpV4G28A==','123','178947891738','2313',246262630.00),(6,'jsp','+UiN0G7qpyjKHQeh7ZMLjw==','jsp','3124151515','asfafsa',00000000.00),(7,'fasa','yJOXpxCuYkm+zIQrRHPdpQ==','123','1231','2313',00000000.00),(8,'张三','smIIaSf2syGZVSnR1Mv17Q==','张三','188188188818','北京',00000070.00),(9,'胡歌','yJOXpxCuYkm+zIQrRHPdpQ==','花海','12313141','14当时的发',00000000.00),(10,'bbg','yJOXpxCuYkm+zIQrRHPdpQ==','123','124','gf',00000009.00),(11,'bb','vxKWMpK4rWRIUcL+lyD9mg==','bb','31321','sdfgd',00000000.00),(12,'admin','yJOXpxCuYkm+zIQrRHPdpQ==','123','12313123123','gfsa',00000009.00),(13,'zs','yJOXpxCuYkm+zIQrRHPdpQ==','1231','1819823901809','丽江市玉龙县丽江古城以北15公里处（玉龙雪山风景区）',00000010.00);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
