/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.23 : Database - cruddb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cruddb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `cruddb`;

/*Table structure for table `tbl_user` */

DROP TABLE IF EXISTS `tbl_user`;

CREATE TABLE `tbl_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `address2` varchar(200) DEFAULT NULL,
  `city` varchar(300) DEFAULT NULL,
  `province` varchar(100) DEFAULT NULL,
  `postalcode` varchar(200) DEFAULT NULL,
  `gender` varchar(200) DEFAULT NULL,
  `availability` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`name`,`email`,`address`,`address2`,`city`,`province`,`postalcode`,`gender`,`availability`,`username`,`password`,`comment`) values 
(22,'Shamesdfulk','gmail.com','Kathmandu Nepal1','','Nepal','1','V1P 1T3','','1/17/2021','test1234','81-DC-9B-DB-52-D0-4D-C2-00-36-DB-D8-31-3E-D0-55','This is test'),
(23,'niraj','niraj@gmail.com','Kathmandu Nepal','','Nepal','1','V1P 1T3','','1/1/0001','niraj','AC-8C-97-07-8A-30-B5-77-B7-0F-78-46-1D-45-BA-03','gcdygvtf'),
(24,'ball parshad','ballprashal@gmail.com','ballpur','ballpur1','ballnagar','2','bybybyg','','1/1/0001','ball','9D-B9-1F-ED-E3-16-DB-D3-47-64-28-6E-77-F8-D5-20','yb dcvh hvk'),
(25,'cat maya','catmaya@gmail.com','catnagar','catnagar1','catpur','2','hbgvm','','1/1/0001','cat','13-09-0A-7E-9B-A3-BD-7C-23-86-C2-B6-FA-F2-98-38',' G B G JFFCUH V C '),
(28,'PP','PP@gmail.com','PPP','','Kelowna','2','PPP PPP','','1/31/2021','test@123','C7-11-47-16-40-A0-8F-AB-84-BC-BB-E8-61-ED-A4-40','drsdfsdf');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
