/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - car_sales
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `car_sales`;

USE `car_sales`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `addcar` */

DROP TABLE IF EXISTS `addcar`;

CREATE TABLE `addcar` (
  `cid` int(10) NOT NULL,
  `year_` int(10) DEFAULT NULL,
  `brand` varchar(20) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `kmdriven` double DEFAULT NULL,
  `owner` varchar(30) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `locality` varchar(50) DEFAULT NULL,
  `exprize` double DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mno` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `desc_` varchar(3000) DEFAULT NULL,
  `s_email` varchar(100) DEFAULT NULL,
  `cdate` varchar(20) DEFAULT NULL,
  `cstatus` varchar(20) DEFAULT NULL,
  `cstatus1` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addcar` */

insert  into `addcar`(`cid`,`year_`,`brand`,`color`,`kmdriven`,`owner`,`city`,`locality`,`exprize`,`name`,`mno`,`image`,`desc_`,`s_email`,`cdate`,`cstatus`,`cstatus1`) values (1,2017,'Benz','White',1000,'First','Hyderabad','Ameerpet',25000000,'Ali','9052830803','benz.jpg','new car i want  to go abroad so iwant to sell it.','alisir@gmail.com','07-11-2017','AddCar','CAR'),(2,2017,'Bmw','Blue',15000,'Second','Chennai','Ameerpet',5000000,'Santhosh','9014170973','bmw.jpg','new car just one month old','swamisir@gmail.com','07-11-2017','AddCar','CAR'),(3,2017,'Range Rover','Black',1500,'First','Bangalore','Ameerpet',55000000,'Sajid','9985714374','car1.jpg','sports car','sajid24x7@gmail.com','07-11-2017','AddCar','CAR'),(4,2016,'Maruthi','Blue',1000000,'First','Hyderabad','Ameerpet',350000,'Ali','9052830803','swift.jpg','Very good condition.\r\ninterested people please contact. ','alisir@gmail.com','08-11-2017','AddCar','CAR'),(5,2016,'Honda','White',12000,'First','Bangalore','Ameerpet',1200000,'Ali','9052830803','Honda.jpg','just one year old','alisir@gmail.com','08-11-2017','AddCar','CAR'),(6,2017,'Hyundai','White',100,'First','Bangalore','Ameerpet',1500000,'Swami','9014170973','hyundai.jpg','one month old.','swamisir@gmail.com','08-11-2017','AddCar','CAR');

/*Table structure for table `buyer_reg` */

DROP TABLE IF EXISTS `buyer_reg`;

CREATE TABLE `buyer_reg` (
  `b_id` int(10) DEFAULT NULL,
  `b_name` varchar(30) DEFAULT NULL,
  `b_email` varchar(100) NOT NULL,
  `b_pass` varchar(20) DEFAULT NULL,
  `b_mno` varchar(20) DEFAULT NULL,
  `b_status` varchar(20) DEFAULT NULL,
  `b_status1` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`b_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `buyer_reg` */

insert  into `buyer_reg`(`b_id`,`b_name`,`b_email`,`b_pass`,`b_mno`,`b_status`,`b_status1`) values (2,'Md Sajid','sajidshaimca@gmail.com','fb','1175771195783227','Register','Status'),(3,'Yvchalapathi Royal','undefined','fb','2152861661607653','Register','Status'),(1,'venkat','y.venkat0007@gmail.com','12345','9966143047','Register','Status');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `chatid` int(10) NOT NULL,
  `chatbname` varchar(30) DEFAULT NULL,
  `chatbemail` varchar(100) DEFAULT NULL,
  `chatsname` varchar(30) DEFAULT NULL,
  `chatsemail` varchar(100) DEFAULT NULL,
  `chatmessage` varchar(3000) DEFAULT NULL,
  `chatcar` varchar(20) DEFAULT NULL,
  `chatdate` varchar(20) DEFAULT NULL,
  `chatstatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`chatid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `chat` */

insert  into `chat`(`chatid`,`chatbname`,`chatbemail`,`chatsname`,`chatsemail`,`chatmessage`,`chatcar`,`chatdate`,`chatstatus`) values (1,'venkat','y.venkat0007@gmail.com','Swami','swamisir@gmail.com','venkat:  \n  why are u sell it ,is any problem','6','08-11-2017','Chat'),(2,'venkat','y.venkat0007@gmail.com','Ali','alisir@gmail.com','venkat:  \n  is it available','5','08-11-2017','Chat'),(3,'venkat','y.venkat0007@gmail.com','Sajid','sajid24x7@gmail.com','venkat:  \n  i like it\r\n','3','08-11-2017','Chat'),(4,'venkat','y.venkat0007@gmail.com','Ali','alisir@gmail.com','venkat:  \n  is it available','4','08-11-2017','Chat'),(5,'venkat','y.venkat0007@gmail.com','Alisir','alisir@gmail.com','Alisir:  \n  yes','4','08-11-2017','Chat'),(6,'venkat','y.venkat0007@gmail.com','Alisir','alisir@gmail.com','Alisir:  \n  r u interest to purchase','4','08-11-2017','Chat'),(7,'venkat','y.venkat0007@gmail.com','Alisir','alisir@gmail.com','Alisir:  \n  ss','5','08-11-2017','Chat'),(8,'venkat','y.venkat0007@gmail.com','Swamisir','swamisir@gmail.com','Swamisir:  \n  no i want to go to abroad , so i want to sell it.\r\n','6','08-11-2017','Chat'),(9,'venkat','y.venkat0007@gmail.com','Sajidsir','sajid24x7@gmail.com','Sajidsir:  \n  thank u','3','08-11-2017','Chat'),(10,'venkat','y.venkat0007@gmail.com','Ali','alisir@gmail.com','venkat:  \n  nooooo','4','08-11-2017','Chat'),(11,'venkat','y.venkat0007@gmail.com','Swami','swamisir@gmail.com','venkat:  \n  k is it ur final prize?','6','08-11-2017','Chat');

/*Table structure for table `seller_reg` */

DROP TABLE IF EXISTS `seller_reg`;

CREATE TABLE `seller_reg` (
  `s_id` int(10) DEFAULT NULL,
  `s_name` varchar(30) DEFAULT NULL,
  `s_email` varchar(100) NOT NULL,
  `s_pass` varchar(30) DEFAULT NULL,
  `s_mno` varchar(20) DEFAULT NULL,
  `s_status` varchar(20) DEFAULT NULL,
  `s_status1` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`s_email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `seller_reg` */

insert  into `seller_reg`(`s_id`,`s_name`,`s_email`,`s_pass`,`s_mno`,`s_status`,`s_status1`) values (1,'Alisir','alisir@gmail.com','12345','9052830803','Register','Status'),(3,'Sajidsir','sajid24x7@gmail.com','12345','9985714374','Register','Status'),(2,'Swamisir','swamisir@gmail.com','12345','9014170973','Register','Status'),(4,'Yvchalapathi Royal','undefined','fb','2152861661607653','Register','Status');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
