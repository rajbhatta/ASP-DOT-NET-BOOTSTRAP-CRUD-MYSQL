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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_user` */

insert  into `tbl_user`(`id`,`name`,`email`,`address`,`address2`,`city`,`province`,`postalcode`,`gender`,`availability`,`username`,`password`,`comment`) values 
(33,'Michel Brat','michel@gmail.com','110 North East','','Edmonton','1','PMP 1MP','','1/31/2021','michel@gmail.com','C7-52-45-B3-94-72-62-58-73-5B-89-05-6F-3A-72-8A','Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.'),
(34,'Courtney Cui','courtney@gmail.com','120 SouthEast','','Edmonton','1','MPM M1P','','1/31/2021','court123','F2-24-9E-3A-1D-A6-53-E0-17-8B-55-0C-AB-E1-7E-18','Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.'),
(35,'Bryan Loh','bryan@gmail.com','120 Test Street','','Kelowna','2','MPM 1MP','','1/27/2021','bran123','20-E2-B3-CF-4A-90-98-A0-7D-B5-C5-EB-43-B8-1E-4A','Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.'),
(36,'Alfred Bergen','alfred@gmail.com','110 West Kelowna','','Kelowna','2','MEM MEM','','1/28/2021','alfred@gmail','39-C6-03-46-FC-C4-59-A6-87-09-6F-3F-7A-9C-D9-65','Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.'),
(37,'James Bhatta','james@gmail.com','978 Carrington Road','','Kelowna','2','KLK PNP','','1/25/2021','james12$','F2-50-E2-27-B8-A2-06-E1-9E-BA-B4-FD-AB-53-75-19','Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.Seek the unforgettable across unique destinations. Claim the adventure.');

/*Table structure for table `tbl_user_programming_skills` */

DROP TABLE IF EXISTS `tbl_user_programming_skills`;

CREATE TABLE `tbl_user_programming_skills` (
  `upsid` int NOT NULL AUTO_INCREMENT,
  `uid` int NOT NULL,
  `skills` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`upsid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `tbl_user_programming_skills` */

insert  into `tbl_user_programming_skills`(`upsid`,`uid`,`skills`) values 
(3,32,'Python Java'),
(4,33,'Frontend Development Dot NET'),
(5,34,'Machine Learning Frontend Development '),
(6,35,'JavaBasic Computer Skills'),
(7,36,'Machine Learning Frontend Development '),
(8,37,'Machine Learning Python ');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
