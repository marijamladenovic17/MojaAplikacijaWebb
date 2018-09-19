/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 10.1.26-MariaDB : Database - email_validation
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`email_validation` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `email_validation`;

/*Table structure for table `usertable` */

DROP TABLE IF EXISTS `usertable`;

CREATE TABLE `usertable` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int(1) DEFAULT '0',
  `imeRoditelja` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jmbg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pol` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobilni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fiksni` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `usertable` */

insert  into `usertable`(`id`,`fname`,`lname`,`email`,`pword`,`hash`,`active`,`imeRoditelja`,`jmbg`,`pol`,`mobilni`,`fiksni`) values 
(28,'joka','mladenovic','marija22mladenovic@gmail.com','c13f141ad74cd2b0abb48f19c9b03619','9af75821acd45344eb2447efe25a0cf1',1,'joka','99999999','Zenski','0656565656','01256589'),
(29,'Spasoje','Globarevic','marija22mladenovic@gmail.com','f1089a1833fe378d5b579ea09274f371','ea67f376422ba91f47e0a7ff8e6a42b8',1,'Mirko','938946358643','Muski','830875438','837287558'),
(30,'neko','neko','marija22mladenovic@gmail.com','c13f141ad74cd2b0abb48f19c9b03619','ab085f0e2dceaa4dc1a90f6c800a56b5',1,'joka','708459','Zenski','87325789245','8939557324'),
(31,'Jovana','Filipovic','jovana.nera@gmail.com','f1089a1833fe378d5b579ea09274f371','f49ee9a7cd261330ea25bd8390e4dce0',1,'Aleksandar','1526545653226','Zenski','0656565656','01256589');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
