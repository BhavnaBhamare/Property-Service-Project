/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.5.5-10.0.17-MariaDB : Database - property
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`property` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `property`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` int(200) NOT NULL AUTO_INCREMENT,
  `cname` varchar(200) DEFAULT NULL,
  `cimage` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`cid`,`cname`,`cimage`) values (5,'Home','2.jpg'),(6,'Appartment','1.jpg'),(7,'Villas','3.jpg'),(8,'Office Buildings','4.jpg');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `cityid` int(10) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`cityid`,`cityname`) values (1,'Pune'),(2,'Mumbai'),(3,'Thane'),(4,'Delhi');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `cid` int(200) NOT NULL AUTO_INCREMENT,
  `complaintNo` int(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `reg_id` int(200) DEFAULT NULL,
  `pro_id` int(200) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `reg_id` (`reg_id`),
  KEY `pro_id` (`pro_id`),
  CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `register` (`regid`),
  CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `property` (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

/*Table structure for table `contactus` */

DROP TABLE IF EXISTS `contactus`;

CREATE TABLE `contactus` (
  `cid` int(200) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `msg` varchar(400) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `contactus` */

insert  into `contactus`(`cid`,`name`,`email`,`msg`,`date`) values (1,'Pranita Patil','pranita@gmail.com','I found my dream home.','2019-05-30'),(2,'Rohini Shivde','rohini@gmail.com','I like your service','2019-04-25'),(3,'Shamli','shamli@gmail.com','Need to improve.','2019-05-21'),(4,'Nayan Shinde','nayan@gmail.com','I like your service','2019-04-12'),(5,'Vishal Sathe','vishal@gmail.com','Quick response.','2019-02-11'),(6,'Yogesh Bhosale','yogesh@gmail.com','Need to improve.','2019-01-20');

/*Table structure for table `enquiry` */

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `eid` int(200) NOT NULL AUTO_INCREMENT,
  `edate` datetime DEFAULT NULL,
  `message` varchar(200) DEFAULT NULL,
  `regid` int(200) DEFAULT NULL,
  `proid` int(200) DEFAULT NULL,
  `rid` int(200) DEFAULT NULL,
  PRIMARY KEY (`eid`),
  KEY `regid` (`regid`),
  KEY `proid` (`proid`),
  KEY `rid` (`rid`),
  CONSTRAINT `enquiry_ibfk_1` FOREIGN KEY (`regid`) REFERENCES `register` (`regid`),
  CONSTRAINT `enquiry_ibfk_2` FOREIGN KEY (`proid`) REFERENCES `property` (`pid`),
  CONSTRAINT `enquiry_ibfk_3` FOREIGN KEY (`rid`) REFERENCES `register` (`regid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `enquiry` */

insert  into `enquiry`(`eid`,`edate`,`message`,`regid`,`proid`,`rid`) values (1,'2019-05-24 15:54:12','I am interested in this property. please give me detail of that Property',10,3,2),(2,'2019-05-24 15:56:55','I am interested in this property. please give me detail of that Property',11,11,4),(3,'2019-05-24 15:58:13','I am interested in this property. please give me detail of that Property',11,2,2),(4,'2019-05-24 15:58:53','I am interested in this property. please give me detail of that Property',11,5,4),(5,'2019-05-24 16:36:09','I am interested in this property. please give me detail of that Property',10,6,4),(6,'2019-05-24 17:15:08','I like this property. Please give me the seller details.',10,9,4),(7,'2019-05-25 11:44:09','I am interested in this property. please give me detail of that Property',10,9,4),(8,'2019-05-25 15:34:10','I am interested in this property. please give me detail of that Property',10,3,2),(9,'2019-05-25 23:33:27','I am interested in this property. please give me detail of that Property',11,7,4),(10,'2019-05-28 17:59:49','I want to buy this property.',10,7,4),(14,'2019-05-28 18:01:42','I like this property. Please give me the seller details.',10,2,2);

/*Table structure for table `postfeedback` */

DROP TABLE IF EXISTS `postfeedback`;

