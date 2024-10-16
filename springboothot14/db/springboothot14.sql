-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: springboothot14
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
-- Current Database: `springboothot14`
--

/*!40000 DROP DATABASE IF EXISTS `springboothot14`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `springboothot14` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `springboothot14`;

--
-- Table structure for table `caigou`
--

DROP TABLE IF EXISTS `caigou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `caigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigouzhanghao` varchar(200) NOT NULL COMMENT '采购账号',
  `caigouxingming` varchar(200) NOT NULL COMMENT '采购姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigouzhanghao` (`caigouzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861172810 DEFAULT CHARSET=utf8 COMMENT='采购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caigou`
--

LOCK TABLES `caigou` WRITE;
/*!40000 ALTER TABLE `caigou` DISABLE KEYS */;
INSERT INTO `caigou` VALUES (21,'2023-02-20 02:44:46','采购账号1','采购姓名1','123456','男','upload/caigou_touxiang1.jpg','13823888881'),(22,'2023-02-20 02:44:46','采购账号2','采购姓名2','123456','男','upload/caigou_touxiang2.jpg','13823888882'),(23,'2023-02-20 02:44:46','采购账号3','采购姓名3','123456','男','upload/caigou_touxiang3.jpg','13823888883'),(24,'2023-02-20 02:44:46','采购账号4','采购姓名4','123456','男','upload/caigou_touxiang4.jpg','13823888884'),(25,'2023-02-20 02:44:46','采购账号5','采购姓名5','123456','男','upload/caigou_touxiang5.jpg','13823888885'),(26,'2023-02-20 02:44:46','采购账号6','采购姓名6','123456','男','upload/caigou_touxiang6.jpg','13823888886'),(27,'2023-02-20 02:44:46','采购账号7','采购姓名7','123456','男','upload/caigou_touxiang7.jpg','13823888887'),(28,'2023-02-20 02:44:46','采购账号8','采购姓名8','123456','男','upload/caigou_touxiang8.jpg','13823888888'),(1676861172809,'2023-02-20 02:46:12','222','222','222','男','upload/1676861169156.jpg','13513513555');
/*!40000 ALTER TABLE `caigou` ENABLE KEYS */;
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gudingzichan`
--

DROP TABLE IF EXISTS `gudingzichan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gudingzichan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanbianma` varchar(200) DEFAULT NULL COMMENT '资产编码',
  `zichanmingcheng` varchar(200) NOT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichantupian` longtext NOT NULL COMMENT '资产图片',
  `zichandanjia` varchar(200) NOT NULL COMMENT '资产单价',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `shiyongzhuangkuang` varchar(200) NOT NULL COMMENT '使用状况',
  `goumaishijian` date DEFAULT NULL COMMENT '购买时间',
  `zichanxiangqing` longtext COMMENT '资产详情',
  `guishushuoming` longtext COMMENT '归属说明',
  `shiyongmiaoshu` longtext COMMENT '使用描述',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zichanbianma` (`zichanbianma`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861271388 DEFAULT CHARSET=utf8 COMMENT='固定资产';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gudingzichan`
--

