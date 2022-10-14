/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - 2022_mock_interview
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`2022_mock_interview` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `2022_mock_interview`;

/*Table structure for table `candidate` */

DROP TABLE IF EXISTS `candidate`;

CREATE TABLE `candidate` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `candidate` */

insert  into `candidate`(`cid`,`name`,`email`,`phone`,`dob`,`lid`) values 
(1,'Rohith K','rinjuregional@gmail.com','9087654321','199-08-23',3),
(2,'sjjs','snsjsyil@gmail.com','6958253669','3/4/2022',5),
(3,'hfye','ms@gmail.com','6958362500','19/4/2022',7),
(4,'sr','ssss@gmail.com','9087654300','19/4/2022',8),
(5,'ZZ dsr','m@gmail.com','6958253614','19/4/2022',9),
(6,'Demo','demo@gmail.com','9061506400','4/5/2000',12),
(7,'User','user@gmail.com','9876544321','12-03-2000',13),
(8,'christy','christy@gmail.com','1234567789','10-10-2000',15),
(9,'Sneha','snehasreelakam@gmail.com ','1456789332','05-05-2004',16),
(10,'Pooja','pooja@gmail.com','7894556321','24-08-1998',17),
(11,'Mariya','mariya@gmail.com','7896654123','20-06-2000',18),
(12,'Jelu','jelu@gmail.com','9633015723','01-11-1998',19),
(13,'ashly','ashly@gmail.com','1234567890','1/10/2000',20),
(14,'Santosh','santosh@gmail.com','9037334154','27-02-1997',21),
(15,'sandra','sandra@gmail.com ','1234567889','03-03-1999',22);

/*Table structure for table `graph` */

DROP TABLE IF EXISTS `graph`;

CREATE TABLE `graph` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `date` varchar(44) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `graph` */

insert  into `graph`(`id`,`lid`,`tid`,`date`,`image`) values 
(1,15,1,'2022-05-04','20220504_151219.png'),
(2,15,1,'2022-05-04','20220504_151614.png'),
(3,15,6,'2022-05-04','20220504_152240.png'),
(4,16,7,'2022-05-05','20220505_093512.png'),
(5,16,6,'2022-05-05','20220505_100208.png'),
(6,16,1,'2022-05-05','20220505_100807.png'),
(7,9,1,'2022-05-05','20220505_101601.png'),
(8,9,7,'2022-05-05','20220505_101758.png'),
(10,18,1,'2022-05-05','20220505_113555.png'),
(11,5,1,'2022-05-05','20220505_114639.png'),
(12,5,1,'2022-05-05','20220505_115124.png'),
(13,5,1,'2022-05-05','20220505_115935.png'),
(14,5,1,'2022-05-05','20220505_120408.png'),
(15,19,1,'2022-05-05','20220505_150545.png'),
(16,19,7,'2022-05-05','20220505_151448.png'),
(17,19,1,'2022-05-05','20220505_152409.png'),
(18,20,1,'2022-05-06','20220506_090855.png'),
(19,20,1,'2022-05-06','20220506_090855.png'),
(20,20,7,'2022-05-06','20220506_094358.png'),
(21,15,6,'2022-05-06','20220506_095033.png'),
(22,15,1,'2022-05-06','20220506_100234.png'),
(23,15,6,'2022-05-06','20220506_100642.png'),
(24,15,6,'2022-05-06','20220506_101018.png'),
(25,21,1,'2022-05-06','20220506_101359.png'),
(26,21,6,'2022-05-06','20220506_102020.png'),
(27,21,1,'2022-05-06','20220506_102329.png'),
(28,22,7,'2022-05-06','20220506_151520.png');

/*Table structure for table `grp_plot` */

DROP TABLE IF EXISTS `grp_plot`;