CREATE TABLE `postfeedback` (
  `feedid` int(200) NOT NULL AUTO_INCREMENT,
  `feedname` varchar(200) DEFAULT NULL,
  `feedemail` varchar(200) DEFAULT NULL,
  `feedmsg` varchar(200) DEFAULT NULL,
  `feeddate` date DEFAULT NULL,
  PRIMARY KEY (`feedid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `postfeedback` */

insert  into `postfeedback`(`feedid`,`feedname`,`feedemail`,`feedmsg`,`feeddate`) values (1,'Sayali Tamhane','sayali@gmail.com','I like this site.','2018-11-19'),(2,'Mrunal Mohite','mrunal@gmail.com','Need to improve','2018-09-06'),(3,'Suraj Sharma','suraj@gmail.com','Seller is not resopnding','2018-10-07'),(4,'Kavita Joshi','kavita@gmail.com','Good service.','2018-08-24'),(5,'Pranali Mehta','pranali@gmail.com','Buyer is not responding','2018-06-03'),(6,'Sakshi Sharma','sakshi@gmail.com','Good service.','2018-01-08'),(7,'Vandana Patil','vandana@gmail.com','Quick respone','2019-03-12'),(8,'Rohit Adak','rohit@gmail.com','Need to improve','2019-02-22'),(9,'Rhucha Sharma','rhucha@gmail.com','I like this site.','2019-01-25'),(10,'Chaitrali Shedge','chaitrali@gmail.com','Seller is not responding.','2018-12-14');

/*Table structure for table `property` */

DROP TABLE IF EXISTS `property`;

CREATE TABLE `property` (
  `pid` int(200) NOT NULL AUTO_INCREMENT,
  `propertyname` varchar(200) DEFAULT NULL,
  `size` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `bedroom` varchar(200) DEFAULT NULL,
  `bathroom` varchar(200) DEFAULT NULL,
  `pimage` varchar(200) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `udated-date` date DEFAULT NULL,
  `reg_id` int(200) DEFAULT NULL,
  `cat_id` int(200) DEFAULT NULL,
  `cityid` int(100) DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `reg_id` (`reg_id`),
  KEY `cat_id` (`cat_id`),
  KEY `cityid` (`cityid`),
  CONSTRAINT `property_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `register` (`regid`),
  CONSTRAINT `property_ibfk_2` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cid`),
  CONSTRAINT `property_ibfk_3` FOREIGN KEY (`cityid`) REFERENCES `city` (`cityid`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

/*Data for the table `property` */

insert  into `property`(`pid`,`propertyname`,`size`,`price`,`address`,`description`,`bedroom`,`bathroom`,`pimage`,`pdate`,`udated-date`,`reg_id`,`cat_id`,`cityid`) values (2,'Padmavati Properties','34563',2500000,'Nigadi','Welcome to Kunjaban by Vivanta, with homes in Mamurdi where our lifestyle features are not defined by extravagance, but are designed to take care of your most essential needs - comfort, security and c','6','3','4.jpg','2019-03-26',NULL,2,5,1),(3,'Kalyani Properties','3000',1000000,'Pune swaragete','It is the residential cum commercial development of Gagan Developers and Transera Realty and Twin Realty. ','2','1','5.jpg','2018-12-18',NULL,2,6,2),(4,'Hari Om ','1024',2500000,'Baner','Designed by Arch. Hafeez Contractor, Bella Vista offers exceptionally large 2 and 3 BHK apartments ranging from 1380 sq.feet to 1890 sq.feet.','3','1','6.jpg','2019-03-14','2019-05-29',4,5,3),(5,'Reva Properties','2048',50000,'Kothrud','Presenting an excellently constructed 1 BHK ready to move flat up for sale in Optima Heights, Wagholi, Pune- home to several residential properties.','4','2','7.jpg','2019-04-15','1970-01-01',4,8,4),(6,'AH Property','2048',2500000,'Baner','These 1 & 2 BHK apartments are perfect homes crafted out of perfection and tagged with a price that is even more perfect. Swapnalok is a classic example where dreams come down to a majestic reality.','2','1','8.jpg','2019-04-15','1970-01-01',4,5,1),(7,'Sahil Properties','2000',500000,'bavdhan','Ace Aastha, an extensive and elegant project with a blissful collection of 1 & 2 BHK homes, located at Charholi close to the divine abode Alandi, the project renders a divine touch to your life. ','3','1','11.jpg','2019-04-18',NULL,4,7,2),(9,'Silver Properties','2048',600000,'bavdhan','Gated community in Kiwale (near Ravet), Lotus Laxmi 2 features spacious 2BHK apartments along with landscaped elevated courtyard and two level car parking.','4','1','10.jpg','2019-05-02',NULL,4,6,3),(11,'Golden Properties','1000',50000,'Pune','Pride Purple Park Connect is located in Hinjewadi, Pune West in Pune. Pride Purple Park Connect is currently a New Launch project.','4','2','22.jpg','2019-05-21',NULL,4,8,4),(13,'Manali Properties','3467',950000,'Nigadi','IDEAL SPACIO at Undri in Pune is the perfect amalgamation of intelligent apartment design, breath-taking landscaping and the widest array of sporting amenities.','4','1','12.jpg','2019-02-04',NULL,16,5,2),(14,'Panchali Properties','5521',740000,'Swargate','They say, no matter how modern you become in life, you should always stay true to your culture. If you are among the ones who believe in this saying, welcome to Padmavati Hills.','12','2','2.jpg','2019-03-25',NULL,17,6,3),(15,'Anand Properties','45689',920000,'Baner','With an impressive portfolio of over 100 acres of residential projects, Pharande Spaces has played a significant role in transforming the skylines of Pimpri-Chinchwad.','3','3','3.jpg','2019-03-26',NULL,16,7,4),(16,'Payal Properties','7654',745000,'Kothrud','Renuka Golria is more than just a residential project; it is a tower of passion and perfection. ','4','4','89.jpg','2019-03-27',NULL,17,8,1),(17,'Bhandari Properties','44567',960000,'Bavdhan','When 5 holy ingredients combine to form a divine delicacy, Panchamrut is created.','1','1','9.jpg','2019-03-28',NULL,23,5,2),(18,'Sunanda Properties','1234',750000,'Nanded City','A Home is where we love,dream,grow and workship together.','2','2','21.jpg','2019-03-29',NULL,23,6,3),(19,'Nandanvan Properties','5667',960000,'Baramati','For those who seek the gratification of living in a cosmopolitan setting, the idea of urban lifestyle is different. It is unlike the regular desires associated with city life.','3','3','23.jpg','2019-03-30',NULL,30,7,4),(20,'Trimurti Properties','8655',320000,'Lavasa','ASHWINI is situated 8K.M. from Chandani Chowk on Pune-Paud road, surrounded by scenic hills, lush green fields and the sprawling Manas lake.','4','4','24.jpg','2019-03-31',NULL,36,8,1),(21,'Ganesh Properties','98766',150000,'Pimpari','Unbelieveable 2 RHK homes @ Yewlewadi, off Katraj-kondhwa Road','1','1','25.jpg','2019-04-01','2019-05-22',41,6,2),(23,'Balaji Properties','6655',740000,'Chinchawad','Presenting, Pruthvi Ekdanta Homes - an address that is an oasis of calm, peace and magnificence in the hustle-bustle of the city, Pune. ','2','2','26.jpg','2019-04-02',NULL,42,7,3),(24,'Sarsavati Properties','6788',610000,'Khed','The apartments are spacious, provide beautiful natural lighting, cross ventilation and contain modern-day fittings & fixtures, high-quality flooring in every room','3','3','27.jpg','2019-04-03',NULL,48,8,4),(25,'Ananya Properties','6655',450000,'Chakan','Bringing together the best and brightest well planned 1 & 2 BHK apartments in Pashan situated on the proposed Baner-Pashan Link Road. ','4','4','28.jpg','2019-04-04',NULL,54,5,1),(26,'Padmavati Properties','67898',340000,'Bhosari','Tirupati Mount Vista, is a sprawling luxury enclave of magnificent Villas in Pune, elevating the contemporary lifestyle. ','1','1','29.jpg','2019-04-05',NULL,60,5,2),(27,'Kalyani Properties','23445',570000,'Nigadi','This apartment is a state-of-the-art residential unit featuring top line specifications and amenities. ','2','2','30.jpg','2019-04-06',NULL,62,6,3),(28,'Hari Om ','55643',740000,'Swargate','This apartment is located in Keshav Nagar, Pune. It is a spacious and well-ventilated apartment with latest facilities. ','3','3','31.jpg','2019-04-07',NULL,62,7,4),(29,'Reva Properties','3344',360000,'Baner','Buying a home marks the start of something new. For some, it could be a new relationship, for some it could be a new family.','4','4','32.jpg','2019-04-08',NULL,60,8,1),(30,'AH Property','3445',740000,'Kothrud','Welworth Celina is a completed premium residential property by Welworth Realty. Located strategically in Baner, Pune.','1','1','33.jpg','2019-04-09',NULL,54,5,2),(31,'Sahil Properties','6677',254000,'Nanded City','Greenpark! The name says it all. These apartments are placed within a setting of pristine beauty. ','2','2','34.jpg','2019-04-10',NULL,48,6,3),(32,'Silver Properties','8865',360000,'Baramati','Ganga Aria has three fabulous towers of 1, 2 & 3 BHK flats with thoughtful amenities.','3','3','35.jpg','2019-04-11',NULL,42,7,4),(33,'Golden Properties','2445',740000,'Lavasa','Pride Purple Park Connect is located in Hinjewadi, Pune West in Pune. ','4','4','36.jpg','2019-04-12',NULL,41,8,1),(35,'MURKUTE Property','2486',640000,'Pimpari','Welcome to Kunjaban by Vivanta, with homes in Mamurdi where our lifestyle features are not defined by extravagance, but are designed to take care of your most essential needs - comfort, security and c','1','1','37.jpg','2019-04-13',NULL,36,5,2),(36,'Manali Properties','8462',364000,'Chinchawad','It is the residential cum commercial development of Gagan Developers and Transera Realty and Twin Realty. ','2','2','38.jpg','2019-04-14','2019-05-22',30,6,3),(37,'Panchali Properties','6641',142000,'Khed','Designed by Arch. Hafeez Contractor, Bella Vista offers exceptionally large 2 and 3 BHK apartments ranging from 1380 sq.feet to 1890 sq.feet.','3','3','39.jpg','2019-04-15',NULL,23,7,4),(38,'Anand Properties','2687',540000,'Chakan','Presenting an excellently constructed 1 BHK ready to move flat up for sale in Optima Heights, Wagholi, Pune- home to several residential properties.','4','4','40.jpg','2019-04-16',NULL,30,8,1),(39,'Payal Properties','5466',369000,'Bhosari','These 1 & 2 BHK apartments are perfect homes crafted out of perfection and tagged with a price that is even more perfect. Swapnalok is a classic example where dreams come down to a majestic reality.','1','1','41.jpg','2019-04-17',NULL,36,5,2),(40,'Bhandari Properties','2657',740000,'Nigadi','Ace Aastha, an extensive and elegant project with a blissful collection of 1 & 2 BHK homes, located at Charholi close to the divine abode Alandi, the project renders a divine touch to your life. ','2','2','42.jpg','2019-04-18',NULL,24,6,3),(41,'Sunanda Properties','9423',690000,'Swargate','Gated community in Kiwale (near Ravet), Lotus Laxmi 2 features spacious 2BHK apartments along with landscaped elevated courtyard and two level car parking.','3','3','43.jpg','2019-04-19',NULL,24,7,4),(42,'Nandanvan Properties','5496',740000,'Baner','Pride Purple Park Connect is located in Hinjewadi, Pune West in Pune. Pride Purple Park Connect is currently a New Launch project.','4','4','44.jpg','2019-04-20',NULL,23,8,1),(43,'Trimurti Properties','51455',140600,'Kothrud','Ganga Amber, Tathawade Covering over 60 million sq.ft. over 63 projects, Goel Ganga boasts of a legacy with difference in the business of building and construction.','1','1','45.jpg','2019-04-21',NULL,24,5,2),(44,'Ganesh Properties','5145',480000,'Bavdhan','IDEAL SPACIO at Undri in Pune is the perfect amalgamation of intelligent apartment design, breath-taking landscaping and the widest array of sporting amenities.','2','2','46.jpg','2019-04-22',NULL,30,6,3),(45,'Balaji Properties','5455',140000,'Nanded City','They say, no matter how modern you become in life, you should always stay true to your culture. If you are among the ones who believe in this saying, welcome to Padmavati Hills.','3','3','47.jpg','2019-04-23',NULL,36,7,4),(46,'Sarsavati Properties','5448',560000,'Baramati','With an impressive portfolio of over 100 acres of residential projects, Pharande Spaces has played a significant role in transforming the skylines of Pimpri-Chinchwad.','4','4','48.jpg','2019-04-24',NULL,16,8,1),(47,'Ananya Properties','5441',470000,'Lavasa','Renuka Golria is more than just a residential project; it is a tower of passion and perfection. ','1','1','49.jpg','2019-04-25',NULL,17,5,2),(48,'Padmavati Properties','9898',680000,'Pimpari','When 5 holy ingredients combine to form a divine delicacy, Panchamrut is created.','2','2','50.jpg','2019-04-26',NULL,16,6,3),(49,'Kalyani Properties','2145',740000,'Chinchawad','A Home is where we love,dream,grow and workship together.','3','3','51.jpg','2019-04-27',NULL,23,7,4),(50,'Hari Om ','6694',360000,'Khed','For those who seek the gratification of living in a cosmopolitan setting, the idea of urban lifestyle is different. It is unlike the regular desires associated with city life.','4','4','52.jpg','2019-04-28',NULL,30,8,1),(51,'Reva Properties','2214',740000,'Chakan','ASHWINI is situated 8K.M. from Chandani Chowk on Pune-Paud road, surrounded by scenic hills, lush green fields and the sprawling Manas lake.','1','1','53.jpg','2019-04-29',NULL,62,5,2),(52,'AH Property','6985',258000,'Bhosari','Unbelieveable 2 RHK homes @ Yewlewadi, off Katraj-kondhwa Road','2','2','54.jpg','2019-04-30',NULL,42,6,3),(53,'Sahil Properties','5463',550000,'Nigadi','Presenting, Pruthvi Ekdanta Homes - an address that is an oasis of calm, peace and magnificence in the hustle-bustle of the city, Pune. ','3','3','55.jpg','2019-05-01',NULL,48,7,4),(54,'Silver Properties','6456',690000,'Swargate','The apartments are spacious, provide beautiful natural lighting, cross ventilation and contain modern-day fittings & fixtures, high-quality flooring in every room','4','4','56.jpg','2019-05-02',NULL,54,8,1),(55,'Golden Properties','5443',742300,'Baner','Bringing together the best and brightest well planned 1 & 2 BHK apartments in Pashan situated on the proposed Baner-Pashan Link Road. ','1','1','57.jpg','2019-05-03',NULL,54,5,2),(56,'MURKUTE Property','69845',450000,'Kothrud','Tirupati Mount Vista, is a sprawling luxury enclave of magnificent Villas in Pune, elevating the contemporary lifestyle. ','2','2','58.jpg','2019-05-04',NULL,48,6,3),(57,'Manali Properties','2156',148000,'Bavdhan','This apartment is a state-of-the-art residential unit featuring top line specifications and amenities. ','3','3','59.jpg','2019-05-05',NULL,60,7,4),(58,'Panchali Properties','5456',483030,'Nanded City','Buying a home marks the start of something new. For some, it could be a new relationship, for some it could be a new family.','4','4','60.jpg','2019-05-06',NULL,23,8,1),(59,'Anand Properties','6448',540000,'Baramati','Welworth Celina is a completed premium residential property by Welworth Realty. Located strategically in Baner, Pune.','1','1','61.jpg','2019-05-07',NULL,16,5,2),(60,'Payal Properties','5442',140000,'Lavasa','Greenpark! The name says it all. These apartments are placed within a setting of pristine beauty. ','2','2','32.jpg','2019-05-08',NULL,17,6,3),(61,'Bhandari Properties','5445',980000,'Pimpari','Ganga Aria has three fabulous towers of 1, 2 & 3 BHK flats with thoughtful amenities.','3','3','31.jpg','2019-05-09',NULL,23,7,4),(62,'Sunanda Properties','5445',780000,'Chinchawad','Pride Purple Park Connect is located in Hinjewadi, Pune West in Pune. ','4','4','33.jpg','2019-05-10',NULL,24,8,1),(63,'Nandanvan Properties','5447',456000,'Khed','Welcome to Kunjaban by Vivanta, with homes in Mamurdi where our lifestyle features are not defined by extravagance, but are designed to take care of your most essential needs - comfort, security and c','1','1','34.jpg','2019-05-11',NULL,17,5,2),(64,'Trimurti Properties','8475',123000,'Chakan','It is the residential cum commercial development of Gagan Developers and Transera Realty and Twin Realty. ','2','2','35.jpg','2019-05-12',NULL,60,6,3),(65,'Ganesh Properties','5475',654000,'Bhosari','Designed by Arch. Hafeez Contractor, Bella Vista offers exceptionally large 2 and 3 BHK apartments ranging from 1380 sq.feet to 1890 sq.feet.','3','3','36.jpg','2019-05-13',NULL,48,7,4),(66,'Balaji Properties','5444',321000,'Nigadi','Presenting an excellently constructed 1 BHK ready to move flat up for sale in Optima Heights, Wagholi, Pune- home to several residential properties.','4','4','37.jpg','2019-05-14',NULL,54,8,1),(67,'Sarsavati Properties','5444',987000,'Swargate','These 1 & 2 BHK apartments are perfect homes crafted out of perfection and tagged with a price that is even more perfect. Swapnalok is a classic example where dreams come down to a majestic reality.','1','1','38.jpg','2019-05-15',NULL,52,5,2),(68,'Ananya Properties','54478',789000,'Baner','Ace Aastha, an extensive and elegant project with a blissful collection of 1 & 2 BHK homes, located at Charholi close to the divine abode Alandi, the project renders a divine touch to your life. ','2','2','39.jpg','2019-05-16',NULL,42,6,3),(69,'Padmavati Properties','47888',102000,'Kothrud','Gated community in Kiwale (near Ravet), Lotus Laxmi 2 features spacious 2BHK apartments along with landscaped elevated courtyard and two level car parking.','3','3','20.jpg','2019-05-17',NULL,48,7,4),(70,'Kalyani Properties','47784',690000,'Bavdhan','Pride Purple Park Connect is located in Hinjewadi, Pune West in Pune. Pride Purple Park Connect is currently a New Launch project.','4','4','21.jpg','2019-05-18',NULL,54,8,1),(71,'Hari Om ','54788',780000,'Nanded City','Ganga Amber, Tathawade Covering over 60 million sq.ft. over 63 projects, Goel Ganga boasts of a legacy with difference in the business of building and construction.','1','1','22.jpg','2019-05-19',NULL,48,5,2),(72,'Reva Properties','75122',640000,'Baramati','IDEAL SPACIO at Undri in Pune is the perfect amalgamation of intelligent apartment design, breath-taking landscaping and the widest array of sporting amenities.','2','2','23.jpg','2019-05-20',NULL,24,6,3),(73,'AH Property','65488',785000,'Lavasa','They say, no matter how modern you become in life, you should always stay true to your culture. If you are among the ones who believe in this saying, welcome to Padmavati Hills.','3','3','24.jpg','2019-05-21',NULL,23,7,4),(74,'Sahil Properties','85478',987000,'Pimpari','With an impressive portfolio of over 100 acres of residential projects, Pharande Spaces has played a significant role in transforming the skylines of Pimpri-Chinchwad.','4','4','25.jpg','2019-05-22',NULL,17,8,1),(75,'Silver Properties','85478',145000,'Chinchawad','Renuka Golria is more than just a residential project; it is a tower of passion and perfection. ','1','1','26.jpg','2019-05-23',NULL,16,5,2),(76,'Golden Properties','84478',652000,'Khed','When 5 holy ingredients combine to form a divine delicacy, Panchamrut is created.','2','2','27.jpg','2019-05-24',NULL,4,6,3),(77,'MURKUTE Property','84478',520000,'Chakan','A Home is where we love,dream,grow and workship together.','3','3','28.jpg','2019-05-25',NULL,16,7,4),(78,'Manali Properties','54785',360000,'Bhosari','For those who seek the gratification of living in a cosmopolitan setting, the idea of urban lifestyle is different. It is unlike the regular desires associated with city life.','4','4','29.jpg','2019-05-26',NULL,16,8,1),(79,'Panchali Properties','44544',140000,'Nigadi','ASHWINI is situated 8K.M. from Chandani Chowk on Pune-Paud road, surrounded by scenic hills, lush green fields and the sprawling Manas lake.','1','1','30.jpg','2019-05-27',NULL,4,5,2),(80,'Anand Properties','55423',690000,'Swargate','Unbelieveable 2 RHK homes @ Yewlewadi, off Katraj-kondhwa Road','2','2','3.jpg','2019-05-28',NULL,17,6,3),(81,'Payal Properties','78945',470000,'Baner','Presenting, Pruthvi Ekdanta Homes - an address that is an oasis of calm, peace and magnificence in the hustle-bustle of the city, Pune. ','3','3','2.jpg','2019-05-29',NULL,23,7,4),(82,'Bhandari Properties','6242',410000,'Kothrud','The apartments are spacious, provide beautiful natural lighting, cross ventilation and contain modern-day fittings & fixtures, high-quality flooring in every room','4','4','4.jpg','2019-05-30',NULL,24,5,1),(83,'Sunanda Properties','63145',520000,'Bavdhan','Bringing together the best and brightest well planned 1 & 2 BHK apartments in Pashan situated on the proposed Baner-Pashan Link Road. ','1','1','5.jpg','2019-05-31',NULL,23,6,2),(84,'Nandanvan Properties','66912',6300000,'Nanded City','Tirupati Mount Vista, is a sprawling luxury enclave of magnificent Villas in Pune, elevating the contemporary lifestyle. ','2','2','37.jpg','2019-06-05',NULL,30,8,3);

/*Table structure for table `register` */

DROP TABLE IF EXISTS `register`;

CREATE TABLE `register` (
  `regid` int(200) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) DEFAULT NULL,
  `lname` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `rimage` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `role_id` int(200) DEFAULT NULL,
  PRIMARY KEY (`regid`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `register_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

/*Data for the table `register` */

insert  into `register`(`regid`,`fname`,`lname`,`email`,`password`,`address`,`contact`,`status`,`date`,`rimage`,`description`,`role_id`) values (1,'Amit','Patil','hulawale.amit7009@gmail.com','123','Pune','8805057007','Activate','2019-04-09','face-3.jpg','',1),(2,'Avinash','Kshirsagar','kshirsagaravinash1@gmail.com','123','Pune','9970113773','Deactivate','2019-03-12','2.jpg',NULL,2),(4,'Amit','Hulawale','hulawale.amit@gmail.com','123','Kothrud','7543229456','Activate','2019-02-20','admin.jpg','',2),(5,'Nikita','Murkute','nikitamurkute21@gmail.com','123','Baner','7020511865','Deactivate','2019-01-29','5.jpg','',2),(6,'Kabir','Shaikh','kabir@gmail.com','123','Pune','9934567890','Deactivate','2019-03-30','AaradhanaKamate.jpg',NULL,2),(10,'Ruqsar','Sayeda','ruqsar1997@gmail.com','123','Bavdhan','9822346161','Activate','2019-01-02','Meena.jpg','',3),(11,'Payal','Bhandari','payal.bhandari@gmail.com','123','Kothrud','8765374837','Activate','2018-12-13','Meena.jpg','',3),(12,'Rohan','Murkute','rohanmurkute7@gmail.com','rohan','Baner','9673049999','Activate','2018-11-29','Akshay.jpg',NULL,3),(13,'Amita','Hurhure','amita@gmail.com','123','Kolkata','8844567834','Deactivate','2019-04-16','Amey.jpg',NULL,2),(14,'Vaibhav','Tapkir','vaibhav@gmail.com','123','Nashik','9083729382','Activate','2019-05-07','Ashok.jpg',NULL,3),(15,'Prasad','Chakankar','prasad@gamil.com','123','Satara','8083828737','Activate','2019-01-31','Bhushan.jpg',NULL,3),(16,'Nikita','Kalamkar','nikita@gmail.com','123','Chennai','9877654345','Activate','2019-04-19','Harpreet.jpg',NULL,2),(17,'Sushma','Tapkir','sushma@gmail.com','123','Banglore','8542654266','Activate','2019-03-20','Mamata.jpg','',2),(18,'Dipti','Shelke','dipti@gmail.com','123','Delhi','7852365513','Activate','2019-03-23','Mamata.jpg',NULL,3),(19,'Sayali','Gaikwad','sayalig@gmail.com','123','Mumbai','9541236521','Deactivate','2019-03-27','Manisha.jpg',NULL,2),(20,'Manasi','Mirgal','manasi@gmail.com','123','Kolhapur','7426221265','Activate','2019-02-18','Meena.jpg',NULL,3),(21,'Harshal','Yalwande','harshal@gmail.com','123','Pune','9852142362','Activate','2019-01-25','Nishikant.jpg',NULL,3),(22,'Vaibhav','Ghule','vaibhavg@gmail.com','123','Bavdhan','7051265632','Activate','2019-02-04','Pravin.jpg',NULL,3),(23,'Ayesha','Inamdar','ayesha@gmail.com','123','Kothrud','8014265236','Activate','2019-03-19','Meena.jpg','',2),(24,'Swapnil','shind','swapnil@gmail.com','123','Baner','9021536101','Activate','2018-12-29','Ashok.jpg','',2),(25,'Akanksha','Patil','akanksha@gmail.com','123','Kolkata','9124563214','Deactivate','2018-12-06','Rahul.jpg',NULL,2),(26,'Mayuri','Rawate','mayuri@gmail.com','123','Nashik','8124563456','Activate','2018-12-18','Rupali.jpg',NULL,3),(27,'Rucha','Borate','rucha@gmail.com','123','Satara','7156235425','Activate','2018-11-14','Sachin.jpg',NULL,3),(28,'Pranita','Mahadik','pranitam@gmail.com','123','Chennai','9924562246','Activate','2018-11-13','Sagar.jpg',NULL,3),(29,'Sayali','Chougule','sayalic@gmail.com','123','Banglore','8821565212','Activate','2018-10-18','Sanjay.jpg',NULL,3),(30,'Vishakha','Patil','vishakha@gmail.com','123','Delhi','7752365426','Activate','2018-11-19','Priyanka (2).jpg','',2),(31,'Raj','Singh','raj@gmail.com','123','Mumbai','9857541266','Deactivate','2018-12-17','Shubham.jpg',NULL,2),(32,'Pooja','Kolpe','poojak@gmail.com','123','Kolhapur','8422123325','Activate','2019-01-21','Vaibhav.jpg',NULL,3),(33,'Avishkar','Dongre','avishkar@gmail.com','123','Pune','7854416583','Activate','2018-12-20','Vinay.jpg',NULL,3),(34,'Prajakta','Tamhane','prajakta@gmail.com','123','Bavdhan','8462114536','Activate','2018-08-23','Vipul.jpg',NULL,3),(35,'Vedant','Mulay','vedant@gmail.com','123','Kothrud','9624748596','Activate','2019-02-11','face-3.jpg',NULL,3),(36,'Pooja','Surve','poojas@gmail.com','123','Baner','9021566543','Activate','2018-11-14','admin.jpg',NULL,2),(37,'Nikhil','Kolekar','nikhil@gmail.com','123','Kolkata','8014565523','Deactivate','2019-03-11','5.jpg',NULL,2),(38,'Nikita','Chavan','nikitac@gmail.com','123','Nashik','7014563546','Activate','2018-12-15','AaradhanaKamate.jpg',NULL,3),(39,'Rahul','Chinchwade','rahul@gmail.com','123','Satara','9155556542','Activate','2019-01-28','Aashish.jpg',NULL,3),(40,'Pooja','Sapkal','poojass@gmail.com','123','Chennai','8164566324','Activate','2019-01-29','Akshay.jpg',NULL,3),(41,'Pournima','Bamane','pournima@gmail.com','123','Banglore','7136548965','Activate','2018-11-21','Rupali.jpg','',2),(42,'Reshma','Bhandare','reshma@gmail.com','123','Delhi','9245642635','Activate','2018-02-13','Priyanka.jpg','',2),(43,'Rutuja','Dongre','rutuja@gmail.com','123','Mumbai','8247548666','Deactivate','2017-10-26','Bhushan.jpg',NULL,2),(44,'Vaibhavi','Kadam','vaibhavi@gmail.com','123','Kolhapur','7284863521','Activate','2018-04-02','Harpreet.jpg',NULL,3),(45,'Mamata','Shinde','mamata@gmail.com','123','Pune','9354864489','Activate','2018-07-18','Kamlesh.jpg',NULL,3),(46,'Aishwarya','Nimhan','aishwarya@gmail.com','123','Bavdhan','8345634442','Activate','2018-11-21','Mamata.jpg',NULL,3),(47,'Kaustubh','Limaye','kaustubh@gmail.com','123','Kothrud','7349514269','Activate','2018-07-24','Manisha.jpg',NULL,3),(48,'Omkar','Parkhi','omkarp@gmail.com','123','Baner','9426412365','Activate','2019-05-31','Meena.jpg',NULL,2),(49,'Simanti','Nadar','simanti@gmail.com','123','Kolkata','8463246563','Deactivate','2019-03-11','Nishikant.jpg',NULL,2),(50,'Anuja','Hange','anuja@gmail.com','123','Nashil','7485123475','Activate','2019-04-20','Pravin.jpg',NULL,3),(51,'Sonali','Alhat','sonali@gmail.com','123','Satara','9541265422','Activate','2019-03-12','Pritam.jpg',NULL,3),(52,'Sourabh','Mankar','sourabh@gmail.com','123','Chennai','8571269742','Activate','2019-02-04','Priyanka.jpg',NULL,3),(53,'Atharva','Murkute','atharva@gmail.com','123','Bhanglore','7512655123','Activate','2019-01-15','Rahul.jpg',NULL,3),(54,'Rohini','Borole','rohinib@gmail.com','123','Delhi','9614565423','Activate','2019-01-28','Rupali.jpg',NULL,2),(55,'Akshay','Divekar','akshay@gmail.com','123','Mumbai','8614254562','Deactivate','2019-01-31','Sachin.jpg',NULL,2),(56,'Omkar','Shirke','omkars@gmail.com','123','Kolhapur','7614852369','Activate','2018-11-05','Sagar.jpg',NULL,3),(57,'Rajat','Mandekar','rajat@gmail.com','123','Pune','9722684266','Activate','2019-03-03','Sanjay.jpg',NULL,3),(58,'Yogini','Dhumal','yogini@gmail.com','123','Bavdhan','8719536542','Activate','2019-02-09','Saurabh.jpg',NULL,3),(59,'Rasika','More','rasika@gmail.com','123','Kothrud','7752265632','Activate','2019-02-02','Shubham.jpg',NULL,3),(60,'Ranjeet','Bhumkar','ranjeet@gmail.com','123','Baner','9812125441','Activate','2019-02-04','Vaibhav.jpg',NULL,2),(61,'Sonal','Kamble','sonal@gmail.com','123','Kolkata','8812542265','Deactivate','2018-12-06','Vinay.jpg',NULL,2),(62,'Ketan','Madane','ketan@gmail.com','123','Nashik','7821526543','Activate','2019-01-14','Vipul.jpg',NULL,2),(63,'Pooja','Jadhav','poojaj@gmail.com','123','Satara','9912648512','Activate','2019-05-14','face-3.jpg',NULL,3),(64,'Priya','Vairagar','priya@gmail.com','123','Chennai','8902002340','Activate','2019-06-17',NULL,NULL,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `rid` int(200) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`rid`,`rolename`) values (1,'Admin'),(2,'Seller'),(3,'User');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
