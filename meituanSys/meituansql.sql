/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 5.7.20 : Database - meituan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meituan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meituan`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `cAddressId` int(11) NOT NULL AUTO_INCREMENT COMMENT '顾客地址编号',
  `custId` varchar(11) NOT NULL COMMENT '顾客账号',
  `cLinkmanName` varchar(15) DEFAULT NULL COMMENT '地址联系人姓名',
  `cPhone` varchar(11) DEFAULT NULL COMMENT '地址联系人电话',
  `cPostNum` varchar(10) DEFAULT NULL COMMENT '邮政编码',
  `cAddress` varchar(50) DEFAULT NULL COMMENT '具体地址',
  PRIMARY KEY (`cAddressId`),
  KEY `custId` (`custId`),
  CONSTRAINT `custId` FOREIGN KEY (`custId`) REFERENCES `customer` (`custId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `address` */

/*Table structure for table `business` */

DROP TABLE IF EXISTS `business`;

CREATE TABLE `business` (
  `bId` varchar(20) NOT NULL,
  `bPassword` varchar(30) DEFAULT NULL,
  `bPhone` varchar(30) DEFAULT NULL,
  `bPhoneAddress` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`bId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `business` */

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `custId` varchar(11) NOT NULL COMMENT '顾客编号',
  `custPassword` varchar(20) NOT NULL DEFAULT '00000000' COMMENT '顾客密码',
  `custName` varchar(20) DEFAULT NULL COMMENT '顾客昵称',
  `custBirth` varchar(20) DEFAULT NULL COMMENT '顾客生日',
  `custHead` varchar(50) DEFAULT NULL COMMENT '头像地址',
  PRIMARY KEY (`custId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `menuId` varchar(20) NOT NULL COMMENT '菜品编号',
  `businessId` varchar(11) DEFAULT NULL COMMENT '商家账号',
  `menuName` varchar(20) DEFAULT NULL COMMENT '菜品名称',
  `menuPrice` double DEFAULT NULL COMMENT '菜品单价',
  `menuType` varchar(20) DEFAULT NULL COMMENT '菜品类别',
  `menuPicture` varchar(50) DEFAULT NULL COMMENT '菜品图片',
  `menuDiscribe` varchar(200) DEFAULT NULL COMMENT '菜品描述',
  `menuSales` varchar(20) DEFAULT NULL COMMENT '月销售量',
  PRIMARY KEY (`menuId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `menu` */

/*Table structure for table `orderitem` */

DROP TABLE IF EXISTS `orderitem`;

CREATE TABLE `orderitem` (
  `orderId` varchar(20) NOT NULL COMMENT '订单号',
  `menuId` varchar(20) NOT NULL COMMENT '菜品编号',
  `number` int(11) NOT NULL COMMENT '菜品的数量',
  PRIMARY KEY (`orderId`,`menuId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `menuId` FOREIGN KEY (`menuId`) REFERENCES `menu` (`menuId`),
  CONSTRAINT `orderId` FOREIGN KEY (`orderId`) REFERENCES `orders` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orderitem` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `orderId` varchar(20) NOT NULL COMMENT '订单号',
  `orderTime` time DEFAULT NULL COMMENT '点单时间',
  `allPrice` double DEFAULT NULL COMMENT '订单价格',
  `orderRemark` varchar(200) DEFAULT NULL COMMENT '订单备注',
  `cAddressId` int(11) DEFAULT NULL COMMENT '地址编号',
  PRIMARY KEY (`orderId`),
  KEY `cAddressId` (`cAddressId`),
  CONSTRAINT `cAddressId` FOREIGN KEY (`cAddressId`) REFERENCES `address` (`cAddressId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `orders` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
