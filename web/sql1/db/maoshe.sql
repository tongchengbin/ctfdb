-- MySQL dump 10.13  Distrib 5.5.53, for Win32 (AMD64)
--
-- Host: localhost    Database: maoshe
-- ------------------------------------------------------
-- Server version	5.5.53

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--
CREATE DATABASE IF NOT EXISTS maoshe
CHARACTER SET utf8
COLLATE utf8_unicode_ci;
USE maoshe;
DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(11) DEFAULT NULL,
  `password` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','hellohack');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dirs`
--

DROP TABLE IF EXISTS `dirs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dirs` (
  `paths` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dirs`
--

LOCK TABLES `dirs` WRITE;
/*!40000 ALTER TABLE `dirs` DISABLE KEYS */;
/*!40000 ALTER TABLE `dirs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'<div class=\"spacer\"></div><div class=\"item\"><div class=\"title\">猫舍介绍</div><div class=\"body\"><h2 align=\"center\">PKD ( DNA ) / FIV / FeLV 阴性</h2><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们是辛巴猫舍，位于中国。是CFA的注册猫舍，主要繁育的品种是异国短毛和波斯，所有猫咪均为CFA注册。<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们的猫咪来自于香港、美国、欧洲的知名猫舍。有着优秀的血统和比赛成绩。我们的血统包括了：daiandlou、Pizzacata、Calivan、blueberry、 Heida 、Dega Bulu、Spellbound、PERFIKATZ等。每年我们的猫咪在中国的CFA比赛上均取得了优秀的成绩。<br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们为猫咪提供了良好的生活环境和最好的照顾。所采用的食物均来自进口天然猫粮。它们与我们如同家人一样生活。为了保证猫咪的良好健康，我们每年仅有少量的小猫出售，分为宠物、繁育、赛级。宠物级的小猫必须绝育。繁育、赛级小猫需要签订协议。</p> </div> </div><div class=\"divider\"></div> <div class=\"body\"> <h2 align=\"center\">辛巴猫舍参加2017云南CFA国际名猫展成绩</h2><h2 align=\"center\">辛巴猫舍繁育的异国短毛猫“dingdang”获</h2><h2 align=\"center\" class=\"STYLE9\">全场两个第一，一个第二;长毛组的第一和第五。</h2> <h2 align=\"center\"><img border=\"0\" src=\"../img/20171219102306dingdangyunnanmaozhan.jpg\" width=\"550\" height=\"618\"><img border=\"0\" src=\"../img/20171219102302dingdangyunnanmaozhan.jpg\" width=\"550\" height=\"611\"></h2><h2 align=\"center\">&nbsp;</h2> <h2 align=\"center\">&nbsp;</h2> </div> <div class=\"body\"> <div align=\"right\"><a href=\"#top\" class=\"navigation\">返回页面顶端</a></div> </div><center><span class=\"navigation\"><a href=\"index.html\">首页</a></span></center><div align=\"center\" class=\"navigation\"></div> <div align=\"left\"> </div>'),(2,'<h1>工程师偷懒可还行.</h1>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xss`
--

DROP TABLE IF EXISTS `xss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xss` (
  `id` int(11) NOT NULL,
  `user` char(16) NOT NULL,
  `pass` char(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

CREATE TABLE IF NOT EXISTS flags (
  id INT AUTO_INCREMENT PRIMARY KEY,
  flag VARCHAR(255) NOT NULL
) CHARACTER SET utf8 COLLATE utf8_unicode_ci;

--
-- Dumping data for table `xss`
--

LOCK TABLES `xss` WRITE;
/*!40000 ALTER TABLE `xss` DISABLE KEYS */;
/*!40000 ALTER TABLE `xss` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-15 17:32:54
