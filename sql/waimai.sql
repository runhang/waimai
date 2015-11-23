/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.6.21 : Database - db_waimai
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_waimai` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_waimai`;

/*Table structure for table `t_account` */

DROP TABLE IF EXISTS `t_account`;

CREATE TABLE `t_account` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `acname` varchar(11) DEFAULT NULL,
  `acpassword` varchar(110) DEFAULT NULL,
  `accreatetime` varchar(56) DEFAULT NULL,
  `aclogintime` varchar(56) DEFAULT NULL,
  `acloginip` varchar(56) DEFAULT NULL,
  `acnickname` varchar(110) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `t_account` */

insert  into `t_account`(`id`,`acname`,`acpassword`,`accreatetime`,`aclogintime`,`acloginip`,`acnickname`) values (12,'12312321','P3HrTY','2015-07-29 17:53',NULL,NULL,'12312321'),(13,'15670865343','e10adc3949ba59abbe56e057f20f883e','2015-07-29 22:38',NULL,NULL,'15670865343'),(14,'15654545454','zanQO9','2015-07-31 17:56',NULL,NULL,'15654545454');

/*Table structure for table `t_account_role` */

DROP TABLE IF EXISTS `t_account_role`;

CREATE TABLE `t_account_role` (
  `aid` bigint(20) NOT NULL,
  `rid` bigint(20) NOT NULL,
  PRIMARY KEY (`aid`,`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_account_role` */

insert  into `t_account_role`(`aid`,`rid`) values (12,2),(13,2),(13,3),(14,2);

/*Table structure for table `t_business` */

DROP TABLE IF EXISTS `t_business`;

CREATE TABLE `t_business` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bsname` varchar(130) DEFAULT NULL,
  `bsaddress` varchar(160) DEFAULT NULL,
  `bsman` varchar(110) DEFAULT NULL,
  `bstel` varchar(20) DEFAULT NULL,
  `bscontent` longtext,
  `bslng` varchar(60) DEFAULT NULL,
  `bslat` varchar(60) DEFAULT NULL,
  `bscardphoto` varchar(60) DEFAULT NULL,
  `bscardnum` varchar(70) DEFAULT NULL,
  `bscardaddress` varchar(160) DEFAULT NULL,
  `bstype` varchar(80) DEFAULT NULL,
  `acid` bigint(20) DEFAULT NULL,
  `bspoststartprice` float DEFAULT NULL,
  `bspostprice` int(11) DEFAULT NULL,
  `bsphoto` varchar(200) DEFAULT NULL,
  `bsamhourstart` varchar(80) DEFAULT NULL,
  `bsamhourend` varchar(80) DEFAULT NULL,
  `bspmhourstart` varchar(80) DEFAULT NULL,
  `bspmhourend` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_business` */

insert  into `t_business`(`id`,`bsname`,`bsaddress`,`bsman`,`bstel`,`bscontent`,`bslng`,`bslat`,`bscardphoto`,`bscardnum`,`bscardaddress`,`bstype`,`acid`,`bspoststartprice`,`bspostprice`,`bsphoto`,`bsamhourstart`,`bsamhourend`,`bspmhourstart`,`bspmhourend`) values (1,'开封烩面','理工大','陈润航','12312321',NULL,'113.280492','35.194766','FhNx7_ZsQaDChP88vFNBpXMFBhce','12321','理工大','中式',12,5,NULL,'FguOnUndQqeu4lzqiDxDxrnC--I0','10:00','14:00','18:00','22:30'),(2,'开封包子','河南理工大学东门','陈润航','15670865343','欢迎来订餐','113.280492','35.194765','FhNx7_ZsQaDChP88vFNBpXMFBhce','123213','理工大','中式',13,5,NULL,'FguOnUndQqeu4lzqiDxDxrnC--I0','10:00','14:00','18:00','22:30'),(3,'洧川羊肉汤','发的','发的','15654545454',NULL,'113.251791','35.216834','FhNx7_ZsQaDChP88vFNBpXMFBhce','1111111','理工大','台式',14,5,NULL,'FguOnUndQqeu4lzqiDxDxrnC--I0','10:00','14:00','18:00','22:30');

/*Table structure for table `t_food` */

DROP TABLE IF EXISTS `t_food`;

CREATE TABLE `t_food` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `fprice` float DEFAULT NULL,
  `fphoto` varchar(280) DEFAULT NULL,
  `findex` int(11) DEFAULT NULL,
  `fsales` tinyint(4) DEFAULT NULL,
  `ftid` bigint(20) DEFAULT NULL,
  `bsid` bigint(20) DEFAULT NULL,
  `fsalenum` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `t_food` */

insert  into `t_food`(`id`,`fname`,`fprice`,`fphoto`,`findex`,`fsales`,`ftid`,`bsid`,`fsalenum`) values (1,'开封灌汤包',20,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',20,1,2,2,10),(2,'小笼包',5,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',4,1,2,2,20),(3,'天津狗不理笼包',5,'FmGCj7l4HEsp-O-ZcD_yFq-ekG9S',5,1,2,2,10),(4,'肉包子',5,'FvuMwzGn-E9hCs3DfnsV3GSxE057',5,1,2,2,20),(8,'素包子',3,'FgBE8Xt9AoYO5DAR1eTq-7wCDpik',3,1,2,2,10),(9,'鸡蛋馅包子',1,'FkP6E8ZOKT0PTDn-5Iy1UVPqAf_n',33,1,2,2,10),(11,'大肉包子',3,'FvuMwzGn-E9hCs3DfnsV3GSxE057',3,1,2,2,10),(12,'顺丰包子',3,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',3,1,2,2,10),(13,'十足大包子',2,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',3,1,2,2,10),(14,'超大包子',3,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',3,1,2,2,10),(15,'包子套餐',10,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',30,1,2,2,10),(16,'包子套餐2',35,'FkP6E8ZOKT0PTDn-5Iy1UVPqAf_n',35,1,2,2,10),(17,'鲜汤烩面',7,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',35,1,3,1,10),(18,'羊肉烩面',7,'Fhsp08SBHdKb2qvWY9kQMHCKmWN-',35,1,3,1,10),(19,'鸡蛋素包子',1,'FiTTI1dcPoEBGs_fasaHVcW5aMRR',30,1,2,2,10);

/*Table structure for table `t_foodtype` */

DROP TABLE IF EXISTS `t_foodtype`;

CREATE TABLE `t_foodtype` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ftname` varchar(80) DEFAULT NULL,
  `ftindex` int(11) DEFAULT NULL,
  `bsid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_foodtype` */

insert  into `t_foodtype`(`id`,`ftname`,`ftindex`,`bsid`) values (2,'包子',20,2),(3,'面食',20,1);

/*Table structure for table `t_order` */

DROP TABLE IF EXISTS `t_order`;

CREATE TABLE `t_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ordercode` varchar(130) DEFAULT NULL,
  `orderman` varchar(160) DEFAULT NULL,
  `ordertel` varchar(50) DEFAULT NULL,
  `orderprice` float DEFAULT NULL,
  `orderpostprice` float DEFAULT NULL,
  `orderaddress` varchar(200) DEFAULT NULL,
  `ordercontent` varchar(800) DEFAULT NULL,
  `orderpaytype` varchar(80) DEFAULT NULL,
  `orderstate` varchar(70) DEFAULT NULL,
  `ordercreatetime` varchar(56) DEFAULT NULL,
  `acid` bigint(20) DEFAULT NULL,
  `bsid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_ordercode` (`ordercode`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

/*Data for the table `t_order` */

insert  into `t_order`(`id`,`ordercode`,`orderman`,`ordertel`,`orderprice`,`orderpostprice`,`orderaddress`,`ordercontent`,`orderpaytype`,`orderstate`,`ordercreatetime`,`acid`,`bsid`) values (4,'D1508060012111211U13B2','理工大','15670865343',25,NULL,'理工大',NULL,'货到付款','完成订单','2015-08-06 00:12',13,2),(5,'D1508061037443744U13B2','陈润航','15670865343',120,NULL,'理工大',NULL,'货到付款','取消订单','2015-08-06 10:37',13,2),(6,'D1508061040254025U13B2','陈润航','15670865343',120,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 10:40',13,2),(7,'D1508061041334133U13B2','陈润航','15670865343',120,NULL,'理工大',NULL,'货到付款','取消订单','2015-08-06 10:41',13,2),(8,'D1508061042184218U13B2','陈润航','15670865343',120,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 10:42',13,2),(9,'D150806104505455U13B2','陈润航','15670865343',120,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 10:45',13,2),(10,'D1508061046154615U13B2','陈润航','15670865343',120,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 10:46',13,2),(11,'D1508061053455345U13B2','陈润航','15670865343',40,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 10:53',13,2),(12,'D1508061055285528U13B2','陈润航','15670865343',40,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 10:55',33,2),(13,'D15080611050353U13B2','陈润航','15670865343',10,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 11:05',13,2),(14,'D150806110828828U13B2','陈润航','15670865343',10,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 11:08',13,2),(15,'D1508061115111511U13B2','陈润航','15670865343',15,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 11:15',13,2),(16,'D1508061124212421U13B2','陈润航','15670865343',15,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 11:24',13,2),(17,'D1508061127272727U13B2','陈润航','15670865343',40,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 11:27',13,2),(18,'D1508061130163016U13B2','陈润航','15670865343',40,NULL,'理工大',NULL,'货到付款','等待确认','2015-08-06 11:30',13,2);

/*Table structure for table `t_orderitem` */

DROP TABLE IF EXISTS `t_orderitem`;

CREATE TABLE `t_orderitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(160) DEFAULT NULL,
  `itemprice` float DEFAULT NULL,
  `itemnum` int(11) DEFAULT NULL,
  `orderid` bigint(20) DEFAULT NULL,
  `foodid` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `t_orderitem` */

insert  into `t_orderitem`(`id`,`itemname`,`itemprice`,`itemnum`,`orderid`,`foodid`) values (1,'天津狗不理笼包',5,5,4,3),(2,'开封灌汤包',20,6,5,1),(3,'开封灌汤包',20,6,6,1),(4,'开封灌汤包',20,6,7,1),(5,'开封灌汤包',20,6,8,1),(6,'开封灌汤包',20,6,9,1),(7,'开封灌汤包',20,6,10,1),(8,'小笼包',5,1,11,2),(9,'肉包子',5,7,11,4),(10,'小笼包',5,1,12,2),(11,'肉包子',5,7,12,4),(12,'天津狗不理笼包',5,2,13,3),(13,'天津狗不理笼包',5,2,14,3),(14,'顺丰包子',3,5,15,12),(15,'顺丰包子',3,5,16,12),(16,'开封灌汤包',20,2,17,1),(17,'开封灌汤包',20,2,18,1);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(130) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`rolename`) values (1,'系统管理员'),(2,'商家'),(3,'普通用户');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