CREATE TABLE `grp_plot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `testid` int(11) DEFAULT NULL,
  `qid` int(11) DEFAULT NULL,
  `mark` int(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;

/*Data for the table `grp_plot` */

insert  into `grp_plot`(`id`,`lid`,`date`,`testid`,`qid`,`mark`) values 
(240,21,'2022-05-06',1,1,6),
(241,21,'2022-05-06',1,2,0),
(242,21,'2022-05-06',1,3,0),
(243,21,'2022-05-06',1,4,6),
(244,21,'2022-05-06',1,5,10),
(245,22,'2022-05-06',7,20,0),
(246,22,'2022-05-06',7,21,10),
(247,22,'2022-05-06',7,22,10),
(248,22,'2022-05-06',7,23,10),
(249,22,'2022-05-06',7,24,0);

/*Table structure for table `interviewer` */

DROP TABLE IF EXISTS `interviewer`;

CREATE TABLE `interviewer` (
  `interviewer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `about` varchar(200) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  PRIMARY KEY (`interviewer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `interviewer` */

insert  into `interviewer`(`interviewer_id`,`name`,`email`,`phone`,`about`,`lid`) values 
(1,'San International','sandrasreelakam@gmail.com','9087654321','We are a group of innovative developers...',2),
(3,'Rinju p','siva@gmail.com','+919544379249','amoxks',6),
(4,'Simply The Best','simplythebest@gmail.com','9061506400','Building the better future',11),
(5,'Demo','demo@gmail.com','12345678889','Demo',14);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `lid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`lid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`lid`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(2,'sandrasreelakam@gmail.com','123rew','interviewer'),
(3,'a','a','user'),
(4,'sivass@gmail.com','siva123','interviewer'),
(5,'a@gmail.com','123','user'),
(6,'siva@gmail.com','siva123','pending'),
(7,'rohith@gmail.com','hhh','user'),
(8,'uru e','hfyr','user'),
(9,'jfs','yksi6','user'),
(10,'akk','tete5ut','user'),
(11,'simplythebest@gmail.com','simplythebest','interviewer'),
(12,'Demo','demo','user'),
(13,'User','user','user'),
(14,'demo@gmail.com','demo','interviewer'),
(15,'Christy','christy','user'),
(16,'Sneha','sneha','user'),
(17,'Pooja','pooja','user'),
(18,'Mariya','mariya','user'),
(19,'jelu','jelu','user'),
(20,'ashly','ashly','user'),
(21,'santosh','santosh','user'),
(22,'sandra','sandra','user');

/*Table structure for table `questions` */

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `qn_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `question` varchar(200) DEFAULT NULL,
  `answer` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`qn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `questions` */

insert  into `questions`(`qn_id`,`test_id`,`question`,`answer`) values 
(1,1,'a','a'),
(2,1,'b','b'),
(3,1,'c','c'),
(4,1,'d','d'),
(5,1,'e','d'),
(12,6,'What are your strengths?','demo answer'),
(15,6,'What are your short-term and long-term goals?','placed'),
(16,6,'What are your weakness','recording'),
(17,6,'Why should we hire u','dedicated'),
(18,6,'Tell me about yourself','graduate'),
(20,7,'what are your strengths','confident'),
(21,7,'what are your weaknesses','workaholic'),
(22,7,'why should we hire u','dedicated'),
(23,7,'tell me about yourself','graduate'),
(24,7,'what are your hobbies','reading');

/*Table structure for table `score_sub` */

DROP TABLE IF EXISTS `score_sub`;

CREATE TABLE `score_sub` (
  `sub_id` int(11) NOT NULL AUTO_INCREMENT,
  `scores_id` int(11) DEFAULT NULL,
  `qn_id` int(11) DEFAULT NULL,
  `emotion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=MyISAM AUTO_INCREMENT=360 DEFAULT CHARSET=latin1;

/*Data for the table `score_sub` */

insert  into `score_sub`(`sub_id`,`scores_id`,`qn_id`,`emotion`) values 
(1,1,1,'happy'),
(2,1,2,'happy'),
(3,1,3,'happy'),
(4,1,4,'happy'),
(5,1,5,'happy'),
(6,2,1,'happy'),
(7,2,2,'happy'),
(8,2,3,'happy'),
(9,2,4,'happy'),
(10,2,5,'happy'),
(11,3,1,'happy'),
(12,3,2,'happy'),
(13,3,3,'happy'),
(14,3,4,'happy'),
(15,3,5,'happy'),
(16,4,12,'happy'),
(17,4,15,'happy'),
(18,4,16,'happy'),
(19,4,17,'happy'),
(20,4,18,'happy'),
(21,5,12,'happy'),
(22,5,15,'happy'),
(23,5,16,'happy'),
(24,5,17,'happy'),
(25,5,18,'happy'),
(26,6,20,'happy'),
(27,6,20,'happy'),
(28,6,21,'happy'),
(29,6,22,'happy'),
(30,6,23,'happy'),
(31,6,24,'happy'),
(32,7,20,'happy'),
(33,7,21,'happy'),
(34,7,22,'happy'),
(35,7,23,'happy'),
(36,7,24,'happy'),
(37,8,20,'happy'),
(38,8,21,'happy'),
(39,8,22,'happy'),
(40,8,23,'happy'),
(41,8,24,'happy'),
(42,9,20,'happy'),
(43,9,21,'happy'),
(44,9,22,'happy'),
(45,9,23,'happy'),
(46,9,24,'happy'),
(47,10,20,'happy'),
(48,10,21,'happy'),
(49,10,22,'happy'),
(50,10,23,'happy'),
(51,10,24,'happy'),
(52,11,20,'happy'),
(53,11,21,'happy'),
(54,11,22,'happy'),
(55,11,23,'happy'),
(56,11,24,'happy'),
(57,12,20,'happy'),
(58,12,21,'happy'),
(59,12,22,'happy'),
(60,12,23,'happy'),
(61,12,24,'happy'),
(62,13,20,'neutral'),
(63,13,21,'neutral'),
(64,13,22,'neutral'),
(65,13,23,'neutral'),
(66,13,24,'neutral'),
(121,24,5,'neutral'),
(120,24,4,'neutral'),
(119,24,3,'neutral'),
(118,24,2,'neutral'),
(117,24,1,'neutral'),
(116,23,5,'neutral'),
(115,23,4,'neutral'),
(114,23,3,'neutral'),
(113,23,2,'neutral'),
(112,23,1,'neutral'),
(77,16,1,'neutral'),
(78,16,2,'neutral'),
(79,16,3,'neutral'),
(80,16,4,'neutral'),
(81,16,5,'neutral'),
(82,17,12,'neutral'),
(83,17,15,'neutral'),
(84,17,16,'neutral'),
(85,17,17,'neutral'),
(86,17,18,'neutral'),
(87,18,12,'neutral'),
(88,18,15,'neutral'),
(89,18,16,'neutral'),
(90,18,17,'neutral'),
(91,18,18,'neutral'),
(92,19,12,'neutral'),
(93,19,15,'neutral'),
(94,19,16,'neutral'),
(95,19,17,'neutral'),
(96,19,18,'neutral'),
(97,20,12,'neutral'),
(98,20,15,'neutral'),
(99,20,16,'neutral'),
(100,20,17,'neutral'),
(101,20,18,'neutral'),
(102,21,12,'neutral'),
(103,21,15,'neutral'),
(104,21,16,'neutral'),
(105,21,17,'neutral'),
(106,21,18,'neutral'),
(107,22,1,'neutral'),
(108,22,2,'neutral'),
(109,22,3,'neutral'),
(110,22,4,'neutral'),
(111,22,5,'neutral'),
(122,25,1,'neutral'),
(123,25,2,'neutral'),
(124,25,3,'neutral'),
(125,25,4,'neutral'),
(126,25,5,'neutral'),
(127,26,20,'neutral'),
(128,26,21,'neutral'),
(129,26,22,'neutral'),
(130,26,23,'neutral'),
(131,26,24,'neutral'),
(132,33,1,'neutral'),
(133,33,2,'neutral'),
(134,33,3,'neutral'),
(135,33,4,'neutral'),
(136,33,5,'neutral'),
(146,35,5,'neutral'),
(145,35,4,'neutral'),
(144,35,3,'neutral'),
(143,35,2,'neutral'),
(142,35,1,'neutral'),
(147,36,1,'neutral'),
(148,36,2,'neutral'),
(149,36,3,'neutral'),
(150,36,4,'neutral'),
(151,36,5,'neutral'),
(152,37,12,'neutral'),
(153,37,15,'neutral'),
(154,37,16,'neutral'),
(155,37,17,'neutral'),
(156,37,18,'neutral'),
(157,38,1,'neutral'),
(158,38,2,'neutral'),
(159,38,3,'neutral'),
(160,38,4,'neutral'),
(161,38,5,'neutral'),
(162,39,20,'neutral'),
(163,39,21,'neutral'),
(164,39,22,'neutral'),
(165,39,23,'neutral'),
(166,39,24,'neutral'),
(167,40,12,'neutral'),
(168,40,15,'neutral'),
(169,40,16,'neutral'),
(170,40,17,'neutral'),
(171,40,18,'neutral'),
(172,41,1,'neutral'),
(173,41,2,'neutral'),
(174,41,3,'neutral'),
(175,41,4,'neutral'),
(176,41,5,'neutral'),
(177,42,1,'neutral'),
(178,42,2,'neutral'),
(179,42,3,'neutral'),
(180,42,4,'neutral'),
(181,42,5,'neutral'),
(182,43,1,'neutral'),
(183,43,2,'neutral'),
(184,43,3,'neutral'),
(185,43,4,'neutral'),
(186,43,5,'neutral'),
(187,44,1,'neutral'),
(188,44,2,'neutral'),
(189,44,3,'neutral'),
(190,44,4,'neutral'),
(191,44,5,'neutral'),
(192,45,1,'neutral'),
(193,45,2,'neutral'),
(194,45,3,'neutral'),
(195,45,4,'neutral'),
(196,45,5,'neutral'),
(197,46,1,'neutral'),
(198,46,2,'neutral'),
(199,46,3,'neutral'),
(200,46,4,'neutral'),
(201,46,5,'neutral'),
(202,47,1,'neutral'),
(203,47,2,'neutral'),
(204,47,3,'neutral'),
(205,47,4,'neutral'),
(206,47,5,'neutral'),
(207,48,1,'neutral'),
(208,48,2,'neutral'),
(209,48,3,'neutral'),
(210,48,4,'neutral'),
(211,48,5,'neutral'),
(212,49,1,'neutral'),
(213,49,1,'neutral'),
(214,50,1,'neutral'),
(215,50,2,'neutral'),
(216,50,3,'neutral'),
(217,50,4,'neutral'),
(218,50,5,'neutral'),
(219,51,1,'neutral'),
(220,51,2,'neutral'),
(221,51,3,'neutral'),
(222,51,4,'neutral'),
(223,51,5,'neutral'),
(224,52,1,'neutral'),
(225,52,2,'neutral'),
(226,52,3,'neutral'),
(227,52,4,'neutral'),
(228,52,5,'neutral'),
(229,54,1,'neutral'),
(230,54,2,'neutral'),
(231,54,3,'neutral'),
(232,54,4,'neutral'),
(233,54,5,'neutral'),
(234,55,1,'neutral'),
(235,55,2,'neutral'),
(236,55,3,'neutral'),
(237,55,4,'neutral'),
(238,55,5,'neutral'),
(239,56,1,'neutral'),
(240,56,2,'neutral'),
(241,56,3,'neutral'),
(242,56,4,'neutral'),
(243,56,5,'neutral'),
(244,58,20,'neutral'),
(245,58,21,'neutral'),
(246,58,22,'neutral'),
(247,58,23,'neutral'),
(248,58,24,'neutral'),
(249,59,20,'neutral'),
(250,59,21,'neutral'),
(251,59,22,'neutral'),
(252,59,23,'neutral'),
(253,59,24,'neutral'),
(254,60,12,'neutral'),
(255,60,15,'neutral'),
(256,60,16,'neutral'),
(257,60,17,'neutral'),
(258,60,18,'neutral'),
(259,61,1,'neutral'),
(260,61,2,'neutral'),
(261,61,3,'neutral'),
(262,61,4,'neutral'),
(263,61,5,'neutral'),
(264,62,1,'neutral'),
(265,62,2,'neutral'),
(266,62,3,'neutral'),
(267,62,4,'neutral'),
(268,62,5,'neutral'),
(269,63,20,'neutral'),
(270,63,21,'neutral'),
(271,63,22,'neutral'),
(272,63,23,'neutral'),
(273,63,24,'neutral'),
(274,64,20,'neutral'),
(275,64,21,'neutral'),
(276,64,22,'neutral'),
(277,64,23,'neutral'),
(278,64,24,'neutral'),
(279,65,20,'neutral'),
(280,66,20,'neutral'),
(281,66,21,'neutral'),
(282,66,22,'neutral'),
(283,66,23,'neutral'),
(284,66,24,'neutral'),
(285,67,1,'neutral'),
(286,67,2,'neutral'),
(287,67,3,'neutral'),
(288,67,4,'neutral'),
(289,67,5,'neutral'),
(290,68,1,'neutral'),
(291,68,2,'neutral'),
(292,68,3,'neutral'),
(293,68,4,'neutral'),
(294,68,5,'neutral'),
(295,69,12,'neutral'),
(296,69,15,'neutral'),
(297,69,16,'neutral'),
(298,69,17,'neutral'),
(299,69,18,'neutral'),
(300,70,20,'neutral'),
(301,70,21,'neutral'),
(302,70,22,'neutral'),
(303,70,23,'neutral'),
(304,70,24,'neutral'),
(305,71,1,'neutral'),
(306,71,2,'neutral'),
(307,71,3,'neutral'),
(308,71,4,'neutral'),
(309,71,5,'neutral'),
(310,72,12,'neutral'),
(311,72,15,'neutral'),
(312,72,16,'neutral'),
(313,72,17,'neutral'),
(314,72,18,'neutral'),
(315,73,12,'neutral'),
(316,73,15,'neutral'),
(317,73,16,'neutral'),
(318,73,17,'neutral'),
(319,73,18,'neutral'),
(320,74,12,'neutral'),
(321,74,15,'neutral'),
(322,74,16,'neutral'),
(323,74,17,'neutral'),
(324,74,18,'neutral'),
(325,75,1,'neutral'),
(326,75,2,'neutral'),
(327,75,3,'neutral'),
(328,75,4,'neutral'),
(329,75,5,'neutral'),
(330,76,1,'neutral'),
(331,76,2,'neutral'),
(332,76,3,'neutral'),
(333,76,4,'neutral'),
(334,76,5,'neutral'),
(335,77,12,'neutral'),
(336,77,15,'neutral'),
(337,77,16,'neutral'),
(338,77,17,'neutral'),
(339,77,18,'neutral'),
(340,79,12,'neutral'),
(341,79,15,'neutral'),
(342,79,16,'neutral'),
(343,79,17,'neutral'),
(344,79,18,'neutral'),
(345,80,1,'neutral'),
(346,80,2,'neutral'),
(347,80,3,'neutral'),
(348,80,4,'neutral'),
(349,80,5,'neutral'),
(350,81,1,'neutral'),
(351,81,2,'neutral'),
(352,81,3,'neutral'),
(353,81,4,'neutral'),
(354,81,5,'neutral'),
(355,82,20,'neutral'),
(356,82,21,'neutral'),
(357,82,22,'neutral'),
(358,82,23,'neutral'),
(359,82,24,'neutral');

/*Table structure for table `scores_main` */

DROP TABLE IF EXISTS `scores_main`;

CREATE TABLE `scores_main` (
  `score_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `score` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`score_id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

/*Data for the table `scores_main` */

insert  into `scores_main`(`score_id`,`test_id`,`user_id`,`date`,`score`) values 
(3,1,15,'2022-05-04','50.0'),
(5,6,15,'2022-05-04','40.0'),
(22,1,16,'2022-05-05','40.0'),
(21,6,16,'2022-05-05','40.0'),
(20,6,16,'2022-05-05','30.0'),
(19,6,16,'2022-05-05','30.0'),
(18,6,16,'2022-05-05','20.0'),
(17,6,16,'2022-05-05','20.0'),
(24,1,9,'2022-05-05','16.547005'),
(23,1,16,'2022-05-05','41.547005'),
(14,7,16,'2022-05-05','50.0'),
(25,1,9,'2022-05-05','5.0'),
(26,7,9,'2022-05-05','30.0'),
(27,6,9,'2022-05-05','0'),
(28,6,9,'2022-05-05','0'),
(29,6,9,'2022-05-05','0'),
(30,6,9,'2022-05-05','0'),
(31,6,9,'2022-05-05','0'),
(32,6,9,'2022-05-05','0'),
(37,6,17,'2022-05-05','30.0'),
(36,1,17,'2022-05-05','15.773502'),
(38,1,18,'2022-05-05','40.0'),
(39,7,18,'2022-05-05','40.0'),
(40,6,18,'2022-05-05','20.0'),
(41,1,18,'2022-05-05','40.0'),
(42,1,5,'2022-05-05','40.0'),
(43,1,5,'2022-05-05','47.071068'),
(44,1,5,'2022-05-05','40.0'),
(45,1,5,'2022-05-05','35.0'),
(46,1,5,'2022-05-05','20.0'),
(47,1,5,'2022-05-05','15.773502'),
(48,1,5,'2022-05-05','15.773502'),
(49,1,19,'2022-05-05','0'),
(50,1,19,'2022-05-05','35.773502'),
(51,1,19,'2022-05-05','20.0'),
(52,1,19,'2022-05-05','30.0'),
(53,1,19,'2022-05-05','0'),
(54,1,19,'2022-05-05','30.0'),
(55,1,19,'2022-05-05','11.547006'),
(56,1,19,'2022-05-05','11.547006'),
(57,7,19,'2022-05-05','0'),
(58,7,19,'2022-05-05','30.0'),
(59,7,19,'2022-05-05','30.0'),
(60,6,19,'2022-05-05','30.0'),
(61,1,19,'2022-05-05','30.0'),
(62,1,20,'2022-05-06','20.0'),
(63,7,20,'2022-05-06','20.0'),
(64,7,20,'2022-05-06','40.0'),
(65,7,20,'2022-05-06','0'),
(66,7,20,'2022-05-06','20.0'),
(67,1,20,'2022-05-06','25.773502'),
(68,1,15,'2022-05-06','27.071068'),
(69,6,15,'2022-05-06','10.0'),
(70,7,15,'2022-05-06','30.0'),
(71,1,15,'2022-05-06','25.773502'),
(72,6,15,'2022-05-06','10.0'),
(73,6,15,'2022-05-06','10.0'),
(74,6,15,'2022-05-06','24.082483'),
(75,1,21,'2022-05-06','15.773502'),
(76,1,21,'2022-05-06','30.0'),
(77,6,21,'2022-05-06','10.0'),
(78,6,21,'2022-05-06','0'),
(79,6,21,'2022-05-06','10.0'),
(80,1,21,'2022-05-06','15.773502'),
(81,1,21,'2022-05-06','21.547005'),
(82,7,22,'2022-05-06','30.0');

/*Table structure for table `test` */

DROP TABLE IF EXISTS `test`;

CREATE TABLE `test` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `interviewer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `test` */

insert  into `test`(`test_id`,`test_name`,`description`,`interviewer_id`) values 
(1,'T1','D1',2),
(5,'test2','description',4),
(4,'niw','dsv',4),
(6,'T1','D1',11),
(7,'TEST 1','DES 2',14);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
