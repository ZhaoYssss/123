-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: biyesheji
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `biyesheji`
--

/*!40000 DROP DATABASE IF EXISTS `biyesheji`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `biyesheji` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `biyesheji`;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COMMENT='投诉反馈';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (111,'2024-03-27 13:37:40',1,1,'提问1','回复1',1),(112,'2024-03-27 13:37:40',2,2,'提问2','回复2',2),(113,'2024-03-27 13:37:40',3,3,'提问3','回复3',3),(114,'2024-03-27 13:37:40',4,4,'提问4','回复4',4),(115,'2024-03-27 13:37:40',5,5,'提问5','回复5',5),(116,'2024-03-27 13:37:40',6,6,'提问6','回复6',6),(117,'2024-03-27 13:37:40',7,7,'提问7','回复7',7),(118,'2024-03-27 13:37:40',8,8,'提问8','回复8',8);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg',NULL),(2,'picture2','upload/picture2.jpg',NULL),(3,'picture3','upload/picture3.jpg',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianleixing`
--

DROP TABLE IF EXISTS `fangjianleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `image` longtext COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianleixing` (`fangjianleixing`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='房间类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianleixing`
--

LOCK TABLES `fangjianleixing` WRITE;
/*!40000 ALTER TABLE `fangjianleixing` DISABLE KEYS */;
INSERT INTO `fangjianleixing` VALUES (41,'2024-03-27 13:37:40','房间类型1','upload/fangjianleixing_image1.jpg,upload/fangjianleixing_image2.jpg,upload/fangjianleixing_image3.jpg'),(42,'2024-03-27 13:37:40','房间类型2','upload/fangjianleixing_image2.jpg,upload/fangjianleixing_image3.jpg,upload/fangjianleixing_image4.jpg'),(43,'2024-03-27 13:37:40','房间类型3','upload/fangjianleixing_image3.jpg,upload/fangjianleixing_image4.jpg,upload/fangjianleixing_image5.jpg'),(44,'2024-03-27 13:37:40','房间类型4','upload/fangjianleixing_image4.jpg,upload/fangjianleixing_image5.jpg,upload/fangjianleixing_image6.jpg'),(45,'2024-03-27 13:37:40','房间类型5','upload/fangjianleixing_image5.jpg,upload/fangjianleixing_image6.jpg,upload/fangjianleixing_image7.jpg'),(46,'2024-03-27 13:37:40','房间类型6','upload/fangjianleixing_image6.jpg,upload/fangjianleixing_image7.jpg,upload/fangjianleixing_image8.jpg'),(47,'2024-03-27 13:37:40','房间类型7','upload/fangjianleixing_image7.jpg,upload/fangjianleixing_image8.jpg,upload/fangjianleixing_image9.jpg'),(48,'2024-03-27 13:37:40','房间类型8','upload/fangjianleixing_image8.jpg,upload/fangjianleixing_image9.jpg,upload/fangjianleixing_image10.jpg');
/*!40000 ALTER TABLE `fangjianleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjiantuiding`
--

DROP TABLE IF EXISTS `fangjiantuiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjiantuiding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `fangjianjiage` varchar(200) DEFAULT NULL COMMENT '房间价格/天',
  `ruzhuriqi` varchar(200) DEFAULT NULL COMMENT '入住日期',
  `yudingtianshu` varchar(200) DEFAULT NULL COMMENT '预订天数',
  `dingdanjine` int(11) DEFAULT NULL COMMENT '订单金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `yudingshijian` varchar(200) DEFAULT NULL COMMENT '预订时间',
  `quxiaoshijian` datetime DEFAULT NULL COMMENT '取消时间',
  `quxiaoshuoming` longtext COMMENT '取消说明',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='房间退订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjiantuiding`
--

LOCK TABLES `fangjiantuiding` WRITE;
/*!40000 ALTER TABLE `fangjiantuiding` DISABLE KEYS */;
INSERT INTO `fangjiantuiding` VALUES (71,'2024-03-27 13:37:40','订单编号1','民宿号1','民宿名称1','房间号1','房间类型1','upload/fangjiantuiding_fangjiantupian1.jpg,upload/fangjiantuiding_fangjiantupian2.jpg,upload/fangjiantuiding_fangjiantupian3.jpg','房间价格/天1','入住日期1','预订天数1',1,'用户账号1','用户姓名1','手机号码1','预订时间1','2024-03-27 21:37:40','取消说明1','是','','未支付'),(72,'2024-03-27 13:37:40','订单编号2','民宿号2','民宿名称2','房间号2','房间类型2','upload/fangjiantuiding_fangjiantupian2.jpg,upload/fangjiantuiding_fangjiantupian3.jpg,upload/fangjiantuiding_fangjiantupian4.jpg','房间价格/天2','入住日期2','预订天数2',2,'用户账号2','用户姓名2','手机号码2','预订时间2','2024-03-27 21:37:40','取消说明2','是','','未支付'),(73,'2024-03-27 13:37:40','订单编号3','民宿号3','民宿名称3','房间号3','房间类型3','upload/fangjiantuiding_fangjiantupian3.jpg,upload/fangjiantuiding_fangjiantupian4.jpg,upload/fangjiantuiding_fangjiantupian5.jpg','房间价格/天3','入住日期3','预订天数3',3,'用户账号3','用户姓名3','手机号码3','预订时间3','2024-03-27 21:37:40','取消说明3','是','','未支付'),(74,'2024-03-27 13:37:40','订单编号4','民宿号4','民宿名称4','房间号4','房间类型4','upload/fangjiantuiding_fangjiantupian4.jpg,upload/fangjiantuiding_fangjiantupian5.jpg,upload/fangjiantuiding_fangjiantupian6.jpg','房间价格/天4','入住日期4','预订天数4',4,'用户账号4','用户姓名4','手机号码4','预订时间4','2024-03-27 21:37:40','取消说明4','是','','未支付'),(75,'2024-03-27 13:37:40','订单编号5','民宿号5','民宿名称5','房间号5','房间类型5','upload/fangjiantuiding_fangjiantupian5.jpg,upload/fangjiantuiding_fangjiantupian6.jpg,upload/fangjiantuiding_fangjiantupian7.jpg','房间价格/天5','入住日期5','预订天数5',5,'用户账号5','用户姓名5','手机号码5','预订时间5','2024-03-27 21:37:40','取消说明5','是','','未支付'),(76,'2024-03-27 13:37:40','订单编号6','民宿号6','民宿名称6','房间号6','房间类型6','upload/fangjiantuiding_fangjiantupian6.jpg,upload/fangjiantuiding_fangjiantupian7.jpg,upload/fangjiantuiding_fangjiantupian8.jpg','房间价格/天6','入住日期6','预订天数6',6,'用户账号6','用户姓名6','手机号码6','预订时间6','2024-03-27 21:37:40','取消说明6','是','','未支付'),(77,'2024-03-27 13:37:40','订单编号7','民宿号7','民宿名称7','房间号7','房间类型7','upload/fangjiantuiding_fangjiantupian7.jpg,upload/fangjiantuiding_fangjiantupian8.jpg,upload/fangjiantuiding_fangjiantupian9.jpg','房间价格/天7','入住日期7','预订天数7',7,'用户账号7','用户姓名7','手机号码7','预订时间7','2024-03-27 21:37:40','取消说明7','是','','未支付'),(78,'2024-03-27 13:37:40','订单编号8','民宿号8','民宿名称8','房间号8','房间类型8','upload/fangjiantuiding_fangjiantupian8.jpg,upload/fangjiantuiding_fangjiantupian9.jpg,upload/fangjiantuiding_fangjiantupian10.jpg','房间价格/天8','入住日期8','预订天数8',8,'用户账号8','用户姓名8','手机号码8','预订时间8','2024-03-27 21:37:40','取消说明8','是','','未支付');
/*!40000 ALTER TABLE `fangjiantuiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fangjianyuding`
--

DROP TABLE IF EXISTS `fangjianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fangjianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `fangjianjiage` int(11) DEFAULT NULL COMMENT '房间价格/天',
  `ruzhuriqi` date NOT NULL COMMENT '入住日期',
  `yudingtianshu` int(11) NOT NULL COMMENT '预订天数',
  `dingdanjine` int(11) DEFAULT NULL COMMENT '订单金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `yudingshijian` datetime DEFAULT NULL COMMENT '预订时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COMMENT='房间预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fangjianyuding`
--

LOCK TABLES `fangjianyuding` WRITE;
/*!40000 ALTER TABLE `fangjianyuding` DISABLE KEYS */;
INSERT INTO `fangjianyuding` VALUES (61,'2024-03-27 13:37:40','1111111111','民宿号1','民宿名称1','房间号1','房间类型1','upload/fangjianyuding_fangjiantupian1.jpg,upload/fangjianyuding_fangjiantupian2.jpg,upload/fangjianyuding_fangjiantupian3.jpg',1,'2024-03-27',1,1,'用户账号1','用户姓名1','手机号码1','已退订','2024-03-27 21:37:40','未支付'),(62,'2024-03-27 13:37:40','2222222222','民宿号2','民宿名称2','房间号2','房间类型2','upload/fangjianyuding_fangjiantupian2.jpg,upload/fangjianyuding_fangjiantupian3.jpg,upload/fangjianyuding_fangjiantupian4.jpg',2,'2024-03-27',2,2,'用户账号2','用户姓名2','手机号码2','已退订','2024-03-27 21:37:40','未支付'),(63,'2024-03-27 13:37:40','3333333333','民宿号3','民宿名称3','房间号3','房间类型3','upload/fangjianyuding_fangjiantupian3.jpg,upload/fangjianyuding_fangjiantupian4.jpg,upload/fangjianyuding_fangjiantupian5.jpg',3,'2024-03-27',3,3,'用户账号3','用户姓名3','手机号码3','已退订','2024-03-27 21:37:40','未支付'),(64,'2024-03-27 13:37:40','4444444444','民宿号4','民宿名称4','房间号4','房间类型4','upload/fangjianyuding_fangjiantupian4.jpg,upload/fangjianyuding_fangjiantupian5.jpg,upload/fangjianyuding_fangjiantupian6.jpg',4,'2024-03-27',4,4,'用户账号4','用户姓名4','手机号码4','已退订','2024-03-27 21:37:40','未支付'),(65,'2024-03-27 13:37:40','5555555555','民宿号5','民宿名称5','房间号5','房间类型5','upload/fangjianyuding_fangjiantupian5.jpg,upload/fangjianyuding_fangjiantupian6.jpg,upload/fangjianyuding_fangjiantupian7.jpg',5,'2024-03-27',5,5,'用户账号5','用户姓名5','手机号码5','已退订','2024-03-27 21:37:40','未支付'),(66,'2024-03-27 13:37:40','6666666666','民宿号6','民宿名称6','房间号6','房间类型6','upload/fangjianyuding_fangjiantupian6.jpg,upload/fangjianyuding_fangjiantupian7.jpg,upload/fangjianyuding_fangjiantupian8.jpg',6,'2024-03-27',6,6,'用户账号6','用户姓名6','手机号码6','已退订','2024-03-27 21:37:40','未支付'),(67,'2024-03-27 13:37:40','7777777777','民宿号7','民宿名称7','房间号7','房间类型7','upload/fangjianyuding_fangjiantupian7.jpg,upload/fangjianyuding_fangjiantupian8.jpg,upload/fangjianyuding_fangjiantupian9.jpg',7,'2024-03-27',7,7,'用户账号7','用户姓名7','手机号码7','已退订','2024-03-27 21:37:40','未支付'),(68,'2024-03-27 13:37:40','8888888888','民宿号8','民宿名称8','房间号8','房间类型8','upload/fangjianyuding_fangjiantupian8.jpg,upload/fangjianyuding_fangjiantupian9.jpg,upload/fangjianyuding_fangjiantupian10.jpg',8,'2024-03-27',8,8,'用户账号8','用户姓名8','手机号码8','已退订','2024-03-27 21:37:40','未支付'),(69,'2024-03-27 13:41:38','1711546883950','民宿号8','民宿名称8','房间号8','房间类型8','upload/kefangxinxi_fangjiantupian8.jpg',8,'2024-03-27',3,24,'用户账号1','用户姓名1','13823888881','生效中','2024-03-27 21:41:23','已支付');
/*!40000 ALTER TABLE `fangjianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kefangxinxi`
--

DROP TABLE IF EXISTS `kefangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kefangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianhao` varchar(200) NOT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) NOT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `fangjianzhuangtai` varchar(200) DEFAULT NULL COMMENT '房间状态',
  `fangjianxiangqing` longtext COMMENT '房间详情',
  `fangjianjiage` int(11) NOT NULL COMMENT '房间价格/天',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `fangjianhao` (`fangjianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='客房信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kefangxinxi`
--

LOCK TABLES `kefangxinxi` WRITE;
/*!40000 ALTER TABLE `kefangxinxi` DISABLE KEYS */;
INSERT INTO `kefangxinxi` VALUES (51,'2024-03-27 13:37:40','民宿号1','民宿名称1','房间号1','房间类型1','upload/kefangxinxi_fangjiantupian1.jpg,upload/kefangxinxi_fangjiantupian2.jpg,upload/kefangxinxi_fangjiantupian3.jpg','已预订','房间详情1',1,'2024-03-27 21:37:40',1),(52,'2024-03-27 13:37:40','民宿号2','民宿名称2','房间号2','房间类型2','upload/kefangxinxi_fangjiantupian2.jpg,upload/kefangxinxi_fangjiantupian3.jpg,upload/kefangxinxi_fangjiantupian4.jpg','已预订','房间详情2',2,'2024-03-27 21:37:40',2),(53,'2024-03-27 13:37:40','民宿号3','民宿名称3','房间号3','房间类型3','upload/kefangxinxi_fangjiantupian3.jpg,upload/kefangxinxi_fangjiantupian4.jpg,upload/kefangxinxi_fangjiantupian5.jpg','已预订','房间详情3',3,'2024-03-27 21:37:40',3),(54,'2024-03-27 13:37:40','民宿号4','民宿名称4','房间号4','房间类型4','upload/kefangxinxi_fangjiantupian4.jpg,upload/kefangxinxi_fangjiantupian5.jpg,upload/kefangxinxi_fangjiantupian6.jpg','已预订','房间详情4',4,'2024-03-27 21:37:40',4),(55,'2024-03-27 13:37:40','民宿号5','民宿名称5','房间号5','房间类型5','upload/kefangxinxi_fangjiantupian5.jpg,upload/kefangxinxi_fangjiantupian6.jpg,upload/kefangxinxi_fangjiantupian7.jpg','已预订','房间详情5',5,'2024-03-27 21:37:40',5),(56,'2024-03-27 13:37:40','民宿号6','民宿名称6','房间号6','房间类型6','upload/kefangxinxi_fangjiantupian6.jpg,upload/kefangxinxi_fangjiantupian7.jpg,upload/kefangxinxi_fangjiantupian8.jpg','已预订','房间详情6',6,'2024-03-27 21:37:40',6),(57,'2024-03-27 13:37:40','民宿号7','民宿名称7','房间号7','房间类型7','upload/kefangxinxi_fangjiantupian7.jpg,upload/kefangxinxi_fangjiantupian8.jpg,upload/kefangxinxi_fangjiantupian9.jpg','已预订','房间详情7',7,'2024-03-27 21:37:40',7),(58,'2024-03-27 13:37:40','民宿号8','民宿名称8','房间号8','房间类型8','upload/kefangxinxi_fangjiantupian8.jpg,upload/kefangxinxi_fangjiantupian9.jpg,upload/kefangxinxi_fangjiantupian10.jpg','已预订','<p>房间详情8</p>',8,'2024-03-27 21:41:40',11);
/*!40000 ALTER TABLE `kefangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minsushangjia`
--

DROP TABLE IF EXISTS `minsushangjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minsushangjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `minsuhao` varchar(200) NOT NULL COMMENT '民宿号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `minsumingcheng` varchar(200) NOT NULL COMMENT '民宿名称',
  `minsudizhi` varchar(200) NOT NULL COMMENT '民宿地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yingyezhizhao` longtext COMMENT '营业执照',
  PRIMARY KEY (`id`),
  UNIQUE KEY `minsuhao` (`minsuhao`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='民宿商家';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minsushangjia`
--

LOCK TABLES `minsushangjia` WRITE;
/*!40000 ALTER TABLE `minsushangjia` DISABLE KEYS */;
INSERT INTO `minsushangjia` VALUES (21,'2024-03-27 13:37:39','民宿号1','123456','民宿名称1','民宿地址1','13823888881','upload/minsushangjia_yingyezhizhao1.jpg'),(22,'2024-03-27 13:37:39','民宿号2','123456','民宿名称2','民宿地址2','13823888882','upload/minsushangjia_yingyezhizhao2.jpg'),(23,'2024-03-27 13:37:39','民宿号3','123456','民宿名称3','民宿地址3','13823888883','upload/minsushangjia_yingyezhizhao3.jpg'),(24,'2024-03-27 13:37:39','民宿号4','123456','民宿名称4','民宿地址4','13823888884','upload/minsushangjia_yingyezhizhao4.jpg'),(25,'2024-03-27 13:37:39','民宿号5','123456','民宿名称5','民宿地址5','13823888885','upload/minsushangjia_yingyezhizhao5.jpg'),(26,'2024-03-27 13:37:39','民宿号6','123456','民宿名称6','民宿地址6','13823888886','upload/minsushangjia_yingyezhizhao6.jpg'),(27,'2024-03-27 13:37:39','民宿号7','123456','民宿名称7','民宿地址7','13823888887','upload/minsushangjia_yingyezhizhao7.jpg'),(28,'2024-03-27 13:37:39','民宿号8','123456','民宿名称8','民宿地址8','13823888888','upload/minsushangjia_yingyezhizhao8.jpg');
/*!40000 ALTER TABLE `minsushangjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minsuxinxi`
--

DROP TABLE IF EXISTS `minsuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `minsuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `minsutupian` longtext COMMENT '民宿图片',
  `minsudizhi` varchar(200) DEFAULT NULL COMMENT '民宿地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `zhoubianhuanjing` longtext COMMENT '周边环境',
  `minsujieshao` longtext COMMENT '民宿介绍',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `storeupnum` int(11) DEFAULT '0' COMMENT '收藏数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='民宿信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minsuxinxi`
--

LOCK TABLES `minsuxinxi` WRITE;
/*!40000 ALTER TABLE `minsuxinxi` DISABLE KEYS */;
INSERT INTO `minsuxinxi` VALUES (31,'2024-03-27 13:37:39','民宿号1','民宿名称1','upload/minsuxinxi_minsutupian1.jpg,upload/minsuxinxi_minsutupian2.jpg,upload/minsuxinxi_minsutupian3.jpg','民宿地址1','联系电话1','周边环境1','民宿介绍1','2024-03-27 21:37:39',1,1),(32,'2024-03-27 13:37:39','民宿号2','民宿名称2','upload/minsuxinxi_minsutupian2.jpg,upload/minsuxinxi_minsutupian3.jpg,upload/minsuxinxi_minsutupian4.jpg','民宿地址2','联系电话2','周边环境2','民宿介绍2','2024-03-27 21:37:39',2,2),(33,'2024-03-27 13:37:40','民宿号3','民宿名称3','upload/minsuxinxi_minsutupian3.jpg,upload/minsuxinxi_minsutupian4.jpg,upload/minsuxinxi_minsutupian5.jpg','民宿地址3','联系电话3','周边环境3','民宿介绍3','2024-03-27 21:37:40',3,3),(34,'2024-03-27 13:37:40','民宿号4','民宿名称4','upload/minsuxinxi_minsutupian4.jpg,upload/minsuxinxi_minsutupian5.jpg,upload/minsuxinxi_minsutupian6.jpg','民宿地址4','联系电话4','周边环境4','民宿介绍4','2024-03-27 21:37:40',4,4),(35,'2024-03-27 13:37:40','民宿号5','民宿名称5','upload/minsuxinxi_minsutupian5.jpg,upload/minsuxinxi_minsutupian6.jpg,upload/minsuxinxi_minsutupian7.jpg','民宿地址5','联系电话5','周边环境5','民宿介绍5','2024-03-27 21:37:40',5,5),(36,'2024-03-27 13:37:40','民宿号6','民宿名称6','upload/minsuxinxi_minsutupian6.jpg,upload/minsuxinxi_minsutupian7.jpg,upload/minsuxinxi_minsutupian8.jpg','民宿地址6','联系电话6','周边环境6','民宿介绍6','2024-03-27 21:37:40',6,6),(37,'2024-03-27 13:37:40','民宿号7','民宿名称7','upload/minsuxinxi_minsutupian7.jpg,upload/minsuxinxi_minsutupian8.jpg,upload/minsuxinxi_minsutupian9.jpg','民宿地址7','联系电话7','周边环境7','民宿介绍7','2024-03-27 21:37:40',7,7),(38,'2024-03-27 13:37:40','民宿号8','民宿名称8','upload/minsuxinxi_minsutupian8.jpg,upload/minsuxinxi_minsutupian9.jpg,upload/minsuxinxi_minsutupian10.jpg','民宿地址8','联系电话8','周边环境8','民宿介绍8','2024-03-27 21:37:40',8,8);
/*!40000 ALTER TABLE `minsuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pingjiaxinxi`
--

DROP TABLE IF EXISTS `pingjiaxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pingjiaxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `pingjianeirong` longtext NOT NULL COMMENT '评价内容',
  `pingjiashijian` datetime DEFAULT NULL COMMENT '评价时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `shhf` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='评价信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pingjiaxinxi`
--

LOCK TABLES `pingjiaxinxi` WRITE;
/*!40000 ALTER TABLE `pingjiaxinxi` DISABLE KEYS */;
INSERT INTO `pingjiaxinxi` VALUES (101,'2024-03-27 13:37:40','订单编号1','民宿号1','民宿名称1','房间号1','房间类型1','upload/pingjiaxinxi_fangjiantupian1.jpg,upload/pingjiaxinxi_fangjiantupian2.jpg,upload/pingjiaxinxi_fangjiantupian3.jpg','用户账号1','用户姓名1','手机号码1','评价内容1','2024-03-27 21:37:40',1,1,''),(102,'2024-03-27 13:37:40','订单编号2','民宿号2','民宿名称2','房间号2','房间类型2','upload/pingjiaxinxi_fangjiantupian2.jpg,upload/pingjiaxinxi_fangjiantupian3.jpg,upload/pingjiaxinxi_fangjiantupian4.jpg','用户账号2','用户姓名2','手机号码2','评价内容2','2024-03-27 21:37:40',2,2,''),(103,'2024-03-27 13:37:40','订单编号3','民宿号3','民宿名称3','房间号3','房间类型3','upload/pingjiaxinxi_fangjiantupian3.jpg,upload/pingjiaxinxi_fangjiantupian4.jpg,upload/pingjiaxinxi_fangjiantupian5.jpg','用户账号3','用户姓名3','手机号码3','评价内容3','2024-03-27 21:37:40',3,3,''),(104,'2024-03-27 13:37:40','订单编号4','民宿号4','民宿名称4','房间号4','房间类型4','upload/pingjiaxinxi_fangjiantupian4.jpg,upload/pingjiaxinxi_fangjiantupian5.jpg,upload/pingjiaxinxi_fangjiantupian6.jpg','用户账号4','用户姓名4','手机号码4','评价内容4','2024-03-27 21:37:40',4,4,''),(105,'2024-03-27 13:37:40','订单编号5','民宿号5','民宿名称5','房间号5','房间类型5','upload/pingjiaxinxi_fangjiantupian5.jpg,upload/pingjiaxinxi_fangjiantupian6.jpg,upload/pingjiaxinxi_fangjiantupian7.jpg','用户账号5','用户姓名5','手机号码5','评价内容5','2024-03-27 21:37:40',5,5,''),(106,'2024-03-27 13:37:40','订单编号6','民宿号6','民宿名称6','房间号6','房间类型6','upload/pingjiaxinxi_fangjiantupian6.jpg,upload/pingjiaxinxi_fangjiantupian7.jpg,upload/pingjiaxinxi_fangjiantupian8.jpg','用户账号6','用户姓名6','手机号码6','评价内容6','2024-03-27 21:37:40',6,6,''),(107,'2024-03-27 13:37:40','订单编号7','民宿号7','民宿名称7','房间号7','房间类型7','upload/pingjiaxinxi_fangjiantupian7.jpg,upload/pingjiaxinxi_fangjiantupian8.jpg,upload/pingjiaxinxi_fangjiantupian9.jpg','用户账号7','用户姓名7','手机号码7','评价内容7','2024-03-27 21:37:40',7,7,''),(108,'2024-03-27 13:37:40','订单编号8','民宿号8','民宿名称8','房间号8','房间类型8','upload/pingjiaxinxi_fangjiantupian8.jpg,upload/pingjiaxinxi_fangjiantupian9.jpg,upload/pingjiaxinxi_fangjiantupian10.jpg','用户账号8','用户姓名8','手机号码8','评价内容8','2024-03-27 21:37:40',8,8,'');
/*!40000 ALTER TABLE `pingjiaxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ruzhuxinxi`
--

DROP TABLE IF EXISTS `ruzhuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ruzhuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `fangjianjiage` varchar(200) DEFAULT NULL COMMENT '房间价格/天',
  `ruzhuriqi` varchar(200) DEFAULT NULL COMMENT '入住日期',
  `yudingtianshu` int(11) DEFAULT NULL COMMENT '预订天数',
  `dingdanjine` int(11) DEFAULT NULL COMMENT '订单金额',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `ruzhushijian` datetime DEFAULT NULL COMMENT '入住时间',
  `ruzhuzhuangtai` varchar(200) DEFAULT NULL COMMENT '入住状态',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='入住信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ruzhuxinxi`
--

LOCK TABLES `ruzhuxinxi` WRITE;
/*!40000 ALTER TABLE `ruzhuxinxi` DISABLE KEYS */;
INSERT INTO `ruzhuxinxi` VALUES (81,'2024-03-27 13:37:40','订单编号1','民宿号1','民宿名称1','房间号1','房间类型1','upload/ruzhuxinxi_fangjiantupian1.jpg,upload/ruzhuxinxi_fangjiantupian2.jpg,upload/ruzhuxinxi_fangjiantupian3.jpg','房间价格/天1','入住日期1',1,1,'用户账号1','用户姓名1','手机号码1','2024-03-27 21:37:40','已退房',1,1,'是',''),(82,'2024-03-27 13:37:40','订单编号2','民宿号2','民宿名称2','房间号2','房间类型2','upload/ruzhuxinxi_fangjiantupian2.jpg,upload/ruzhuxinxi_fangjiantupian3.jpg,upload/ruzhuxinxi_fangjiantupian4.jpg','房间价格/天2','入住日期2',2,2,'用户账号2','用户姓名2','手机号码2','2024-03-27 21:37:40','已退房',2,2,'是',''),(83,'2024-03-27 13:37:40','订单编号3','民宿号3','民宿名称3','房间号3','房间类型3','upload/ruzhuxinxi_fangjiantupian3.jpg,upload/ruzhuxinxi_fangjiantupian4.jpg,upload/ruzhuxinxi_fangjiantupian5.jpg','房间价格/天3','入住日期3',3,3,'用户账号3','用户姓名3','手机号码3','2024-03-27 21:37:40','已退房',3,3,'是',''),(84,'2024-03-27 13:37:40','订单编号4','民宿号4','民宿名称4','房间号4','房间类型4','upload/ruzhuxinxi_fangjiantupian4.jpg,upload/ruzhuxinxi_fangjiantupian5.jpg,upload/ruzhuxinxi_fangjiantupian6.jpg','房间价格/天4','入住日期4',4,4,'用户账号4','用户姓名4','手机号码4','2024-03-27 21:37:40','已退房',4,4,'是',''),(85,'2024-03-27 13:37:40','订单编号5','民宿号5','民宿名称5','房间号5','房间类型5','upload/ruzhuxinxi_fangjiantupian5.jpg,upload/ruzhuxinxi_fangjiantupian6.jpg,upload/ruzhuxinxi_fangjiantupian7.jpg','房间价格/天5','入住日期5',5,5,'用户账号5','用户姓名5','手机号码5','2024-03-27 21:37:40','已退房',5,5,'是',''),(86,'2024-03-27 13:37:40','订单编号6','民宿号6','民宿名称6','房间号6','房间类型6','upload/ruzhuxinxi_fangjiantupian6.jpg,upload/ruzhuxinxi_fangjiantupian7.jpg,upload/ruzhuxinxi_fangjiantupian8.jpg','房间价格/天6','入住日期6',6,6,'用户账号6','用户姓名6','手机号码6','2024-03-27 21:37:40','已退房',6,6,'是',''),(87,'2024-03-27 13:37:40','订单编号7','民宿号7','民宿名称7','房间号7','房间类型7','upload/ruzhuxinxi_fangjiantupian7.jpg,upload/ruzhuxinxi_fangjiantupian8.jpg,upload/ruzhuxinxi_fangjiantupian9.jpg','房间价格/天7','入住日期7',7,7,'用户账号7','用户姓名7','手机号码7','2024-03-27 21:37:40','已退房',7,7,'是',''),(88,'2024-03-27 13:37:40','订单编号8','民宿号8','民宿名称8','房间号8','房间类型8','upload/ruzhuxinxi_fangjiantupian8.jpg,upload/ruzhuxinxi_fangjiantupian9.jpg,upload/ruzhuxinxi_fangjiantupian10.jpg','房间价格/天8','入住日期8',8,8,'用户账号8','用户姓名8','手机号码8','2024-03-27 21:37:40','已退房',8,8,'是',''),(89,'2024-03-27 13:41:54','1711546883950','民宿号8','民宿名称8','房间号8','房间类型8','upload/kefangxinxi_fangjiantupian8.jpg','8','2024-03-27',3,24,'用户账号1','用户姓名1','13823888881','2024-03-27 21:41:45','已退房',11,69,'是','确认');
/*!40000 ALTER TABLE `ruzhuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '商品id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '名称',
  `picture` longtext COMMENT '图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,11,'用户账号1','yonghu','用户','7h0nwvz1u77bcq0a4vdnhuff0rwc82v2','2024-03-27 13:40:33','2024-03-27 14:43:59'),(2,1,'admin','users','管理员','dey2xk3d9gdnxko0ppg1f1qe738fjm4i','2024-03-27 13:41:03','2024-03-27 14:43:06'),(3,27,'民宿号7','minsushangjia','民宿商家','kirkzb0jqg7v0j5gqt9cljm37iutywfn','2024-03-27 13:43:17','2024-03-27 14:43:18'),(4,28,'民宿号8','minsushangjia','民宿商家','knnaoknvs8fq6kqmbysk6b26ko2anuvd','2024-03-27 13:43:37','2024-03-27 14:43:38'),(5,21,'民宿号1','minsushangjia','民宿商家','r99rjjh28p5yqwysq8xibbv74plgrt22','2024-03-27 13:45:09','2024-03-27 14:45:09');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tuifangxinxi`
--

DROP TABLE IF EXISTS `tuifangxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tuifangxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `minsuhao` varchar(200) DEFAULT NULL COMMENT '民宿号',
  `minsumingcheng` varchar(200) DEFAULT NULL COMMENT '民宿名称',
  `fangjianhao` varchar(200) DEFAULT NULL COMMENT '房间号',
  `fangjianleixing` varchar(200) DEFAULT NULL COMMENT '房间类型',
  `fangjiantupian` longtext COMMENT '房间图片',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `shoujihaoma` varchar(200) DEFAULT NULL COMMENT '手机号码',
  `tuifangshijian` datetime DEFAULT NULL COMMENT '退房时间',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='退房信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tuifangxinxi`
--

LOCK TABLES `tuifangxinxi` WRITE;
/*!40000 ALTER TABLE `tuifangxinxi` DISABLE KEYS */;
INSERT INTO `tuifangxinxi` VALUES (91,'2024-03-27 13:37:40','订单编号1','民宿号1','民宿名称1','房间号1','房间类型1','upload/tuifangxinxi_fangjiantupian1.jpg,upload/tuifangxinxi_fangjiantupian2.jpg,upload/tuifangxinxi_fangjiantupian3.jpg','用户账号1','用户姓名1','手机号码1','2024-03-27 21:37:40','是',''),(92,'2024-03-27 13:37:40','订单编号2','民宿号2','民宿名称2','房间号2','房间类型2','upload/tuifangxinxi_fangjiantupian2.jpg,upload/tuifangxinxi_fangjiantupian3.jpg,upload/tuifangxinxi_fangjiantupian4.jpg','用户账号2','用户姓名2','手机号码2','2024-03-27 21:37:40','是',''),(93,'2024-03-27 13:37:40','订单编号3','民宿号3','民宿名称3','房间号3','房间类型3','upload/tuifangxinxi_fangjiantupian3.jpg,upload/tuifangxinxi_fangjiantupian4.jpg,upload/tuifangxinxi_fangjiantupian5.jpg','用户账号3','用户姓名3','手机号码3','2024-03-27 21:37:40','是',''),(94,'2024-03-27 13:37:40','订单编号4','民宿号4','民宿名称4','房间号4','房间类型4','upload/tuifangxinxi_fangjiantupian4.jpg,upload/tuifangxinxi_fangjiantupian5.jpg,upload/tuifangxinxi_fangjiantupian6.jpg','用户账号4','用户姓名4','手机号码4','2024-03-27 21:37:40','是',''),(95,'2024-03-27 13:37:40','订单编号5','民宿号5','民宿名称5','房间号5','房间类型5','upload/tuifangxinxi_fangjiantupian5.jpg,upload/tuifangxinxi_fangjiantupian6.jpg,upload/tuifangxinxi_fangjiantupian7.jpg','用户账号5','用户姓名5','手机号码5','2024-03-27 21:37:40','是',''),(96,'2024-03-27 13:37:40','订单编号6','民宿号6','民宿名称6','房间号6','房间类型6','upload/tuifangxinxi_fangjiantupian6.jpg,upload/tuifangxinxi_fangjiantupian7.jpg,upload/tuifangxinxi_fangjiantupian8.jpg','用户账号6','用户姓名6','手机号码6','2024-03-27 21:37:40','是',''),(97,'2024-03-27 13:37:40','订单编号7','民宿号7','民宿名称7','房间号7','房间类型7','upload/tuifangxinxi_fangjiantupian7.jpg,upload/tuifangxinxi_fangjiantupian8.jpg,upload/tuifangxinxi_fangjiantupian9.jpg','用户账号7','用户姓名7','手机号码7','2024-03-27 21:37:40','是',''),(98,'2024-03-27 13:37:40','订单编号8','民宿号8','民宿名称8','房间号8','房间类型8','upload/tuifangxinxi_fangjiantupian8.jpg,upload/tuifangxinxi_fangjiantupian9.jpg,upload/tuifangxinxi_fangjiantupian10.jpg','用户账号8','用户姓名8','手机号码8','2024-03-27 21:37:40','是',''),(99,'2024-03-27 13:44:04','1711546883950','民宿号8','民宿名称8','房间号8','房间类型8','upload/kefangxinxi_fangjiantupian8.jpg','用户账号1','用户姓名1','13823888881','2024-03-27 21:43:57','待审核',NULL);
/*!40000 ALTER TABLE `tuifangxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `image` varchar(200) DEFAULT NULL COMMENT '头像',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','upload/image1.jpg','管理员','2024-03-27 13:37:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shoujihaoma` varchar(200) NOT NULL COMMENT '手机号码',
  `touxiang` longtext COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2024-03-27 13:37:39','用户账号1','123456','用户姓名1','男',1,'13823888881','upload/yonghu_touxiang1.jpg'),(12,'2024-03-27 13:37:39','用户账号2','123456','用户姓名2','男',2,'13823888882','upload/yonghu_touxiang2.jpg'),(13,'2024-03-27 13:37:39','用户账号3','123456','用户姓名3','男',3,'13823888883','upload/yonghu_touxiang3.jpg'),(14,'2024-03-27 13:37:39','用户账号4','123456','用户姓名4','男',4,'13823888884','upload/yonghu_touxiang4.jpg'),(15,'2024-03-27 13:37:39','用户账号5','123456','用户姓名5','男',5,'13823888885','upload/yonghu_touxiang5.jpg'),(16,'2024-03-27 13:37:39','用户账号6','123456','用户姓名6','男',6,'13823888886','upload/yonghu_touxiang6.jpg'),(17,'2024-03-27 13:37:39','用户账号7','123456','用户姓名7','男',7,'13823888887','upload/yonghu_touxiang7.jpg'),(18,'2024-03-27 13:37:39','用户账号8','123456','用户姓名8','男',8,'13823888888','upload/yonghu_touxiang8.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-28 11:27:04