LOCK TABLES `gudingzichan` WRITE;
/*!40000 ALTER TABLE `gudingzichan` DISABLE KEYS */;
INSERT INTO `gudingzichan` VALUES (51,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1','upload/gudingzichan_zichantupian1.jpg,upload/gudingzichan_zichantupian2.jpg,upload/gudingzichan_zichantupian3.jpg','资产单价1','0','使用状况1','2023-02-20','资产详情1','归属说明1','使用描述1','员工工号1','员工姓名1'),(52,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2','upload/gudingzichan_zichantupian2.jpg,upload/gudingzichan_zichantupian3.jpg,upload/gudingzichan_zichantupian4.jpg','资产单价2','0','使用状况2','2023-02-20','资产详情2','归属说明2','使用描述2','员工工号2','员工姓名2'),(53,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3','upload/gudingzichan_zichantupian3.jpg,upload/gudingzichan_zichantupian4.jpg,upload/gudingzichan_zichantupian5.jpg','资产单价3','0','使用状况3','2023-02-20','资产详情3','归属说明3','使用描述3','员工工号3','员工姓名3'),(54,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4','upload/gudingzichan_zichantupian4.jpg,upload/gudingzichan_zichantupian5.jpg,upload/gudingzichan_zichantupian6.jpg','资产单价4','0','使用状况4','2023-02-20','资产详情4','归属说明4','使用描述4','员工工号4','员工姓名4'),(55,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5','upload/gudingzichan_zichantupian5.jpg,upload/gudingzichan_zichantupian6.jpg,upload/gudingzichan_zichantupian7.jpg','资产单价5','0','使用状况5','2023-02-20','资产详情5','归属说明5','使用描述5','员工工号5','员工姓名5'),(56,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6','upload/gudingzichan_zichantupian6.jpg,upload/gudingzichan_zichantupian7.jpg,upload/gudingzichan_zichantupian8.jpg','资产单价6','0','使用状况6','2023-02-20','资产详情6','归属说明6','使用描述6','员工工号6','员工姓名6'),(57,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7','upload/gudingzichan_zichantupian7.jpg,upload/gudingzichan_zichantupian8.jpg,upload/gudingzichan_zichantupian9.jpg','资产单价7','0','使用状况7','2023-02-20','资产详情7','归属说明7','使用描述7','员工工号7','员工姓名7'),(58,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8','upload/gudingzichan_zichantupian8.jpg,upload/gudingzichan_zichantupian9.jpg,upload/gudingzichan_zichantupian10.jpg','资产单价8','0','使用状况8','2023-02-20','资产详情8','归属说明8','使用描述8','员工工号8','员工姓名8'),(1676861271387,'2023-02-20 02:47:51','1676860876677','机器','小资产','upload/1676861240139.jpg','165','121','空置','2021-02-01','<p>适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪</p><p><br></p>','<p>适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪</p><p>适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪</p><p>适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪</p><p><br></p>','<p>适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪</p><p><br></p>','333','333');
/*!40000 ALTER TABLE `gudingzichan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jieyongxinxi`
--

DROP TABLE IF EXISTS `jieyongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jieyongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyongbianhao` varchar(200) DEFAULT NULL COMMENT '借用编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `lingqushijian` datetime DEFAULT NULL COMMENT '领取时间',
  `jieyongshijian` date DEFAULT NULL COMMENT '借用时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jieyongbianhao` (`jieyongbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861380862 DEFAULT CHARSET=utf8 COMMENT='借用信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jieyongxinxi`
--

LOCK TABLES `jieyongxinxi` WRITE;
/*!40000 ALTER TABLE `jieyongxinxi` DISABLE KEYS */;
INSERT INTO `jieyongxinxi` VALUES (91,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1',1,'2023-02-20 10:44:46','2023-02-20','学生账号1','学生姓名1','员工工号1','员工姓名1','是',''),(92,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2',2,'2023-02-20 10:44:46','2023-02-20','学生账号2','学生姓名2','员工工号2','员工姓名2','是',''),(93,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3',3,'2023-02-20 10:44:46','2023-02-20','学生账号3','学生姓名3','员工工号3','员工姓名3','是',''),(94,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4',4,'2023-02-20 10:44:46','2023-02-20','学生账号4','学生姓名4','员工工号4','员工姓名4','是',''),(95,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5',5,'2023-02-20 10:44:46','2023-02-20','学生账号5','学生姓名5','员工工号5','员工姓名5','是',''),(96,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6',6,'2023-02-20 10:44:46','2023-02-20','学生账号6','学生姓名6','员工工号6','员工姓名6','是',''),(97,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7',7,'2023-02-20 10:44:46','2023-02-20','学生账号7','学生姓名7','员工工号7','员工姓名7','是',''),(98,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8',8,'2023-02-20 10:44:46','2023-02-20','学生账号8','学生姓名8','员工工号8','员工姓名8','是',''),(1676861380861,'2023-02-20 02:49:40','1676861034996','机器','小资产',2,'2023-02-21 14:00:00','2023-02-20','111','111','333','333','是','员工审核学生借用信息');
/*!40000 ALTER TABLE `jieyongxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lingyongxinxi`
--

DROP TABLE IF EXISTS `lingyongxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lingyongxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyongbianhao` varchar(200) DEFAULT NULL COMMENT '借用编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `lingqushijian` date DEFAULT NULL COMMENT '领取时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861388471 DEFAULT CHARSET=utf8 COMMENT='领用信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lingyongxinxi`
--

LOCK TABLES `lingyongxinxi` WRITE;
/*!40000 ALTER TABLE `lingyongxinxi` DISABLE KEYS */;
INSERT INTO `lingyongxinxi` VALUES (101,'2023-02-20 02:44:46','借用编号1','资产名称1','资产分类1','数量1','2023-02-20','学生账号1','学生姓名1','员工工号1','员工姓名1'),(102,'2023-02-20 02:44:46','借用编号2','资产名称2','资产分类2','数量2','2023-02-20','学生账号2','学生姓名2','员工工号2','员工姓名2'),(103,'2023-02-20 02:44:46','借用编号3','资产名称3','资产分类3','数量3','2023-02-20','学生账号3','学生姓名3','员工工号3','员工姓名3'),(104,'2023-02-20 02:44:46','借用编号4','资产名称4','资产分类4','数量4','2023-02-20','学生账号4','学生姓名4','员工工号4','员工姓名4'),(105,'2023-02-20 02:44:46','借用编号5','资产名称5','资产分类5','数量5','2023-02-20','学生账号5','学生姓名5','员工工号5','员工姓名5'),(106,'2023-02-20 02:44:46','借用编号6','资产名称6','资产分类6','数量6','2023-02-20','学生账号6','学生姓名6','员工工号6','员工姓名6'),(107,'2023-02-20 02:44:46','借用编号7','资产名称7','资产分类7','数量7','2023-02-20','学生账号7','学生姓名7','员工工号7','员工姓名7'),(108,'2023-02-20 02:44:46','借用编号8','资产名称8','资产分类8','数量8','2023-02-20','学生账号8','学生姓名8','员工工号8','员工姓名8'),(1676861388470,'2023-02-20 02:49:47','1676861034996','机器','小资产','2','2023-02-21','111','111','333','333');
/*!40000 ALTER TABLE `lingyongxinxi` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'admin','users','管理员','ehchp9wxkf0z6at2c7m5avqvffw5xh34','2023-02-20 02:46:34','2023-02-20 03:50:59'),(2,1676861188611,'333','yuangong','员工','w9vxvphx5pevfmdt9r4kctu741lod1wg','2023-02-20 02:48:13','2023-02-20 03:52:04'),(3,1676861159859,'111','xuesheng','学生','sfvgir5s1mczqu0anf50xuptnnux8m12','2023-02-20 02:49:21','2023-02-20 03:52:42'),(4,1676861172809,'222','caigou','采购','iw30oxtzs3i0hr25bwo0c3czntpl20qv','2023-02-20 02:50:37','2023-02-20 03:50:38');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'admin','admin','管理员','2023-02-20 02:44:46');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) NOT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861159860 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2023-02-20 02:44:46','学生账号1','学生姓名1','123456','男','upload/xuesheng_touxiang1.jpg',1,'13823888881'),(12,'2023-02-20 02:44:46','学生账号2','学生姓名2','123456','男','upload/xuesheng_touxiang2.jpg',2,'13823888882'),(13,'2023-02-20 02:44:46','学生账号3','学生姓名3','123456','男','upload/xuesheng_touxiang3.jpg',3,'13823888883'),(14,'2023-02-20 02:44:46','学生账号4','学生姓名4','123456','男','upload/xuesheng_touxiang4.jpg',4,'13823888884'),(15,'2023-02-20 02:44:46','学生账号5','学生姓名5','123456','男','upload/xuesheng_touxiang5.jpg',5,'13823888885'),(16,'2023-02-20 02:44:46','学生账号6','学生姓名6','123456','男','upload/xuesheng_touxiang6.jpg',6,'13823888886'),(17,'2023-02-20 02:44:46','学生账号7','学生姓名7','123456','男','upload/xuesheng_touxiang7.jpg',7,'13823888887'),(18,'2023-02-20 02:44:46','学生账号8','学生姓名8','123456','男','upload/xuesheng_touxiang8.jpg',8,'13823888888'),(1676861159859,'2023-02-20 02:45:59','111','111','111','男','upload/1676861154801.jpg',26,'13613613666');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuangong`
--

DROP TABLE IF EXISTS `yuangong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) NOT NULL COMMENT '员工姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` longtext COMMENT '头像',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `dianhuahaoma` varchar(200) DEFAULT NULL COMMENT '电话号码',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861188612 DEFAULT CHARSET=utf8 COMMENT='员工';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuangong`
--

LOCK TABLES `yuangong` WRITE;
/*!40000 ALTER TABLE `yuangong` DISABLE KEYS */;
INSERT INTO `yuangong` VALUES (31,'2023-02-20 02:44:46','员工工号1','员工姓名1','123456','男','upload/yuangong_touxiang1.jpg',1,'13823888881'),(32,'2023-02-20 02:44:46','员工工号2','员工姓名2','123456','男','upload/yuangong_touxiang2.jpg',2,'13823888882'),(33,'2023-02-20 02:44:46','员工工号3','员工姓名3','123456','男','upload/yuangong_touxiang3.jpg',3,'13823888883'),(34,'2023-02-20 02:44:46','员工工号4','员工姓名4','123456','男','upload/yuangong_touxiang4.jpg',4,'13823888884'),(35,'2023-02-20 02:44:46','员工工号5','员工姓名5','123456','男','upload/yuangong_touxiang5.jpg',5,'13823888885'),(36,'2023-02-20 02:44:46','员工工号6','员工姓名6','123456','男','upload/yuangong_touxiang6.jpg',6,'13823888886'),(37,'2023-02-20 02:44:46','员工工号7','员工姓名7','123456','男','upload/yuangong_touxiang7.jpg',7,'13823888887'),(38,'2023-02-20 02:44:46','员工工号8','员工姓名8','123456','男','upload/yuangong_touxiang8.jpg',8,'13823888888'),(1676861188611,'2023-02-20 02:46:28','333','333','333','男','upload/1676861183124.jpg',29,'13513513555');
/*!40000 ALTER TABLE `yuangong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanbaofei`
--

DROP TABLE IF EXISTS `zichanbaofei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanbaofei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `baofeibianhao` varchar(200) DEFAULT NULL COMMENT '报废编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `baofeishijian` date DEFAULT NULL COMMENT '报废时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `baofeibianhao` (`baofeibianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861329983 DEFAULT CHARSET=utf8 COMMENT='资产报废';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanbaofei`
--

LOCK TABLES `zichanbaofei` WRITE;
/*!40000 ALTER TABLE `zichanbaofei` DISABLE KEYS */;
INSERT INTO `zichanbaofei` VALUES (131,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1',1,'2023-02-20','员工工号1','员工姓名1'),(132,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2',2,'2023-02-20','员工工号2','员工姓名2'),(133,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3',3,'2023-02-20','员工工号3','员工姓名3'),(134,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4',4,'2023-02-20','员工工号4','员工姓名4'),(135,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5',5,'2023-02-20','员工工号5','员工姓名5'),(136,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6',6,'2023-02-20','员工工号6','员工姓名6'),(137,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7',7,'2023-02-20','员工工号7','员工姓名7'),(138,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8',8,'2023-02-20','员工工号8','员工姓名8'),(1676861329982,'2023-02-20 02:48:49','1676860990308','机器','小资产',3,'2023-02-20','333','333');
/*!40000 ALTER TABLE `zichanbaofei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanbaoxiu`
--

DROP TABLE IF EXISTS `zichanbaoxiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanbaoxiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyongbianhao` varchar(200) DEFAULT NULL COMMENT '借用编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `xiangqingmiaoshu` longtext COMMENT '详情描述',
  `baoxiushijian` date DEFAULT NULL COMMENT '报修时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '待审核' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861517069 DEFAULT CHARSET=utf8 COMMENT='资产报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanbaoxiu`
--

LOCK TABLES `zichanbaoxiu` WRITE;
/*!40000 ALTER TABLE `zichanbaoxiu` DISABLE KEYS */;
INSERT INTO `zichanbaoxiu` VALUES (111,'2023-02-20 02:44:46','借用编号1','资产名称1','资产分类1','详情描述1','2023-02-20','学生账号1','学生姓名1','员工工号1','员工姓名1','是',''),(112,'2023-02-20 02:44:46','借用编号2','资产名称2','资产分类2','详情描述2','2023-02-20','学生账号2','学生姓名2','员工工号2','员工姓名2','是',''),(113,'2023-02-20 02:44:46','借用编号3','资产名称3','资产分类3','详情描述3','2023-02-20','学生账号3','学生姓名3','员工工号3','员工姓名3','是',''),(114,'2023-02-20 02:44:46','借用编号4','资产名称4','资产分类4','详情描述4','2023-02-20','学生账号4','学生姓名4','员工工号4','员工姓名4','是',''),(115,'2023-02-20 02:44:46','借用编号5','资产名称5','资产分类5','详情描述5','2023-02-20','学生账号5','学生姓名5','员工工号5','员工姓名5','是',''),(116,'2023-02-20 02:44:46','借用编号6','资产名称6','资产分类6','详情描述6','2023-02-20','学生账号6','学生姓名6','员工工号6','员工姓名6','是',''),(117,'2023-02-20 02:44:46','借用编号7','资产名称7','资产分类7','详情描述7','2023-02-20','学生账号7','学生姓名7','员工工号7','员工姓名7','是',''),(118,'2023-02-20 02:44:46','借用编号8','资产名称8','资产分类8','详情描述8','2023-02-20','学生账号8','学生姓名8','员工工号8','员工姓名8','是',''),(1676861517068,'2023-02-20 02:51:56','1676861034996','机器','小资产','适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪\n','2023-02-20','111','111','333','333','是','员工审核报修情况，并及时维修');
/*!40000 ALTER TABLE `zichanbaoxiu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichancaigou`
--

DROP TABLE IF EXISTS `zichancaigou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichancaigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `caigoubianhao` varchar(200) DEFAULT NULL COMMENT '采购编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichanxinghao` varchar(200) DEFAULT NULL COMMENT '资产型号',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `caigoushijian` date DEFAULT NULL COMMENT '采购时间',
  `caigouzhanghao` varchar(200) DEFAULT NULL COMMENT '采购账号',
  `caigouxingming` varchar(200) DEFAULT NULL COMMENT '采购姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigoubianhao` (`caigoubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861448584 DEFAULT CHARSET=utf8 COMMENT='资产采购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichancaigou`
--

LOCK TABLES `zichancaigou` WRITE;
/*!40000 ALTER TABLE `zichancaigou` DISABLE KEYS */;
INSERT INTO `zichancaigou` VALUES (141,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1','资产型号1',1,'2023-02-20','采购账号1','采购姓名1'),(142,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2','资产型号2',2,'2023-02-20','采购账号2','采购姓名2'),(143,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3','资产型号3',3,'2023-02-20','采购账号3','采购姓名3'),(144,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4','资产型号4',4,'2023-02-20','采购账号4','采购姓名4'),(145,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5','资产型号5',5,'2023-02-20','采购账号5','采购姓名5'),(146,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6','资产型号6',6,'2023-02-20','采购账号6','采购姓名6'),(147,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7','资产型号7',7,'2023-02-20','采购账号7','采购姓名7'),(148,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8','资产型号8',8,'2023-02-20','采购账号8','采购姓名8'),(1676861448583,'2023-02-20 02:50:47','1676861105099','机器','小资产','12-8',100,'2023-02-20','222','222');
/*!40000 ALTER TABLE `zichancaigou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichandiaobo`
--

DROP TABLE IF EXISTS `zichandiaobo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichandiaobo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `diaobobianhao` varchar(200) DEFAULT NULL COMMENT '调拨编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `diaoboshijian` date DEFAULT NULL COMMENT '调拨时间',
  `diaoboxiangqing` longtext COMMENT '调拨详情',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `diaobobianhao` (`diaobobianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861335754 DEFAULT CHARSET=utf8 COMMENT='资产调拨';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichandiaobo`
--

LOCK TABLES `zichandiaobo` WRITE;
/*!40000 ALTER TABLE `zichandiaobo` DISABLE KEYS */;
INSERT INTO `zichandiaobo` VALUES (151,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1',1,'2023-02-20','调拨详情1','员工工号1','员工姓名1'),(152,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2',2,'2023-02-20','调拨详情2','员工工号2','员工姓名2'),(153,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3',3,'2023-02-20','调拨详情3','员工工号3','员工姓名3'),(154,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4',4,'2023-02-20','调拨详情4','员工工号4','员工姓名4'),(155,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5',5,'2023-02-20','调拨详情5','员工工号5','员工姓名5'),(156,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6',6,'2023-02-20','调拨详情6','员工工号6','员工姓名6'),(157,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7',7,'2023-02-20','调拨详情7','员工工号7','员工姓名7'),(158,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8',8,'2023-02-20','调拨详情8','员工工号8','员工姓名8'),(1676861335753,'2023-02-20 02:48:55','1676860996357','机器','小资产',0,'2023-02-20','适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪\n','333','333');
/*!40000 ALTER TABLE `zichandiaobo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanfenlei`
--

DROP TABLE IF EXISTS `zichanfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zichanfenlei` varchar(200) NOT NULL COMMENT '资产分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861209065 DEFAULT CHARSET=utf8 COMMENT='资产分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanfenlei`
--

LOCK TABLES `zichanfenlei` WRITE;
/*!40000 ALTER TABLE `zichanfenlei` DISABLE KEYS */;
INSERT INTO `zichanfenlei` VALUES (41,'2023-02-20 02:44:46','资产分类1'),(42,'2023-02-20 02:44:46','资产分类2'),(43,'2023-02-20 02:44:46','资产分类3'),(44,'2023-02-20 02:44:46','资产分类4'),(45,'2023-02-20 02:44:46','资产分类5'),(46,'2023-02-20 02:44:46','资产分类6'),(47,'2023-02-20 02:44:46','资产分类7'),(48,'2023-02-20 02:44:46','资产分类8'),(1676861209064,'2023-02-20 02:46:48','小资产');
/*!40000 ALTER TABLE `zichanfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanpandian`
--

DROP TABLE IF EXISTS `zichanpandian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanpandian` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `pandianbianhao` varchar(200) DEFAULT NULL COMMENT '盘点编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `pandianqingkuang` varchar(200) DEFAULT NULL COMMENT '盘点情况',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pandianshijian` date DEFAULT NULL COMMENT '盘点时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `pandianbianhao` (`pandianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861314819 DEFAULT CHARSET=utf8 COMMENT='资产盘点';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanpandian`
--

LOCK TABLES `zichanpandian` WRITE;
/*!40000 ALTER TABLE `zichanpandian` DISABLE KEYS */;
INSERT INTO `zichanpandian` VALUES (71,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1','正常','数量1','2023-02-20','员工工号1','员工姓名1'),(72,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2','正常','数量2','2023-02-20','员工工号2','员工姓名2'),(73,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3','正常','数量3','2023-02-20','员工工号3','员工姓名3'),(74,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4','正常','数量4','2023-02-20','员工工号4','员工姓名4'),(75,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5','正常','数量5','2023-02-20','员工工号5','员工姓名5'),(76,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6','正常','数量6','2023-02-20','员工工号6','员工姓名6'),(77,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7','正常','数量7','2023-02-20','员工工号7','员工姓名7'),(78,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8','正常','数量8','2023-02-20','员工工号8','员工姓名8'),(1676861314818,'2023-02-20 02:48:33','1676860975589','机器','小资产','正常','26','2023-02-20','333','333');
/*!40000 ALTER TABLE `zichanpandian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanruku`
--

DROP TABLE IF EXISTS `zichanruku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `rukubianhao` varchar(200) DEFAULT NULL COMMENT '入库编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `zichanxinghao` varchar(200) DEFAULT NULL COMMENT '资产型号',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `rukushijian` date DEFAULT NULL COMMENT '入库时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `rukubianhao` (`rukubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861307789 DEFAULT CHARSET=utf8 COMMENT='资产入库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanruku`
--

LOCK TABLES `zichanruku` WRITE;
/*!40000 ALTER TABLE `zichanruku` DISABLE KEYS */;
INSERT INTO `zichanruku` VALUES (61,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1','资产型号1',1,'2023-02-20','员工工号1','员工姓名1'),(62,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2','资产型号2',2,'2023-02-20','员工工号2','员工姓名2'),(63,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3','资产型号3',3,'2023-02-20','员工工号3','员工姓名3'),(64,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4','资产型号4',4,'2023-02-20','员工工号4','员工姓名4'),(65,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5','资产型号5',5,'2023-02-20','员工工号5','员工姓名5'),(66,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6','资产型号6',6,'2023-02-20','员工工号6','员工姓名6'),(67,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7','资产型号7',7,'2023-02-20','员工工号7','员工姓名7'),(68,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8','资产型号8',8,'2023-02-20','员工工号8','员工姓名8'),(1676861307788,'2023-02-20 02:48:27','1676860964364','机器','小资产','12-2',6,'2023-02-20','333','333');
/*!40000 ALTER TABLE `zichanruku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanweihu`
--

DROP TABLE IF EXISTS `zichanweihu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanweihu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `weihubianhao` varchar(200) DEFAULT NULL COMMENT '维护编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `weihuqingkuang` varchar(200) DEFAULT NULL COMMENT '维护情况',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `weihushijian` date DEFAULT NULL COMMENT '维护时间',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `weihubianhao` (`weihubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861317750 DEFAULT CHARSET=utf8 COMMENT='资产维护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanweihu`
--

LOCK TABLES `zichanweihu` WRITE;
/*!40000 ALTER TABLE `zichanweihu` DISABLE KEYS */;
INSERT INTO `zichanweihu` VALUES (81,'2023-02-20 02:44:46','1111111111','资产名称1','资产分类1','已维护','数量1','2023-02-20','员工工号1','员工姓名1'),(82,'2023-02-20 02:44:46','2222222222','资产名称2','资产分类2','已维护','数量2','2023-02-20','员工工号2','员工姓名2'),(83,'2023-02-20 02:44:46','3333333333','资产名称3','资产分类3','已维护','数量3','2023-02-20','员工工号3','员工姓名3'),(84,'2023-02-20 02:44:46','4444444444','资产名称4','资产分类4','已维护','数量4','2023-02-20','员工工号4','员工姓名4'),(85,'2023-02-20 02:44:46','5555555555','资产名称5','资产分类5','已维护','数量5','2023-02-20','员工工号5','员工姓名5'),(86,'2023-02-20 02:44:46','6666666666','资产名称6','资产分类6','已维护','数量6','2023-02-20','员工工号6','员工姓名6'),(87,'2023-02-20 02:44:46','7777777777','资产名称7','资产分类7','已维护','数量7','2023-02-20','员工工号7','员工姓名7'),(88,'2023-02-20 02:44:46','8888888888','资产名称8','资产分类8','已维护','数量8','2023-02-20','员工工号8','员工姓名8'),(1676861317749,'2023-02-20 02:48:37','1676860980412','机器','小资产','已维护','26','2023-02-20','333','333');
/*!40000 ALTER TABLE `zichanweihu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zichanweixiu`
--

DROP TABLE IF EXISTS `zichanweixiu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zichanweixiu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jieyongbianhao` varchar(200) DEFAULT NULL COMMENT '借用编号',
  `zichanmingcheng` varchar(200) DEFAULT NULL COMMENT '资产名称',
  `zichanfenlei` varchar(200) DEFAULT NULL COMMENT '资产分类',
  `weixiuzhuangtai` varchar(200) DEFAULT NULL COMMENT '维修状态',
  `weixiushijian` date DEFAULT NULL COMMENT '维修时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1676861555722 DEFAULT CHARSET=utf8 COMMENT='资产维修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zichanweixiu`
--

LOCK TABLES `zichanweixiu` WRITE;
/*!40000 ALTER TABLE `zichanweixiu` DISABLE KEYS */;
INSERT INTO `zichanweixiu` VALUES (121,'2023-02-20 02:44:46','借用编号1','资产名称1','资产分类1','已维修','2023-02-20','学生账号1','学生姓名1','员工工号1','员工姓名1'),(122,'2023-02-20 02:44:46','借用编号2','资产名称2','资产分类2','已维修','2023-02-20','学生账号2','学生姓名2','员工工号2','员工姓名2'),(123,'2023-02-20 02:44:46','借用编号3','资产名称3','资产分类3','已维修','2023-02-20','学生账号3','学生姓名3','员工工号3','员工姓名3'),(124,'2023-02-20 02:44:46','借用编号4','资产名称4','资产分类4','已维修','2023-02-20','学生账号4','学生姓名4','员工工号4','员工姓名4'),(125,'2023-02-20 02:44:46','借用编号5','资产名称5','资产分类5','已维修','2023-02-20','学生账号5','学生姓名5','员工工号5','员工姓名5'),(126,'2023-02-20 02:44:46','借用编号6','资产名称6','资产分类6','已维修','2023-02-20','学生账号6','学生姓名6','员工工号6','员工姓名6'),(127,'2023-02-20 02:44:46','借用编号7','资产名称7','资产分类7','已维修','2023-02-20','学生账号7','学生姓名7','员工工号7','员工姓名7'),(128,'2023-02-20 02:44:46','借用编号8','资产名称8','资产分类8','已维修','2023-02-20','学生账号8','学生姓名8','员工工号8','员工姓名8'),(1676861555721,'2023-02-20 02:52:34','1676861034996','机器','小资产','已维修','2023-02-20','111','111','333','333');
/*!40000 ALTER TABLE `zichanweixiu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-26 12:01:56
