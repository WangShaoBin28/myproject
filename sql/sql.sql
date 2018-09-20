/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.6.37-log : Database - myproject
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myproject` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myproject`;

/*Table structure for table `t_demo` */

DROP TABLE IF EXISTS `t_demo`;

CREATE TABLE `t_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '唯一标示',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `parentId` int(11) DEFAULT NULL COMMENT '父id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `t_demo` */

insert  into `t_demo`(`id`,`name`,`parentId`) values 
(1,'一级1',NULL),
(2,'一级2',NULL),
(3,'二级1',1),
(4,'二级2',1),
(5,'二级3',1),
(6,'一级二级1',2),
(7,'一级二级2',2),
(8,'二级1二级1三级1',3),
(9,'一级2二级2三级2',3);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`name`,`age`) values 
(2,'张三','25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
