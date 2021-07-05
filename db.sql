/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - sentiment_tweets
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `sentiment_tweets`;

USE `sentiment_tweets`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `analysis` */

DROP TABLE IF EXISTS `analysis`;

CREATE TABLE `analysis` (
  `topic` varchar(100) NOT NULL,
  `subtopic` varchar(100) NOT NULL,
  `tot` varchar(100) DEFAULT NULL,
  `pos` varchar(100) DEFAULT NULL,
  `neg` varchar(100) DEFAULT NULL,
  `nue` varchar(100) DEFAULT NULL,
  `fileid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`topic`,`subtopic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `tag_img` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `topic` */

DROP TABLE IF EXISTS `topic`;

CREATE TABLE `topic` (
  `topic` varchar(300) NOT NULL,
  PRIMARY KEY (`topic`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `tweets` */

DROP TABLE IF EXISTS `tweets`;

CREATE TABLE `tweets` (
  `sno` int(11) DEFAULT NULL,
  `topic` varchar(110) DEFAULT NULL,
  `user_` varchar(110) NOT NULL DEFAULT '',
  `tweet` varchar(500) NOT NULL,
  `pos` double DEFAULT NULL,
  `neg` double DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
