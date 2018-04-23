/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.18-log : Database - magazine
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`magazine` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `magazine`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values (8,'Adidas'),(9,'Reebok'),(10,'NIke');

/*Table structure for table `category_pictures` */

DROP TABLE IF EXISTS `category_pictures`;

CREATE TABLE `category_pictures` (
  `category_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`picture_id`),
  KEY `FKabtg0jqnewgk4o084ovfq9ku8` (`picture_id`),
  CONSTRAINT `FKabtg0jqnewgk4o084ovfq9ku8` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`),
  CONSTRAINT `FKhmtasy0kxwh8ssh1c6vc9wa8l` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `category_pictures` */

insert  into `category_pictures`(`category_id`,`picture_id`) values (8,30),(8,31),(8,32),(9,33),(9,34),(9,35),(10,36),(10,37),(10,38);

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` text,
  `name` varchar(255) DEFAULT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `goods` */

insert  into `goods`(`id`,`description`,`name`,`pic_url`,`price`) values (14,'djsa','botas',NULL,456521),(15,'klxncls','botas',NULL,55465);

/*Table structure for table `goods_categories` */

DROP TABLE IF EXISTS `goods_categories`;

CREATE TABLE `goods_categories` (
  `goods_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  KEY `FKksdxd8ktjo5fbvomrc3x4gnf5` (`category_id`),
  KEY `FKmkcyh7hk9qfyvxq20rl6bp2kd` (`goods_id`),
  CONSTRAINT `FKksdxd8ktjo5fbvomrc3x4gnf5` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FKmkcyh7hk9qfyvxq20rl6bp2kd` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_categories` */

insert  into `goods_categories`(`goods_id`,`category_id`) values (14,8),(15,9);

/*Table structure for table `goods_pictures` */

DROP TABLE IF EXISTS `goods_pictures`;

CREATE TABLE `goods_pictures` (
  `goods_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  KEY `FK5rx2xc53jphwuoxnv32mtmpsa` (`goods_id`),
  KEY `FKn7wq2mt90yi6dpfmwg9vlgrc3` (`picture_id`),
  CONSTRAINT `FK5rx2xc53jphwuoxnv32mtmpsa` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `FKn7wq2mt90yi6dpfmwg9vlgrc3` FOREIGN KEY (`picture_id`) REFERENCES `picture` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `goods_pictures` */

insert  into `goods_pictures`(`goods_id`,`picture_id`) values (14,39),(14,40),(14,41),(14,42),(14,43),(15,44),(15,45),(15,46),(15,47),(15,48);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values (1);

/*Table structure for table `picture` */

DROP TABLE IF EXISTS `picture`;

CREATE TABLE `picture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

/*Data for the table `picture` */

insert  into `picture`(`id`,`name`) values (30,'15232944047241200px-Adidas_Logo.svg.png'),(31,'1523294404813B27140_01_standard.jpg'),(32,'1523294404901images123.png'),(33,'1523294427495images (2).jpg'),(34,'1523294427549images (3).jpg'),(35,'1523294427682neighborhood-adidas-nmd-1.jpg'),(36,'1523294535757165.jpg'),(37,'1523294535812images153.png'),(38,'1523294535890nikemag-hyperadapt-3x2-2016.jpg'),(39,'1523294572837AQ0196_00_plp_standard.jpg'),(40,'1523294572886B27140_01_standard.jpg'),(41,'1523294572951BB6220_00_plp_standard.jpg'),(42,'1523294573075images123.png'),(43,'1523294573172&#1041;&#1077;&#1079; &#1085;&#1072;&#1079;&#1074;&#1072;&#1085;&#1080;&#1103; (1).jpg'),(44,'1523294605349images.jpg'),(45,'1523294605407REE2621_1000_1.jpg'),(46,'1523294605475REE2621_1000_3.jpg'),(47,'1523294605596s-l300.jpg'),(48,'1523294605675&#1041;&#1077;&#1079; &#1085;&#1072;&#1079;&#1074;&#1072;&#1085;&#1080;&#1103;.jpg');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `pic_url` varchar(255) DEFAULT NULL,
  `rec_code` varchar(255) DEFAULT NULL,
  `rec_code_date` datetime DEFAULT NULL,
  `surname` varchar(255) NOT NULL,
  `user_type` enum('USER','ADMIN') DEFAULT NULL,
  `verify` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`email`,`name`,`password`,`pic_url`,`rec_code`,`rec_code_date`,`surname`,`user_type`,`verify`) values (8,'anun@mail.ru','Sevak','$2a$10$xLX/gkxrx.qofJvdPWDQU.TWziXV2M0R0dyqqXsfyWd6ckQu1HjIe','1523294282731_sevo.jpg',NULL,NULL,'Mkrtchyan','ADMIN',''),(9,'azganun@mail.ru','anun','$2a$10$caMGRMb1XjqL1ixR1smKzO2mYfIVPvliFAoAyNWnd8PttaS920I9W','1523535188088_29261126_1656777857724675_4529725007193964544_n.jpg',NULL,NULL,'azganun','USER',''),(10,'aaaa@mail.ru','ghfhgh','$2a$10$W9n.FWnFtHYbXCsop9jeAe1zTmgs/kWS4UHlMb5PqTVK5vAea7FfG','1523535355521_29261126_1656777857724675_4529725007193964544_n.jpg',NULL,NULL,'fghg','USER','');

/*Table structure for table `wish` */

DROP TABLE IF EXISTS `wish`;

CREATE TABLE `wish` (
  `user_id` int(11) NOT NULL,
  `goods_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`goods_id`),
  KEY `FKal83uehww7mp34w5taytkgtn1` (`goods_id`),
  CONSTRAINT `FKal83uehww7mp34w5taytkgtn1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`id`),
  CONSTRAINT `FKkqi4lso34o5xjkhiw71uadwvu` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `wish_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `wish` */

insert  into `wish`(`user_id`,`goods_id`) values (9,14),(9,15);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
