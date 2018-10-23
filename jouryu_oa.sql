-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: jouryu_oa
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `jouryu_admin`
--

DROP TABLE IF EXISTS `jouryu_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `pass` varchar(100) DEFAULT NULL COMMENT '密码',
  `loginci` smallint(6) DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `type` tinyint(1) DEFAULT '0' COMMENT '0普通1管理员',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `face` varchar(300) DEFAULT NULL COMMENT '头像地址',
  `deptid` int(11) DEFAULT '0' COMMENT '主部门ID',
  `deptname` varchar(50) DEFAULT NULL COMMENT '部门',
  `deptids` varchar(30) DEFAULT NULL COMMENT '其他部门ID',
  `deptnames` varchar(100) DEFAULT NULL COMMENT '多部门',
  `rankings` varchar(100) DEFAULT NULL COMMENT '多职位',
  `deptallname` varchar(200) DEFAULT NULL COMMENT '部门全部路径',
  `superid` varchar(50) DEFAULT NULL,
  `superman` varchar(20) DEFAULT NULL COMMENT '上级主管',
  `ranking` varchar(255) DEFAULT NULL COMMENT '岗位',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `deptpath` varchar(100) DEFAULT NULL COMMENT '部门路径',
  `superpath` varchar(100) DEFAULT NULL COMMENT '上级主管路径',
  `groupname` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `apptx` tinyint(1) DEFAULT '1' COMMENT '是否app提醒',
  `workdate` date DEFAULT NULL COMMENT '入职时间',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `lastpush` datetime DEFAULT NULL COMMENT '最后app推送时间',
  `adddt` datetime DEFAULT NULL COMMENT '新增时间',
  `weixinid` varchar(50) DEFAULT NULL COMMENT '微信号',
  `quitdt` date DEFAULT NULL COMMENT '离职日期',
  `style` tinyint(2) DEFAULT '0' COMMENT '默认样式',
  `pingyin` varchar(50) DEFAULT NULL COMMENT '名字拼音',
  `emailpass` varchar(100) DEFAULT NULL COMMENT '邮箱密码',
  `companyid` int(11) DEFAULT '0' COMMENT '所在公司单位Id',
  `online` tinyint(1) DEFAULT '0' COMMENT '在线状态',
  `lastonline` datetime DEFAULT NULL COMMENT '最后在线时间',
  `isvcard` tinyint(1) DEFAULT '1' COMMENT '是否在通讯录上显示',
  `randslat` varchar(50) DEFAULT NULL COMMENT '随机字符串',
  PRIMARY KEY (`id`,`user`),
  KEY `email` (`email`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_admin`
--

LOCK TABLES `jouryu_admin` WRITE;
/*!40000 ALTER TABLE `jouryu_admin` DISABLE KEYS */;
INSERT INTO `jouryu_admin` VALUES (1,'A001','admin','管理员','e10adc3949ba59abbe56e057f20f883e',2520,1,1,'男','0592-1234569','upload/face/1.jpg',2,'开发部','3','财务部','财务总监','琢瑜OA开发团队/开发部','5','琢瑜清泉','项目主管',1,'[1],[2],[3]','[5]','1,3','15800000023',1,'2016-06-01',NULL,'2017-03-08 09:52:30',NULL,NULL,NULL,0,'guanliyuan',NULL,1,1,'2018-10-10 18:20:32',1,NULL),(2,NULL,'diaochan','貂蝉','e10adc3949ba59abbe56e057f20f883e',85,1,0,'女','0592-123456','upload/face/2.jpg',3,'财务部',NULL,NULL,NULL,'琢瑜OA开发团队/财务部','5','琢瑜清泉','财务总监',1,'[1],[3]','[5]','1,3','15800000007',1,'2016-08-09',NULL,NULL,NULL,NULL,NULL,0,'diaochan',NULL,2,0,NULL,1,NULL),(3,NULL,'xiaoqiao','小乔','e10adc3949ba59abbe56e057f20f883e',160,1,0,'女',NULL,'upload/face/3.jpg',3,'财务部',NULL,NULL,NULL,'琢瑜OA开发团队/财务部','2','貂蝉','出纳',1,'[1],[3]','[5],[2]','1','15800000001',1,'2017-05-02',NULL,'2016-08-30 20:34:23',NULL,NULL,NULL,0,'xiaoqiao',NULL,2,0,NULL,1,NULL),(4,NULL,'daqiao','大乔','e10adc3949ba59abbe56e057f20f883e',236,1,0,'女',NULL,'upload/face/4.jpg',4,'行政人事部',NULL,NULL,NULL,'琢瑜OA开发团队/行政人事部','5','琢瑜清泉','人事主管',1,'[1],[4]','[5]','1,3','15800000002',1,'2017-07-01',NULL,'2016-10-20 22:27:51',NULL,NULL,NULL,0,'daqiao',NULL,2,0,NULL,1,NULL),(5,NULL,'rock','琢瑜清泉','e10adc3949ba59abbe56e057f20f883e',253,1,0,'男',NULL,'upload/face/5.jpg',5,'管理层',NULL,NULL,NULL,'琢瑜OA开发团队/管理层',NULL,NULL,'董事长',0,'[1],[5]',NULL,'2,3','15800000003',1,'2015-11-01',NULL,NULL,NULL,NULL,NULL,0,'panshi',NULL,1,0,NULL,1,NULL),(6,NULL,'zhangfei','张飞','e10adc3949ba59abbe56e057f20f883e',79,1,0,'男',NULL,'upload/face/6.jpg',2,'开发部',NULL,NULL,NULL,'琢瑜OA开发团队/开发部','1','管理员','程序员',100,'[1],[2]','[5],[1]','1','15800000004',1,'2017-07-01',NULL,'2016-11-01 20:15:52',NULL,NULL,NULL,0,'zhangfei',NULL,1,0,NULL,1,NULL),(7,NULL,'zhaozl','赵子龙','e10adc3949ba59abbe56e057f20f883e',68,1,0,'男',NULL,'upload/face/7.jpg',2,'开发部',NULL,NULL,NULL,'琢瑜OA开发团队/开发部','1','管理员','高级程序员',100,'[1],[2]','[5],[1]','1','15800000005',1,'2016-07-01',NULL,'2017-06-28 15:34:26',NULL,NULL,NULL,0,'zhaozilong',NULL,1,0,NULL,1,NULL),(8,NULL,'jouryu','琢瑜OA客服','6846860684f05029abccc09a53cd66f1',309,1,1,'男',NULL,'upload/face/8.jpg',2,'开发部',NULL,NULL,NULL,'琢瑜OA开发团队/开发部','1','管理员','客服',200,'[1],[2]','[5],[1]','1','15800000006',1,'2016-07-01',NULL,NULL,NULL,'jouryu829',NULL,2,'jouryukefu',NULL,1,0,NULL,1,NULL);
/*!40000 ALTER TABLE `jouryu_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_assetm`
--

DROP TABLE IF EXISTS `jouryu_assetm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_assetm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) DEFAULT '0' COMMENT '类别',
  `title` varchar(50) DEFAULT NULL COMMENT '名称',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `brand` varchar(20) DEFAULT NULL COMMENT '品牌',
  `model` varchar(100) DEFAULT NULL COMMENT '规格型号',
  `laiyuan` varchar(50) DEFAULT NULL COMMENT '来源',
  `shuname` varchar(50) DEFAULT NULL COMMENT '所属部门',
  `dt` date DEFAULT NULL COMMENT '日期',
  `ckid` smallint(50) DEFAULT '0' COMMENT '存放地点',
  `state` tinyint(1) DEFAULT '0' COMMENT '状态',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `buydt` date DEFAULT NULL COMMENT '购进日期',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `optid` smallint(6) DEFAULT '0',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `useid` varchar(50) DEFAULT '0',
  `usename` varchar(50) DEFAULT NULL COMMENT '使用人',
  `fengmian` varchar(50) DEFAULT NULL COMMENT '封面图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='固定资产表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_assetm`
--

LOCK TABLES `jouryu_assetm` WRITE;
/*!40000 ALTER TABLE `jouryu_assetm` DISABLE KEYS */;
INSERT INTO `jouryu_assetm` VALUES (1,204,'这是一个电脑','DN-0001','联想','12','购入',NULL,NULL,214,0,'报废啦？1','管理员','2015-04-13 16:34:49','2016-10-26 22:01:14','2015-10-30',6000.00,1,1,'0',NULL,NULL),(2,0,'2112','BJB-0001','联想','M300','购入',NULL,NULL,0,0,'2121','管理员','2015-04-13 16:52:33','2016-04-27 22:11:40','2016-04-27',NULL,1,1,'0',NULL,NULL),(3,0,'笔记本','BJB-0002','戴尔',NULL,'自建',NULL,NULL,0,0,'哈哈','管理员','2015-04-13 17:03:52','2015-06-30 17:32:49',NULL,NULL,1,1,'0',NULL,NULL),(4,0,'这是不笔记本','BJB-0003','dell','I5 60G内存','购入',NULL,NULL,0,0,'呵呵','管理员','2015-04-14 11:08:51','2015-07-13 20:09:24',NULL,NULL,1,1,'0',NULL,NULL),(5,0,'这是一个笔记本','BJB-004','联想','006','购入',NULL,NULL,0,0,NULL,'管理员',NULL,'2016-04-27 22:42:51','2016-04-01',500.00,1,1,'0',NULL,NULL),(6,204,'公共打印机','ZC-001','惠普',NULL,'购入',NULL,NULL,214,0,NULL,'管理员','2016-10-26 22:17:41','2016-12-09 17:18:14','2016-10-01',0.00,1,1,'0',NULL,'upload/2016-12/09_17181118.png'),(7,355,'这是一个电脑啊','ZiCAN-001','联想',NULL,'购买',NULL,NULL,0,0,'简单说明一下',NULL,NULL,NULL,'2017-01-17',NULL,0,1,'0',NULL,NULL),(8,207,'这是一个电脑啊','ZiCAN-002','联想',NULL,'购买',NULL,NULL,0,0,'简单说明一下',NULL,'2017-08-19 22:50:00','2017-08-19 22:50:00','2017-01-17',NULL,0,1,'0',NULL,NULL);
/*!40000 ALTER TABLE `jouryu_assetm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_book`
--

DROP TABLE IF EXISTS `jouryu_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '书名',
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应分类',
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `author` varchar(20) DEFAULT NULL COMMENT '作者',
  `chuban` varchar(50) DEFAULT NULL COMMENT '出版社',
  `cbdt` date DEFAULT NULL COMMENT '出版日期',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '价格',
  `weizhi` varchar(50) DEFAULT NULL COMMENT '存放位置',
  `shul` smallint(6) DEFAULT '0' COMMENT '数量',
  `adddt` datetime DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optid` smallint(6) DEFAULT '0',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `isbn` varchar(30) DEFAULT NULL,
  `jieshu` smallint(6) DEFAULT '0' COMMENT '被借阅数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='图书表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_book`
--

LOCK TABLES `jouryu_book` WRITE;
/*!40000 ALTER TABLE `jouryu_book` DISABLE KEYS */;
INSERT INTO `jouryu_book` VALUES (1,'C语言程序设计',232,'TS-001','巨同升','中国日报','2012-10-01',20.00,'忘了',1,'2016-10-28 23:18:36','2016-10-28 23:21:53','管理员',1,'本书在内容编排上，采用“应用驱动知识”的方式，即根据每一章应用目标的需求，合理地安排每一个知识主题的引入点，从而将C语言中枯燥难懂的语法知识分解到全书各章并融入到丰富的实例中。本书在编程方法的讲解上，采用“逐步构造法”，即通过问题分析、算法设计、程序原型等环节一步一步地构造出完整的程序，从而加深读者对编程方法的理解和掌握。',NULL,0),(2,'PHP从入门到精通',232,'TS-002','潘凯华','化学工业出版社','2008-10-01',68.00,'忘了',1,'2016-10-28 23:25:22','2016-10-28 23:27:07','管理员',1,NULL,'9787302179597',0),(4,'PHP从入门到放弃',357,'TS-003','琢瑜清泉','琢瑜OA开发团队','2017-01-17',49.90,'不知道',5,'2017-08-20 12:32:43','2017-08-20 12:32:43','管理员',1,NULL,'PANSHI-001',0);
/*!40000 ALTER TABLE `jouryu_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_bookborrow`
--

DROP TABLE IF EXISTS `jouryu_bookborrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_bookborrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `bookid` smallint(6) DEFAULT '0',
  `bookname` varchar(50) DEFAULT NULL COMMENT '书名',
  `jydt` date DEFAULT NULL COMMENT '借阅日期',
  `yjdt` date DEFAULT NULL COMMENT '预计归还',
  `ghtime` datetime DEFAULT NULL COMMENT '归还时间',
  `isgh` tinyint(1) DEFAULT '0' COMMENT '是否归返',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='图书借阅';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_bookborrow`
--

LOCK TABLES `jouryu_bookborrow` WRITE;
/*!40000 ALTER TABLE `jouryu_bookborrow` DISABLE KEYS */;
INSERT INTO `jouryu_bookborrow` VALUES (1,1,'2016-10-29 13:08:44',1,'管理员','2016-10-29',NULL,1,1,2,'PHP从入门到精通','2016-10-29','2016-10-31','2016-10-29 19:42:43',1),(2,8,'2016-10-29 13:14:35',8,'琢瑜OA客服','2016-10-29','拿来看看把！',0,1,1,'C语言程序设计','2016-10-29','2016-10-30',NULL,0),(3,1,'2016-10-30 11:58:59',1,'管理员','2016-10-30',NULL,1,1,2,'PHP从入门到精通','2016-10-30','2016-11-30','2017-03-31 09:36:00',1);
/*!40000 ALTER TABLE `jouryu_bookborrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_carm`
--

DROP TABLE IF EXISTS `jouryu_carm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_carm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carnum` varchar(10) DEFAULT NULL COMMENT '车牌号',
  `carbrand` varchar(20) DEFAULT NULL COMMENT '车辆品牌',
  `carmode` varchar(30) DEFAULT NULL COMMENT '型号',
  `cartype` varchar(10) DEFAULT NULL COMMENT '车辆类型',
  `buydt` date DEFAULT NULL COMMENT '购买日期',
  `buyprice` mediumint(9) DEFAULT NULL COMMENT '购买价格',
  `enginenb` varchar(50) DEFAULT NULL COMMENT '发动机号',
  `ispublic` tinyint(1) DEFAULT '1' COMMENT '是否公开使用',
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  `createname` varchar(20) DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `state` tinyint(1) DEFAULT '0' COMMENT '状态@0|办理中,1|可用,2|维修中,3|报废',
  `framenum` varchar(50) DEFAULT NULL COMMENT '车架号',
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='车辆表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_carm`
--

LOCK TABLES `jouryu_carm` WRITE;
/*!40000 ALTER TABLE `jouryu_carm` DISABLE KEYS */;
INSERT INTO `jouryu_carm` VALUES (1,'闽D·123QB','奥迪','N7','小型车','2015-09-01',20000,'不知道',1,'2016-10-27 13:31:00',1,'管理员','2015-09-16 10:51:56','管理员',NULL,1,NULL,1),(2,'闽D·123455','奔驰','A4L','轿车','2015-01-01',20000,NULL,1,'2016-10-28 13:28:01',1,'管理员','2015-09-17 09:54:49','管理员',NULL,1,'aodiche',1);
/*!40000 ALTER TABLE `jouryu_carm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_carmang`
--

DROP TABLE IF EXISTS `jouryu_carmang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_carmang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `carid` smallint(6) DEFAULT '0' COMMENT '维修车辆',
  `reason` varchar(500) DEFAULT NULL COMMENT '维修原因',
  `address` varchar(50) DEFAULT NULL COMMENT '维修地点',
  `jianame` varchar(50) DEFAULT NULL COMMENT '驾驶员',
  `jiaid` varchar(50) DEFAULT NULL,
  `bujian` varchar(200) DEFAULT NULL COMMENT '更换部件',
  `startdt` datetime DEFAULT NULL COMMENT '维修时间',
  `enddt` datetime DEFAULT NULL COMMENT '维修截止时间',
  `money` decimal(8,2) DEFAULT '0.00' COMMENT '维修金额',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|车辆维修,1|保养',
  `nextdt` date DEFAULT NULL COMMENT '下次保养日期',
  `kmshu` varchar(20) DEFAULT NULL COMMENT '当前保养公里数',
  `kmnshu` varchar(20) DEFAULT NULL COMMENT '下次保养公里数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='车辆维修保养记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_carmang`
--

LOCK TABLES `jouryu_carmang` WRITE;
/*!40000 ALTER TABLE `jouryu_carmang` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_carmang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_carmrese`
--

DROP TABLE IF EXISTS `jouryu_carmrese`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_carmrese` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0',
  `isturn` tinyint(1) DEFAULT '0',
  `useid` varchar(200) DEFAULT NULL,
  `usename` varchar(200) DEFAULT NULL COMMENT '使用者',
  `useren` smallint(6) DEFAULT '0' COMMENT '使用人数',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '截止时间',
  `address` varchar(50) DEFAULT NULL COMMENT '目的地',
  `carid` smallint(6) DEFAULT NULL,
  `carnum` varchar(10) DEFAULT NULL COMMENT '使用车辆',
  `xianlines` varchar(200) DEFAULT NULL COMMENT '线路',
  `jiaid` varchar(200) DEFAULT NULL,
  `jianame` varchar(200) DEFAULT NULL COMMENT '驾驶员',
  `kmstart` varchar(20) DEFAULT NULL COMMENT '起始公里数',
  `kmend` varchar(20) DEFAULT NULL COMMENT '结束公里数',
  `returndt` datetime DEFAULT NULL COMMENT '归还时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='车辆预定';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_carmrese`
--

LOCK TABLES `jouryu_carmrese` WRITE;
/*!40000 ALTER TABLE `jouryu_carmrese` DISABLE KEYS */;
INSERT INTO `jouryu_carmrese` VALUES (1,1,'2018-09-03 19:51:16',1,'管理员','2018-09-03',NULL,0,1,'u5','琢瑜清泉',5,'2018-09-03 19:50:00','2018-09-03 19:50:57','不知道',2,'闽D·123455','不知道','6','张飞','20',NULL,NULL);
/*!40000 ALTER TABLE `jouryu_carmrese` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_carms`
--

DROP TABLE IF EXISTS `jouryu_carms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_carms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carid` int(11) DEFAULT '0' COMMENT '车辆Id',
  `otype` varchar(20) DEFAULT NULL COMMENT '类型,加油',
  `startdt` date DEFAULT NULL,
  `enddt` date DEFAULT NULL COMMENT '截止时间',
  `money` decimal(8,2) DEFAULT '0.00' COMMENT '花费金额',
  `optid` int(11) DEFAULT '0' COMMENT '添加人id',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '添加人',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `unitname` varchar(50) DEFAULT NULL COMMENT '对应名称',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `address` varchar(100) DEFAULT NULL COMMENT '地点',
  `jiaid` varchar(30) DEFAULT NULL,
  `jianame` varchar(30) DEFAULT NULL COMMENT '驾驶员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='车辆信息登记表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_carms`
--

LOCK TABLES `jouryu_carms` WRITE;
/*!40000 ALTER TABLE `jouryu_carms` DISABLE KEYS */;
INSERT INTO `jouryu_carms` VALUES (1,1,'加油','2017-06-22',NULL,200.00,1,'2017-06-22 12:47:42','管理员',1,'去加油了',NULL,'2017-06-22','中石化','5','琢瑜清泉'),(2,1,'强险','2016-06-24','2017-08-29',900.00,1,'2017-08-23 14:52:00','管理员',1,NULL,NULL,'2017-06-22',NULL,NULL,NULL),(3,1,'商业险','2016-06-22','2017-08-28',3000.00,1,'2017-08-23 14:52:11','管理员',1,NULL,NULL,'2017-06-22',NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_carms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_chargems`
--

DROP TABLE IF EXISTS `jouryu_chargems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_chargems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `mid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `updatedt` datetime DEFAULT NULL,
  `key` varchar(200) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT '0' COMMENT '对应安装模块Id',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统升级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_chargems`
--

LOCK TABLES `jouryu_chargems` WRITE;
/*!40000 ALTER TABLE `jouryu_chargems` DISABLE KEYS */;
INSERT INTO `jouryu_chargems` VALUES (1,0,1,'2016-12-28 15:24:19','2018-10-10 16:11:14',NULL,1),(2,1,1,'2016-12-28 15:21:14','2018-10-10 16:11:14',NULL,0);
/*!40000 ALTER TABLE `jouryu_chargems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_city`
--

DROP TABLE IF EXISTS `jouryu_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_city` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '上级ＩＤ',
  `name` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '类型0国家,1省,2市,3县',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `pinyin` varchar(50) DEFAULT NULL,
  `pinyins` varchar(50) DEFAULT NULL COMMENT '拼音简称',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`pid`),
  KEY `region_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城市表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_city`
--

LOCK TABLES `jouryu_city` WRITE;
/*!40000 ALTER TABLE `jouryu_city` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_company`
--

DROP TABLE IF EXISTS `jouryu_company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `nameen` varchar(200) DEFAULT NULL COMMENT '英文名',
  `tel` varchar(30) DEFAULT NULL COMMENT '电话',
  `fax` varchar(30) DEFAULT NULL COMMENT '传真',
  `pid` int(11) DEFAULT '0' COMMENT '对应上级',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `fuzeid` varchar(30) DEFAULT NULL COMMENT '对应负责人Id',
  `fuzename` varchar(30) DEFAULT NULL COMMENT '对应负责人',
  `address` varchar(50) DEFAULT NULL COMMENT '地址',
  `city` varchar(30) DEFAULT NULL COMMENT '所在城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公司单位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_company`
--

LOCK TABLES `jouryu_company` WRITE;
/*!40000 ALTER TABLE `jouryu_company` DISABLE KEYS */;
INSERT INTO `jouryu_company` VALUES (1,'琢瑜OA开发团队',NULL,'0592-123456','0592-123456',0,0,'5','琢瑜清泉','软件园','烟台'),(2,'琢瑜OA开发团队(泉州分公司)',NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL),(3,'琢瑜OA开发团队(北京分公司)',NULL,NULL,NULL,1,0,NULL,NULL,NULL,NULL),(4,'房租家软件公司',NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_custappy`
--

DROP TABLE IF EXISTS `jouryu_custappy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_custappy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `custid` int(11) DEFAULT '0' COMMENT '客户ID',
  `custname` varchar(50) DEFAULT NULL COMMENT '客户名称',
  PRIMARY KEY (`id`),
  KEY `custid` (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户申请使用';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_custappy`
--

LOCK TABLES `jouryu_custappy` WRITE;
/*!40000 ALTER TABLE `jouryu_custappy` DISABLE KEYS */;
INSERT INTO `jouryu_custappy` VALUES (1,1,'2018-03-06 15:57:45',1,'管理员','2018-03-06','我要申请使用哦！',1,1,16,'百度'),(2,7,'2018-03-06 17:42:35',7,'赵子龙','2018-03-06','啦啦啦',1,1,1,'琢瑜OA办公软件'),(3,7,'2018-03-07 12:28:31',7,'赵子龙','2018-03-07','enene',5,1,15,'琢瑜OA'),(4,7,'2018-03-07 12:41:46',7,'赵子龙','2018-03-07','weewewwe',5,1,15,'琢瑜OA');
/*!40000 ALTER TABLE `jouryu_custappy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_custfina`
--

DROP TABLE IF EXISTS `jouryu_custfina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_custfina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `htid` int(11) DEFAULT '0' COMMENT '合同ID',
  `htnum` varchar(20) DEFAULT NULL,
  `dt` date DEFAULT NULL COMMENT '所属日期',
  `uid` smallint(6) DEFAULT '0',
  `custid` smallint(6) DEFAULT '0',
  `custname` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(10) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00',
  `type` tinyint(1) DEFAULT '0' COMMENT '0收款单,1付款单',
  `ispay` tinyint(1) DEFAULT '0' COMMENT '是否收款,付款',
  `paydt` datetime DEFAULT NULL COMMENT '收付款时间',
  `explain` varchar(200) DEFAULT NULL COMMENT '说明',
  `createdt` datetime DEFAULT NULL COMMENT '创建时间',
  `createname` varchar(10) DEFAULT NULL,
  `createid` smallint(6) DEFAULT '0',
  `ismove` tinyint(1) DEFAULT '0' COMMENT '是否转移的',
  PRIMARY KEY (`id`),
  KEY `htid` (`htid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客户收付款';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_custfina`
--

LOCK TABLES `jouryu_custfina` WRITE;
/*!40000 ALTER TABLE `jouryu_custfina` DISABLE KEYS */;
INSERT INTO `jouryu_custfina` VALUES (2,0,NULL,'2016-10-15',1,1,'琢瑜OA办公软件','2016-10-15 18:40:20','管理员',2100.00,1,1,'2016-10-19 18:42:22','服务器费用','2016-10-15 18:40:20','管理员',1,1),(3,2,'HT-002','2016-10-15',7,3,'微软公司','2016-10-15 19:10:04','赵子龙',20000.00,0,1,'2016-10-05 19:10:20',NULL,'2016-10-15 19:10:04','管理员',1,1),(4,3,'HT-003','2016-10-15',1,1,'琢瑜OA办公软件','2016-10-19 16:05:06','管理员',25.00,1,1,'2017-06-26 15:54:00',NULL,'2016-10-15 19:36:08','管理员',1,1),(5,2,'HT-002','2016-10-16',7,3,'微软公司','2016-10-16 13:32:11','赵子龙',30000.00,0,0,NULL,NULL,'2016-10-16 13:32:11','管理员',1,0),(6,4,'HT-004','2016-10-16',6,5,'腾讯科技','2016-10-16 16:01:11','张飞',2300.00,0,0,NULL,NULL,'2016-10-16 16:01:11','张飞',6,0);
/*!40000 ALTER TABLE `jouryu_custfina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_customer`
--

DROP TABLE IF EXISTS `jouryu_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` varchar(20) DEFAULT NULL COMMENT '客户类型',
  `uid` smallint(6) DEFAULT '0' COMMENT '所属人',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(10) DEFAULT NULL,
  `linkname` varchar(20) DEFAULT NULL COMMENT '联系人',
  `unitname` varchar(100) DEFAULT NULL COMMENT '单位名称',
  `laiyuan` varchar(20) DEFAULT NULL COMMENT '来源',
  `tel` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `routeline` varchar(100) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL COMMENT '主页地址',
  `status` tinyint(4) DEFAULT '1' COMMENT '启用停用',
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `createname` varchar(10) DEFAULT NULL,
  `createid` smallint(6) DEFAULT '0',
  `shate` varchar(50) DEFAULT NULL COMMENT '共享给',
  `shateid` varchar(50) DEFAULT NULL,
  `isgys` tinyint(1) DEFAULT '0' COMMENT '是否供应商',
  `isstat` tinyint(1) DEFAULT '0' COMMENT '是否标*客户',
  `fzid` smallint(6) DEFAULT '0',
  `fzname` varchar(20) DEFAULT NULL COMMENT '客户负责人',
  `htshu` smallint(6) DEFAULT '0' COMMENT '合同数',
  `moneyz` decimal(10,2) DEFAULT '0.00' COMMENT '销售总额',
  `moneyd` decimal(10,2) DEFAULT '0.00' COMMENT '待收金额',
  `sheng` varchar(50) DEFAULT NULL COMMENT '所在省',
  `shi` varchar(50) DEFAULT NULL COMMENT '所在市',
  `isgh` tinyint(1) DEFAULT '0' COMMENT '是否放入公海',
  `lastdt` datetime DEFAULT NULL COMMENT '最后跟进时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='客户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_customer`
--

LOCK TABLES `jouryu_customer` WRITE;
/*!40000 ALTER TABLE `jouryu_customer` DISABLE KEYS */;
INSERT INTO `jouryu_customer` VALUES (1,'琢瑜OA办公软件','互联网',7,'2017-05-12 09:35:48',NULL,NULL,'烟台琢瑜OA科技有限公司','网上开拓','0592-123456','15888888888','admin@jouryu.com',NULL,'山东烟台',NULL,NULL,1,NULL,'管理员',1,NULL,NULL,0,1,0,NULL,2,520.00,0.00,NULL,NULL,0,'2018-07-05 23:12:16'),(2,'Rock','软件',1,'2016-12-16 10:45:25','管理员',NULL,'RockOA开发团队','电话开拓','0592-123456','15888888','jouryu@jouryu.com',NULL,'烟台',NULL,NULL,0,NULL,'管理员',1,NULL,NULL,1,0,0,NULL,0,0.00,0.00,NULL,NULL,0,NULL),(3,'微软公司','软件',1,'2016-10-17 09:24:22',NULL,NULL,NULL,'网上开拓',NULL,NULL,NULL,NULL,'美国伦敦',NULL,NULL,1,NULL,'管理员',1,'管理员,张飞','1,6',1,0,0,NULL,1,50000.00,30000.00,NULL,NULL,0,NULL),(4,'谷歌公司','个人',0,'2017-11-11 12:02:10','管理员',NULL,NULL,'网上开拓',NULL,NULL,NULL,NULL,'美国chrome',NULL,NULL,1,NULL,'琢瑜OA客服',6,'管理员','1',1,0,0,NULL,1,0.00,0.00,NULL,NULL,0,NULL),(5,'腾讯科技',NULL,0,'2016-10-16 16:00:31',NULL,NULL,NULL,'网上开拓',NULL,NULL,NULL,NULL,'深圳',NULL,NULL,1,'2016-10-16 16:00:31','张飞',6,NULL,NULL,0,0,0,NULL,1,2300.00,2300.00,NULL,NULL,0,NULL),(15,'琢瑜OA','软件',0,'2018-03-07 15:01:21',NULL,'琢瑜清泉','烟台琢瑜OA科技有限公司','网上开拓','0592-123456','15800000000','admin@jouryu.com',NULL,'山东烟台高新人才创业产业园',NULL,NULL,1,'2017-08-20 13:43:23','管理员',1,NULL,NULL,0,0,0,NULL,0,0.00,0.00,'山东','烟台',1,NULL),(16,'百度','互联网',1,'2018-03-06 14:24:52','管理员','李彦宏','百度在线网络技术(北京)有限公司','网上开拓','010-123456','15800000001','admin@baidu.com',NULL,'北京软件园百度大厦',NULL,NULL,1,'2017-08-20 13:43:23','管理员',1,NULL,NULL,0,0,0,NULL,0,0.00,0.00,'北京','昌平区',0,'2018-07-05 22:45:44'),(17,'陈先生','个人',0,'2018-03-07 15:01:37',NULL,NULL,NULL,'网上开拓','010-123456','15800000002','1111@qq.com',NULL,'山东烟台火车站',NULL,NULL,1,'2017-08-20 13:43:23','管理员',1,NULL,NULL,0,0,0,NULL,0,0.00,0.00,'山东','泉州',1,NULL);
/*!40000 ALTER TABLE `jouryu_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_custract`
--

DROP TABLE IF EXISTS `jouryu_custract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_custract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `num` varchar(30) DEFAULT NULL COMMENT '合同编号',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `custid` int(11) DEFAULT '0',
  `custname` varchar(255) DEFAULT NULL COMMENT '客户名称',
  `linkman` varchar(20) DEFAULT NULL COMMENT '客户联系人',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '合同金额',
  `moneys` decimal(10,2) DEFAULT '0.00' COMMENT '待收金额',
  `startdt` date DEFAULT NULL COMMENT '生效日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  `content` text COMMENT '合同内容',
  `saleid` smallint(6) DEFAULT '0' COMMENT '销售机会Id',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `signdt` date DEFAULT NULL COMMENT '签约日期',
  `type` tinyint(1) DEFAULT '0' COMMENT '0收款合同，1付款合同',
  `ispay` tinyint(1) DEFAULT '0' COMMENT '0待,1已完成,2部分',
  `isover` tinyint(1) DEFAULT '0' COMMENT '是否已全部创建收付款单',
  `createname` varchar(20) DEFAULT NULL,
  `createid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客户合同';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_custract`
--

LOCK TABLES `jouryu_custract` WRITE;
/*!40000 ALTER TABLE `jouryu_custract` DISABLE KEYS */;
INSERT INTO `jouryu_custract` VALUES (2,7,'HT-002','2016-10-13 20:18:04','赵子龙','2016-10-13',NULL,1,3,'微软公司',NULL,50000.00,30000.00,'2016-10-01','2017-10-31',NULL,2,1,'2016-10-13',0,2,1,'管理员',1),(3,1,'HT-003','2016-10-19 16:02:53','管理员','2016-10-15',NULL,1,1,'琢瑜OA办公软件',NULL,25.00,0.00,'2016-10-01','2016-10-31','采购了啥！',NULL,1,'2016-10-15',1,1,1,'管理员',1),(4,6,'HT-004','2016-10-16 16:01:06','张飞','2016-10-16',NULL,1,5,'腾讯科技',NULL,2300.00,2300.00,'2015-10-01','2017-10-31',NULL,NULL,1,'2016-10-16',0,0,1,'张飞',6),(5,1,'HT-005','2017-06-26 17:50:09','管理员','2017-06-26',NULL,1,4,'谷歌公司',NULL,2351.00,2351.00,'2017-06-01','2017-07-01',NULL,NULL,1,'2017-06-26',0,0,0,'管理员',1),(6,1,'HT-006','2018-09-15 09:25:04','管理员','2018-09-15',NULL,1,1,'琢瑜OA办公软件',NULL,58.00,58.00,'2018-09-01','2018-09-30',NULL,4,1,'2018-09-15',0,0,0,'管理员',1);
/*!40000 ALTER TABLE `jouryu_custract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_custsale`
--

DROP TABLE IF EXISTS `jouryu_custsale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_custsale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custid` int(11) DEFAULT '0',
  `custname` varchar(50) DEFAULT NULL,
  `uid` smallint(6) DEFAULT '0',
  `optname` varchar(10) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `state` tinyint(4) DEFAULT '0' COMMENT '状态',
  `explain` varchar(500) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00',
  `applydt` date DEFAULT NULL,
  `dealdt` datetime DEFAULT NULL COMMENT '成交时间',
  `adddt` datetime DEFAULT NULL,
  `laiyuan` varchar(20) DEFAULT NULL COMMENT '销售来源',
  `createid` smallint(6) DEFAULT '0',
  `createname` varchar(20) DEFAULT NULL,
  `htid` smallint(6) DEFAULT '0' COMMENT '合同ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='销售机会';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_custsale`
--

LOCK TABLES `jouryu_custsale` WRITE;
/*!40000 ALTER TABLE `jouryu_custsale` DISABLE KEYS */;
INSERT INTO `jouryu_custsale` VALUES (1,1,'琢瑜OA办公软件',3,'小乔','2016-07-17 22:12:06',0,'说要买模块定制哦！',50.00,'2016-07-17',NULL,'2016-07-17 22:12:06',NULL,3,'小乔',0),(2,3,'微软公司',7,'赵子龙','2016-07-18 10:38:21',1,'说要收购软件琢瑜OA，呵呵！',50000.00,'2016-07-18','2016-07-18 14:02:15','2016-07-18 10:38:21','主动来访',1,'管理员',2),(3,4,'谷歌公司',8,'琢瑜OA客服','2016-07-18 14:13:17',1,'可能买安卓手机一部',500.00,'2016-07-18','2016-07-18 14:13:39','2016-07-18 14:13:17','主动来访',8,'琢瑜OA客服',0),(4,1,'琢瑜OA办公软件',1,'管理员','2016-07-18 16:33:17',1,'呵呵',58.00,'2016-07-18','2016-07-29 13:14:41','2016-07-18 16:33:17','电话销售',1,'管理员',6),(5,3,'微软公司',4,'大乔','2016-07-18 20:53:18',0,'梦梦搭',511.00,'2016-07-18',NULL,'2016-07-18 20:53:18','网上联系',4,'大乔',0);
/*!40000 ALTER TABLE `jouryu_custsale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_daily`
--

DROP TABLE IF EXISTS `jouryu_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date DEFAULT NULL COMMENT '日期',
  `content` varchar(4000) DEFAULT NULL COMMENT '内容',
  `adddt` datetime DEFAULT NULL COMMENT '新增时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `uid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '姓名',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|日报,1|周报,2|月报,3|年报',
  `plan` varchar(2000) DEFAULT NULL COMMENT '明日计划',
  `status` tinyint(1) DEFAULT '0',
  `enddt` date DEFAULT NULL,
  `optid` int(11) DEFAULT NULL,
  `mark` smallint(6) DEFAULT '0' COMMENT '得分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='日报';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_daily`
--

LOCK TABLES `jouryu_daily` WRITE;
/*!40000 ALTER TABLE `jouryu_daily` DISABLE KEYS */;
INSERT INTO `jouryu_daily` VALUES (1,'2016-04-07','REIM系统开发，添加推送密码，官网维护等。','2016-04-08 23:00:40','2016-04-08 23:00:40',1,'管理员',0,NULL,1,NULL,1,0),(2,'2016-04-08','1、核心模块流程添加转办给其他人功能。\n2、REIM开发添加手机端提醒。','2016-04-08 23:01:24','2016-04-08 23:01:24',1,'管理员',0,NULL,1,NULL,1,0),(3,'2016-04-05','1、官网添加会员用户中心，添加密码修改，REIM密钥创建。','2016-04-08 23:02:49','2016-04-08 23:02:49',1,'管理员',0,NULL,1,NULL,1,0),(4,'2016-06-16','1、后台数据权限添加\n2、权限查看编辑应用到各个模块中。\n',NULL,'2016-06-16 22:45:17',2,'貂蝉',0,NULL,1,NULL,2,0),(5,'2016-06-16','今天查看了其他人员的日报哦，做的还不错，加油！',NULL,'2016-06-16 23:08:37',5,'琢瑜清泉',0,NULL,1,NULL,5,0),(6,'2016-06-17','1、救了世子和刘备夫人，不慎他跳井了。\n2、被曹操追上，死里逃生啊。',NULL,'2016-06-17 10:55:07',7,'赵子龙',0,NULL,1,NULL,7,0),(7,'2016-06-17','1、优化了很多内容APP，测试\n2、添加上传文件功能。',NULL,'2016-06-17 19:28:30',1,'管理员',0,NULL,1,NULL,1,0),(8,'2016-06-13','1、开发设计维护。\n2、端午来干嘛的？',NULL,'2016-06-17 20:21:14',1,'管理员',1,'1、继续开发。\n2、继续涉及啦，哈哈。',1,'2016-06-17',1,0),(9,'2016-06-06','端午放假端午放假','2016-06-17 20:26:27','2016-10-19 21:27:03',1,'管理员',1,NULL,1,'2016-06-12',1,0),(10,'2016-06-01','1、本月主用做琢瑜OA系统开发。\n2、琢瑜OAAPP开发，包括安卓，苹果，接口等。','2016-06-17 20:27:43','2016-06-17 20:29:07',1,'管理员',2,'1、下月计划琢瑜OA官网设计并开发\n2、琢瑜OA上线。',1,'2016-06-30',1,0),(11,'2016-06-24','1、客户端添加搜索。\n2、添加可上传头像功能。','2016-06-24 20:34:57','2016-06-24 20:35:12',1,'管理员',0,NULL,1,NULL,1,0),(12,'2016-06-24','1、修改了自己资料，入职查看相关公司规定。','2016-06-24 20:39:33','2016-06-24 20:40:30',3,'小乔',0,NULL,1,NULL,3,0),(13,'2016-06-30','完成了很多任务，呵呵','2016-06-30 20:15:21','2016-06-30 20:15:39',6,'张飞',0,NULL,1,NULL,6,12),(14,'2016-09-14','日报修改时间切换等。','2016-09-14 15:40:38','2016-09-14 15:40:38',1,'管理员',0,NULL,1,NULL,1,0),(15,'2016-10-25','猜猜我做了啥，哈哈1','2016-10-25 20:45:08','2016-12-14 16:33:31',1,'管理员',0,NULL,1,NULL,1,0),(16,'2017-01-05','昨天的日报还没写呢，现在写一些！','2017-01-06 09:17:15','2017-01-06 09:17:15',1,'管理员',0,NULL,1,NULL,1,0),(17,'2017-02-10','1、添加元素类型，日报添加提醒报告。\n2、完善系统安全。','2017-02-10 16:20:46','2017-02-10 16:26:33',6,'张飞',0,NULL,1,NULL,6,0),(18,'2017-05-07','日报统计开发','2017-05-09 14:20:31','2017-05-09 17:15:01',1,'管理员',0,NULL,1,NULL,1,0),(19,'2017-05-08','升级系统，开发系统，bug修复。','2017-05-15 20:09:02','2017-05-15 20:09:02',1,'管理员',1,NULL,1,'2017-05-12',1,0),(20,'2017-07-24','补写日报喽，首页开发调整。','2017-07-24 09:04:03','2017-07-24 09:12:04',1,'管理员',0,NULL,1,NULL,1,0),(21,'2017-09-24','孔明让我去保护主公。','2017-09-24 10:54:01','2017-09-24 11:01:50',7,'赵子龙',0,NULL,1,NULL,7,0),(22,'2017-11-25','今天工作很辛苦的哦。','2017-11-25 21:43:57','2017-11-26 10:15:40',1,'管理员',0,NULL,1,NULL,1,0),(23,'2017-11-26','今天做了啥，同都知道的哦！','2017-11-26 10:16:16','2017-11-26 10:22:59',1,'管理员',0,NULL,1,NULL,1,0),(24,'2018-04-12','今天做了很多很多的今天做了很多很。','2018-04-12 14:46:04','2018-04-12 14:50:06',4,'大乔',0,NULL,1,NULL,4,0),(25,'2018-05-04','新增在线编辑文档功能等。','2018-05-04 11:00:43','2018-05-06 12:12:20',1,'管理员',0,NULL,1,NULL,1,0),(26,'2018-07-02','我的日报修改','2018-07-02 18:50:21','2018-07-02 18:55:44',1,'管理员',0,NULL,1,NULL,1,0);
/*!40000 ALTER TABLE `jouryu_daily` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_dailyfx`
--

DROP TABLE IF EXISTS `jouryu_dailyfx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_dailyfx` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `month` varchar(10) DEFAULT NULL COMMENT '月份',
  `optdt` datetime DEFAULT NULL COMMENT '分析时间',
  `day1` tinyint(1) DEFAULT '0' COMMENT '0未写,1已写,2请假,3休息日',
  `day2` tinyint(1) DEFAULT '0',
  `day3` tinyint(1) DEFAULT '0',
  `day4` tinyint(1) DEFAULT '0',
  `day5` tinyint(1) DEFAULT '0',
  `day6` tinyint(1) DEFAULT '0',
  `day7` tinyint(1) DEFAULT '0',
  `day8` tinyint(1) DEFAULT '0',
  `day9` tinyint(1) DEFAULT '0',
  `day10` tinyint(1) DEFAULT '0',
  `day11` tinyint(1) DEFAULT '0',
  `day12` tinyint(1) DEFAULT '0',
  `day13` tinyint(1) DEFAULT '0',
  `day14` tinyint(1) DEFAULT '0',
  `day15` tinyint(1) DEFAULT '0',
  `day16` tinyint(1) DEFAULT '0',
  `day17` tinyint(1) DEFAULT '0',
  `day18` tinyint(1) DEFAULT '0',
  `day19` tinyint(1) DEFAULT '0',
  `day20` tinyint(1) DEFAULT '0',
  `day21` tinyint(1) DEFAULT '0',
  `day22` tinyint(1) DEFAULT '0',
  `day23` tinyint(1) DEFAULT '0',
  `day24` tinyint(1) DEFAULT '0',
  `day25` tinyint(1) DEFAULT '0',
  `day26` tinyint(1) DEFAULT '0',
  `day27` tinyint(1) DEFAULT '0',
  `day28` tinyint(1) DEFAULT '0',
  `day29` tinyint(1) DEFAULT '0',
  `day30` tinyint(1) DEFAULT '0',
  `day31` tinyint(1) DEFAULT '0',
  `totaly` smallint(6) DEFAULT '0' COMMENT '应写次数',
  `totalx` smallint(6) DEFAULT '0' COMMENT '已写次数',
  `totalw` smallint(6) DEFAULT '0' COMMENT '未写次数',
  `explain` varchar(200) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日报分析统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_dailyfx`
--

LOCK TABLES `jouryu_dailyfx` WRITE;
/*!40000 ALTER TABLE `jouryu_dailyfx` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_dailyfx` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_demo`
--

DROP TABLE IF EXISTS `jouryu_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sheng` varchar(50) DEFAULT NULL COMMENT '省',
  `shi` varchar(50) DEFAULT NULL COMMENT '市',
  `xian` varchar(50) DEFAULT NULL COMMENT '县(区)',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `tanxuan` varchar(50) DEFAULT NULL COMMENT '弹出下来单选',
  `tanxuancheck` varchar(50) DEFAULT NULL COMMENT '弹框下拉多选',
  `upfile1` varchar(50) DEFAULT NULL COMMENT '文件上传1',
  `upfile2` varchar(50) DEFAULT NULL COMMENT '文件上传2',
  `testfirs` varchar(50) DEFAULT NULL COMMENT '测试字段',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='演示测试模块';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_demo`
--

LOCK TABLES `jouryu_demo` WRITE;
/*!40000 ALTER TABLE `jouryu_demo` DISABLE KEYS */;
INSERT INTO `jouryu_demo` VALUES (3,'贵州','贵阳','南明区','2018-09-04',1,'2018-09-22 23:37:16',1,'管理员',NULL,2,1,'第二个数据','数据3','4,5','6,7','我是');
/*!40000 ALTER TABLE `jouryu_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_dept`
--

DROP TABLE IF EXISTS `jouryu_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `name` varchar(100) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `headman` varchar(50) DEFAULT NULL COMMENT '负责人',
  `headid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='组织结构部门';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_dept`
--

LOCK TABLES `jouryu_dept` WRITE;
/*!40000 ALTER TABLE `jouryu_dept` DISABLE KEYS */;
INSERT INTO `jouryu_dept` VALUES (1,NULL,'琢瑜OA开发团队',0,0,NULL,NULL,NULL),(2,'dev','开发部',1,1,NULL,'管理员','1'),(3,NULL,'财务部',1,2,NULL,NULL,NULL),(4,NULL,'行政人事部',1,3,NULL,NULL,NULL),(5,NULL,'管理层',1,0,NULL,'琢瑜清泉','5');
/*!40000 ALTER TABLE `jouryu_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_editrecord`
--

DROP TABLE IF EXISTS `jouryu_editrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_editrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldsname` varchar(50) DEFAULT NULL COMMENT '字段名称',
  `oldval` varchar(1000) DEFAULT NULL COMMENT '原来值',
  `newval` varchar(1000) DEFAULT NULL COMMENT '新值',
  `table` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT NULL COMMENT '操作人Id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `editci` smallint(6) DEFAULT '0' COMMENT '第几次修改记录',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='修改记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_editrecord`
--

LOCK TABLES `jouryu_editrecord` WRITE;
/*!40000 ALTER TABLE `jouryu_editrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_editrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_email_cont`
--

DROP TABLE IF EXISTS `jouryu_email_cont`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_email_cont` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `body` longtext COMMENT '内容',
  `receid` varchar(500) DEFAULT '0',
  `recename` varchar(500) DEFAULT NULL COMMENT '接收人',
  `receemail` varchar(500) DEFAULT NULL COMMENT '接收邮件',
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '添加人',
  `status` tinyint(1) DEFAULT '0' COMMENT '0待发送,1成功,2失败',
  `senddt` datetime DEFAULT NULL COMMENT '发送时间',
  `ccname` varchar(500) DEFAULT NULL COMMENT '抄送给',
  `ccemail` varchar(500) DEFAULT NULL COMMENT '抄送邮件',
  `attachpath` varchar(500) DEFAULT NULL COMMENT '附件路径',
  `attachname` varchar(500) DEFAULT NULL COMMENT '山东名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统发送邮件内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_email_cont`
--

LOCK TABLES `jouryu_email_cont` WRITE;
/*!40000 ALTER TABLE `jouryu_email_cont` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_email_cont` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_emailm`
--

DROP TABLE IF EXISTS `jouryu_emailm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_emailm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0' COMMENT '用户iD',
  `title` varchar(220) DEFAULT NULL COMMENT '主题',
  `content` longtext COMMENT '邮件内容',
  `sendid` smallint(6) DEFAULT NULL,
  `sendname` varchar(100) DEFAULT NULL COMMENT '发送人',
  `senddt` datetime DEFAULT NULL COMMENT '发送时间',
  `receid` varchar(2000) DEFAULT NULL,
  `recename` varchar(4000) DEFAULT NULL COMMENT '接收人',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|草稿,1|已发送',
  `hid` smallint(6) DEFAULT '0' COMMENT '@回复id',
  `isfile` tinyint(1) DEFAULT '0' COMMENT '@是否有附件',
  `applydt` date DEFAULT NULL,
  `message_id` varchar(100) DEFAULT NULL COMMENT '邮件Id',
  `fromemail` varchar(500) DEFAULT NULL COMMENT '发送人邮件',
  `toemail` varchar(500) DEFAULT NULL COMMENT '发给邮件人',
  `reply_toemail` varchar(500) DEFAULT NULL COMMENT '回复邮件',
  `ccemail` varchar(500) DEFAULT NULL COMMENT '抄送给',
  `size` int(11) DEFAULT '0' COMMENT '邮件大小',
  `ccname` varchar(100) DEFAULT NULL COMMENT '抄送给',
  `ccid` varchar(100) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '0内部邮件,1用邮件外发',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `numoi` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `message_id` (`message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_emailm`
--

LOCK TABLES `jouryu_emailm` WRITE;
/*!40000 ALTER TABLE `jouryu_emailm` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_emailm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_emails`
--

DROP TABLE IF EXISTS `jouryu_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0',
  `uid` smallint(6) DEFAULT '0',
  `zt` tinyint(1) DEFAULT '0' COMMENT '@0|未读,1|已读',
  `type` tinyint(1) DEFAULT '0' COMMENT '0接收,1抄送,2发送者',
  `ishui` tinyint(1) DEFAULT '0' COMMENT '是否回复',
  `isdel` tinyint(1) DEFAULT '0' COMMENT '@0|未删,1|已删',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `email` varchar(50) DEFAULT NULL,
  `personal` varchar(20) DEFAULT NULL COMMENT '人员',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`,`email`,`type`),
  KEY `mid_2` (`mid`,`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='邮件子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_emails`
--

LOCK TABLES `jouryu_emails` WRITE;
/*!40000 ALTER TABLE `jouryu_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_file`
--

DROP TABLE IF EXISTS `jouryu_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filenum` varchar(20) DEFAULT NULL COMMENT '文件编号',
  `valid` tinyint(4) DEFAULT '1',
  `filename` varchar(200) DEFAULT NULL,
  `filetype` varchar(50) DEFAULT NULL,
  `fileext` varchar(20) DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `filesizecn` varchar(30) DEFAULT NULL,
  `filepath` varchar(100) DEFAULT NULL,
  `thumbpath` varchar(100) DEFAULT NULL,
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(50) DEFAULT NULL COMMENT '上传者',
  `adddt` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(300) DEFAULT NULL,
  `mtype` varchar(50) DEFAULT NULL COMMENT '对应类型',
  `mid` int(11) DEFAULT '0' COMMENT '管理id',
  `downci` int(11) DEFAULT '0' COMMENT '下载次数',
  `keyoi` varchar(20) DEFAULT NULL COMMENT '对应序号邮件附件中用到',
  `pdfpath` varchar(100) DEFAULT NULL COMMENT '转pdf后路径',
  `oid` int(11) DEFAULT '0' COMMENT '旧ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='上传文件记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_file`
--

LOCK TABLES `jouryu_file` WRITE;
/*!40000 ALTER TABLE `jouryu_file` DISABLE KEYS */;
INSERT INTO `jouryu_file` VALUES (1,NULL,1,'系统logo.png',NULL,'png',2000,'2.36 KB','images/logo.png','images/logo.png',1,'管理员','2016-11-23 22:26:21','127.0.0.1','Chrome','im_mess',11,5,'0',NULL,0),(2,NULL,1,'daiban.png',NULL,'png',2000,'2.21 KB','images/daiban.png','images/daiban.png',1,'管理员','2016-11-23 22:26:26','127.0.0.1','Chrome',NULL,0,6,'0',NULL,0);
/*!40000 ALTER TABLE `jouryu_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_files`
--

DROP TABLE IF EXISTS `jouryu_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(50) DEFAULT NULL,
  `mid` int(11) DEFAULT '0',
  `fileid` int(11) DEFAULT '0' COMMENT '关联file.id',
  `optid` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_files`
--

LOCK TABLES `jouryu_files` WRITE;
/*!40000 ALTER TABLE `jouryu_files` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_fininfom`
--

DROP TABLE IF EXISTS `jouryu_fininfom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_fininfom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(2) DEFAULT '0' COMMENT '类型@0|报销单,1|出差报销,2|借款单,3|还款单,4|付款申请,5|开票申请',
  `uid` int(11) DEFAULT NULL,
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `moneycn` varchar(100) DEFAULT NULL COMMENT '大写金额',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0',
  `isturn` tinyint(1) DEFAULT '0',
  `bills` smallint(6) DEFAULT NULL COMMENT '附单据(张)',
  `paytype` varchar(20) DEFAULT NULL COMMENT '付款方式',
  `fullname` varchar(100) DEFAULT NULL COMMENT '收款人全称',
  `cardid` varchar(50) DEFAULT NULL COMMENT '收款帐号',
  `openbank` varchar(50) DEFAULT NULL COMMENT '开户行',
  `purpose` varchar(100) DEFAULT NULL COMMENT '用途',
  `purresult` varchar(100) DEFAULT NULL,
  `paydt` date DEFAULT NULL COMMENT '付款日期',
  `num` varchar(30) DEFAULT NULL COMMENT '合同号/订单号',
  `name` varchar(50) DEFAULT NULL COMMENT '开票名称',
  `shibieid` varchar(50) DEFAULT NULL COMMENT '纳税识别号',
  `address` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='费用报销';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_fininfom`
--

LOCK TABLES `jouryu_fininfom` WRITE;
/*!40000 ALTER TABLE `jouryu_fininfom` DISABLE KEYS */;
INSERT INTO `jouryu_fininfom` VALUES (1,0,1,12.00,'壹拾贰元整','2016-05-05 20:19:42',1,'管理员','2016-05-05',NULL,1,1,0,'支付宝','RockOA开发团队','admin@jouryu.com','阿里巴巴',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,1,500.00,'伍佰元整','2016-09-03 11:43:36',1,'管理员','2016-05-05',NULL,1,1,0,'支付宝','RockOA开发团队','admin@jouryu.com','阿里巴巴','北京会见马云','聊的不错',NULL,NULL,NULL,NULL,NULL,NULL),(4,2,1,500.00,'伍佰元整','2016-09-03 15:43:28',1,'管理员','2016-05-08','启动资金',1,1,1,'支付宝','RockOA开发团队','admin@jouryu.com','阿里巴巴公司','买房',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,0,1,101.00,'壹佰零壹元整','2016-09-02 22:54:13',1,'管理员','2016-09-02',NULL,0,1,0,'支付宝','琢瑜OA','admin@jouryu.com','支付宝',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,2,1,35000.00,'叁万伍仟元整','2016-09-03 16:52:52',1,'管理员','2016-09-03',NULL,1,1,NULL,'支付宝','RockOA开发团队','admin@jouryu.com','阿里巴巴','买车',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,3,1,35000.00,'叁万伍仟元整','2016-09-03 17:17:44',1,'管理员','2016-09-03',NULL,1,1,NULL,'支付宝','RockOA开发团队','admin@jouryu.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,0,1,63.00,'陆拾叁元整','2017-05-14 18:50:58',1,'管理员','2016-09-28',NULL,1,1,0,'支付宝','琢瑜OA开发团队','admin@jouryu.com','阿里巴巴',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,0,4,530.00,'伍佰叁拾元整','2017-05-08 19:35:20',4,'大乔','2017-05-08',NULL,0,1,0,'现金','大乔公司','62265333333','无',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,4,1,50.00,NULL,'2017-08-07 20:42:59',1,'管理员','2017-08-07','付钱申请',0,1,NULL,'银行转账','琢瑜OA开发团队','62251234699','招商银行',NULL,NULL,'2017-08-07','abx123',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_fininfom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_fininfos`
--

DROP TABLE IF EXISTS `jouryu_fininfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_fininfos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表fininfom.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `sdt` date DEFAULT NULL COMMENT '发生日期',
  `name` varchar(20) DEFAULT NULL COMMENT '所属项目',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `sm` varchar(100) DEFAULT NULL COMMENT '说明',
  `didian` varchar(50) DEFAULT NULL COMMENT '发生地点',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='费用报销子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_fininfos`
--

LOCK TABLES `jouryu_fininfos` WRITE;
/*!40000 ALTER TABLE `jouryu_fininfos` DISABLE KEYS */;
INSERT INTO `jouryu_fininfos` VALUES (1,5,0,'2016-09-02','市内交通费',12.00,NULL,NULL),(2,5,1,'2016-09-02','停车费',89.00,NULL,NULL),(3,4,0,'2016-05-05','电话费',500.00,'国外电话费贵啊',NULL),(4,3,0,'2016-09-01','电话费',45.00,NULL,'北京'),(5,3,1,'2016-09-01','快递费',455.00,NULL,'北京'),(6,8,0,'2016-09-01','电话费',30.00,NULL,NULL),(7,8,1,'2017-01-05','电话费',33.00,NULL,NULL),(8,9,0,'2017-05-01','市内交通费',30.00,NULL,NULL),(9,9,1,'2017-05-08','停车费',500.00,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_fininfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_bill`
--

DROP TABLE IF EXISTS `jouryu_flow_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sericnum` varchar(50) DEFAULT NULL COMMENT '单号',
  `table` varchar(50) DEFAULT NULL COMMENT '对应表',
  `mid` int(11) DEFAULT NULL COMMENT '主id',
  `modeid` smallint(6) DEFAULT '0' COMMENT '模块id',
  `modename` varchar(20) DEFAULT NULL COMMENT '模块名称',
  `uname` varchar(20) DEFAULT NULL COMMENT '申请人姓名',
  `uid` smallint(6) DEFAULT NULL COMMENT '用户id',
  `udeptname` varchar(30) DEFAULT NULL COMMENT '申请人部门',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0' COMMENT '操作人Id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `allcheckid` varchar(500) DEFAULT NULL COMMENT '@所有审核人',
  `isdel` tinyint(4) DEFAULT '0' COMMENT '是否删除',
  `nstatus` tinyint(1) DEFAULT '0' COMMENT '当前状态值',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `nstatustext` varchar(100) DEFAULT NULL COMMENT '当前状态',
  `status` tinyint(1) DEFAULT '0',
  `nowcourseid` int(11) DEFAULT '0' COMMENT '当前步骤Id',
  `nowcheckid` varchar(500) DEFAULT NULL COMMENT '当前审核人id',
  `nowcheckname` varchar(500) DEFAULT NULL COMMENT '当前审核人',
  `checksm` varchar(200) DEFAULT NULL COMMENT '最后审核说明',
  `updt` datetime DEFAULT NULL COMMENT '最后更新时间',
  `createdt` datetime DEFAULT NULL COMMENT '创建时间',
  `tuiid` int(11) DEFAULT '0' COMMENT '退回flow_log.Id',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '是否已提交了',
  PRIMARY KEY (`id`),
  KEY `sericnum` (`sericnum`),
  KEY `table` (`table`,`mid`) USING BTREE,
  KEY `status` (`status`),
  KEY `modeid` (`modeid`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COMMENT='流程单据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_bill`
--

LOCK TABLES `jouryu_flow_bill` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_bill` DISABLE KEYS */;
INSERT INTO `jouryu_flow_bill` VALUES (1,'KA-20160729-0001','kqinfo',1,5,'请假条','管理员',1,'开发部','2016-08-17 22:50:22',1,'管理员','4,5',0,1,'2016-07-29','大乔通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(2,'KB-20160729-0001','kqinfo',2,6,'加班单','管理员',1,'开发部','2016-07-29 10:56:58',1,'管理员','5',0,1,'2016-07-29','琢瑜清泉通过',1,0,NULL,NULL,'好的',NULL,NULL,0,1),(3,'KA-20160807-0001','kqinfo',3,5,'请假条','张飞',6,'开发部','2016-08-07 18:37:02',6,'张飞','4,1',0,1,'2016-08-07','大乔通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(4,'KA-20160815-0001','kqinfo',4,5,'请假条','管理员',1,'开发部','2016-09-13 16:05:38',1,'管理员','5,4',0,1,'2016-09-13','待大乔处理',0,2,'4','大乔',NULL,'2018-07-02 09:51:09',NULL,0,1),(5,'KA-20160825-0001','kqinfo',5,5,'请假条','管理员',1,'开发部','2016-08-25 16:01:52',1,'管理员','4,5',0,1,'2016-08-25','大乔通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(6,'KA-20160826-0001','kqinfo',6,5,'请假条','琢瑜OA客服',8,'开发部','2016-08-26 22:45:35',8,'琢瑜OA客服','4,1',0,1,'2016-08-26','大乔通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(8,'KB-20160827-0001','kqinfo',7,6,'加班单','管理员',1,'开发部','2016-08-27 14:06:56',1,'管理员','5',0,1,'2016-08-27','琢瑜清泉通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(9,'KD-20160827-0001','kqout',1,23,'外出出差','管理员',1,'开发部','2016-08-27 15:22:51',1,'管理员','5',0,1,'2016-08-27','琢瑜清泉通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(10,'KA-20160830-0001','kqinfo',8,5,'请假条','张飞',6,'开发部','2016-08-30 20:12:33',6,'张飞','4,6,1',0,1,'2016-08-30','大乔处理通过',1,0,NULL,NULL,'好的',NULL,NULL,0,1),(18,'FA-20160902-0001','fininfom',5,11,'费用报销','管理员',1,'开发部','2016-09-12 14:52:28',1,'管理员','4,5,2',0,2,'2016-09-02','待大乔处理',0,8,'4','大乔','12',NULL,NULL,0,1),(19,'FA-20160508-0001','fininfom',4,26,'借款单','管理员',1,'开发部','2016-09-03 15:43:28',1,'管理员','2,4,5',0,1,'2016-05-08','貂蝉处理通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(20,'FB-20160505-0001','fininfom',3,25,'出差报销','管理员',1,'开发部','2016-09-03 11:43:36',1,'管理员','2,8,5,4',0,1,'2016-05-05','貂蝉处理通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(21,'FC-20160903-0001','fininfom',6,26,'借款单','管理员',1,'开发部','2016-09-03 16:52:52',1,'管理员','2,4,5',0,1,'2016-09-03','貂蝉处理通过',1,0,NULL,NULL,'哈哈哈哈',NULL,NULL,0,1),(22,'FD-20160903-0001','fininfom',7,27,'还款单','管理员',1,'开发部','2016-09-03 17:17:44',1,'管理员','2,1',0,1,'2016-09-03','貂蝉处理通过',1,0,NULL,NULL,'哈哈哈哈',NULL,NULL,0,1),(24,'KA-20160908-0001','kqinfo',9,5,'请假条','管理员',1,'开发部','2016-09-12 14:50:07',1,'管理员','4,5',0,5,'2016-09-08','作废',5,2,NULL,NULL,'作废：太久没处理了，作废吧','2017-08-02 15:38:14',NULL,0,0),(25,'KA-20160925-0001','kqinfo',11,5,'请假条','张飞',6,'开发部','2016-09-25 16:04:13',6,'张飞','1,4,5',0,1,'2016-09-25','待大乔处理',0,2,'4','大乔',NULL,'2017-03-17 14:11:04',NULL,0,1),(26,'FA-20160928-0001','fininfom',8,11,'费用报销','管理员',1,'开发部','2017-05-14 18:50:58',1,'管理员','2,4,5',0,1,'2016-09-28','貂蝉处理通过',1,0,NULL,NULL,NULL,'2017-06-22 09:41:59',NULL,0,1),(28,'HA-20161006-0001','hrpositive',1,32,'转正申请','管理员',1,'开发部','2016-10-06 20:58:38',1,'管理员','4,5',0,1,'2016-10-06','大乔处理通过',1,0,NULL,NULL,'好哦奥',NULL,NULL,0,1),(29,'HB-20161007-0001','hrredund',1,33,'离职申请','管理员',1,'开发部','2018-09-15 17:49:38',1,'管理员','5,4',0,2,'2016-10-07','待琢瑜清泉处理',0,29,'5','琢瑜清泉','好好做事啊','2018-09-15 17:49:38',NULL,0,1),(47,'HE-20161019-0001','hrtransfer',1,38,'人事调动','管理员',1,'开发部','2016-10-19 22:03:12',1,'管理员','4',0,1,'2016-10-19','大乔处理通过',1,0,NULL,NULL,NULL,'2017-02-07 10:21:30',NULL,0,1),(48,'HD-20161101-0001','hrtrsalary',1,37,'调薪申请','管理员',1,'开发部','2016-10-20 22:20:41',1,'管理员','5,4',0,0,'2016-11-01','待琢瑜清泉处理',0,33,'5','琢瑜清泉',NULL,NULL,NULL,0,1),(49,'HF-20161020-0001','reward',1,39,'奖惩处罚','管理员',1,'开发部','2016-10-20 21:01:10',1,'管理员','4,1',0,1,'2016-10-20','大乔处理通过',1,0,NULL,NULL,NULL,NULL,NULL,0,1),(50,'HF-20161020-0002','reward',2,39,'奖惩处罚','管理员',1,'开发部','2016-10-20 21:16:24',1,'管理员','8,4',0,1,'2016-10-20','待大乔处理',0,36,'4','大乔',NULL,'2017-03-09 14:33:18',NULL,0,1),(56,'CL-20161029-0001','bookborrow',1,46,'图书借阅','管理员',1,'开发部','2016-10-29 13:08:44',1,'管理员','6,3,1',0,1,'2016-10-29','张飞处理确认归还',1,0,NULL,NULL,'呵呵',NULL,NULL,0,1),(57,'CL-20161029-0002','bookborrow',2,46,'图书借阅','琢瑜OA客服',8,'开发部','2016-10-29 13:14:35',8,'琢瑜OA客服','3,2',0,1,'2016-10-29','待貂蝉处理',0,40,'2','貂蝉','转给：貂蝉',NULL,NULL,0,1),(58,'CL-20161030-0001','bookborrow',3,46,'图书借阅','管理员',1,'开发部','2016-10-30 11:58:59',1,'管理员','1,3',0,1,'2016-10-30','管理员处理确认归还',1,0,NULL,NULL,NULL,'2017-03-31 09:36:21',NULL,0,1),(59,'KD-20161108-0001','kqout',2,23,'外出出差','琢瑜OA客服',8,'开发部','2016-11-08 20:52:41',8,'琢瑜OA客服','1',0,1,'2016-11-08','管理员处理通过',1,0,NULL,NULL,'好的','2017-02-28 13:13:38',NULL,0,1),(61,'CH-20161208-0001','sealapl',1,49,'印章申请','管理员',1,'开发部','2016-12-08 21:48:02',1,'管理员','1,6,5',0,5,'2016-12-08','作废',5,0,NULL,NULL,'作废：不需要申请了。','2016-12-19 11:44:21',NULL,0,0),(63,'KA-20161209-0001','kqinfo',14,5,'请假条','管理员',1,'开发部','2017-07-25 22:09:21',1,'管理员','5',0,1,'2017-07-25','琢瑜清泉处理同意',1,0,NULL,NULL,'很好啊','2017-08-04 09:59:14','2016-12-09 12:23:06',0,1),(64,'KE-20161216-0001','kqerr',1,51,'打卡异常','管理员',1,'开发部','2016-12-16 20:54:27',1,'管理员','4,5',0,1,'2016-12-16','大乔处理通过',1,0,NULL,NULL,NULL,'2016-12-16 21:08:07','2016-12-16 20:54:27',0,1),(67,'ZF-20161219-0003','tovoid',3,52,'单据作废申请','管理员',1,'开发部','2016-12-19 13:49:22',1,'管理员','5',0,5,'2016-12-19','作废',5,0,NULL,NULL,'作废：在删除测试测试','2016-12-19 14:33:32','2016-12-19 13:49:22',0,0),(69,'ZF-20161219-0005','tovoid',5,52,'单据作废申请','管理员',1,'开发部','2016-12-19 14:39:20',1,'管理员','5',0,1,'2016-12-19','琢瑜清泉处理通过',1,0,NULL,NULL,NULL,'2016-12-19 14:39:52','2016-12-19 14:39:20',0,1),(72,'CH-20170320-0001','sealapl',2,49,'印章申请','管理员',1,'开发部','2017-03-20 09:39:47',1,'管理员','1,6,5',0,1,'2017-03-20','管理员处理已盖章',1,0,NULL,NULL,NULL,'2017-03-24 16:42:59','2017-03-20 09:39:47',0,1),(80,'XW-20170329-0001','work',1,4,'任务','管理员',1,'开发部','2017-07-24 10:02:38',1,'管理员','1,6',0,5,'2017-03-29','作废',5,53,NULL,NULL,'作废：不需要了','2017-08-02 15:09:26','2017-03-29 10:57:58',0,0),(81,'XW-20170406-0001','work',2,4,'任务','管理员',1,'开发部','2017-04-06 14:07:50',1,'管理员','1',0,1,'2017-04-06','管理员处理通过',1,0,NULL,NULL,'好的','2017-07-20 17:13:04','2017-04-06 14:07:50',0,1),(82,'XW-20170410-0001','work',3,4,'任务','管理员',1,'开发部','2017-04-18 11:43:47',1,'管理员','1',0,1,'2017-04-10','管理员处理通过',1,0,NULL,NULL,NULL,'2017-07-04 13:58:15','2017-04-10 17:14:40',0,1),(84,'KD-20170419-0001','kqout',3,23,'外出出差','管理员',1,'开发部','2017-04-19 12:57:28',1,'管理员','5',0,1,'2017-04-19','琢瑜清泉处理通过',1,0,NULL,NULL,NULL,'2017-04-19 12:57:48','2017-04-19 12:57:28',0,1),(86,'FA-20160505-0001','fininfom',1,11,'费用报销','管理员',1,'开发部','2016-05-05 20:19:42',1,'管理员',NULL,0,1,'2016-05-05',NULL,1,0,NULL,NULL,NULL,'2017-05-02 11:00:16','2016-05-05 20:19:42',0,1),(88,'FA-20170508-0001','fininfom',9,11,'费用报销','大乔',4,'行政人事部','2017-05-08 19:35:20',4,'大乔','4,5,2',0,1,'2017-05-08','待貂蝉处理',0,9,'2','貂蝉',NULL,'2017-06-09 21:35:52','2017-05-08 19:35:20',0,1),(89,'KB-20170518-0001','kqinfo',15,6,'加班单','管理员',1,'开发部','2017-05-18 12:17:51',1,'管理员','5',0,1,'2017-05-18','琢瑜清泉处理通过',1,0,NULL,NULL,NULL,'2017-05-18 12:58:56','2017-05-18 12:11:37',0,1),(94,'KB-20170629-0001','kqinfo',16,6,'加班单','管理员',1,'开发部','2017-06-29 10:14:05',1,'管理员','4,5',0,1,'2017-06-29','大乔处理通过',1,0,NULL,NULL,NULL,'2017-06-29 10:16:07','2017-06-29 10:14:05',0,1),(97,'WX-20170707-0001','repair',1,62,'维修报修','管理员',1,'开发部','2017-07-07 13:12:53',1,'管理员','4',0,1,'2017-07-07','大乔处理确认',1,0,NULL,NULL,NULL,'2017-07-07 13:16:36','2017-07-07 13:12:53',0,1),(98,'WX-20170707-0002','repair',2,62,'维修报修','小乔',3,'财务部','2017-07-07 13:37:28',3,'小乔','4',0,1,'2017-07-07','大乔处理通过',1,0,NULL,NULL,NULL,'2017-07-07 13:39:18','2017-07-07 13:37:28',0,1),(99,'FE-20170807-0001','fininfom',10,64,'付款申请','管理员',1,'开发部','2017-08-07 20:42:59',1,'管理员','5,3',0,0,'2017-08-07','待琢瑜清泉处理',0,62,'5','琢瑜清泉',NULL,'2017-08-07 20:42:59','2017-08-07 20:42:59',0,1),(102,'XW-20170812-0001','work',5,4,'任务','管理员',1,'开发部','2017-08-15 17:43:16',1,'管理员','7,5,1',0,2,'2017-08-12','待赵子龙处理',3,52,'7','赵子龙','哈哈','2017-08-15 17:43:16','2017-08-12 17:31:36',0,1),(103,'KD-20170828-0001','kqout',4,23,'外出出差','管理员',1,'开发部','2017-08-28 11:54:41',1,'管理员','5',0,0,'2017-08-28','待琢瑜清泉处理',0,5,'5','琢瑜清泉',NULL,'2017-08-28 11:54:41','2017-08-28 11:54:41',0,1),(104,'KE-20170828-0001','kqerr',2,51,'打卡异常','貂蝉',2,'财务部','2017-08-28 12:19:12',2,'貂蝉','5,4',0,0,'2017-08-28','待琢瑜清泉处理',0,44,'5','琢瑜清泉',NULL,'2017-08-28 12:19:12','2017-08-28 12:19:12',0,1),(117,'WB-20171111-0001','goodm',1,28,'物品采购','管理员',1,'开发部','2017-11-11 15:43:29',1,'管理员','4,5',0,1,'2017-11-11','大乔处理同意',1,0,NULL,NULL,NULL,'2017-11-11 22:07:42','2017-11-11 15:43:29',0,1),(118,'WA-20171112-0001','goodm',2,24,'物品领用','管理员',1,'开发部','2017-11-12 15:04:37',1,'管理员','4',0,1,'2017-11-12','大乔处理同意',1,0,NULL,NULL,NULL,'2017-11-12 15:41:51','2017-11-12 15:04:37',0,1),(119,'WB-20171112-0001','goodm',3,28,'物品采购','管理员',1,'开发部','2018-02-07 23:05:49',1,'管理员','5,4,3',0,1,'2017-11-12','待小乔处理',0,20,'3','小乔',NULL,'2018-08-29 16:44:39','2017-11-12 18:37:02',0,1),(120,'WB-20171113-0001','goodm',4,28,'物品采购','管理员',1,'开发部','2017-11-13 14:20:47',1,'管理员','4,5',0,1,'2017-11-13','大乔处理同意',1,0,NULL,NULL,NULL,'2017-11-13 14:21:23','2017-11-13 14:20:47',0,1),(121,'WC-20171228-0001','goodm',5,76,'调拨单','管理员',1,'开发部','2017-12-28 14:26:46',1,'管理员','5',0,1,'2017-12-28','琢瑜清泉处理同意',1,0,NULL,NULL,NULL,'2017-12-28 14:31:01','2017-12-28 14:24:10',0,1),(122,'WC-20180127-0001','goodm',6,76,'调拨单','管理员',1,'开发部','2018-01-27 10:27:28',1,'管理员','5',0,1,'2018-01-27','琢瑜清泉处理同意',1,0,NULL,NULL,NULL,'2018-01-27 10:27:51','2018-01-27 10:27:28',0,1),(123,'CM-20180208-0001','sealapl',3,49,'印章申请','赵子龙',7,'开发部','2018-02-08 21:41:40',7,'赵子龙','1,6,7',0,1,'2018-02-08','待张飞处理',0,42,'6','张飞',NULL,'2018-09-01 13:43:52','2018-02-08 21:41:40',0,1),(124,'CE-20180306-0001','custappy',1,77,'客户申请使用','管理员',1,'开发部','2018-03-06 15:57:45',1,'管理员','5',0,1,'2018-03-06','琢瑜清泉处理同意',1,0,NULL,NULL,NULL,'2018-03-06 16:24:12','2018-03-06 15:47:27',0,1),(125,'CE-20180306-0002','custappy',2,77,'客户申请使用','赵子龙',7,'开发部','2018-03-06 17:42:35',7,'赵子龙','1',0,1,'2018-03-06','管理员处理同意',1,0,NULL,NULL,NULL,'2018-03-06 21:14:03','2018-03-06 17:42:35',0,1),(126,'CE-20180307-0001','custappy',3,77,'客户申请使用','赵子龙',7,'开发部','2018-03-07 12:28:31',7,'赵子龙','1',0,5,'2018-03-07','作废',5,73,NULL,NULL,'作废：超时30分钟自动作废','2018-03-07 12:36:13','2018-03-07 12:28:31',0,1),(127,'CE-20180307-0002','custappy',4,77,'客户申请使用','赵子龙',7,'开发部','2018-03-07 12:41:46',7,'赵子龙','1',0,5,'2018-03-07','作废',5,73,NULL,NULL,'作废：超时10分钟自动作废','2018-03-07 12:55:05','2018-03-07 12:41:46',0,1),(129,'HH-20180418-0001','hrdemint',1,78,'人员需求','赵子龙',7,'开发部','2018-04-18 20:39:38',7,'赵子龙','4',0,0,'2018-04-18','待大乔处理',0,74,'4','大乔',NULL,'2018-04-18 20:39:38','2018-04-18 19:49:46',0,1),(130,'HI-201804180001','hrdemint',2,79,'面试安排','赵子龙',7,'开发部','2018-04-18 22:01:41',7,'赵子龙','1,7',0,1,'2018-04-18','待赵子龙处理',0,77,'7','赵子龙',NULL,'2018-04-18 22:27:20','2018-04-18 22:01:41',0,1),(131,'HI-201804180002','hrdemint',3,79,'面试安排','赵子龙',7,'开发部','2018-04-18 22:45:48',7,'赵子龙','5,7',0,2,'2018-04-18','待琢瑜清泉处理',2,75,'5','琢瑜清泉','哈哈哈','2018-04-18 22:46:18','2018-04-18 22:33:50',0,1),(139,'KA-20180613-0001','kqinfo',103,5,'请假条','小乔',3,'财务部','2018-06-15 20:01:28',1,'管理员','2,5,4',0,1,'2018-06-13','待琢瑜清泉处理',0,100004,'5','琢瑜清泉',NULL,'2018-07-28 21:55:39','2018-06-13 14:48:40',0,1),(140,'HA-20180615-0001','hrpositive',2,32,'转正申请','赵子龙',7,'开发部','2018-06-15 20:04:38',7,'赵子龙','1,4',0,1,'2018-06-15','待大乔处理',0,28,'4','大乔',NULL,'2018-09-01 13:43:52','2018-06-15 20:04:38',0,1),(141,'HA-20180615-0002','hrpositive',3,32,'转正申请','大乔',4,'行政人事部','2018-06-15 20:16:18',1,'管理员','5,4',0,1,'2018-06-15','待大乔处理',0,28,'4','大乔',NULL,'2018-09-06 21:33:48','2018-06-15 20:16:18',0,1),(142,'KD-20180615-0001','kqout',5,23,'外出出差','貂蝉',2,'财务部','2018-06-15 20:28:19',1,'管理员','5',0,1,'2018-06-15','琢瑜清泉处理同意',1,0,NULL,NULL,NULL,'2018-09-06 20:44:40','2018-06-15 20:28:19',0,1),(143,'KB-20180615-0001','kqinfo',104,6,'加班单','大乔',4,'行政人事部','2018-08-20 10:59:14',1,'管理员','5',0,1,'2018-06-15','琢瑜清泉处理同意',1,0,NULL,NULL,NULL,'2018-08-21 12:11:52','2018-06-15 20:31:24',0,1),(145,'CM-20180702-0001','sealapl',4,49,'印章申请','管理员',1,'开发部','2018-07-02 09:52:34',1,'管理员','5,6,1',0,1,'2018-07-02','待张飞处理',0,42,'6','张飞',NULL,'2018-07-02 09:52:53','2018-07-02 09:52:34',0,1),(146,'XW-20180705-0001','work',6,4,'任务','赵子龙',7,'开发部','2018-07-05 11:29:52',7,'赵子龙','1,7',0,1,'2018-07-05','待赵子龙处理',6,53,'7','赵子龙',NULL,'2018-09-01 13:43:52','2018-07-05 11:29:52',0,1),(147,'WB-20180706-0001','goodm',8,28,'物品采购','管理员',1,'开发部','2018-07-06 18:27:39',1,'管理员','3,4,5',0,1,'2018-07-06','小乔处理同意',1,0,NULL,NULL,NULL,'2018-07-28 22:06:57','2018-07-06 18:27:39',0,1),(153,'KA-20180728-001','kqinfo',109,5,'请假条','大乔',4,'行政人事部','2018-07-28 21:52:21',4,'大乔','5,4',0,1,'2018-07-28','待大乔处理',0,2,'4','大乔',NULL,'2018-09-06 20:44:05','2018-07-28 21:52:21',0,1),(154,'KA-20180728-002','kqinfo',110,5,'请假条','小乔',3,'财务部','2018-07-28 21:55:00',3,'小乔','5,2,4',0,1,'2018-07-28','待大乔处理',0,2,'4','大乔',NULL,'2018-09-02 12:42:25','2018-07-28 21:55:00',0,1),(155,'KB-20180807-001','kqinfo',131,6,'加班单','管理员',1,'开发部','2018-08-07 15:57:02',1,'管理员','5',0,1,'2018-08-07','琢瑜清泉处理同意',1,0,NULL,NULL,NULL,'2018-08-07 15:57:19','2018-08-07 15:57:02',0,1),(159,'CJ-20180903-001','carmrese',1,44,'车辆预定','管理员',1,'开发部','2018-09-03 19:51:16',1,'管理员','3,5,6',0,1,'2018-09-03','待张飞处理',0,50,'6','张飞',NULL,'2018-09-03 19:52:42','2018-09-03 19:51:16',0,1),(162,'YS-20180904-001','demo',3,72,'演示测试','管理员',1,'开发部','2018-09-22 23:37:16',1,'管理员','3,5',0,2,'2018-09-04','待小乔处理',2,79,'3','小乔','好','2018-09-23 07:49:59','2018-09-04 10:39:10',0,1),(163,'WA-20180906-001','goodm',9,24,'物品领用','管理员',1,'开发部','2018-09-08 13:42:37',1,'管理员','4',0,0,'2018-09-06','待大乔处理',0,47,'4','大乔',NULL,'2018-09-08 13:42:37','2018-09-06 11:01:07',0,1),(173,'HC-20180928-001','hrsalary',1,34,'薪资','管理员',1,'开发部','2018-10-09 22:48:53',2,'貂蝉','4',0,1,'2018-09-28','大乔处理同意',1,0,NULL,NULL,NULL,'2018-10-10 14:56:32','2018-09-28 22:30:13',0,1),(174,'HC-20180928-002','hrsalary',2,34,'薪资','管理员',1,'开发部','2018-10-09 22:48:52',2,'貂蝉','4',0,1,'2018-09-28','大乔处理同意',1,0,NULL,NULL,NULL,'2018-10-10 14:56:32','2018-09-28 22:30:33',0,1),(179,'HC-20181009-005','hrsalary',9,34,'薪资','管理员',1,'开发部','2018-10-09 18:30:30',1,'管理员',NULL,1,0,'2018-10-09',NULL,0,0,NULL,NULL,NULL,'2018-10-09 18:30:32','2018-10-09 18:30:30',0,0),(180,'HC-20181009-006','hrsalary',11,34,'薪资','管理员',1,'开发部','2018-10-09 19:21:36',1,'管理员',NULL,1,0,'2018-10-09',NULL,0,0,NULL,NULL,NULL,'2018-10-09 19:21:39','2018-10-09 19:21:36',0,0),(181,'HC-20181009-007','hrsalary',12,34,'薪资','管理员',1,'开发部','2018-10-09 19:21:36',2,'貂蝉',NULL,1,0,'2018-10-09',NULL,0,0,NULL,NULL,NULL,'2018-10-09 19:23:26','2018-10-09 19:21:36',0,0),(182,'HC-20181009-008','hrsalary',16,34,'薪资','管理员',1,'开发部','2018-10-09 22:33:14',1,'管理员','4',0,1,'2018-10-09','大乔处理同意',1,0,NULL,NULL,NULL,'2018-10-10 14:56:32','2018-10-09 19:38:14',0,1),(184,'HC-20181009-009','hrsalary',18,34,'薪资','管理员',1,'开发部','2018-10-09 22:06:15',1,'管理员','4',1,0,'2018-10-09','待大乔处理',0,31,'4','大乔',NULL,'2018-10-09 22:06:15','2018-10-09 19:58:26',0,1),(185,'HC-20181009-010','hrsalary',15,34,'薪资','管理员',1,'开发部','2018-10-09 22:48:52',2,'貂蝉','4',0,0,'2018-10-09','待大乔处理',0,31,'4','大乔',NULL,'2018-10-09 22:48:52','2018-10-09 19:36:57',0,1),(186,'HC-20181009-011','hrsalary',19,34,'薪资','管理员',1,'开发部','2018-10-09 22:30:24',1,'管理员','4',1,0,'2018-10-09','待大乔处理',0,31,'4','大乔',NULL,'2018-10-09 22:30:24','2018-10-09 22:09:16',0,1),(187,'HC-20181009-012','hrsalary',20,34,'薪资','管理员',1,'开发部','2018-10-09 22:33:13',1,'管理员','4',0,0,'2018-10-09','待大乔处理',0,31,'4','大乔',NULL,'2018-10-09 22:33:13','2018-10-09 22:31:45',0,1);
/*!40000 ALTER TABLE `jouryu_flow_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_chao`
--

DROP TABLE IF EXISTS `jouryu_flow_chao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_chao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modeid` int(11) DEFAULT '0',
  `table` varchar(50) DEFAULT NULL COMMENT '对应表',
  `mid` int(11) DEFAULT '0' COMMENT '对应记录Id',
  `uid` int(11) DEFAULT '0' COMMENT '人员Id',
  `csname` varchar(500) DEFAULT NULL COMMENT '抄送给',
  `csnameid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`table`,`mid`),
  KEY `modeid` (`modeid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='抄送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_chao`
--

LOCK TABLES `jouryu_flow_chao` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_chao` DISABLE KEYS */;
INSERT INTO `jouryu_flow_chao` VALUES (1,3,'daily',22,1,'赵子龙,小乔','7,3'),(2,3,'daily',23,1,'管理员,赵子龙','1,7'),(3,3,'daily',24,4,'管理员','1'),(4,3,'daily',25,1,'管理员,赵子龙','1,7'),(7,3,'daily',26,1,'管理员,赵子龙','1,7');
/*!40000 ALTER TABLE `jouryu_flow_chao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_checks`
--

DROP TABLE IF EXISTS `jouryu_flow_checks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_checks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(30) DEFAULT '0',
  `mid` int(11) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT '0',
  `courseid` smallint(6) DEFAULT '0',
  `checkid` varchar(100) DEFAULT NULL,
  `checkname` varchar(100) DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `addlx` tinyint(1) DEFAULT '0' COMMENT '类型1自定义,2撤回添加,3退回添加,4转移添加',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='单据的审核人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_checks`
--

LOCK TABLES `jouryu_flow_checks` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_checks` DISABLE KEYS */;
INSERT INTO `jouryu_flow_checks` VALUES (9,'bookborrow',2,46,40,'2','貂蝉',8,'琢瑜OA客服','2016-10-29 22:33:30',0,0),(40,'work',1,4,52,'3','小乔',1,'管理员','2017-03-29 11:37:52',0,4),(92,'demo',3,72,79,'3','小乔',1,'管理员','2018-09-22 23:02:05',2,1);
/*!40000 ALTER TABLE `jouryu_flow_checks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_cname`
--

DROP TABLE IF EXISTS `jouryu_flow_cname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_cname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `name` varchar(50) DEFAULT NULL COMMENT '审核组名',
  `checkid` varchar(50) DEFAULT NULL,
  `checkname` varchar(50) DEFAULT NULL COMMENT '审核人',
  `pid` int(11) DEFAULT '0' COMMENT '上级ID',
  `receid` varchar(300) DEFAULT NULL,
  `recename` varchar(500) DEFAULT NULL COMMENT '适用对象',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`),
  KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='自定义审核人组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_cname`
--

LOCK TABLES `jouryu_flow_cname` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_cname` DISABLE KEYS */;
INSERT INTO `jouryu_flow_cname` VALUES (1,'group1','审核人员分组1','1','管理员',0,'d5','管理层',0),(2,'group','审核人员分组','5','琢瑜清泉',1,'d1','琢瑜OA开发团队',0),(4,'wewwe',NULL,'3','小乔',1,'d3','财务部',22);
/*!40000 ALTER TABLE `jouryu_flow_cname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_course`
--

DROP TABLE IF EXISTS `jouryu_flow_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0' COMMENT '上级ID',
  `nid` int(11) DEFAULT '0' COMMENT '下级步骤ID',
  `setid` smallint(6) DEFAULT '0' COMMENT '模块ID',
  `name` varchar(20) DEFAULT NULL COMMENT '步骤名称',
  `num` varchar(20) DEFAULT NULL,
  `checktype` varchar(20) DEFAULT NULL COMMENT '审核人类型',
  `checktypeid` varchar(200) DEFAULT NULL,
  `checktypename` varchar(200) DEFAULT NULL COMMENT '审核人',
  `sort` smallint(6) DEFAULT '0',
  `whereid` smallint(6) DEFAULT '0' COMMENT '流程模块条件下的Id',
  `where` varchar(500) DEFAULT NULL COMMENT '审核条件',
  `explain` varchar(100) DEFAULT NULL COMMENT '说明',
  `optdt` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `courseact` varchar(50) DEFAULT NULL COMMENT '审核动作',
  `checkshu` tinyint(2) DEFAULT '1' COMMENT '至少几人审核 ,0全部',
  `checkfields` varchar(500) DEFAULT NULL COMMENT '审核处理表单',
  `pid` smallint(6) DEFAULT '0' COMMENT '上级Id(弃用)',
  `optid` smallint(6) DEFAULT '0' COMMENT '操作人id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人姓名',
  `receid` varchar(1000) DEFAULT NULL COMMENT '适用对象id',
  `recename` varchar(1000) DEFAULT NULL COMMENT '适用对象',
  `iszf` tinyint(1) DEFAULT '0' COMMENT '是否可以转给他人办理',
  `isqm` tinyint(1) DEFAULT '0' COMMENT '手写签名0不用,1都需要,2只需要通过,3只需要不通过',
  `coursetype` tinyint(1) DEFAULT '0' COMMENT '审批方式0顺序,1前置审批,2后置审批',
  `zshtime` int(11) DEFAULT '0' COMMENT '超时时间(分钟)',
  `zshstate` tinyint(2) DEFAULT '1' COMMENT '自动审核类型',
  `zbrangeame` varchar(200) DEFAULT NULL COMMENT '转办人员可选范围',
  `zbrangeid` varchar(200) DEFAULT NULL COMMENT '转办人员可选范围ID',
  `smlx` tinyint(1) DEFAULT '0' COMMENT '处理说明类型',
  `wjlx` tinyint(1) DEFAULT '0' COMMENT '相关文件类型',
  PRIMARY KEY (`id`),
  KEY `setid` (`setid`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COMMENT='流程步骤表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_course`
--

LOCK TABLES `jouryu_flow_course` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_course` DISABLE KEYS */;
INSERT INTO `jouryu_flow_course` VALUES (1,0,0,5,'上级审核','super','superall',NULL,NULL,0,0,NULL,NULL,'2018-08-16 21:37:56',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,NULL,0,4,NULL,NULL,0,0),(2,1,0,5,'人事审核',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2018-05-07 09:47:03',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(3,0,0,6,'上级审核',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-07-02 22:25:29',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(4,2,0,5,'总经理审核',NULL,'user','5','琢瑜清泉',0,2,NULL,'超过3天24小时','2016-09-25 14:53:34',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(5,0,0,23,'上级审核',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-08-27 08:46:27',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(6,0,0,24,'行政发放',NULL,'user','4','大乔',0,0,NULL,NULL,'2017-08-10 11:42:24',1,'发放,驳回|red',1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(7,0,0,11,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-09-02 17:36:36',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(8,7,0,11,'人事审核',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-09-02 17:38:15',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(9,8,0,11,'财务审核',NULL,'rank',NULL,'财务总监',0,0,NULL,NULL,'2016-09-02 17:39:07',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(10,0,0,25,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-09-03 09:26:32',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(11,10,0,25,'人事审核',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-09-03 09:27:00',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(12,11,0,25,'财务审核',NULL,'rank',NULL,'财务总监',0,0,NULL,NULL,'2016-09-03 09:27:26',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(13,0,0,26,'上级审核',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-09-03 09:27:55',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(14,0,0,26,'人事审核',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-09-03 09:28:18',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(15,0,0,26,'财务审核',NULL,'rank',NULL,'财务总监',0,0,NULL,NULL,'2016-09-03 09:28:35',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(16,0,0,27,'财务确认',NULL,'rank',NULL,'财务总监',0,0,NULL,NULL,'2016-09-03 15:29:45',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(17,16,0,27,'付款确认',NULL,'apply',NULL,NULL,0,0,NULL,NULL,'2016-09-03 15:32:25',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(18,17,0,27,'确认收款',NULL,'rank',NULL,'财务总监',0,0,NULL,NULL,'2016-09-03 15:33:23',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(19,0,0,28,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2017-02-08 14:39:04',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(20,19,0,28,'行政审批',NULL,'cname','group1','审核人员分组1',0,0,NULL,NULL,'2018-07-28 22:05:34',1,NULL,0,NULL,0,0,NULL,NULL,NULL,0,0,NULL,0,1,NULL,NULL,0,0),(21,0,0,19,'上级审批',NULL,'change',NULL,NULL,0,0,NULL,NULL,'2017-11-25 20:19:01',1,NULL,1,NULL,0,0,NULL,NULL,NULL,1,0,0,0,1,NULL,NULL,0,0),(22,21,0,19,'办公室批办',NULL,'change','d2,d4','开发部,行政人事部',0,0,NULL,NULL,'2017-10-23 16:28:27',1,NULL,1,'recename',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(23,22,0,19,'领导审批',NULL,'change',NULL,NULL,0,0,NULL,NULL,'2016-09-05 18:47:03',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(24,0,0,20,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2017-10-24 10:07:45',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(25,24,0,20,'办公室批办',NULL,'change',NULL,NULL,0,0,NULL,NULL,'2016-09-05 18:49:41',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(26,25,0,20,'领导审批',NULL,'change',NULL,NULL,0,0,NULL,NULL,'2016-09-05 18:49:49',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(27,0,0,32,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-10-06 20:43:27',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(28,27,0,32,'人事审批',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-10-07 10:24:03',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(29,0,0,33,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-10-07 11:41:01',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(30,29,0,33,'人事审批',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-10-07 11:41:17',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(31,0,0,34,'人事审核',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-10-07 19:24:54',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(32,0,0,38,'人事审批',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-10-19 21:48:34',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(33,0,0,37,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-10-19 22:28:02',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(34,33,0,37,'人事审批',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-10-19 22:28:17',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(35,0,0,39,'当事人确认','objectque','auto',NULL,NULL,0,0,NULL,NULL,'2016-10-20 20:52:15',1,'无异议,不认可',1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(36,35,0,39,'人事审批',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-10-20 20:53:10',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(37,0,0,44,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-10-28 11:29:50',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(38,37,0,44,'行政确认',NULL,'user','3','小乔',0,0,NULL,NULL,'2017-08-25 20:03:02',1,NULL,1,'kmstart,carid,carnum',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(39,0,0,46,'行政确认',NULL,'user','3','小乔',0,0,NULL,NULL,'2017-09-16 13:22:52',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(40,39,0,46,'借阅人归返',NULL,'apply',NULL,NULL,0,0,NULL,NULL,'2016-10-29 22:26:13',1,'确认归还',1,'ghtime',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(41,0,0,49,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-12-08 21:32:07',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(42,41,0,49,'保管人确认','bgque','auto',NULL,NULL,0,0,NULL,NULL,'2018-03-07 15:13:36',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(43,42,0,49,'申请人确认',NULL,'apply',NULL,NULL,0,0,NULL,NULL,'2016-12-08 21:56:33',1,'已盖章,放弃盖章',1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(44,0,0,51,'上级审核',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-12-16 18:02:01',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(45,44,0,51,'人事确认',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2016-12-16 18:02:21',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(46,0,0,52,'上级审核',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2016-12-19 09:58:39',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(47,0,0,24,'行政确认',NULL,'rank',NULL,'人事主管',1,0,NULL,NULL,'2017-09-26 10:20:04',1,NULL,1,NULL,0,0,NULL,'d3,d4','财务部,行政人事部',0,0,0,0,1,NULL,NULL,0,0),(48,47,0,24,'行政发放',NULL,'user','3','小乔',1,0,NULL,NULL,'2017-08-09 16:58:39',1,'发放,驳回|red',1,NULL,0,0,NULL,'u3','小乔',0,0,0,0,1,NULL,NULL,0,0),(50,38,0,44,'驾驶员归还','jias','auto',NULL,NULL,0,0,NULL,NULL,'2017-03-01 14:58:11',1,'已归还',1,'kmend,returndt',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(51,0,52,4,'任务分配',NULL,'super',NULL,NULL,0,4,NULL,'未分配时','2018-07-06 16:14:45',1,'同意分配|green|3,不通过|red',1,'dist',0,0,NULL,NULL,NULL,0,0,NULL,0,1,NULL,NULL,0,0),(52,0,0,4,'执行人执行','run','auto',NULL,NULL,0,0,NULL,'已分配','2017-08-12 16:16:16',1,'已完成||6,无法完成|red,执行中||4',1,NULL,0,0,NULL,NULL,NULL,1,0,0,0,1,NULL,NULL,0,0),(53,52,0,4,'提交人验证',NULL,'opt',NULL,NULL,0,0,NULL,NULL,'2017-08-15 17:46:47',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(55,0,0,59,'行政确认',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2017-06-26 21:26:30',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(56,0,0,60,'行政确认',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2017-06-27 13:03:25',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(57,56,0,60,'驾驶员处理','jia','auto',NULL,NULL,0,0,NULL,NULL,'2017-06-27 13:04:24',1,NULL,1,'address,bujian,kmshu',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(58,57,0,60,'驾驶员取车','jia','auto',NULL,NULL,0,0,NULL,NULL,'2017-06-27 13:05:41',1,NULL,1,'nextdt,kmnshu,enddt,money',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(59,3,0,6,'核算加班费',NULL,'rank',NULL,'人事主管',0,129,NULL,NULL,'2017-06-29 10:05:49',1,NULL,1,'jiafee',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(60,0,0,62,'行政人员检查',NULL,'user','4','大乔',0,0,NULL,NULL,'2017-07-07 13:16:02',1,'确认',1,'iswx,reasons,money,wxname',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(61,60,0,62,'外修确认',NULL,'user','4','大乔',0,140,NULL,NULL,'2017-07-07 13:36:48',1,NULL,1,'money,wxname',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(62,0,0,64,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2017-08-07 20:21:47',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(63,62,0,64,'出纳付款',NULL,'rank',NULL,'出纳',0,0,NULL,NULL,'2017-10-09 15:32:23',1,'已付款',1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(64,0,0,65,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2017-08-07 21:11:40',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(65,64,0,65,'财务审批',NULL,'rank',NULL,'财务总监',0,0,NULL,NULL,'2017-08-07 21:11:58',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(66,65,0,65,'会计开票',NULL,'rank',NULL,'出纳',0,0,NULL,NULL,'2017-08-07 21:12:24',1,'已开票',1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(71,0,0,72,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2018-09-08 12:02:39',1,NULL,1,'tanxuan|tanxuancheck',0,0,NULL,NULL,NULL,0,0,NULL,0,1,NULL,NULL,0,0),(72,0,0,76,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2017-12-28 14:12:41',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(73,0,0,77,'上级审批',NULL,'super',NULL,NULL,0,0,NULL,NULL,'2018-03-06 14:49:42',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(74,0,0,78,'人事审核',NULL,'rank',NULL,'人事主管',0,0,NULL,NULL,'2018-04-18 19:41:00',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(75,0,0,79,'面试人确认','msque','field','msuserid','面试人员(msuserid)',0,0,NULL,NULL,'2018-04-18 22:35:24',1,'可以面试,不适合',1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(76,75,0,79,'面试结果',NULL,'field','msuserid','面试人员(msuserid)',0,0,NULL,NULL,'2018-04-18 21:34:30',1,'面试记录',1,'state,mscont',0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(77,76,0,79,'安排人确认',NULL,'apply',NULL,NULL,0,0,NULL,NULL,'2018-04-18 23:03:09',1,NULL,1,NULL,0,0,NULL,NULL,NULL,0,0,0,0,1,NULL,NULL,0,0),(78,71,0,72,'人事审批','rsnum','user','5','琢瑜清泉',0,0,NULL,NULL,'2018-09-08 12:57:19',1,NULL,1,NULL,0,0,NULL,NULL,NULL,1,0,NULL,0,1,'琢瑜清泉','u5',0,0),(79,78,0,72,'财务审批','cwnum','change',NULL,NULL,0,0,NULL,NULL,'2018-09-17 12:48:06',1,NULL,1,NULL,0,0,NULL,NULL,NULL,1,0,NULL,0,1,'本部门(含下级部门)','deptall',0,0);
/*!40000 ALTER TABLE `jouryu_flow_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_element`
--

DROP TABLE IF EXISTS `jouryu_flow_element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `fields` varchar(50) DEFAULT NULL COMMENT '对应字段',
  `fieldstype` varchar(30) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `dev` varchar(100) DEFAULT NULL COMMENT '默认值',
  `isbt` tinyint(1) DEFAULT '0' COMMENT '是否必填',
  `data` varchar(500) DEFAULT NULL COMMENT '数据源',
  `islu` tinyint(1) DEFAULT '1' COMMENT '是否录入元素',
  `iszs` tinyint(1) DEFAULT '1' COMMENT '是否列表展示',
  `attr` varchar(500) DEFAULT NULL COMMENT '属性',
  `iszb` tinyint(1) DEFAULT '0',
  `isss` tinyint(1) DEFAULT '0',
  `lattr` varchar(100) DEFAULT NULL COMMENT '列属性',
  `width` varchar(10) DEFAULT NULL COMMENT '列宽',
  `lens` smallint(6) DEFAULT '0' COMMENT '字段长度',
  `savewhere` varchar(100) DEFAULT NULL COMMENT '保存条件',
  `islb` tinyint(1) DEFAULT '1' COMMENT '是否列表列',
  `ispx` tinyint(1) DEFAULT '0' COMMENT '是否可排序',
  `isalign` tinyint(1) DEFAULT '0' COMMENT '0居中,1居左,2居右',
  `issou` tinyint(1) DEFAULT '0' COMMENT '是否可搜索',
  `istj` tinyint(1) DEFAULT '0' COMMENT '是否可统计',
  `gongsi` varchar(500) DEFAULT NULL COMMENT '计算公式',
  `placeholder` varchar(50) DEFAULT NULL COMMENT '提示内容',
  `isonly` tinyint(1) DEFAULT '0' COMMENT '是否唯一',
  `isdr` tinyint(1) DEFAULT '0' COMMENT '是否导入字段',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `fields` (`fields`)
) ENGINE=InnoDB AUTO_INCREMENT=865 DEFAULT CHARSET=utf8 COMMENT='模块元素';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_element`
--

LOCK TABLES `jouryu_flow_element` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_element` DISABLE KEYS */;
INSERT INTO `jouryu_flow_element` VALUES (1,1,'标题','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(2,1,'类型名称','typename','rockcombo',2,NULL,1,'gongtype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(3,1,'内容','content','htmlediter',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,0),(4,1,'发送给','recename','changedeptusercheck',4,NULL,0,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,'不选默认为发给全部人员',0,0),(5,1,'相应地址','url','text',5,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(6,2,'会议室','hyname','rockcombo',0,NULL,1,'hyname',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(7,2,'主题','title','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(8,2,'开始时间','startdt','datetime',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(9,2,'结束时间','enddt','datetime',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(10,2,'参会人','joinname','changedeptusercheck',4,NULL,1,'joinid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(11,2,'说明','explain','textarea',5,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(12,3,'日期','dt','date',3,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(13,3,'日报类型','type','select',2,'0',1,'0|日报,1|周报,2|月报,3|年报',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(14,3,'截止日期','enddt','date',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(15,3,'内容','content','textarea',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(16,3,'明日计划','plan','textarea',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(17,3,'新增时间','adddt','hidden',7,'{now}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(18,3,'人员','optname','text',1,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(19,2,'发起人','optname','text',6,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(20,4,'类型','type','rockcombo',1,NULL,1,'worktype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(21,4,'等级','grade','rockcombo',2,NULL,1,'workgrade',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(22,4,'标题','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(23,4,'分配给','dist','changeuser',3,NULL,0,'distid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(24,4,'说明','explain','textarea',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(26,4,'创建人','optname','text',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(27,4,'创建时间','optdt','datetime',12,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(28,4,'开始时间','startdt','datetime',6,'{now}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(29,4,'截止时间','enddt','datetime',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(30,5,'请假','kind','fixed',0,'请假',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(31,5,'请假类型','qjkind','rockcombo',1,NULL,1,'kqqjkind',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(32,5,'开始时间','stime','datetime',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(33,5,'截止时间','etime','datetime',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(34,5,'时间(小时)','totals','number',4,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(35,5,'说明','explain','textarea',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,0,0,NULL,NULL,0,0),(36,6,'类型','kind','fixed',0,'加班',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(37,6,'开始时间','stime','datetime',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(38,6,'截止时间','etime','datetime',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(39,6,'时间(小时)','totals','number',4,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,0),(40,6,'说明','explain','textarea',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(41,7,'客户名称','name','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,1,1),(42,7,'所属人','suoname','text',1,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(43,7,'客户类型','type','rockcombo',2,NULL,1,'crmtype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,1),(44,7,'来源','laiyuan','rockcombo',3,NULL,1,'crmlaiyuan',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,1,NULL,NULL,0,1),(45,7,'客户单位','unitname','text',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,1),(47,7,'联系电话','tel','text',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,1),(48,7,'联系手机','mobile','text',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,1),(49,7,'邮箱','email','text',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(50,7,'说明','explain','textarea',14,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(51,7,'地址','address','text',8,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,1),(52,7,'交通路线','routeline','textarea',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(53,8,'客户','custid','hidden',0,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(54,8,'客户','custname','selectdatafalse',1,NULL,1,'selectcust,custid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(55,8,'状态','state','rockcombo',8,'0',1,'crmstate,value',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(56,8,'说明','explain','textarea',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(57,8,'申请日期','applydt','date',2,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(58,8,'来源','laiyuan','rockcombo',3,NULL,1,'custsalelai',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(59,8,'金额','money','number',4,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(60,8,'添加时间','adddt','datetime',5,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(61,8,'创建人','createname','text',6,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(62,8,'销售人员','optname','text',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(63,9,'名称','name','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(64,9,'对应分类','typeid','rockcombo',2,NULL,1,'goodstype,id,tree',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(65,9,'规格','guige','text',3,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(66,9,'型号','xinghao','text',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(67,9,'单价','price','number',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(68,9,'单位','unit','rockcombo',6,NULL,1,'rockunit',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(69,9,'说明','explain','textarea',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(70,10,'用户Id','id','number',22,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(71,10,'姓名','name','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,1),(72,10,'部门Id','deptid','number',8,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(73,10,'部门','deptname','changedept',9,NULL,1,'deptid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,1,NULL,NULL,0,1),(74,10,'职位','ranking','text',10,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,1,NULL,NULL,0,1),(75,10,'上级主管','superman','changeusercheck',13,NULL,0,'superid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,1,NULL,NULL,0,1),(76,10,'上级主管id','superid','text',14,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(77,10,'用户名','user','text',2,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,'不能包含中文',1,1),(78,10,'编号','num','text',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'唯一编号/工号',1,0),(79,7,'状态','status','select',10,'1',1,'1|启用,0|停用',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(80,12,'标题','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(81,12,'提醒时间','startdt','datetime',1,'{now}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(82,12,'重复','rate','select',2,NULL,0,'d|每天,w|每周,m|每月',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(83,12,'重复值','rateval','checkboxall',3,NULL,0,'0|无,1|啊',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(84,12,'说明','explain','textarea',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(85,12,'记事人','optname','text',5,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(86,12,'截止时间','enddt','datetime',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(87,12,'提醒','txsj','select',7,'0',1,'0|不提醒,1|提醒',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(88,21,'打卡时间','dkdt','datetime',1,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(89,21,'打卡类型','type','text',2,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(90,21,'添加时间','optdt','datetime',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(91,21,'定位地址','address','text',4,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(92,21,'姓名','base_name','text',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(93,22,'项目类型','type','rockcombo',2,NULL,1,'projecttype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(94,22,'编号','num','text',1,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(95,22,'名称','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(96,22,'开始时间','startdt','datetime',3,'{now}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(97,22,'预计结束时间','enddt','datetime',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(98,22,'负责人','fuze','changeuser',5,NULL,1,'fuzeid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(99,22,'执行人','runuser','changedeptusercheck',6,NULL,1,'runuserid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(100,22,'进度(%)','progress','select',7,'0',1,'progressdata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(101,22,'内容','content','htmlediter',8,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(102,22,'状态','status','select',20,'0',1,'0|待执行,1|已完成,3|执行中',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(103,23,'类型','atype','select',1,'外出',1,'外出,出差',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(104,23,'外出地址','address','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(105,23,'外出时间','outtime','datetime',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(106,23,'预计回岗','intime','datetime',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(107,23,'外出理由','reason','text',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,0,0,NULL,NULL,0,0),(108,23,'说明','explain','textarea',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,0,0,NULL,NULL,0,0),(109,24,'申请日期','applydt','text',0,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(110,24,'类型','type','fixed',0,'0',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(111,24,'说明','explain','textarea',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(112,24,'物品','temp_aid','selectdatafalse',0,NULL,1,'getgoodsdata,aid',1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(113,24,'领用数量','count','number',2,'0',1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(114,11,'申请日期','applydt','text',0,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(115,11,'单据数(张)','bills','number',0,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(116,11,'收款人全称','fullname','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(117,11,'付款方式','paytype','rockcombo',0,NULL,1,'paytype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(118,11,'收款帐号','cardid','text',0,'',1,'',1,1,'',0,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(119,11,'开户行','openbank','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(120,11,'报销金额','money','number',0,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(121,11,'大写金额','moneycn','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(122,11,'发生日期','sdt','date',0,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(123,11,'报销项目','name','rockcombo',0,NULL,1,'finaitems',1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(124,11,'金额','money','number',0,'0',1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(125,11,'说明','sm','text',0,NULL,0,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(126,24,'单位','unit','text',3,NULL,0,NULL,0,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(127,25,'申请日期','applydt','text',0,'{date}',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,0),(128,25,'附单据(张)','bills','number',1,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(129,25,'出差目的','purpose','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(130,25,'出差成果','purresult','text',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(131,25,'收款人全称','fullname','text',4,'',1,'',1,1,'',0,0,'','',0,NULL,0,0,0,1,0,NULL,NULL,0,0),(132,25,'付款方式','paytype','rockcombo',5,'',1,'paytype',1,1,'',0,0,'','',0,NULL,0,0,0,1,0,NULL,NULL,0,0),(133,25,'收款帐号','cardid','text',6,'',1,'',1,1,'',0,0,'','',0,NULL,0,0,0,0,0,NULL,NULL,0,0),(134,25,'开户行','openbank','text',7,'',1,'',1,1,'',0,0,'','',0,NULL,0,0,0,0,0,NULL,NULL,0,0),(135,25,'报销金额','money','text',8,'0',1,'',1,1,'',0,0,'','',0,NULL,1,0,0,1,1,NULL,NULL,0,0),(136,25,'大写金额','moneycn','text',9,'',1,'',1,1,'',0,0,'','',0,NULL,0,0,0,0,0,NULL,NULL,0,0),(137,25,'发生日期','sdt','date',0,'',1,'',1,1,'',1,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(138,25,'报销项目','name','rockcombo',1,'',1,'finaitems',1,1,'',1,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(139,25,'金额','money','number',2,'0',1,'',1,1,'',1,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(140,25,'说明','sm','text',4,'',0,'',1,1,'',1,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(141,25,'发生地点','didian','text',3,NULL,0,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(142,25,'说明','explain','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(143,25,'单据类型','type','fixed',11,'1',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(144,26,'单据类型','type','fixed',0,'2',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(145,26,'申请日期','applydt','text',1,'{date}',1,NULL,1,1,'readonly',0,1,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(146,26,'借款用途','purpose','text',2,NULL,1,NULL,1,1,NULL,0,1,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(147,26,'收款人全称','fullname','text',3,NULL,1,NULL,1,1,NULL,0,1,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(148,26,'付款方式','paytype','rockcombo',4,NULL,1,'paytype',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(149,26,'收款帐号','cardid','text',5,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(150,26,'开户行','openbank','text',6,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(151,26,'借款金额','money','text',7,'0',1,NULL,1,1,NULL,0,1,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(152,26,'借款金额大写','moneycn','text',8,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(153,26,'说明','explain','textarea',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(154,11,'说明','explain','textarea',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(155,27,'类型','type','fixed',0,'3',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(156,27,'申请日期','applydt','text',0,'{date}',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(157,27,'付款方式','paytype','rockcombo',0,NULL,1,'paytype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(158,27,'收款人全称','fullname','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(159,27,'收款帐号','cardid','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(160,27,'还款金额','money','number',0,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(161,27,'还款金额大写','moneycn','text',0,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(162,27,'说明','explain','textarea',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(163,27,'需还款金额','temp_money','auto',0,NULL,0,'jiekuantongs',0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(164,28,'申请日期','applydt','text',0,'{date}',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(165,28,'说明','explain','textarea',1,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(166,28,'类型','type','fixed',2,'1',0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(168,28,'供应商名称','custname','selectdatafalse',3,NULL,1,'goods:getgys,custid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(169,28,'采购金额','money','number',5,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,'[{zb0.count}*{zb0.price}] - [{discount}]',NULL,0,0),(170,28,'物品','temp_aid','selectdatafalse',0,NULL,1,'getgoodsdata,aid',1,1,NULL,1,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(171,28,'采购数量','count','number',2,'0',1,'',1,1,'',1,0,'','',0,NULL,1,0,0,0,0,NULL,NULL,0,0),(172,28,'单位','unit','text',3,NULL,0,NULL,1,1,'readonly',1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(173,28,'单价','price','number',4,'0',0,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(174,7,'供应商','isgys','checkbox',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(175,19,'标题','title','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(176,19,'副标题','titles','text',3,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(177,19,'公文等级','grade','rockcombo',5,NULL,1,'officialgrade',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(178,19,'公文类型','class','rockcombo',6,NULL,1,'officialclass',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,0),(179,19,'公文编号','num','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(180,19,'公文内容','content','htmlediter',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(181,19,'说明','explain','textarea',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(182,19,'需查阅对象','recename','changedeptusercheck',11,NULL,0,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(183,20,'标题','title','text',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(184,20,'副标题','titles','text',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(185,20,'公文等级','grade','rockcombo',6,NULL,1,'officialgrade',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(186,20,'公文密级','miji','rockcombo',8,NULL,1,'officialmiji',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(187,20,'公文编号','num','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(188,20,'公文内容','content','htmlediter',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(189,20,'说明','explain','textarea',11,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(190,20,'需查阅对象','recename','changedeptusercheck',12,NULL,0,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(191,20,'类型','type','fixed',2,'1',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(192,4,'所属项目','projectid','select',4,NULL,0,'projectdata',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,0),(193,30,'类型','kind','rockcombo',1,'请假',1,'kqkind',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(195,30,'开始时间','stime','datetime',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(196,30,'截止时间','etime','datetime',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(197,30,'时间(小时)','totals','number',1,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(198,30,'说明','explain','textarea',2,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(199,30,'对应人员','uname','changeuser',0,NULL,1,'uid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(200,2,'状态','state','text',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(201,1,'来源','zuozhe','text',6,'{deptname}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(202,1,'日期','indate','date',7,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(203,29,'电话','tel','text',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(204,29,'手机号','mobile','text',10,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(205,29,'邮箱','email','text',11,NULL,0,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(206,29,'生日类型','birtype','select',12,'0',1,'0|阳历',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(207,29,'生日','birthday','date',13,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'选择身份证上日期',0,1),(208,29,'学历','xueli','text',14,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(209,29,'民族','minzu','text',15,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(210,29,'籍贯','jiguan','selectdatafalse',16,NULL,1,'city:alldata',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(211,29,'婚姻','hunyin','select',9,NULL,1,'未婚,已婚',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(212,29,'现住址','nowdizhi','text',8,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(213,29,'家庭住址','housedizhi','text',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(214,29,'姓名','name','text',0,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,1),(215,29,'部门','deptname','text',1,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(216,29,'职位','ranking','text',2,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(217,29,'人员状态','state','rockcombo',3,NULL,0,'userstate,value',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,1),(218,31,'合同名称','name','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(219,31,'开始日期','startdt','date',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(220,31,'截止日期','enddt','date',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(221,31,'合同类型','httype','rockcombo',5,NULL,1,'userhttype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(222,31,'状态','state','text',8,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(223,31,'签署单位','company','hidden',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(224,31,'签署人','uname','changeuser',0,NULL,1,'uid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(225,31,'说明','explain','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(226,31,'提前终止日期','tqenddt','date',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(227,32,'职位','ranking','text',3,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(228,32,'入职日期','entrydt','text',4,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(229,32,'试用到期日','syenddt','date',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(230,32,'转正日期','positivedt','date',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(231,32,'申请说明','explain','textarea',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(232,33,'职位','ranking','text',2,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(233,33,'入职日期','entrydt','text',4,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(234,33,'离职类型','redundtype','rockcombo',5,NULL,1,'redundtype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(235,33,'离职日期','quitdt','date',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(236,33,'离职原因','redundreson','textarea',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(237,33,'说明','explain','textarea',8,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(238,34,'月份','month','selectdatafalse',1,'{month-1}',1,'selectmonth',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,1),(239,34,'对应人','uname','changeuser',0,'{admin}|{uid}',1,'xuid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(240,34,'基本工资','base','number',1,'1500',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(241,34,'岗位工资','postjt','number',1,'3500',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(242,34,'技能津贴','skilljt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(243,34,'交通补贴','travelbt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(244,34,'通信补贴','telbt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(245,34,'实发工资','money','text',100,'0',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,1),(246,34,'对应人员部门','udeptname','text',0,'{deptname}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(247,34,'职位','ranking','text',0,'{ranking}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(248,34,'奖励','reward','number',20,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(249,34,'处罚','punish','number',40,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(250,34,'说明','explain','textarea',101,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(251,34,'个人社保','socials','number',41,'181',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(252,34,'个人所得税','taxes','number',42,'0',0,NULL,0,1,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(253,29,'开户行','bankname','text',18,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(254,29,'工资卡帐号','banknum','text',17,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(255,34,'其它增加','otherzj','number',20,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(256,34,'其它减少','otherjs','number',43,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(257,34,'迟到(次)','cidao','text',50,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(258,34,'迟到处罚','cidaos','number',50,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(259,34,'早退(次)','zaotui','text',50,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(260,34,'早退处罚','zaotuis','number',50,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(261,34,'请假(小时)','leave','text',51,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(262,34,'请假减少','leaves','number',51,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(263,34,'加班(小时)','jiaban','text',20,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(264,34,'加班补贴','jiabans','number',20,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(265,34,'未打卡(次)','weidk','text',50,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(266,34,'未打卡处罚','weidks','number',50,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(267,35,'客户名称','custid','hidden',1,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(268,35,'客户名称','custname','selectdatafalse',2,NULL,1,'selectcust,custid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(269,35,'销售机会','saleid','select',4,NULL,0,'selectsale',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(270,35,'签约日期','signdt','date',5,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(271,35,'合同金额','money','number',6,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(272,35,'生效日期','startdt','date',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(273,35,'截止日期','enddt','date',8,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(274,35,'合同内容','content','textarea',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(275,35,'说明','explain','textarea',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(276,35,'合同编号','num','num',0,NULL,1,'HT-',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(277,35,'合同类型','type','select',10,'0',1,'0|收款合同,1|付款合同',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(278,36,'合同','htid','select',1,NULL,0,'hetongdata',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(279,36,'合同编号','htnum','hidden',2,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(280,36,'客户名称','custname','selectdatafalse',4,NULL,1,'selectcust,custid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(281,36,'类型','type','select',6,NULL,1,'0|收款单,1|付款单',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(282,36,'金额','money','number',7,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(283,36,'说明','explain','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(284,35,'待收/付金额','moneys','text',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(285,36,'客户名称','custid','hidden',5,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(286,36,'是否付款','ispay','select',8,'0',1,'0|否,1|是',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(287,36,'收付款时间','paydt','datetime',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(288,7,'联系人','linkname','text',13,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(289,36,'所属日期','dt','date',3,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(290,38,'要调动人','tranname','changeuser',0,NULL,1,'tranuid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(291,38,'调动类型','trantype','rockcombo',0,NULL,1,'transfertype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(292,38,'原来部门','olddeptname','text',0,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(293,38,'原来职位','oldranking','text',0,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(294,38,'调动后部门','newdeptname','changedept',0,NULL,1,'newdeptid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(295,38,'调动后职位','newranking','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(296,38,'生效日期','effectivedt','date',0,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(297,38,'说明','explain','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(298,37,'调薪幅度','floats','number',4,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(299,37,'生效日期','effectivedt','date',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(300,37,'申请日期','applydt','date',3,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,0),(301,37,'说明','explain','textarea',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(302,37,'职位','ranking','text',2,'{ranking}',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(303,39,'奖惩对象','object','changeuser',3,NULL,1,'objectid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(304,39,'奖惩类型','type','select',6,'0',1,'0|奖励,1|处罚',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(305,39,'奖惩结果','result','rockcombo',7,NULL,1,'rewardresult',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(306,39,'奖惩金额','money','number',8,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,0),(307,39,'说明','explain','textarea',9,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(308,39,'申请日期','applydt','text',2,'{date}',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(309,39,'发生时间','happendt','datetime',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(310,39,'发生地点','hapaddress','text',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(311,40,'标题','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,50,NULL,1,0,0,0,0,NULL,NULL,0,0),(312,40,'对应分类','typeid','rockcombo',0,NULL,1,'knowledgetype,id,tree',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(313,40,'排序','sort','number',0,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(314,40,'内容','content','htmlediter',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(315,41,'资产分类','typeid','rockcombo',0,NULL,1,'assetstype,id,tree',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(316,41,'编号','num','num',1,NULL,0,'ZC-',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,1,1),(317,41,'名称','title','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(318,41,'品牌','brand','rockcombo',3,NULL,0,'rockbrand',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(319,41,'存放仓库','ckid','rockcombo',4,NULL,1,'warehouse,id',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(320,41,'规格型号','model','text',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(321,41,'资产来源','laiyuan','rockcombo',6,NULL,1,'wplaiyuan',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(322,41,'状态','state','select',7,'0',1,'0|闲置,1|在用,2|维修,3|报废,4|丢失',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(323,41,'购进日期','buydt','date',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(324,41,'价格','price','number',11,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(325,41,'说明','explain','textarea',30,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(326,41,'使用人','usename','changedeptusercheck',15,NULL,0,'useid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(327,42,'车牌号','carnum','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(328,42,'车辆类型','cartype','rockcombo',1,NULL,1,'cartype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(329,42,'车辆品牌','carbrand','rockcombo',2,NULL,1,'carbrand',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(330,42,'型号','carmode','text',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(331,42,'购买日期','buydt','date',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(332,42,'购买价格','buyprice','number',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(333,42,'车架号','framenum','text',7,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(334,42,'发动机号','enginenb','text',8,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(335,42,'是否公开使用','ispublic','checkbox',9,'1',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(336,42,'说明','explain','textarea',50,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(337,42,'状态','state','select',11,'1',1,'0|办理中,1|可用,2|维修中,3|报废',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(346,43,'标题','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,50,NULL,1,0,0,0,0,NULL,NULL,0,1),(347,43,'对应分类','typeid','rockcombo',1,NULL,1,'knowtikutype,id,tree',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(348,43,'类型','type','select',2,'0',1,'0|单选,1|多选',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(349,43,'A','ana','text',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(350,43,'B','anb','text',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(351,43,'C','anc','text',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(352,43,'D','and','text',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(353,43,'答案','answer','text',8,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(354,43,'状态','status','select',9,'1',1,'0|停用,1|启用',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(355,43,'说明','explain','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(356,43,'题内容','content','htmlediter',3,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(357,44,'使用者','usename','changedeptusercheck',0,NULL,1,'useid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(358,44,'使用人数','useren','number',1,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(359,44,'开始时间','startdt','datetime',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(360,44,'截止时间','enddt','datetime',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(361,44,'目的地','address','text',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(362,44,'线路','xianlines','text',5,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(363,44,'预定车辆','carid','hidden',6,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(364,44,'车牌号','carnum','selectdatafalse',7,NULL,1,'getcardata,carid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(365,44,'驾驶员','jianame','changeusercheck',8,NULL,1,'jiaid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(366,44,'说明','explain','textarea',12,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(367,45,'书名','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(368,45,'对应分类','typeid','rockcombo',0,'0',1,'booktype,id,tree',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(369,45,'编号','num','num',0,NULL,1,'TS-',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,1,1),(370,45,'作者','author','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(371,45,'出版社','chuban','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(372,45,'出版日期','cbdt','date',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(373,45,'价格','price','number',0,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(374,45,'数量','shul','number',0,'1',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(375,45,'说明','explain','textarea',20,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(376,45,'存放位置','weizhi','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(377,45,'ISBN','isbn','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(378,46,'借阅书名','bookid','hidden',0,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(379,46,'借阅书名','bookname','selectdatafalse',0,NULL,1,'getbookdata,bookid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(380,46,'借阅日期','jydt','date',0,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(381,46,'预计归还','yjdt','date',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,'gt|{jydt}|{0}必须大于借阅日期',1,1,0,1,0,NULL,NULL,0,0),(382,46,'归还时间','ghtime','datetime',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,'gt|{jydt}|{0}必须大于借阅日期,lt|{now}|{0}必须小于当前时间',1,0,0,0,0,NULL,NULL,0,0),(383,46,'是否归返','isgh','select',0,'0',0,'0|否,1|是',0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(384,46,'说明','explain','textarea',20,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(385,4,'督导人','ddname','changeusercheck',8,NULL,0,'ddid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(386,4,'任务分值','score','number',9,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(387,3,'评分分数','mark','text',8,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(388,47,'主题','title','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(389,47,'发送给','recename','changedeptusercheck',2,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(390,47,'邮件内容','content','htmlediter',10,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(391,47,'抄送给','ccname','changeusercheck',3,NULL,0,'ccid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(392,47,'立即发送','isturn','checkbox',11,'0',0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(393,47,'发送人','sendname','text',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(395,48,'名称','name','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(396,48,'类型','type','rockcombo',0,NULL,1,'sealtype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(397,48,'保管人','bgname','changeusercheck',0,NULL,1,'bgid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(398,49,'对应ID','sealid','select',1,NULL,1,'getsealdata',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,0),(399,49,'印章/证照','sealname','hidden',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(400,49,'是否外带','isout','select',3,'0',1,'0|否,1|是',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(401,49,'说明','explain','textarea',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(402,5,'剩余考勤统计','temp_kqtotal','auto',5,NULL,0,'getshentime',1,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(403,41,'封面图片','fengmian','uploadimg',16,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(404,47,'是否外发','type','select',1,'0',1,'0|否,1|是',1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(405,51,'异常类型','errtype','rockcombo',1,NULL,1,'kqerrtype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(406,51,'异常日期','dt','date',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,'elt|{date}|异常日期应小于当前日期',1,1,0,1,0,NULL,NULL,0,0),(407,51,'应打卡时间','ytime','time',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(408,51,'说明','explain','textarea',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(409,52,'流程模块','modeid','select',0,'0',1,'modebill',1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(410,52,'流程模块','modename','hidden',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(411,52,'作废单号','tonum','select',3,NULL,1,'gettonum',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(412,52,'作废类型','type','select',4,'0',1,'0|作废单据,1|删除单据',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(413,52,'说明','explain','textarea',10,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(414,53,'姓名','name','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(415,53,'手机号','mobile','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(416,53,'电话','tel','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(417,53,'邮箱','email','email',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(418,53,'所在组','gname','select',0,NULL,0,'getgname',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(419,53,'地址','address','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(420,53,'单位名称','unitname','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(421,29,'照片','zhaopian','uploadimg',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(422,29,'身份证号','idnum','text',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(423,29,'备用联系人','spareman','text',19,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(424,29,'备用联系人电话','sparetel','text',20,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(425,29,'开始日期','startdt','date',0,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(426,29,'截止日期','enddt','date',1,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(427,29,'职位','rank','text',2,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(428,29,'单位名称','unitname','text',3,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(429,29,'开始日期','startdt','date',0,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(430,29,'截止日期','enddt','date',1,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(431,29,'专业','rank','text',2,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(432,29,'学校名称','unitname','text',3,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(433,1,'封面图片','fengmian','uploadimg',1,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,1,0,0,NULL,NULL,0,0),(434,19,'正文文件','filecontid','uploadfile',9,NULL,1,'doc,docx,pdf,jpg,png',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(435,20,'公文文件','filecontid','uploadfile',9,NULL,0,'doc,docx,pdf',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(436,12,'提醒给','recename','changedeptusercheck',8,NULL,0,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(437,2,'会议纪要人','jyname','changeusercheck',8,NULL,0,'jyid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(438,2,'会议纪要内容','content','htmlediter',9,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(439,54,'对应会议','mid','select',0,NULL,1,'meetdata',1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(440,54,'会议纪要内容','content','htmlediter',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(441,54,'类型@0|普通,1|固定@not','type','fixed',3,'2',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(442,54,'会议主题','title','hidden',1,NULL,0,NULL,0,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(443,44,'起始公里数','kmstart','number',9,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(444,44,'结束公里数','kmend','number',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,'gt|{kmstart}|结束公里数必须大于起始公路数',1,0,0,0,0,NULL,NULL,0,0),(445,44,'归还时间','returndt','datetime',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,'gt|{startdt}|归还时间必须大于开始时间',1,0,0,0,0,NULL,NULL,0,0),(446,10,'入职日期','workdate','date',5,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,1,0,1,1,NULL,NULL,0,0),(447,10,'性别','sex','select',6,'男',1,'男,女',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(448,10,'名字拼音','pingyin','text',15,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'拼音全拼(方便人员搜索)',0,0),(449,10,'手机号','mobile','text',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,1,1),(451,1,'操作人','optname','text',8,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(452,3,'操作时间','optdt','datetime',9,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(453,3,'部门','deptname','text',0,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(454,22,'任务数','workshu','number',9,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(455,7,'是否标★','isstat','select',11,'0',1,'0|否,1|是',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(456,7,'合同数','htshu','number',15,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(457,7,'销售总额','moneyz','number',16,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(458,7,'待收金额','moneyd','number',17,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(459,29,'入职日期','workdate','date',21,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,1),(460,29,'转正日期','positivedt','date',23,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,1),(461,28,'物品Id','aid','hidden',1,'0',1,NULL,1,0,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(462,24,'物品Id','aid','hidden',1,'0',1,NULL,1,0,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(463,32,'申请日期','applydt','date',2,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(467,33,'申请日期','applydt','date',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(474,56,'标题','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(475,56,'考试时间(分钟)','kstime','select',1,'10',1,'kstimelist',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(476,56,'开始时间','startdt','datetime',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(477,56,'截止时间','enddt','datetime',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(478,56,'多选题数','dxshu','number',5,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(479,56,'单选题数','dsshu','number',4,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(480,56,'考试对象','recename','changedeptusercheck',6,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(481,56,'培训人数','reshu','number',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,0),(482,56,'已答数','ydshu','number',8,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(483,56,'说明','explain','textarea',11,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(484,56,'状态','state','select',12,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(485,56,'总分','zfenshu','number',9,'100',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(486,56,'合格分数','hgfen','number',10,'60',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(487,6,'加班兑换','jiatype','select',6,'0',1,'0|调休,1|加班费',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(488,6,'加班费','jiafee','number',7,'0',0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(489,48,'相关图片','sealimg','uploadimg',0,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(490,48,'说明','explain','textarea',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(491,56,'培训题库','tikuname','selectdatatrue',6,NULL,0,'tikunamedata,tikuid',1,1,'placeholder=\"不选/为空为全部题库\"',0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(492,56,'题库id','tikuid','hidden',0,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(504,58,'车辆','carid','select',0,NULL,1,'getcardata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(505,58,'登记类型','otype','rockcombo',1,NULL,1,'carotype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(506,58,'开始日期','startdt','date',2,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(507,58,'截止日期','enddt','date',3,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(508,58,'驾驶员','jianame','changeusercheck',4,NULL,0,'jiaid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(509,58,'对应名称','unitname','text',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,1,NULL,NULL,0,0),(510,58,'金额','money','number',6,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(511,58,'地点','address','text',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(512,58,'说明','explain','textarea',8,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(513,58,'登记人','optname','text',9,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(514,58,'登记时间','optdt','text',10,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(515,42,'登记数','djshu','text',51,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(516,58,'状态','ztname','text',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(517,35,'状态','statetext','text',13,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(518,35,'创建人','createname','text',14,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(519,35,'拥有者','optname','text',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(520,36,'创建人','createname','text',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(521,36,'所属人','optname','text',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(522,59,'维修车辆','carid','select',0,'0',1,'getcardata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(523,59,'维修原因','reason','textarea',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(524,59,'维修地点','address','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(525,59,'驾驶员','jianame','changeusercheck',3,NULL,1,'jiaid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(526,59,'更换部件','bujian','text',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,200,NULL,1,0,0,0,0,NULL,NULL,0,0),(527,59,'维修时间','startdt','datetime',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(528,59,'维修截止时间','enddt','datetime',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,'gt|{startdt}|截止时间必须大于开始时间',1,1,0,1,0,NULL,NULL,0,0),(529,59,'维修金额','money','number',7,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(530,59,'说明','explain','textarea',8,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(531,60,'保养车辆','carid','select',0,'0',1,'getcardata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(532,60,'保养原因','reason','textarea',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(533,60,'保养地点','address','text',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(534,60,'驾驶员','jianame','changeusercheck',2,NULL,1,'jiaid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(535,60,'保养内容','bujian','text',5,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,200,NULL,1,0,0,0,0,NULL,NULL,0,0),(536,60,'保养时间','startdt','datetime',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(537,60,'取车时间','enddt','datetime',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,'gt|{startdt}|截止时间必须大于开始时间',1,1,0,1,0,NULL,NULL,0,0),(538,60,'保养金额','money','number',8,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(539,60,'说明','explain','textarea',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(540,60,'当前保养公里数','kmshu','text',9,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(541,60,'下次保养日期','nextdt','date',10,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(542,60,'下次保养公里数','kmnshu','text',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,'gt|{kmshu}|下次保养公里数必须大于当前公里数',0,0,0,0,0,NULL,NULL,0,0),(543,60,'单据类型','type','fixed',1,'1',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(544,12,'状态','status','select',9,'1',1,'1|启用,0|停用',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(546,61,'开始时间','startdt','datetime',3,'{now}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(547,61,'重复','rate','hidden',5,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(548,61,'重复值','rateval','hidden',7,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(549,61,'提醒内容','explain','textarea',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(551,61,'截止时间','enddt','datetime',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(553,61,'提醒给','recename','changedeptusercheck',6,NULL,0,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(554,61,'状态','status','select',10,'1',1,'1|启用,0|停用',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(555,61,'模块编号','modenum','text',0,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(556,61,'主Id','mid','text',1,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(557,61,'频率设置','temp_rateval','auto',9,NULL,0,'ratevalset',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(558,61,'提醒频率','ratecont','text',8,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,1,0,0,NULL,NULL,0,0),(559,61,'操作时间','optdt','datetime',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(560,61,'操作人','optname','text',12,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(561,4,'得分','mark','text',10,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(562,28,'优惠价格','discount','number',4,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(563,62,'报修资产','assetm','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,100,NULL,1,0,0,1,0,NULL,NULL,0,0),(564,62,'保修原因','reason','textarea',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(565,62,'实际原因','reasons','textarea',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(566,62,'需要外修','iswx','select',2,'0',0,'0|否,1|是',0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(567,62,'维修金额','money','number',5,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(569,62,'维修人员','wxname','text',6,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(570,62,'说明','explain','textarea',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(571,63,'名称','name','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(572,63,'所属单位','pid','select',2,'0',1,'companydata',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(573,63,'对应负责人','fuzename','changeusercheck',3,NULL,0,'fuzeid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(574,63,'所在城市','city','text',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(575,63,'地址','address','text',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,1,1,0,NULL,NULL,0,0),(576,63,'电话','tel','text',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(577,63,'传真','fax','text',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(578,63,'排序号','sort','number',8,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(579,63,'对应英文名','nameen','text',1,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(580,63,'ID','id','text',9,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(581,31,'签署单位','companyid','select',4,NULL,1,'companydata',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(582,31,'部门','deptname','text',1,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(583,10,'电话','tel','text',16,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(584,10,'邮箱','email','email',17,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,1,1),(585,10,'微信号','weixinid','text',18,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'手机号不能作为微信号',1,0),(586,10,'所属单位','companyid','select',19,NULL,1,'companydata',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(588,10,'启用','status','select',20,'1',0,'1|启用,0|停用',0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(589,10,'管理员','type','select',21,'0',0,'0|普通,1|管理员',0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(590,10,'排序号','sort','number',23,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(591,10,'头像','face','uploadimg',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(592,10,'所在组','groupname','checkboxall',24,NULL,0,'groupdata',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(593,29,'所属单位','companyid','select',25,NULL,0,'companydata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(594,29,'试用期到','syenddt','date',22,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(595,29,'离职日期','quitdt','date',24,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(596,10,'密码','pass','text',3,NULL,0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'新增默认123456,不填不修改密码',0,0),(597,9,'编号','num','num',0,'0',1,'WP-',1,1,'min=\"0\"',0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,1,1),(598,5,'请假天数','totday','text',6,'0',0,NULL,1,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(599,30,'天数','totday','text',1,'0',0,NULL,1,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(600,34,'是否发放','ispay','text',102,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(601,64,'付款编号','num','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,'可为合同号/订单号',0,0),(602,64,'付款金额','money','number',1,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(603,64,'付款日期','paydt','date',2,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,1,NULL,NULL,0,0),(604,64,'收款单位','fullname','text',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,'填写全称',0,0),(605,64,'收款银行','openbank','text',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(606,64,'收款帐号','cardid','text',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(607,64,'付款方式','paytype','rockcombo',6,NULL,1,'paytype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(608,64,'说明','explain','textarea',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(609,64,'类型','type','fixed',8,'4',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(610,65,'类型','type','fixed',0,'5',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(611,65,'开票名称','name','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,50,NULL,1,0,0,1,0,NULL,NULL,0,0),(612,65,'开票金额','money','number',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,1,NULL,NULL,0,0),(613,65,'开票日期','paydt','date',3,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(614,65,'公司单位名称','fullname','text',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,'填写需要开票公司/单位全称',0,0),(615,65,'纳税识别号','shibieid','text',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(616,65,'开户行','openbank','text',8,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(617,65,'开户帐号','cardid','text',9,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(618,65,'开票类型','paytype','rockcombo',10,NULL,1,'openpiaotype',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(619,65,'说明','explain','textarea',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(620,65,'公司地址','address','text',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,0),(621,65,'联系电话','tel','text',6,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(622,65,'相关单号','num','text',11,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'可填写合同号/订单号',0,0),(623,53,'性别','sex','select',0,NULL,1,'男,女',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,1),(624,66,'对应模块','setid','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(625,66,'通知内容摘要','summary','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(626,1,'开始时间','startdt','datetime',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'投票时需开始时间',0,0),(627,1,'截止时间','enddt','datetime',13,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'投票时需截止时间',0,0),(628,1,'至少投票','mintou','number',10,NULL,0,NULL,1,1,'min=\"0\"',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'为0不填说明就不用投票',0,0),(629,1,'最多投票','maxtou','number',10,'0',0,NULL,1,1,'min=\"0\"',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'0不限制',0,0),(630,1,'投票选项','touitems','text',0,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(631,19,'发文字号','zinum','rockcombo',0,NULL,1,'officiazinum',1,1,NULL,0,0,NULL,NULL,30,NULL,0,1,0,1,1,NULL,NULL,0,0),(632,19,'接收单位','unitname','text',7,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,50,NULL,1,0,0,0,0,NULL,NULL,0,0),(633,20,'来文日期','laidt','date',1,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(634,20,'来文单位','unitsame','text',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,50,NULL,1,0,0,0,0,NULL,NULL,0,0),(635,19,'发文单位','unitsame','text',4,'{deptname}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(636,19,'公文密级','miji','rockcombo',8,NULL,1,'officialmiji',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(637,20,'接收单位','unitname','text',7,'{deptname}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(638,67,'订阅标题','title','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(639,67,'订阅提醒内容','cont','textarea',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(640,67,'订阅说明','explain','textarea',3,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(641,67,'订阅人','optname','text',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(642,67,'订阅时间','optdt','datetime',4,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(643,67,'状态','status','checkbox',5,'1',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(644,67,'同时订阅给','recename','text',6,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(645,67,'订阅提醒时间','ratecont','text',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(646,67,'订阅地址','suburl','textarea',8,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(647,67,'订阅地址post参数','suburlpost','textarea',9,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(648,67,'最后运行时间','lastdt','datetime',10,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(649,67,'ID','id','text',12,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(650,68,'订阅标题','title','text',0,NULL,1,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(651,68,'订阅内容','cont','text',0,NULL,1,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(652,68,'添加时候','optdt','datetime',0,NULL,1,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(653,68,'订阅提醒对象','recename','text',0,NULL,1,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(654,68,'文件','filepath','text',0,NULL,1,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(655,67,'共享给','shatename','changedeptusercheck',11,NULL,0,'shateid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,'共享给他人让他也可以订阅设置这个订阅',0,0),(656,34,'是否核算','isturn','text',103,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,1,0,0,0,NULL,NULL,0,1),(657,34,'是否审核','status','text',104,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(658,69,'标题','title','text',1,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(659,69,'发文单位','unitsame','text',2,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(660,69,'公文编号','num','text',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(661,69,'公文密级','miji','text',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(662,69,'操作时间','optdt','datetime',4,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(663,10,'多部门','deptnames','changedeptcheck',11,NULL,0,'deptids',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,NULL,0,0),(664,10,'多职位','rankings','text',12,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,1,0,NULL,'多个用,分开',0,0),(665,70,'设备号','num','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,1,0),(666,70,'设备名称','name','text',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(667,70,'公司名','company','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(668,70,'状态','status','text',3,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(669,70,'最后请求时间','lastdt','datetime',6,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(670,70,'排序号','sort','number',5,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(671,70,'ID','id','number',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(672,70,'sd卡剩余空间','space','number',21,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(673,70,'剩余内存','memory','number',22,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(674,70,'人员数','usershu','number',10,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(675,70,'指纹数','fingerprintshu','number',11,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(676,70,'头像数量','headpicshu','number',13,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(677,70,'打卡数','clockinshu','number',12,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(678,70,'现场照片数','picshu','number',14,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(679,70,'系统版本','romver','text',15,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(680,70,'应用版本','appver','text',16,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(681,70,'设备型号','model','text',17,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(682,71,'创建时间','createdt','datetime',8,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(683,71,'考核项目','title','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(684,71,'日期','startdt','date',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(685,71,'评分截止日期','enddt','date',4,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(686,71,'状态','pfrenids','text',5,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(687,71,'最后得分','fen','number',7,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,1,NULL,NULL,0,0),(688,71,'操作人','optname','text',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(689,7,'所在省','sheng','selectdatafalse',7,NULL,0,'city:citydata',1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(690,7,'所在市','shi','text',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(691,72,'省','sheng','select',1,NULL,1,'city:shengdata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(692,72,'市','shi','select',2,NULL,1,'citydata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(693,72,'县(区)','xian','select',3,NULL,0,'xiandata',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(694,72,'申请日期','applydt','date',0,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(695,72,'说明','explain','textarea',4,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(696,72,'弹出下拉单选','tanxuan','selectdatafalse',5,NULL,0,'tanxuan',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(697,72,'弹框下拉多选','tanxuancheck','selectdatatrue',6,NULL,0,'tanxuancheck',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(698,72,'文件上传1','upfile1','uploadfile',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(699,72,'文件上传2','upfile2','uploadfile',7,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(700,69,'正文文件','filecontid','uploadfile',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(701,73,'仓库名称','depotname','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,50,NULL,1,0,0,0,0,NULL,NULL,0,0),(702,73,'仓库地址','depotaddress','text',3,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,100,NULL,1,0,0,0,0,NULL,NULL,0,0),(703,73,'仓库管理员','cgname','changeusercheck',1,NULL,1,'cgid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(704,73,'说明','depotexplain','textarea',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(705,73,'排序号','sort','number',4,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(706,73,'仓库编号','depotnum','text',2,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(707,28,'入库状态','state','select',6,'0',0,'0|待入库,1|已入库,2|部分入库',0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(708,24,'出库状态','state','select',1,'0',0,'0|待入库,1|已入库,2|部分入库',0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(709,28,'供应商ID','custid','hidden',3,'0',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(710,74,'名称','name','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(711,74,'可查看人员','recename','changedeptusercheck',0,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(712,74,'管理人员','guanname','changedeptusercheck',0,NULL,0,'guanid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'不选只有管理员可管理',0,0),(713,74,'排序号','sort','number',0,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(714,74,'操作人','optname','text',0,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(715,76,'申请日期','applydt','text',0,'{date}',1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(716,76,'类型','type','fixed',1,'3',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(717,76,'说明','explain','textarea',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(718,76,'物品','temp_aid','selectdatafalse',0,NULL,1,'getgoodsdata,aid',1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(719,76,'调拨数量','count','number',2,'0',1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(721,76,'物品Id','aid','hidden',1,'0',1,NULL,1,0,NULL,1,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(722,76,'出库状态','state','select',5,'0',0,'0|待入库,1|已入库,2|部分入库',0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(723,76,'调出仓库','custid','select',2,NULL,1,'goods:godepotarr',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(724,74,'限制上传类型','uptype','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,100,NULL,1,0,0,0,0,NULL,'如:doc,xlsx,不写为全部',0,0),(725,77,'客户名称','custname','selectdatafalse',0,NULL,1,'custghaidata,custid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(726,77,'客户ID','custid','hidden',0,NULL,1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(727,77,'说明','explain','textarea',1,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(728,78,'需求岗位','zhiwei','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(729,78,'薪资','xinzi','text',2,'面议',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(730,78,'需求人数','renshu','number',3,'1',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(731,78,'职位要求','content','textarea',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(732,78,'说明','explain','textarea',5,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(733,78,'需求部门','bumen','text',1,'{deptname}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(734,79,'面试者','name','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(735,79,'类型','type','fixed',1,'1',1,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(736,79,'面试岗位','zhiwei','text',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(737,79,'所属部门','bumen','text',3,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(738,79,'面试人员','msuser','changeusercheck',5,NULL,1,'msuserid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(739,79,'面试时间','msdt','datetime',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(740,79,'说明','explain','textarea',10,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(741,79,'面试者简历','content','htmlediter',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(742,79,'面试记录','mscont','textarea',20,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(743,79,'面试结果','state','select',19,'0',0,'1|录用,2|不适合',0,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(744,7,'放入公海','isgh','select',20,NULL,0,'0|否,1|是',0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,1),(745,70,'品牌','pinpai','select',4,'0',1,'0|群英,1|中控',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(746,70,'分配的ip','snip','text',18,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'中控才要填局域网IP',0,0),(747,70,'分配端口号','snport','text',20,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'中控的需要填默认4370',0,0),(748,5,'请假人','uname','changeuser',0,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(749,32,'申请人','applyname','changeuser',0,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(750,33,'申请人','applyname','changeuser',0,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(751,37,'申请人','applyname','changeuser',0,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(752,71,'姓名','applyname','changeuser',1,'{admin}|{uid}',1,'uid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(753,23,'申请人','applyname','changeuser',0,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(754,6,'申请人','uname','changeuser',1,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(755,51,'申请人','uname','changeuser',0,'{admin}|{uid}',1,'uid',1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(756,72,'测试字段','testfirs','checkboxall',10,NULL,0,'我是,他是,大家都是',1,1,NULL,0,0,NULL,NULL,50,NULL,0,0,0,0,0,NULL,NULL,0,0),(757,80,'对应模块编号','modenum','text',0,NULL,1,NULL,1,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(758,80,'模块名称','modename','text',1,NULL,1,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(759,80,'对应主表','table','hidden',2,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(760,80,'主表Id','mid','text',3,NULL,1,NULL,1,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(761,80,'需回执人','recename','changedeptusercheck',4,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(762,80,'说明','explain','textarea',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(763,80,'总人数','ushuz','number',6,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(764,80,'已确认','ushuy','number',7,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(765,80,'操作时间','optdt','datetime',8,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(766,80,'状态','status','checkbox',9,'1',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(767,7,'最后跟进','lastdt','datetime',21,NULL,0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(768,30,'截止使用时间','enddt','datetime',1,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,1,0,1,0,NULL,'不设置默认长期有效',0,0),(769,81,'考核名称','title','text',0,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,1),(770,81,'开始日期','startdt','date',1,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(771,81,'截止日期','enddt','date',2,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(772,81,'考核对象','recename','changedeptusercheck',3,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(773,81,'考核频率','pinlv','select',4,'m',1,'m|每月,j|每季,y|每年',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(774,81,'生成时间','sctime','date',5,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,30,NULL,1,0,0,0,0,NULL,NULL,0,0),(775,81,'最高分数','maxfen','number',7,'100',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(776,81,'评分时间(天)','pfsj','number',6,'0',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(777,81,'合格分数','hegfen','number',8,'60',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(778,81,'考评项目','itemname','text',0,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(779,81,'比重(%)','weight','number',1,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(780,81,'考核内容','temp_zbcont','text',9,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,1,0,0,NULL,NULL,0,0),(781,81,'评分名称','pfname','text',0,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(782,81,'评分人类型','pftype','select',1,NULL,1,'my|自己,super|直属上级,user|选择人',1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(783,81,'评分人','pfren','changeuser',2,NULL,0,'pfrenid',1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(784,81,'评分权重','pfweight','number',3,'0',1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(785,81,'评分人','temp_pfren','text',10,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,1,0,0,NULL,NULL,0,0),(786,81,'状态','status','select',11,'1',1,'0|不启用,1|启用',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(787,71,'考评内容','itemname','text',0,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(788,71,'分数','fenshu','number',1,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(789,71,'评分内容','itemname','text',0,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(790,71,'评分类型','pfname','text',1,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(791,71,'评分人','optname','text',2,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(792,71,'评分分数','fenshu','number',3,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(793,71,'最后得分','defen','number',4,NULL,1,NULL,1,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(794,71,'评分时间','optdt','datetime',5,NULL,0,NULL,0,1,NULL,2,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(795,71,'部门','deptname','text',0,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(796,10,'通讯录','isvcard','checkbox',25,'1',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(797,48,'签发日期','startdt','date',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(798,48,'截止日期','enddt','date',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'不选长期有效',0,0),(799,49,'申请日期','applydt','date',0,'{date}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(800,48,'排序号','sort','number',0,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(801,83,'适用对象','recename','changedeptusercheck',2,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,1,0,NULL,NULL,0,0),(802,83,'模版类型','atype','select',1,NULL,1,'基本工资,考勤,绩效,个人所得税,社保公积金,补贴,其他',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(803,83,'模版名称','title','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(804,83,'开始月份','startdt','month',3,'{month}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(805,83,'截止月份','enddt','month',4,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'设置个期限',0,0),(806,83,'名称','name','selectdatafalse',0,NULL,1,'xinzifields,fields',1,1,NULL,1,0,NULL,NULL,50,NULL,1,0,0,0,0,NULL,NULL,0,0),(807,83,'类型','type','select',1,'0',1,'0|字段,1|增加,2|减少,3|仅实发增加,4|仅实发减少,5|仅应发增加,6|仅应发减少',1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(808,83,'默认值','devzhi','number',2,'0',0,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(809,83,'公式','gongsi','text',3,NULL,0,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(810,83,'备注','beizhu','text',4,NULL,0,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(811,83,'说明','explain','textarea',6,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(812,34,'绩效基数','jxjs','number',60,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(813,34,'绩效系数','jxxs','number',60,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(814,34,'绩效分数','jxdf','number',61,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(815,34,'绩效收入','jtpost','number',61,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(816,83,'排序号','sort','number',7,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,1,0,0,0,NULL,NULL,0,0),(817,34,'应出勤天数','ysbtime','number',49,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(818,34,'出勤天数','zsbtime','number',49,'0',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(819,83,'对应字段','fields','hidden',0,NULL,1,NULL,1,1,NULL,1,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(820,34,'应发工资','mones','text',99,'0',0,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(821,34,'个税起征点','taxbase','number',42,'3500',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(822,84,'名称','title','text',0,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(823,84,'适用对象','recename','changedeptusercheck',1,NULL,1,'receid',1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,1,0,NULL,NULL,0,0),(824,84,'养老保险基数','yljishu','number',3,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(825,84,'养老个人比例(%)','ylgeren','number',4,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(826,84,'养老单位比例(%)','ylunit','number',5,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(827,84,'失业个人比例(%)','sygeren','number',7,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(828,84,'失业单位比例(%)','syunit','number',8,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(829,84,'工伤个人比例(%)','gsgeren','number',10,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(830,84,'工伤单位比例(%)','gsunit','number',11,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(831,84,'生育个人比例(%)','syugeren','number',13,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(832,84,'生育单位比例(%)','syuunit','number',14,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(833,84,'医疗个人比例(%)','yigeren','number',16,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(834,84,'大病个人(元)','dbgeren','number',18,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(835,84,'个人社保缴费(元)','shebaogeren','text',19,'0',0,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,'({yljishu}*{ylgeren}*0.01)+({syjishu}*{sygeren}*0.01)+({gsjishu}*{gsgeren}*0.01)+({syujishu}*{syugeren}*0.01)+({yijishu}*{yigeren}*0.01)+{dbgeren}',NULL,0,0),(836,84,'单位社保缴费(元)','shebaounit','text',20,'0',0,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,'({yljishu}*{ylunit}*0.01)+({syjishu}*{syunit}*0.01)+({gsjishu}*{gsunit}*0.01)+({syujishu}*{syuunit}*0.01)+({yijishu}*{yiunit}*0.01)',NULL,0,0),(837,84,'公积金基数','gongjishu','number',21,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(838,84,'公积金个人比例(%)','gjjgeren','number',22,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(839,84,'公积金单位比例(%)','gjjunit','number',23,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(840,84,'公积金个人(元)','gonggeren','text',24,'0',0,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,'{gongjishu}*{gjjgeren}*0.01',NULL,0,0),(841,84,'公积金单位(元)','gongunit','text',25,'0',0,NULL,1,1,'readonly',0,0,NULL,NULL,0,NULL,1,0,0,0,0,'{gongjishu}*{gjjunit}*0.01',NULL,0,0),(842,84,'每月生成时间','sctime','date',28,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(843,84,'说明','explian','textarea',29,NULL,0,NULL,1,1,NULL,0,0,NULL,NULL,500,NULL,0,0,0,0,0,NULL,NULL,0,0),(844,84,'医疗单位比例(%)','yiunit','number',17,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(845,84,'开始月份','startdt','month',26,'{month}',1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(846,84,'截止月份','enddt','month',27,NULL,1,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(847,84,'失业保险基数','syjishu','number',6,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(848,84,'工伤保险基数','gsjishu','number',9,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(849,84,'生育保险基数','syujishu','number',12,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(850,84,'医疗保险基数','yijishu','number',15,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(851,1,'发手机短信','issms','checkbox',14,'0',0,NULL,1,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'发短信',0,0),(852,2,'短信提醒','issms','checkbox',10,'0',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,'发短信',0,0),(853,34,'单位社保缴费','socialsunit','number',41,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(854,34,'公积金个人','gonggeren','number',41,'0',0,NULL,0,1,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(855,34,'公积金单位','gongunit','number',41,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(856,84,'状态','status','checkbox',2,'1',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'启用',0,0),(857,83,'状态','status','checkbox',8,'1',0,NULL,1,1,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,'启用',0,0),(858,24,'领用的物品','wupinlist','text',2,NULL,0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(859,34,'餐补贴','foodbt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(860,34,'高温津贴','hotbt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(861,34,'电脑补贴','dnbt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,1,0,0,0,0,NULL,NULL,0,0),(862,34,'其他补贴','otherbt','number',1,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(863,34,'计件收入','jiansr','number',71,'0',0,NULL,0,0,NULL,0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0),(864,34,'工号','gonghao','text',0,'{urs.num}',0,NULL,0,0,'readonly',0,0,NULL,NULL,0,NULL,0,0,0,0,0,NULL,NULL,0,0);
/*!40000 ALTER TABLE `jouryu_flow_element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_extent`
--

DROP TABLE IF EXISTS `jouryu_flow_extent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_extent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recename` varchar(4000) DEFAULT NULL,
  `receid` varchar(4000) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT '0' COMMENT '模块',
  `type` tinyint(1) DEFAULT '0' COMMENT '0查看,1添加,2编辑,3删除',
  `wherestr` varchar(500) DEFAULT NULL COMMENT '条件',
  `explain` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `whereid` smallint(6) DEFAULT '0' COMMENT '条件Id',
  PRIMARY KEY (`id`),
  KEY `modeid` (`modeid`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COMMENT='模块权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_extent`
--

LOCK TABLES `jouryu_flow_extent` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_extent` DISABLE KEYS */;
INSERT INTO `jouryu_flow_extent` VALUES (1,'全体人员','all',1,1,NULL,NULL,1,0),(2,'全体人员','all',1,0,'e3JlY2VpZH0:','发布给包含我',1,0),(3,'全体人员','all',3,1,NULL,NULL,1,0),(4,'全体人员','all',2,1,NULL,NULL,1,0),(5,'全体人员','all',2,0,'YWxs','全部数据',1,0),(6,'全体人员','all',3,0,'e2FsbHN1cGVyfQ::','所有下属人员',1,0),(10,'全体人员','all',1,2,'b3B0aWQ9e3VpZH0:','自己发布的',1,0),(11,'全体人员','all',2,2,'b3B0aWQ9e3VpZH0gYW5kIHN0YXRlPTA:','我创建的',1,0),(12,'全体人员','all',4,1,NULL,NULL,1,0),(13,'全体人员','all',4,0,'YWxs','任何人都可以看到任务',1,0),(14,'全体人员','all',5,1,NULL,NULL,1,0),(15,'全体人员','all',6,1,NULL,NULL,1,0),(16,'管理员','u1',1,3,'b3B0aWQ!MA::',NULL,1,0),(18,'全体人员','all',2,3,'b3B0aWQ9e3VpZH0gYW5kIHN0YXRlIGluKDAsMyk:','可删除我创建的',1,0),(19,'全体人员','all',8,3,'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MQ::','删除自己未成交的',1,0),(20,'全体人员','all',7,1,NULL,NULL,1,0),(21,'全体人员','all',8,1,NULL,NULL,1,0),(22,'全体人员','all',9,2,'b3B0aWQ9e3VpZH0:','本人添加可编辑',1,0),(24,'全体人员','all',3,0,'dWlkPXt1aWR9','可查看我自己',1,0),(25,'全体人员','all',8,0,'dWlkPXt1aWR9','可查看我自己',1,0),(26,'全体人员','all',7,0,'dWlkPXt1aWR9','可查看我自己的',1,0),(27,'全体人员','all',12,2,'dWlkPXt1aWR9','编辑我自己',1,0),(28,'全体人员','all',12,3,'dWlkPXt1aWR9','删除自己',1,0),(29,'全体人员','all',12,1,NULL,NULL,1,0),(30,'全体人员','all',12,0,'dWlkPXt1aWR9',NULL,1,0),(31,'全体人员','all',10,0,'MT0x',NULL,1,0),(32,'全体人员','all',13,0,'YWxs','全体人员都可以查看组织结构',1,0),(33,'管理员','u1',13,3,'YWxs',NULL,1,0),(34,'管理员','u1',10,3,'YHR5cGVgPTA:','只能删除非管理员帐号',1,0),(35,'管理员','u1',14,0,'YWxs',NULL,1,0),(36,'管理员','u1',14,3,'YWxs',NULL,1,0),(37,'管理员','u1',15,0,'YWxs',NULL,1,0),(38,'管理员','u1',15,3,'YWxs',NULL,1,0),(39,'管理员','u1',16,0,'YWxs',NULL,1,0),(40,'管理员','u1',16,3,'YWxs',NULL,1,0),(41,'管理员','u1',17,0,'YWxs',NULL,1,0),(42,'管理员','u1',17,3,'YWxs',NULL,1,0),(43,'管理员','u1',18,0,'YWxs',NULL,1,0),(44,'管理员','u1',18,3,'YWxs',NULL,1,0),(45,'管理员','u1',9,3,'YWxs','管理可删除全部',1,0),(46,'全体人员','all',24,1,NULL,NULL,1,0),(47,'全体人员','all',25,1,NULL,NULL,1,0),(48,'全体人员','all',26,1,NULL,NULL,1,0),(49,'全体人员','all',7,2,'dWlkPXt1aWR9','可编辑我自己的',1,0),(50,'全体人员','all',22,1,NULL,NULL,1,0),(51,'全体人员','all',22,2,'b3B0aWQ9e3VpZH0:','创建人可修改',1,0),(52,'全体人员','all',23,1,NULL,NULL,1,0),(53,'全体人员','all',11,1,NULL,NULL,1,0),(54,'全体人员','all',27,1,NULL,NULL,1,0),(55,'全体人员','all',8,2,'dWlkPXt1aWR9IGFuZCBodGlkPTA:','可编辑自己未创建合同的单子',1,0),(56,'全体人员','all',3,2,'dWlkPXt1aWR9IGFuZCBkdD57ZGF0ZS0zfQ::','自己可编辑3天前日报',1,0),(57,'全体人员','all',29,2,'aWQ9e3VpZH0:','可编辑自己的',1,0),(58,'管理员','u1',29,0,'YWxs',NULL,1,0),(59,'全体人员','all',29,0,'aWQ9e3VpZH0:','可查看自己',1,0),(60,'管理员','u1',31,0,'YWxs','可查看所有人',1,0),(61,'管理员','u1',31,2,'YWxs','管理员可编辑所有人',1,0),(62,'管理员,行政人事部','u1,d4',29,3,'YWxs',NULL,1,0),(63,'全体人员','all',33,1,NULL,NULL,1,0),(64,'全体人员','all',32,1,NULL,NULL,1,0),(65,'全体人员','all',34,0,'YHh1aWRgPXt1aWR9','可查看自己薪资',1,0),(66,'全体人员','all',34,0,'YG9wdGlkYD17dWlkfQ::','可查看我提交的',1,0),(67,'部门负责人','g3',34,0,NULL,NULL,1,220),(68,'全体人员','all',35,1,NULL,NULL,1,0),(69,'全体人员','all',35,2,'dWlkPXt1aWR9IGFuZCBtb25leT1tb25leXM:','编辑我的合同',1,0),(70,'全体人员','all',36,2,'dWlkPXt1aWR9IGFuZCBpc3BheT0w','未付款前可以编辑',1,0),(71,'管理员','u1',36,0,'YWxs',NULL,1,0),(72,'全体人员','all',37,1,NULL,NULL,1,0),(73,'全体人员','all',40,0,'YWxs','任何人都可以查看知识',1,0),(74,'管理员,大乔','u1,u4',40,2,'YWxs',NULL,1,0),(75,'管理员,行政人事部','u1,d4',41,2,'YWxs',NULL,1,0),(76,'行政人事部','d4',41,1,NULL,NULL,1,0),(77,'全体人员','all',41,0,'YWxs',NULL,1,0),(78,'管理员,行政人事部','u1,d4',41,3,'YWxs',NULL,1,0),(79,'管理员,行政人事部','u1,d4',42,1,NULL,NULL,1,0),(80,'管理员,行政人事部','u1,d4',42,0,'YWxs',NULL,1,0),(81,'管理员,行政人事部','u1,d4',42,2,'YWxs',NULL,1,0),(82,'管理员,行政人事部','u1,d4',42,3,'YWxs',NULL,1,0),(83,'管理员,行政人事部','u1,d4',43,1,NULL,NULL,1,0),(84,'琢瑜OA开发团队','d1',43,2,'b3B0aWQ9e3VpZH0:',NULL,1,0),(85,'管理员,行政人事部','u1,d4',43,2,'YWxs',NULL,1,0),(86,'管理员,行政人事部','u1,d4',43,3,'YWxs',NULL,1,0),(87,'全体人员','all',43,0,'YWxs',NULL,1,0),(88,'全体人员','all',44,1,NULL,NULL,1,0),(89,'全体人员','all',44,0,'YWxs',NULL,1,0),(90,'全体人员','all',45,0,'YWxs',NULL,1,0),(91,'全体人员','all',45,2,'b3B0aWQ9e3VpZH0:','可编辑自己添加',1,0),(92,'管理员,行政人事部','u1,d4',45,2,'YWxs',NULL,1,0),(93,'管理员,行政人事部','u1,d4',45,3,'YWxs',NULL,1,0),(94,'全体人员','all',46,1,NULL,NULL,1,0),(95,'全体人员','all',46,0,'YWxs',NULL,1,0),(96,'全体人员','all',22,3,'b3B0aWQ9e3VpZH0:','创建人可删除自己的',1,0),(97,'全体人员','all',47,1,NULL,NULL,1,0),(98,'全体人员','all',47,2,'c2VuZGlkPXt1aWR9IGFuZCBpc3R1cm49MA::','可编辑草稿',1,0),(99,'全体人员','all',47,3,'c2VuZGlkPXt1aWR9IGFuZCBpc3R1cm49MA::','可删除草稿',1,0),(100,'管理员','u1',21,3,'YWxs',NULL,1,0),(101,'全体人员','all',48,0,'YWxs',NULL,1,0),(102,'全体人员','all',48,2,'YWxs',NULL,1,0),(103,'全体人员','all',48,3,'YWxs',NULL,1,0),(104,'全体人员','all',49,1,NULL,NULL,1,0),(105,'全体人员','all',51,1,NULL,NULL,1,0),(106,'全体人员','all',52,1,NULL,NULL,1,0),(107,'全体人员','all',53,1,NULL,NULL,1,0),(108,'全体人员','all',53,2,'dWlkPXt1aWR9',NULL,1,0),(109,'全体人员','all',53,3,'dWlkPXt1aWR9',NULL,1,0),(110,'全体人员','all',36,1,NULL,NULL,1,0),(111,'全体人员','all',36,3,'dWlkPXt1aWR9IGFuZCBpc3BheT0w',NULL,1,0),(112,'行政人事部','d4',28,1,NULL,NULL,1,0),(113,'全体人员','all',54,1,NULL,NULL,1,0),(114,'全体人员','all',54,0,'YWxs',NULL,1,0),(115,'全体人员','all',54,2,'b3B0aWQ9e3VpZH0:',NULL,1,0),(116,'全体人员','all',38,1,NULL,NULL,1,0),(117,'管理员','u1',5,0,'YWxs',NULL,1,0),(120,'全体人员','all',10,0,'e2RlcHR9','可以查看本部门人员',1,0),(123,'管理员,行政人事部','u1,d4',56,1,NULL,NULL,1,0),(124,'全体人员','all',56,3,'YG9wdGlkYD17dWlkfSBhbmQgYHN0YXJ0ZHRgPm5vdygp','时间还未开始就可以删除',1,0),(125,'全体人员','all',56,2,'YG9wdGlkYD17dWlkfSBhbmQgYHN0YXJ0ZHRgPm5vdygp','时间还未开始就可以编辑',1,0),(126,'全体人员','all',56,0,'YG9wdGlkYD17dWlkfQ::',NULL,1,0),(127,'管理员,行政人事部','u1,d4',56,0,'YWxs',NULL,1,0),(130,'全体人员','all',58,2,'b3B0aWQ9e3VpZH0:',NULL,1,0),(131,'全体人员','all',58,3,'b3B0aWQ9e3VpZH0:',NULL,1,0),(132,'全体人员','all',61,1,NULL,NULL,1,0),(133,'全体人员','all',61,2,'dWlkPXt1aWR9','可编辑我自己',1,0),(134,'全体人员','all',61,3,'dWlkPXt1aWR9','可删除我自己的',1,0),(135,'管理员','u1',61,3,'YWxs',NULL,1,0),(136,'管理员','u1',61,0,'YWxs',NULL,1,0),(137,'全体人员','all',62,1,NULL,NULL,1,0),(138,'行政人事部','d4',62,0,'YWxs',NULL,1,0),(139,'全体人员','all',63,0,'YWxs',NULL,1,0),(140,'管理员','u1',63,1,NULL,NULL,1,0),(141,'管理员','u1',63,3,'YGlkYD4x',NULL,1,0),(142,'管理员','u1',63,2,'YWxs',NULL,1,0),(143,'管理员','u1',10,2,'YWxs',NULL,1,0),(144,'全体人员','all',7,3,'dWlkPXt1aWR9','可删除我自己的',1,0),(145,'全体人员','all',64,1,NULL,NULL,1,0),(146,'全体人员','all',65,1,NULL,NULL,1,0),(147,'管理员','u1',10,4,NULL,NULL,1,0),(148,'全体人员','all',7,4,NULL,NULL,1,0),(149,'管理员','u1',67,3,'YWxs','管理员可删除全部人的',1,0),(150,'全体人员','all',67,3,'YG9wdGlkYD17dWlkfQ::','可删除我的订阅',1,0),(151,'全体人员','all',67,2,'YG9wdGlkYD17dWlkfQ::','编辑自己订阅',1,0),(153,'全体人员','all',68,1,NULL,NULL,1,0),(154,'全体人员','all',68,0,'e3JlY2VpZCx1aWRpbn0:',NULL,1,0),(155,'管理员','u1',68,3,'YWxs','管理员可删除所有',1,0),(156,'管理员','u1',70,2,'YWxs',NULL,1,0),(157,'管理员','u1',70,3,'YWxs',NULL,1,0),(158,'管理员,行政人事部','u1,d4',29,2,'YWxs','编辑所有人',1,0),(159,'全体人员','all',71,1,NULL,NULL,1,0),(160,'全体人员','all',72,1,NULL,NULL,1,0),(161,'全体人员','all',72,0,'YWxs',NULL,1,0),(162,'全体人员','all',69,0,'e3JlY2VpZH0:',NULL,1,0),(163,'管理员','u1',73,2,'YWxs',NULL,1,0),(164,'管理员','u1',73,3,'YWxs',NULL,1,0),(165,'管理员','u1',7,2,'YGlzZ3lzYD0x','可编辑供应商',1,0),(166,'全体人员','all',74,1,NULL,NULL,1,0),(167,'管理员','u1',74,2,'YWxs',NULL,1,0),(168,'管理员','u1',74,3,'YWxs',NULL,1,0),(169,'全体人员','all',74,2,'YHVpZGA9e3VpZH0:',NULL,1,0),(170,'全体人员','all',74,3,'YHVpZGA9e3VpZH0:',NULL,1,0),(172,'管理员','u1',7,2,'YGlzZ2hgPTE:','管理员可编辑公海库',1,0),(173,'全体人员','all',77,1,NULL,NULL,1,0),(174,'全体人员','all',7,0,'YGlzZ2hgPTE:','可查看公海库客户信息',1,0),(175,'全体人员','all',78,1,NULL,NULL,1,0),(176,'全体人员','all',79,1,NULL,NULL,1,0),(177,'全体人员','all',39,1,NULL,NULL,1,0),(178,'管理员','u1',10,5,NULL,NULL,1,0),(179,'全体人员','all',80,1,NULL,NULL,1,0),(180,'全体人员','all',80,2,'dWlkPXt1aWR9',NULL,1,0),(181,'全体人员','all',80,3,'dWlkPXt1aWR9',NULL,1,0),(182,'管理员','u1',29,4,NULL,NULL,1,0),(183,'全体人员','all',81,2,'YG9wdGlkYD17dWlkfQ::',NULL,1,0),(184,'全体人员','all',81,3,'YG9wdGlkYD17dWlkfQ::',NULL,1,0),(185,'行政人事部','d4',81,0,'YWxs',NULL,1,0),(187,'管理员','u1',71,0,'YWxs',NULL,1,0),(188,'管理员','u1',71,5,NULL,NULL,1,0),(189,'管理员,行政人事部','u1,d4',83,2,'YWxs',NULL,1,0),(190,'管理员,行政人事部','u1,d4',83,3,'YWxs',NULL,1,0),(191,'行政人事部,管理员','d4,u1',84,2,'YWxs',NULL,1,0),(192,'行政人事部,管理员','d4,u1',84,3,'YWxs',NULL,1,0),(193,'行政人事部','d4',84,1,NULL,NULL,1,0),(194,'管理员,行政人事部','u1,d4',83,0,'YWxs',NULL,1,0),(195,'行政人事部','d4',34,1,NULL,NULL,1,0),(196,'部门负责人','g3',34,2,NULL,NULL,1,220),(197,'管理员','u1',34,0,'MT0x',NULL,1,0);
/*!40000 ALTER TABLE `jouryu_flow_extent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_log`
--

DROP TABLE IF EXISTS `jouryu_flow_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(50) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '1通过',
  `statusname` varchar(20) DEFAULT NULL COMMENT '状态名称',
  `name` varchar(50) DEFAULT NULL COMMENT '进程名称',
  `courseid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL COMMENT '浏览器',
  `checkname` varchar(20) DEFAULT NULL,
  `checkid` smallint(6) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT NULL COMMENT '@模块Id',
  `color` varchar(10) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `step` smallint(6) DEFAULT '0' COMMENT '步骤号',
  `qmimg` text COMMENT '签名的图片base64',
  `iszb` tinyint(1) DEFAULT '0' COMMENT '是否转办记录',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=1743 DEFAULT CHARSET=utf8 COMMENT='单据操作记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_log`
--

LOCK TABLES `jouryu_flow_log` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_log` DISABLE KEYS */;
INSERT INTO `jouryu_flow_log` VALUES (2,'kqinfo',1,2,'不同意','上级审核',1,'2016-07-29 10:53:48','哈哈哈，不给你过，看怎么兜风','192.168.1.143','Chrome','琢瑜清泉',5,5,'red',1,0,NULL,0),(3,'kqinfo',1,1,'同意','上级审核',1,'2016-07-29 10:54:12',NULL,'192.168.1.143','Chrome','琢瑜清泉',5,5,'green',1,0,NULL,0),(5,'kqinfo',2,2,'不同意','上级审核',3,'2016-07-29 10:56:03','哈哈啊','192.168.1.143','Chrome','琢瑜清泉',5,6,'red',1,0,NULL,0),(7,'kqinfo',2,1,'同意','上级审核',3,'2016-07-29 10:58:51','好的','127.0.0.1','Firefox','琢瑜清泉',5,6,'green',1,0,NULL,0),(60,'kqinfo',5,1,'同意','上级审核',1,'2016-08-25 16:02:15',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,5,'green',1,0,NULL,0),(61,'kqinfo',5,1,'同意','人事审核',2,'2016-08-25 16:03:22',NULL,'127.0.0.1','Chrome','大乔',4,5,'green',1,0,NULL,0),(63,'kqinfo',6,1,'同意','上级审核',1,'2016-08-26 23:35:26',NULL,'127.0.0.1','Chrome','管理员',1,5,'green',1,0,NULL,0),(64,'kqinfo',3,1,'同意','上级审核',1,'2016-08-26 23:36:28',NULL,'127.0.0.1','Chrome','管理员',1,5,'green',1,0,NULL,0),(65,'kqinfo',6,1,'同意','人事审核',2,'2016-08-26 23:36:46',NULL,'127.0.0.1','Chrome','大乔',4,5,'green',1,0,NULL,0),(66,'kqinfo',3,1,'同意','人事审核',2,'2016-08-26 23:36:50',NULL,'127.0.0.1','Chrome','大乔',4,5,'green',1,0,NULL,0),(67,'kqinfo',1,1,'同意','人事审核',2,'2016-08-26 23:36:55',NULL,'127.0.0.1','Chrome','大乔',4,5,'green',1,0,NULL,0),(71,'kqinfo',7,1,'同意','上级审核',3,'2016-08-27 15:14:50',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,6,'green',1,0,NULL,0),(73,'kqout',1,1,'同意','上级审核',5,'2016-08-27 15:23:05',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,23,'green',1,0,NULL,0),(129,'fininfom',5,1,'同意','上级审批',7,'2016-09-02 23:03:45',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,11,'green',1,0,NULL,0),(130,'kqinfo',4,2,'不同意','上级审核',1,'2016-09-02 23:06:03','as','127.0.0.1','Chrome','琢瑜清泉',5,5,'red',1,0,NULL,0),(136,'fininfom',3,1,'同意','上级审批',10,'2016-09-03 15:39:01',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,25,'green',1,0,NULL,0),(138,'fininfom',4,1,'同意','上级审核',13,'2016-09-03 15:44:02',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,26,'green',1,0,NULL,0),(139,'fininfom',6,2,'不同意','上级审核',13,'2016-09-03 15:46:03','哈哈','127.0.0.1','Chrome','琢瑜清泉',5,26,'red',1,0,NULL,0),(140,'fininfom',4,1,'同意','人事审核',14,'2016-09-03 15:50:17',NULL,'127.0.0.1','Chrome','大乔',4,26,'green',1,0,NULL,0),(141,'fininfom',4,1,'同意','财务审核',15,'2016-09-03 16:51:39',NULL,'127.0.0.1','Chrome','貂蝉',2,26,'green',1,0,NULL,0),(143,'fininfom',6,1,'同意','上级审核',13,'2016-09-03 16:53:05',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,26,'green',1,0,NULL,0),(145,'fininfom',6,1,'同意','人事审核',14,'2016-09-03 17:16:16','hahah','127.0.0.1','Chrome','大乔',4,26,'green',1,0,NULL,0),(146,'fininfom',6,1,'同意','财务审核',15,'2016-09-03 17:16:59','哈哈哈哈','127.0.0.1','Chrome','貂蝉',2,26,'green',1,0,NULL,0),(148,'fininfom',7,1,'同意','财务确认',16,'2016-09-03 17:18:06',NULL,'127.0.0.1','Chrome','貂蝉',2,27,'green',1,0,NULL,0),(149,'fininfom',7,1,'同意','付款确认',17,'2016-09-03 17:18:37','哈哈哈','127.0.0.1','Chrome','管理员',1,27,'green',1,0,NULL,0),(150,'fininfom',7,1,'同意','确认收款',18,'2016-09-03 17:19:43','哈哈哈哈','127.0.0.1','Chrome','貂蝉',2,27,'green',1,0,NULL,0),(156,'kqinfo',8,1,'同意','上级审核',1,'2016-09-04 22:06:25','给你吧，哈哈哈','127.0.0.1','Chrome','张飞',6,5,'green',1,0,NULL,0),(157,'kqinfo',8,1,'同意','人事审核',2,'2016-09-05 14:22:32','好的','127.0.0.1','Chrome','大乔',4,5,'green',1,0,NULL,0),(159,'fininfom',3,1,'同意','人事审核',11,'2016-09-05 14:34:49','hahah','127.0.0.1','Chrome','琢瑜OA客服',8,25,'green',1,0,NULL,0),(160,'fininfom',3,1,'同意','财务审核',12,'2016-09-05 14:35:07',NULL,'127.0.0.1','Chrome','貂蝉',2,25,'green',1,0,NULL,0),(188,'kqinfo',9,2,'不同意','上级审核',1,'2016-09-08 20:38:05','hahaha','192.168.1.104','Chrome','琢瑜清泉',5,5,'red',1,0,NULL,0),(190,'kqinfo',9,1,'同意','上级审核',1,'2016-09-08 21:39:10',NULL,'192.168.1.100','wxbro','琢瑜清泉',5,5,'green',1,0,NULL,0),(199,'kqinfo',9,2,'不同意','人事审核',2,'2016-09-12 14:49:37','哈哈哈','127.0.0.1','Firefox','大乔',4,5,'red',1,0,NULL,0),(201,'fininfom',5,2,'不同意','人事审核',8,'2016-09-12 14:51:29','12','127.0.0.1','Firefox','大乔',4,11,'red',1,0,NULL,0),(235,'hrpositive',1,1,'同意','上级审批',27,'2016-10-07 10:24:33','表现不错转正吧','127.0.0.1','Chrome','琢瑜清泉',5,32,'green',1,0,NULL,0),(236,'hrpositive',1,1,'同意','人事审批',28,'2016-10-07 10:25:56','好哦奥','127.0.0.1','Chrome','大乔',4,32,'green',1,0,NULL,0),(238,'hrredund',1,2,'不同意','上级审批',29,'2016-10-07 11:55:03','没事提啥离职啊，我去','127.0.0.1','Chrome','琢瑜清泉',5,33,'red',1,0,NULL,0),(309,'reward',1,1,'无异议','当事人确认',35,'2016-10-20 21:08:27','谢谢奖励','127.0.0.1','Chrome','管理员',1,39,NULL,1,0,NULL,0),(311,'reward',1,1,'同意','人事审批',36,'2016-10-20 21:17:12',NULL,'127.0.0.1','Chrome','大乔',4,39,'green',1,0,NULL,0),(332,'assetm',6,1,'领用','领用登记',0,'2016-10-26 22:26:44','领用了','127.0.0.1','Chrome','管理员',1,41,NULL,1,0,NULL,0),(333,'assetm',6,1,'维修','维修',0,'2016-10-26 22:27:47','加碳粉','127.0.0.1','Chrome','管理员',1,41,'gray',1,0,NULL,0),(354,'bookborrow',1,1,'同意','行政确认',39,'2016-10-29 15:19:40','借吧','127.0.0.1','Chrome','小乔',3,46,'green',1,0,NULL,0),(355,'bookborrow',1,1,'确认归还','借阅人归返',0,'2016-10-29 16:43:29','已被张飞拿走了,转给：张飞','127.0.0.1','Chrome','管理员',1,46,NULL,1,0,NULL,0),(356,'bookborrow',1,1,'确认归还','借阅人归返',40,'2016-10-29 19:43:01','呵呵','127.0.0.1','Chrome','张飞',6,46,NULL,1,0,NULL,0),(357,'bookborrow',2,1,'同意','行政确认',39,'2016-10-29 20:21:19',NULL,'127.0.0.1','Chrome','小乔',3,46,'green',1,0,NULL,0),(358,'bookborrow',2,1,'确认归还','借阅人归返',0,'2016-10-29 22:33:30','转给：貂蝉','127.0.0.1','Safari','琢瑜OA客服',8,46,NULL,1,0,NULL,0),(361,'bookborrow',3,1,'同意','行政确认',39,'2016-10-30 11:59:32',NULL,'127.0.0.1','Chrome','小乔',3,46,'green',1,0,NULL,0),(364,'daily',9,1,NULL,'点评',0,'2016-10-31 20:20:26','不错不错','127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(367,'work',2,2,'执行中','进度报告',0,'2016-11-02 20:23:41','快好了','127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(368,'work',2,2,'执行中','进度报告',0,'2016-11-02 20:26:45','问问','127.0.0.1','Chrome','管理员',1,4,'#ff6600',1,0,NULL,0),(369,'work',2,1,'已完成','进度报告',0,'2016-11-02 20:27:17','好了','127.0.0.1','Chrome','管理员',1,4,'green',1,0,NULL,0),(372,'work',7,1,'评分','任务评分',0,'2016-11-02 22:25:08','呵呵','127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(383,'work',8,2,'执行中','进度报告',0,'2016-11-14 19:05:38','很好啊','127.0.0.1','Firefox','管理员',1,4,'orange',1,0,NULL,0),(387,'daily',13,1,'评分','日报评分',0,'2016-11-28 17:03:05','呵呵','127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(388,'daily',15,1,NULL,'点评',0,'2016-11-28 17:08:54','不错啊','127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(404,'seal',1,1,NULL,'提交',0,'2016-12-08 21:09:03',NULL,'127.0.0.1','Chrome','管理员',1,48,NULL,1,0,NULL,0),(405,'sealapl',1,1,NULL,'提交',0,'2016-12-08 21:48:02',NULL,'127.0.0.1','Chrome','管理员',1,49,NULL,1,0,NULL,0),(406,'sealapl',1,1,'同意','上级审批',41,'2016-12-08 21:55:36',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,49,'green',1,0,NULL,0),(407,'sealapl',1,1,'同意','保管人确认',42,'2016-12-08 21:56:05','可以的，来盖章吧','127.0.0.1','Chrome','张飞',6,49,'green',1,0,NULL,0),(408,'sealapl',1,1,'已盖章','申请人确认',43,'2016-12-09 09:14:59',NULL,'127.0.0.1','Chrome','管理员',1,49,NULL,1,0,NULL,0),(412,'kqinfo',14,1,NULL,'提交',0,'2016-12-09 12:23:06',NULL,'127.0.0.1','Chrome','管理员',1,5,NULL,1,0,NULL,0),(415,'customer',2,1,'启用','状态切换',0,'2016-12-14 10:07:10',NULL,'127.0.0.1','Chrome','管理员',1,7,'green',1,0,NULL,0),(416,'customer',2,1,'启用','状态切换',0,'2016-12-14 10:07:51',NULL,'127.0.0.1','Chrome','管理员',1,7,'green',1,0,NULL,0),(417,'customer',2,0,'停用','状态切换',0,'2016-12-14 10:08:09','哈哈','127.0.0.1','Chrome','管理员',1,7,'gray',1,0,NULL,0),(418,'customer',2,1,'标星','标星',0,'2016-12-14 10:17:30',NULL,'127.0.0.1','Chrome','管理员',1,7,'chocolate',1,0,NULL,0),(419,'customer',2,0,'取消标星','取消标星',0,'2016-12-14 10:18:49',NULL,'127.0.0.1','Chrome','管理员',1,7,'gray',1,0,NULL,0),(420,'customer',1,1,'标星','标星',0,'2016-12-14 10:18:53',NULL,'127.0.0.1','Chrome','管理员',1,7,'chocolate',1,0,NULL,0),(421,'customer',2,1,'标星','状态切换',0,'2016-12-14 10:19:55',NULL,'127.0.0.1','Chrome','管理员',1,7,'chocolate',1,0,NULL,0),(422,'customer',1,1,'拜访记录','状态切换',0,'2016-12-14 10:21:44','哈哈哈哈啊','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(423,'customer',1,1,'拜访记录','拜访记录',0,'2016-12-14 10:22:10','12','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(424,'customer',1,1,'拜访','拜访记录',0,'2016-12-14 10:22:47','112','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(431,'kqerr',1,1,NULL,'提交',0,'2016-12-16 20:54:27',NULL,'127.0.0.1','Chrome','管理员',1,51,NULL,1,0,NULL,0),(432,'kqerr',1,1,'同意','上级审核',44,'2016-12-16 21:01:34',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,51,'green',1,0,NULL,0),(434,'kqerr',1,1,'同意','人事确认',45,'2016-12-16 21:08:07',NULL,'127.0.0.1','Chrome','大乔',4,51,'green',1,0,NULL,0),(445,'tovoid',3,1,NULL,'提交',0,'2016-12-19 13:49:22',NULL,'127.0.0.1','Chrome','管理员',1,52,NULL,1,0,NULL,0),(447,'tovoid',3,1,'同意','上级审核',46,'2016-12-19 14:32:51',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,52,'green',1,0,NULL,0),(450,'tovoid',5,1,NULL,'提交',0,'2016-12-19 14:39:20',NULL,'127.0.0.1','Chrome','管理员',1,52,NULL,1,0,NULL,0),(451,'tovoid',5,1,'同意','上级审核',46,'2016-12-19 14:39:52',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,52,'green',1,0,NULL,0),(452,'vcard',2,1,NULL,'提交',0,'2016-12-20 10:36:39',NULL,'127.0.0.1','Safari','管理员',1,53,NULL,1,0,NULL,0),(453,'vcard',3,1,NULL,'提交',0,'2016-12-20 10:37:37',NULL,'127.0.0.1','Safari','管理员',1,53,NULL,1,0,NULL,0),(456,'vcard',4,1,NULL,'提交',0,'2016-12-20 11:31:21',NULL,'127.0.0.1','Chrome','琢瑜OA客服',8,53,NULL,1,0,NULL,0),(461,'vcard',5,1,NULL,'提交',0,'2016-12-21 14:36:17',NULL,'127.0.0.1','Chrome','管理员',1,53,NULL,1,0,NULL,0),(490,'daily',16,1,NULL,'提交',0,'2017-01-06 09:17:15',NULL,'127.0.0.1','Firefox','管理员',1,3,NULL,1,0,NULL,0),(493,'hrtransfer',1,1,'同意','人事审批',32,'2017-02-07 10:21:30',NULL,'127.0.0.1','Chrome','大乔',4,38,'green',1,0,NULL,0),(500,'daily',17,1,NULL,'提交',0,'2017-02-10 16:20:46',NULL,'127.0.0.1','Chrome','张飞',6,3,NULL,1,0,NULL,0),(503,'work',9,1,NULL,'提交',0,'2017-02-13 10:53:58',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(504,'work',9,2,'执行中','进度报告',0,'2017-02-13 11:06:09','攻城中','127.0.0.1','Chrome','张飞',6,4,'orange',1,0,NULL,0),(506,'customer',1,1,NULL,'共享给',0,'2017-02-15 14:56:50','共享给:管理员','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(507,'customer',1,1,NULL,'共享给',0,'2017-02-15 14:57:01','共享给:管理员','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(508,'customer',1,1,NULL,'取消共享',0,'2017-02-15 15:04:12','223','127.0.0.1','Chrome','管理员',1,7,'gray',1,0,NULL,0),(524,'meet',5,1,NULL,'提交',0,'2017-02-28 09:30:59',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(529,'meet',5,0,NULL,'签到',0,'2017-02-28 10:31:28',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(530,'meet',5,0,NULL,'签到',0,'2017-02-28 10:32:43',NULL,'127.0.0.1','Chrome','管理员',1,2,'blue',1,0,NULL,0),(531,'meet',5,0,'签到','签到',0,'2017-02-28 10:33:07',NULL,'127.0.0.1','Chrome','管理员',1,2,'blue',1,0,NULL,0),(532,'meet',5,6,'签到','签到',0,'2017-02-28 10:36:02','我来了','127.0.0.1','Chrome','管理员',1,2,'blue',1,0,NULL,0),(533,'meet',5,6,'签到','签到',0,'2017-02-28 10:38:27',NULL,'192.168.1.152','Chrome','管理员',1,2,'blue',1,0,NULL,0),(534,'meet',6,1,NULL,'提交',0,'2017-02-28 11:38:44',NULL,'127.0.0.1','Chrome','管理员',1,54,NULL,1,0,NULL,0),(535,'meet',7,1,NULL,'提交',0,'2017-02-28 12:36:58',NULL,'127.0.0.1','Chrome','管理员',1,54,NULL,1,0,NULL,0),(536,'meet',8,1,NULL,'提交',0,'2017-02-28 12:53:47',NULL,'127.0.0.1','Chrome','管理员',1,54,NULL,1,0,NULL,0),(537,'kqout',2,1,'同意','上级审核',5,'2017-02-28 13:13:38','好的','127.0.0.1','Chrome','管理员',1,23,'green',1,0,NULL,0),(561,'fininfom',8,1,'同意','上级审批',0,'2017-03-08 09:51:28',NULL,'192.168.1.63','Chrome','琢瑜清泉',5,11,'green',1,0,NULL,0),(562,'fininfom',8,1,NULL,'撤回',0,'2017-03-08 09:51:44',NULL,'192.168.1.63','Chrome','琢瑜清泉',5,11,NULL,1,0,NULL,0),(563,'fininfom',8,2,'不同意','上级审批',7,'2017-03-08 09:52:30','lalal','192.168.1.63','Chrome','琢瑜清泉',5,11,'red',1,0,NULL,0),(564,'fininfom',8,2,'不同意','上级审批',7,'2017-03-08 09:58:24','haha','192.168.1.63','Chrome','琢瑜清泉',5,11,'red',1,0,NULL,0),(566,'reward',2,1,'无异议','当事人确认',35,'2017-03-09 14:33:18',NULL,'192.168.1.152','jouryu','琢瑜OA客服',8,39,NULL,1,0,NULL,0),(590,'kqinfo',11,2,'不同意','上级审核',1,'2017-03-17 13:48:59','哈哈哈','127.0.0.1','Chrome','管理员',1,5,'red',1,0,NULL,0),(591,'kqinfo',11,2,'不同意','上级审核',1,'2017-03-17 13:49:17','哈哈哈','127.0.0.1','Chrome','管理员',1,5,'red',1,0,NULL,0),(592,'kqinfo',11,1,'同意','上级审核',1,'2017-03-17 14:11:04',NULL,'127.0.0.1','Chrome','管理员',1,5,'green',1,0,NULL,0),(593,'sealapl',2,1,NULL,'提交',0,'2017-03-20 09:39:47',NULL,'127.0.0.1','Chrome','管理员',1,49,NULL,1,0,NULL,0),(594,'sealapl',2,1,'同意','上级审批',41,'2017-03-20 09:40:11',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,49,'green',1,0,NULL,0),(631,'work',10,1,'同意分配','任务分配',51,'2017-03-24 16:20:22',NULL,'192.168.1.63','Chrome','琢瑜清泉',5,4,'green',0,1,NULL,0),(632,'work',10,3,'执行中','执行人执行',52,'2017-03-24 16:23:16','开发中。。','192.168.1.63','Chrome','李四',9,4,NULL,1,2,NULL,0),(633,'work',10,1,'已完成','执行人执行',52,'2017-03-24 16:23:22',NULL,'192.168.1.63','Chrome','李四',9,4,NULL,0,2,NULL,0),(634,'work',10,2,'不同意','提交人验证',53,'2017-03-24 16:23:49','哈哈,退回到[任务分配(琢瑜清泉)]','127.0.0.1','Chrome','管理员',1,4,'red',1,3,NULL,0),(635,'work',10,2,'无法完成','执行人执行',52,'2017-03-24 16:24:49','分配给其他人吧,退回到[任务分配(琢瑜清泉)]','192.168.1.63','Chrome','李四',9,4,'red',1,2,NULL,0),(636,'work',10,2,'无法完成','执行人执行',52,'2017-03-24 16:26:17','给其他人吧,退回到[任务分配(琢瑜清泉)]','192.168.1.63','Chrome','李四',9,4,'red',1,2,NULL,0),(637,'work',10,1,'同意分配','任务分配',0,'2017-03-24 16:27:01','啊啊啊啊','192.168.1.63','Chrome','琢瑜清泉',5,4,'green',1,1,NULL,0),(638,'work',10,1,NULL,'撤回',0,'2017-03-24 16:27:09',NULL,'192.168.1.63','Chrome','琢瑜清泉',5,4,NULL,1,0,NULL,0),(639,'work',10,1,'已完成','执行人执行',52,'2017-03-24 16:35:53',NULL,'192.168.1.63','Chrome','张飞',6,4,NULL,1,2,NULL,0),(640,'work',10,1,'同意','提交人验证',53,'2017-03-24 16:36:01',NULL,'127.0.0.1','Chrome','管理员',1,4,'green',1,3,NULL,0),(641,'sealapl',2,1,'同意','保管人确认',42,'2017-03-24 16:42:22',NULL,'192.168.1.63','Chrome','张飞',6,49,'green',1,2,NULL,0),(642,'sealapl',2,1,'已盖章','申请人确认',43,'2017-03-24 16:42:59',NULL,'127.0.0.1','Chrome','管理员',1,49,NULL,1,3,NULL,0),(648,'work',1,1,NULL,'提交',0,'2017-03-29 10:57:58',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(649,'work',1,1,'已完成','执行人执行',0,'2017-03-29 11:02:44','转给：小乔','127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(650,'work',1,1,'已完成','执行人执行',0,'2017-03-29 11:37:52','转给：小乔','127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(651,'work',1,1,'已完成','执行人执行',0,'2017-03-29 11:38:23','转给：张飞','127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(652,'work',1,3,'执行中','执行人执行',52,'2017-03-29 11:45:46','执行了','192.168.1.63','Chrome','张飞',6,4,NULL,1,2,NULL,0),(653,'work',1,1,'已完成','执行人执行',0,'2017-03-29 11:50:15','ha ,转给：管理员','192.168.1.63','Chrome','张飞',6,4,NULL,1,2,NULL,0),(656,'work',1,3,'执行中','执行人执行',52,'2017-03-30 17:25:38','h','127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(657,'work',1,1,'已完成','执行人执行',52,'2017-03-30 18:11:23',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(658,'bookborrow',3,1,'确认归还','借阅人归返',40,'2017-03-31 09:36:21',NULL,'127.0.0.1','Chrome','管理员',1,46,NULL,1,2,NULL,0),(659,'work',1,2,'不同意','提交人验证',53,'2017-04-06 09:10:38','我','127.0.0.1','Chrome','管理员',1,4,'red',1,3,NULL,0),(660,'work',2,1,NULL,'提交',0,'2017-04-06 14:07:50',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(661,'work',3,1,NULL,'提交',0,'2017-04-10 17:14:40',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(662,'meet',9,1,NULL,'提交',0,'2017-04-11 09:07:15',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(663,'meet',10,1,NULL,'提交',0,'2017-04-11 09:18:59',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(664,'meet',11,1,NULL,'提交',0,'2017-04-11 12:15:45',NULL,'127.0.0.1','Chrome','管理员',1,54,NULL,1,0,NULL,0),(667,'project',3,1,NULL,'提交',0,'2017-04-13 11:59:43',NULL,'127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(673,'schedule',4,1,NULL,'提交',0,'2017-04-17 08:43:03',NULL,'127.0.0.1','Chrome','小乔',3,12,NULL,1,0,NULL,0),(676,'kqout',3,1,NULL,'提交',0,'2017-04-19 12:57:28',NULL,'127.0.0.1','Chrome','管理员',1,23,NULL,1,0,NULL,0),(677,'kqout',3,1,'同意','上级审核',5,'2017-04-19 12:57:48',NULL,'::1','Chrome','琢瑜清泉',5,23,'green',1,1,NULL,0),(678,'customer',2,0,'取消标星','状态切换',0,'2017-04-20 13:03:23',NULL,'127.0.0.1','Chrome','管理员',1,7,'gray',1,0,NULL,0),(685,'goods',3,1,NULL,'提交',0,'2017-05-02 13:35:05',NULL,'127.0.0.1','Chrome','管理员',1,9,NULL,1,0,NULL,0),(697,'fininfom',9,1,NULL,'提交',0,'2017-05-08 19:35:20',NULL,'127.0.0.1','Chrome','大乔',4,11,NULL,1,0,NULL,0),(698,'daily',18,1,NULL,'提交',0,'2017-05-09 14:20:31',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(700,'knowtiku',4,1,NULL,'提交',0,'2017-05-09 20:08:51',NULL,'127.0.0.1','Chrome','管理员',1,43,NULL,1,0,NULL,0),(707,'daily',19,1,NULL,'提交',0,'2017-05-16 20:09:02',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(708,'knowtraim',1,1,NULL,'提交',0,'2017-05-16 20:35:12',NULL,'127.0.0.1','Chrome','管理员',1,56,NULL,1,0,NULL,0),(723,'kqinfo',15,1,NULL,'提交',0,'2017-05-18 12:11:37',NULL,'127.0.0.1','Safari','管理员',1,6,NULL,1,0,NULL,0),(725,'kqinfo',15,1,'同意','上级审核',3,'2017-05-18 12:58:56',NULL,'::1','Chrome','琢瑜清泉',5,6,'green',1,1,NULL,0),(728,'seal',2,1,NULL,'提交',0,'2017-05-18 21:04:59',NULL,'127.0.0.1','Chrome','管理员',1,48,NULL,1,0,NULL,0),(730,'knowtraim',2,1,NULL,'提交',0,'2017-05-19 16:08:09',NULL,'127.0.0.1','Chrome','管理员',1,56,NULL,1,0,NULL,0),(732,'knowtraim',3,1,NULL,'提交',0,'2017-05-20 14:31:55',NULL,'127.0.0.1','Chrome','管理员',1,56,NULL,1,0,NULL,0),(739,'fininfom',8,1,'同意','上级审批',7,'2017-06-09 20:33:16',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,11,'green',1,1,'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAB4CAYAAAApDe1iAAAOz0lEQVR4Xu1dWc5GNw11GVoohSJAQoIHJB5YAWJXsAXULcCuUDfACxIPICEQQyllHuTqs2rSDE5i5yb3nu/lH74MzrFzruM4uW8QPkAACACBIATeCGoXzQIBIAAECAQDIwACQCAMARBMGLRoGAgAARAMbAAIAIEwBEAwYdCiYSAABEAwsAEgAATCEADBhEGLhoEAEBglmH8R0WeIPt6F+u/rp0az9j/+juviAwSAwM0RsBKMJhQNyX+I6LM3xwjDAwJAYBCBEsGAUAYBRTUgAAQ+QUAIBoQCqwACQMAdASYYXuYI0WDJ4w4xGgQCz0WgFKR9LiIYORAAAm4IgGDcoERDQAAIpAiAYGATQAAIhCEAggmDFg0DASAAgoENAAEgEIaA7CIhszYMYjQMBJ6LABPMv5GN+1wDwMiBQCQCTDD/JKLPR3aCtoEAEHgmAkwwHxHR288cPkYNBIBAJALWw46RMqBtIAAEbooAdpFuqlgMCwjsgIAQzB3PIOkzVow130MjH+ya7WB9kOH2COhDjk+adLkLsW6vbAwQCKxGQAiGJxwHe78UKAB7FPwRr+lqQmN5rpYhEG40DQSuR0ATDN8J47FdzXk13K6O76TXZPLfVy/L4MVcb3+Q4OYIaILxmPAS52jtTkl8pFVOw+/tcYBgbm7cGN71CGiCmbmMW7wWbsNyRy97S1yuh2C8vR5kMF9vf5Dg5gh4EIzVa0mh7PUgmBDkTQYeagHBeKCINoBABQG9iyRxkx7AeNli9VpyBNO7LPNcJvUSXA8uKGtD4EMielM9OMQec55tS1/yoEPg3ob9klIzBNNSeGsAI3GY2T61TJ5ttcZ6+vd/SYhAdgNnvNIa/vydEAZ7mv8goncqII7Y0uk6OUJ+IZje5YeHJzEah+mJ29SUAIKpm+jfX6RSwkkIQGJjTAKRaQ4laUeX6EdM0NOFlMnKJ6o/Zwy6ek7M3rZ6y9f040GSp+s/J788bPi7mcB/NDa9GwvR8qD9DAJCMOwC84nqlnfgPSl7d4a8CAYu9aeN4aTX18BrOYTONKFYyMNrggs8vRPdq39uxyux8BBVV8UUPfAy562NB/QrIvrW5p7VxvCtF00TjATWalF4763d3jiMB8H0LAfXawQ9lhCQpRv/5OU8PgcgoAnGMvEsXk7vsK2k0evt1IKCO8cWevF7QnksiQ7VchpzqS0denearJBY4jBCfr15MzkZIkjSOlaU60Pgr0T0BSyJ+kDbqXRKMDUvwUIEI2OzeCY6ANkKRNdksHpLI+NAHV8EROf8cOFkPHwORKAnYzJqclriMDrxajRTM0r+A9W+vchYEm2vIpuAJYJJYxRRyyORsrVsEYIZOc7AfYBcbPZwdSnexeIrQxAju1oTTv3nCCYX7I1aHskwuP2/EdEXC+OSy6pGvBeQi5OxBDcjS6KaHQSLgOa9ESjFM9Jgb8vDGJFLt8n9eW8/8tOQtzNHSGlkPKgzjgCWROPYbV2zRDA68GrZvu4dZBrY9faQopd0veNF+TwCEn/z2B0ExhsiUNuREQ/DssvTO7R02WJJ8rP2ESGvtW+UsyMgevo1EX3bXg0lT0KgRjASF/HOQ8gRgBcpwNU+w/qgpzP0NC1li2DkaIDnuZ1c0FUvaUbjPd7LrGlw0cCnEJBgPevKcrUqIDwcgRbBiGcxEyjlbEy5tawF1+j2JMvJJIiErBbC13zvlSh5jfTodRiBFsGIt9GTPcsTPXd3bq0tSQnv6UcGPerxDIOGimYE9N0yHxDRu+aaKHgLBFpB3tIdqXzbmVxQlZ7I1tdw8lax5La04iwz+Sogmb3MURPL7ldA7IXczaSpEYw2EimX805kB4i/q90l0iKBVrJdDfoZcrqZSi8djqQ0sBDeeU2XDgydjyFQI5g0R6HlgdQksCyBZpLtLAQjAcZUzpn40hjq96vF2bfycEFOy/30OzyiGsEIKejGR2IkXN96oHHUOFsXYZXIsVVvGNiHVPw5EX3vNdbRAP1DoHrmMFuEIRNzdOILqpbM2plku5oHM/rdMy3CPmrJZQGx2DF7XMkWwXglRFmWV5YyJQWVSKS1dIIH02/yoicQSz92j6thIZhZ74VBtXgnFi+npKAcUbSCyiJXC4PHGUVhwDqX5adE9CMAAwRaCLQml5cHU8qy1cRgidNYPRjxXNIkv9wZKAR561aidxM/uujlai07xvebItAimJllix5yaYdIE4xlp6lFMEJSaTkhONxGbzdEjSWurbTjhpIKgZUEk14kJNvG2oOwLGu0Ajnhj29A43Fo74Tb0Ul+ULodAblVjmsgl8WOG0pmEGgRDFfpnfQ5oNM2Sp5RKygrRp8uazzOTD3dQOTtnqLznQ4jyjLNYh+iR8vuIQLVwVZvIZhZEdILqyyKL5EU/1+8FW5Xkru8YkWzYz2x/k+I6IcvwXeacDr2E0V6PYR1om4vl3kFwWhvpeUN5RRuOYnbavdyoDcVQG85/4GIvqquGNWkLb9HB8RXkEoaG1wxBzZVf7xYK8CVLWruq9WfBGOlrBBOq148UvYetDsfPSHtUv1/SU3aaRulgLgl1aBHHrkzWXQruvZIi7DKAQ/GitRguRUTt2f50lN2cMgh1XIxghXY9gymdo2G9S4dr11FTXCsc2v/PeO1lAXBWFCaKLNiEliXL17GOwFHV9XSlvgur93QHkK6w/ZHIvp612g/KTw7KXfS8+xYBiF8TrVogrF6JEJCuytcX0fAVqLlvXpL9xdE9J3Ka1q8rj2dJQjrA2fFLNzd3lZgENpHJMH0xF4k4W5HhediBdpLWRkzSI2hdD+PToyLkG9UT6P1oibBbvJEjfOydqMIRnskFgMXRe+icE6J57cpaHxk0jIZyv9XB3E525m35lO9iff0JyL6ysuaLLiPGt6IF7OT5yLj3sXeRvWwfb0IgtFbnwyAZRLu4MH89hWX0Jikywrrks9T8enWLbfNGP+SiL6rOhLZ+KcF81kZewgj4uV9s/KnS1yP9tBGgkAUwUg3vYZ+xRMl3bLNPfkly3XF5OXJyFm0+vhDaadFvyzeSuZek6DHi+kp6yWfpZ0r7M0i123KRBDMDDjRCteTVz/BassJmRxeQdIUH32eSn9Xk0l7NStIr6RTIT4+D1b7eOfQzNiYrhttb15yHtvOnQkmJZPUsHiSWiYG1/PE6TdE9I3MMoYJ5XdE9M2CNf2MiL6vZImMsVgN2rr0sRKRtV+vciAYLyQL7XhOHA9RZxSuA7O6Hf7dQiZafpk4Xt5BLo7CbevzVCX80q1x9ng4AL3Lx+Kd9MRrVo5rxt5WynlsX6cTTM5LmX2yy5LI43IlvY3cS3RptmtvPGulUdYIZNf4i14ir8TqUX2dSDA5b8ArPuK5S9SaWK3b9sQQvbyoSMOueQL8HY/17UgBBtuGBzMInLXaCQSTy0lhw+BkNw+j1Tsx3K7HPSg5oqqdBUq9rg+J6MsvJe4av7AES2fuWbba8Ew5XPo+g56h7q4EE7H0SeGI2IlJX1bHfTJ58Eew5r/ltj3LMsgS4zCoOrRIyRPg/88uWSMFhwcTia7z7sisqJFLH5GNPQP2evRk9/BYhEj0lRSaPDSR67cgcr3W8q611JrF3aN+LgbDnie/l3y3h5jF8/LABG1spHw9GSPW6+nJZ06ce8fRAtIlUY4UUo/pfSL6gUEG61awoamwIrll3MmeVxhQT2t4h6eLdqO9XVZNXBGuem5JlE42Dxl23eaV+ZIjk91lZtm97e1p/NEc79UEkz7pPRSub8VnAKJeuZHzUmSiiYck45mVwQOXpjFMFEix+OAVpL7avlpD2h3Xlvzbf3+lAeRetDaj8IigbUmBuV0i7anI09Erd2UGlxVGmC7jZl6it0Je7XldOQdWjvWSvq4EN+dC906k2aBt6da3VBlaLvld56foGE9E3kovLlcYk9bnCYFpxgjb1MGWciXB5IZmnUijQdvfE9G7hXNAlt0kHWuQ2JF4KRExnpOetIwHEzbfV3MKwVjtLXga3rf50whmJGBauvWNz/TwNqr1o5cBlvwVa7uWcidMhDRYH+HJWbDqKXMCrj3j2a7s7gTz59fL1vXdKK2AaevWt1EliPeSu+VutE1rvRMmQs67s3iFVgy8y0kyp1eczFu+W7S3I8Hk8j5ay4/SrW98heTXHDSlPRZJ49dPbIcuqk2cECvQyyLGRh93GMHnx0T03khFQ51ckN5QDUV6EdiFYHKvAKnd0p+7mkHyT97sBcFQvhSQXrUMOMGD0eeOvHJgSnrWHq1WXwmnNEjfe32HwURQJIfAlQSTeh1iBCWZVpxP6rGSlQf5TiAYjmkxufPP3MXkPdii7E0QuIpgxJ3micNJafrksJZpxfmkUVVKQt8KDE8gGMaR9Spe3QpcRnWHeosQuMIIcpOFJysHBHXATeebeF3N4A2r11KgJdcpBKMD4VfYVgtHfL8YgdVGIIFRfeo4HTJPWvZcImIp3vCumvir+pnFR4Knq2JTs/KifjACKwkmTaXPEckpE0nUsmJ3h3HizwnbqUIwrV2/YLNG87sgsJJgLGNeMWEtcljLRBKijj/tpqcSPkIwu11MbtUnyjkjsJvhRk5YZ+g+bi6V14MgZTeG25fU+wjZI9o8yduKGD/aTBAAwcyZREooswSJJcacPlB7MwR2JJiT1u8eBCNLISGXE2Itm5kxxNkVgR0JhrHaTS6r/qweTJrfcxKpWrFAOSCw3UQ+/YxILQahPRUmUJAKJuDtEdjNUzidYMRgdKayPjcDUrn9lMIANQIgGNgDEAACYQjsRjCn3IQWphA0DATuhMBuBHOXJdKdbARjAQLDCOxGMBwIZZmwVTusUlQEAvsgsBvBMDKrTijvowVIAgRuisCOBHNTqDEsIPA8BEAwz9M5RgwEliEAglkGNToCAs9DAATzPJ1jxEBgGQIgmGVQoyMg8DwEQDDP0zlGDASWIQCCWQY1OgICz0MABPM8nWPEQGAZAiCYZVCjIyDwPARAMM/TOUYMBJYhAIJZBjU6AgLPQwAE8zydY8RAYBkCIJhlUKMjIPA8BP4HOv1KpvOddYwAAAAASUVORK5CYII=',0),(740,'fininfom',9,1,'同意','上级审批',7,'2017-06-09 21:35:04',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,11,'green',1,1,'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAB4CAYAAAApDe1iAAALGElEQVR4Xu2dy+4lNxGHK0CAkAAJCCYI2CLB47DLW5AtCxZZZAtvwY7HASnbJBID4iLuEG4q5VTi/5nT3W7bZbvc35FGmpnTLpe/Kv+O25ful4QPBCAAAScCLznZxSwEIAABQWBIAghAwI0AAuOGFsMQgAACQw5AAAJuBBAYN7QYhgAEEBhyAAIQcCOAwLihxTAEIIDAkAMQgIAbAQTGDS2GIQABBIYcgAAE3AggMG5oMQwBCCAw5AAEIOBGAIFxQ4thCEAAgSEHIAABNwIIjBtaDEMAAggMOQABCLgRQGDc0GIYAhBAYMgBCEDAjQACI/IPEXlZ5PTDt5Tdf0Xks27RwTAEghO4isB8ICLPEjFo1e5WdoKn0a77/75xh9XKUd5o24pB/5OIvHYwIvmfiPxHRJ6LyHcK4q7lGb3kg4NXPqulrlxFYPRX8jN3oqJJrX8+EpEvNowav8jnYcLsPLMlSkQWmL+JyCt3UdBRyeccI6OjFmUWmZsjnl3TjGJGkR9Yb9SOokKiIxZN2r+IyFc6MNS69BOFmYqhff7VeBRXgltjph8mxUvoBS0TpbOkeHuPInSC+Ns3MVNRi/IxQbz3d9TcEQITJXMa+hlNYHqPImykpHMIupQd+fPPu+V4ZdlTMBGYyNlT6Hskgel9D997pFQYwqJiestkgqlc/ygiXyuylF8IgclntcyVUQSmd3L2HimNSqjfi8gbSeW64vZ5J2d6x9CpGZg9QwCBeUpLO5iuQo2apzgTu9bX2ohN7Xq0H4FpHbEA9qIITA+U1sE+LNx818PHHnXYvJPV1SpHEJge0ZusjlbJM1mzTrtzlVuis2BaikJLW2fbwfWDCFxdYHQPzasBl6B7pUtLUWhpq1f7qaeSwJUFxrav6/Jty6MElSGZqnhLUWhpaypIOLNN4KoCs/IS9Kz5jsDMGhlHv64oMMy3OCbUjmkEZgz3obVeTWDshHXPHaxDAzxR5QjMRMHo5cpVBMYmcz32d/SKVfR6EJjoESzw/woCY5O5f709iKoAE0UaEEBgGkCMZmJ1gWEyd56MRGDmiUU3T1YWGCZzu6VRVkWIfRamtS5aVWCYzJ0vT+0Iwqo5Nx/xCTxaLdi9DiumT4vbCyOrVZ/S0Q2NelJ7tZyboBvP68JKwbZbIu/J3K0nxW1FeSXGtZms7H4mIm/XGqJ8DAIrJL+tEvV4QlvJPIL6NTNnffHco2fAeIy+lMUKTweM0bsn8HLmxM/BY6MJfULbFzYK6L3/o3aqWJx5A4E9Ba6E2WwiY6K8x9hDsHs/lTAnh7jGkUBJZ3F0J9t0+laBR7+0+koTPcCY076ca9SxWpGoLZ8N5+BCE2V7Z9QjYdbv9kS71Bcm30vJBS2X27lmap51EN2d++U7x+4flvR3EfnSjvO5KxstxKFmBNSKf84IQm+ZVHQ8cqPkFrNV27EzgIBHEnk1Y2vUcj9aOXsc4KjTtfw1j/AL7ikCvOHRq3dMajeCwPxSRL5/4/crEfnB7e/38whHo5WtEOwlvYcg2K2J18O1a1OtxWhty4ff3d5eECHvajlqeR1l6626vSTwci+dmz3Q9muajkpsP4UG8OxoZStpHo1ivH7JZ94y7ykuxl7r0LcZfL1FDx5s4+ci8sPb2yptLnCrT83e11xQztroPycHE83H5yLyzRuFVsJiUO/FxHMeYlaB6SEuNlnu/Q7xFp1FRx86F6XCYTmY019s1Ksj6tdaOBLZRg6w3u17NGqx//NYOtX23U/AeoqAp+3SWPUSFxMYrzieaX96+5LbD0w8NB91JH15ATkCngv2yE6L723UoLbMr/RdPd6+avL84TZH4CkCnrbPxmHEypbXredW23OExFYm1TeNzy9E5K2zMLn+RQLenTaXuSWdDZ3T5ebfiMizXEMV16XzMJ4i4Gn7TPN7d3TzLXdrwJm26LW5QqJx5vblLN3C62cQGPv1UF9SYfHY6LWHKV0x8hQBT9s5aZC+l3pE/O1AamndCElOlCe5pjTIrdzXTq3LxOmW/VETgOkvq6cIeNo+iouNWjzfQX3kw09F5EcZG/neEZEf302y3ttmQvWI9uDvRwmMznW8nrRdE0VXjr46kIe9CN5GUuqKx76FEQIzetTySBjS91H9VkTe2BEThGRgx6ipeoTA2C2R+j3byVrbBGfCsoLAzDBqSXNUd16/snO2S2OgIvxyTWJTdg4CvQXGTjZ7PAqgBVH7pTQRjCww6U7n3nG2WOgoRW9/t+Kt4qd+bp2EbxFTbAwkMCrxBjZ5t2q7fbGLUoGxp9jViuPR2adaNqmw9Jxr0bqU16OcMuFWwdHDpx5HMGq5Ud6BAALzFOqewKS3dqXcvA/7pfs5akZf79+28qsN28n6aDfrnpjonNY3NnIWgXHozDOaLO0oM7alhU97AmP2rXPov3XyVA+z5X48d8ymfj3yxyPWNhp7V0R+kgvhNoJpfdzjRPVc2ouAR9L18t2jnhyB0XrT0UwqPHs+KWtP3o98Sv1Jv7e/p1vfte162vm7HmDvbNr2BCZyO8AeWYVnwo9sV2nduQKT2td5Be0oRyyPvi/1OWI5FRhdTXo1ovP4nE+ApH/KqkRg8mlzZTraI/cukA8EGYHpneb6WhldSSL3epMfUB9Bfgo9fVSEflOzEjMgnCGqrD2LFKKROPkxAQTmxRGMLsvanhcEpn1P8TpN3d5TLFYTQGCeItSTujrxiMBUp9amgVGPifBrEZY3CSAwL6KxvR3cIvl0HATGh+uUVhEYBKZ3YrKLtzfxgfUhMI8FxjoBczDtkxOBac90WosIzOPQ6DBeOwIC0z51vQ97tvcYi8UEEJjH6EY8FKo4iMEKckwgWMBq3EVgauhRtoQAxwRKqAUtg8AEDVxgt3NOlNs2gdJmavn0Oc+ldihXSQCBqQRI8VMEco8JHJ0Mz62U/M4l5XQdAXACi9mHBHoeE7Adw63EykZVjIxOJDcCcwIWl1YTGHFMoJXAmJ3aR6ZWQ4xkAIGJFK34vrKLN34MT7UAgTmFi4srCSAwlQCjFUdgokUstr/s4o0dv9PeIzCnkVGggoAKzHMRebPCBkUDEUBgAgUruKver2wJjmdN9xGYNeM6Y6uYf5kxKs4+ITDOgDH/CQG9PdJlavaRXCgpEJgLBXtgU38tIs94ROvACAyqGoEZBP5i1XJ7dLGAW3MRmIsGvnOzWZ7uDHyW6hCYWSKxth8sT68d383WITAXDXzHZrM83RH2bFUhMLNFZD1/mH9ZL6bZLUJgslFxYSEBlqcLwa1QDIFZIYrztoHl6Xlj08UzBKYL5stWwu3RZUP/ccMRmIsngHPzWZ52Bjy7eQRm9gjF9o/l6djxq/YegalGiIENAixPkxrcIpEDbgSYf3FDG8cwI5g4sYrmKcvT0SLm4C8C4wAVk8LyNEnAKhI54EaA2yM3tLEMM4KJFa8o3rI8HSVSzn4iMM6AL2qe5emLBv6+2QgMidCaAMvTrYkGtofABA7epK4z/zJpYEa4hcCMoL52nSxPrx3fU61DYE7h4uIDAixPkyJPCCAwJERLAtwetaS5gC0EZoEgdmzCeyLyvZ36WJ7uGIwIVSEwEaI0j49H8yv6vd4mfWsel/FkJAEEZiT9mHVvjVJYno4ZT1evERhXvMsaV5HRT5o/zL8sG+7yhiEw5eyuXvJeUI5un67O65LtR2AuGfZmjTaR0XmXN3kEazOuyxhCYJYJ5bCG2NzL/S3TMIeoeB4CCMw8sYjsydHydeS24XsFAQSmAh5FIQCBfQIIDBkCAQi4Efg/VyjGiBTW4kMAAAAASUVORK5CYII=',0),(741,'fininfom',9,1,'同意','人事审核',8,'2017-06-09 21:35:52',NULL,'127.0.0.1','Chrome','大乔',4,11,'green',1,2,'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAARgAAAB4CAYAAAApDe1iAAAJ2klEQVR4Xu2dyc4dNRCFK8wzCyTYIIHEjvd/FlawgwVIERJjmFEpv0PTf9/bHqraZftrKYqUdJft75TP9dDDE+GAAAQg4ETgiVNcwkIAAhAQDIYkgAAE3AhgMG5oCQwBCGAw5AAEIOBGAINxQ0tgCEAAgyEHIAABNwIYjBtaAkMAAhgMOQABCLgRwGDc0BIYAhDAYMgBCEDAjQAG44aWwBCAAAZDDkAAAm4EMBg3tASGAAQwGHIAAhBwI4DBuKG9LPBfDyW9fFmJFASBTAIYTCaowKdhMIHFWb1qGMz4GYDBjK/htC3AYMaXFoMZX8NpW4DBjC8tBjO+htO2AIMZX1oMZnwNp20BBjO+tBjM+BpO2wIMZnxpMZjbGj4TkddE5KXxZR6zBRjMmLpta43BHGv4t8iLl9qT553yHPCdwBsWi8E8hvnPwz+R34aJVhMKAWqoxboGg/lPjz9E5BURUYNhWhQgTzGYACI0VgGDeQ4wjVp+F5HXG5lyuREBDMYIZMcwqxtMWmth1NIxCW8VjcEEFKWwSqsazA8i8i5rLYXZcvHpGMzFwB2KW9Fg/hQRfXpc/37VgSkhjQhgMEYgO4ZZzWDSlIjc7Zh0uUUjUi6puOetZDCYS9w8PKwZBjOYYAfVXcVguLdlwFzFYAYUbVflFQxGzYVdogFzFYMZULSFDCYt5qqJ6g10HIMRwGAGE8xxiqR3werOTIQ7YJOxaHN/FJH3xpdpzRZgMOPrfjZF+lpEPngYAaje6Y+2/Ej/njmxNRZd0OVF5oPnZ89kGhxd9+p/KSKfbkYcNVrquoYaVO97SayNRdulIzJ9VQNHRwI1SdmxussW/bOIvLEbfWxhpB2W9Lf++munfSoiHwentq2zxYiFrexAgmMwgcR4qIo+rKcLmre00Q6p5pF+ndMoZLRFUB056XqP5VRI2elojLwOktcI0UeI70XknYcOtl0T2Y9K1Dx+E5G37lRTz/lORD7q05TiUtOI5dYaUHHAzQVMjVroOVyLwThAFZEcA9mbif6SfyMinxRUSc1HRzKj6Hi2IF3Q9EenMjVqoed07SiJ6dT8qrC6HpLe85r4nXFMN4ppJ/hFRN6vKvnxRWmacVa+UXHNYZSDR12ZGjVL4xPAQ2yfmvpG1Y6/P0rYeBnIWav51X5OSPlbruWccef/MwmUdKLMkEOetl0XSA3Y7sxo8uqv5NvBWkfHer7grbtP5HKw5NTqIEpAUQqqpAaz+isiMdmChLn6VAzmauJ25X0rIh8u/iPB6MUun1wiYTAuWC8JSueKvfaimwFvBnm265KEPCoEg+mGvrng1Rd4Ixps2tXbirt0H1u68c1dvG+A1d+REmHtJT2Bvu1HUZ7v6pudD6VjMCFkqKrEqI8IVDV2d1GP0ctPD8+D6eMN+37DFvkNVTEYi3TvE2O0RwQsKXnunt0zku0tDL8GvG3BkrFJLAzGBOPlQUZ7RMASUOvU8AsR+Wz3cq17D5ZqeWom+uwYRyEBDKYQWJDTR3tEwArbWbt19KGfjd1OY3JyPJkWRmKlFGswxiSvDRd5B+nosQsrOmoWpV8X2D7GoSM/RiJWamTEyXH3jDCccjGBCDsot5p89NiFB57ti6p0ZPOViHzuURAx6wlgMPXsel7pucjZs123yo48YovIK0ydMJgwUmRXZLVHBHpsSWeLwYn3CWAw42XIah1u5e348bJzV2MMZjwJV5ouRF5rGi9zOtQYg+kAvbHIVTrdSkbamBJxL8dg4mpzVDN93aY+oTu7bkc3EpZsf6etaX1WSHlxdCIwe6J2wupWbM6v+lFH1H8b6bMmR18HsNz+Tgak61l6Yx6HEwEMxgmsU9h02/rZZ0xuFT/CR+RzTLQUr96hm76XpDl/L+/TLQD6oTuORgIYTCPACy8/u03+rCrbd5VE/axqr68D6JQsfexu3ycwnLPMuvP/GEwDvIsvtVrc3RpNNP2Ppka1mHUkpM8k3Tq2U8mj89R0jr4SieEUKBItwQqqvtSpHou7HlORFlGs63P2zNJ+TeesL9wznG2775laC58hrz2DOmSjJqy0dedLiNKURDtPzzUHj6mRTgPvfeN7myY1089bhkOf2pAFxhhulLO429KS1nestJSt11pOjbZ10bi5Oe7NuJXRkNfnwh+ycZNUuubXtabpZ1OKmpg513iNzpJx6Va0rqWcHb1N9qx+Q/4/BhNftisTP3X23E7ZSs9jarQfwSi/nHURj3WuVj7DX4/BxJfQavcot6XpLlo93zs/vF87oaM/PfTTsjnH1axz6jT0Od4JNDScIJXXpO9xg1wazeSOAEpxXTEyKzUYz+laKZ8pzsdg4suoHfFZx2dq0tqM3g177w7iEpJXdeRSg1HO+ugA/aJEzTvnAtIIpGOYkp0Qr2qkLV+L7/9c2YlLDUb5eU/bvDQKGReDCSnLi0rpqEHvT4miU6+dplqVag3Ga1pY245hr4uSuMMCdK54xLfXXTW9sUBbYzAjtc+CkWsMDMYVb3Pwq+6BKa1o1Hrt21FjMKO0rVSzLudjMF2wZxca+de0pvNmN9zoxJo6Rhw1GuG4PgwGcz3zkhKv2Motqc9o59bwi7buNRrz/9UXg4ktn3aQq+6qjU2irna1N85F2Lmra3GwqzCYYILsqkOit+lTu+Xc+96jtlYHuhqDCSTGriolrxuI24q+Nas16F53T/el5VA6BuMA1Shk5AVeoya6hjn6MkFugbVTq9z4y5yHwcSVmiRv06Zlu7lmcbittpNejcHEFJat0nZdWkaANdvb7TWeMAIGE1NURi/turSYRMu17TWfKAIGE09MRi82mrSYRMu1NrWfJAoGE09IkttGkxaOLdfa1H6SKBhMPCFrt1bjtaRvjVpMouXavq0OVjoGE0wQqmNGoMUkWq41a8AMgTCYGVSkDdYEMBgjohiMEUjCTEUAgzGSE4MxAkmYqQhgMEZyYjBGIAkzFQEMxkhODMYIJGGmIoDBGMmJwRiBJMxUBDAYIzkxGCOQhJmKAAZjJCcGYwSSMFMRwGCM5MRgjEASZioCGIyRnBiMEUjCTEUAgzGSE4MxAkmYqQhgMEZyYjBGIAkzFQEMxkhODMYIJGGmIoDBGMmJwRiBJMxUBDAYIzkxGCOQhJmKAAZjJCcGYwSSMFMRwGCM5MRgjEASZioCGIyRnBiMEUjCTEUAgzGSE4MxAkmYqQhgMEZyYjBGIAkzFQEMxkhODMYIJGGmIoDBGMmJwRiBJMxUBDAYIzkxGCOQhJmKAAZjJCcGYwSSMFMRwGCM5MRgjEASZioCGIyRnBiMEUjCTEUAgzGSE4MxAkmYqQhgMEZyYjBGIAkzFQEMxkhODMYIJGEgAIHHBP4FYyt/iEppCIAAAAAASUVORK5CYII=',0),(778,'fininfom',8,1,'同意','人事审核',8,'2017-06-22 09:40:30',NULL,'::1','Chrome','大乔',4,11,'green',1,2,NULL,0),(779,'fininfom',8,1,'同意','财务审核',9,'2017-06-22 09:41:59',NULL,'::1','Chrome','貂蝉',2,11,'green',1,3,NULL,0),(780,'carms',1,1,NULL,'提交',0,'2017-06-22 12:47:42',NULL,'127.0.0.1','Chrome','管理员',1,58,NULL,1,0,NULL,0),(781,'carms',2,1,NULL,'提交',0,'2017-06-22 13:46:07',NULL,'127.0.0.1','Chrome','管理员',1,58,NULL,1,0,NULL,0),(782,'carms',3,1,NULL,'提交',0,'2017-06-22 13:46:32',NULL,'127.0.0.1','Chrome','管理员',1,58,NULL,1,0,NULL,0),(786,'custfina',4,0,'已付款','标已付款',0,'2017-06-26 15:54:48',NULL,'127.0.0.1','Chrome','管理员',1,36,'green',1,0,NULL,0),(787,'custfina',4,0,'已付款','标已付款',0,'2017-06-26 15:54:55',NULL,'127.0.0.1','Chrome','管理员',1,36,'green',1,0,NULL,0),(788,'custract',5,1,NULL,'提交',0,'2017-06-26 17:50:09',NULL,'127.0.0.1','Chrome','管理员',1,35,NULL,1,0,NULL,0),(799,'kqinfo',16,1,NULL,'提交',0,'2017-06-29 10:14:05',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(800,'kqinfo',16,1,'同意','上级审核',3,'2017-06-29 10:15:34',NULL,'::1','Chrome','琢瑜清泉',5,6,'green',1,1,NULL,0),(801,'kqinfo',16,1,'同意','核算加班费',59,'2017-06-29 10:16:07',NULL,'::1','Chrome','大乔',4,6,'green',1,2,NULL,0),(804,'flow_remind',1,1,NULL,'提交',0,'2017-07-01 13:48:58',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(805,'flow_remind',1,1,NULL,'提交',0,'2017-07-01 13:55:32',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(806,'flow_remind',1,1,NULL,'提交',0,'2017-07-01 13:56:36',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(809,'kqinfo',16,1,NULL,'评论',0,'2017-07-01 15:05:52','不错','127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(828,'work',3,1,'已完成','执行人执行',52,'2017-07-04 13:57:53',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(829,'work',3,1,'同意','提交人验证',53,'2017-07-04 13:58:15',NULL,'127.0.0.1','Chrome','管理员',1,4,'green',1,3,NULL,0),(830,'work',3,1,'评分','任务评分',0,'2017-07-04 13:59:11','不错，继续努力','127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(831,'work',2,3,'执行中','执行人执行',52,'2017-07-04 14:10:02',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,2,NULL,0),(854,'repair',1,1,NULL,'提交',0,'2017-07-07 13:12:53',NULL,'127.0.0.1','Chrome','管理员',1,62,NULL,1,0,NULL,0),(855,'repair',1,1,'确认','行政人员检查',60,'2017-07-07 13:16:36',NULL,'::1','Chrome','大乔',4,62,NULL,1,1,NULL,0),(856,'repair',2,1,NULL,'提交',0,'2017-07-07 13:37:28',NULL,'::1','Chrome','小乔',3,62,NULL,1,0,NULL,0),(857,'repair',2,1,'确认','行政人员检查',60,'2017-07-07 13:38:35',NULL,'::1','Chrome','大乔',4,62,NULL,1,1,NULL,0),(858,'repair',2,1,'同意','外修确认',61,'2017-07-07 13:39:18',NULL,'::1','Chrome','大乔',4,62,'green',1,2,NULL,0),(859,'work',2,1,'已完成','执行人执行',52,'2017-07-07 17:13:40',NULL,'127.0.0.1','Safari','管理员',1,4,NULL,1,2,NULL,0),(863,'company',1,1,NULL,'提交',0,'2017-07-08 14:42:42',NULL,'127.0.0.1','Chrome','管理员',1,63,NULL,1,0,NULL,0),(864,'company',2,1,NULL,'提交',0,'2017-07-08 14:43:58',NULL,'127.0.0.1','Chrome','管理员',1,63,NULL,1,0,NULL,0),(865,'company',3,1,NULL,'提交',0,'2017-07-08 14:44:23',NULL,'127.0.0.1','Chrome','管理员',1,63,NULL,1,0,NULL,0),(866,'company',4,1,NULL,'提交',0,'2017-07-08 14:46:21',NULL,'127.0.0.1','Chrome','管理员',1,63,NULL,1,0,NULL,0),(898,'admin',2,0,NULL,'设置为管理员',0,'2017-07-08 22:20:34',NULL,'127.0.0.1','Chrome','管理员',1,10,NULL,1,0,NULL,0),(900,'admin',2,0,NULL,'取消管理员',0,'2017-07-08 22:28:50',NULL,'127.0.0.1','Chrome','管理员',1,10,NULL,1,0,NULL,0),(902,'meet',12,1,NULL,'提交',0,'2017-07-18 10:58:50',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(903,'work',2,1,'同意','提交人验证',53,'2017-07-20 17:13:04','好的','127.0.0.1','Chrome','管理员',1,4,'green',1,3,NULL,0),(906,'daily',20,1,NULL,'提交',0,'2017-07-24 09:04:03',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(919,'kqinfo',14,1,'同意','上级审核',1,'2017-07-31 16:21:16',NULL,'::1','Chrome','琢瑜清泉',5,5,'green',1,1,NULL,0),(921,'kqinfo',9,1,NULL,'作废',0,'2017-08-02 15:38:14','太久没处理了，作废吧','127.0.0.1','Chrome','管理员',1,5,NULL,1,0,NULL,0),(922,'kqinfo',14,1,NULL,'短信催办',0,'2017-08-02 16:06:32','weew','127.0.0.1','Chrome','管理员',1,5,NULL,1,0,NULL,0),(923,'kqinfo',14,1,NULL,'短信催办',0,'2017-08-02 16:31:16','hahaha','127.0.0.1','Chrome','管理员',1,5,NULL,1,0,NULL,0),(924,'kqinfo',14,1,NULL,'追加说明',0,'2017-08-02 16:51:30','不错啊','127.0.0.1','Chrome','管理员',1,5,NULL,1,0,NULL,0),(925,'kqinfo',14,1,NULL,'追加说明',0,'2017-08-02 16:52:26','哈哈哈','::1','Chrome','大乔',4,5,NULL,1,0,NULL,0),(927,'meet',13,1,NULL,'提交',0,'2017-08-03 13:17:05',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(928,'meet',13,6,'签到','签到',0,'2017-08-03 14:14:31',NULL,'127.0.0.1','Chrome','管理员',1,2,'blue',1,0,NULL,0),(929,'meet',13,6,'签到','签到',0,'2017-08-03 14:15:20','签到','127.0.0.1','Chrome','管理员',1,2,'blue',1,0,NULL,0),(931,'kqinfo',14,1,'同意',NULL,NULL,'2017-08-04 09:42:57','错误','127.0.0.1','Chrome','管理员',1,5,'green',1,NULL,NULL,0),(932,'kqinfo',14,1,'同意','异常处理',0,'2017-08-04 09:59:14','很好啊','127.0.0.1','Chrome','管理员',1,5,'green',1,0,NULL,0),(948,'fininfom',10,1,NULL,'提交',0,'2017-08-07 20:42:59',NULL,'127.0.0.1','Chrome','管理员',1,64,NULL,1,0,NULL,0),(957,'work',5,1,NULL,'提交',0,'2017-08-12 17:31:36',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,0,NULL,0),(960,'meet',14,1,NULL,'提交',0,'2017-08-13 19:01:21',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(968,'work',5,1,'同意分配','任务分配',51,'2017-08-15 17:42:03',NULL,'::1','Chrome','琢瑜清泉',5,4,'green',1,1,NULL,0),(969,'work',5,2,'无法完成','执行人执行',52,'2017-08-15 17:42:53','哈哈','::1','Chrome','赵子龙',7,4,'red',1,1,NULL,0),(974,'meet',15,1,NULL,'提交',0,'2017-08-18 11:42:54',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(981,'flow_remind',4,1,NULL,'提交',0,'2017-08-23 14:25:55',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(1002,'infor',9,1,NULL,'提交',0,'2017-08-26 12:41:10',NULL,'127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1008,'infor',9,1,NULL,'投票',0,'2017-08-26 22:22:17',NULL,'::1','Chrome','张飞',6,1,NULL,1,0,NULL,0),(1009,'infor',9,1,NULL,'投票',0,'2017-08-26 22:41:04',NULL,'192.168.1.101','wxbro','赵子龙',7,1,NULL,1,0,NULL,0),(1013,'kqout',4,1,NULL,'提交',0,'2017-08-28 11:54:41',NULL,'127.0.0.1','Chrome','管理员',1,23,NULL,1,0,NULL,0),(1014,'kqerr',2,1,NULL,'提交',0,'2017-08-28 12:19:12',NULL,'::1','Chrome','貂蝉',2,51,NULL,1,0,NULL,0),(1036,'flow_remind',5,1,NULL,'提交',0,'2017-09-02 13:53:03',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(1037,'flow_remind',6,1,NULL,'提交',0,'2017-09-02 21:06:29',NULL,'::1','Chrome','琢瑜OA客服',8,61,NULL,1,0,NULL,0),(1038,'flow_remind',7,1,NULL,'提交',0,'2017-09-02 21:08:52',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(1045,'flow_remind',8,1,NULL,'提交',0,'2017-09-03 20:12:00',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(1046,'infor',9,1,NULL,'投票',0,'2017-09-04 20:32:25',NULL,'::1','Chrome','大乔',4,1,NULL,1,0,NULL,0),(1073,'daily',21,1,NULL,'提交',0,'2017-09-24 10:54:01',NULL,'::1','Chrome','赵子龙',7,3,NULL,1,0,NULL,0),(1076,'meet',1,1,NULL,'提交',0,'2017-09-24 14:48:44',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(1131,'infor',9,1,NULL,'投票',0,'2017-10-23 17:14:28','投票项ID(3)','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1141,'godepot',1,1,NULL,'提交',0,'2017-11-10 22:21:53',NULL,'127.0.0.1','Chrome','管理员',1,73,NULL,1,0,NULL,0),(1145,'goodm',1,1,NULL,'提交',0,'2017-11-11 15:43:29',NULL,'127.0.0.1','Chrome','管理员',1,28,NULL,1,0,NULL,0),(1146,'goodm',1,1,'同意','上级审批',19,'2017-11-11 21:58:14',NULL,'::1','Chrome','琢瑜清泉',5,28,'green',1,1,NULL,0),(1147,'goodm',1,1,'同意','行政审批',20,'2017-11-11 22:07:42',NULL,'::1','Chrome','大乔',4,28,'green',1,2,NULL,0),(1148,'goodm',2,1,NULL,'提交',0,'2017-11-12 15:04:37',NULL,'127.0.0.1','Chrome','管理员',1,24,NULL,1,0,NULL,0),(1149,'goodm',2,1,'同意','行政确认',47,'2017-11-12 15:41:51',NULL,'::1','Chrome','大乔',4,24,'green',1,1,NULL,0),(1150,'goodm',3,1,NULL,'提交',0,'2017-11-12 18:37:02',NULL,'127.0.0.1','Chrome','管理员',1,28,NULL,1,0,NULL,0),(1151,'goodm',3,1,'同意','上级审批',19,'2017-11-12 18:37:24',NULL,'::1','Chrome','琢瑜清泉',5,28,'green',0,1,NULL,0),(1152,'goodm',3,2,'不同意','行政审批',20,'2017-11-12 18:37:39','哈哈哈','::1','Chrome','大乔',4,28,'red',0,2,NULL,0),(1155,'godepot',2,1,NULL,'提交',0,'2017-11-13 13:24:50',NULL,'127.0.0.1','Chrome','管理员',1,73,NULL,1,0,NULL,0),(1156,'goodm',4,1,NULL,'提交',0,'2017-11-13 14:20:47',NULL,'127.0.0.1','Chrome','管理员',1,28,NULL,1,0,NULL,0),(1157,'goodm',4,1,'同意','上级审批',19,'2017-11-13 14:21:10',NULL,'::1','Chrome','琢瑜清泉',5,28,'green',1,1,NULL,0),(1158,'goodm',4,1,'同意','行政审批',20,'2017-11-13 14:21:23',NULL,'::1','Chrome','大乔',4,28,'green',1,2,NULL,0),(1161,'worc',1,1,NULL,'提交',0,'2017-11-14 16:33:56',NULL,'127.0.0.1','Chrome','管理员',1,74,NULL,1,0,NULL,0),(1162,'worc',2,1,NULL,'提交',0,'2017-11-17 20:25:42',NULL,'127.0.0.1','Chrome','管理员',1,74,NULL,1,0,NULL,0),(1165,'worc',4,1,NULL,'提交',0,'2017-11-20 11:16:44',NULL,'::1','Chrome','小乔',3,74,NULL,1,0,NULL,0),(1167,'daily',22,1,NULL,'提交',0,'2017-11-25 21:43:57',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1175,'daily',23,1,NULL,'提交',0,'2017-11-26 10:16:16',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1180,'goodm',5,1,NULL,'提交',0,'2017-12-28 14:24:10',NULL,'127.0.0.1','Chrome','管理员',1,76,NULL,1,0,NULL,0),(1182,'goodm',5,1,'同意','上级审批',72,'2017-12-28 14:31:01',NULL,'::1','Chrome','琢瑜清泉',5,76,'green',1,1,NULL,0),(1185,'goodm',6,1,NULL,'提交',0,'2018-01-27 10:27:28',NULL,'127.0.0.1','Chrome','管理员',1,76,NULL,1,0,NULL,0),(1186,'goodm',6,1,'同意','上级审批',72,'2018-01-27 10:27:51',NULL,'::1','Chrome','琢瑜清泉',5,76,'green',1,1,NULL,0),(1193,'sealapl',3,1,NULL,'提交',0,'2018-02-08 21:41:40',NULL,'::1','Chrome','赵子龙',7,49,NULL,1,0,NULL,0),(1196,'customer',16,0,NULL,'放入客户公海库',0,'2018-03-06 13:57:34','放入','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(1197,'admin',2,0,NULL,'设置为管理员',0,'2018-03-06 14:06:06',NULL,'127.0.0.1','Chrome','管理员',1,10,NULL,1,0,NULL,0),(1198,'admin',2,0,NULL,'取消管理员',0,'2018-03-06 14:06:08',NULL,'127.0.0.1','Chrome','管理员',1,10,NULL,1,0,NULL,0),(1199,'customer',15,0,NULL,'放入客户公海库',0,'2018-03-06 14:07:45','eee','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(1202,'custappy',1,1,NULL,'提交',0,'2018-03-06 15:47:27',NULL,'127.0.0.1','Chrome','管理员',1,77,NULL,1,0,NULL,0),(1204,'custappy',1,1,'同意','上级审批',73,'2018-03-06 16:24:12',NULL,'::1','Chrome','琢瑜清泉',5,77,'green',1,1,NULL,0),(1205,'customer',1,1,NULL,'放入客户公海库',0,'2018-03-06 17:42:25',NULL,'::1','Chrome','赵子龙',7,7,'deeppink',1,0,NULL,0),(1206,'custappy',2,1,NULL,'提交',0,'2018-03-06 17:42:35',NULL,'::1','Chrome','赵子龙',7,77,NULL,1,0,NULL,0),(1207,'custappy',2,1,'同意','上级审批',73,'2018-03-06 21:14:03',NULL,'127.0.0.1','Chrome','管理员',1,77,'green',1,1,NULL,0),(1209,'customer',15,1,NULL,'放入客户公海库',0,'2018-03-07 12:27:59',NULL,'127.0.0.1','Chrome','管理员',1,7,'deeppink',1,0,NULL,0),(1210,'customer',17,1,NULL,'放入客户公海库',0,'2018-03-07 12:28:02',NULL,'127.0.0.1','Chrome','管理员',1,7,'deeppink',1,0,NULL,0),(1211,'custappy',3,1,NULL,'提交',0,'2018-03-07 12:28:31',NULL,'::1','Chrome','赵子龙',7,77,NULL,1,0,NULL,0),(1212,'custappy',3,1,NULL,'作废',0,'2018-03-07 12:31:41','超时自动作废','127.0.0.1','Firefox','系统',1,77,NULL,1,0,NULL,0),(1213,'custappy',3,1,NULL,'作废',0,'2018-03-07 12:31:42','超时自动作废','127.0.0.1','Firefox','系统',1,77,NULL,1,0,NULL,0),(1214,'custappy',3,1,NULL,'作废',0,'2018-03-07 12:33:05','超时自动作废','127.0.0.1','Firefox','系统',2,77,NULL,1,0,NULL,0),(1215,'custappy',3,1,NULL,'作废',0,'2018-03-07 12:33:35','超时自动作废','127.0.0.1','Chrome','系统',0,77,NULL,1,0,NULL,0),(1216,'custappy',3,1,NULL,'作废',0,'2018-03-07 12:35:03','超时自动作废','127.0.0.1','IE','系统',0,77,NULL,1,0,NULL,0),(1217,'custappy',3,1,NULL,'作废',0,'2018-03-07 12:36:13','超时30分钟自动作废','127.0.0.1','Firefox','系统',0,77,NULL,1,0,NULL,0),(1218,'custappy',4,1,NULL,'提交',0,'2018-03-07 12:41:46',NULL,'::1','Chrome','赵子龙',7,77,NULL,1,0,NULL,0),(1219,'custappy',4,1,NULL,'作废',0,'2018-03-07 12:55:05','超时10分钟自动作废','127.0.0.1','IE','系统',0,77,NULL,1,0,NULL,0),(1236,'daily',24,1,NULL,'提交',0,'2018-04-12 14:46:04',NULL,'::1','Chrome','大乔',4,3,NULL,1,0,NULL,0),(1239,'hrdemint',1,1,NULL,'提交',0,'2018-04-18 19:49:46',NULL,'::1','Chrome','赵子龙',7,78,NULL,1,0,NULL,0),(1241,'hrdemint',2,1,NULL,'提交',0,'2018-04-18 22:01:41',NULL,'::1','Chrome','赵子龙',7,79,NULL,1,0,NULL,0),(1242,'hrdemint',2,1,'可以面试','面试人确认',75,'2018-04-18 22:26:49',NULL,'127.0.0.1','Chrome','管理员',1,79,NULL,1,1,NULL,0),(1243,'hrdemint',2,1,'面试记录','面试结果',76,'2018-04-18 22:27:20',NULL,'127.0.0.1','Chrome','管理员',1,79,NULL,1,2,NULL,0),(1244,'hrdemint',3,1,NULL,'提交',0,'2018-04-18 22:33:50',NULL,'::1','Chrome','赵子龙',7,79,NULL,1,0,NULL,0),(1247,'hrdemint',3,2,'不适合','面试人确认',75,'2018-04-18 22:46:18','哈哈哈','192.168.1.102','Chrome','琢瑜清泉',5,79,NULL,1,1,NULL,0),(1261,'project',5,1,NULL,'提交',0,'2018-04-26 09:11:08',NULL,'127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1267,'admin',4,0,NULL,'设置为管理员',0,'2018-04-29 15:23:31',NULL,'127.0.0.1','Chrome','管理员',1,10,NULL,1,0,NULL,0),(1273,'hrredund',1,2,'不同意','上级审批',29,'2018-05-03 16:49:15','好好做事啊','::1','Chrome','琢瑜清泉',5,33,'red',1,1,NULL,0),(1275,'daily',25,1,NULL,'提交',0,'2018-05-04 11:00:43',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1289,'project',3,0,NULL,'进度+5%',0,'2018-05-14 13:23:02',NULL,'127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1290,'project',5,0,NULL,'进度+5%',0,'2018-05-14 13:23:42','很好哦','127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1305,'project',3,0,NULL,'更新进度',0,'2018-05-25 11:59:15','e','127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1307,'kqjsn',2,1,NULL,'提交',0,'2018-05-25 15:35:07',NULL,'127.0.0.1','Chrome','管理员',1,70,NULL,1,0,NULL,0),(1313,'infor',6,1,NULL,'评论',0,'2018-06-02 22:10:15','不错哦','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1314,'goodm',6,1,NULL,'评论',0,'2018-06-02 22:11:46','呵呵呵很好哦','127.0.0.1','Chrome','管理员',1,76,NULL,1,0,NULL,0),(1315,'infor',6,1,NULL,'评论',0,'2018-06-02 22:15:13','很不错的哦','::1','Chrome','琢瑜清泉',5,1,NULL,1,0,NULL,0),(1317,'daily',23,1,NULL,'评论',0,'2018-06-07 09:59:21','很好的哦','127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1322,'daily',15,1,NULL,'点评',0,'2018-06-10 11:14:11','很好哦','127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1323,'daily',15,1,NULL,'点评',0,'2018-06-10 11:17:27','不错的哦','127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1326,'kqinfo',103,1,NULL,'提交',0,'2018-06-13 14:48:40',NULL,'127.0.0.1','Chrome','管理员',1,5,NULL,1,0,NULL,0),(1353,'hrpositive',2,1,NULL,'提交',0,'2018-06-15 20:04:38',NULL,'::1','Chrome','赵子龙',7,32,NULL,1,0,NULL,0),(1354,'hrpositive',3,1,NULL,'提交',0,'2018-06-15 20:16:18',NULL,'127.0.0.1','Chrome','管理员',1,32,NULL,1,0,NULL,0),(1355,'kqout',5,1,NULL,'提交',0,'2018-06-15 20:28:19',NULL,'127.0.0.1','Chrome','管理员',1,23,NULL,1,0,NULL,0),(1356,'kqinfo',104,1,NULL,'提交',0,'2018-06-15 20:31:24',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1362,'kqinfo',4,1,'同意','上级审核',1,'2018-07-02 09:51:09',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,5,'green',1,1,NULL,0),(1363,'sealapl',4,1,NULL,'提交',0,'2018-07-02 09:52:34',NULL,'127.0.0.1','Chrome','管理员',1,49,NULL,1,0,NULL,0),(1364,'sealapl',4,1,'同意','上级审批',41,'2018-07-02 09:52:53',NULL,'127.0.0.1','Chrome','琢瑜清泉',5,49,'green',1,1,NULL,0),(1365,'daily',26,1,NULL,'提交',0,'2018-07-02 18:50:21',NULL,'127.0.0.1','Chrome','管理员',1,3,NULL,1,0,NULL,0),(1367,'hrpositive',2,1,NULL,'催办',0,'2018-07-05 11:27:47','a','192.168.1.104','Chrome','赵子龙',7,32,NULL,1,0,NULL,0),(1368,'work',6,1,NULL,'提交',0,'2018-07-05 11:29:52',NULL,'192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1369,'work',6,1,NULL,'催办',0,'2018-07-05 11:33:28','快递','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1370,'work',6,1,NULL,'催办',0,'2018-07-05 11:39:24','我','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1371,'work',6,1,NULL,'催办',0,'2018-07-05 11:39:58','我','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1372,'work',6,1,NULL,'催办',0,'2018-07-05 11:43:56','问','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1373,'work',6,1,NULL,'催办',0,'2018-07-05 11:44:18','我','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1374,'work',6,1,NULL,'催办',0,'2018-07-05 11:51:33','我','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1375,'work',6,1,NULL,'催办',0,'2018-07-05 12:12:07','a','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1376,'work',6,1,NULL,'催办',0,'2018-07-05 12:12:49','a','192.168.1.104','Chrome','赵子龙',7,4,NULL,1,0,NULL,0),(1377,'customer',16,1,'跟进','跟进记录',0,'2018-07-05 22:45:44','跟进','127.0.0.1','Chrome','管理员',1,7,NULL,1,0,NULL,0),(1378,'custsale',4,1,NULL,'跟进',0,'2018-07-05 23:12:16','啊啊','127.0.0.1','Chrome','管理员',1,8,NULL,1,0,NULL,0),(1379,'receipt',1,1,NULL,'提交',0,'2018-07-06 14:47:15',NULL,'127.0.0.1','Chrome','管理员',1,80,NULL,1,0,NULL,0),(1382,'goodm',8,1,NULL,'提交',0,'2018-07-06 18:27:39',NULL,'127.0.0.1','Chrome','管理员',1,28,NULL,1,0,NULL,0),(1384,'infor',6,1,NULL,'回执确认',0,'2018-07-06 20:32:54','不错哦','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1385,'infor',6,1,NULL,'回执确认',0,'2018-07-06 20:35:22','好的喽','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1386,'infor',6,1,NULL,'回执确认',0,'2018-07-06 20:35:45','不错哦','192.168.1.102','wxbro','赵子龙',7,1,NULL,1,0,NULL,0),(1387,'infor',6,1,NULL,'回执确认',0,'2018-07-06 20:39:12','哈哈哈','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1388,'infor',6,1,NULL,'回执确认',0,'2018-07-06 20:43:16','问问','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1391,'infor',6,1,NULL,'回执确认',0,'2018-07-06 21:20:31',NULL,'192.168.1.102','wxbro','赵子龙',7,1,NULL,1,0,NULL,0),(1392,'infor',6,1,NULL,'回执确认',0,'2018-07-06 21:36:04','we ','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1394,'project',3,0,NULL,'更新进度',0,'2018-07-07 09:18:53',NULL,'127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1395,'project',3,1,'已完成','进度报告',0,'2018-07-07 09:18:58',NULL,'127.0.0.1','Chrome','管理员',1,22,'green',1,0,NULL,0),(1396,'project',5,1,NULL,'评论',0,'2018-07-07 09:19:13','啊','127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1397,'project',5,1,NULL,'评论',0,'2018-07-07 09:20:54','啊啊啊','127.0.0.1','Chrome','管理员',1,22,NULL,1,0,NULL,0),(1434,'flow_remind',9,1,NULL,'提交',0,'2018-07-20 20:12:41',NULL,'127.0.0.1','Chrome','管理员',1,61,NULL,1,0,NULL,0),(1450,'infor',6,1,NULL,'回执确认',0,'2018-07-26 16:38:26','好的','127.0.0.1','Chrome','管理员',1,1,NULL,1,0,NULL,0),(1452,'admin',4,0,NULL,'取消管理员',0,'2018-07-28 21:51:56',NULL,'127.0.0.1','Chrome','管理员',1,10,NULL,1,0,NULL,0),(1453,'kqinfo',109,1,NULL,'提交',0,'2018-07-28 21:52:21',NULL,'::1','Chrome','大乔',4,5,NULL,1,0,NULL,0),(1454,'kqinfo',110,1,NULL,'提交',0,'2018-07-28 21:55:00',NULL,'::1','Chrome','小乔',3,5,NULL,1,0,NULL,0),(1455,'kqinfo',110,1,'同意','上级审核',1,'2018-07-28 21:55:32',NULL,'::1','Chrome','貂蝉',2,5,'green',1,1,NULL,0),(1456,'kqinfo',103,1,'同意','上级审核',1,'2018-07-28 21:55:39',NULL,'::1','Chrome','貂蝉',2,5,'green',1,1,NULL,0),(1458,'goodm',8,1,'同意','上级审批',19,'2018-07-28 22:06:08',NULL,'::1','Chrome','琢瑜清泉',5,28,'green',1,1,NULL,0),(1459,'goodm',8,1,'同意','行政审批',20,'2018-07-28 22:06:23',NULL,'::1','Chrome','大乔',4,28,'green',1,2,NULL,0),(1460,'goodm',8,1,'同意','行政审批',20,'2018-07-28 22:06:57',NULL,'::1','Chrome','小乔',3,28,'green',1,2,NULL,0),(1464,'kqinfo',131,1,NULL,'提交',0,'2018-08-07 15:57:02',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1465,'kqinfo',131,1,'同意','上级审核',3,'2018-08-07 15:57:19',NULL,'::1','Chrome','琢瑜清泉',5,6,'green',1,1,NULL,0),(1466,'kqinfo',132,1,NULL,'提交',0,'2018-08-07 17:17:17',NULL,'127.0.0.1','Chrome','管理员',1,30,NULL,1,0,NULL,0),(1477,'kqinfo',104,1,NULL,'保存',0,'2018-08-19 23:40:34',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1479,'kqinfo',104,1,NULL,'保存',0,'2018-08-20 10:46:00',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1480,'kqinfo',104,1,NULL,'保存',0,'2018-08-20 10:47:16',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1481,'kqinfo',104,1,NULL,'保存',0,'2018-08-20 10:47:51',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1483,'kqinfo',104,1,NULL,'保存',0,'2018-08-20 10:48:17',NULL,'127.0.0.1','Chrome','管理员',1,6,NULL,1,0,NULL,0),(1488,'kqinfo',104,1,'同意','上级审核',3,'2018-08-21 12:11:52',NULL,'::1','Safari','琢瑜清泉',5,6,'green',1,1,NULL,0),(1497,'meet',2,1,NULL,'提交',0,'2018-08-24 20:40:50',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(1498,'meet',3,1,NULL,'提交',0,'2018-08-24 20:41:18',NULL,'127.0.0.1','Chrome','管理员',1,54,NULL,1,0,NULL,0),(1504,'goodm',3,1,'同意','上级审批',19,'2018-08-29 16:44:39',NULL,'::1','Chrome','琢瑜清泉',5,28,'green',1,1,NULL,0),(1506,'assetm',1,1,'领用','领用登记',0,'2018-08-29 18:46:12','领用了','127.0.0.1','Chrome','管理员',1,41,NULL,1,0,NULL,0),(1507,'assetm',1,1,'归还','归还登记',0,'2018-08-29 18:50:29','好了','127.0.0.1','Chrome','管理员',1,41,NULL,1,0,NULL,0),(1508,'assetm',1,1,'领用','领用登记',0,'2018-08-29 18:50:50','好了','127.0.0.1','Chrome','管理员',1,41,NULL,1,0,NULL,0),(1509,'assetm',1,1,'归还','归还登记',0,'2018-08-29 18:57:56',NULL,'127.0.0.1','Chrome','管理员',1,41,NULL,1,0,NULL,0),(1510,'assetm',6,1,'维修','维修登记',0,'2018-08-29 18:58:03','e','127.0.0.1','Chrome','管理员',1,41,'gray',1,0,NULL,0),(1511,'assetm',6,1,'归还','归还登记',0,'2018-08-29 19:08:03',NULL,'127.0.0.1','Chrome','管理员',1,41,NULL,1,0,NULL,0),(1516,'work',6,1,'已完成','执行人执行',52,'2018-09-01 13:43:52',NULL,'127.0.0.1','Chrome','管理员',1,4,NULL,1,1,NULL,0),(1517,'hrpositive',2,1,'同意','上级审批',27,'2018-09-01 13:43:52',NULL,'127.0.0.1','Chrome','管理员',1,32,'green',1,1,NULL,0),(1518,'sealapl',3,1,'同意','上级审批',41,'2018-09-01 13:43:52',NULL,'127.0.0.1','Chrome','管理员',1,49,'green',1,1,NULL,0),(1520,'kqinfo',110,1,'同意','上级审核',100004,'2018-09-02 12:42:25',NULL,'::1','Chrome','琢瑜清泉',5,5,'green',1,2,NULL,0),(1521,'carmrese',1,1,NULL,'提交',0,'2018-09-03 19:51:16',NULL,'127.0.0.1','Chrome','管理员',1,44,NULL,1,0,NULL,0),(1522,'carmrese',1,1,'同意','上级审批',37,'2018-09-03 19:51:56',NULL,'::1','Chrome','琢瑜清泉',5,44,'green',1,1,NULL,0),(1523,'carmrese',1,1,'同意','行政确认',38,'2018-09-03 19:52:42',NULL,'::1','Chrome','小乔',3,44,'green',1,2,NULL,0),(1531,'hrkaohem',1,1,NULL,'提交',0,'2018-09-05 11:02:06',NULL,'127.0.0.1','Chrome','管理员',1,81,NULL,1,0,NULL,0),(1535,'goodm',9,1,NULL,'提交',0,'2018-09-06 11:01:07',NULL,'127.0.0.1','Chrome','管理员',1,24,NULL,1,0,NULL,0),(1545,'kqinfo',109,1,'同意','上级审核',1,'2018-09-06 20:44:05',NULL,'::1','Safari','琢瑜清泉',5,5,'green',1,1,NULL,0),(1546,'kqout',5,1,'同意','上级审核',5,'2018-09-06 20:44:40',NULL,'::1','Safari','琢瑜清泉',5,23,'green',1,1,NULL,0),(1547,'hrpositive',3,1,'同意','上级审批',27,'2018-09-06 21:33:48',NULL,'::1','Safari','琢瑜清泉',5,32,'green',1,1,NULL,0),(1549,'kqinfo',134,1,NULL,'提交',0,'2018-09-07 09:35:54',NULL,'127.0.0.1','Chrome','管理员',1,30,NULL,1,0,NULL,0),(1558,'hrcheck',6,1,NULL,'评分',0,'2018-09-07 19:46:54',NULL,'192.168.1.107','wxbro','管理员',1,71,NULL,1,0,NULL,0),(1559,'hrkaohem',2,1,NULL,'提交',0,'2018-09-07 22:18:21',NULL,'127.0.0.1','Chrome','管理员',1,81,NULL,1,0,NULL,0),(1560,'hrcheck',7,1,NULL,'评分',0,'2018-09-07 22:21:28','好的','::1','Chrome','琢瑜清泉',5,71,NULL,1,0,NULL,0),(1562,'demo',3,1,'同意','上级审批',71,'2018-09-08 13:33:50','好的哦','::1','Chrome','琢瑜清泉',5,72,'green',1,1,NULL,0),(1567,'hrredund',1,1,NULL,'保存',0,'2018-09-09 15:55:32',NULL,'127.0.0.1','Chrome','管理员',1,33,NULL,1,0,NULL,0),(1571,'seal',3,1,NULL,'提交',0,'2018-09-14 22:11:04',NULL,'127.0.0.1','Chrome','管理员',1,48,NULL,1,0,NULL,0),(1573,'custract',6,1,NULL,'提交',0,'2018-09-15 09:17:31',NULL,'127.0.0.1','Chrome','管理员',1,35,NULL,1,0,NULL,0),(1581,'hrsalarm',1,1,NULL,'提交',0,'2018-09-18 11:56:02',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1583,'hrsalarm',2,1,NULL,'提交',0,'2018-09-18 15:58:46',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1586,'hrsalarm',3,1,NULL,'提交',0,'2018-09-18 22:24:14',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1594,'hrsalarm',4,1,NULL,'提交',0,'2018-09-19 21:56:17',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1614,'hrshebao',1,1,NULL,'提交',0,'2018-09-21 12:04:27',NULL,'127.0.0.1','Chrome','管理员',1,84,NULL,1,0,NULL,0),(1643,'meet',5,1,NULL,'提交',0,'2018-09-22 18:22:50',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(1644,'meet',5,3,'取消','取消会议',0,'2018-09-22 18:24:58','取消了','127.0.0.1','Chrome','管理员',1,2,'gray',1,0,NULL,0),(1645,'meet',6,1,NULL,'提交',0,'2018-09-22 21:42:56',NULL,'127.0.0.1','Chrome','管理员',1,2,NULL,1,0,NULL,0),(1649,'demo',3,2,'不同意','财务审批',79,'2018-09-22 22:21:03','了','::1','Chrome','小乔',3,72,'red',0,3,NULL,0),(1655,'demo',3,2,'不同意','财务审批',79,'2018-09-23 07:49:59','好','::1','Chrome','小乔',3,72,'red',1,3,NULL,0),(1656,'hrsalarm',5,1,NULL,'提交',0,'2018-09-23 18:38:07',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1665,'hrsalarm',13,1,NULL,'提交',0,'2018-09-26 17:34:16',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1672,'hrsalarm',14,1,NULL,'提交',0,'2018-09-27 12:08:52',NULL,'127.0.0.1','Chrome','管理员',1,83,NULL,1,0,NULL,0),(1691,'hrsalary',1,1,NULL,'提交',0,'2018-09-28 22:30:13',NULL,'127.0.0.1','Chrome','管理员',1,34,NULL,1,0,NULL,0),(1708,'hrsalary',16,1,NULL,'提交',0,'2018-10-09 19:38:14',NULL,'127.0.0.1','Chrome','管理员',1,34,NULL,1,0,NULL,0),(1739,'hrsalary',1,1,'同意','人事审核',31,'2018-10-10 14:56:32',NULL,'192.168.1.100','Chrome','大乔',4,34,'green',1,1,NULL,0),(1740,'hrsalary',2,1,'同意','人事审核',31,'2018-10-10 14:56:32',NULL,'192.168.1.100','Chrome','大乔',4,34,'green',1,1,NULL,0),(1741,'hrsalary',16,1,'同意','人事审核',31,'2018-10-10 14:56:32',NULL,'192.168.1.100','Chrome','大乔',4,34,'green',1,1,NULL,0),(1742,'hrsalary',16,1,NULL,'发放',0,'2018-10-10 15:01:27',NULL,'127.0.0.1','Chrome','管理员',1,34,NULL,1,0,NULL,0);
/*!40000 ALTER TABLE `jouryu_flow_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_menu`
--

DROP TABLE IF EXISTS `jouryu_flow_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '显示名称',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `sort` tinyint(4) DEFAULT '0',
  `statusname` varchar(20) DEFAULT NULL,
  `statuscolor` varchar(20) DEFAULT NULL,
  `statusvalue` tinyint(1) DEFAULT '1' COMMENT '状态值',
  `actname` varchar(20) DEFAULT NULL COMMENT '动作名称',
  `setid` smallint(6) DEFAULT '0' COMMENT '对应模块',
  `wherestr` varchar(300) DEFAULT NULL COMMENT '显示条件',
  `explain` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `islog` tinyint(1) DEFAULT '1',
  `issm` tinyint(1) DEFAULT '1',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型',
  `changeaction` varchar(20) DEFAULT NULL COMMENT '触发的方法',
  `fields` varchar(50) DEFAULT NULL,
  `upgcont` varchar(500) DEFAULT NULL COMMENT '更新内容',
  `iszs` tinyint(1) DEFAULT '0' COMMENT '是否在详情页面显示',
  PRIMARY KEY (`id`),
  KEY `setid` (`setid`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='单据操作菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_menu`
--

LOCK TABLES `jouryu_flow_menu` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_menu` DISABLE KEYS */;
INSERT INTO `jouryu_flow_menu` VALUES (1,'标为已读','yd',0,'已读','green',1,'标识',1,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),(2,'全部标识已读','allyd',0,NULL,NULL,1,NULL,1,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),(3,'标为已读','yd',0,'已读','green',1,'标识',3,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),(4,'全部标识已读','allyd',0,NULL,NULL,1,NULL,3,NULL,NULL,1,0,0,0,NULL,NULL,NULL,0),(6,'取消会议',NULL,0,'取消','gray',3,NULL,2,'b3B0aWQ9e3VpZH0gYW5kIHN0YXJ0ZHQ!e25vd30gIGFuZCBzdGF0ZT0w','我发起，未开始会议可取消',1,1,1,1,NULL,NULL,NULL,0),(7,'结束会议',NULL,0,'结束','orange',2,NULL,2,'b3B0aWQ9e3VpZH0gYW5kIHN0YXJ0ZHQ8e25vd30gYW5kIGVuZGR0Pntub3d9ICBhbmQgc3RhdGU9MQ::','我发起，开会中可提前结束',1,1,1,1,NULL,NULL,NULL,0),(12,'＋添加跟进记录',NULL,0,'跟进',NULL,1,'跟进记录',7,'KHVpZD17dWlkfSBvciB7c2hhdGVpZCx1aWRpbn0p',NULL,1,1,1,1,NULL,NULL,'YGxhc3RkdGA9bm93KCk:',0),(13,'启用','ztqh',0,'启用','green',1,'状态切换',7,'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MA::',NULL,1,1,0,1,NULL,NULL,'c3RhdHVzPTE:',0),(14,'停用','ztqh',0,'停用','gray',0,'状态切换',7,'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MQ::',NULL,1,1,1,1,NULL,NULL,'c3RhdHVzPTA:',0),(15,'共享给...','shate',5,NULL,NULL,1,NULL,7,'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MQ::',NULL,1,1,0,3,NULL,NULL,NULL,0),(16,'＋添加跟进','genjin',0,NULL,NULL,1,'跟进',8,'dWlkPXt1aWR9',NULL,1,1,1,1,NULL,NULL,NULL,0),(17,'标为跟进中','ztqh',0,'跟进中','blue',0,'状态切换',8,'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MCBhbmQgaHRpZD0w',NULL,1,1,0,1,NULL,NULL,NULL,0),(18,'标为已成交','ztqh',0,'已成交','green',1,'状态切换',8,'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MQ::',NULL,1,1,1,1,NULL,NULL,NULL,0),(19,'标为已丢失','ztqh',0,'已丢失','gray',2,'状态切换',8,'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MiBhbmQgaHRpZD0w',NULL,1,1,1,1,NULL,NULL,NULL,0),(20,'转移给...','zhuan',0,NULL,NULL,1,NULL,8,'dWlkPXt1aWR9IGFuZCBzdGF0ZT0w',NULL,1,1,1,2,NULL,NULL,NULL,0),(21,'标为执行中','state2',1,'执行中','orange',3,'进度报告',22,'YHN0YXR1c2Agbm90IGluKDEsNSk:',NULL,1,1,0,1,NULL,NULL,NULL,0),(22,'更新进度','upprogress',0,NULL,NULL,0,NULL,22,'cHJvZ3Jlc3M8PjEwMCBhbmQgYHN0YXR1c2A8PjU:',NULL,1,1,0,4,NULL,'progress',NULL,0),(23,'标为已完成','state1',1,'已完成','green',1,'进度报告',22,'c3RhdHVzIG5vdCBpbigxLDUp',NULL,1,1,0,1,NULL,NULL,NULL,0),(24,'终止项目','state3',1,'终止','gray',5,'进度报告',22,'YHN0YXR1c2Agbm90IGluKDEsNSk:',NULL,1,1,1,1,NULL,NULL,NULL,0),(25,'提前终止',NULL,0,'终止','gray',2,'提前终止',31,'c3RhdGU9MQ::',NULL,1,1,1,4,NULL,'tqenddt',NULL,0),(26,'创建收款单','cjdaishou',0,NULL,'chocolate',1,NULL,35,'dWlkPXt1aWR9IGFuZCBpc292ZXI9MCBhbmQgdHlwZT0w',NULL,1,0,0,1,NULL,NULL,NULL,0),(27,'标已收款','pay',0,'已收款','green',0,NULL,36,'dWlkPXt1aWR9IGFuZCB0eXBlPTAgYW5kIGlzcGF5PTA:',NULL,1,1,1,4,NULL,'paydt',NULL,0),(28,'标已付款','pay',0,'已付款','green',0,NULL,36,'dWlkPXt1aWR9IGFuZCB0eXBlPTEgYW5kIGlzcGF5PTA:',NULL,1,1,1,4,NULL,'paydt',NULL,0),(29,'创建付款单','cjdaishou',0,NULL,'chocolate',1,NULL,35,'dWlkPXt1aWR9IGFuZCBpc292ZXI9MCBhbmQgdHlwZT0x',NULL,1,0,0,1,NULL,NULL,NULL,0),(30,'领用登记',NULL,0,'领用',NULL,1,NULL,41,'YHN0YXRlYD0w',NULL,1,1,1,4,NULL,'usename','YHN0YXRlYD0x',0),(31,'维修登记',NULL,0,'维修','gray',1,NULL,41,NULL,NULL,1,1,1,1,NULL,NULL,'YHN0YXRlYD0y',0),(32,'标☆',NULL,0,'标星','chocolate',1,'状态切换',7,'dWlkPXt1aWR9IGFuZCBpc3N0YXQ9MA::',NULL,1,1,0,1,NULL,NULL,'aXNzdGF0PTE:',0),(33,'取消标☆',NULL,0,'取消标星','gray',0,'状态切换',7,'dWlkPXt1aWR9IGFuZCBpc3N0YXQ9MQ::',NULL,1,1,0,1,NULL,NULL,'aXNzdGF0PTA:',0),(34,'取消共享','unshate',6,NULL,'gray',1,NULL,7,'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MSBhbmQgc2hhdGUgaXMgbm90IG51bGw:',NULL,1,1,0,1,NULL,NULL,NULL,0),(35,'会议签到',NULL,0,'签到','blue',6,'签到',2,'c3RhdGU9MQ::',NULL,1,1,0,1,NULL,NULL,NULL,1),(36,'设置为管理员',NULL,0,NULL,NULL,0,NULL,10,'YGlkYD4xICBhbmQge3VpZH09MSBhbmQgYHR5cGVgPTA:',NULL,1,1,1,0,NULL,NULL,'YHR5cGVgPTE:',0),(37,'取消管理员',NULL,0,NULL,NULL,0,NULL,10,'YGlkYD4xICBhbmQge3VpZH09MSBhbmQgYHR5cGVgPTE:',NULL,1,1,1,0,NULL,NULL,'YHR5cGVgPTA:',0),(38,'放入客户公海库','ghnoup',7,NULL,'deeppink',1,NULL,7,'YGlzZ2hgPTA:',NULL,1,1,0,1,NULL,NULL,NULL,1),(39,'进度+5%',NULL,0,NULL,NULL,0,NULL,22,'cHJvZ3Jlc3M8PjEwMCBhbmQgYHN0YXR1c2A8PjU:',NULL,1,1,0,1,NULL,NULL,'cHJvZ3Jlc3M9cHJvZ3Jlc3MrNQ::',0),(40,'创建项目任务',NULL,0,NULL,NULL,0,NULL,22,'c3RhdHVzIG5vdCBpbigxLDUp',NULL,1,0,0,5,NULL,NULL,'YWRkfHdvcmt8ZGVmX3Byb2plY3RpZD17aWR9',0),(41,'相关项目信息',NULL,0,NULL,NULL,0,NULL,4,'cHJvamVjdGlkPjA:',NULL,1,0,0,5,NULL,NULL,'eGlhbmd8cHJvamVjdHxtaWQ9e3Byb2plY3RpZH0:',0),(42,'归还登记',NULL,0,'归还',NULL,1,NULL,41,NULL,NULL,1,1,0,1,NULL,NULL,'YHN0YXRlYD0wLGB1c2VpZGA9JzAnLGB1c2VuYW1lYD1udWxs',0);
/*!40000 ALTER TABLE `jouryu_flow_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_remind`
--

DROP TABLE IF EXISTS `jouryu_flow_remind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_remind` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '截止时间',
  `uid` smallint(6) DEFAULT NULL COMMENT '用户Id',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `modenum` varchar(30) DEFAULT NULL COMMENT '对应模块编号',
  `table` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT '0' COMMENT '主Id',
  `ratecont` varchar(500) DEFAULT NULL COMMENT '频率',
  `explain` varchar(500) DEFAULT NULL COMMENT '提醒内容',
  `rate` varchar(50) DEFAULT NULL COMMENT '提醒频率o仅一次,d天,w周,m月',
  `rateval` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `receid` varchar(500) DEFAULT NULL,
  `recename` varchar(500) DEFAULT NULL COMMENT '提醒给',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`uid`,`table`,`mid`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`modenum`,`mid`),
  KEY `table_2` (`table`,`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='单据提醒设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_remind`
--

LOCK TABLES `jouryu_flow_remind` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_remind` DISABLE KEYS */;
INSERT INTO `jouryu_flow_remind` VALUES (1,'2017-07-01 13:56:29',NULL,1,'2017-07-01 20:11:15','管理员','jiaban','kqinfo',16,'每天 20:17:00,每周四 15:46:58','加班单：2017-06-28 18:00:00→2017-06-28 18:00:00共加班6.0小时,加班加班','d,w4','20:17:00,15:46:58',0,NULL,NULL),(4,'2017-08-23 14:25:17',NULL,1,'2017-08-23 20:48:29','管理员','flowtodo','flow_todo',1,'每小时 52:24 每天从14:25:17至23:27:06提醒','车辆[{carid}]的{otype}将在{enddt}到期。','h','52:24|23:27:06',0,NULL,NULL),(8,'2017-09-03 20:11:29',NULL,1,'2017-09-30 09:42:28','管理员','subscribe','subscribe',1,'每月 02 02:05:00','订阅管理：每月份人员考勤统计简表','m','02 02:05:00',1,'d4','行政人事部');
/*!40000 ALTER TABLE `jouryu_flow_remind` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_set`
--

DROP TABLE IF EXISTS `jouryu_flow_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_set` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '模块名称',
  `num` varchar(30) NOT NULL DEFAULT '' COMMENT '模块编号',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `table` varchar(50) DEFAULT NULL COMMENT '对应的表',
  `where` varchar(500) DEFAULT NULL COMMENT '相关条件',
  `summary` varchar(500) DEFAULT NULL COMMENT '摘要',
  `summarx` varchar(500) DEFAULT NULL COMMENT '应用摘要',
  `type` varchar(20) DEFAULT NULL COMMENT '分类',
  `pctx` tinyint(1) DEFAULT '0' COMMENT 'pc端提醒',
  `mctx` tinyint(1) DEFAULT '0' COMMENT 'app提醒',
  `wxtx` tinyint(1) DEFAULT '0' COMMENT '微信提醒',
  `emtx` tinyint(1) DEFAULT '0' COMMENT '是否邮件提醒',
  `sericnum` varchar(50) DEFAULT NULL COMMENT '编号规则',
  `isflow` tinyint(1) DEFAULT '1' COMMENT '是否有流程',
  `receid` varchar(255) DEFAULT NULL,
  `recename` varchar(255) DEFAULT NULL COMMENT '针对对象',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `status` tinyint(1) DEFAULT '1',
  `islu` tinyint(1) DEFAULT '1' COMMENT '是否可录入',
  `tables` varchar(100) DEFAULT NULL COMMENT '多行子表',
  `names` varchar(100) DEFAULT NULL COMMENT '多行子表名称',
  `statusstr` varchar(500) DEFAULT NULL COMMENT '状态值设置',
  `isgbjl` tinyint(1) DEFAULT '0' COMMENT '是否关闭操作记录',
  `isgbcy` tinyint(1) DEFAULT '0' COMMENT '是否不显示查阅记录',
  `isscl` tinyint(1) DEFAULT '0' COMMENT '是否生成列表页',
  `isup` tinyint(1) DEFAULT '1' COMMENT '更新时是否同步',
  `ddtx` tinyint(1) DEFAULT '0' COMMENT '是否钉钉提醒',
  `isbxs` tinyint(1) DEFAULT '0' COMMENT '录入页面是否不显示流程图',
  `lbztxs` tinyint(1) DEFAULT '0' COMMENT '列表页状态搜索显示0默认,1必须显示,2显示',
  `isflowlx` tinyint(1) DEFAULT '0' COMMENT '从新提交时0默认，1从新走流程',
  `iscs` tinyint(1) DEFAULT '0' COMMENT '是否自定义抄送',
  `zfeitime` int(11) DEFAULT '0' COMMENT '超过分钟自动作废',
  `ispl` tinyint(1) DEFAULT '1' COMMENT '是否开启评论',
  `istxset` tinyint(1) DEFAULT '1' COMMENT '是否开启单据提醒设置',
  `ishz` tinyint(1) DEFAULT '0' COMMENT '回执确认0不开启,1必须选择,2可选',
  PRIMARY KEY (`id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='流程模块';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_set`
--

LOCK TABLES `jouryu_flow_set` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_set` DISABLE KEYS */;
INSERT INTO `jouryu_flow_set` VALUES (1,'通知公告','gong',1,'infor',NULL,'[{typename}]{title}','title:[{typename}]{title}\noptdt:{optdt}','行政',1,0,0,0,'XA-Ymd-',0,'all','全体人员','2018-08-31 15:05:45',1,1,'infors','投票选项',NULL,0,0,1,1,0,0,0,0,0,0,1,1,1),(2,'会议','meet',2,'meet','`type`=0','[{hyname}]{title},{startdt}→{enddt}','title:{title}\ncont:会议室：{hyname}[br]发起人：{optname}[br]参会人：{joinname}\noptdt:{startdt}→{enddt}','行政',1,0,0,0,'XB-Ymd-',0,'all','全体人员','2017-10-23 14:03:26',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(3,'工作日报','daily',21,'daily',NULL,'[{optname}]{content}','title:[{optname}]{dt}的{type}\noptdt:{optdt}\ncont:{content}','基础',1,0,0,0,'XC-Ymd-',0,'all','全体人员','2017-11-25 22:08:51',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,2,0,1,1,0),(4,'任务','work',23,'work',NULL,'[{type}]{title},分配给:{dist}','title:{title}\noptdt:{optdt}\ncont:类型：{type}[br]等级：{grade}[br]分配给：{dist}[br]创建者：{optname}[br]截止时间：{enddt}','基础',1,0,0,0,'XW-Ymd-',1,'all','全体人员','2017-03-24 13:12:46',1,1,NULL,NULL,'待?分配,已完成,未通过,待?执行,?执行中,已作废,待?验证',0,0,1,1,0,0,0,0,0,0,1,1,0),(5,'请假条','leave',30,'kqinfo','kind=[F]请假[F]','[{qjkind}]{stime}→{etime}共{totals}小时,{explain}','title:[{qjkind}]共{totals}小时\ncont:时间：{stime}→{etime}[br]说明：{explain}\noptdt:{optdt}','考勤',1,0,0,0,'KA-Ymd-',1,'all','全体人员','2017-06-29 10:26:42',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(6,'加班单','jiaban',31,'kqinfo','kind=[F]加班[F]','{stime}→{stime}共加班{totals}小时,{explain}','title:加班共{totals}小时\ncont:时间：{stime}→{etime}[br]说明：{explain}\noptdt:{optdt}','考勤',1,0,0,0,'KB-Ymd-',1,'all','全体人员','2017-06-29 10:26:09',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(7,'客户管理','customer',50,'customer',NULL,'{name}','title:{name}\noptdt:{optdt}\ncont:来源：{laiyuan}[br]操作人：{optname}[br]共享给：{shate}','客户',1,0,0,0,'CA-Ymd-',0,'all','全体人员','2016-09-25 08:42:17',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(8,'销售机会','custsale',51,'custsale',NULL,NULL,'title:{custname}\noptdt:{optdt}\ncont:来源：{laiyuan}[br]销售人：{optname}[br]申请日期：{applydt}[br]预计金额：{money}','客户',1,0,0,0,'CB-Ymd-',0,'all','全体人员','2017-04-24 20:31:39',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(9,'物品','goods',80,'goods',NULL,NULL,NULL,'物品',1,0,0,0,'CC-Ymd-',0,'all','全体人员','2017-12-28 14:29:02',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(10,'用户','user',201,'admin',NULL,NULL,'title:{name}\ncont:部门：{deptallname}[br]职位：{ranking}[br]电话：{tel}[br]手机：{mobile}[br]邮箱：{email}','系统',0,0,0,0,NULL,0,'u1','管理员','2017-07-08 19:38:55',1,0,NULL,NULL,NULL,0,0,1,1,0,0,2,0,0,0,0,0,0),(11,'费用报销','finfybx',90,'fininfom','type=0','报销：{money},收款人：{fullname}',NULL,'财务',1,0,0,0,'FA-Ymd-',1,'all','全体人员','2017-05-06 18:36:22',1,1,'fininfos','报销明细',NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(12,'日程','schedule',24,'schedule',NULL,'{title}','title:{title}\noptdt:{optdt}\ncont:时间：{startdt}[br]截止：{enddt}[br]说明：{explain}[br]重复：{rate}{rateval}[br]提醒：{txsj}','基础',1,0,0,0,NULL,0,'all','全体人员','2016-09-25 11:51:09',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(13,'部门','dept',202,'dept',NULL,'{name}',NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2016-08-13 16:44:30',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(14,'系统组','group',203,'group',NULL,NULL,NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2016-08-13 17:47:58',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(15,'计划任务','task',204,'task',NULL,NULL,NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2016-08-13 17:23:01',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(16,'会话管理','huihua',205,'im_group','type<>2',NULL,NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2016-08-13 17:26:59',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(17,'应用管理','yingyong',206,'im_group','type=2',NULL,NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2016-08-13 17:26:25',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(18,'应用菜单','yymenu',207,'im_menu',NULL,NULL,NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2016-08-13 17:27:41',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(19,'发文单','officia',40,'official','type=0','{num}[{class}]{title}','title:{title}\noptdt:{optdt}\ncont:编号：{num}[br]接收单位：{unitname}','公文',1,0,0,0,'GA-Ymd-',1,'all','全体人员','2018-05-06 16:16:18',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,1,0,1,1,0),(20,'收文单','officib',41,'official','type=1','{num}{title}，来文单位：{unitname}','title:{title}\noptdt:{optdt}\ncont:编号：{num}[br]来文单位：{unitname}[br]来文日期：{laidt}','公文',1,0,0,0,'GB-Ymd-',1,'all','全体人员','2018-07-06 12:43:02',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(21,'打卡记录','kqdkjl',32,'kqdkjl',NULL,NULL,'title:{dkdt}(星期{week})\ncont:姓名：{name}[br]打卡类型：{type}[br]打卡IP：{ip}[br]说明：{explain}','考勤',0,0,0,0,NULL,0,'all','全体人员','2017-03-30 10:49:05',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(22,'项目','project',22,'project',NULL,'项目 “{title}”,执行人：{runuser}','title:{title}\noptdt:{startdt}\ncont:类型：{type}[br]创建者：{optname}[br]预计结束：{enddt}[br]进度：{progress}%','基础',1,0,0,0,NULL,0,'all','全体人员','2018-04-26 08:53:20',1,1,NULL,NULL,'待执行|blue,已完成|green,结束|#888888,执行中|#ff6600',0,0,1,1,0,0,0,0,0,0,1,1,0),(23,'外出出差','waichu',33,'kqout',NULL,'[{atype}]{address}{outtime}','title:{optname}[{atype}]{reason}\noptdt:{optdt}\ncont:外出时间：{outtime}[br]预计回岗：{intime}[br]地点：{address}','考勤',1,0,0,0,'KD-Ymd-',1,'all','全体人员','2018-07-06 12:50:22',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(24,'物品领用','goodly',82,'goodm','type=0','{explain}','cont:日期：{applydt}[br]领用物品：{wupinlist}','物品',1,0,0,0,'WA-Ymd-',1,'all','全体人员','2018-07-06 22:00:16',1,1,'goodn','领用物品',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0),(25,'出差报销','finccbx',91,'fininfom','type=1','报销金额:{money},目的:{purpose},成果:{purresult}',NULL,'财务',1,0,0,0,'FB-Ymd-',1,'all','全体人员','2017-05-06 21:29:35',1,1,'fininfos','报销明细',NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(26,'借款单','finjkd',92,'fininfom','type=2','借款金额:{money},用途:{purpose}',NULL,'财务',1,0,0,0,'FC-Ymd-',1,'all','全体人员','2017-05-06 21:45:31',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(27,'还款单','finhkd',93,'fininfom','type=3','还款金额：{money}，还款方式:{paytype}，还款到：{fullname}',NULL,'财务',1,0,0,0,'FD-Ymd-',1,'all','全体人员','2017-05-06 21:45:35',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(28,'物品采购','caigou',83,'goodm','type=1','从[{custname}]采购金额:{money}元','cont:供应商：{custname}[br]采购物品：{wupinlist}[br]金额：{money}元','物品',1,0,0,0,'WB-Ymd-',1,'all','全体人员','2018-07-06 22:41:19',1,1,'goodn','采购物品',NULL,0,0,1,1,0,0,0,1,0,0,0,0,0),(29,'人员档案','userinfo',60,'userinfo',NULL,NULL,NULL,'人事',0,0,0,0,NULL,0,'all','全体人员','2017-07-08 19:38:44',1,0,'userinfos,userinfos','工作经历,教育经历',NULL,0,0,0,1,0,0,1,0,0,0,1,1,0),(30,'考勤信息','leavehr',34,'kqinfo',NULL,NULL,NULL,'考勤',1,0,0,0,NULL,0,'d4','行政人事部','2016-09-13 13:46:55',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(31,'员工合同','userract',61,'userract',NULL,NULL,NULL,'人事',1,0,0,0,NULL,0,'all','全体人员','2017-07-08 16:05:55',1,0,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(32,'转正申请','hrpositive',62,'hrpositive',NULL,'申请[{positivedt}]转正',NULL,'人事',1,0,0,0,'HA-Ymd-',1,'all','全体人员','2017-05-03 21:09:12',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(33,'离职申请','hrredund',63,'hrredund',NULL,'[{redundtype}],在{quitdt}离职',NULL,'人事',1,0,0,0,'HB-Ymd-',1,'all','全体人员','2017-05-03 21:40:44',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(34,'薪资','hrsalary',65,'hrsalary',NULL,'{uname}[{month}]月份的薪资','title:{month}薪资','人事',1,0,0,0,'HC-Ymd-',1,'all','全体人员','2017-08-07 10:03:57',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(35,'客户合同','custract',52,'custract',NULL,'编号[{num}],客户:{custname},{enddt}到期','title:{custname}\ncont:合同编号：{num}[br]日期：{startdt}→{enddt}[br]状态：{moneys}','客户',0,0,0,0,'CC-Ymd-',0,'all','全体人员','2017-07-04 11:34:02',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(36,'收付款单','custfina',53,'custfina',NULL,'{type}：日期[{dt}],{custname},{ispay}','title:{custname}\noptdt:{optdt}\ncont:金额：{money}[br]对应合同：{htnum}','客户',0,0,0,0,'CD-Ymd-',0,'all','全体人员','2018-08-21 14:34:24',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(37,'调薪申请','hrtrsalary',66,'hrtrsalary',NULL,'{optname}申请调薪',NULL,'人事',1,0,0,0,'HD-Ymd-',1,'all','全体人员','2017-05-03 22:12:37',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(38,'人事调动','hrtransfer',67,'hrtransfer',NULL,'[{tranname}]【{trantype}】:{olddeptname}→{newdeptname},{oldranking}→{newranking}',NULL,'人事',1,0,0,0,'HE-Ymd-',1,'all','全体人员','2017-05-03 20:37:38',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(39,'奖惩处罚','reward',68,'reward',NULL,'对【{object}】的{atype},奖惩结果:{result},金额:{money}',NULL,'人事',1,0,0,0,'HF-Ymd-',1,'all','全体人员','2017-05-03 22:22:43',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(40,'知识','knowledge',75,'knowledge',NULL,'{title}','title:{title}\noptdt:{optdt}','资源',0,0,0,0,NULL,0,'all','全体人员','2016-12-06 16:15:13',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(41,'固定资产','assetm',7,'assetm',NULL,NULL,NULL,'行政',0,0,0,0,'CF-Ymd-',0,'all','全体人员','2016-10-26 20:42:04',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(42,'车辆管理','carm',101,'carm',NULL,NULL,NULL,'车辆',0,0,0,0,'CH-Ymd-',0,'all','全体人员','2017-06-22 13:36:39',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(43,'题库','knowtiku',76,'knowtiku',NULL,NULL,'title:[{typename}]{title}\ncont:A：{ana}[br]B：{anb}[br]C：{anc}[br]D：{and}','资源',0,0,0,0,NULL,0,'all','全体人员','2017-05-19 17:01:55',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(44,'车辆预定','carmrese',103,'carmrese',NULL,'{usename}预定车辆【{carnum}】在{startdt}前往{address}',NULL,'车辆',1,0,0,0,'CJ-Ymd-',1,'all','全体人员','2017-05-08 10:15:15',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(45,'图书管理','book',8,'book',NULL,'{title}','title:{title}','行政',0,0,0,0,'CK-Ymd-',0,'all','全体人员','2017-04-12 09:03:49',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(46,'图书借阅','bookborrow',9,'bookborrow',NULL,'{optname}借阅[{bookname}]',NULL,'行政',1,0,0,0,'CL-Ymd-',1,'all','全体人员','2017-05-08 11:15:03',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(47,'邮件','emailm',25,'emailm',NULL,'{title},发件人:{sendname}','title:{title}\noptdt:{senddt}\ncont:发件人：{sendname}[br]收件人：{recename}','基础',1,0,0,0,NULL,0,'all','全体人员','2016-12-08 16:11:33',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(48,'印章证照','seal',10,'seal',NULL,NULL,NULL,'行政',0,0,0,0,NULL,0,'all','全体人员','2016-12-08 21:02:54',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(49,'印章证照使用','sealapl',11,'sealapl',NULL,'{optname}申请使用[{sealname}]',NULL,'行政',1,0,0,0,'CM-Ymd-',1,'all','全体人员','2018-09-14 17:43:13',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(50,'待办处理','daiban',208,'flow_bill',NULL,NULL,NULL,'系统',0,0,0,0,NULL,0,'all','全体人员','2016-12-15 17:48:55',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(51,'打卡异常','kqerr',35,'kqerr',NULL,'{optname}[{errtype}]申请',NULL,'考勤',1,0,0,0,'KE-Ymd-',1,'all','全体人员','2017-08-28 12:12:51',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(52,'单据作废申请','tovoid',27,'tovoid',NULL,'{optname}申请单号:{tonum}作废,模块:{modename}',NULL,'基础',1,0,0,0,'ZF-Ymd-',1,'all','全体人员','2016-12-19 13:43:28',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(53,'个人通讯录','vcard',26,'vcard',NULL,NULL,'title:{name}\ncont:电话：{tel}[br]手机：{mobile}[br]邮箱：{email}[br]所在组：{gname}','基础',0,0,0,0,NULL,0,'all','全体人员','2016-12-20 16:30:42',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(54,'会议纪要','meetjy',3,'meet','type=2',NULL,NULL,'行政',1,0,0,0,'XC-Ymd-',0,'all','全体人员','2017-02-28 10:40:58',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(55,'定位记录','kqdw',36,'location',NULL,NULL,'title:{name}\noptdt:{optdt}\ncont:星期：{week}[br]地址：{label}[br]说明：{explain}','考勤',0,0,0,0,NULL,0,'all','全体人员','2017-03-30 11:22:03',1,0,NULL,NULL,NULL,1,0,0,1,0,0,0,0,0,0,1,1,0),(56,'考试培训','knowtraim',77,'knowtraim',NULL,'{title},时间{startdt}→{enddt}','title:{title}\noptdt:{start}','资源',1,0,0,0,'ZA-Ymd-',0,'all','全体人员','2018-04-18 19:32:51',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(58,'车辆信息登记','carms',102,'carms',NULL,NULL,NULL,'车辆',1,0,0,0,'CN-Ymd',0,'all','全体人员','2017-06-21 21:18:07',1,1,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(59,'车辆维修','carmwx',104,'carmang','type=0',NULL,NULL,'车辆',1,0,0,0,'CX-Ymd-',1,'all','全体人员','2017-06-26 21:22:59',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(60,'车辆保养','carmby',105,'carmang','type=1','车辆保养',NULL,'车辆',1,0,0,0,'CY-Ymd-',1,'all','全体人员','2017-06-27 13:24:15',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(61,'单据提醒设置','remind',28,'flow_remind',NULL,NULL,NULL,'基础',0,0,0,0,NULL,0,'all','全体人员','2017-06-30 13:05:47',1,0,NULL,NULL,NULL,1,1,1,1,0,0,0,0,0,0,1,1,0),(62,'维修报修','repair',12,'repair',NULL,'{assetm}:{reason}',NULL,'行政',1,0,0,0,'WX-Ymd-',1,'all','全体人员','2017-07-07 13:40:16',1,1,NULL,NULL,'待处理,已完成',0,0,1,1,0,0,0,0,0,0,1,1,0),(63,'公司单位','company',200,'company',NULL,NULL,NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2017-07-08 14:21:37',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(64,'付款申请','finpay',94,'fininfom','type=4','申请付款{money}元',NULL,'财务',1,0,0,0,'FE-Ymd-',1,'all','全体人员','2017-08-07 20:46:42',1,1,NULL,NULL,'待处理,已付款',0,0,1,1,0,0,0,0,0,0,1,1,0),(65,'开票申请','finkai',95,'fininfom','type=5','[{fullname}]要开票{money}元',NULL,'财务',1,0,0,0,'FF-Ymd-',1,'all','全体人员','2018-08-31 16:27:44',1,1,NULL,NULL,'待处理,已开票,不同意',0,0,1,1,0,0,0,0,0,0,1,1,0),(66,'单据通知设置','flowtodo',209,'flow_todo',NULL,'{summary}',NULL,'系统',0,0,0,0,NULL,0,'u1','管理员','2017-08-23 13:51:23',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,0,0,0),(67,'订阅管理','subscribe',210,'subscribe',NULL,'{cont}',NULL,'系统',0,0,0,0,NULL,0,'all','全体人员','2017-09-02 13:51:07',1,0,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(68,'订阅报表','subscribeinfo',211,'subscribeinfo',NULL,'{title}','title:{title}\noptdt:{optdt}\ncont:{cont}','系统',1,0,0,0,NULL,0,'all','全体人员','2017-09-02 22:26:18',1,0,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(69,'公文查阅','officic',42,'official','status=1','{title}','title:{title}\noptdt:{optdt}\ncont:编号：{num}[br]来文单位：{unitsame}','公文',1,0,0,0,NULL,0,'all','全体人员','2017-11-10 13:08:13',1,0,NULL,NULL,NULL,1,1,1,1,0,0,0,0,0,0,1,1,0),(70,'考勤机设备','kqjsn',37,'kqjsn',NULL,NULL,NULL,'考勤',1,0,0,0,NULL,0,'all','全体人员','2017-11-15 13:23:04',1,1,NULL,NULL,NULL,0,0,0,1,0,0,2,0,0,0,0,0,0),(71,'考核评分','hrcheck',72,'hrcheck',NULL,'{startdt}“{title}”考核','title:{title}\noptdt:{startdt}','人事',1,0,0,0,'HG-Ymd-',0,'all','全体人员','2018-09-07 18:54:17',1,0,'hrchecks,hrcheckn','考核内容,评分记录',NULL,1,1,1,1,0,0,0,0,0,0,0,0,0),(72,'演示测试','demo',300,'demo',NULL,NULL,NULL,'系统',1,0,0,0,'YS-Ymd-',2,'all','全体人员','2018-09-08 12:00:36',1,0,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(73,'仓库管理','godepot',81,'godepot',NULL,NULL,NULL,'物品',1,0,0,0,NULL,0,'all','全体人员','2017-12-28 14:30:00',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,0,0,0),(74,'文档分区','worc',110,'worc',NULL,NULL,NULL,'文档',0,0,0,0,NULL,0,'all','全体人员','2017-11-18 11:39:47',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(75,'文档','word',111,'word',NULL,NULL,NULL,'文档',1,0,0,0,NULL,0,'all','全体人员','2017-11-20 11:54:31',1,0,NULL,NULL,NULL,0,0,0,1,0,0,0,0,0,0,1,1,0),(76,'调拨单','diaobo',84,'goodm','type=3','物品调拨',NULL,'物品',1,0,0,0,'WC-Ymd-',1,'all','全体人员','2017-12-28 14:32:32',1,1,'goodn','调拨物品',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0),(77,'客户申请使用','custappy',54,'custappy',NULL,'{optname}申请客户[{custname}]使用',NULL,'客户',1,0,0,0,'CE-Ymd-',1,'all','全体人员','2018-03-07 14:56:18',1,1,NULL,NULL,NULL,0,0,1,1,0,0,127,0,0,1440,1,1,0),(78,'人员需求','hrdemand',69,'hrdemint','type=0','{bumen}，岗位“{zhiwei}”需{renshu}人',NULL,'人事',1,0,0,0,'HH-Ymd-',1,'all','全体人员','2018-04-18 22:25:39',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,1,1,0),(79,'面试安排','hrmanshi',70,'hrdemint','type=1','{name}在{msdt}面试{zhiwei}，面试人{msuser}',NULL,'人事',1,0,0,0,'HI-Ymd',1,'all','全体人员','2018-04-18 22:45:19',1,1,NULL,NULL,'待处理,已完成,不适合',0,0,1,1,0,0,0,0,0,0,1,1,0),(80,'回执确认','receipt',212,'receipt',NULL,NULL,'cont:模块：{modename}[br]发送人：{optname}[br]内容：{explain}','系统',0,0,0,0,NULL,0,'all','全体人员','2018-07-06 21:26:23',1,1,NULL,NULL,NULL,0,0,1,1,0,0,0,0,0,0,0,0,0),(81,'考核项目','hrkaohem',71,'hrkaohem',NULL,NULL,NULL,'人事',0,0,0,0,NULL,0,'all','全体人员','2018-09-07 17:36:07',1,0,'hrkaohes,hrkaohen','考核项目内容,评分人',NULL,0,0,0,1,0,0,2,0,0,0,0,0,0),(83,'薪资模版','hrsalarm',64,'hrsalarm',NULL,NULL,NULL,'人事',1,0,0,0,NULL,0,'all','全体人员','2018-09-17 22:45:19',1,0,'hrsalars','字段内容项目',NULL,0,0,1,1,0,0,0,0,0,0,0,0,0),(84,'社保公积金','hrshebao',63,'hrshebao',NULL,NULL,NULL,'人事',1,0,0,0,NULL,0,'all','全体人员','2018-09-23 19:31:33',1,0,NULL,NULL,NULL,0,0,1,1,0,0,2,0,0,0,0,0,0);
/*!40000 ALTER TABLE `jouryu_flow_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_todo`
--

DROP TABLE IF EXISTS `jouryu_flow_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL COMMENT '名称标题',
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `setid` smallint(6) DEFAULT '0' COMMENT '对应模块',
  `explain` varchar(100) DEFAULT NULL COMMENT '说明',
  `whereid` smallint(6) DEFAULT '0' COMMENT '对应条件id',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `receid` varchar(500) DEFAULT NULL,
  `recename` varchar(500) DEFAULT NULL COMMENT '通知给',
  `changefields` varchar(200) DEFAULT NULL COMMENT '改变字段',
  `changecourse` varchar(30) DEFAULT NULL COMMENT '对应步做id',
  `boturn` tinyint(1) DEFAULT '0' COMMENT '提交时',
  `boedit` tinyint(1) DEFAULT '0' COMMENT '编辑时',
  `bochang` tinyint(1) DEFAULT '0' COMMENT '字段改变时',
  `bodel` tinyint(1) DEFAULT '0' COMMENT '删除时',
  `bozuofei` tinyint(1) DEFAULT '0' COMMENT '作废时',
  `botong` tinyint(1) DEFAULT '0' COMMENT '步骤处理通过时',
  `bobutong` tinyint(1) DEFAULT '0' COMMENT '步骤处理不通过时',
  `bofinish` tinyint(1) DEFAULT '0' COMMENT '处理完成时',
  `bozhui` tinyint(1) DEFAULT '0' COMMENT '追加说明时',
  `bozhuan` tinyint(1) DEFAULT '0' COMMENT '流程转办时',
  `toturn` tinyint(1) DEFAULT '0' COMMENT '是否通知给提交人',
  `tocourse` tinyint(1) DEFAULT '0' COMMENT '是否通知给流程所有参与人',
  `todofields` varchar(500) DEFAULT NULL COMMENT '通知给主表上字段',
  `summary` varchar(500) DEFAULT NULL COMMENT '通知内容摘要',
  `botask` tinyint(1) DEFAULT '0' COMMENT '计划任务',
  `boping` tinyint(1) DEFAULT '0' COMMENT '评论时',
  `bohuiz` tinyint(1) DEFAULT '0' COMMENT '回执时',
  `tosuper` tinyint(1) DEFAULT '0' COMMENT '直属上级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='单据通知设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_todo`
--

LOCK TABLES `jouryu_flow_todo` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_todo` DISABLE KEYS */;
INSERT INTO `jouryu_flow_todo` VALUES (1,'车辆信息到期提醒',NULL,58,'这只是个事例',96,0,'u1','管理员',NULL,NULL,0,0,0,0,0,0,0,0,0,0,1,0,NULL,'车辆[{carid}]的{otype}将在{enddt}到期。',1,0,0,0),(2,'公文通知查阅',NULL,19,NULL,0,1,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,0,'receid','你有一条公文需要查阅',0,0,0,0),(3,'公文通知查阅',NULL,20,NULL,0,1,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,0,'receid','你有一条公文需要查阅',0,0,0,0),(4,'通知仓库管理员出库操作',NULL,24,NULL,0,1,'u1','管理员',NULL,NULL,0,0,0,0,0,0,0,1,0,0,0,0,NULL,'有人申请物品领用，请及时处理出库操作。',0,0,0,0),(6,'项目信息修改提醒',NULL,22,NULL,0,1,NULL,NULL,NULL,NULL,0,1,0,0,0,0,0,0,0,0,0,0,'runuserid,fuzeid','项目“{title}”被{optname}修改了',0,1,0,0),(7,'新增项目提醒',NULL,22,NULL,0,1,NULL,NULL,NULL,NULL,1,0,0,0,0,0,0,0,0,0,0,0,'runuserid,fuzeid','{optname}新增项目“{title}”，负责人{fuze}',0,0,0,0),(9,'考核评分提醒','pftodo',71,NULL,0,1,NULL,NULL,NULL,NULL,0,0,0,0,0,0,0,0,0,0,0,0,'pfrenids','你有“{applyname}”的考核评分需要你评分',0,0,0,0);
/*!40000 ALTER TABLE `jouryu_flow_todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_todos`
--

DROP TABLE IF EXISTS `jouryu_flow_todos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modenum` varchar(30) DEFAULT '0' COMMENT '对应模块编号',
  `modename` varchar(30) DEFAULT NULL COMMENT '模块名称',
  `table` varchar(30) DEFAULT NULL COMMENT '对应主表',
  `mid` int(11) DEFAULT '0' COMMENT '主表Id',
  `uid` int(11) DEFAULT '0' COMMENT '对应人员',
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `readdt` datetime DEFAULT NULL COMMENT '已读时间',
  `isread` tinyint(1) DEFAULT '0' COMMENT '是否已读',
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`),
  KEY `modenum` (`modenum`,`mid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='单据通知给对应人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_todos`
--

LOCK TABLES `jouryu_flow_todos` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_todos` DISABLE KEYS */;
INSERT INTO `jouryu_flow_todos` VALUES (2,'waichu','外出出差','kqout',5,5,'2018-06-15 20:28:19','2018-08-29 16:50:46',1),(5,'gong','通知公告','infor',6,2,'2018-10-10 11:37:20',NULL,0),(6,'gong','通知公告','infor',6,3,'2018-10-10 11:37:20',NULL,0),(7,'gong','通知公告','infor',6,4,'2018-10-10 11:37:20',NULL,0),(8,'gong','通知公告','infor',6,5,'2018-10-10 11:37:20',NULL,0),(9,'gong','通知公告','infor',6,6,'2018-10-10 11:37:20',NULL,0),(10,'gong','通知公告','infor',6,7,'2018-10-10 11:37:20',NULL,0),(11,'gong','通知公告','infor',6,8,'2018-10-10 11:37:20',NULL,0),(13,'officia','发文单','official',4,5,'2018-05-17 17:13:21',NULL,0),(15,'officib','收文单','official',3,5,'2017-08-30 22:59:35',NULL,0),(17,'schedule','日程','schedule',1,2,'2018-10-01 07:55:03',NULL,0),(18,'schedule','日程','schedule',4,3,'2018-10-01 07:55:03',NULL,0),(19,'schedule','日程','schedule',1,4,'2018-10-01 07:55:03',NULL,0),(20,'schedule','日程','schedule',1,5,'2018-10-01 07:55:03',NULL,0),(21,'schedule','日程','schedule',1,6,'2018-10-01 07:55:03',NULL,0),(22,'schedule','日程','schedule',1,7,'2018-10-01 07:55:03',NULL,0),(23,'schedule','日程','schedule',1,8,'2018-10-01 07:55:03',NULL,0),(27,'officia','发文单','official',4,2,'2018-05-17 17:13:21',NULL,0),(29,'officia','发文单','official',4,4,'2018-05-17 17:13:21',NULL,0),(30,'officia','发文单','official',4,6,'2018-05-17 17:13:21',NULL,0),(31,'officia','发文单','official',4,7,'2018-05-17 17:13:21',NULL,0),(32,'officia','发文单','official',4,8,'2018-05-17 17:13:21',NULL,0),(39,'emailm','邮件','emailm',1,2,'2018-07-27 10:46:16',NULL,0),(40,'emailm','邮件','emailm',1,3,'2018-07-27 10:46:16',NULL,0),(41,'emailm','邮件','emailm',1,4,'2018-07-27 10:46:16',NULL,0),(42,'emailm','邮件','emailm',1,5,'2018-08-13 14:02:28',NULL,0),(43,'emailm','邮件','emailm',1,6,'2018-07-27 10:46:16',NULL,0),(44,'emailm','邮件','emailm',1,7,'2018-07-27 10:46:16',NULL,0),(45,'emailm','邮件','emailm',1,8,'2018-07-27 10:46:16',NULL,0),(46,'hrcheck','考核评分','hrcheck',7,5,'2018-09-07 22:18:24','2018-09-07 22:20:28',1),(47,'hrcheck','考核评分','hrcheck',6,4,'2018-09-07 22:18:24',NULL,0),(49,'caigou','物品采购','goodm',8,5,'2018-07-06 18:27:39','2018-07-28 22:06:05',1),(50,'caigou','物品采购','goodm',8,4,'2018-07-28 22:06:08','2018-07-28 22:06:21',1),(52,'goodly','物品领用','goodm',9,4,'2018-09-08 13:42:37',NULL,0),(54,'daily','工作日报','daily',26,5,'2018-07-02 18:55:44',NULL,0),(55,'daily','工作日报','daily',22,6,'2017-11-26 10:01:30','2017-11-26 10:04:08',1),(56,'daily','工作日报','daily',22,8,'2017-11-26 10:01:30',NULL,0),(57,'daily','工作日报','daily',22,3,'2017-11-26 10:05:22',NULL,0),(58,'daily','工作日报','daily',26,7,'2018-07-02 18:55:44',NULL,0),(59,'diaobo','调拨单','goodm',5,5,'2017-12-28 14:24:10','2017-12-28 14:30:58',1),(61,'hrredund','离职申请','hrredund',1,5,'2018-09-15 17:49:38','2018-09-15 17:50:38',1),(63,'custappy','客户申请使用','custappy',1,5,'2018-03-06 15:47:27','2018-03-06 16:24:01',1),(65,'custappy','客户申请使用','custappy',2,7,'2018-03-06 21:14:03',NULL,0),(66,'hrdemand','人员需求','hrdemint',1,4,'2018-04-18 19:49:46',NULL,0),(68,'hrmanshi','面试安排','hrdemint',2,4,'2018-04-18 22:27:20',NULL,0),(69,'hrmanshi','面试安排','hrdemint',3,5,'2018-04-18 22:33:50','2018-04-18 22:34:52',1),(70,'hrmanshi','面试安排','hrdemint',3,7,'2018-04-18 22:42:07','2018-04-18 22:43:59',1),(72,'goods','物品','goods',6,2,'2018-04-25 22:33:46',NULL,0),(73,'goods','物品','goods',6,3,'2018-04-25 22:33:46',NULL,0),(74,'goods','物品','goods',6,4,'2018-04-25 22:33:46',NULL,0),(75,'goods','物品','goods',6,5,'2018-04-25 22:33:46',NULL,0),(76,'goods','物品','goods',6,6,'2018-04-25 22:33:46',NULL,0),(77,'goods','物品','goods',6,7,'2018-04-25 22:33:46',NULL,0),(78,'goods','物品','goods',6,8,'2018-04-25 22:33:46',NULL,0),(80,'project','项目','project',3,2,'2018-04-25 22:39:05',NULL,0),(81,'project','项目','project',3,3,'2018-04-25 22:39:05',NULL,0),(82,'project','项目','project',3,4,'2018-04-25 22:39:05',NULL,0),(83,'project','项目','project',3,5,'2018-04-25 22:39:05',NULL,0),(84,'project','项目','project',5,6,'2018-07-07 09:20:54',NULL,0),(85,'project','项目','project',5,7,'2018-07-07 09:20:54',NULL,0),(86,'project','项目','project',5,8,'2018-07-07 09:20:54',NULL,0),(94,'leave','请假条','kqinfo',110,2,'2018-07-28 21:55:00','2018-07-28 21:55:29',1),(95,'leave','请假条','kqinfo',110,5,'2018-07-28 21:55:00','2018-09-02 12:42:14',1),(97,'hrpositive','转正申请','hrpositive',3,5,'2018-06-15 20:16:18','2018-09-06 21:27:15',1),(98,'jiaban','加班单','kqinfo',104,5,'2018-08-20 10:59:14','2018-08-21 12:11:35',1),(99,'leave','请假条','kqinfo',109,4,'2018-09-06 20:44:05',NULL,0),(100,'sealapl','印章申请','sealapl',4,5,'2018-07-02 09:52:34','2018-07-02 09:52:50',1),(101,'sealapl','印章申请','sealapl',3,6,'2018-09-01 13:43:52',NULL,0),(105,'caigou','物品采购','goodm',3,3,'2018-08-29 16:44:39','2018-09-07 12:05:52',1),(112,'work','任务','work',6,7,'2018-09-01 13:43:52',NULL,0),(113,'hrpositive','转正申请','hrpositive',3,4,'2018-09-06 21:33:48',NULL,0),(114,'carmrese','车辆预定','carmrese',1,5,'2018-09-03 19:51:16','2018-09-03 19:51:28',1),(115,'carmrese','车辆预定','carmrese',1,3,'2018-09-03 19:51:56','2018-09-03 19:52:11',1),(116,'carmrese','车辆预定','carmrese',1,6,'2018-09-03 19:52:42',NULL,0),(118,'hrcheck','考核评分','hrcheck',3,2,'2018-09-07 22:18:24',NULL,0),(119,'hrcheck','考核评分','hrcheck',3,3,'2018-09-07 22:18:24',NULL,0),(121,'hrcheck','考核评分','hrcheck',4,6,'2018-09-07 22:18:24',NULL,0),(122,'hrcheck','考核评分','hrcheck',5,7,'2018-09-07 22:18:24',NULL,0),(123,'hrcheck','考核评分','hrcheck',6,8,'2018-09-07 22:18:24',NULL,0),(124,'schedule','日程','schedule',3,1,'2018-10-10 11:55:05',NULL,0),(125,'gong','通知公告','infor',6,1,'2018-10-10 11:37:20',NULL,0),(127,'meet','会议','meet',6,1,'2018-09-22 21:55:04',NULL,0),(128,'meet','会议','meet',6,2,'2018-09-22 21:55:04',NULL,0),(129,'meet','会议','meet',6,3,'2018-09-22 21:55:04',NULL,0),(130,'meet','会议','meet',6,4,'2018-09-22 21:55:04',NULL,0),(131,'meet','会议','meet',6,5,'2018-09-22 21:55:04',NULL,0),(132,'meet','会议','meet',6,6,'2018-09-22 21:55:04',NULL,0),(133,'meet','会议','meet',6,7,'2018-09-22 21:55:04',NULL,0),(134,'meet','会议','meet',6,8,'2018-09-22 21:55:04',NULL,0),(135,'hrsalary','薪资','hrsalary',16,1,'2018-10-10 14:56:32',NULL,0),(137,'hrsalary','薪资','hrsalary',1,4,'2018-10-09 22:48:53',NULL,0),(138,'hrsalary','薪资','hrsalary',2,2,'2018-10-10 14:56:32',NULL,0),(139,'hrsalary','薪资','hrsalary',16,6,'2018-10-10 15:01:30','2018-10-10 15:05:17',1);
/*!40000 ALTER TABLE `jouryu_flow_todos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_flow_where`
--

DROP TABLE IF EXISTS `jouryu_flow_where`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_flow_where` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `setid` smallint(6) DEFAULT '0' COMMENT '对应模块',
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `pnum` varchar(30) DEFAULT NULL COMMENT '编号分组',
  `name` varchar(50) DEFAULT NULL COMMENT '条件名称',
  `wheresstr` varchar(500) DEFAULT NULL COMMENT '对应表条件',
  `whereustr` varchar(500) DEFAULT NULL COMMENT '用户条件',
  `wheredstr` varchar(500) DEFAULT NULL COMMENT '对应部门条件',
  `sort` smallint(6) DEFAULT NULL,
  `explain` varchar(200) DEFAULT NULL,
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL COMMENT '包含用户',
  `nreceid` varchar(200) DEFAULT NULL,
  `nrecename` varchar(200) DEFAULT NULL COMMENT '不包含用户',
  `islb` tinyint(1) DEFAULT '0' COMMENT '是否在生成列表页面上显示',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `syrid` varchar(200) DEFAULT NULL,
  `syrname` varchar(200) DEFAULT NULL COMMENT '此条件可适用对象',
  PRIMARY KEY (`id`),
  KEY `setid` (`setid`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COMMENT='单据条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_flow_where`
--

LOCK TABLES `jouryu_flow_where` WRITE;
/*!40000 ALTER TABLE `jouryu_flow_where` DISABLE KEYS */;
INSERT INTO `jouryu_flow_where` VALUES (1,1,'my',NULL,'与我相关','e3JlY2VpZH0gYW5kIGBzdGF0dXNgPTE:',NULL,NULL,0,'receid包含用户',NULL,NULL,NULL,NULL,1,1,NULL,NULL),(2,5,NULL,NULL,'大于3天','YHRvdGFsc2AgPiAyNA::',NULL,NULL,0,'时间(小时) 大于 24',NULL,NULL,NULL,NULL,0,1,NULL,NULL),(3,34,NULL,NULL,'管理员对应开发部',NULL,NULL,NULL,0,NULL,'d2','开发部',NULL,NULL,0,1,NULL,NULL),(4,4,NULL,NULL,'未分配的记录','YGRpc3RgIGlzIG51bGw:',NULL,NULL,20,'分配给 为空 ',NULL,NULL,NULL,NULL,0,1,NULL,NULL),(5,1,'wfb',NULL,'我发布','YG9wdGlkYD17dWlkfSBhbmQgYHN0YXR1c2A9MQ::',NULL,NULL,1,'optid字段等于当前用户',NULL,NULL,NULL,NULL,1,1,NULL,NULL),(7,3,'my',NULL,'我的日报','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(8,3,'undall',NULL,'下属全部日报','YHVpZGAgaW4oe2FsbHN1cGVyfSk:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(9,3,'undwd',NULL,'全部下属未读','e3VpZCxkb3duYWxsfSBhbmQge3VucmVhZH0:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(10,1,'wexx',NULL,'我未读','e3JlY2VpZH0gYW5kIHt1bnJlYWR9IGFuZCBgc3RhdHVzYD0x',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(11,2,'today',NULL,'今日会议','YHN0YXR1c2A9MSBhbmQgYHN0YXJ0ZHRgIGxpa2UgJ1tkYXRlXSUn',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(12,2,'bzhy',NULL,'本周会议','YHN0YXR1c2A9MSBhbmQgYHN0YXJ0ZHRgID49ICd7d2Vla2ZpcnN0fSc:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(13,2,'all',NULL,'全部会议','YHN0YXR1c2A9MQ::',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(14,2,'myfq',NULL,'我发起会议','YHN0YXR1c2A9MSBhbmQgYG9wdGlkYD17dWlkfQ::',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(15,13,NULL,NULL,'大乔查看权限',NULL,NULL,NULL,0,NULL,'d3,d4','财务部,行政人事部',NULL,NULL,0,1,NULL,NULL),(16,4,'my',NULL,'我的任务','e2Rpc3RpZCx1aWRpbn0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(17,4,'down',NULL,'我下属任务','e2Rpc3RpZCxkb3dufQ::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(18,4,'wcj',NULL,'我创建任务','YG9wdGlkYD17dWlkfQ::',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(19,4,'dd',NULL,'我督导任务','e2RkaWQsdWlkaW59',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(20,4,'wwc',NULL,'我未完成任务','YHN0YXR1c2AgaW4oMyw0KSBhbmQge2Rpc3RpZCx1aWRpbn0:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(21,4,'all','all','所有任务','MT0x',NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(22,22,'my',NULL,'我执行项目','e3J1bnVzZXJpZCxyZWNlbm90fQ::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(23,22,'wwc',NULL,'我未完成项目','e3J1bnVzZXJpZCxyZWNlbm90fSBhbmQgYHN0YXR1c2AgaW4oMCwzKQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(24,22,'myfz',NULL,'我负责项目','e2Z1emVpZCx1aWRpbn0:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(25,22,'mycj',NULL,'我创建项目','YG9wdGlkYD17dWlkfQ::',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(26,22,'all','all','所有项目','MT0x',NULL,NULL,5,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(27,12,'my',NULL,'我的日程','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(28,12,'rece',NULL,'提醒给我的','e3JlY2VpZCxyZWNlbm90fQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(29,4,'ywc',NULL,'已完成任务','e2Rpc3RpZCx1aWRpbn0gYW5kIGBzdGF0dXNgPTE:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL),(30,7,'my',NULL,'我的客户','YHVpZGA9e3VpZH0gYW5kIGBzdGF0dXNgPTE:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(31,7,'gxgw','shate','共享给我的','e3NoYXRlaWQsdWlkaW59',NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(32,7,'myall',NULL,'我全部客户','YHVpZGA9e3VpZH0:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(33,7,'my_ting',NULL,'我停用客户','dWlkPXt1aWR9IGFuZCBgc3RhdHVzYD0w',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(34,7,'downall','down','下属全部客户','YHVpZGAgaW4oe3N1cGVyfSk:',NULL,NULL,9,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(35,7,'downty','down','下属停用','YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0dXNgPTA:',NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(36,7,'downstat','down','下属标★','YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBpc3N0YXRgPTE:',NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(37,7,'mystat',NULL,'我标★客户','YHVpZGA9e3VpZH0gYW5kIGBpc3N0YXRgPTE:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(38,7,'distdfp','dist','待分配客户','KGB1aWRgPXt1aWR9IG9yIGBmemlkYD17dWlkfSBvciBgY3JlYXRlaWRgPXt1aWR9IG9yIGB1aWRgIGluKHtzdXBlcn0pKSBhbmQgYHVpZGA9MA::',NULL,NULL,31,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(39,7,'distyfp','dist','已分配的','KGB1aWRgPXt1aWR9IG9yIGBmemlkYD17dWlkfSBvciBgY3JlYXRlaWRgPXt1aWR9ICBvciBgdWlkYCBpbih7c3VwZXJ9KSkgYW5kIGB1aWRgPjA:',NULL,NULL,32,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(40,7,'distall','dist','全部分配状态','KGB1aWRgPXt1aWR9IG9yIGBmemlkYD17dWlkfSBvciBgY3JlYXRlaWRgPXt1aWR9ICBvciBgdWlkYCBpbih7c3VwZXJ9KSk:',NULL,NULL,33,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(41,7,'mycj',NULL,'我创建','YGNyZWF0ZWlkYD17dWlkfQ::',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(42,7,'all','all','所有客户','MT0x',NULL,NULL,50,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(43,7,'allty','all','所有停用客户','YHN0YXR1c2A9MA::',NULL,NULL,51,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(44,29,'my',NULL,'我的档案','W0FdYGlkYD17dWlkfQ::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(45,34,'my',NULL,'我的薪资','YHh1aWRgPXt1aWR9',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL),(46,8,'mygx',NULL,'我需跟进','YHVpZGA9e3VpZH0gYW5kIGBzdGF0ZWA9MA::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(47,8,'mycj',NULL,'已成交','YHVpZGA9e3VpZH0gYW5kIGBzdGF0ZWA9MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(48,8,'myds',NULL,'已丢失','YHVpZGA9e3VpZH0gYW5kIGBzdGF0ZWA9Mg::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(49,8,'myall',NULL,'我所有销售机会','YHVpZGA9e3VpZH0g',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(50,8,'downgj','down','下属需跟进','YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0ZWA9MA::',NULL,NULL,11,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(51,8,'downcj','down','下属已成交','YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0ZWA9MQ::',NULL,NULL,12,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(52,8,'downds','down','下属已丢失','YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0ZWA9Mg::',NULL,NULL,13,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(53,8,'downall','down','下属所有销售机会','YHVpZGAgaW4oe3N1cGVyfSkg',NULL,NULL,14,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(54,8,'all','all','所有销售机会','MT0x',NULL,NULL,22,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(55,8,'allgj','all','所有需跟进','YHN0YXRlYD0w',NULL,NULL,21,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(56,8,'allcj','all','所有已成交','YHN0YXRlYD0x',NULL,NULL,23,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(57,8,'allds','all','所有已丢失','YHN0YXRlYD0y',NULL,NULL,24,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(58,38,'my',NULL,'我的调动','W0FdYHRyYW51aWRgPXt1aWR9',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(59,38,'mysq',NULL,'我申请调动','YHVpZGA9e3VpZH0:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(60,38,'all','all','所有调动','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(61,32,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(62,32,'all','all','所有申请','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(63,33,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(64,33,'all','all','所有申请','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(65,37,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(66,37,'all','all','所有申请','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(67,39,'objmy',NULL,'奖惩对象是我','YG9iamVjdGlkYD17dWlkfQ::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(68,39,'my',NULL,'我申请的','YHVpZGA9e3VpZH0:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(69,39,'all','all','所有奖惩','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(70,1,'all','all','所有公告','YHN0YXR1c2A9MQ::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(71,11,'all','all','所有费用报销','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(72,11,'my',NULL,'我的报销','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(73,25,'all','all','所有出差报销','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(74,25,'my',NULL,'我的出差报销','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(75,26,'all','all','所有借款单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(76,26,'my',NULL,'我的借款单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(77,27,'all','all','所有还款单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(78,27,'my',NULL,'我的还款单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(79,49,'all','all','所有印章申请','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(80,49,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(81,44,'all','all','所有车辆预定','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(82,44,'my',NULL,'我的预定','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(83,44,'myjia',NULL,'驾驶员是我','e2ppYWlkLHVpZGlufQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(84,44,'myuse',NULL,'使用人包含我','e3VzZWlkLHJlY2VhbGx9',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(85,46,'all','all','所有图书借阅','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(86,46,'my',NULL,'我的借阅','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(87,29,'all','all','所有档案','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(88,3,'all','all','所有日报','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(89,56,'all','all','所有培训','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(90,43,'all','all','所有题库','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(91,43,'weidu',NULL,'我未读','e3VucmVhZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(93,58,'all','all','所有登记','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(94,42,'all','all','所有车辆','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(95,42,'public','all','可预定车辆','YGlzcHVibGljYD0x',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(96,58,'kydq','all','7天内到期','YGVuZGR0YCBpcyBub3QgbnVsbCBhbmQgYGVuZGR0YDx7ZGF0ZSs3fSBhbmQgYGVuZGR0YD49e2RhdGV9',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(97,35,'my',NULL,'我所有合同','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(98,35,'ygq',NULL,'已过期','YHVpZGA9e3VpZH0gYW5kIGBlbmRkdGA8e2RhdGV9',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(99,35,'daisfk',NULL,'待收/付款','YHVpZGA9e3VpZH0gYW5kIGBpc3BheWA9MA::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(100,35,'qbsfk',NULL,'已全部收/付款','YHVpZGA9e3VpZH0gYW5kIGBpc3BheWA9MQ::',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(101,35,'bfsfk',NULL,'部分收/付款','YHVpZGA9e3VpZH0gYW5kIGBpc3BheWA9Mg::',NULL,NULL,4,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(102,35,'downall','down','下属所有合同','IHt1aWQsZG93bn0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(103,35,'downygq','down','已过期','IHt1aWQsZG93bn0gYW5kIGBlbmRkdGA8e2RhdGV9',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(104,35,'all','all','所有合同','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(105,36,'myskd',NULL,'我收款单','YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0w',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(106,36,'myskdys',NULL,'我已收款','YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0wIGFuZCBgaXNwYXlgPTE:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(107,36,'myskdws',NULL,'我未收款','YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0wIGFuZCBgaXNwYXlgPTA:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(108,36,'downskd','downskd','下属收款单','IHt1aWQsZG93bn0gYW5kIGB0eXBlYD0w',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(109,36,'downskdys','downskd','下属已收款','e3VpZCxkb3dufSBhbmQgYHR5cGVgPTAgYW5kIGBpc3BheWA9MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(110,36,'downskdwsk','downskd','下属未收款','e3VpZCxkb3dufSBhbmQgYHR5cGVgPTAgYW5kIGBpc3BheWA9MA::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(111,36,'allskd','allskd','所有收款单','YHR5cGVgPTA:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(112,36,'allskdys','allskd','所有已收款','YHR5cGVgPTAgYW5kIGBpc3BheWA9MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(113,36,'allskdwsk','allskd','所有未收款','YHR5cGVgPTAgYW5kIGBpc3BheWA9MA::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(114,36,'myfkd','fkd','我的付款单','YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(115,36,'myfkdyf','fkd','我已付款','YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0xIGFuZCBgaXNwYXlgPTE:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(116,36,'myfkdwf','fkd','我未付款','YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0xIGFuZCBgaXNwYXlgPTA:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(117,36,'downfkd','downfkd','下属付款单','e3VpZCxkb3dufSBhbmQgYHR5cGVgPTE:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(118,36,'downfkdyf','downfkd','下属已付款','e3VpZCxkb3dufSBhbmQgYHR5cGVgPTEgYW5kIGBpc3BheWA9MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(119,36,'downfkdwf','downfkd','下属未付款','e3VpZCxkb3dufSBhbmQgYHR5cGVgPTEgYW5kIGBpc3BheWA9MA::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(120,36,'allfkd','allfkd','所有付款单','YHR5cGVgPTE:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(121,36,'allfkdyf','allfkd','所有已付款','YHR5cGVgPTEgYW5kIGBpc3BheWA9MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(122,36,'allfkdwf','allfkd','所有未付款','YHR5cGVgPTEgYW5kIGBpc3BheWA9MA::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(123,59,'all','all','所有维修','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(124,60,'all','all','所有保养记录','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(125,59,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(126,59,'myjia',NULL,'驾驶员包含我','e2ppYWlkLHVpZGlufQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(127,60,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(128,60,'myjia',NULL,'驾驶员包含我','IHtqaWFpZCx1aWRpbn0:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(129,6,'allfee','all','加班费单据','YGppYXR5cGVgPTE:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(130,6,'all','all','所有加班单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(131,6,'my',NULL,'我的加班单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(132,5,'my',NULL,'我的请假条','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(133,5,'all','all','所有请假条','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(136,42,'my',NULL,'可预定车辆','YGlzcHVibGljYD0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(137,61,'my',NULL,'我的设置','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(138,62,'my',NULL,'我的报修','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(139,62,'all','all','所有报修','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(140,62,'allsx','all','需要外修','YGlzd3hgPTE:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(141,63,'all','all','所有公司单位','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(142,31,'my',NULL,'我的合同','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(143,31,'all','all','所有合同','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(144,31,'all30','all','30天内过期','YGVuZGR0YDw9e2RhdGUrMzB9IGFuZCBgc3RhdGVgPTE:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(145,31,'allsxz','all','生效中','YHN0YXRlYD0x',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(146,31,'allyzz','all','已终止','YHN0YXRlYD0y',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(147,10,'all','all','所有用户','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(148,10,'allty','all','已停用','YHN0YXR1c2A9MA::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(149,10,'allgly','all','管理员用户','YHR5cGVgPTE:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(150,10,'txlmy','txl','通讯录','YHN0YXR1c2A9MSBhbmQgYGlzdmNhcmRgPTE:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(151,10,'txldown','txl','我直属下级','YHN0YXR1c2A9MSBhbmQgYGlzdmNhcmRgPTEgYW5kIHtpZCxkb3dufQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(152,10,'txldownall','txl','我全部下属','YHN0YXR1c2A9MSBhbmQgYGlzdmNhcmRgPTEgYW5kIHtpZCxkb3duYWxsfQ::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(153,64,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(154,64,'all','all','所有申请','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(155,65,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(156,65,'all','all','所有申请','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(157,23,'my',NULL,'我的外出出差','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(158,23,'all','all','所有外出出差','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(159,23,'mytoday',NULL,'我今日外出','YHVpZGA9e3VpZH0gYW5kIGBpbnRpbWVgID4gJ1tkYXRlXScgYW5kIGBvdXR0aW1lYDwgJ1tkYXRlXSAyMzo1OTo1OSc:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(160,23,'alltoday','all','所有今日外出','YGludGltZWAgPiAnW2RhdGVdJyBhbmQgYG91dHRpbWVgPCAnW2RhdGVdIDIzOjU5OjU5Jw::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(161,23,'downtoday','down','下属今日外出','e3VpZCxkb3dufSBhbmQgYGludGltZWAgPiAnW2RhdGVdJyBhbmQgYG91dHRpbWVgPCAnW2RhdGVdIDIzOjU5OjU5Jw::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(162,23,'downall','down','下属所有外出','e3VpZCxkb3dufQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(163,51,'my',NULL,'我的打卡异常','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(164,51,'all','all','所有打卡异常','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(165,19,'all','all','所有发文','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(166,19,'my',NULL,'我的发文','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(167,20,'all','all','所有收文单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(168,20,'my',NULL,'我的收文单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(169,67,'my',NULL,'我的订阅管理','YG9wdGlkYD17dWlkfQ::',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(170,67,'all','all','所有订阅管理','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(171,68,'my',NULL,'给我的订阅','e3JlY2VpZCx1aWRpbn0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(172,68,'all','all','所有订阅报表','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(173,67,'shate',NULL,'共享给我订阅','e3NoYXRlaWQscmVjZW5vdH0:',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(174,69,'my',NULL,'需我查阅公文','KHtyZWNlaWQscmVjZW5vdH0p',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(175,69,'mywcy',NULL,'未查阅公文','e3JlY2VpZCxyZWNlbm90fSBhbmQge3VucmVhZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(176,70,'all','all','所有考勤机设备','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(177,70,'offline','all','不在线设备','KGBsYXN0ZHRgIGlzIG51bGwgb3IgYGxhc3RkdGA8e3NlY29uZC0zMDB9KQ::',NULL,NULL,1,'最后请求在5分钟之前就不在线',NULL,NULL,NULL,NULL,1,1,NULL,NULL),(178,29,'nowbirty','all','当月人员生日','TUlEKGBiaXJ0aGRheWAsNiwyKT1kYXRlX2Zvcm1hdChub3coKSwnJW0nKQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(179,71,'all','all','所有考核评分','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(180,71,'my',NULL,'我的考核评分','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(181,72,'all','all','所有演示数据','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(182,73,'all','all','仓库管理','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(183,73,'my',NULL,'我管理的仓库','e2NnaWQsdWlkaW59',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(184,7,'gys','gys','供应商管理','YGlzZ3lzYD0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(185,28,'all','all','所有采购单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(186,24,'all','all','所有领用单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(187,24,'my',NULL,'我的领用单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(188,28,'my',NULL,'我的采购单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(189,24,'alldck','all','待领用出库','YHN0YXR1c2A9MSBhbmQgYHN0YXRlYDw!MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(190,28,'alldrk','all','待采购入库','YHN0YXR1c2A9MSBhbmQgYHN0YXRlYDw!MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(191,74,'all','all','所有文档分区','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(192,74,'my',NULL,'我的文档分区','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(193,76,'my',NULL,'我的调拨单','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(194,76,'all','all','所有调拨单','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(195,76,'alldck','all','待调拨入库','YHN0YXR1c2A9MSBhbmQgYHN0YXRlYDw!MQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(196,7,'allgh','ghai','所有公海库','YGlzZ2hgPTE:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(197,77,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(198,77,'all','all','所有申请','MT0x',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(199,77,'down',NULL,'我下级申请','e3VpZCxkb3duYWxsfQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(200,29,'lizhi','all','离职人员','YHF1aXRkdGAgaXMgbm90IG51bGw:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(201,78,'my',NULL,'我的申请','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(202,78,'all','all','所有需求','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(203,79,'my',NULL,'我的安排','YHVpZGA9e3VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(204,79,'myms',NULL,'我的面试','e21zdXNlcmlkLHVpZGlufQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(205,79,'all','all','所有面试','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(206,80,'my',NULL,'我未回执确认','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(207,80,'myall',NULL,'我全部回执确认','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(208,80,'my创建',NULL,'我创建的','YHVpZGA9e3VpZH0:',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(209,80,'all','all','所有回执确认','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(210,81,'all','all','所有考核项目','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(211,81,'my',NULL,'我的考核项目','e3JlY2VpZH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(212,71,'wopf',NULL,'需我评分','IHtwZnJlbmlkLHVpZGlufQ::',NULL,NULL,2,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(213,71,'wowpf',NULL,'需我未评分','e3BmcmVuaWRzLHVpZGlufQ::',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(214,71,'tjall','tjall','考核评分详情','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(215,10,'notall','all','未通讯录显示','YGlzdmNhcmRgPTA:',NULL,NULL,3,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(216,48,'all','all','所有','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(217,83,'all','all','所有模版','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(218,84,'all','all','所有记录','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL),(220,34,NULL,NULL,'本部门人员','e3h1aWQsZGVwdGFsbH0:',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,0,1,NULL,NULL),(221,34,'all','all','所有人薪资','MT0x',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_flow_where` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_godepot`
--

DROP TABLE IF EXISTS `jouryu_godepot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_godepot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depotname` varchar(50) DEFAULT NULL COMMENT '仓库名称',
  `depotaddress` varchar(100) DEFAULT NULL COMMENT '仓库地址',
  `cgname` varchar(50) DEFAULT NULL COMMENT '仓库管理员',
  `cgid` varchar(50) DEFAULT NULL COMMENT '仓库管理员的ID',
  `depotexplain` varchar(500) DEFAULT NULL COMMENT '说明',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `depotnum` varchar(50) DEFAULT NULL COMMENT '仓库编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='物品仓库表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_godepot`
--

LOCK TABLES `jouryu_godepot` WRITE;
/*!40000 ALTER TABLE `jouryu_godepot` DISABLE KEYS */;
INSERT INTO `jouryu_godepot` VALUES (1,'默认仓库',NULL,'赵子龙','7',NULL,0,'depot'),(2,'仓库2',NULL,'貂蝉','2',NULL,1,'cknu');
/*!40000 ALTER TABLE `jouryu_godepot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_goodm`
--

DROP TABLE IF EXISTS `jouryu_goodm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_goodm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `type` tinyint(1) DEFAULT '0' COMMENT '0领用,1采购申请',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '费用',
  `custid` smallint(6) DEFAULT '0',
  `custname` varchar(50) DEFAULT NULL COMMENT '供应商名称',
  `discount` decimal(8,2) DEFAULT '0.00' COMMENT '优惠价格',
  `state` tinyint(1) DEFAULT '0' COMMENT '0待出入库,2部分出入库,1已全部出入库',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='物品领用采购申请主表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_goodm`
--

LOCK TABLES `jouryu_goodm` WRITE;
/*!40000 ALTER TABLE `jouryu_goodm` DISABLE KEYS */;
INSERT INTO `jouryu_goodm` VALUES (1,1,'2017-11-11 15:43:29',1,'管理员','2017-11-11',NULL,1,1,1,26456.00,0,NULL,10.00,1),(2,1,'2017-11-12 15:04:37',1,'管理员','2017-11-12',NULL,1,1,0,0.00,0,NULL,0.00,2),(3,1,'2018-02-07 23:05:49',1,'管理员','2017-11-12','这只是测试而已拉。',0,1,1,14400.00,3,'微软公司',0.00,0),(4,1,'2017-11-13 14:20:47',1,'管理员','2017-11-13',NULL,1,1,1,24.00,0,NULL,0.00,1),(5,1,'2017-12-28 14:26:46',1,'管理员','2017-12-28','嗯嗯嗯额',1,1,3,0.00,1,NULL,0.00,1),(6,1,'2018-01-27 10:27:28',1,'管理员','2018-01-27',NULL,1,1,3,0.00,1,NULL,0.00,2),(8,1,'2018-07-06 18:27:39',1,'管理员','2018-07-06',NULL,1,1,1,2400.00,4,'谷歌公司',0.00,0),(9,1,'2018-09-08 13:42:37',1,'管理员','2018-09-06',NULL,0,1,0,0.00,0,NULL,0.00,0);
/*!40000 ALTER TABLE `jouryu_goodm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_goodn`
--

DROP TABLE IF EXISTS `jouryu_goodn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_goodn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表',
  `aid` smallint(6) DEFAULT '0' COMMENT '物品Id',
  `count` smallint(6) DEFAULT '0' COMMENT '数量',
  `couns` smallint(6) DEFAULT '0' COMMENT '已出库入库数跟count相等时就全部了',
  `sort` smallint(6) DEFAULT '0',
  `unit` varchar(5) DEFAULT NULL COMMENT '单位',
  `price` decimal(6,2) DEFAULT '0.00' COMMENT '单价',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `aid` (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='物品库存详细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_goodn`
--

LOCK TABLES `jouryu_goodn` WRITE;
/*!40000 ALTER TABLE `jouryu_goodn` DISABLE KEYS */;
INSERT INTO `jouryu_goodn` VALUES (1,1,3,22,22,0,'台',1200.00),(2,1,5,33,33,1,'支',2.00),(3,2,2,5,3,0,NULL,0.00),(4,3,3,12,0,0,'台',1200.00),(5,4,5,12,12,0,'支',2.00),(6,5,3,2,2,0,NULL,0.00),(7,5,6,33,33,1,NULL,0.00),(8,6,2,22,2,0,NULL,0.00),(10,8,3,2,0,0,'台',1200.00),(11,9,3,1,0,0,NULL,0.00);
/*!40000 ALTER TABLE `jouryu_goodn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_goods`
--

DROP TABLE IF EXISTS `jouryu_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应分类',
  `num` varchar(30) DEFAULT NULL COMMENT '物品编号',
  `name` varchar(30) DEFAULT NULL,
  `guige` varchar(50) DEFAULT NULL COMMENT '规格',
  `xinghao` varchar(50) DEFAULT NULL COMMENT '型号',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `price` decimal(10,2) DEFAULT '0.00' COMMENT '单价',
  `unit` varchar(5) DEFAULT NULL COMMENT '单位',
  `adddt` datetime DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `stock` int(11) DEFAULT '0' COMMENT '库存',
  `stockcs` int(11) DEFAULT '0' COMMENT '初始库存',
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='物品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_goods`
--

LOCK TABLES `jouryu_goods` WRITE;
/*!40000 ALTER TABLE `jouryu_goods` DISABLE KEYS */;
INSERT INTO `jouryu_goods` VALUES (1,64,'WP-001','琢瑜OA实施维护',NULL,NULL,'实施维护包括如下内容\n1、系统bug修改。\n2、需求添加修改等。\n3、数据服务器稳定性维护。\n4、数据分析等。',3000.00,'月','2016-07-19 17:53:28','2016-07-20 12:38:55',1,'管理员',20,0),(2,67,'WP-002','鼠标1',NULL,NULL,NULL,12.00,'个','2016-07-20 13:25:17','2016-07-20 13:25:17',1,'管理员',-2,0),(3,66,'WP-003','联想显示器','21寸','abc',NULL,1200.00,'台','2017-05-02 13:35:05','2017-10-14 22:56:25',1,'管理员',22,0),(4,356,'WP-004','2b铅笔','0.5mm','25505-2B',NULL,1.50,'支','2017-07-25 19:59:55','2017-08-20 12:06:14',1,'管理员',0,0),(5,356,'WP-005','3b铅笔','0.8mm','25505-3B',NULL,2.00,'支','2017-07-25 19:59:55','2017-08-20 12:06:09',1,'管理员',45,0),(6,356,'WP-006','红色粉笔','红色','5厘米',NULL,0.10,'支','2017-08-20 11:52:00','2018-04-25 22:36:21',1,'管理员',0,0);
/*!40000 ALTER TABLE `jouryu_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_goodss`
--

DROP TABLE IF EXISTS `jouryu_goodss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_goodss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` smallint(6) DEFAULT '0' COMMENT '物品Id',
  `count` smallint(6) DEFAULT '0' COMMENT '数量',
  `uid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0入库,1出库',
  `kind` tinyint(2) DEFAULT '0' COMMENT '出入库类型',
  `optname` varchar(20) DEFAULT NULL,
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `optdt` datetime DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `optid` int(11) DEFAULT '0',
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表',
  `sort` smallint(6) DEFAULT '0',
  `unit` varchar(5) DEFAULT NULL COMMENT '单位',
  `price` decimal(6,2) DEFAULT '0.00' COMMENT '单价',
  `depotid` smallint(6) DEFAULT '1' COMMENT '存放仓库ID',
  PRIMARY KEY (`id`),
  KEY `aiddepotid` (`aid`,`depotid`) USING BTREE,
  KEY `applydt` (`applydt`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='物品库存详细表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_goodss`
--

LOCK TABLES `jouryu_goodss` WRITE;
/*!40000 ALTER TABLE `jouryu_goodss` DISABLE KEYS */;
INSERT INTO `jouryu_goodss` VALUES (1,1,20,1,0,2,'管理员','2017-11-11','2017-11-11 11:29:11',NULL,1,1,0,0,NULL,0.00,1),(2,2,1,1,0,2,'管理员','2017-11-11','2017-11-11 11:29:11',NULL,1,1,0,0,NULL,0.00,1),(3,3,2,1,0,0,'管理员','2017-11-12','2017-11-12 14:31:00',NULL,1,1,0,0,NULL,0.00,1),(4,3,2,1,0,0,'管理员','2017-11-12','2017-11-12 14:59:48',NULL,1,1,0,0,NULL,0.00,1),(5,5,2,1,0,0,'管理员','2017-11-12','2017-11-12 15:01:06',NULL,1,1,0,0,NULL,0.00,1),(6,5,2,1,0,0,'管理员','2017-11-12','2017-11-12 15:01:40',NULL,1,1,0,0,NULL,0.00,1),(7,3,18,1,0,0,'管理员','2017-11-12','2017-11-12 15:01:56',NULL,1,1,0,0,NULL,0.00,1),(8,5,29,1,0,0,'管理员','2017-11-12','2017-11-12 15:01:56',NULL,1,1,0,0,NULL,0.00,1),(9,2,-1,1,1,0,'管理员','2017-11-12','2017-11-12 15:42:10',NULL,1,1,2,0,NULL,0.00,1),(10,2,-2,1,1,0,'管理员','2017-11-13','2017-11-13 13:25:06',NULL,1,1,2,0,NULL,0.00,2),(11,5,8,1,0,0,'管理员','2017-11-13','2017-11-13 14:29:02',NULL,1,1,4,0,NULL,0.00,2),(12,3,1,1,0,3,'管理员','2017-12-28','2017-12-28 14:58:38',NULL,1,1,5,0,NULL,0.00,2),(13,3,-1,1,1,3,'管理员','2017-12-28','2017-12-28 14:58:38',NULL,1,1,5,0,NULL,0.00,1),(14,3,1,1,0,3,'管理员','2017-12-28','2017-12-28 15:00:21',NULL,1,1,5,0,NULL,0.00,1),(15,3,-1,1,1,3,'管理员','2017-12-28','2017-12-28 15:00:21',NULL,1,1,5,0,NULL,0.00,1),(16,6,33,1,0,3,'管理员','2017-12-28','2017-12-28 15:04:12',NULL,1,1,5,0,NULL,0.00,2),(17,6,-33,1,1,3,'管理员','2017-12-28','2017-12-28 15:04:12',NULL,1,1,5,0,NULL,0.00,1),(18,2,2,1,0,3,'管理员','2018-01-27','2018-01-27 10:28:23',NULL,1,1,6,0,NULL,0.00,2),(19,2,-2,1,1,3,'管理员','2018-01-27','2018-01-27 10:28:23',NULL,1,1,6,0,NULL,0.00,1),(20,5,4,1,0,0,'管理员','2018-01-27','2018-01-27 10:28:39',NULL,1,1,4,0,NULL,0.00,1);
/*!40000 ALTER TABLE `jouryu_goodss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_group`
--

DROP TABLE IF EXISTS `jouryu_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_group` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '组名',
  `sort` tinyint(4) DEFAULT '0',
  `ispir` tinyint(4) DEFAULT '1' COMMENT '是否权限验证',
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统组';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_group`
--

LOCK TABLES `jouryu_group` WRITE;
/*!40000 ALTER TABLE `jouryu_group` DISABLE KEYS */;
INSERT INTO `jouryu_group` VALUES (1,'外地职工',1,1,'2014-09-04 17:33:47'),(2,'本地职工',2,1,'2014-09-04 17:33:56'),(3,'部门负责人',0,1,'2018-09-26 11:51:56');
/*!40000 ALTER TABLE `jouryu_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_homeitems`
--

DROP TABLE IF EXISTS `jouryu_homeitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_homeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `num` varchar(30) NOT NULL COMMENT '编号',
  `receid` varchar(300) DEFAULT NULL,
  `recename` varchar(500) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `row` tinyint(1) DEFAULT '0' COMMENT '所在位置',
  PRIMARY KEY (`id`,`num`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='桌面项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_homeitems`
--

LOCK TABLES `jouryu_homeitems` WRITE;
/*!40000 ALTER TABLE `jouryu_homeitems` DISABLE KEYS */;
INSERT INTO `jouryu_homeitems` VALUES (1,'快捷入口','kjrk',NULL,NULL,0,1,0),(2,'通知公告','gong',NULL,NULL,1,1,0),(3,'考勤打卡','kqdk',NULL,NULL,2,1,0),(4,'微信办公','gwwx','u1','管理员',10,1,0),(5,'我的申请','apply',NULL,NULL,0,1,1),(6,'今日会议','meet',NULL,NULL,2,1,1),(7,'系统日志','syslog','u1,u5','管理员,琢瑜清泉',4,1,1),(8,'关于琢瑜OA','about','u1','管理员',10,1,1),(9,'公文查阅','officic',NULL,NULL,3,1,1);
/*!40000 ALTER TABLE `jouryu_homeitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrcheck`
--

DROP TABLE IF EXISTS `jouryu_hrcheck`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrcheck` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL COMMENT '考核名称',
  `applyname` varchar(30) DEFAULT NULL COMMENT '申请人姓名',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `uname` varchar(20) DEFAULT NULL COMMENT '对应人',
  `month` varchar(50) DEFAULT '{month}' COMMENT '月份',
  `content` varchar(2000) DEFAULT NULL COMMENT '考核内容',
  `fenzp` decimal(6,1) DEFAULT '0.0' COMMENT '自评分数',
  `fensj` decimal(6,1) DEFAULT '0.0' COMMENT '上级评分',
  `fenrs` decimal(6,1) DEFAULT '0.0' COMMENT '人事评分',
  `fen` decimal(6,1) DEFAULT '0.0' COMMENT '最后得分',
  `khid` int(11) DEFAULT '0' COMMENT '关联考核项目hrkaohem.id',
  `createdt` datetime DEFAULT NULL COMMENT '创建时间',
  `startdt` date DEFAULT NULL COMMENT '评分开始时间',
  `enddt` date DEFAULT NULL COMMENT '评分截止时间',
  `pfren` varchar(100) DEFAULT NULL COMMENT '评分人',
  `pfrenid` varchar(100) DEFAULT NULL,
  `pfrenids` varchar(100) DEFAULT NULL COMMENT '未评分人Id',
  `pfrens` varchar(100) DEFAULT NULL COMMENT '未评分人',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `startdt` (`startdt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='考核评分表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrcheck`
--

LOCK TABLES `jouryu_hrcheck` WRITE;
/*!40000 ALTER TABLE `jouryu_hrcheck` DISABLE KEYS */;
INSERT INTO `jouryu_hrcheck` VALUES (1,1,'系统开发维护考核','管理员','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,74.0,1,'2018-09-07 22:18:24','2018-09-07','2018-09-12','管理员,琢瑜清泉,大乔','1,5,4',NULL,NULL),(2,2,'系统开发维护考核','貂蝉','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,0.0,1,'2018-09-07 22:18:24','2018-09-07','2018-09-12','貂蝉,琢瑜清泉,大乔','2,5,4','2,5,4','貂蝉,琢瑜清泉,大乔'),(3,3,'系统开发维护考核','小乔','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,0.0,1,'2018-09-07 22:18:24','2018-09-07','2018-09-12','小乔,貂蝉,大乔','3,2,4','3,2,4','小乔,貂蝉,大乔'),(4,6,'系统开发维护考核','张飞','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,0.0,1,'2018-09-07 22:18:24','2018-09-07','2018-09-12','张飞,管理员,大乔','6,1,4','6,1,4','张飞,管理员,大乔'),(5,7,'系统开发维护考核','赵子龙','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,0.0,1,'2018-09-07 22:18:24','2018-09-07','2018-09-12','赵子龙,管理员,大乔','7,1,4','7,1,4','赵子龙,管理员,大乔'),(6,8,'系统开发维护考核','琢瑜OA客服','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,60.2,1,'2018-09-07 22:18:24','2018-09-07','2018-09-12','琢瑜OA客服,管理员,大乔','8,1,4','8,4','琢瑜OA客服,大乔'),(7,4,'招聘考核','大乔','2018-09-07 22:18:24',1,'管理员','2018-09-07',NULL,1,1,NULL,'2018-09',NULL,0.0,0.0,0.0,78.8,2,'2018-09-07 22:18:24','2018-09-07','2018-09-12','琢瑜清泉','5',NULL,NULL);
/*!40000 ALTER TABLE `jouryu_hrcheck` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrcheckn`
--

DROP TABLE IF EXISTS `jouryu_hrcheckn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrcheckn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemname` varchar(100) DEFAULT NULL COMMENT '评分项目',
  `pfname` varchar(100) DEFAULT NULL COMMENT '评分名称',
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表hrcheck.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `sid` int(11) DEFAULT '0' COMMENT '对应hrchecks.id',
  `fenshu` smallint(6) DEFAULT '0' COMMENT '评分分数',
  `weight` smallint(6) DEFAULT '0' COMMENT '权重',
  `optid` int(11) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '评分人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `defen` decimal(6,1) DEFAULT '0.0' COMMENT '最后得分',
  `pfid` int(11) DEFAULT '0' COMMENT '关联评分hrkaohen.Id',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`),
  KEY `sid` (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='考核评分记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrcheckn`
--

LOCK TABLES `jouryu_hrcheckn` WRITE;
/*!40000 ALTER TABLE `jouryu_hrcheckn` DISABLE KEYS */;
INSERT INTO `jouryu_hrcheckn` VALUES (1,'开发','自评',1,0,1,50,20,1,'管理员','2018-09-07 17:49:51',50.0,1),(2,'开发','上级评分',1,1,1,50,70,5,'琢瑜清泉','2018-09-07 18:24:00',45.0,2),(3,'开发','人事评分',1,2,1,50,10,4,'大乔','2018-09-07 18:35:56',20.0,3),(4,'数据库设计','自评',1,0,2,30,20,1,'管理员','2018-09-07 17:49:51',20.0,1),(5,'数据库设计','上级评分',1,1,2,30,70,5,'琢瑜清泉','2018-09-07 18:24:00',16.0,2),(6,'数据库设计','人事评分',1,2,2,30,10,4,'大乔','2018-09-07 18:35:56',11.0,3),(7,'文档撰写','自评',1,0,3,20,20,1,'管理员','2018-09-07 17:49:51',20.0,1),(8,'文档撰写','上级评分',1,1,3,20,70,5,'琢瑜清泉','2018-09-07 18:24:00',13.0,2),(9,'文档撰写','人事评分',1,2,3,20,10,4,'大乔','2018-09-07 18:35:56',11.0,3),(10,'开发','自评',2,0,4,50,20,2,'貂蝉',NULL,0.0,1),(11,'开发','上级评分',2,1,4,50,70,5,'琢瑜清泉',NULL,0.0,2),(12,'开发','人事评分',2,2,4,50,10,4,'大乔',NULL,0.0,3),(13,'数据库设计','自评',2,0,5,30,20,2,'貂蝉',NULL,0.0,1),(14,'数据库设计','上级评分',2,1,5,30,70,5,'琢瑜清泉',NULL,0.0,2),(15,'数据库设计','人事评分',2,2,5,30,10,4,'大乔',NULL,0.0,3),(16,'文档撰写','自评',2,0,6,20,20,2,'貂蝉',NULL,0.0,1),(17,'文档撰写','上级评分',2,1,6,20,70,5,'琢瑜清泉',NULL,0.0,2),(18,'文档撰写','人事评分',2,2,6,20,10,4,'大乔',NULL,0.0,3),(19,'开发','自评',3,0,7,50,20,3,'小乔',NULL,0.0,1),(20,'开发','上级评分',3,1,7,50,70,2,'貂蝉',NULL,0.0,2),(21,'开发','人事评分',3,2,7,50,10,4,'大乔',NULL,0.0,3),(22,'数据库设计','自评',3,0,8,30,20,3,'小乔',NULL,0.0,1),(23,'数据库设计','上级评分',3,1,8,30,70,2,'貂蝉',NULL,0.0,2),(24,'数据库设计','人事评分',3,2,8,30,10,4,'大乔',NULL,0.0,3),(25,'文档撰写','自评',3,0,9,20,20,3,'小乔',NULL,0.0,1),(26,'文档撰写','上级评分',3,1,9,20,70,2,'貂蝉',NULL,0.0,2),(27,'文档撰写','人事评分',3,2,9,20,10,4,'大乔',NULL,0.0,3),(28,'开发','自评',4,0,10,50,20,6,'张飞',NULL,0.0,1),(29,'开发','上级评分',4,1,10,50,70,1,'管理员',NULL,0.0,2),(30,'开发','人事评分',4,2,10,50,10,4,'大乔',NULL,0.0,3),(31,'数据库设计','自评',4,0,11,30,20,6,'张飞',NULL,0.0,1),(32,'数据库设计','上级评分',4,1,11,30,70,1,'管理员',NULL,0.0,2),(33,'数据库设计','人事评分',4,2,11,30,10,4,'大乔',NULL,0.0,3),(34,'文档撰写','自评',4,0,12,20,20,6,'张飞',NULL,0.0,1),(35,'文档撰写','上级评分',4,1,12,20,70,1,'管理员',NULL,0.0,2),(36,'文档撰写','人事评分',4,2,12,20,10,4,'大乔',NULL,0.0,3),(37,'开发','自评',5,0,13,50,20,7,'赵子龙',NULL,0.0,1),(38,'开发','上级评分',5,1,13,50,70,1,'管理员',NULL,0.0,2),(39,'开发','人事评分',5,2,13,50,10,4,'大乔',NULL,0.0,3),(40,'数据库设计','自评',5,0,14,30,20,7,'赵子龙',NULL,0.0,1),(41,'数据库设计','上级评分',5,1,14,30,70,1,'管理员',NULL,0.0,2),(42,'数据库设计','人事评分',5,2,14,30,10,4,'大乔',NULL,0.0,3),(43,'文档撰写','自评',5,0,15,20,20,7,'赵子龙',NULL,0.0,1),(44,'文档撰写','上级评分',5,1,15,20,70,1,'管理员',NULL,0.0,2),(45,'文档撰写','人事评分',5,2,15,20,10,4,'大乔',NULL,0.0,3),(46,'开发','自评',6,0,16,50,20,8,'琢瑜OA客服',NULL,0.0,1),(47,'开发','上级评分',6,1,16,50,70,1,'管理员','2018-09-07 19:46:54',36.0,2),(48,'开发','人事评分',6,2,16,50,10,4,'大乔',NULL,0.0,3),(49,'数据库设计','自评',6,0,17,30,20,8,'琢瑜OA客服',NULL,0.0,1),(50,'数据库设计','上级评分',6,1,17,30,70,1,'管理员','2018-09-07 19:46:54',30.0,2),(51,'数据库设计','人事评分',6,2,17,30,10,4,'大乔',NULL,0.0,3),(52,'文档撰写','自评',6,0,18,20,20,8,'琢瑜OA客服',NULL,0.0,1),(53,'文档撰写','上级评分',6,1,18,20,70,1,'管理员','2018-09-07 19:46:54',20.0,2),(54,'文档撰写','人事评分',6,2,18,20,10,4,'大乔',NULL,0.0,3),(55,'打电话面试','上级评分',7,0,19,30,60,5,'琢瑜清泉','2018-09-07 22:21:28',20.0,4),(56,'打电话面试','董事长评分',7,1,19,30,40,5,'琢瑜清泉','2018-09-07 22:21:28',21.0,5),(57,'现场招聘面试','上级评分',7,0,20,70,60,5,'琢瑜清泉','2018-09-07 22:21:28',54.0,4),(58,'现场招聘面试','董事长评分',7,1,20,70,40,5,'琢瑜清泉','2018-09-07 22:21:28',65.0,5);
/*!40000 ALTER TABLE `jouryu_hrcheckn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrchecks`
--

DROP TABLE IF EXISTS `jouryu_hrchecks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrchecks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表hrkaohem.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `itemname` varchar(200) DEFAULT NULL COMMENT '考评项目',
  `weight` smallint(6) DEFAULT '0' COMMENT '权重(%)',
  `fenshu` decimal(6,1) DEFAULT '0.0' COMMENT '占用分数',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='考评内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrchecks`
--

LOCK TABLES `jouryu_hrchecks` WRITE;
/*!40000 ALTER TABLE `jouryu_hrchecks` DISABLE KEYS */;
INSERT INTO `jouryu_hrchecks` VALUES (1,1,0,'开发',50,50.0),(2,1,1,'数据库设计',30,30.0),(3,1,2,'文档撰写',20,20.0),(4,2,0,'开发',50,50.0),(5,2,1,'数据库设计',30,30.0),(6,2,2,'文档撰写',20,20.0),(7,3,0,'开发',50,50.0),(8,3,1,'数据库设计',30,30.0),(9,3,2,'文档撰写',20,20.0),(10,4,0,'开发',50,50.0),(11,4,1,'数据库设计',30,30.0),(12,4,2,'文档撰写',20,20.0),(13,5,0,'开发',50,50.0),(14,5,1,'数据库设计',30,30.0),(15,5,2,'文档撰写',20,20.0),(16,6,0,'开发',50,50.0),(17,6,1,'数据库设计',30,30.0),(18,6,2,'文档撰写',20,20.0),(19,7,0,'打电话面试',30,30.0),(20,7,1,'现场招聘面试',70,70.0);
/*!40000 ALTER TABLE `jouryu_hrchecks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrdemint`
--

DROP TABLE IF EXISTS `jouryu_hrdemint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrdemint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `type` tinyint(1) DEFAULT '0' COMMENT '0需求,1面试',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `zhiwei` varchar(50) DEFAULT NULL COMMENT '需求职位',
  `xinzi` varchar(50) DEFAULT NULL COMMENT '薪资',
  `renshu` smallint(6) DEFAULT '1' COMMENT '需求人数',
  `content` varchar(2000) DEFAULT NULL COMMENT '职位要求/面试者简历',
  `bumen` varchar(50) DEFAULT NULL COMMENT '需求部门',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `msuser` varchar(50) DEFAULT NULL COMMENT '面试人员',
  `msuserid` varchar(50) DEFAULT NULL COMMENT '面试人员的ID',
  `mscont` varchar(2000) DEFAULT NULL COMMENT '面试记录',
  `state` tinyint(1) DEFAULT '0' COMMENT '面试结果0待面试,1录用,2不适合',
  `msdt` datetime DEFAULT NULL COMMENT '面试时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='面试和人员需求表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrdemint`
--

LOCK TABLES `jouryu_hrdemint` WRITE;
/*!40000 ALTER TABLE `jouryu_hrdemint` DISABLE KEYS */;
INSERT INTO `jouryu_hrdemint` VALUES (1,7,'2018-04-18 20:39:38',7,'赵子龙',0,'2018-04-18',NULL,0,1,'初级php程序员','3k-8k',1,'1、至少要一个php框架，如tp，lararvl，ci，yii等。\n2、知道啥是面向对象。','技术部','20',NULL,NULL,NULL,0,NULL),(2,7,'2018-04-18 22:01:41',7,'赵子龙',1,'2018-04-18',NULL,0,1,'程序员',NULL,1,NULL,'技术部','夏侯惇','管理员','1','符合要求',1,'2018-04-18 22:00:00'),(3,7,'2018-04-18 22:45:48',7,'赵子龙',1,'2018-04-18',NULL,2,1,'丞相',NULL,1,'诸葛亮，字孔明，号卧龙（也作伏龙），徐州琅琊阳都（今山东临沂市沂南县）人，三国时期蜀汉丞相，杰出的政治家、军事家、外交家、文学家、书法家、发明家。','技术部','诸葛亮','琢瑜清泉','5',NULL,2,'2018-04-19 08:31:00');
/*!40000 ALTER TABLE `jouryu_hrdemint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrkaohem`
--

DROP TABLE IF EXISTS `jouryu_hrkaohem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrkaohem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '考核名称',
  `startdt` date DEFAULT NULL COMMENT '开始日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  `receid` varchar(1000) DEFAULT NULL,
  `recename` varchar(1000) DEFAULT NULL COMMENT '对应考核人',
  `optid` int(11) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `hegfen` smallint(6) DEFAULT '0' COMMENT '合格分数',
  `maxfen` smallint(6) DEFAULT '100' COMMENT '最高分数',
  `pinlv` varchar(50) DEFAULT 'm' COMMENT '考核频率',
  `sctime` varchar(30) DEFAULT NULL COMMENT '生成时间',
  `pfsj` smallint(6) DEFAULT '3' COMMENT '评分时间(天)',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='考核项目';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrkaohem`
--

LOCK TABLES `jouryu_hrkaohem` WRITE;
/*!40000 ALTER TABLE `jouryu_hrkaohem` DISABLE KEYS */;
INSERT INTO `jouryu_hrkaohem` VALUES (1,'系统开发维护考核','2018-09-05','2018-10-31','d2,d3','开发部,财务部',1,'管理员','2018-09-07 11:28:05',60,100,'m','2018-09-07',5,1),(2,'招聘考核','2018-09-01','2018-09-30','d4','行政人事部',1,'管理员','2018-09-07 22:18:21',60,100,'m','2018-09-07',5,1);
/*!40000 ALTER TABLE `jouryu_hrkaohem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrkaohen`
--

DROP TABLE IF EXISTS `jouryu_hrkaohen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrkaohen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表hrkaohem.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `pfname` varchar(50) DEFAULT NULL COMMENT '评分名称',
  `pftype` varchar(20) DEFAULT NULL COMMENT '评分人类型',
  `pfren` varchar(20) DEFAULT NULL COMMENT '评分人',
  `pfrenid` varchar(20) DEFAULT NULL,
  `pfweight` smallint(6) DEFAULT '0' COMMENT '评分权重',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='考核项目人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrkaohen`
--

LOCK TABLES `jouryu_hrkaohen` WRITE;
/*!40000 ALTER TABLE `jouryu_hrkaohen` DISABLE KEYS */;
INSERT INTO `jouryu_hrkaohen` VALUES (1,1,0,'自评','my',NULL,NULL,20),(2,1,1,'上级评分','super',NULL,NULL,70),(3,1,2,'人事评分','user','大乔','4',10),(4,2,0,'上级评分','super',NULL,NULL,60),(5,2,1,'董事长评分','user','琢瑜清泉','5',40);
/*!40000 ALTER TABLE `jouryu_hrkaohen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrkaohes`
--

DROP TABLE IF EXISTS `jouryu_hrkaohes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrkaohes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表hrkaohem.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `itemname` varchar(200) DEFAULT NULL COMMENT '考评项目',
  `weight` smallint(6) DEFAULT '0' COMMENT '权重(%)',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='考核项目的内容';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrkaohes`
--

LOCK TABLES `jouryu_hrkaohes` WRITE;
/*!40000 ALTER TABLE `jouryu_hrkaohes` DISABLE KEYS */;
INSERT INTO `jouryu_hrkaohes` VALUES (1,1,0,'开发',50),(2,1,1,'数据库设计',30),(3,1,2,'文档撰写',20),(4,2,0,'打电话面试',30),(5,2,1,'现场招聘面试',70);
/*!40000 ALTER TABLE `jouryu_hrkaohes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrpositive`
--

DROP TABLE IF EXISTS `jouryu_hrpositive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrpositive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `applyname` varchar(30) DEFAULT NULL COMMENT '申请人姓名',
  `ranking` varchar(30) DEFAULT NULL COMMENT '职位',
  `entrydt` date DEFAULT NULL COMMENT '入职日期',
  `syenddt` date DEFAULT NULL COMMENT '试用到期日',
  `positivedt` date DEFAULT NULL COMMENT '转正日期',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `isover` tinyint(1) DEFAULT '0',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='HR转正';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrpositive`
--

LOCK TABLES `jouryu_hrpositive` WRITE;
/*!40000 ALTER TABLE `jouryu_hrpositive` DISABLE KEYS */;
INSERT INTO `jouryu_hrpositive` VALUES (1,1,NULL,'项目主管','2016-07-01','2016-10-01','2016-10-02','2016-10-06 20:58:38','工作认真。',1,1,1,1,'管理员','2016-10-06'),(2,7,'赵子龙','高级程序员','2016-07-01','2016-10-01','2018-06-16','2018-06-15 20:04:38','脸红啊',0,1,0,7,'赵子龙','2018-06-15'),(3,4,'大乔','人事主管','2017-07-01','2018-06-01','2018-06-01','2018-06-15 20:16:18','不错的哦',0,1,0,1,'管理员','2018-06-15');
/*!40000 ALTER TABLE `jouryu_hrpositive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrredund`
--

DROP TABLE IF EXISTS `jouryu_hrredund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrredund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `applyname` varchar(30) DEFAULT NULL COMMENT '申请人姓名',
  `ranking` varchar(30) DEFAULT NULL COMMENT '职位',
  `entrydt` date DEFAULT NULL COMMENT '入职日期',
  `quitdt` date DEFAULT NULL COMMENT '离职日期',
  `redundtype` varchar(20) DEFAULT NULL COMMENT '离职类型',
  `redundreson` varchar(100) DEFAULT NULL COMMENT '离职原因',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `isover` tinyint(1) DEFAULT '0',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='离职申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrredund`
--

LOCK TABLES `jouryu_hrredund` WRITE;
/*!40000 ALTER TABLE `jouryu_hrredund` DISABLE KEYS */;
INSERT INTO `jouryu_hrredund` VALUES (1,1,'管理员','项目主管','2016-06-01','2016-10-31','自动离职','不想做了，呵呵呵','2018-09-15 17:49:38',NULL,0,1,0,1,'管理员','2016-10-07');
/*!40000 ALTER TABLE `jouryu_hrredund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrsalarm`
--

DROP TABLE IF EXISTS `jouryu_hrsalarm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrsalarm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '模版名称',
  `receid` varchar(500) DEFAULT NULL,
  `recename` varchar(500) DEFAULT NULL COMMENT '适用对象',
  `explain` varchar(500) DEFAULT NULL,
  `optid` int(11) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `atype` varchar(20) DEFAULT NULL COMMENT '模版类型',
  `startdt` varchar(20) DEFAULT NULL COMMENT '开始月份',
  `enddt` varchar(20) DEFAULT NULL COMMENT '截止月份',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrsalarm`
--

LOCK TABLES `jouryu_hrsalarm` WRITE;
/*!40000 ALTER TABLE `jouryu_hrsalarm` DISABLE KEYS */;
INSERT INTO `jouryu_hrsalarm` VALUES (1,NULL,'d1','琢瑜OA开发团队',NULL,1,'管理员','2018-09-30 13:26:47','基本工资','2013-12','2050-12',0,1),(2,'绩效考核','d1','琢瑜OA开发团队',NULL,1,'管理员','2018-09-30 13:26:47','绩效','2013-12','2050-12',10,1),(3,'人事考勤','d1','琢瑜OA开发团队',NULL,1,'管理员','2018-09-30 13:26:47','考勤','2013-01','2050-12',20,1),(4,NULL,'d1','琢瑜OA开发团队','起征点3500',1,'管理员','2018-10-09 19:37:48','个人所得税','2013-01','2018-09',70,1),(5,NULL,'d1','琢瑜OA开发团队',NULL,1,'管理员','2018-09-30 13:26:47','社保公积金','2013-01','2050-12',50,1),(6,'人事考勤','d1','琢瑜OA开发团队',NULL,1,'管理员','2018-09-30 13:26:47','考勤','2013-01','2050-12',20,0),(7,NULL,'d1','琢瑜OA开发团队',NULL,1,'管理员','2018-10-09 19:39:10','补贴','2013-01','2050-12',30,1),(8,NULL,'d1','琢瑜OA开发团队',NULL,1,'管理员','2018-09-30 13:26:47','其他','2013-01','2050-12',40,1),(9,NULL,'d1','琢瑜OA开发团队','起征点5000，2018年10月起',1,'管理员','2018-09-30 13:26:47','个人所得税','2018-10','2050-12',70,1);
/*!40000 ALTER TABLE `jouryu_hrsalarm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrsalars`
--

DROP TABLE IF EXISTS `jouryu_hrsalars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrsalars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表hrsalarm.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `fields` varchar(50) DEFAULT NULL COMMENT '对应字段',
  `gongsi` varchar(1000) DEFAULT NULL COMMENT '公式',
  `type` tinyint(1) DEFAULT '0' COMMENT '0字段,1增加,2减少',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `devzhi` varchar(20) DEFAULT NULL COMMENT '默认值',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrsalars`
--

LOCK TABLES `jouryu_hrsalars` WRITE;
/*!40000 ALTER TABLE `jouryu_hrsalars` DISABLE KEYS */;
INSERT INTO `jouryu_hrsalars` VALUES (1,1,0,'基本工资','base',NULL,1,'烟台市最低工资','1700'),(2,8,0,'其它增加','otherzj',NULL,1,NULL,'0'),(3,2,0,'绩效基数','jxjs',NULL,0,NULL,'2000'),(4,2,1,'绩效系数','jxxs',NULL,0,NULL,'1.5'),(5,2,2,'绩效分数','jxdf',NULL,0,NULL,'0'),(6,2,3,'绩效收入','jtpost','{jxjs}*{jxxs}*{jxdf}*0.01',1,NULL,'0'),(7,3,0,'应出勤天数','ysbtime',NULL,0,NULL,'0'),(8,3,1,'出勤天数','zsbtime',NULL,0,NULL,'0'),(9,9,0,'个税起征点','taxbase',NULL,0,NULL,'5000'),(10,9,1,'个人所得税','taxes','faxgerenn({mones}-{taxbase})',4,NULL,'0'),(11,7,0,'交通补贴','travelbt','last',1,NULL,'0'),(12,4,1,'个人所得税','taxes','faxgeren({mones}-{taxbase})',4,NULL,'0'),(13,4,0,'个税起征点','taxbase',NULL,0,NULL,'3500'),(14,3,2,'奖励','reward',NULL,1,NULL,'0'),(15,3,3,'处罚','punish',NULL,2,NULL,'0'),(16,3,4,'加班(小时)','jiaban',NULL,0,NULL,'0'),(17,3,5,'加班补贴','jiabans',NULL,1,NULL,'0'),(18,5,0,'个人社保','socials',NULL,2,NULL,'0'),(19,5,1,'单位社保缴费','socialsunit',NULL,0,NULL,'0'),(20,5,2,'公积金个人','gonggeren',NULL,2,NULL,'0'),(21,5,3,'公积金单位','gongunit',NULL,0,NULL,'0'),(22,6,4,'早退(次)','zaotui',NULL,0,NULL,'0'),(23,6,2,'迟到(次)','cidao',NULL,0,NULL,'0'),(24,6,3,'迟到处罚','cidaos',NULL,2,NULL,'0'),(25,8,2,'计件收入','jiansr',NULL,1,NULL,'0'),(26,8,1,'其它减少','otherjs',NULL,2,NULL,'0'),(27,7,6,'其他补贴','otherbt',NULL,1,NULL,'0'),(28,7,5,'电脑补贴','dnbt','last',1,NULL,'0'),(29,7,4,'高温津贴','hotbt','last',1,NULL,'0'),(30,7,3,'餐补贴','foodbt','last',1,NULL,'0'),(31,7,1,'通信补贴','telbt','last',1,NULL,'0'),(32,7,2,'技能津贴','skilljt','last',1,NULL,'0'),(33,6,5,'早退处罚','zaotuis',NULL,2,NULL,'0'),(34,6,6,'未打卡(次)','weidk',NULL,0,NULL,'0'),(35,6,7,'未打卡处罚','weidks',NULL,2,NULL,'0'),(36,6,8,'请假(小时)','leave',NULL,0,NULL,'0'),(37,6,9,'请假减少','leaves',NULL,2,NULL,'0'),(38,6,0,'应出勤天数','ysbtime',NULL,0,NULL,'0'),(39,6,1,'出勤天数','zsbtime',NULL,0,NULL,'0'),(40,6,10,'奖励','reward',NULL,1,NULL,'0'),(41,6,11,'处罚','punish',NULL,2,NULL,'0'),(42,6,12,'加班(小时)','jiaban',NULL,0,NULL,'0'),(43,6,13,'加班补贴','jiabans',NULL,1,NULL,'0');
/*!40000 ALTER TABLE `jouryu_hrsalars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrsalary`
--

DROP TABLE IF EXISTS `jouryu_hrsalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrsalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `xuid` smallint(6) DEFAULT '0',
  `uname` varchar(20) DEFAULT NULL COMMENT '对应人',
  `udeptname` varchar(20) DEFAULT NULL COMMENT '对应人员部门',
  `ranking` varchar(20) DEFAULT NULL COMMENT '职位',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `month` varchar(10) DEFAULT NULL COMMENT '月份',
  `base` decimal(10,2) DEFAULT '0.00' COMMENT '基本工资',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '实发',
  `mones` decimal(10,2) DEFAULT '0.00' COMMENT '应发工资',
  `postjt` decimal(10,2) DEFAULT '0.00' COMMENT '职务津贴',
  `skilljt` decimal(10,2) DEFAULT '0.00' COMMENT '技能津贴',
  `travelbt` decimal(10,2) DEFAULT '0.00' COMMENT '交通补贴',
  `telbt` decimal(10,2) DEFAULT '0.00' COMMENT '通信补贴',
  `reward` decimal(10,2) DEFAULT '0.00' COMMENT '奖励',
  `punish` decimal(10,2) DEFAULT '0.00' COMMENT '处罚',
  `socials` decimal(10,2) DEFAULT '0.00' COMMENT '个人社保',
  `socialsunit` decimal(10,2) DEFAULT '0.00' COMMENT '单位社保缴费',
  `taxes` decimal(10,2) DEFAULT '0.00' COMMENT '个人所得税',
  `taxbase` decimal(10,2) DEFAULT '0.00' COMMENT '个税起征点',
  `ispay` tinyint(1) DEFAULT '0' COMMENT '是否发放',
  `otherzj` decimal(10,2) DEFAULT '0.00' COMMENT '其它增加',
  `otherjs` decimal(10,2) DEFAULT '0.00' COMMENT '其它减少',
  `cidao` smallint(6) DEFAULT '0' COMMENT '迟到(次)',
  `cidaos` decimal(10,2) DEFAULT '0.00' COMMENT '迟到处罚',
  `zaotui` smallint(6) DEFAULT '0' COMMENT '早退(次)',
  `zaotuis` decimal(10,2) DEFAULT '0.00' COMMENT '早退处罚',
  `leave` smallint(6) DEFAULT '0' COMMENT '请假(小时)',
  `leaves` decimal(10,2) DEFAULT '0.00' COMMENT '请假减少',
  `jiaban` smallint(6) DEFAULT '0' COMMENT '加班(小时)',
  `jiabans` decimal(10,2) DEFAULT '0.00' COMMENT '加班补贴',
  `weidk` smallint(6) DEFAULT '0' COMMENT '未打卡(次)',
  `weidks` decimal(10,2) DEFAULT '0.00' COMMENT '未打卡减少',
  `jxjs` decimal(10,2) DEFAULT '0.00' COMMENT '绩效基数',
  `jxxs` decimal(10,2) DEFAULT '0.00' COMMENT '绩效系数',
  `jxdf` decimal(10,2) DEFAULT '0.00' COMMENT '绩效打分',
  `jtpost` decimal(10,2) DEFAULT '0.00' COMMENT '绩效收入',
  `ysbtime` decimal(10,1) DEFAULT '0.0' COMMENT '应上班天数',
  `zsbtime` decimal(10,1) DEFAULT '0.0' COMMENT '已上班天数',
  `gonggeren` decimal(10,2) DEFAULT '0.00' COMMENT '公积金个人',
  `gongunit` decimal(10,2) DEFAULT '0.00' COMMENT '公积金单位',
  `foodbt` decimal(10,2) DEFAULT '0.00' COMMENT '餐补贴',
  `hotbt` decimal(10,2) DEFAULT '0.00' COMMENT '高温津贴',
  `dnbt` decimal(10,2) DEFAULT '0.00' COMMENT '电脑补贴',
  `jiansr` decimal(10,2) DEFAULT '0.00' COMMENT '计件收入',
  `otherbt` decimal(10,2) DEFAULT '0.00' COMMENT '其他补贴',
  PRIMARY KEY (`id`),
  KEY `xuid` (`xuid`),
  KEY `month` (`month`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='工资表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrsalary`
--

LOCK TABLES `jouryu_hrsalary` WRITE;
/*!40000 ALTER TABLE `jouryu_hrsalary` DISABLE KEYS */;
INSERT INTO `jouryu_hrsalary` VALUES (1,1,3,'小乔','财务部','出纳','2018-10-09 22:48:53',2,'貂蝉','2018-09-28',NULL,1,1,'2018-07',1700.00,4027.23,4043.54,2000.00,0.00,0.00,0.00,0.00,0.00,221.46,355.49,16.31,3500.00,0,0.00,0.00,0,0.00,0,0.00,0,0.00,0,0.00,0,0.00,2000.00,1.50,20.00,600.00,0.0,0.0,85.00,170.00,0.00,0.00,0.00,50.00,0.00),(2,1,3,'小乔','财务部','出纳','2018-10-09 22:48:52',2,'貂蝉','2018-09-28','一键生成复制2018-07月份的工资',1,1,'2018-08',1700.00,3998.13,4013.54,2000.00,0.00,0.00,0.00,0.00,0.00,221.46,355.49,15.41,3500.00,0,0.00,0.00,0,0.00,0,0.00,0,0.00,0,0.00,0,0.00,2000.00,1.50,20.00,600.00,0.0,0.0,85.00,170.00,0.00,0.00,0.00,20.00,0.00),(15,1,3,'小乔','财务部','出纳','2018-10-09 22:48:52',2,'貂蝉','2018-10-09','一键生成参考了2018-08月份的工资',0,1,'2018-09',1700.00,3981.73,3993.54,2000.00,0.00,0.00,0.00,0.00,0.00,221.46,355.49,11.81,3600.00,0,0.00,0.00,0,0.00,0,0.00,0,0.00,0,0.00,0,0.00,2000.00,1.50,20.00,600.00,0.0,0.0,85.00,170.00,0.00,0.00,0.00,0.00,0.00),(16,1,6,'张飞','开发部','程序员','2018-10-09 22:33:14',1,'管理员','2018-10-09',NULL,1,1,'2018-08',1700.00,6398.19,6603.54,3500.00,0.00,100.00,200.00,0.00,0.00,221.46,355.49,205.35,3500.00,1,0.00,0.00,0,0.00,0,0.00,0,0.00,0,0.00,0,0.00,2000.00,1.50,33.00,990.00,0.0,0.0,85.00,170.00,200.00,100.00,120.00,0.00,0.00),(20,1,6,'张飞','开发部','程序员','2018-10-09 22:33:13',1,'管理员','2018-10-09','一键生成参考了2018-08月份的工资',0,1,'2018-09',1700.00,6047.19,6213.54,3500.00,0.00,100.00,200.00,0.00,0.00,221.46,355.49,166.35,3500.00,0,0.00,0.00,0,0.00,0,0.00,0,0.00,0,0.00,0,0.00,2000.00,1.50,20.00,600.00,0.0,0.0,85.00,170.00,200.00,100.00,120.00,0.00,0.00);
/*!40000 ALTER TABLE `jouryu_hrsalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrshebao`
--

DROP TABLE IF EXISTS `jouryu_hrshebao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrshebao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '名称',
  `recename` varchar(500) DEFAULT NULL COMMENT '适用对象',
  `receid` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '是否开启',
  `gongjishu` decimal(10,2) DEFAULT '0.00' COMMENT '公积金基数',
  `yljishu` decimal(10,2) DEFAULT '0.00' COMMENT '养老保险基数',
  `ylgeren` decimal(10,2) DEFAULT '0.00' COMMENT '养老个人比例(%)',
  `ylunit` decimal(10,2) DEFAULT '0.00' COMMENT '养老单位比例(%)',
  `syjishu` decimal(10,2) DEFAULT '0.00' COMMENT '失业报销基数',
  `sygeren` decimal(10,2) DEFAULT '0.00' COMMENT '失业个人比例(%)',
  `syunit` decimal(10,2) DEFAULT '0.00' COMMENT '失业单位比例(%)',
  `gsjishu` decimal(10,2) DEFAULT '0.00' COMMENT '工伤报销基数',
  `gsgeren` decimal(10,2) DEFAULT '0.00' COMMENT '工伤个人比例(%)',
  `gsunit` decimal(10,2) DEFAULT '0.00' COMMENT '工伤单位比例(%)',
  `syujishu` decimal(10,2) DEFAULT '0.00' COMMENT '生育保险基数',
  `syugeren` decimal(10,2) DEFAULT '0.00' COMMENT '生育个人比例(%)',
  `syuunit` decimal(10,2) DEFAULT '0.00' COMMENT '生育单位比例(%)',
  `yijishu` decimal(10,2) DEFAULT '0.00' COMMENT '医疗报销基数',
  `yigeren` decimal(10,2) DEFAULT '0.00' COMMENT '医疗个人比例(%)',
  `yiunit` decimal(10,2) DEFAULT '0.00' COMMENT '医疗单位比例(%)',
  `dbgeren` decimal(10,2) DEFAULT '0.00' COMMENT '大病个人',
  `gjjgeren` decimal(10,2) DEFAULT '0.00' COMMENT '公积金个人比例(%)',
  `gjjunit` decimal(10,2) DEFAULT '0.00' COMMENT '公积金单位比例(%)',
  `shebaogeren` decimal(10,2) DEFAULT '0.00' COMMENT '个人社保缴费',
  `shebaounit` decimal(10,2) DEFAULT '0.00' COMMENT '单位社保缴费',
  `sctime` varchar(20) DEFAULT NULL COMMENT '每月生成时间',
  `optdt` datetime DEFAULT NULL,
  `gonggeren` decimal(10,2) DEFAULT '0.00' COMMENT '公积金个人',
  `gongunit` decimal(10,2) DEFAULT '0.00' COMMENT '公积金单位',
  `explian` varchar(500) DEFAULT NULL COMMENT '说明',
  `startdt` varchar(20) DEFAULT NULL COMMENT '开始月份',
  `enddt` varchar(20) DEFAULT NULL COMMENT '截止月份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrshebao`
--

LOCK TABLES `jouryu_hrshebao` WRITE;
/*!40000 ALTER TABLE `jouryu_hrshebao` DISABLE KEYS */;
INSERT INTO `jouryu_hrshebao` VALUES (1,'烟台本地社保','本地职工','g2',1,1700.00,1700.00,8.00,12.00,1700.00,0.00,0.50,1700.00,0.00,0.20,3772.80,0.00,0.70,3772.80,2.00,3.00,10.00,5.00,10.00,221.46,355.49,'2018-09-21','2018-09-23 19:30:39',85.00,170.00,NULL,'2014-12','2024-12'),(2,'烟台外来社保','外地职工','g1',1,1700.00,1700.00,8.00,12.00,1700.00,0.00,0.50,1700.00,0.00,0.20,3772.80,0.00,0.70,3772.80,2.00,3.00,10.00,5.00,10.00,221.46,355.49,'2018-09-21','2018-09-23 19:30:16',85.00,170.00,NULL,'2014-12','2024-12');
/*!40000 ALTER TABLE `jouryu_hrshebao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrtransfer`
--

DROP TABLE IF EXISTS `jouryu_hrtransfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrtransfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `tranuid` smallint(6) DEFAULT '0',
  `tranname` varchar(20) DEFAULT NULL COMMENT '要调动人',
  `trantype` varchar(20) DEFAULT NULL COMMENT '调动类型',
  `olddeptname` varchar(50) DEFAULT NULL COMMENT '原来部门',
  `oldranking` varchar(20) DEFAULT NULL COMMENT '原来职位',
  `effectivedt` date DEFAULT NULL COMMENT '生效日期',
  `newdeptname` varchar(50) DEFAULT NULL COMMENT '调动后部门',
  `newdeptid` smallint(6) DEFAULT NULL,
  `newranking` varchar(20) DEFAULT NULL COMMENT '调动后职位',
  `isover` tinyint(1) DEFAULT '0' COMMENT '是否已完成',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='职位调动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrtransfer`
--

LOCK TABLES `jouryu_hrtransfer` WRITE;
/*!40000 ALTER TABLE `jouryu_hrtransfer` DISABLE KEYS */;
INSERT INTO `jouryu_hrtransfer` VALUES (1,1,'2016-10-19 22:03:12',1,'管理员','2016-10-19',NULL,1,1,5,'琢瑜清泉','平调','管理层','董事长','2016-10-19','财务部',3,'CEO',1);
/*!40000 ALTER TABLE `jouryu_hrtransfer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_hrtrsalary`
--

DROP TABLE IF EXISTS `jouryu_hrtrsalary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_hrtrsalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `applyname` varchar(30) DEFAULT NULL COMMENT '申请人姓名',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `effectivedt` date DEFAULT NULL COMMENT '生效日期',
  `floats` smallint(6) DEFAULT '0' COMMENT '调薪幅度',
  `ranking` varchar(20) DEFAULT NULL COMMENT '职位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='调薪申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_hrtrsalary`
--

LOCK TABLES `jouryu_hrtrsalary` WRITE;
/*!40000 ALTER TABLE `jouryu_hrtrsalary` DISABLE KEYS */;
INSERT INTO `jouryu_hrtrsalary` VALUES (1,1,NULL,'2016-10-20 22:20:41',1,'管理员','2016-11-01','122121',0,1,'2016-10-19',500,'项目主管');
/*!40000 ALTER TABLE `jouryu_hrtrsalary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_im_group`
--

DROP TABLE IF EXISTS `jouryu_im_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_im_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `pid` smallint(6) DEFAULT '0' COMMENT '对应上级',
  `types` varchar(10) DEFAULT NULL COMMENT '应用分类',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|群,1|讨论组,2|应用',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `createid` int(11) DEFAULT NULL,
  `createname` varchar(20) DEFAULT NULL COMMENT '创建人',
  `createdt` datetime DEFAULT NULL COMMENT '创建时间',
  `face` varchar(50) DEFAULT NULL COMMENT '头像',
  `num` varchar(20) DEFAULT NULL,
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `explain` varchar(200) DEFAULT NULL,
  `iconfont` varchar(30) DEFAULT NULL COMMENT '对应字体图标',
  `iconcolor` varchar(7) DEFAULT NULL COMMENT '字体图标颜色',
  `yylx` tinyint(1) DEFAULT '0' COMMENT '应用类型0全部,1pc,2手机',
  `urlpc` varchar(200) DEFAULT NULL COMMENT '应用上PC地址',
  `urlm` varchar(200) DEFAULT NULL COMMENT '应用上手机端地址',
  `deptid` varchar(100) DEFAULT NULL COMMENT '对应部门id',
  PRIMARY KEY (`id`),
  KEY `num` (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='IM会话表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_im_group`
--

LOCK TABLES `jouryu_im_group` WRITE;
/*!40000 ALTER TABLE `jouryu_im_group` DISABLE KEYS */;
INSERT INTO `jouryu_im_group` VALUES (2,'全体人员',0,NULL,0,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL,NULL,'1'),(3,'通知公告',0,'基础',2,28,NULL,NULL,NULL,'images/gong.png','gong',NULL,NULL,'link',1,NULL,'xiaolaba','#f25e94',0,'gong',NULL,NULL),(4,'会议',0,'基础',2,27,NULL,NULL,NULL,'images/meet.png','meet',NULL,NULL,'auto',1,NULL,'huiyi-copy','#fc6419',0,NULL,NULL,NULL),(5,'通讯录',0,'基础',2,21,NULL,NULL,NULL,'images/tongxunlu.png','user',NULL,NULL,'link',1,NULL,'tongxunlu','#B28649',0,'reimtxl',NULL,NULL),(7,'工作日报',0,'基础',2,26,NULL,NULL,'2015-06-25 16:03:34','images/daily.png','daily',NULL,NULL,'auto',1,NULL,'ribaojindu','#578dc4',0,NULL,NULL,NULL),(12,'任务',0,'任务',2,13,1,'管理员','2015-09-10 13:38:07','images/work.png','work',NULL,NULL,'auto',1,NULL,'renwu','#91cd4a',0,NULL,NULL,NULL),(13,'万年历',0,'基础',2,25,NULL,NULL,NULL,'images/calendar.png','calendar',NULL,NULL,'link',1,NULL,'rili','#e0815c',0,'http://www.rili123.cn/rili123.htm',NULL,NULL),(14,'高管群',0,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL,NULL,NULL),(15,'流程申请',0,'流程',2,10,NULL,NULL,NULL,'images/flow.png','flow',NULL,NULL,'buin',1,NULL,'shenqingliuchengicon','#3fbfc2',0,NULL,NULL,NULL),(16,'流程待办',0,'流程',2,11,NULL,NULL,NULL,'images/daiban.png','daiban',NULL,NULL,'link',1,NULL,'daiban','#33b5e5',0,'daiban',NULL,NULL),(17,'客户管理',0,'客户',2,51,NULL,NULL,NULL,'images/crm.png','customer',NULL,NULL,'auto',1,NULL,'kehu','#2e98f1',0,NULL,NULL,NULL),(18,'客户主页',0,'客户',2,50,NULL,NULL,NULL,'images/crm.png','crmindex',NULL,NULL,'link',1,NULL,'kehu','#2e98f1',1,'crmindex',NULL,NULL),(19,'销售机会',0,'客户',2,52,NULL,NULL,NULL,'images/sale.png','custsale',NULL,NULL,'auto',1,NULL,'xiaoshou','#5c8fba',0,NULL,NULL,NULL),(20,'文档',0,'资源',2,31,NULL,NULL,NULL,'images/folder.png','word',NULL,NULL,'link',1,NULL,'wenjian-copy','#f5d95a',0,'word',NULL,NULL),(21,'日程',0,'基础',2,23,NULL,NULL,NULL,'images/bwl2.png','schedule',NULL,NULL,'link',1,NULL,'richeng','#158aad',0,'schedule',NULL,NULL),(24,'外出出差',0,'考勤',2,7,NULL,NULL,NULL,'images/waichu.png','waichu',NULL,NULL,'auto',1,NULL,'waichu','#cc9999',0,NULL,NULL,NULL),(26,'邮件',0,'基础',2,22,NULL,NULL,NULL,'images/email.png','emailm',NULL,NULL,'link',1,NULL,'youjian','#7CD3B0',0,'email',NULL,NULL),(27,'知识信息',0,'资源',2,32,NULL,NULL,NULL,'images/zhishi.png','knowledge',NULL,NULL,'auto',1,NULL,'knowledge','#F28794',0,NULL,NULL,NULL),(28,'考勤信息',0,'考勤',2,5,NULL,NULL,NULL,'images/kaoqin.png','kqdkjl',NULL,NULL,'auto',1,NULL,NULL,NULL,0,NULL,NULL,NULL),(29,'考勤打卡',0,'考勤',2,3,NULL,NULL,NULL,'images/adddk.png','kqdaka',NULL,NULL,'link',1,NULL,NULL,NULL,0,NULL,'?d=we&m=ying&a=daka',NULL),(30,'考勤统计',0,'考勤',2,6,NULL,NULL,NULL,'images/kaoqin.png','kqtotal',NULL,NULL,'auto',1,NULL,NULL,NULL,0,NULL,NULL,NULL),(31,'开发部',0,NULL,0,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,0,NULL,NULL,'2'),(32,'题库',0,'资源',2,33,NULL,NULL,NULL,'images/tiku.png','knowtiku',NULL,NULL,'auto',1,NULL,'tiku','#fb2b16',0,NULL,NULL,NULL),(33,'培训考试',0,'资源',2,34,NULL,NULL,NULL,'images/kaoshi.png','kaoshi',NULL,NULL,'auto',1,NULL,'kaoshi','#4f68b0',0,NULL,NULL,NULL),(34,'客户合同',0,'客户',2,53,NULL,NULL,NULL,'images/hetong.png','custract',NULL,NULL,'auto',1,NULL,'kehu-kehuhetong','#4ca2fa',0,NULL,NULL,NULL),(35,'收款单',0,'客户',2,54,NULL,NULL,NULL,'images/skuan.png','custfina',NULL,NULL,'auto',1,NULL,'achargeaudit','#339966',0,NULL,NULL,NULL),(36,'付款单',0,'客户',2,55,NULL,NULL,NULL,'images/fkuan.png','custfkd',NULL,NULL,'auto',1,NULL,'apayaudit','#cf9d31',0,NULL,NULL,NULL),(38,'工资条',0,'基础',2,29,NULL,NULL,NULL,'images/gzt.png','hrsalary',NULL,NULL,'auto',1,NULL,NULL,'#FF6666',2,NULL,NULL,NULL),(39,'申请流程',0,'流程',2,12,NULL,NULL,NULL,'images/jia.png','flowapply',NULL,NULL,'link',1,NULL,NULL,NULL,0,NULL,'?d=we&m=flow&a=apply',NULL),(40,'订阅报表',0,'基础',2,30,NULL,NULL,NULL,'images/work.png','subscribeinfo',NULL,NULL,'auto',1,NULL,NULL,NULL,0,NULL,NULL,NULL),(41,'公文查阅',0,'公文',2,15,NULL,NULL,NULL,'images/gw.png','officic',NULL,NULL,'auto',1,NULL,NULL,'#ff6600',0,NULL,NULL,NULL),(42,'发文单',0,'公文',2,16,NULL,NULL,NULL,'images/fawen.png','officia',NULL,NULL,'auto',1,NULL,NULL,'#f85252',0,NULL,NULL,NULL),(43,'收文单',0,'公文',2,17,NULL,NULL,NULL,'images/shouwen.png','officib',NULL,NULL,'auto',1,NULL,NULL,'#ff0000',0,NULL,NULL,NULL),(44,'项目',0,'任务',2,14,NULL,NULL,NULL,'images/project.png','project',NULL,NULL,'auto',1,NULL,NULL,'#30c7b0',0,NULL,NULL,NULL),(45,'排班查看',0,'考勤',2,4,NULL,NULL,NULL,'images/bwl2.png','kqpai',NULL,NULL,'auto',1,NULL,NULL,NULL,0,NULL,NULL,NULL),(46,'回执确认',0,'基础',2,30,NULL,NULL,NULL,'images/jwcl.png','receipt',NULL,NULL,'auto',1,NULL,NULL,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_im_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_im_groupuser`
--

DROP TABLE IF EXISTS `jouryu_im_groupuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_im_groupuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` smallint(6) NOT NULL DEFAULT '0',
  `uid` smallint(6) NOT NULL DEFAULT '0',
  `istx` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='IM会话人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_im_groupuser`
--

LOCK TABLES `jouryu_im_groupuser` WRITE;
/*!40000 ALTER TABLE `jouryu_im_groupuser` DISABLE KEYS */;
INSERT INTO `jouryu_im_groupuser` VALUES (19,0,0,1),(43,26,1,1),(44,26,8,1),(45,26,9,1),(70,14,5,1),(73,14,1,1),(74,2,1,1),(77,14,2,1),(97,2,2,1),(98,2,3,1),(99,2,4,1),(100,2,5,1),(101,2,6,1),(102,2,7,1),(103,2,8,1),(104,31,1,1),(105,31,6,1),(106,31,7,1),(107,31,8,1);
/*!40000 ALTER TABLE `jouryu_im_groupuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_im_history`
--

DROP TABLE IF EXISTS `jouryu_im_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_im_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `receid` smallint(6) DEFAULT '0',
  `uid` smallint(6) DEFAULT NULL,
  `sendid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `stotal` smallint(6) DEFAULT '0',
  `title` varchar(50) DEFAULT NULL COMMENT '推送时标题',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`receid`,`uid`),
  KEY `optdt` (`optdt`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='IM会话记录历史表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_im_history`
--

LOCK TABLES `jouryu_im_history` WRITE;
/*!40000 ALTER TABLE `jouryu_im_history` DISABLE KEYS */;
INSERT INTO `jouryu_im_history` VALUES (1,'group',2,2,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',1,NULL),(2,'group',2,7,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',1,NULL),(3,'group',2,6,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',1,NULL),(4,'group',2,8,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',1,NULL),(5,'group',2,5,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',1,NULL),(6,'group',2,1,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',0,NULL),(7,'group',2,4,8,'2018-10-10 15:59:42','5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',1,NULL);
/*!40000 ALTER TABLE `jouryu_im_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_im_menu`
--

DROP TABLE IF EXISTS `jouryu_im_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_im_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `pid` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0' COMMENT '1url,0事件',
  `url` varchar(300) DEFAULT NULL COMMENT '对应地址',
  `num` varchar(20) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL COMMENT '颜色',
  `receid` varchar(300) DEFAULT NULL,
  `recename` varchar(300) DEFAULT NULL COMMENT '可使用人员',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8 COMMENT='IM下应用菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_im_menu`
--

LOCK TABLES `jouryu_im_menu` WRITE;
/*!40000 ALTER TABLE `jouryu_im_menu` DISABLE KEYS */;
INSERT INTO `jouryu_im_menu` VALUES (1,13,0,'上月',0,0,'prevmonth',NULL,NULL,NULL,NULL),(2,13,0,'当月',0,0,'nowmonth',NULL,NULL,NULL,NULL),(3,13,0,'下月',0,0,'nextmonth',NULL,NULL,NULL,NULL),(4,3,0,'全部信息',0,0,'my',NULL,NULL,NULL,NULL),(5,3,0,'未读信息',0,0,'wexx','weidu',NULL,NULL,NULL),(6,12,0,'我的任务',0,0,NULL,'myrw',NULL,NULL,NULL),(7,12,0,'下属任务',0,0,'down',NULL,NULL,NULL,NULL),(8,12,0,'＋创建任务',0,1,'add',NULL,NULL,NULL,NULL),(9,3,0,'新增公告',0,1,'add',NULL,NULL,NULL,NULL),(10,4,0,'今日会议',0,0,'today','today',NULL,NULL,NULL),(11,4,0,'本周会议',0,0,'week',NULL,NULL,NULL,NULL),(12,4,0,'＋新增会议',0,1,'add',NULL,NULL,NULL,NULL),(13,7,0,'我的日报',0,0,'my',NULL,NULL,NULL,NULL),(14,7,0,'下属日报',0,0,'under','under',NULL,NULL,NULL),(15,7,0,'＋写日报',0,1,'add',NULL,NULL,NULL,NULL),(16,7,14,'全部',0,0,'undall',NULL,NULL,NULL,NULL),(17,7,14,'未读',1,0,'undwd',NULL,NULL,NULL,NULL),(18,1,0,'最新信息',0,0,'new',NULL,NULL,NULL,NULL),(19,1,0,'＋建议反馈',1,1,'http://www.jouryu.com/fankui.html',NULL,NULL,NULL,NULL),(20,12,6,'未完成',0,0,'wwc',NULL,NULL,NULL,NULL),(21,12,6,'已完成',1,0,'ywc',NULL,NULL,NULL,NULL),(22,12,6,'我创建的',2,0,'wcj',NULL,NULL,NULL,NULL),(23,15,0,'流程申请',3,0,NULL,NULL,NULL,NULL,NULL),(24,15,23,'＋请假条',0,1,'add_leave',NULL,NULL,NULL,NULL),(25,15,23,'＋加班单',0,1,'add_jiaban',NULL,NULL,NULL,NULL),(26,15,0,'我的申请',0,0,NULL,NULL,NULL,NULL,NULL),(27,15,0,'处理未通过',0,0,'wtg','mywtg',NULL,NULL,NULL),(28,15,26,'我所有申请',0,0,'apply',NULL,NULL,NULL,NULL),(29,15,26,'未通过',0,0,'wtg',NULL,'red',NULL,NULL),(30,15,26,'已完成',0,0,'ywc',NULL,NULL,NULL,NULL),(31,16,0,'所有待办',0,0,'daib','daiban',NULL,NULL,NULL),(32,16,0,'单据查看',0,0,NULL,NULL,NULL,NULL,NULL),(33,16,32,'经我处理',0,0,'jwcl',NULL,NULL,NULL,NULL),(34,16,32,'直属下级申请',1,0,'myxia',NULL,NULL,NULL,NULL),(35,12,6,'我所有任务',3,0,'my',NULL,NULL,NULL,NULL),(36,19,0,'我的销售机会',0,0,NULL,'gen',NULL,NULL,NULL),(37,17,40,'我的客户',0,0,'my',NULL,NULL,NULL,NULL),(39,17,40,'我全部客户',0,0,'myall',NULL,NULL,NULL,NULL),(40,17,0,'我的客户',0,0,NULL,NULL,NULL,NULL,NULL),(41,17,0,'新增客户',2,1,'add_customer',NULL,NULL,NULL,NULL),(42,19,0,'新增销售',2,1,'add_custsale',NULL,NULL,NULL,NULL),(43,19,36,'需跟进',0,0,'mygx',NULL,NULL,NULL,NULL),(44,19,36,'已成交',1,0,'mycj',NULL,'green',NULL,NULL),(45,19,36,'已丢失',2,0,'myds',NULL,'',NULL,NULL),(46,19,36,'我所有销售',3,0,'myall',NULL,NULL,NULL,NULL),(47,17,40,'我标★客户',0,0,'mystat',NULL,NULL,NULL,NULL),(48,17,40,'我停用客户',0,0,'my_ting',NULL,NULL,NULL,NULL),(49,15,26,'待处理',0,0,'dcl',NULL,NULL,NULL,NULL),(50,20,0,'新建文件夹',2,0,'create',NULL,NULL,NULL,NULL),(51,20,0,'上传文件',0,0,'up',NULL,NULL,NULL,NULL),(52,20,0,'共享的',1,0,NULL,NULL,NULL,NULL,NULL),(53,21,0,'日程',0,0,NULL,NULL,NULL,NULL,NULL),(54,21,53,'当月',0,0,'nowmonth',NULL,NULL,NULL,NULL),(55,21,53,'下月',0,0,'nextmonth',NULL,NULL,NULL,NULL),(56,21,0,'日程管理',0,0,NULL,NULL,NULL,NULL,NULL),(57,21,0,'＋新增',0,1,'add',NULL,NULL,NULL,NULL),(58,24,87,'我今日外出',0,0,'mytoday',NULL,NULL,NULL,NULL),(59,24,0,'＋新增',2,1,'add',NULL,NULL,NULL,NULL),(60,24,87,'我所有外出',1,0,'my',NULL,NULL,NULL,NULL),(61,20,52,'我共享的',0,0,'shate',NULL,NULL,NULL,NULL),(62,20,52,'共享给我的',0,0,'fxgw',NULL,NULL,NULL,NULL),(63,15,23,'更多&gt;&gt;',0,0,'moreapply',NULL,NULL,NULL,NULL),(64,26,0,'收件箱',0,0,NULL,'sjx',NULL,NULL,NULL),(65,26,0,'＋写信',2,1,'add_emailm',NULL,NULL,NULL,NULL),(66,27,0,'知识信息',0,0,'def',NULL,NULL,NULL,NULL),(67,26,0,'草稿箱',1,0,'cgx',NULL,NULL,NULL,NULL),(68,26,64,'未读邮件',0,0,'wdyj',NULL,NULL,NULL,NULL),(69,26,64,'所有邮件',0,0,'sjx',NULL,NULL,NULL,NULL),(70,26,64,'已发送',0,0,'yfs',NULL,NULL,NULL,NULL),(71,5,0,'内部通讯录',0,0,'txlmy|user',NULL,NULL,NULL,NULL),(72,5,0,'个人通讯录',0,0,'def|vcard',NULL,NULL,NULL,NULL),(73,5,0,'＋新增',0,1,'add_vcard',NULL,NULL,NULL,NULL),(74,28,0,'我的记录',0,0,NULL,NULL,NULL,NULL,NULL),(75,28,0,'考勤信息',2,0,NULL,NULL,NULL,NULL,NULL),(77,28,75,'＋请假条',0,1,'add_leave',NULL,NULL,NULL,NULL),(78,28,75,'我的请假条',3,0,'my|leave',NULL,NULL,NULL,NULL),(79,17,0,'下属客户',0,0,NULL,NULL,NULL,NULL,NULL),(80,28,74,'我的打卡',0,0,'my',NULL,NULL,NULL,NULL),(81,28,82,'下属打卡',0,0,'down',NULL,NULL,NULL,NULL),(82,28,0,'下属记录',0,0,NULL,NULL,NULL,NULL,NULL),(83,28,74,'我的定位',0,0,'my|kqdw',NULL,NULL,NULL,NULL),(84,28,82,'下属定位',0,0,'down|kqdw',NULL,NULL,NULL,NULL),(85,28,75,'我的加班单',4,0,'my|jiaban',NULL,NULL,NULL,NULL),(86,28,75,'＋加班单',1,1,'add_jiaban',NULL,NULL,NULL,NULL),(87,24,0,'我的外出',0,0,NULL,NULL,NULL,NULL,NULL),(88,24,91,'下属所有外出',3,0,'downall',NULL,NULL,NULL,NULL),(89,1,0,'打开官网',0,1,'http://www.jouryu.com/',NULL,NULL,NULL,NULL),(90,24,91,'下属今日外出',2,0,'downtoday',NULL,NULL,NULL,NULL),(91,24,0,'下属外出',0,0,NULL,NULL,NULL,NULL,NULL),(92,19,0,'下属销售机会',1,0,NULL,NULL,NULL,NULL,NULL),(93,30,0,'我的统计',0,0,NULL,NULL,NULL,NULL,NULL),(94,30,0,'下属统计',0,0,NULL,NULL,NULL,NULL,NULL),(95,30,93,'当月统计',0,0,'mynow',NULL,NULL,NULL,NULL),(96,30,93,'上月统计',0,0,'mylast',NULL,NULL,NULL,NULL),(97,30,94,'当月统计',0,0,'downnow',NULL,NULL,NULL,NULL),(98,30,94,'上月统计',0,0,'downlast',NULL,NULL,NULL,NULL),(99,21,56,'我的日程',0,0,'my',NULL,NULL,NULL,NULL),(100,21,56,'提醒给我的',1,0,'rece',NULL,NULL,NULL,NULL),(101,17,40,'我创建',0,0,'mycj',NULL,NULL,NULL,NULL),(102,17,40,'共享给我的',0,0,'gxgw',NULL,NULL,NULL,NULL),(103,17,79,'下属全部客户',0,0,'downall',NULL,NULL,NULL,NULL),(104,17,79,'下属停用',0,0,'downty',NULL,NULL,NULL,NULL),(105,17,79,'下属标★',0,0,'downstat',NULL,NULL,NULL,NULL),(106,19,92,'下属需跟进',0,0,'downgj',NULL,NULL,NULL,NULL),(107,19,92,'下属已成交',1,0,'downcj',NULL,NULL,NULL,NULL),(108,19,92,'下属已丢失',2,0,'downds',NULL,NULL,NULL,NULL),(109,19,92,'所有销售机会',3,0,'downall',NULL,NULL,NULL,NULL),(110,32,0,'所有题库',0,0,'all',NULL,NULL,NULL,NULL),(111,32,0,'未读题库',1,0,'weidu',NULL,NULL,NULL,NULL),(112,33,0,'我未考试',0,0,'weiks','weiks',NULL,NULL,NULL),(113,33,0,'所有考试',1,0,'myall',NULL,NULL,NULL,NULL),(114,34,0,'我的合同',0,0,NULL,NULL,NULL,NULL,NULL),(115,34,114,'我所有合同',0,0,'my',NULL,NULL,NULL,NULL),(116,34,114,'我的已过期',1,0,'ygq',NULL,NULL,NULL,NULL),(117,34,0,'下属合同',1,0,NULL,NULL,NULL,NULL,NULL),(118,34,117,'下属所有合同',0,0,'downall',NULL,NULL,NULL,NULL),(119,34,117,'下属已过期',1,0,'downygq',NULL,NULL,NULL,NULL),(120,34,0,'＋新增',1,1,'add',NULL,NULL,NULL,NULL),(121,35,0,'我的收款单',0,0,NULL,NULL,NULL,NULL,NULL),(122,35,121,'我未收款',0,0,'myskdws',NULL,NULL,NULL,NULL),(123,35,121,'我已收款',1,0,'myskdys',NULL,NULL,NULL,NULL),(124,35,121,'我所有的',2,0,'myskd',NULL,NULL,NULL,NULL),(125,35,0,'下属收款单',0,0,NULL,NULL,NULL,NULL,NULL),(126,35,125,'下属未收款',0,0,'downskdwsk',NULL,NULL,NULL,NULL),(127,35,125,'下属已收款',0,0,'downskdys',NULL,NULL,NULL,NULL),(128,35,125,'下属所有',0,0,'downskd',NULL,NULL,NULL,NULL),(129,35,0,'＋新增',0,1,'add',NULL,NULL,NULL,NULL),(130,36,0,'我的付款单',0,0,NULL,NULL,NULL,NULL,NULL),(131,36,130,'我未付款',0,0,'myfkdwf|custfina',NULL,NULL,NULL,NULL),(132,36,130,'我已付款',1,0,'myfkdyf|custfina',NULL,NULL,NULL,NULL),(133,36,130,'我所有的',2,0,'myfkd|custfina',NULL,NULL,NULL,NULL),(134,36,0,'下属付款单',0,0,NULL,NULL,NULL,NULL,NULL),(135,36,134,'下属未付款',0,0,'downfkdwf|custfina',NULL,NULL,NULL,NULL),(136,36,134,'下属已付款',0,0,'downfkdyf|custfina',NULL,NULL,NULL,NULL),(137,36,134,'下属所有',0,0,'downfkd|custfina',NULL,NULL,NULL,NULL),(138,36,0,'＋新增',0,1,'add_custfina',NULL,NULL,NULL,NULL),(139,38,0,'我的工资',0,0,'my',NULL,NULL,NULL,NULL),(140,40,0,'给我的订阅',0,0,'my',NULL,NULL,NULL,NULL),(141,41,0,'未查阅',0,0,'mywcy','mywcy',NULL,NULL,NULL),(142,41,0,'所有需查阅',1,0,'my',NULL,NULL,NULL,NULL),(143,42,0,'我的发文',0,0,'my',NULL,NULL,NULL,NULL),(144,42,0,'＋拟办',2,1,'add',NULL,NULL,NULL,NULL),(145,42,0,'发文查看',1,0,'grant',NULL,NULL,NULL,NULL),(146,43,0,'我的收文',0,0,'my',NULL,NULL,NULL,NULL),(147,43,0,'收文查看',1,0,'grant',NULL,NULL,NULL,NULL),(148,43,0,'＋收文登记',3,1,'add',NULL,NULL,NULL,NULL),(149,44,0,'我未完成',0,0,'wwc','wwc',NULL,NULL,NULL),(150,44,0,'项目查看',0,0,NULL,NULL,NULL,NULL,NULL),(151,44,150,'我负责的',1,0,'myfz',NULL,NULL,NULL,NULL),(152,44,150,'我创建的',2,0,'mycj',NULL,NULL,NULL,NULL),(153,44,0,'创建项目',0,1,'add',NULL,NULL,NULL,NULL),(154,44,150,'我执行项目',0,0,'my',NULL,NULL,NULL,NULL),(155,7,14,'抄送给我',2,0,'chaos',NULL,NULL,NULL,NULL),(156,15,26,'抄送给我',0,0,'chaos',NULL,NULL,NULL,NULL),(157,45,0,'上月',0,0,'prevmonth',NULL,NULL,NULL,NULL),(158,45,0,'当月',0,0,'nowmonth',NULL,NULL,NULL,NULL),(159,45,0,'下月',0,0,'nextmonth',NULL,NULL,NULL,NULL),(160,46,0,'我未回执确认',0,0,'my','mywei',NULL,NULL,NULL),(161,46,0,'我全部回执确认',0,0,'myall',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_im_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_im_mess`
--

DROP TABLE IF EXISTS `jouryu_im_mess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_im_mess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optdt` datetime DEFAULT NULL,
  `zt` tinyint(1) DEFAULT '0' COMMENT '状态',
  `cont` varchar(4000) DEFAULT NULL COMMENT '内容',
  `sendid` smallint(6) DEFAULT NULL,
  `receid` smallint(6) DEFAULT '0' COMMENT '接收',
  `receuid` varchar(4000) DEFAULT NULL COMMENT '接收用户id',
  `type` varchar(20) DEFAULT NULL COMMENT '信息类型',
  `url` varchar(1000) DEFAULT NULL COMMENT '相关地址',
  `fileid` int(11) NOT NULL DEFAULT '0' COMMENT '对应文件Id',
  `msgid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `optdt` (`optdt`,`receid`),
  KEY `msgid` (`msgid`),
  KEY `type` (`type`,`receid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='IM聊天记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_im_mess`
--

LOCK TABLES `jouryu_im_mess` WRITE;
/*!40000 ALTER TABLE `jouryu_im_mess` DISABLE KEYS */;
INSERT INTO `jouryu_im_mess` VALUES (1,'2018-10-10 15:59:42',1,'5aSn5a625pyJ5ZWl6Zeu6aKY6L!Z6YeM6K!05ZWK77yB',8,2,'2,7,6,8,5,1,4','group',NULL,0,NULL);
/*!40000 ALTER TABLE `jouryu_im_mess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_im_messzt`
--

DROP TABLE IF EXISTS `jouryu_im_messzt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_im_messzt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '信息id',
  `uid` int(11) DEFAULT NULL COMMENT '人员id',
  `gid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IM聊天消息状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_im_messzt`
--

LOCK TABLES `jouryu_im_messzt` WRITE;
/*!40000 ALTER TABLE `jouryu_im_messzt` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_im_messzt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_infor`
--

DROP TABLE IF EXISTS `jouryu_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_infor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `typename` varchar(20) DEFAULT NULL,
  `content` text,
  `url` varchar(200) DEFAULT NULL,
  `receid` varchar(2000) DEFAULT NULL COMMENT '接收人Id',
  `recename` varchar(4000) DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `enddt` datetime DEFAULT NULL COMMENT '截止时间',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `zuozhe` varchar(30) DEFAULT NULL COMMENT '发布者',
  `indate` date DEFAULT NULL COMMENT '日期',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `fengmian` varchar(100) DEFAULT NULL COMMENT '封面图片',
  `mintou` smallint(6) DEFAULT '0' COMMENT '至少投票',
  `maxtou` smallint(6) DEFAULT '0' COMMENT '最多投投票0不限制',
  `issms` tinyint(1) DEFAULT '0' COMMENT '是否发短信',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='通知公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_infor`
--

LOCK TABLES `jouryu_infor` WRITE;
/*!40000 ALTER TABLE `jouryu_infor` DISABLE KEYS */;
INSERT INTO `jouryu_infor` VALUES (1,'欢迎使用琢瑜OA工作台','2018-04-26 17:27:10','通知公告','<p>\n	欢迎使用，有任何问题可以随时联系我们，帮你解答哦。&nbsp;\n</p>\n<p>\n	琢瑜OA是一款开源免费的工作台软件，可添加应用，管理，pc上，app都可以使用，我们的代码全部开放，可自由使用。\n</p>',NULL,NULL,NULL,1,'管理员',NULL,NULL,'琢瑜OA开发团队','2016-08-01',1,NULL,0,0,0),(2,'关于写日报制度说明','2017-05-17 20:06:00','规则制度','<p>\n	1、每个人工作日在下班后必须写工作日报，全天请假可不用写，只要有上班就需要写，即使你上班1分钟。\n</p>\n<p>\n	2、也可以隔天写。\n</p>\n<p>\n	<strong>未写处罚</strong> \n</p>\n<p>\n	1、未写一次扣五块，累计加倍。\n</p>',NULL,'u1,u2,u3,u4,u5,u6,u7,u8,u9',NULL,1,'管理员',NULL,NULL,'人力行政部','2016-08-01',1,'images/kqbanner1.jpg',0,0,0),(6,'琢瑜OA更新发布V1.8.2版本','2018-10-10 11:37:20','通知公告','<p>\n	版本添加了发布如下功能。\n</p>\n<p>\n	1、系统功能完善。\n</p>\n<p>\n	2、更新了很多，自己看<a href=\"http://www.jouryu.com/view_core.html\" target=\"_blank\">升级日志</a>。\n</p>',NULL,NULL,NULL,1,'管理员',NULL,NULL,'琢瑜OA开发团队','2018-10-10',1,'images/logo.png',0,0,0),(9,'你们觉得这个系统如何？','2017-08-29 10:25:24','通知公告','开始投票拉。',NULL,'d1','琢瑜OA开发团队',1,'管理员','2018-08-31 12:42:00','2017-08-26 12:42:00','开发部','2017-08-26',1,NULL,1,1,0);
/*!40000 ALTER TABLE `jouryu_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_infors`
--

DROP TABLE IF EXISTS `jouryu_infors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_infors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表infor.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `touitems` varchar(200) DEFAULT NULL COMMENT '投票选项',
  `touci` int(11) DEFAULT '0' COMMENT '得到票数',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='信息子表投票项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_infors`
--

LOCK TABLES `jouryu_infors` WRITE;
/*!40000 ALTER TABLE `jouryu_infors` DISABLE KEYS */;
INSERT INTO `jouryu_infors` VALUES (1,9,0,'好',1),(2,9,1,'很好',3),(3,9,2,'非常好',4);
/*!40000 ALTER TABLE `jouryu_infors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_knowledge`
--

DROP TABLE IF EXISTS `jouryu_knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应分类',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `content` text,
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='知识信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_knowledge`
--

LOCK TABLES `jouryu_knowledge` WRITE;
/*!40000 ALTER TABLE `jouryu_knowledge` DISABLE KEYS */;
INSERT INTO `jouryu_knowledge` VALUES (1,'如果提供工作效率！',199,0,'<p>\n	1、加班。\n</p>\n<p>\n	2、加班。\n</p>\n<p>\n	3、在加班。\n</p>','2018-09-10 11:22:42','管理员','2016-10-24 22:05:24');
/*!40000 ALTER TABLE `jouryu_knowledge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_knowtiku`
--

DROP TABLE IF EXISTS `jouryu_knowtiku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_knowtiku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL COMMENT '标题',
  `typeid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0单选,1多选',
  `ana` varchar(300) DEFAULT NULL COMMENT '答案A',
  `anb` varchar(300) DEFAULT NULL COMMENT '答案B',
  `anc` varchar(300) DEFAULT NULL COMMENT '答案C',
  `and` varchar(300) DEFAULT NULL COMMENT '答案D',
  `answer` varchar(10) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `adddt` datetime DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `content` varchar(1000) DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `imgurl` varchar(100) DEFAULT NULL COMMENT '相关图片地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='知识题库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_knowtiku`
--

LOCK TABLES `jouryu_knowtiku` WRITE;
/*!40000 ALTER TABLE `jouryu_knowtiku` DISABLE KEYS */;
INSERT INTO `jouryu_knowtiku` VALUES (1,'我们开源系统的名称是？',227,0,'琢瑜OA','呼信','信乎','信信','A',0,'2016-10-27 21:33:24','2016-10-27 21:52:48',NULL,1,NULL,1,NULL),(2,'琢瑜OA官网域名是？',227,1,'xh829.com','bbs.xh829.com','www.jouryu.com','www.xh829.com','C',0,'2016-10-27 21:43:04','2017-08-20 14:03:51',NULL,1,NULL,1,NULL),(3,'琢瑜OA第一版本发布时间',227,0,'2016.01','2016.07','2016.06','不知道','C',0,'2016-10-27 22:14:09','2016-10-27 22:14:09','呵呵，其实我也不知道！',1,NULL,1,NULL),(4,'PHP使用输出方式',295,1,'echo','exit','print','die','AC',0,'2017-05-09 20:08:51','2017-05-09 20:10:49',NULL,1,NULL,1,NULL),(8,'琢瑜OA要求PHP最低版本',227,0,'5.2','5.3','5.4','5.5','B',0,'2017-08-20 14:02:05','2017-08-20 14:02:05','详见官网说明使用',1,NULL,1,NULL),(9,'琢瑜OA要求MySql最低版本',227,0,'5','5.3','5.4','5.5','D',0,'2017-08-20 14:02:05','2017-08-20 14:02:05','详见官网说明使用',1,NULL,1,NULL),(10,'PHP如何连接数据库方式',295,0,'mysql','mysqli','pdo','mssql','ABC',0,'2017-08-20 14:02:05','2017-08-20 14:02:05','D选项为别的数据库',1,NULL,1,NULL);
/*!40000 ALTER TABLE `jouryu_knowtiku` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_knowtraim`
--

DROP TABLE IF EXISTS `jouryu_knowtraim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_knowtraim` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `optid` int(11) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL,
  `dxshu` smallint(6) DEFAULT '0' COMMENT '多选题目数量',
  `dsshu` smallint(6) DEFAULT '0' COMMENT '单选题目数量',
  `reshu` smallint(6) DEFAULT '0' COMMENT '培训人数',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '截止时间',
  `kstime` smallint(6) DEFAULT '0' COMMENT '考试时间(分钟)',
  `ydshu` smallint(6) DEFAULT '0' COMMENT '已答题人数',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `receid` varchar(200) DEFAULT NULL,
  `recename` varchar(200) DEFAULT NULL COMMENT '发给谁培训',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `state` tinyint(1) DEFAULT '0' COMMENT '0还没开始,1考试中,2已结束',
  `zfenshu` int(11) DEFAULT '0' COMMENT '总分',
  `hgfen` int(11) DEFAULT '0' COMMENT '合格分数',
  `tikuid` varchar(200) DEFAULT NULL,
  `tikuname` varchar(200) DEFAULT NULL COMMENT '对应题库',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='培训表出题考试';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_knowtraim`
--

LOCK TABLES `jouryu_knowtraim` WRITE;
/*!40000 ALTER TABLE `jouryu_knowtraim` DISABLE KEYS */;
INSERT INTO `jouryu_knowtraim` VALUES (1,'新员工培训考试',1,'管理员','2017-05-16 21:43:31',3,4,5,'2017-05-17 11:34:00','2017-06-17 21:08:30',30,2,1,'d2','开发部',NULL,2,100,60,NULL,NULL),(2,'贯彻楼市投资培训。',1,'管理员','2017-05-19 16:11:25',3,2,9,'2017-05-19 14:00:00','2017-05-22 16:07:00',10,1,1,'d1','琢瑜OA开发团队',NULL,2,100,60,NULL,NULL),(3,'PHP笔试考试',1,'管理员','2017-05-20 14:31:55',2,0,9,'2017-05-20 14:23:00','2017-05-26 14:23:00',10,1,1,'d1','琢瑜OA开发团队',NULL,2,100,60,'294,296','技术姿势,JS知识');
/*!40000 ALTER TABLE `jouryu_knowtraim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_knowtrais`
--

DROP TABLE IF EXISTS `jouryu_knowtrais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_knowtrais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0',
  `uid` int(11) DEFAULT '0',
  `kssdt` datetime DEFAULT NULL COMMENT '考试时间',
  `ksedt` datetime DEFAULT NULL COMMENT '考试结束时间',
  `fenshu` smallint(6) DEFAULT '0' COMMENT '得分',
  `kstime` int(11) DEFAULT '0' COMMENT '考试时间(秒数)',
  `isks` tinyint(1) DEFAULT '0' COMMENT '是否已考试',
  `tkids` varchar(2000) DEFAULT NULL COMMENT '考试题目id',
  `dyids` varchar(1000) DEFAULT NULL COMMENT '我做题得到答案',
  `dyjgs` varchar(1000) DEFAULT NULL COMMENT '答题结果0未答,1正确,2错误',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mid` (`mid`,`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='考试培训子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_knowtrais`
--

LOCK TABLES `jouryu_knowtrais` WRITE;
/*!40000 ALTER TABLE `jouryu_knowtrais` DISABLE KEYS */;
INSERT INTO `jouryu_knowtrais` VALUES (1,1,1,'2017-05-19 14:53:12','2017-05-19 14:53:29',71,17,1,'5,1,3,6,4,2,7','B,A,C,C,AC,BC,ABC','1,1,1,2,1,2,1'),(6,1,6,NULL,NULL,0,0,0,NULL,NULL,NULL),(7,1,7,'2017-05-19 15:42:39','2017-05-19 15:42:58',57,19,1,'3,1,6,5,4,2,7','B,A,D,B,AC,B,C','2,1,1,1,1,2,2'),(8,1,8,NULL,NULL,0,0,0,NULL,NULL,NULL),(9,1,9,NULL,NULL,0,0,0,NULL,NULL,NULL),(10,2,1,NULL,NULL,0,0,0,NULL,NULL,NULL),(11,2,2,NULL,NULL,0,0,0,NULL,NULL,NULL),(12,2,3,NULL,NULL,0,0,0,NULL,NULL,NULL),(13,2,4,NULL,NULL,0,0,0,NULL,NULL,NULL),(14,2,5,NULL,NULL,0,0,0,NULL,NULL,NULL),(15,2,6,NULL,NULL,0,0,0,NULL,NULL,NULL),(16,2,7,NULL,NULL,0,0,0,NULL,NULL,NULL),(17,2,8,NULL,NULL,0,0,0,NULL,NULL,NULL),(18,2,9,NULL,NULL,0,0,0,NULL,NULL,NULL),(19,3,1,'2017-05-20 14:32:04','2017-05-20 14:32:12',50,9,1,'7,4','B,AC','2,1'),(20,3,2,NULL,NULL,0,0,0,NULL,NULL,NULL),(21,3,3,NULL,NULL,0,0,0,NULL,NULL,NULL),(22,3,4,NULL,NULL,0,0,0,NULL,NULL,NULL),(23,3,5,NULL,NULL,0,0,0,NULL,NULL,NULL),(24,3,6,NULL,NULL,0,0,0,NULL,NULL,NULL),(25,3,7,NULL,NULL,0,0,0,NULL,NULL,NULL),(26,3,8,NULL,NULL,0,0,0,NULL,NULL,NULL),(27,3,9,NULL,NULL,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_knowtrais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqanay`
--

DROP TABLE IF EXISTS `jouryu_kqanay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqanay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date DEFAULT NULL COMMENT '日期',
  `uid` smallint(6) DEFAULT NULL COMMENT '人员id',
  `ztname` varchar(20) DEFAULT NULL COMMENT '状态名称',
  `time` datetime DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL COMMENT '状态名称',
  `states` varchar(20) DEFAULT NULL COMMENT '其他状态,如请假',
  `sort` smallint(6) DEFAULT '0',
  `iswork` tinyint(4) DEFAULT '1' COMMENT '是否工作日',
  `emiao` int(11) DEFAULT '0' COMMENT '秒数',
  `optdt` datetime DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `timesb` decimal(6,1) DEFAULT '0.0' COMMENT '应上班时间(小时)',
  `timeys` decimal(6,1) DEFAULT '0.0' COMMENT '已上班时间(小时)',
  PRIMARY KEY (`id`),
  KEY `uiddt` (`uid`,`dt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考勤分析';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqanay`
--

LOCK TABLES `jouryu_kqanay` WRITE;
/*!40000 ALTER TABLE `jouryu_kqanay` DISABLE KEYS */;
INSERT INTO `jouryu_kqanay` VALUES (1,'2018-10-10',1,'上班',NULL,'未打卡',NULL,0,1,0,'2018-10-10 17:43:27',NULL,3.0,0.0),(2,'2018-10-10',1,'下班','2018-10-10 17:43:27','早退',NULL,1,1,992,'2018-10-10 17:43:27',NULL,5.0,4.7);
/*!40000 ALTER TABLE `jouryu_kqanay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqdist`
--

DROP TABLE IF EXISTS `jouryu_kqdist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqdist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recename` varchar(1000) DEFAULT NULL COMMENT '适用对象',
  `receid` varchar(1000) DEFAULT NULL,
  `mid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0考勤时间,1休息,2定位的',
  `startdt` date DEFAULT NULL,
  `enddt` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `sort` int(11) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='考勤分配表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqdist`
--

LOCK TABLES `jouryu_kqdist` WRITE;
/*!40000 ALTER TABLE `jouryu_kqdist` DISABLE KEYS */;
INSERT INTO `jouryu_kqdist` VALUES (1,'琢瑜OA开发团队','d1',1,0,'2010-01-01','2021-09-30',1,1),(4,'琢瑜OA开发团队','d1',1,1,'2014-08-01','2021-08-31',1,0),(5,'琢瑜OA开发团队','d1',1,2,'2016-11-01','2017-12-31',1,0),(6,'琢瑜OA客服','u8',33,0,'2017-05-01','2017-05-16',1,0),(7,'琢瑜OA客服','u8',21,0,'2017-05-17','2017-05-31',1,0),(8,'开发部','d2',2,2,'2017-05-01','2017-05-31',1,0),(9,'赵子龙','u7',44,0,'2017-07-01','2018-07-31',1,0);
/*!40000 ALTER TABLE `jouryu_kqdist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqdisv`
--

DROP TABLE IF EXISTS `jouryu_kqdisv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqdisv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plx` tinyint(1) DEFAULT '1' COMMENT '1组排班,2人员',
  `receid` int(11) DEFAULT '0' COMMENT '组id,人员Id',
  `dt` date DEFAULT NULL COMMENT '日期',
  `type` tinyint(1) DEFAULT '0' COMMENT '0考勤时间,1休息,2工作日',
  `mid` int(11) DEFAULT '0' COMMENT '对应主ID',
  PRIMARY KEY (`id`),
  KEY `receid` (`plx`,`receid`,`dt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤排班';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqdisv`
--

LOCK TABLES `jouryu_kqdisv` WRITE;
/*!40000 ALTER TABLE `jouryu_kqdisv` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_kqdisv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqdkjl`
--

DROP TABLE IF EXISTS `jouryu_kqdkjl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqdkjl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT '0',
  `dkdt` datetime DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0' COMMENT '0在线打卡,1考勤机,2手机定位,3手动添加,4异常添加,5数据导入,6接口导入',
  `address` varchar(50) DEFAULT NULL COMMENT '定位地址',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `accuracy` smallint(6) DEFAULT '0' COMMENT '精确范围',
  `ip` varchar(30) DEFAULT NULL,
  `mac` varchar(30) DEFAULT NULL,
  `explain` varchar(200) DEFAULT NULL,
  `imgpath` varchar(100) DEFAULT NULL COMMENT '相关图片',
  `snid` int(11) DEFAULT '0' COMMENT '考勤机设备id',
  `sntype` tinyint(4) DEFAULT '0' COMMENT '考勤机打卡方式0密码,1指纹,2刷卡',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`dkdt`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='打卡记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqdkjl`
--

LOCK TABLES `jouryu_kqdkjl` WRITE;
/*!40000 ALTER TABLE `jouryu_kqdkjl` DISABLE KEYS */;
INSERT INTO `jouryu_kqdkjl` VALUES (1,1,'2018-10-10 17:43:27','2018-10-10 17:43:27',0,NULL,NULL,NULL,0,'127.0.0.1',NULL,NULL,NULL,0,0);
/*!40000 ALTER TABLE `jouryu_kqdkjl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqdw`
--

DROP TABLE IF EXISTS `jouryu_kqdw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqdw` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `location_x` varchar(20) DEFAULT NULL,
  `location_y` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL COMMENT '位置名称',
  `precision` int(11) DEFAULT '0' COMMENT '允许误差米',
  `scale` smallint(6) DEFAULT '0',
  `wifiname` varchar(100) DEFAULT NULL COMMENT '打卡wifi名',
  `iswgd` tinyint(1) DEFAULT '0' COMMENT '是否为无固定地点',
  `dwids` varchar(50) DEFAULT NULL COMMENT '关联对应ID,实现多点定位',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考勤定位规则';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqdw`
--

LOCK TABLES `jouryu_kqdw` WRITE;
/*!40000 ALTER TABLE `jouryu_kqdw` DISABLE KEYS */;
INSERT INTO `jouryu_kqdw` VALUES (1,'欣幼儿园','24.51082360520205','118.17835986614227','烟台软件园',100,18,NULL,0,'2'),(2,'软件园','24.485332478987026','118.18730771541595','望海路',300,15,NULL,0,NULL);
/*!40000 ALTER TABLE `jouryu_kqdw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqerr`
--

DROP TABLE IF EXISTS `jouryu_kqerr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqerr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `uname` varchar(30) DEFAULT NULL COMMENT '申请人',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `errtype` varchar(10) DEFAULT NULL COMMENT '异常类型',
  `dt` date DEFAULT NULL COMMENT '异常日期',
  `ytime` varchar(10) DEFAULT NULL COMMENT '应打卡时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='打卡异常申请';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqerr`
--

LOCK TABLES `jouryu_kqerr` WRITE;
/*!40000 ALTER TABLE `jouryu_kqerr` DISABLE KEYS */;
INSERT INTO `jouryu_kqerr` VALUES (1,1,NULL,'2016-12-16 20:54:27',1,'管理员','2016-12-16','忘记了',1,1,'忘记打卡','2016-12-16','18:00:28'),(2,2,NULL,'2017-08-28 12:19:12',2,'貂蝉','2017-08-28','hehehe',0,1,'忘记打卡','2017-08-24','18:19:04');
/*!40000 ALTER TABLE `jouryu_kqerr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqinfo`
--

DROP TABLE IF EXISTS `jouryu_kqinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `uname` varchar(20) DEFAULT NULL,
  `stime` datetime DEFAULT NULL,
  `etime` datetime DEFAULT NULL,
  `kind` varchar(10) DEFAULT NULL COMMENT '类型',
  `qjkind` varchar(20) DEFAULT NULL COMMENT '请假类型',
  `explain` varchar(200) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `totals` decimal(6,1) DEFAULT '0.0' COMMENT '时间',
  `optdt` datetime DEFAULT NULL,
  `isturn` tinyint(1) DEFAULT '0' COMMENT '是否提交',
  `optname` varchar(20) DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `jiafee` decimal(6,2) DEFAULT '0.00' COMMENT '加班费',
  `jiatype` tinyint(1) DEFAULT '0' COMMENT '加班方式0换调休,1给加班费',
  `totday` decimal(8,2) DEFAULT '0.00' COMMENT '请假天数',
  `enddt` datetime DEFAULT NULL COMMENT '截止使用时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `kind` (`kind`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8 COMMENT='请假条加班单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqinfo`
--

LOCK TABLES `jouryu_kqinfo` WRITE;
/*!40000 ALTER TABLE `jouryu_kqinfo` DISABLE KEYS */;
INSERT INTO `jouryu_kqinfo` VALUES (1,1,NULL,'2016-07-29 10:52:51','2016-07-29 18:52:54','请假','事假','下午请假去骑车兜风啊！',1,6.0,'2016-07-29 10:53:11',1,'管理员',0,NULL,0.00,0,0.00,NULL),(2,1,NULL,'2016-07-27 19:00:00','2016-07-27 23:00:00','加班',NULL,'老板说我能做事就多加班，呵呵呵！',1,4.0,'2016-07-29 10:56:58',1,'管理员',0,NULL,0.00,0,0.00,'2016-10-27 23:59:59'),(3,6,NULL,'2016-08-08 09:00:00','2016-08-08 18:36:40','请假','年假','辛辛苦苦一年终于有一天年假啦，请一下吧！',1,8.0,'2016-08-07 18:37:02',1,'张飞',0,NULL,0.00,0,0.00,NULL),(4,1,NULL,'2016-08-30 09:00:00','2016-08-31 18:00:00','请假','事假','年底年假休息！',0,16.0,'2016-09-13 16:05:38',1,'管理员',0,NULL,0.00,0,0.00,NULL),(5,1,NULL,'2016-08-25 08:00:00','2016-08-25 18:01:35','请假','事假','请假1条',1,8.0,'2016-08-25 16:01:52',1,'管理员',0,NULL,0.00,0,0.00,NULL),(6,8,NULL,'2016-08-01 08:44:45','2016-08-02 22:44:54','请假','事假','请假2天去玩喽',1,24.0,'2016-08-26 22:45:35',1,'琢瑜OA客服',0,NULL,0.00,0,0.00,NULL),(7,1,NULL,'2016-08-28 14:06:25','2016-08-28 16:06:33','加班',NULL,'人傻要多加班！',1,2.0,'2016-08-27 14:06:56',1,'管理员',0,NULL,0.00,0,0.00,'2016-11-28 23:59:59'),(8,6,NULL,'2016-08-02 08:02:21','2016-08-02 20:02:23','请假','事假','请假啦',1,8.0,'2016-08-30 20:12:33',1,'张飞',0,NULL,0.00,0,0.00,NULL),(9,1,NULL,'2016-09-08 17:45:57','2016-09-09 17:46:00','请假','事假','嗯嗯嗯。',5,9.0,'2016-09-08 21:14:14',1,'管理员',0,NULL,0.00,0,0.00,NULL),(11,6,NULL,'2016-09-27 08:36:19','2016-09-30 23:36:27','请假','事假','国庆请假啦',0,32.0,'2016-09-25 16:04:13',1,'张飞',0,NULL,0.00,0,0.00,NULL),(14,1,NULL,'2016-12-13 14:00:00','2016-12-13 18:00:00','请假','调休','调休啦',1,4.0,'2017-07-25 22:09:21',1,'管理员',1,NULL,0.00,0,0.25,NULL),(15,1,NULL,'2017-04-17 18:00:00','2017-04-18 01:00:00','加班',NULL,'加班很晚，很辛苦的，我要很多很多钱。',1,7.0,'2017-05-18 12:17:51',1,'管理员',1,'2017-05-18',501.20,1,0.00,'2017-07-17 23:59:59'),(16,1,NULL,'2017-06-28 18:00:00','2017-06-29 00:00:00','加班',NULL,'加班加班',1,6.0,'2017-06-29 10:14:05',1,'管理员',1,'2017-06-29',354.00,1,0.00,'2017-09-28 23:59:59'),(103,3,'小乔','2018-06-14 08:00:00','2018-06-14 18:47:00','请假','事假','外出的有时哦',0,8.0,'2018-06-15 20:01:28',1,'管理员',1,'2018-06-13',0.00,0,1.00,NULL),(104,4,'大乔','2018-06-13 20:30:00','2018-06-13 21:31:00','加班',NULL,'加班招人面试。',1,1.0,'2018-08-20 10:59:14',1,'管理员',1,'2018-06-15',0.00,0,0.00,'2018-09-13 23:59:59'),(109,4,'大乔','2018-07-28 21:52:00','2018-07-29 21:52:00','请假','事假','请假喽',0,8.0,'2018-07-28 21:52:21',1,'大乔',4,'2018-07-28',0.00,0,1.00,NULL),(110,3,'小乔','2018-07-28 21:54:52','2018-07-29 21:54:00','请假','事假','额',0,8.0,'2018-07-28 21:55:00',1,'小乔',3,'2018-07-28',0.00,0,1.00,NULL),(122,1,'管理员','2017-06-01 00:00:00','2017-06-01 23:59:59','增加年假',NULL,'2016-06-01入职年限满1年添加年假5天',1,40.0,'2018-08-06 22:24:53',1,'系统',0,'2018-08-06',0.00,0,5.00,'2018-06-01 23:59:59'),(123,7,'赵子龙','2017-07-01 00:00:00','2017-07-01 23:59:59','增加年假',NULL,'2016-07-01入职年限满1年添加年假5天',1,40.0,'2018-08-06 22:24:53',1,'系统',0,'2018-08-06',0.00,0,5.00,'2018-07-01 23:59:59'),(126,3,'小乔','2018-05-02 00:00:00','2018-05-02 23:59:59','增加年假',NULL,'2017-05-02入职年限满1年添加年假5天',1,40.0,'2018-08-06 22:25:26',1,'系统',0,'2018-08-06',0.00,0,5.00,'2019-05-02 23:59:59'),(127,4,'大乔','2018-07-01 00:00:00','2018-07-01 23:59:59','增加年假',NULL,'2017-07-01入职年限满1年添加年假5天',1,40.0,'2018-08-06 22:25:26',1,'系统',0,'2018-08-06',0.00,0,5.00,'2019-07-01 23:59:59'),(128,6,'张飞','2018-07-01 00:00:00','2018-07-01 23:59:59','增加年假',NULL,'2017-07-01入职年限满1年添加年假5天',1,40.0,'2018-08-06 22:25:26',1,'系统',0,'2018-08-06',0.00,0,5.00,'2019-07-01 23:59:59'),(129,7,'赵子龙','2018-07-01 00:00:00','2018-07-01 23:59:59','增加年假',NULL,'2016-07-01入职年限满2年添加年假5天',1,40.0,'2018-08-06 22:25:26',1,'系统',0,'2018-08-06',0.00,0,5.00,'2019-07-01 23:59:59'),(131,1,'管理员','2018-08-06 15:56:00','2018-08-06 23:56:00','加班',NULL,'哈哈哈哈',1,8.0,'2018-08-07 15:57:02',1,'管理员',1,'2018-08-07',0.00,0,0.00,'2018-11-06 23:59:59'),(132,5,'琢瑜清泉','2018-08-07 17:17:00','2018-08-15 17:17:00','增加年假',NULL,NULL,1,1.0,'2018-08-07 17:17:17',1,'管理员',1,'2018-08-07',0.00,0,0.13,'2019-08-07 23:59:59'),(134,3,'小乔','2018-09-01 09:00:00','2018-09-30 09:34:00','增加哺乳假',NULL,NULL,1,8.0,'2018-09-07 09:35:54',1,'管理员',1,'2018-09-07',0.00,0,1.00,NULL),(138,1,'管理员','2018-06-01 00:00:00','2018-06-01 23:59:59','增加年假',NULL,'2016-06-01入职年限满2年添加年假5天',1,40.0,'2018-09-21 21:58:36',1,'系统',0,'2018-09-21',0.00,0,5.00,'2019-06-01 23:59:59'),(139,2,'貂蝉','2018-08-09 00:00:00','2018-08-09 23:59:59','增加年假',NULL,'2016-08-09入职年限满2年添加年假5天',1,40.0,'2018-09-21 21:58:36',1,'系统',0,'2018-09-21',0.00,0,5.00,'2019-08-09 23:59:59'),(140,8,'琢瑜OA客服','2018-07-01 00:00:00','2018-07-01 23:59:59','增加年假',NULL,'2016-07-01入职年限满2年添加年假5天',1,40.0,'2018-09-21 21:58:36',1,'系统',0,'2018-09-21',0.00,0,5.00,'2019-07-01 23:59:59');
/*!40000 ALTER TABLE `jouryu_kqinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqjcmd`
--

DROP TABLE IF EXISTS `jouryu_kqjcmd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqjcmd` (
  `id` int(11) NOT NULL,
  `snid` int(11) DEFAULT '0' COMMENT '设备ID',
  `cmd` text COMMENT '发送命令内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '运行状态0待运行,1已运行,2请求中',
  `qjtime` datetime DEFAULT NULL COMMENT '请求时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `cjtime` datetime DEFAULT NULL COMMENT '处理时间',
  `atype` varchar(30) DEFAULT NULL COMMENT '类型',
  `others` varchar(500) DEFAULT NULL COMMENT '推送主键id',
  PRIMARY KEY (`id`),
  KEY `snid` (`snid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤机命令发送表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqjcmd`
--

LOCK TABLES `jouryu_kqjcmd` WRITE;
/*!40000 ALTER TABLE `jouryu_kqjcmd` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_kqjcmd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqjsn`
--

DROP TABLE IF EXISTS `jouryu_kqjsn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqjsn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(50) NOT NULL DEFAULT '' COMMENT '设备号',
  `name` varchar(50) DEFAULT NULL COMMENT '设备名称',
  `company` varchar(50) DEFAULT NULL COMMENT '公司名',
  `sort` int(11) DEFAULT '0' COMMENT '排序号',
  `optdt` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `deptids` varchar(4000) DEFAULT NULL COMMENT '部门ID聚合',
  `userids` text COMMENT '人员ID聚合',
  `lastdt` datetime DEFAULT NULL COMMENT '最后请求时间',
  `space` int(11) DEFAULT '0' COMMENT 'sd卡剩余空间',
  `memory` int(11) DEFAULT '0' COMMENT '剩余内存',
  `usershu` int(11) DEFAULT '0' COMMENT '人员数',
  `fingerprintshu` int(11) DEFAULT '0' COMMENT '指纹数',
  `headpicshu` int(11) DEFAULT '0' COMMENT '头像数量',
  `clockinshu` int(11) DEFAULT '0' COMMENT '打卡数',
  `picshu` int(11) DEFAULT '0' COMMENT '现场照片数',
  `romver` varchar(30) DEFAULT NULL COMMENT '系统版本',
  `appver` varchar(30) DEFAULT NULL COMMENT '应用版本',
  `model` varchar(30) DEFAULT NULL COMMENT '设备型号',
  `pinpai` tinyint(4) DEFAULT '0' COMMENT '品牌0群英,1中控',
  `snip` varchar(30) DEFAULT NULL COMMENT '分配的ip',
  `snport` varchar(10) DEFAULT NULL COMMENT '分配端口号',
  PRIMARY KEY (`id`,`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤机设备表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqjsn`
--

LOCK TABLES `jouryu_kqjsn` WRITE;
/*!40000 ALTER TABLE `jouryu_kqjsn` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_kqjsn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqjuser`
--

DROP TABLE IF EXISTS `jouryu_kqjuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqjuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snid` int(11) DEFAULT '0' COMMENT '设备ID',
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `fingerprint1` text COMMENT '指纹1',
  `fingerprint2` text COMMENT '指纹2',
  `headpic` varchar(100) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `snid_uid` (`snid`,`uid`) USING BTREE,
  KEY `snid` (`snid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考勤机上人员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqjuser`
--

LOCK TABLES `jouryu_kqjuser` WRITE;
/*!40000 ALTER TABLE `jouryu_kqjuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_kqjuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqout`
--

DROP TABLE IF EXISTS `jouryu_kqout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `applyname` varchar(30) DEFAULT NULL COMMENT '申请人姓名',
  `outtime` datetime DEFAULT NULL COMMENT '外出时间',
  `intime` datetime DEFAULT NULL COMMENT '回岗时间',
  `address` varchar(50) DEFAULT NULL COMMENT '外出地址',
  `reason` varchar(500) DEFAULT NULL COMMENT '外出事由',
  `atype` varchar(20) DEFAULT NULL COMMENT '外出类型@外出,出差',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `status` tinyint(1) DEFAULT '0' COMMENT '@0|待审核,1|审核通过,2|审核不通过',
  `isturn` tinyint(1) DEFAULT '0' COMMENT '@0|未提交,1|提交',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `isxj` tinyint(1) DEFAULT '0' COMMENT '是否销假@0|否,1|是',
  `sicksm` varchar(500) DEFAULT NULL COMMENT '销假说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='外出出差';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqout`
--

LOCK TABLES `jouryu_kqout` WRITE;
/*!40000 ALTER TABLE `jouryu_kqout` DISABLE KEYS */;
INSERT INTO `jouryu_kqout` VALUES (1,1,NULL,'2016-09-27 08:00:00','2016-09-27 15:22:42','火车站','接人啊','外出',NULL,'2016-08-27 15:22:51',1,1,1,'管理员','2016-08-27',0,NULL),(2,8,NULL,'2016-11-08 18:52:28','2016-11-08 21:52:29','湖里税务局','税务局办税','外出',NULL,'2016-11-08 20:52:41',1,1,8,'琢瑜OA客服','2016-11-08',0,NULL),(3,1,NULL,'2017-04-19 12:56:00','2017-04-19 19:56:00','高崎机场','接琢瑜OA作者[琢瑜清泉]来厦喝茶。','外出',NULL,'2017-04-19 12:57:28',1,1,1,'管理员','2017-04-19',0,NULL),(4,1,NULL,'2017-08-28 11:54:25','2017-08-28 12:54:00','出去办事','嗯嗯嗯额','外出',NULL,'2017-08-28 11:54:41',0,1,1,'管理员','2017-08-28',0,NULL),(5,2,'貂蝉','2018-06-19 08:00:00','2018-06-19 12:00:00','税务局','琢瑜OA团队报税。','外出',NULL,'2018-06-15 20:28:19',1,1,1,'管理员','2018-06-15',0,NULL);
/*!40000 ALTER TABLE `jouryu_kqout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqsjgz`
--

DROP TABLE IF EXISTS `jouryu_kqsjgz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqsjgz` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `pid` smallint(6) DEFAULT '0' COMMENT '主',
  `stime` varchar(20) DEFAULT NULL COMMENT '开始时间',
  `etime` varchar(20) DEFAULT NULL COMMENT '结束时间',
  `qtype` tinyint(1) DEFAULT '0' COMMENT '取值类型@0|最小值,1|最大值',
  `iskt` tinyint(1) DEFAULT '0' COMMENT '是否跨天',
  `iskq` tinyint(1) DEFAULT '1' COMMENT '是否需要考勤',
  `isxx` tinyint(1) DEFAULT '0' COMMENT '是否休息断',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='考勤时间规则';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqsjgz`
--

LOCK TABLES `jouryu_kqsjgz` WRITE;
/*!40000 ALTER TABLE `jouryu_kqsjgz` DISABLE KEYS */;
INSERT INTO `jouryu_kqsjgz` VALUES (1,'全体人员考勤',1,0,NULL,NULL,0,0,1,0),(2,'下班',3,1,'13:00:00','18:00:00',1,0,1,0),(5,'正常',0,12,'06:00:00','09:00:00',0,0,1,0),(6,'迟到',1,12,'09:00:01','12:00:00',0,0,1,0),(7,'正常',0,2,'18:00:00','23:59:59',1,0,1,0),(8,'早退',1,2,'13:00:00','17:59:59',1,0,1,0),(12,'上班',0,1,'09:00:00','12:00:00',0,0,1,0),(21,'中班(8点-16点)',3,0,NULL,NULL,0,0,1,0),(22,'上班',0,21,'08:00:00','12:00:00',0,0,1,0),(23,'下班',1,21,'12:00:00','16:00:00',1,0,1,0),(24,'正常',0,22,'06:00:00','08:00:00',0,0,1,0),(25,'迟到',1,22,'08:00:01','12:00:00',0,0,1,0),(26,'早退',1,23,'12:00:01','15:59:59',1,0,1,0),(27,'正常',0,23,'16:00:00','18:00:00',1,0,1,0),(30,'晚班(16点-24点)',4,0,NULL,NULL,0,0,1,0),(31,'上班',0,30,'16:00:00','20:00:00',0,0,1,0),(32,'下班',1,30,'20:00:00','23:59:59',1,0,1,0),(33,'早班(0点-8点)',2,0,NULL,NULL,0,0,1,0),(34,'上班',0,33,'00:00:00','04:00:00',0,0,1,0),(35,'下班',0,33,'04:00:00','08:00:00',1,0,1,0),(36,'正常',0,34,'22:00:00','00:00:00',0,2,1,0),(37,'迟到',0,34,'00:00:01','02:00:00',0,0,1,0),(38,'正常',0,35,'08:00:00','10:00:00',1,0,1,0),(39,'早退',0,35,'04:00:00','07:59:59',1,0,1,0),(40,'正常',0,31,'14:00:00','16:00:00',0,0,1,0),(41,'迟到',0,31,'16:00:01','20:00:00',0,0,1,0),(42,'正常',0,32,'00:00:00','02:00:00',1,1,1,0),(43,'早退',0,32,'20:00:00','23:59:59',1,0,1,0),(44,'全体人员4状态考勤',5,0,NULL,NULL,0,0,0,0),(45,'上午上班',0,44,'08:00:00','12:00:00',0,0,1,0),(46,'上午下班',1,44,'12:00:00','14:30:00',0,0,1,1),(47,'下午上班',2,44,'14:30:00','18:00:00',0,0,1,0),(48,'下午下班',3,44,'18:00:00','23:59:59',0,0,1,1),(49,'正常',0,45,'06:00:00','08:00:00',0,0,0,0),(50,'迟到',1,45,'08:00:01','12:00:00',0,0,0,0),(51,'正常',0,46,'12:00:00','14:30:00',0,0,0,0),(52,'早退',0,46,'08:00:01','11:59:59',1,0,0,0),(53,'正常',0,47,'12:00:00','14:30:00',0,0,0,0),(54,'迟到',0,47,'14:30:00','18:00:00',0,0,0,0),(55,'正常',0,48,'18:00:00','23:59:59',1,0,0,0),(56,'早退',0,48,'14:30:01','17:59:59',1,0,0,0),(57,'半天班',6,0,NULL,NULL,0,0,0,0),(58,'上班',0,57,'09:00:00','12:00:00',0,0,1,0),(59,'下班',1,57,'12:00:00','23:59:59',0,0,1,1),(60,'正常',0,58,'06:00:00','09:00:00',0,0,1,0),(61,'迟到',0,58,'09:00:01','12:00:00',0,0,0,0),(62,'正常',0,59,'12:00:00','23:59:59',1,0,0,0),(63,'早退',0,59,'09:00:01','12:00:00',1,0,0,0);
/*!40000 ALTER TABLE `jouryu_kqsjgz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_kqxxsj`
--

DROP TABLE IF EXISTS `jouryu_kqxxsj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_kqxxsj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `pid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0休息日,1工作日',
  `uid` int(11) DEFAULT '0' COMMENT '对应用户/部门Id',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`dt`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='休息时间规则';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_kqxxsj`
--

LOCK TABLES `jouryu_kqxxsj` WRITE;
/*!40000 ALTER TABLE `jouryu_kqxxsj` DISABLE KEYS */;
INSERT INTO `jouryu_kqxxsj` VALUES (1,'全体人员休息日',NULL,0,0,0),(2,NULL,'2018-08-04',1,0,0),(3,NULL,'2018-08-05',1,0,0),(4,NULL,'2018-08-11',1,0,0),(5,NULL,'2018-08-12',1,0,0),(6,NULL,'2018-08-18',1,0,0),(7,NULL,'2018-08-19',1,0,0),(8,NULL,'2018-08-25',1,0,0),(9,NULL,'2018-08-26',1,0,0);
/*!40000 ALTER TABLE `jouryu_kqxxsj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_location`
--

DROP TABLE IF EXISTS `jouryu_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `uid` int(11) DEFAULT '0',
  `agentid` varchar(20) DEFAULT NULL COMMENT '应用Id',
  `optdt` datetime DEFAULT NULL,
  `location_x` varchar(30) DEFAULT NULL COMMENT '地理位置纬度',
  `location_y` varchar(30) DEFAULT NULL COMMENT '地理位置经度 ',
  `scale` smallint(6) DEFAULT '0' COMMENT '地图缩放大小',
  `label` varchar(50) DEFAULT NULL COMMENT '地理位置',
  `msgid` varchar(50) DEFAULT NULL,
  `precision` smallint(6) DEFAULT '0' COMMENT '地理位置精度',
  `type` tinyint(4) DEFAULT '0' COMMENT '0普通,1事件,2企业微信定位',
  `explain` varchar(50) DEFAULT NULL COMMENT '说明',
  `imgpath` varchar(100) DEFAULT NULL COMMENT '相关图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外勤定位';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_location`
--

LOCK TABLES `jouryu_location` WRITE;
/*!40000 ALTER TABLE `jouryu_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_log`
--

DROP TABLE IF EXISTS `jouryu_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL COMMENT '类型',
  `optid` int(11) DEFAULT NULL COMMENT '操作人id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `optdt` datetime DEFAULT NULL COMMENT '添加时间',
  `ip` varchar(30) DEFAULT NULL COMMENT 'IP地址',
  `web` varchar(100) DEFAULT NULL COMMENT '浏览器',
  `device` varchar(50) DEFAULT NULL,
  `level` tinyint(1) DEFAULT '0' COMMENT '日志级别0普通,1提示,2错误',
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_log`
--

LOCK TABLES `jouryu_log` WRITE;
/*!40000 ALTER TABLE `jouryu_log` DISABLE KEYS */;
INSERT INTO `jouryu_log` VALUES (1,'pc登录',1,'管理员','[admin]用户名登录成功','2018-10-10 17:43:24','127.0.0.1','Chrome','1538964615084',0,'http://localhost/xinhu/index.php?a=check&m=login&d=&ajaxbool=true&rnd=570457'),(2,'mweb登录',1,'管理员','[Admin]用户名登录成功','2018-10-10 17:52:02','192.168.0.100','iPhone','1539164875853',0,'http://192.168.0.101/xinhu/api.php?m=login&a=check&device=1539164875853&cfrom=mweb'),(3,'mweb登录',1,NULL,'[admin]用户名密码不对','2018-10-10 17:52:11','192.168.0.101','Chrome','1539054371001',3,'http://192.168.0.101/xinhu/api.php?m=login&a=check&device=1539054371001&cfrom=mweb'),(4,'mweb登录',1,'管理员','[admin]用户名登录成功','2018-10-10 17:52:32','192.168.0.101','Chrome','1539054371001',0,'http://192.168.0.101/xinhu/api.php?m=login&a=check&device=1539054371001&cfrom=mweb'),(5,'错误SQL',1,'管理员','mysqliError:Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column &#39;jouryu_oa.jouryu_kqinfo.kind&#39; which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by','2018-10-10 17:55:15','192.168.0.101','Chrome',NULL,2,'upload/logs/2018-10/mysql_sqlerr20181010175515_8734.log'),(6,'mweb登录',1,'管理员','[admin]用户名登录成功','2018-10-10 17:57:40','192.168.0.101','Chrome',NULL,0,'http://192.168.0.17/api.php?m=login&a=check&adminid=&device=&cfrom=mweb&token='),(7,'错误SQL',1,'管理员','mysqliError:Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column &#39;jouryu_oa.jouryu_kqinfo.kind&#39; which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by','2018-10-10 18:10:38','192.168.0.101','Chrome',NULL,2,'upload/logs/2018-10/mysql_sqlerr20181010181038_4845.log'),(8,'错误SQL',1,'管理员','mysqliError:Expression #2 of SELECT list is not in GROUP BY clause and contains nonaggregated column &#39;jouryu_oa.jouryu_kqinfo.kind&#39; which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by','2018-10-10 18:14:44','192.168.0.101','Chrome',NULL,2,'upload/logs/2018-10/mysql_sqlerr20181010181444_8872.log');
/*!40000 ALTER TABLE `jouryu_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_logintoken`
--

DROP TABLE IF EXISTS `jouryu_logintoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_logintoken` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '用户ID',
  `name` varchar(20) DEFAULT NULL,
  `token` varchar(50) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  `moddt` datetime DEFAULT NULL,
  `cfrom` varchar(10) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(30) DEFAULT NULL,
  `online` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `token` (`token`) USING BTREE,
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统登录token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_logintoken`
--

LOCK TABLES `jouryu_logintoken` WRITE;
/*!40000 ALTER TABLE `jouryu_logintoken` DISABLE KEYS */;
INSERT INTO `jouryu_logintoken` VALUES (1,1,'管理员','0l7juor1','2018-10-10 17:43:24','2018-10-10 18:20:32','pc','1538964615084','127.0.0.1','Chrome',1),(2,1,'管理员','hm3jxrdn','2018-10-10 17:52:02','2018-10-10 18:15:38','mweb','1539164875853','192.168.0.100','iPhone',1),(3,1,'管理员','dkphbley','2018-10-10 17:52:32','2018-10-10 18:15:45','mweb','1539054371001','192.168.0.101','Chrome',1),(4,1,'管理员','es0d5lqr','2018-10-10 17:57:40','2018-10-10 17:57:40','mweb',NULL,'192.168.0.101','Chrome',1);
/*!40000 ALTER TABLE `jouryu_logintoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_meet`
--

DROP TABLE IF EXISTS `jouryu_meet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_meet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hyname` varchar(20) DEFAULT NULL COMMENT '会议室名称',
  `title` varchar(50) DEFAULT NULL COMMENT '主题',
  `startdt` varchar(50) DEFAULT NULL COMMENT '开始时间',
  `enddt` varchar(50) DEFAULT NULL COMMENT '结束时间',
  `state` tinyint(1) DEFAULT '0' COMMENT '会议状态@0|正常,1|会议中,2|结束,3|取消',
  `status` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '类型@0|普通,1|固定,2|纪要',
  `joinid` varchar(200) DEFAULT NULL,
  `joinname` varchar(500) DEFAULT NULL COMMENT '参加人员',
  `mid` int(11) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '发起人',
  `rate` varchar(100) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT '0',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `cancelreason` varchar(200) DEFAULT NULL,
  `jyid` varchar(100) DEFAULT NULL COMMENT '会议纪要人id',
  `jyname` varchar(100) DEFAULT NULL COMMENT '会议纪要人',
  `content` varchar(4000) DEFAULT NULL COMMENT '会议纪要内容',
  `issms` tinyint(1) DEFAULT '0' COMMENT '是否短信通知',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='会议';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_meet`
--

LOCK TABLES `jouryu_meet` WRITE;
/*!40000 ALTER TABLE `jouryu_meet` DISABLE KEYS */;
INSERT INTO `jouryu_meet` VALUES (1,'会议室1','关于讨论琢瑜OA开发问题','2018-04-12 15:00:00','2018-04-12 18:00:00',2,1,0,'d2','开发部',0,'管理员',NULL,1,'2017-09-24 14:48:44',1,NULL,NULL,NULL,NULL,NULL,0),(2,'会客室','讨论云平台系统开发','2018-08-24 20:40:00','2018-08-24 23:40:00',2,1,0,'d2','开发部',0,'管理员',NULL,1,'2018-08-24 20:40:50',1,NULL,NULL,NULL,NULL,NULL,0),(3,NULL,'讨论云平台系统开发',NULL,NULL,0,1,2,'d2',NULL,2,'管理员',NULL,1,'2018-08-24 20:41:18',1,NULL,NULL,NULL,NULL,'不错的哦，哈哈。',0),(5,'会客室','公司每月生日会','2018-09-22 19:47:20','2018-09-22 23:22:00',2,1,0,'d1','琢瑜OA开发团队',0,'管理员',NULL,1,'2018-09-22 18:22:50',1,NULL,NULL,NULL,NULL,NULL,1),(6,'会议室1','新OA系统培训使用','2018-09-22 22:00:00','2018-09-22 23:00:00',2,1,0,'d1','琢瑜OA开发团队',0,'管理员',NULL,1,'2018-09-22 21:46:17',1,'新OA系统培训使用系统使用介绍。',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `jouryu_meet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_menu`
--

DROP TABLE IF EXISTS `jouryu_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_menu` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名',
  `pid` smallint(6) DEFAULT '0' COMMENT '上级id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `url` varchar(500) DEFAULT NULL,
  `icons` varchar(50) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `ispir` tinyint(1) DEFAULT '1' COMMENT '1验证',
  `status` tinyint(1) DEFAULT '1' COMMENT '1启用',
  `color` varchar(10) DEFAULT NULL,
  `ishs` tinyint(1) DEFAULT '0' COMMENT '是否在首页显示',
  `iszm` tinyint(1) DEFAULT '0' COMMENT '是否为桌面版图标',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8 COMMENT='系统菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_menu`
--

LOCK TABLES `jouryu_menu` WRITE;
/*!40000 ALTER TABLE `jouryu_menu` DISABLE KEYS */;
INSERT INTO `jouryu_menu` VALUES (1,'系统',0,20,NULL,'cog',NULL,NULL,1,1,NULL,0,0),(2,'菜单管理',220,4,'system,menu','list-ul',NULL,'menu',1,1,NULL,0,0),(3,'用户管理',220,2,'flow,page,user,atype=all,pnum=all','user',NULL,'user',1,1,'#5AAAE2',1,0),(4,'计划任务',46,7,'system,task','time',NULL,'taskrun',1,1,NULL,0,0),(5,'组管理',220,3,'system,group','group',NULL,'group',1,1,NULL,0,0),(6,'组织结构',220,1,'system,dept','sitemap',NULL,NULL,1,1,NULL,0,0),(7,'流程模块',0,10,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(8,'权限管理',1,6,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(9,'人员→菜单',8,0,'system,extent,type=um',NULL,NULL,NULL,1,1,NULL,0,0),(10,'菜单→人员',8,1,'system,extent,type=mu',NULL,NULL,NULL,1,1,NULL,0,0),(11,'组→菜单',8,2,'system,extent,type=gm',NULL,NULL,NULL,1,1,NULL,0,0),(12,'菜单→组',8,3,'system,extent,type=mg',NULL,NULL,NULL,1,1,NULL,0,0),(13,'人员权限查看',8,4,'system,extent,type=view',NULL,NULL,NULL,1,1,NULL,0,0),(14,'即时通信管理',1,5,NULL,'comment',NULL,NULL,1,1,NULL,0,0),(15,'应用管理',14,4,'main,yingyong','th-large',NULL,'yingyong',1,1,'#1ABC9C',0,0),(16,'会话管理',14,3,'main,imgroup','comments',NULL,NULL,1,1,NULL,0,0),(17,'流程模块列表',7,2,'main,flow,set','th-list',NULL,NULL,1,1,NULL,0,0),(18,'服务器设置',14,0,'main,jouryu,cog','tasks',NULL,NULL,1,1,NULL,0,0),(19,'资源',0,2,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(20,'表单元素管理',7,5,'main,flow,element','check',NULL,NULL,1,1,NULL,0,0),(21,'流程模块权限',7,6,'main,view','lock',NULL,NULL,1,1,NULL,0,0),(22,'流程单据查看',7,7,'main,flow,view','search',NULL,NULL,1,1,NULL,0,0),(23,'系统升级',46,10,'system,upgrade','arrow-up',NULL,NULL,1,1,NULL,0,0),(24,'数据选项',7,1,'system,option,num=jouryu','cog',NULL,NULL,1,1,NULL,0,0),(25,'初始化备份',46,5,'system,beifen',NULL,NULL,NULL,1,1,NULL,0,0),(26,'流程审核步骤',7,4,'main,flow,course','resize-vertical',NULL,NULL,1,1,NULL,0,0),(27,'人事考勤',0,6,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(28,'物品基础管理',140,1,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(29,'单据异常监控',7,12,'main,flow,error','briefcase',NULL,'danerror',1,1,'#800000',1,0),(30,'物品列表',28,3,'main,goods',NULL,NULL,NULL,1,1,NULL,0,0),(31,'出入库详情',249,1,'main,goods,xiang',NULL,NULL,NULL,1,1,NULL,0,0),(32,'考勤设置',27,10,NULL,'time',NULL,NULL,1,1,NULL,0,0),(33,'打卡记录',57,0,'main,kaoqin,dkjl,atype=all',NULL,NULL,NULL,1,1,NULL,0,0),(34,'单据操作菜单',7,8,'main,flow,menu',NULL,NULL,NULL,1,1,NULL,0,0),(35,'单据通知设置',7,10,'main,flow,todo','bell',NULL,NULL,1,1,NULL,0,0),(36,'考勤信息',57,4,'main,kaoqin,info',NULL,NULL,NULL,1,1,NULL,0,0),(37,'客户统计',63,10,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(38,'个人办公',0,0,NULL,'desktop',NULL,NULL,1,1,NULL,0,0),(39,'个人中心',38,0,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(40,'流程',0,1,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(41,'我的申请',40,2,'main,fwork,bill,atype=my','align-left',NULL,'applymy',0,1,NULL,0,0),(42,'流程申请',40,1,'main,fwork,apply','plus',NULL,NULL,0,1,NULL,0,0),(43,'待办/处理',40,0,'main,fwork,bill,atype=daib','time',NULL,'daiban',0,1,'#3BBDDB',1,0),(44,'我的下属申请',40,5,'main,fwork,bill,atype=xia',NULL,NULL,NULL,0,1,NULL,0,0),(45,'日程',38,2,'system,schedule,list','calendar',NULL,'schedule',0,1,NULL,0,0),(46,'系统工具',1,10,NULL,'wrench',NULL,NULL,1,1,NULL,0,0),(53,'考勤时间规则',32,1,'main,kaoqin,sjgz',NULL,NULL,NULL,1,1,NULL,0,0),(54,'考勤时间分配',32,2,'main,kaoqin,sjfp,type=0',NULL,NULL,NULL,1,1,NULL,0,0),(55,'休息时间规则',32,4,'main,kaoqin,xxgz',NULL,NULL,NULL,1,1,NULL,0,0),(56,'休息时间分配',32,5,'main,kaoqin,sjfp,type=1',NULL,NULL,NULL,1,1,NULL,0,0),(57,'考勤信息',27,11,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(58,'考勤分析',57,6,'main,kaoqin,anay',NULL,NULL,NULL,1,1,NULL,0,0),(59,'我的考勤',38,12,NULL,'time',NULL,NULL,0,1,NULL,0,0),(60,'考勤统计简表',57,7,'main,kaoqin,total,atype=all',NULL,NULL,NULL,1,1,NULL,0,0),(61,'人员考勤设置',32,0,'main,kaoqin,kqcog','cog',NULL,NULL,1,1,NULL,0,0),(62,'经我处理',40,6,'main,fwork,bill,atype=jmy',NULL,NULL,NULL,0,1,NULL,0,0),(63,'客户',0,5,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(64,'客户',63,2,'main,customer,list,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(65,'我的任务',66,1,'flow,page,work,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(66,'任务',0,3,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(67,'我未完成任务',66,2,'flow,page,work,atype=wwc','book',NULL,'workwwc',0,1,'#BFC462',1,0),(68,'我创建任务',66,3,'flow,page,work,atype=wcj',NULL,NULL,NULL,0,1,NULL,0,0),(69,'我执行的项目',79,2,'flow,page,project,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(70,'我未完成项目',79,2,'flow,page,project,atype=wwc',NULL,NULL,NULL,0,1,NULL,0,0),(71,'我创建的项目',79,3,'flow,page,project,atype=mycj',NULL,NULL,NULL,0,1,NULL,0,0),(72,'我负责的项目',79,2,'flow,page,project,atype=myfz',NULL,NULL,NULL,0,1,NULL,0,0),(73,'销售机会',63,3,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(74,'我申请未通过',40,4,'main,fwork,bill,atype=mywtg','info-sign',NULL,'applywtg',0,1,'#B67FF4',1,0),(75,'共享给我的',64,1,'flow,page,customer,atype=gxgw,pnum=shate',NULL,NULL,NULL,0,1,NULL,0,0),(76,'工作日报',38,13,NULL,'edit',NULL,NULL,0,1,NULL,0,0),(77,'我的日报',76,6,'flow,page,daily,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(78,'我下属日报',76,8,'flow,page,daily,atype=undall',NULL,NULL,NULL,0,1,NULL,0,0),(79,'项目管理',66,0,NULL,'circle-arrow-right',NULL,NULL,1,1,NULL,0,0),(80,'任务督导',66,4,'flow,page,work,atype=dd',NULL,NULL,NULL,0,1,NULL,0,0),(81,'所有任务一览',66,10,'flow,page,work,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(82,'所有项目一览',79,10,'flow,page,project,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(83,'我下属任务',66,2,'flow,page,work,atype=down',NULL,NULL,NULL,0,1,NULL,0,0),(84,'人事档案',27,0,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(85,'人员档案',84,0,'flow,page,userinfo,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(86,'我的考勤表',59,0,'main,kaoqin,geren',NULL,NULL,'mykqbiao',0,1,NULL,0,0),(87,'我的考勤信息',59,4,'main,kaoqin,kqinfo,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(88,'我的考勤统计',59,5,'main,kaoqin,total,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(89,'会议',38,11,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(90,'通知公告',38,1,'flow,page,gong,atype=my','volume-up',NULL,'gong',0,1,NULL,0,0),(91,'流程模块条件',7,9,'main,flow,where','asterisk',NULL,NULL,1,1,NULL,0,0),(92,'我的打卡记录',59,1,'main,kaoqin,dkjl,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(93,'我的定位记录',59,6,'main,kaoqin,location,atype=my','map-marker',NULL,NULL,0,1,NULL,0,0),(94,'定位记录',57,1,'main,kaoqin,location,atype=all','map-marker',NULL,NULL,1,1,NULL,0,0),(95,'员工合同',84,0,'flow,page,userract,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(96,'转正申请',127,3,'flow,page,hrpositive,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(97,'离职申请',127,4,'flow,page,hrredund,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(98,'薪资管理',27,3,NULL,'money',NULL,NULL,1,1,NULL,0,0),(99,'薪资核算',98,2,'main,salary,list',NULL,NULL,NULL,1,1,NULL,0,0),(100,'提醒信息',39,1,'system,geren,todo','bell',NULL,'todo',0,1,'#EFBB62',1,0),(101,'个人资料',39,2,'main,userinfo,geren',NULL,NULL,NULL,0,1,NULL,0,0),(102,'薪资发放',98,4,'main,salary,fafang',NULL,NULL,NULL,1,1,NULL,0,0),(103,'系统信息',46,1,'system,cog,sysinfo',NULL,NULL,NULL,1,1,NULL,0,0),(104,'合同',63,4,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(105,'收款单',63,5,NULL,'money',NULL,NULL,0,1,NULL,0,0),(106,'我的收款单',105,0,'flow,page,custfina,atype=myskd',NULL,NULL,NULL,0,1,NULL,0,0),(107,'我的付款单',118,0,'flow,page,custfina,atype=myfkd,pnum=fkd',NULL,NULL,NULL,0,1,NULL,0,0),(108,'我的合同',104,0,'flow,page,custract,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(109,'我下属的合同',104,1,'flow,page,custract,atype=downall,pnum=down',NULL,NULL,NULL,0,1,NULL,0,0),(110,'我的销售机会',73,0,'flow,page,custsale,atype=mygx',NULL,NULL,NULL,0,1,NULL,0,0),(111,'我下属销售机会',73,1,'flow,page,custsale,atype=downgj,pnum=down',NULL,NULL,NULL,0,1,NULL,0,0),(112,'我的客户',64,0,'flow,page,customer,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(113,'我下属客户',64,2,'flow,page,customer,atype=downall,pnum=down',NULL,NULL,NULL,0,1,NULL,0,0),(114,'金额统计',63,20,NULL,'bar-chart',NULL,NULL,0,1,NULL,0,0),(115,'我的财务统计',114,0,'main,customer,total,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(116,'我下属财务统计',114,0,'main,customer,total,atype=down',NULL,NULL,NULL,0,1,NULL,0,0),(117,'我年度统计',114,0,'main,customer,totalge',NULL,NULL,NULL,0,1,NULL,0,0),(118,'付款单',63,6,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(119,'我下属收款单',105,0,'flow,page,custfina,atype=downskd,pnum=downskd',NULL,NULL,NULL,0,1,NULL,0,0),(120,'我下属付款单',118,0,'flow,page,custfina,atype=downfkd,pnum=downfkd',NULL,NULL,NULL,0,1,NULL,0,0),(121,'所有收款单',126,4,'flow,page,custfina,atype=allskd,pnum=allskd',NULL,NULL,NULL,1,1,NULL,0,0),(122,'所有付款单',126,5,'flow,page,custfina,atype=allfkd,pnum=allfkd',NULL,NULL,NULL,1,1,NULL,0,0),(123,'客户分配',64,6,'flow,page,customer,atype=distdfp,pnum=dist',NULL,NULL,NULL,0,1,NULL,0,0),(124,'文档中心',19,2,'flow,page,worcword','folder-close-alt',NULL,'word',0,1,NULL,0,0),(125,'共享的文档',19,4,'system,word,shate','folder-open-alt',NULL,NULL,0,1,NULL,0,0),(126,'客户查看',63,30,NULL,'eye-open',NULL,NULL,1,1,NULL,0,0),(127,'人事管理',27,1,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(128,'人事调动',127,5,'flow,page,hrtransfer,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(129,'调薪申请',127,6,'flow,page,hrtrsalary,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(130,'奖惩处罚',127,7,'flow,page,reward,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(131,'我的客户统计',37,0,'main,customer,alllist,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(132,'下属客户统计',37,0,'main,customer,alllist,atype=downall',NULL,NULL,NULL,0,1,NULL,0,0),(133,'我上传过的文件',39,6,'system,geren,file','folder-close-alt',NULL,NULL,0,1,NULL,0,0),(134,'知识信息管理',19,21,'system,infor,zhishi',NULL,NULL,NULL,1,1,NULL,0,0),(135,'知识题库管理',19,22,'system,infor,tiku',NULL,NULL,NULL,1,1,NULL,0,0),(136,'知识题库学习',19,24,'system,infor,tikuxx',NULL,NULL,NULL,0,1,NULL,0,0),(137,'固定资产',140,11,'main,assetm,list','laptop',NULL,NULL,1,1,NULL,0,0),(138,'车辆管理',140,21,NULL,'truck',NULL,NULL,1,1,NULL,0,0),(139,'图书管理',140,41,NULL,'book',NULL,NULL,1,1,NULL,0,0),(140,'行政',0,7,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(141,'图书列表',139,0,'main,book,list',NULL,NULL,NULL,1,1,NULL,0,0),(142,'琢瑜OA官网',46,88,'http://www.jouryu.com/',NULL,NULL,NULL,0,1,NULL,0,0),(143,'车辆列表',138,0,'flow,page,carm,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(144,'车辆预定查询',138,2,'flow,page,carmrese,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(145,'图书借阅',139,5,'flow,page,bookborrow,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(146,'车辆预定情况',138,3,'main,carm,carmqing',NULL,NULL,NULL,1,1,NULL,0,0),(147,'数据库表',46,2,'system,table,list','table',NULL,NULL,1,1,NULL,0,0),(148,'内部通讯录',39,4,'system,admin,txl','phone',NULL,'reimtxl',0,1,NULL,0,0),(149,'人员分析',84,0,'main,userinfo,anay',NULL,NULL,NULL,1,1,NULL,0,0),(150,'今日会议',89,0,'flow,page,meet,atype=today',NULL,NULL,'meet',0,1,NULL,0,0),(151,'会议室情况',89,0,'main,fwork,meethy',NULL,NULL,NULL,0,1,NULL,0,0),(152,'定位打卡位置',32,6,'main,kaoqin,kqdw',NULL,NULL,NULL,1,1,NULL,0,0),(153,'定位打卡位置分配',32,7,'main,kaoqin,sjfp,type=2',NULL,NULL,NULL,1,1,NULL,0,0),(154,'邮件管理',1,3,NULL,'envelope',NULL,NULL,1,1,NULL,0,0),(155,'企业微信部门',171,1,'system,weixinqy,dept',NULL,NULL,NULL,1,1,NULL,0,0),(156,'系统设置',46,0,'system,cog,set',NULL,NULL,NULL,1,1,NULL,0,0),(157,'邮件',38,0,'system,email','envelope',NULL,'email',0,1,'#0099CC',1,0),(158,'知识信息查看',19,23,'system,infor,zhishixx',NULL,NULL,NULL,0,1,NULL,0,0),(159,'外出记录',57,2,'flow,page,waichu,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(160,'我的外出记录',59,2,'flow,page,waichu,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(161,'上传文件管理',46,15,'system,geren,file,atype=all','folder-close-alt',NULL,NULL,1,1,NULL,0,0),(162,'日志查看',46,16,'system,cog,log',NULL,NULL,'syslog',1,1,NULL,0,0),(163,'邮件收发设置',154,1,'system,email,cogsfa',NULL,NULL,NULL,1,1,NULL,0,0),(164,'用户邮箱设置',154,2,'system,email,coguser',NULL,NULL,NULL,1,1,NULL,0,0),(165,'印章证照',140,51,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(166,'印章证照列表',165,0,'flow,page,seal,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(167,'申请使用查询',165,0,'flow,page,sealapl,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(168,'个人通讯录',39,5,'system,geren,vcard','credit-card',NULL,NULL,0,1,NULL,0,0),(169,'打卡异常',57,3,'flow,page,kqerr,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(170,'我的打卡异常',59,3,'flow,page,kqerr,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(171,'企业微信',1,30,NULL,'comments-alt',NULL,NULL,1,1,NULL,0,0),(172,'企业微信设置',171,0,'system,weixinqy,cog','cog',NULL,NULL,1,1,NULL,0,0),(173,'企业微信用户',171,2,'system,weixinqy,user','user',NULL,NULL,1,1,NULL,0,0),(174,'企业微信应用',171,3,'system,weixinqy,ying',NULL,NULL,NULL,1,1,NULL,0,0),(175,'客户一览表',126,0,'flow,page,customer,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(176,'所有客户合同',126,2,'flow,page,custract,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(177,'所有销售机会',126,1,'flow,page,custsale,atype=allgj,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(178,'所有财务统计',126,6,'main,customer,total,atype=all',NULL,NULL,NULL,1,1,NULL,0,0),(179,'客户主页',63,0,'main,customer,index','user-md',NULL,'crmindex',0,1,NULL,0,0),(180,'微信公众号',1,19,NULL,'comments-alt',NULL,NULL,1,1,NULL,0,0),(181,'公众号设置',180,0,'system,wxgzh,cog',NULL,NULL,NULL,1,1,NULL,0,0),(182,'授权单据查看',40,8,'main,fwork,bill,atype=grantview',NULL,NULL,NULL,0,1,NULL,0,0),(183,'单据查看',38,3,'main,fwork,search','search',NULL,NULL,0,1,NULL,0,0),(184,'我的薪资',39,3,'main,salary,my','money',NULL,NULL,0,1,NULL,0,0),(185,'流程模块统计',7,11,'main,flowtotal','bar-chart',NULL,NULL,1,1,NULL,0,0),(186,'财务管理',140,31,NULL,'money',NULL,NULL,1,1,NULL,0,0),(187,'费用报销',186,0,'flow,page,finfybx,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(188,'出差报销',186,3,'flow,page,finccbx,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(189,'借款单',186,5,'flow,page,finjkd,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(190,'还款单',186,7,'flow,page,finhkd,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(191,'费用报销报表',186,1,'flow,page,finccbxchart',NULL,NULL,NULL,1,1,NULL,0,0),(192,'工作日报',27,2,NULL,'edit',NULL,NULL,1,1,NULL,0,0),(193,'所有日报',192,1,'flow,page,daily,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(194,'日报统计',192,2,'flow,page,dailytotal',NULL,NULL,NULL,1,1,NULL,0,0),(195,'我的日报统计',76,7,'flow,page,dailytotal,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(196,'日报统计分析',192,3,'flow,page,dailychart',NULL,NULL,NULL,1,1,NULL,0,0),(197,'考勤时间排班',32,3,'main,kaoqin,sjpb',NULL,NULL,NULL,1,1,NULL,0,0),(198,'我下属日报统计',76,9,'flow,page,dailytotal,atype=down',NULL,NULL,NULL,0,1,NULL,0,0),(199,'考试培训',27,12,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(200,'考试培训列表',199,0,'flow,page,knowtraim,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(201,'考试培训人员',199,1,'flow,page,knowtraimuser,atype=all',NULL,NULL,NULL,1,1,NULL,0,0),(202,'我的培训考试',39,7,'flow,page,knowtraimuser,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(203,'文档分区管理',220,10,'flow,page,worc,atype=all,pnum=all','folder-close-alt',NULL,NULL,1,1,NULL,0,0),(204,'公文',0,4,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(205,'收文单',204,3,NULL,'hand-down',NULL,NULL,0,1,NULL,0,0),(206,'收文管理',255,1,'flow,page,officib,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(207,'单据提醒',38,4,'main,fwork,todo','star-empty',NULL,'flowtodo',0,1,'#ADCC61',1,0),(208,'钉钉管理',1,40,NULL,'bolt',NULL,NULL,1,1,NULL,0,0),(209,'钉钉设置',208,0,'system,wding,cog',NULL,NULL,NULL,1,1,NULL,0,0),(210,'钉钉部门',208,1,'system,wding,dept',NULL,NULL,NULL,1,1,NULL,0,0),(211,'钉钉用户',208,2,'system,wding,user',NULL,NULL,NULL,1,1,NULL,0,0),(212,'钉钉微应用',208,3,'system,wding,ying',NULL,NULL,NULL,1,1,NULL,0,0),(213,'审核人员分组',7,3,'main,flow,cname','group',NULL,NULL,1,1,NULL,0,0),(214,'车辆信息登记',138,1,'flow,page,carms,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(215,'车辆维修',138,4,'flow,page,carmwx,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(216,'车辆保养',138,5,'flow,page,carmby,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(217,'加班单核算',57,5,'flow,page,jiaban,atype=allfee,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(218,'借款单统计',186,6,'flow,page,finjkdtotal,atype=all',NULL,NULL,NULL,1,1,NULL,0,0),(219,'公司单位',220,0,'flow,page,company,atype=all,pnum=all','road',NULL,'company',1,1,NULL,0,0),(220,'基础管理',1,0,NULL,'asterisk',NULL,NULL,1,1,NULL,0,0),(221,'首页项管理',220,5,'system,home',NULL,NULL,NULL,1,1,NULL,0,0),(222,'短信管理',1,4,NULL,'envelope-alt',NULL,NULL,1,1,NULL,0,0),(223,'短信设置',222,0,'system,sms,cog',NULL,NULL,NULL,1,1,NULL,0,0),(224,'短信签名',222,1,'system,sms,qian',NULL,NULL,NULL,1,1,NULL,0,0),(225,'短信模版',222,2,'system,sms,tpl',NULL,NULL,NULL,1,1,NULL,0,0),(226,'短信发送记录',222,3,'system,sms,record',NULL,NULL,NULL,1,1,NULL,0,0),(227,'我的会话记录',39,8,'reim,record,atype=my','file-alt',NULL,'reimrecord',0,1,NULL,0,0),(228,'会话记录',14,5,'reim,record,atype=all','file-alt',NULL,NULL,1,1,NULL,0,0),(229,'付款申请',186,8,'flow,page,finpay,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(230,'开票申请',186,9,'flow,page,finkai,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(231,'日报授权查看',76,10,'flow,page,daily,atype=grant',NULL,NULL,NULL,0,1,NULL,0,0),(232,'发文单',204,2,NULL,'hand-up',NULL,NULL,0,1,NULL,0,0),(233,'发文管理',255,0,'flow,page,officia,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(234,'考勤统计详表',57,8,'main,kaoqin,total,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(235,'订阅管理',237,0,'flow,page,subscribe,atype=all,pnum=all',NULL,NULL,'rssglall',1,1,NULL,0,0),(236,'订阅报表',270,5,'flow,page,subscribeinfo,atype=my','rss',NULL,'subscribeinfo',0,1,NULL,0,0),(237,'订阅回执管理',1,5,NULL,'rss',NULL,NULL,1,1,NULL,0,0),(238,'订阅报表',237,1,'flow,page,subscribeinfo,atype=all,pnum=all',NULL,NULL,'rssinfoall',1,1,NULL,0,0),(239,'公文查阅',204,0,'flow,page,officic,atype=my','suitcase',NULL,'officic',0,1,NULL,0,0),(240,'考勤机管理',27,10,NULL,'hdd',NULL,NULL,1,1,NULL,0,0),(241,'考勤机设备',240,0,'flow,page,kqjsn,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(242,'考勤机命令查看',240,2,'main,kaoqinj,cmd',NULL,NULL,NULL,1,1,NULL,0,0),(243,'考勤机上部门人员',240,1,'main,kaoqinj,dept',NULL,NULL,NULL,1,1,NULL,0,0),(244,'考核评分',272,1,'flow,page,hrcheck,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(245,'城市管理',46,17,'system,city',NULL,NULL,NULL,1,1,NULL,0,0),(246,'演示模块数据',46,89,'flow,page,demo,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(247,'仓库管理',28,0,'flow,page,godepot,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(248,'供应商管理',28,1,'flow,page,customer,atype=gys,pnum=gys',NULL,NULL,NULL,1,1,NULL,0,0),(249,'物品管理',140,2,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(250,'物品领用',249,3,'flow,page,goodly,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(251,'物品采购',249,2,'flow,page,caigou,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(252,'物品盘点',249,10,'main,goods,pandian',NULL,NULL,NULL,1,1,NULL,0,0),(253,'出入库操作',249,0,'main,goods,cropt','plus-sign',NULL,'cropt',1,1,'#00b6ff',1,0),(254,'个人设置',39,0,'system,geren,cog','cog',NULL,'grcog',0,1,NULL,0,0),(255,'公文管理',204,10,NULL,NULL,NULL,NULL,1,1,NULL,0,0),(256,'拟办发文',232,0,'add,officia','edit',NULL,NULL,0,1,NULL,0,0),(257,'新增收文',205,0,'add,officib','plus',NULL,NULL,0,1,NULL,0,0),(258,'我的发文',232,1,'flow,page,officia,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(259,'我的收文',205,1,'flow,page,officib,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(260,'剩余假期统计',57,4,'main,kaoqin,totaljia',NULL,NULL,NULL,1,1,NULL,0,0),(261,'物品调拨',249,4,'flow,page,diaobo,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(262,'客户公海库',63,1,'flow,page,customer,atype=allgh,pnum=ghai','beaker',NULL,'crmghai',0,1,NULL,0,0),(263,'客户申请使用',64,7,'flow,page,custappy,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(264,'所有客户申请使用',126,7,'flow,page,custappy,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(265,'人员需求',127,1,'flow,page,hrdemand,atype=all,pnum=all ',NULL,NULL,NULL,1,1,NULL,0,0),(266,'面试安排',127,2,'flow,page,hrmanshi,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(267,'抄送给我的单据',40,7,'main,fwork,bill,atype=chaosview',NULL,NULL,NULL,0,1,NULL,0,0),(268,'单据回执确认',270,3,'flow,page,receipt,atype=my','exchange',NULL,'receiptmy',0,1,'#ed8b8b',1,0),(269,'回执确认管理',237,2,'flow,page,receipt,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(270,'订阅和回执',38,5,NULL,NULL,NULL,NULL,0,1,NULL,0,0),(271,'草稿待提交',40,3,'main,fwork,bill,atype=daiturn','edit',NULL,'daiturn',0,1,'#ff6600',1,0),(272,'考核管理',27,2,NULL,'ok-circle',NULL,NULL,1,1,NULL,0,0),(273,'考核项目',272,0,'flow,page,hrkaohem,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(274,'我的考核',39,9,'flow,page,hrcheck,atype=my',NULL,NULL,NULL,0,1,NULL,0,0),(275,'考核评分详情',272,2,'flow,page,hrcheck,atype=tjall,pnum=tjall',NULL,NULL,NULL,1,1,NULL,0,0),(276,'薪资模版',98,1,'flow,page,hrsalarm,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(277,'社保公积金',98,0,'flow,page,hrshebao,atype=all,pnum=all',NULL,NULL,NULL,1,1,NULL,0,0),(278,'部门薪资核算',98,3,'main,salary,bumen',NULL,NULL,NULL,1,1,NULL,0,0);
/*!40000 ALTER TABLE `jouryu_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_official`
--

DROP TABLE IF EXISTS `jouryu_official`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_official` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `titles` varchar(255) DEFAULT NULL COMMENT '副标题',
  `class` varchar(10) DEFAULT NULL COMMENT '类型',
  `type` tinyint(1) DEFAULT '0' COMMENT '0收文单,1发文单',
  `grade` varchar(10) DEFAULT NULL COMMENT '等级',
  `optname` varchar(20) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '状态',
  `content` text COMMENT '内容',
  `receid` varchar(200) DEFAULT NULL COMMENT '来源',
  `recename` varchar(200) DEFAULT NULL COMMENT '发给',
  `applydt` date DEFAULT NULL COMMENT '日期',
  `num` varchar(30) DEFAULT NULL COMMENT '编号',
  `optid` smallint(6) DEFAULT '0',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `filecontid` varchar(30) DEFAULT NULL COMMENT '正文文件Id',
  `zinum` varchar(30) DEFAULT NULL COMMENT '发文字号',
  `unitname` varchar(50) DEFAULT NULL COMMENT '发给单位',
  `unitsame` varchar(50) DEFAULT NULL COMMENT '发文单位',
  `miji` varchar(50) DEFAULT NULL COMMENT '公文密级',
  `laidt` date DEFAULT NULL COMMENT '来文日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公文';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_official`
--

LOCK TABLES `jouryu_official` WRITE;
/*!40000 ALTER TABLE `jouryu_official` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_official` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_option`
--

DROP TABLE IF EXISTS `jouryu_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` int(11) DEFAULT '0' COMMENT '选项类型',
  `pid` int(11) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `value` varchar(1000) DEFAULT NULL COMMENT '对应值',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `values` varchar(50) DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '1',
  `optdt` datetime DEFAULT NULL,
  `optid` smallint(6) DEFAULT '0',
  `receid` varchar(300) DEFAULT NULL,
  `recename` varchar(300) DEFAULT NULL,
  `explain` varchar(200) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`),
  KEY `num` (`num`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=425 DEFAULT CHARSET=utf8 COMMENT='系统选项';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_option`
--

LOCK TABLES `jouryu_option` WRITE;
/*!40000 ALTER TABLE `jouryu_option` DISABLE KEYS */;
INSERT INTO `jouryu_option` VALUES (1,'琢瑜OA',0,0,'jouryu',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(4,'流程分类',0,1,'flowfenlei',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(5,'考勤',0,4,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(6,'表单类型',0,1,'flowinputtype',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(7,'文本框',0,6,NULL,'text',0,NULL,1,NULL,0,NULL,NULL,NULL),(8,'日期',0,6,NULL,'date',1,NULL,1,NULL,0,NULL,NULL,NULL),(9,'日期时间',0,6,NULL,'datetime',2,NULL,1,NULL,0,NULL,NULL,NULL),(10,'时间',0,6,NULL,'time',3,NULL,1,NULL,0,NULL,NULL,NULL),(11,'隐藏文本框',0,6,NULL,'hidden',4,NULL,1,NULL,0,NULL,NULL,NULL),(12,'选择人员(单选)',0,6,NULL,'changeuser',7,NULL,1,NULL,0,NULL,NULL,NULL),(13,'选择人员(多选)',0,6,NULL,'changeusercheck',8,NULL,1,NULL,0,NULL,NULL,NULL),(14,'自定义',0,6,NULL,'auto',30,NULL,1,NULL,0,NULL,NULL,NULL),(15,'数字',0,6,NULL,'number',5,NULL,1,NULL,0,NULL,NULL,NULL),(16,'文本域',0,6,NULL,'textarea',6,NULL,1,NULL,0,NULL,NULL,NULL),(17,'固定值',0,6,NULL,'fixed',11,NULL,1,NULL,0,NULL,NULL,NULL),(18,'系统选项下拉框',0,6,NULL,'rockcombo',12,NULL,1,NULL,0,NULL,NULL,NULL),(19,'下拉框',0,6,NULL,'select',13,NULL,1,NULL,0,NULL,NULL,NULL),(20,'html编辑器',0,6,NULL,'htmlediter',14,NULL,1,NULL,0,NULL,NULL,NULL),(21,'选择部门人员组',0,6,NULL,'changedeptusercheck',10,NULL,1,NULL,0,NULL,NULL,NULL),(22,'单个复选框',0,6,NULL,'checkbox',15,NULL,1,NULL,0,NULL,NULL,NULL),(23,'多个复选框',0,6,NULL,'checkboxall',16,NULL,1,NULL,0,NULL,NULL,NULL),(24,'选择部门',0,6,NULL,'changedept',9,NULL,1,NULL,0,NULL,NULL,NULL),(25,'行政',0,4,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(26,'信息类型',0,1,'gongtype',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(27,'通知公告',0,26,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(28,'规则制度',0,26,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(29,'会议室',0,1,'hyname',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(30,'会客室',0,29,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(32,'任务类型',0,151,'worktype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(33,'任务等级',0,151,'workgrade',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(34,'bug',0,32,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(35,'改进',0,32,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(36,'设计',0,32,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(37,'低',0,33,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(38,'中',0,33,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(39,'高',0,33,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(40,'紧急',0,33,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(41,'任务状态',0,151,'workstate',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(42,'待执行',0,41,NULL,'0',0,NULL,1,NULL,0,NULL,NULL,NULL),(43,'执行中',0,41,NULL,'2',0,NULL,1,NULL,0,NULL,NULL,NULL),(44,'已完成',0,41,NULL,'1',0,NULL,1,NULL,0,NULL,NULL,NULL),(45,'中止',0,41,NULL,'3',0,NULL,1,NULL,0,NULL,NULL,NULL),(46,'请假类型',0,144,'kqqjkind',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(47,'事假',0,46,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(48,'病假',0,46,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(49,'年假',0,46,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(50,'客户关系',0,1,'crm',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(51,'CRM',0,4,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(52,'客户来源',0,50,'crmlaiyuan',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(53,'销售状态',0,50,'crmstate',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(54,'网上开拓',0,52,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(55,'电话开拓',0,52,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(56,'跟进中',0,53,NULL,'0',0,NULL,1,NULL,0,NULL,NULL,NULL),(57,'已成交',0,53,NULL,'1',0,NULL,1,NULL,0,NULL,NULL,NULL),(58,'销售来源',0,50,'custsalelai',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(59,'主动来访',0,58,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(60,'网上联系',0,58,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(61,'电话销售',0,58,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(62,'行政选项',0,1,'goods',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(63,'互联网',0,83,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(64,'琢瑜OA',0,63,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(65,'办公耗材',0,83,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(66,'显示器',0,65,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(67,'鼠标',0,65,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(68,'主机',0,65,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(70,'资产品牌',0,62,'rockbrand',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(71,'单位',0,62,'rockunit',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(72,'台',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(73,'个',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(74,'件',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(75,'箱',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(76,'年',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(77,'月',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(78,'入库类型',0,62,'kutype0',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(79,'出库类型',0,62,'kutype1',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(80,'采购入库',0,78,NULL,'0',0,NULL,1,NULL,0,NULL,NULL,NULL),(81,'领用出库',0,79,NULL,'0',0,NULL,1,NULL,0,NULL,NULL,NULL),(82,'归返入库',0,78,NULL,'1',0,NULL,1,NULL,0,NULL,NULL,NULL),(83,'物品分类',0,62,'goodstype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(84,'销售出库',0,79,NULL,'1',0,NULL,1,NULL,0,NULL,NULL,NULL),(85,'知识信息',0,26,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(86,'管理员文件夹目录',0,NULL,'folder1','success',0,NULL,1,'2016-10-26 20:52:17',1,NULL,NULL,NULL),(87,'技术文档',0,86,NULL,NULL,20,NULL,1,'2016-08-08 22:07:41',1,NULL,NULL,NULL),(88,'需求文档',0,86,NULL,NULL,0,NULL,1,'2016-08-08 22:08:27',1,NULL,NULL,NULL),(89,'图片',0,86,NULL,NULL,0,NULL,1,'2016-08-08 22:44:10',1,'d1','琢瑜OA开发团队',NULL),(92,'文件夹目录',0,NULL,'folder3',NULL,0,NULL,1,'2016-10-19 19:30:59',3,NULL,NULL,NULL),(93,'个人文件',0,92,NULL,NULL,0,NULL,1,'2016-08-09 13:57:06',3,NULL,NULL,NULL),(94,'php文档',0,89,NULL,NULL,0,NULL,1,'2016-08-09 22:20:17',1,NULL,NULL,NULL),(95,'js文档',0,89,NULL,NULL,0,NULL,1,'2016-08-09 22:20:23',1,NULL,NULL,NULL),(98,'文件夹目录',0,NULL,'folder4','success',0,NULL,1,'2016-10-19 19:31:27',4,NULL,NULL,NULL),(99,'公文选项',0,1,'official',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(100,'公文类型',0,99,'officialclass',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(101,'决议',0,100,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(102,'决定',0,100,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(103,'请示',0,100,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(104,'规定',0,100,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(105,'公文等级',0,99,'officialgrade',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(106,'平急',0,105,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(107,'加急',0,105,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(108,'项目选项',0,1,'project',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(109,'项目类型',0,108,'projecttype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(110,'一般项目',0,109,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(111,'重要项目',0,109,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(112,'关键项目',0,109,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(113,'项目状态',0,108,'projectstate',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(114,'待执行',0,113,NULL,'0',0,NULL,1,NULL,0,NULL,NULL,NULL),(115,'执行中',0,113,NULL,'2',0,NULL,1,NULL,0,NULL,NULL,NULL),(116,'已取消',0,113,NULL,'3',0,NULL,1,NULL,0,NULL,NULL,NULL),(117,'已完成',0,113,NULL,'1',0,NULL,1,NULL,0,NULL,NULL,NULL),(128,'文件夹目录',0,NULL,'folder8','success',0,NULL,1,'2016-10-01 17:57:12',8,NULL,NULL,NULL),(130,'财务选项',0,1,'finance',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(131,'付款方式',0,130,'paytype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(132,'现金',0,131,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(133,'支付宝',0,131,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(134,'微信',0,131,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(135,'银行转账',0,131,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(136,'报销项目',0,130,'finaitems',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(137,'市内交通费',0,136,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(138,'电话费',0,136,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(139,'快递费',0,136,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(140,'停车费',0,136,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(141,'文件夹目录',0,NULL,'folder5','success',0,NULL,1,'2016-09-08 21:13:56',5,NULL,NULL,NULL),(143,'服务文档',0,128,NULL,NULL,0,NULL,1,'2016-09-13 11:32:22',8,NULL,NULL,NULL),(144,'考勤选项',0,1,'kaoqin',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(145,'人事考勤类型',0,144,'kqkind',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(146,'增加年假',0,145,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(147,'增加哺乳假',0,145,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(148,'增加陪产假',0,145,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(149,'奖惩',0,26,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(150,'文件夹目录',0,NULL,'folder9',NULL,0,NULL,1,'2016-10-01 18:38:06',9,NULL,NULL,NULL),(151,'任务选项',0,1,'work',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(154,'人事选项',0,1,'usertype',NULL,10,NULL,1,NULL,0,NULL,NULL,NULL),(155,'学历',0,154,'xueli',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(156,'小学',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(157,'初中',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(158,'高中',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(159,'中专',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(160,'大专',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(161,'本科',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(162,'自考本科',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(163,'研究生',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(164,'博士',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(165,'其它',0,155,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(166,'合同类型',0,154,'userhttype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(167,'劳动合同',0,166,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(168,'离职类型',0,154,'redundtype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(169,'自动离职',0,168,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(170,'退休',0,168,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(171,'病辞',0,168,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(172,'辞退',0,168,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(173,'辞职',0,168,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(174,'月份',0,6,NULL,'month',17,NULL,1,NULL,0,NULL,NULL,NULL),(175,'编号',0,6,NULL,'num',21,NULL,1,NULL,0,NULL,NULL,NULL),(176,'客户类型',0,50,'crmtype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(177,'互联网',0,176,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(178,'软件',0,176,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(179,'个体经营',0,176,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(180,'个人',0,176,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(181,'其它',0,176,NULL,NULL,20,NULL,1,NULL,0,NULL,NULL,NULL),(182,'政府机构',0,176,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(183,'人事调动类型',0,154,'transfertype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(184,'平调',0,183,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(185,'晋升',0,183,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(186,'降职',0,183,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(190,'奖惩结果',0,154,'rewardresult',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(191,'奖励',0,190,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(192,'警告',0,190,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(193,'辞退',0,190,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(194,'降职',0,190,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(195,'张飞文件夹目录',0,NULL,'folder6','success',0,NULL,1,'2016-10-24 21:27:22',6,NULL,NULL,NULL),(196,'个人经历',0,195,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(197,'知识分类',0,NULL,'knowledgetype',NULL,0,NULL,1,'2016-10-27 21:10:24',1,NULL,NULL,NULL),(198,'工作指南',0,197,NULL,'title,typename,recename,zuozhe,indate,optname,caozuo',0,NULL,1,'2017-04-21 09:26:50',1,NULL,NULL,NULL),(199,'工作效率',0,198,NULL,NULL,1,NULL,1,NULL,0,NULL,NULL,NULL),(200,'工作目标',0,198,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(201,'规章制度',0,197,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(202,'工作规范',0,197,NULL,NULL,0,NULL,1,'2016-10-26 20:54:54',1,NULL,NULL,NULL),(203,'资产分类',0,62,'assetstype',NULL,0,NULL,1,'2016-10-27 21:14:45',1,NULL,NULL,NULL),(204,'打印机',0,203,NULL,'',0,NULL,1,'2017-04-21 09:26:50',1,NULL,NULL,NULL),(205,'固定资产来源',0,62,'wplaiyuan',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(206,'电脑',0,203,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(207,'台式电脑',0,206,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(208,'笔记本',0,206,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(209,'平板',0,206,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(210,'一体机',0,206,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(211,'仓库',0,62,'warehouse',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(212,'购入',0,205,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(213,'自建',0,205,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(214,'仓库1',0,211,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(215,'仓库2',0,211,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(216,'联想',0,70,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(217,'惠普',0,70,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(218,'车辆类型',0,327,'cartype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(219,'小型车',0,218,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(220,'轿车',0,218,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(221,'车辆品牌',0,327,'carbrand',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(222,'奔驰',0,221,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(223,'奥迪',0,221,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(224,'夏利',0,221,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(226,'题库分类',0,NULL,'knowtikutype',NULL,0,NULL,1,'2016-10-27 21:17:22',1,NULL,NULL,NULL),(227,'官网知识',0,226,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(228,'OA题库',0,226,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(229,'会议室1',0,29,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(230,'会议室2',0,29,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(231,'图书分类',0,NULL,'booktype',NULL,0,NULL,1,'2016-10-28 23:15:11',1,NULL,NULL,NULL),(232,'计算机',0,231,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(233,'管理书籍',0,231,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(244,'印章证照类型',0,62,'sealtype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(245,'合同章',0,244,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(246,'法人章',0,244,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(247,'财务章',0,244,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(248,'公章',0,244,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(249,'调休',0,46,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(250,'单图片上传',0,6,NULL,'uploadimg',19,NULL,1,NULL,0,NULL,NULL,NULL),(251,'打卡异常类型',0,144,'kqerrtype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(252,'忘记打卡',0,251,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(253,'打卡不成功',0,251,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(254,'邮箱文本框',0,6,NULL,'email',0,NULL,1,NULL,0,NULL,NULL,NULL),(255,'gerenvcard_1选项',0,NULL,'gerenvcard_1',NULL,0,NULL,1,'2016-12-20 10:52:49',1,NULL,NULL,NULL),(256,'同事',0,255,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(257,'盟友',0,255,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(258,'敌人',0,255,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(259,'gerenvcard_8选项',0,NULL,'gerenvcard_8',NULL,0,NULL,1,'2016-12-20 11:23:21',8,NULL,NULL,NULL),(260,'同事',0,259,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(261,'gerenvcard_5选项',0,NULL,'gerenvcard_5',NULL,0,NULL,1,'2016-12-20 11:30:38',5,NULL,NULL,NULL),(262,'弹框下拉选择(单选)',0,6,NULL,'selectdatafalse',22,NULL,1,NULL,0,NULL,NULL,NULL),(263,'弹框下拉选择(多选)',0,6,NULL,'selectdatatrue',23,NULL,1,NULL,0,NULL,NULL,NULL),(273,'文件上传(可多选)',0,6,NULL,'uploadfile',20,NULL,1,NULL,0,NULL,NULL,NULL),(277,'用户bug1',0,NULL,'adminbug1','2017-02-15 10:18:19',0,NULL,1,'2017-02-15 10:18:19',1,NULL,NULL,NULL),(286,'模块列定义',0,-1007,'columns_customer_shate','name,suoname,type,laiyuan,unitname,isstat,caozuo',0,NULL,1,'2017-07-13 19:02:20',1,NULL,NULL,NULL),(287,'模块列定义',0,-1007,'columns_customer_dist','name,suoname,type,laiyuan,unitname,isgys,linkname',0,NULL,1,'2017-04-21 11:55:50',1,NULL,NULL,NULL),(288,'模块列定义',0,-1007,'columns_customer_','name,suoname,type,unitname,mobile,isstat,htshu,moneyz,moneyd,lastdt,caozuo',0,NULL,1,'2018-07-07 10:04:31',1,NULL,NULL,NULL),(294,'技术姿势',0,226,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(295,'PHP知识',0,294,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(296,'JS知识',0,294,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(298,'模块列定义',0,-1004,'columns_work_','title,type,grade,dist,startdt,enddt,ddname,score,optname,optdt,caozuo',0,NULL,1,'2017-05-11 09:55:28',1,NULL,NULL,NULL),(299,'模块列定义',0,-1004,'columns_work_all','title,type,grade,dist,startdt,enddt,ddname,score,mark,optname,optdt,caozuo',0,NULL,1,'2018-04-15 16:10:26',1,NULL,NULL,NULL),(300,'收款章',0,244,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(302,'开发部文件夹目录',0,NULL,'deptfolderdev',NULL,0,NULL,1,'2017-05-27 17:36:02',1,NULL,NULL,NULL),(303,'技术文档',0,302,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(304,'赵子龙文件夹目录',0,NULL,'folder7','success',0,NULL,1,'2017-05-27 17:49:46',7,NULL,NULL,NULL),(305,'公文密级',0,99,'officialmiji',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(306,'私密',0,305,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(307,'机密',0,305,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(308,'绝密',0,305,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(309,'特急',0,105,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(310,'特提',0,105,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(311,'公文文件类别',0,99,'officialfiletype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(312,'中央省委',0,311,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(313,'单选框',0,6,NULL,'radio',24,NULL,1,NULL,0,NULL,NULL,NULL),(320,'车辆登记类型',0,327,'carotype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(321,'加油',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(322,'强险',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(323,'商业险',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(324,'行驶证',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(325,'违章',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(326,'事故',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(327,'车辆管理选项',0,62,'carm',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(328,'车辆几天内提醒(多个,分开)',0,327,'cartodo','0,3,7,10,30,45',0,NULL,1,NULL,0,NULL,NULL,NULL),(331,'过桥费',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(332,'高速费',0,320,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(333,'客户合同到期几天内提醒',0,50,'crmtodo','0,3,7,10,30,45',0,NULL,1,NULL,0,NULL,NULL,NULL),(334,'可直接申请请假类型',0,144,'kqsqtype','病假,事假',0,NULL,1,NULL,0,NULL,NULL,'多个,分开，没有设置的请假类型时，申请请假条需要有剩余假期才可以申请。'),(335,'人员状态',0,154,'userstate',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(336,'试用期',0,335,NULL,'0',0,NULL,1,NULL,0,NULL,NULL,NULL),(337,'正式',0,335,NULL,'1',0,NULL,1,NULL,0,NULL,NULL,NULL),(338,'实习生',0,335,NULL,'2',0,NULL,1,NULL,0,NULL,NULL,NULL),(339,'兼职',0,335,NULL,'3',0,NULL,1,NULL,0,NULL,NULL,NULL),(340,'临时工',0,335,NULL,'4',0,NULL,1,NULL,0,NULL,NULL,NULL),(341,'离职',0,335,NULL,'5',0,NULL,1,NULL,0,NULL,NULL,NULL),(342,'gerenvcar选项',0,NULL,'gerenvcar',NULL,0,NULL,1,'2017-07-21 13:37:48',1,NULL,NULL,NULL),(344,'支',0,71,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(351,'发票类型',0,130,'openpiaotype',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(352,'增值税普通发票',0,351,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(353,'增值税专用发票',0,351,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(354,'定额发票',0,351,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(355,'台式电脑2',0,206,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(356,'笔',0,65,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(357,'编程',0,232,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(359,'发文字号',0,99,'officiazinum',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(360,'琢瑜OA',0,359,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(363,'选择部门(多选)',0,6,NULL,'changedeptcheck',9,NULL,1,NULL,0,NULL,NULL,NULL),(365,'默认1天上班小时',0,144,'kqsbtime','0',0,NULL,1,NULL,0,NULL,NULL,'设置0默认读取考勤规则下的'),(367,'初始入库',0,78,NULL,'2',0,NULL,1,NULL,0,NULL,NULL,NULL),(368,'模块列定义',0,-1007,'columns_customer_gys','name,suoname,type,unitname,tel,address,status,linkname,explain,caozuo',0,NULL,1,'2017-11-11 15:04:39',1,NULL,NULL,NULL),(369,'行政人事部文件夹目录',0,NULL,'deptfolder4',NULL,0,NULL,1,'2017-11-13 15:38:38',4,NULL,NULL,NULL),(381,'调拨入库',0,78,NULL,'3',0,NULL,1,NULL,0,NULL,NULL,NULL),(382,'调拨出库',0,79,NULL,'3',0,NULL,1,NULL,0,NULL,NULL,NULL),(383,'模块列定义',0,-1007,'columns_customer_ghai','name,suoname,type,unitname,sheng,shi,status,caozuo',0,NULL,1,'2018-03-06 14:22:28',1,NULL,NULL,NULL),(387,'生日短信提醒',0,154,'smsbirthday',NULL,0,NULL,1,NULL,0,NULL,NULL,'对应值设置：短信模版编号为空不提醒'),(400,'定时清理数据',0,144,'kqcleartime','6',0,NULL,1,NULL,0,NULL,NULL,'0不清理,1一个月前,2个月,以此类推，清理打卡记录'),(401,'系统选项',0,1,'sysoption',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(402,'用户初始化',0,401,'sysuserinit','否',0,NULL,1,NULL,0,NULL,NULL,'对应值写:是，就可以多次初始化用户。'),(403,'短信平台',0,401,'syssmsplat',NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(405,'阿里云(短信服务)',0,403,NULL,'alisms',0,NULL,1,NULL,0,NULL,NULL,NULL),(408,'自动放入公海',0,50,'crmaddghai','0',1,NULL,1,NULL,0,NULL,NULL,'对应值0不限制,7天未根据自动放入公海'),(409,'模块列定义',0,-1007,'columns_customer_all','name,suoname,type,unitname,isstat,isgys,htshu,moneyz,moneyd,lastdt,caozuo',0,NULL,1,'2018-07-07 10:21:00',1,NULL,NULL,NULL),(410,'我短信服务',0,403,NULL,'mysms',2,NULL,1,NULL,0,NULL,NULL,NULL),(411,'加班可调休',0,144,'kqjiabanuse','3',0,NULL,1,NULL,0,NULL,NULL,'加班换调休有效时间0不限制3个月内'),(412,'年假可使用',0,144,'kqnianjiause','12',0,NULL,1,NULL,0,NULL,NULL,'年假可使用时间0不限制,1一个月,12一年'),(413,'每月可申请打卡异常次数',0,144,'kqerrapply','0',0,NULL,1,NULL,0,NULL,NULL,'对应值设置0不限制'),(417,'哺乳假',0,46,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(418,'模块列定义',0,-1071,'columns_hrcheck_tjall','deptname,applyname,title,startdt,pfrenids,fen',0,NULL,1,'2018-09-07 22:23:50',1,NULL,NULL,NULL),(419,'营业执照',0,244,NULL,NULL,1,NULL,1,NULL,0,NULL,NULL,NULL),(420,'组织机构代码证',0,244,NULL,NULL,1,NULL,1,NULL,0,NULL,NULL,NULL),(421,'税务登记证',0,244,NULL,NULL,1,NULL,1,NULL,0,NULL,NULL,NULL),(422,'机构信用代码证',0,244,NULL,NULL,1,NULL,1,NULL,0,NULL,NULL,NULL),(423,'发票专用章',0,244,NULL,NULL,0,NULL,1,NULL,0,NULL,NULL,NULL),(424,'云片网',0,403,NULL,'yunpsms',1,NULL,1,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_project`
--

DROP TABLE IF EXISTS `jouryu_project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` smallint(6) DEFAULT '0',
  `type` varchar(20) DEFAULT NULL COMMENT '项目类型',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `status` tinyint(1) DEFAULT '0',
  `title` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '预计结束时间',
  `fuze` varchar(20) DEFAULT NULL COMMENT '负责人',
  `fuzeid` varchar(50) DEFAULT NULL,
  `runuser` varchar(100) DEFAULT NULL COMMENT '执行人员',
  `runuserid` varchar(100) DEFAULT NULL,
  `progress` smallint(6) DEFAULT '0' COMMENT '进度',
  `viewuser` varchar(100) DEFAULT NULL COMMENT '授权查看',
  `viewuserid` varchar(100) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL COMMENT '说明备注',
  `optid` smallint(6) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL,
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='项目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_project`
--

LOCK TABLES `jouryu_project` WRITE;
/*!40000 ALTER TABLE `jouryu_project` DISABLE KEYS */;
INSERT INTO `jouryu_project` VALUES (1,0,'一般项目','wechat-dev',1,'琢瑜OA微信企业号开发','2016-08-14 09:56:23','2016-12-31 23:59:59','管理员','1','开发部','d2',100,NULL,NULL,NULL,1,'管理员','2016-09-06 19:41:26','2016-08-14 09:57:21',0),(3,0,'关键项目','androidapp',1,'Android原生琢瑜OAapp开发','2017-03-01 11:59:00',NULL,'管理员','1','开发部','d2',100,NULL,NULL,'做好任务分配开发啊。',1,'管理员','2018-04-26 08:57:01','2017-04-13 11:59:43',0),(5,0,'重要项目','jouryucloud',3,'琢瑜OA云平台v1.0版本开发','2018-04-26 09:09:32','2018-08-01 09:10:00','管理员','1','开发部','d2',15,NULL,NULL,'琢瑜OA云平台v1.0版本开发，用larval框架，可多平台开发。',1,'管理员','2018-07-07 09:18:33','2018-04-26 09:11:08',0);
/*!40000 ALTER TABLE `jouryu_project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_reads`
--

DROP TABLE IF EXISTS `jouryu_reads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_reads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(30) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `optid` smallint(6) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `web` varchar(30) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL COMMENT '第一次浏览',
  `stotal` smallint(6) DEFAULT '1' COMMENT '流程次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table_2` (`table`,`mid`,`optid`),
  KEY `table` (`table`,`mid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单据浏览记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_reads`
--

LOCK TABLES `jouryu_reads` WRITE;
/*!40000 ALTER TABLE `jouryu_reads` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_reads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_receipt`
--

DROP TABLE IF EXISTS `jouryu_receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_receipt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modenum` varchar(30) DEFAULT '0' COMMENT '对应模块编号',
  `modename` varchar(30) DEFAULT NULL COMMENT '模块名称',
  `table` varchar(30) DEFAULT NULL COMMENT '对应主表',
  `mid` int(11) DEFAULT '0' COMMENT '主表Id',
  `uid` int(11) DEFAULT '0' COMMENT '对应人员',
  `receid` varchar(4000) DEFAULT NULL COMMENT '发送给',
  `recename` varchar(200) DEFAULT NULL,
  `receids` varchar(4000) DEFAULT NULL COMMENT '已确认人员Id',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `explain` varchar(500) DEFAULT NULL COMMENT '内容',
  `ushuz` int(11) DEFAULT '0' COMMENT '总人数',
  `ushuy` int(11) DEFAULT '0' COMMENT '已确认',
  `status` tinyint(1) DEFAULT '1',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  PRIMARY KEY (`id`),
  KEY `modenum` (`modenum`,`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='回执确认表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_receipt`
--

LOCK TABLES `jouryu_receipt` WRITE;
/*!40000 ALTER TABLE `jouryu_receipt` DISABLE KEYS */;
INSERT INTO `jouryu_receipt` VALUES (1,'gong','通知公告','infor',6,1,'1,2,3,4,5,6,7,8','琢瑜OA开发团队','1','2018-07-06 21:20:09','[通知公告]琢瑜OA更新发布V1.7.7版本！',8,1,1,'管理员');
/*!40000 ALTER TABLE `jouryu_receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_repair`
--

DROP TABLE IF EXISTS `jouryu_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_repair` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `assetm` varchar(100) DEFAULT NULL COMMENT '报修资产',
  `reason` varchar(500) DEFAULT NULL COMMENT '保修原因',
  `reasons` varchar(500) DEFAULT NULL COMMENT '实际原因',
  `iswx` tinyint(1) DEFAULT '0' COMMENT '需要外修',
  `money` decimal(8,2) DEFAULT '0.00' COMMENT '维修金额',
  `wxname` varchar(50) DEFAULT NULL COMMENT '维修人员',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='维修报修';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_repair`
--

LOCK TABLES `jouryu_repair` WRITE;
/*!40000 ALTER TABLE `jouryu_repair` DISABLE KEYS */;
INSERT INTO `jouryu_repair` VALUES (1,1,'2017-07-07 13:12:53',1,'管理员','2017-07-07',NULL,1,1,'打印机','打印机突然打印不了字了','没碳粉了，换一下就好了',0,0.00,'大乔'),(2,3,'2017-07-07 13:37:28',3,'小乔','2017-07-07',NULL,1,1,'我电脑坏了','我电脑坏了开不了，一按下键盘就重启。','键盘坏了，需要外修',1,30.00,'科技人员');
/*!40000 ALTER TABLE `jouryu_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_reward`
--

DROP TABLE IF EXISTS `jouryu_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_reward` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `object` varchar(30) DEFAULT NULL COMMENT '奖惩对象',
  `objectid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '奖惩类型0奖励,1处罚',
  `result` varchar(50) DEFAULT NULL COMMENT '奖惩结果',
  `money` mediumint(6) DEFAULT NULL COMMENT '奖惩金额',
  `happendt` datetime DEFAULT NULL COMMENT '发生时间',
  `hapaddress` varchar(50) DEFAULT NULL COMMENT '发生地点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='奖惩';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_reward`
--

LOCK TABLES `jouryu_reward` WRITE;
/*!40000 ALTER TABLE `jouryu_reward` DISABLE KEYS */;
INSERT INTO `jouryu_reward` VALUES (1,1,'2016-10-20 21:01:10',1,'管理员','2016-10-20','积极做好工作，特此奖励！',1,1,'管理员',1,0,'奖励',200,'2016-10-01 20:59:14','公司'),(2,1,'2016-10-20 21:16:24',1,'管理员','2016-10-20','对客户言语不确当被投诉了，哈哈。',0,1,'琢瑜OA客服',8,1,'警告',20,'2016-10-06 21:15:27','公司');
/*!40000 ALTER TABLE `jouryu_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_schedule`
--

DROP TABLE IF EXISTS `jouryu_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `startdt` datetime DEFAULT NULL,
  `enddt` datetime DEFAULT NULL,
  `uid` smallint(6) DEFAULT NULL COMMENT '用户Id',
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `mid` int(11) DEFAULT '0' COMMENT '主Id',
  `ratecont` varchar(500) DEFAULT NULL COMMENT '频率',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `rate` varchar(5) DEFAULT NULL,
  `rateval` varchar(50) DEFAULT NULL,
  `txsj` tinyint(1) DEFAULT '0' COMMENT '是否提醒',
  `status` tinyint(1) DEFAULT '1',
  `receid` varchar(100) DEFAULT NULL,
  `recename` varchar(100) DEFAULT NULL COMMENT '提醒给',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='日程';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_schedule`
--

LOCK TABLES `jouryu_schedule` WRITE;
/*!40000 ALTER TABLE `jouryu_schedule` DISABLE KEYS */;
INSERT INTO `jouryu_schedule` VALUES (1,'每月初提醒考勤是否正常','2016-08-01 08:00:00',NULL,1,'2017-02-27 10:54:57','管理员',0,NULL,NULL,'m','1',1,1,'d1','琢瑜OA开发团队'),(2,'每周五下班前提交这周报告给主管','2016-08-01 17:00:00',NULL,1,'2016-08-30 22:38:48','管理员',0,NULL,NULL,'w','5',1,1,NULL,NULL),(3,'吃饭了嘛？','2016-09-12 12:00:00',NULL,1,'2017-02-27 11:54:17','管理员',0,NULL,NULL,'d',NULL,1,1,NULL,NULL),(4,'该起床拉','2017-04-17 08:00:00',NULL,3,'2017-04-17 08:43:03','小乔',0,NULL,NULL,'d',NULL,1,1,NULL,NULL);
/*!40000 ALTER TABLE `jouryu_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_seal`
--

DROP TABLE IF EXISTS `jouryu_seal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_seal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '印章名称',
  `type` varchar(10) DEFAULT NULL COMMENT '印章类型',
  `bgname` varchar(50) DEFAULT NULL COMMENT '保管人',
  `bgid` varchar(50) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `sealimg` varchar(100) DEFAULT NULL COMMENT '对应印章图片',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `startdt` date DEFAULT NULL COMMENT '签发日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='印章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_seal`
--

LOCK TABLES `jouryu_seal` WRITE;
/*!40000 ALTER TABLE `jouryu_seal` DISABLE KEYS */;
INSERT INTO `jouryu_seal` VALUES (1,'琢瑜OA团队收款章','收款章','张飞','6','2018-07-12 17:18:34',0,'http://www.jouryu.com/images/zhang_ys.png',NULL,NULL,NULL),(2,'琢瑜OA团队公章','公章','管理员','1','2017-05-18 21:04:59',1,'http://www.jouryu.com/images/gz.png',NULL,NULL,NULL),(3,'琢瑜OA开发团队营业执照正本','营业执照','管理员','1','2018-09-15 09:08:36',0,'upload/2018-09/15_09083577.png',NULL,'2018-09-01',NULL);
/*!40000 ALTER TABLE `jouryu_seal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_sealapl`
--

DROP TABLE IF EXISTS `jouryu_sealapl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_sealapl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `sealid` smallint(6) DEFAULT '0' COMMENT '印章id',
  `sealname` varchar(50) DEFAULT NULL COMMENT '印章名称',
  `isout` tinyint(1) DEFAULT '0' COMMENT '是否外带',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='印章申请使用表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_sealapl`
--

LOCK TABLES `jouryu_sealapl` WRITE;
/*!40000 ALTER TABLE `jouryu_sealapl` DISABLE KEYS */;
INSERT INTO `jouryu_sealapl` VALUES (1,1,'2016-12-08 21:48:02',1,'管理员','2016-12-08','盖章啦啦啦！',5,1,1,'琢瑜OA团队收款章',0),(2,1,'2017-03-20 09:39:47',1,'管理员','2017-03-20','啦啦啦',1,1,1,'琢瑜OA团队收款章',0),(3,7,'2018-02-08 21:41:40',7,'赵子龙','2018-02-08','审批拉拉拉',0,1,1,'琢瑜OA团队收款章',0),(4,1,'2018-07-02 09:52:34',1,'管理员','2018-07-02','测试审核',0,1,1,'琢瑜OA团队收款章',0);
/*!40000 ALTER TABLE `jouryu_sealapl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_sjoin`
--

DROP TABLE IF EXISTS `jouryu_sjoin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_sjoin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `mid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type_mid` (`type`,`mid`) USING BTREE,
  KEY `type_sid` (`type`,`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='后台菜单权限';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_sjoin`
--

LOCK TABLES `jouryu_sjoin` WRITE;
/*!40000 ALTER TABLE `jouryu_sjoin` DISABLE KEYS */;
INSERT INTO `jouryu_sjoin` VALUES (3,'gm',1,134,'2016-12-26 19:58:34'),(4,'gm',1,135,'2016-12-26 19:58:34'),(15,'ug',6,1,'2017-07-08 18:51:03'),(23,'gu',1,7,NULL),(25,'gu',1,2,NULL),(27,'gu',1,4,NULL),(28,'gu',1,8,NULL),(33,'ug',5,2,'2018-09-22 10:50:17'),(36,'ug',3,1,'2018-09-22 21:56:09'),(38,'gu',3,2,NULL),(39,'gu',3,4,NULL),(40,'gu',3,5,NULL),(54,'gm',3,278,'2018-09-28 17:08:55'),(55,'um',4,85,'2018-09-28 17:09:18'),(56,'um',4,95,'2018-09-28 17:09:18'),(57,'um',4,149,'2018-09-28 17:09:18'),(58,'um',4,193,'2018-09-28 17:09:18'),(59,'um',4,194,'2018-09-28 17:09:18'),(60,'um',4,196,'2018-09-28 17:09:18'),(63,'ug',1,1,'2018-10-09 11:58:35'),(64,'ug',1,3,'2018-10-09 11:58:35');
/*!40000 ALTER TABLE `jouryu_sjoin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_subscribe`
--

DROP TABLE IF EXISTS `jouryu_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_subscribe` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '订阅标题',
  `cont` varchar(200) DEFAULT NULL COMMENT '订阅时提醒内容',
  `explain` varchar(100) DEFAULT NULL COMMENT '订阅说明',
  `optid` int(11) DEFAULT '0' COMMENT '操作人ID',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `optdt` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `suburl` varchar(1000) DEFAULT NULL COMMENT '订阅地址',
  `suburlpost` varchar(4000) DEFAULT NULL COMMENT '订阅地址post参数',
  `lastdt` datetime DEFAULT NULL COMMENT '最后运行时间',
  `shateid` varchar(300) DEFAULT NULL,
  `shatename` varchar(300) DEFAULT NULL COMMENT '共享给',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订阅管理表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_subscribe`
--

LOCK TABLES `jouryu_subscribe` WRITE;
/*!40000 ALTER TABLE `jouryu_subscribe` DISABLE KEYS */;
INSERT INTO `jouryu_subscribe` VALUES (1,'考勤统计简表({month-1})','{month-1}月份人员考勤统计简表','订阅上月考勤统计表',1,'管理员','2017-09-03 20:11:24',1,'aW5kZXgucGhwP2E9cHVibGljc3RvcmUmbT1rYW9xaW4mZD1tYWluJmFqYXhib29sPXRydWUmcm5kPTY0NjM0OQ::','dGFibGVuYW1lX2FiYz11c2VyaW5mbyZsb2FkY2k9MSZzdG9yZWJlZm9yZWFjdGlvbj1rcXRvdGFsYmVmb3Jlc2hvdyZzdG9yZWFmdGVyYWN0aW9uPWtxdG90YWxhZnRlcnNob3cmc3RhcnQ9MCZsaW1pdD0xMDAwMCZhdHlwZT1hbGwmZXhlY2xkb3duPXRydWUmZXhjZWx0aXRsZT3ogIPli6Tnu5.orqHnroDooagmZXhjZWxmaWVsZHM9ZGVwdG5hbWUsbmFtZSxyYW5raW5nLHN0YXRlLHN0YXRlMCxzdGF0ZTEsc3RhdGUyLGppYWJhbixvdXRjaSxlcnJjaSxzYmRheSx5c2JkYXksd2VpZGsmZXhjZWxoZWFkZXI96YOo6ZeoLOWnk!WQjSzogYzkvY0s5Lq65ZGY54q25oCBLOato!W4uCzov5.liLAs5pep6YCALOWKoOePrSjml7YpLOWkluWHuijmrKEpLOW8guW4uCjmrKEpLOW6lOS4iuePrSjlpKkpLOW3suS4iuePrSjlpKkpLOacquaJk!WNoSZtb250aD17bW9udGgtMX0:','2018-07-06 09:04:49',NULL,NULL);
/*!40000 ALTER TABLE `jouryu_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_subscribeinfo`
--

DROP TABLE IF EXISTS `jouryu_subscribeinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_subscribeinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0' COMMENT '对应定ID',
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `cont` varchar(200) DEFAULT NULL COMMENT '内容',
  `optdt` datetime DEFAULT NULL,
  `filepath` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `receid` varchar(4000) DEFAULT NULL COMMENT '发送给',
  `recename` varchar(200) DEFAULT NULL COMMENT '对应人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='订阅内容信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_subscribeinfo`
--

LOCK TABLES `jouryu_subscribeinfo` WRITE;
/*!40000 ALTER TABLE `jouryu_subscribeinfo` DISABLE KEYS */;
INSERT INTO `jouryu_subscribeinfo` VALUES (3,1,'考勤统计简表(2018-06)','2018-06月份人员考勤统计简表','2018-07-06 09:04:49','upload/logs/2018-07/考勤统计简表(2018-06)_06_090449.xls','1','管理员');
/*!40000 ALTER TABLE `jouryu_subscribeinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_task`
--

DROP TABLE IF EXISTS `jouryu_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_task` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `fenlei` varchar(10) DEFAULT NULL COMMENT '类型分类',
  `url` varchar(100) DEFAULT NULL COMMENT '运行地址',
  `type` varchar(100) DEFAULT NULL,
  `time` varchar(200) DEFAULT NULL,
  `ratecont` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `state` tinyint(1) DEFAULT '0' COMMENT '最后状态',
  `lastdt` datetime DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `lastcont` varchar(500) DEFAULT NULL,
  `explain` varchar(200) DEFAULT NULL COMMENT '说明',
  `todoid` varchar(200) DEFAULT NULL,
  `todoname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='计划任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_task`
--

LOCK TABLES `jouryu_task` WRITE;
/*!40000 ALTER TABLE `jouryu_task` DISABLE KEYS */;
INSERT INTO `jouryu_task` VALUES (1,'流程从新匹配','系统','flow,pipei','d,d','00:10:00,12:10:00','每天0,12点',1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(2,'数据备份','系统','sys,beifen','d','00:20:00','每天凌晨00:20',1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(3,'系统升级提醒','系统','sys,upgtx','d','00:25:00','每天凌晨00:25',1,0,NULL,NULL,0,NULL,NULL,NULL,'1,8','管理员,琢瑜OA客服'),(4,'5分钟运行1次','系统','minute5,run','i5','00','每5分钟运行一次',1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),(5,'考勤信息提醒','考勤','kaoqin,todo','d','09:25:00','每天9点',1,0,NULL,NULL,21,NULL,NULL,'在模块【考勤信息】下设置提醒到哪些平台。',NULL,NULL),(6,'用户数据更新','用户','sys,dataup','d','00:10:00','每天',1,0,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL),(7,'考勤分析','考勤','kaoqin,anay','d','02:15:00','每天2点',1,0,NULL,NULL,22,NULL,NULL,'分析全体人员昨天的考勤',NULL,NULL),(8,'员工合同提醒','人事','hr,httodo','d','00:05:00',NULL,1,0,NULL,NULL,30,NULL,NULL,'员工合同到期提醒，hr调用转正离职运行','4','大乔'),(9,'每天运行一次','系统','day,run','d','09:10:00','每天09:10',1,0,NULL,NULL,0,NULL,NULL,'任务到期,流程待办提醒',NULL,NULL),(10,'每月1号分析上月考勤','考勤','kaoqin,lmanay','m','01 05:00:00','每月1号5点',1,0,NULL,NULL,23,NULL,NULL,'分析上月全体人员考勤',NULL,NULL),(11,'日报统计分析','考勤','kaoqin,dailyfx','d','02:20:00',NULL,1,0,NULL,NULL,24,NULL,NULL,NULL,NULL,NULL),(12,'车辆信息提醒','车辆','carm,run','d','08:10:00',NULL,1,0,NULL,NULL,40,NULL,NULL,NULL,'4','大乔'),(13,'客户提醒','CRM','crm,run','d','08:15:00',NULL,1,0,NULL,NULL,50,NULL,NULL,'客户合同待收付款提醒',NULL,NULL),(14,'考勤每天运行','考勤','kaoqin,day','d','02:30:00',NULL,1,0,NULL,NULL,20,NULL,NULL,'年假自动添加等',NULL,NULL),(15,'读取打卡记录','考勤','kaoqin,getdk','h','15:00','每小时',1,0,NULL,NULL,25,NULL,NULL,'每小时从企业微信和钉钉上读取打卡记录',NULL,NULL),(16,'定时清理','系统','sys,clear','w7','23:55:00','每周日23点',1,0,NULL,NULL,0,NULL,NULL,'每周清理日志考勤分析等',NULL,NULL);
/*!40000 ALTER TABLE `jouryu_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_todo`
--

DROP TABLE IF EXISTS `jouryu_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '类型',
  `mess` varchar(500) DEFAULT NULL COMMENT '信息内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态@0|未读,1|已读',
  `optdt` datetime DEFAULT NULL COMMENT '时间',
  `table` varchar(50) DEFAULT NULL,
  `mid` int(11) DEFAULT NULL,
  `readdt` datetime DEFAULT NULL COMMENT '已读时间',
  `tododt` datetime DEFAULT NULL COMMENT '提醒时间',
  `modenum` varchar(20) DEFAULT NULL COMMENT '对应模块编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='提醒消息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_todo`
--

LOCK TABLES `jouryu_todo` WRITE;
/*!40000 ALTER TABLE `jouryu_todo` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_todo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_tovoid`
--

DROP TABLE IF EXISTS `jouryu_tovoid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_tovoid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  `type` tinyint(1) DEFAULT '0' COMMENT '0|作废,1|删除',
  `modename` varchar(20) DEFAULT NULL COMMENT '模块',
  `modeid` smallint(6) DEFAULT '0' COMMENT '对应模块id',
  `tonum` varchar(200) DEFAULT NULL COMMENT '作废单号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='单据申请作废表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_tovoid`
--

LOCK TABLES `jouryu_tovoid` WRITE;
/*!40000 ALTER TABLE `jouryu_tovoid` DISABLE KEYS */;
INSERT INTO `jouryu_tovoid` VALUES (3,1,'2016-12-19 13:49:22',1,'管理员','2016-12-19','在删',5,1,1,'单据作废申请',52,'ZF-20161219-0002'),(5,1,'2016-12-19 14:39:20',1,'管理员','2016-12-19','hhahhhhaaa',1,1,1,'单据作废申请',52,'ZF-20161219-0004');
/*!40000 ALTER TABLE `jouryu_tovoid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_userinfo`
--

DROP TABLE IF EXISTS `jouryu_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_userinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `deptname` varchar(30) DEFAULT NULL,
  `deptnames` varchar(100) DEFAULT NULL COMMENT '多部门',
  `deptallname` varchar(200) DEFAULT NULL,
  `ranking` varchar(20) DEFAULT NULL,
  `rankings` varchar(100) DEFAULT NULL COMMENT '多职位',
  `dkip` varchar(200) DEFAULT NULL,
  `dkmac` varchar(200) DEFAULT NULL,
  `state` tinyint(1) DEFAULT '0' COMMENT '状态来自userstate',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `workdate` date DEFAULT NULL COMMENT '入职时间',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `quitdt` date DEFAULT NULL COMMENT '离职日期',
  `iskq` tinyint(1) DEFAULT '1' COMMENT '是否考勤',
  `isdwdk` tinyint(1) DEFAULT '0' COMMENT '是否定位打卡',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `xueli` varchar(20) DEFAULT NULL,
  `birtype` tinyint(1) DEFAULT '0' COMMENT '0阳历1农历',
  `minzu` varchar(20) DEFAULT NULL COMMENT '民族',
  `hunyin` varchar(10) DEFAULT NULL COMMENT '婚姻',
  `jiguan` varchar(20) DEFAULT NULL COMMENT '籍贯',
  `nowdizhi` varchar(50) DEFAULT NULL COMMENT '现住址',
  `housedizhi` varchar(50) DEFAULT NULL COMMENT '家庭地址',
  `syenddt` date DEFAULT NULL COMMENT '试用期到',
  `positivedt` date DEFAULT NULL COMMENT '转正日期',
  `bankname` varchar(50) DEFAULT NULL COMMENT '开户行',
  `banknum` varchar(30) DEFAULT NULL COMMENT '工资卡帐号',
  `zhaopian` varchar(100) DEFAULT NULL COMMENT '照片',
  `idnum` varchar(30) DEFAULT NULL COMMENT '身份证号',
  `spareman` varchar(30) DEFAULT NULL COMMENT '备用联系人',
  `sparetel` varchar(50) DEFAULT NULL COMMENT '备用联系人电话',
  `isdaily` tinyint(4) DEFAULT '1' COMMENT '是否需要写日报',
  `companyid` int(11) DEFAULT '0' COMMENT '所在公司单位Id',
  `finger` varchar(20) DEFAULT NULL COMMENT '关联考勤机人员编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户档案表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_userinfo`
--

LOCK TABLES `jouryu_userinfo` WRITE;
/*!40000 ALTER TABLE `jouryu_userinfo` DISABLE KEYS */;
INSERT INTO `jouryu_userinfo` VALUES (1,'管理员','A001','开发部','财务部','琢瑜OA开发团队/开发部','项目主管','财务总监','127.0.0.1',NULL,1,'男','0592-1234569','15800000023','2016-06-01','admin@jouryu.com',NULL,1,0,'1996-03-22','博士后',0,'汉','未婚','山东','烟台','烟台','2016-10-01','2016-10-02','烟台银行','6225****','images/face.jpg','3501222222','琢瑜清泉','10086',1,1,NULL),(2,'貂蝉',NULL,'财务部',NULL,'琢瑜OA开发团队/财务部','财务总监',NULL,NULL,NULL,1,'女','0592-123456','15800000007','2016-08-09',NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'images/diaochan.jpg',NULL,NULL,NULL,1,2,NULL),(3,'小乔',NULL,'财务部',NULL,'琢瑜OA开发团队/财务部','出纳',NULL,NULL,NULL,1,'女',NULL,'15800000001','2017-05-02',NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2,NULL),(4,'大乔',NULL,'行政人事部',NULL,'琢瑜OA开发团队/行政人事部','人事主管',NULL,NULL,NULL,1,'女',NULL,'15800000002','2017-07-01',NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,2,NULL),(5,'琢瑜清泉',NULL,'管理层',NULL,'琢瑜OA开发团队/管理层','董事长',NULL,NULL,NULL,1,'男',NULL,'15800000003','2015-11-01',NULL,NULL,0,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,NULL),(6,'张飞',NULL,'开发部',NULL,'琢瑜OA开发团队/开发部','程序员',NULL,NULL,NULL,1,'男',NULL,'15800000004','2017-07-01',NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'招商银行','6228123456',NULL,NULL,NULL,NULL,1,1,NULL),(7,'赵子龙',NULL,'开发部',NULL,'琢瑜OA开发团队/开发部','高级程序员',NULL,NULL,NULL,1,'男',NULL,'15800000005','2016-07-01',NULL,NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL),(8,'琢瑜OA客服',NULL,'开发部',NULL,'琢瑜OA开发团队/开发部','客服',NULL,'192.168.1.63','64:00:6a:49:20:4b',0,'男',NULL,'15800000006','2016-07-01','wx001@jouryu.com',NULL,1,0,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,NULL);
/*!40000 ALTER TABLE `jouryu_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_userinfos`
--

DROP TABLE IF EXISTS `jouryu_userinfos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_userinfos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表userinfo.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `startdt` date DEFAULT NULL COMMENT '开始日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  `rank` varchar(50) DEFAULT NULL COMMENT '职位',
  `unitname` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `sslx` tinyint(1) DEFAULT '0' COMMENT '0工作经历,1教育经历',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='人员档案子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_userinfos`
--

LOCK TABLES `jouryu_userinfos` WRITE;
/*!40000 ALTER TABLE `jouryu_userinfos` DISABLE KEYS */;
INSERT INTO `jouryu_userinfos` VALUES (1,1,0,'2017-01-05','2017-01-12','程序员','微信',0),(2,1,0,'2017-01-05','2017-01-27','研究生','哈弗',1),(3,1,1,'2017-01-13','2017-01-20','架构师','微软',0),(4,1,1,'2017-01-25','2017-01-31','博士','剑桥',1),(5,1,2,'2017-01-11','2017-01-31','博士后','清华',1),(6,1,2,'2017-05-01','2017-05-31','架构师','微软',0);
/*!40000 ALTER TABLE `jouryu_userinfos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_userract`
--

DROP TABLE IF EXISTS `jouryu_userract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_userract` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `startdt` date DEFAULT NULL COMMENT '开始日期',
  `enddt` date DEFAULT NULL COMMENT '截止日期',
  `uid` smallint(6) DEFAULT '0',
  `sort` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `explain` varchar(500) DEFAULT NULL,
  `httype` varchar(30) DEFAULT NULL COMMENT '合同类型',
  `state` tinyint(1) DEFAULT '0' COMMENT '0|待执行,1|生效中,2|已终止,3|已过期',
  `tqenddt` date DEFAULT NULL COMMENT '提前终止',
  `company` varchar(50) DEFAULT NULL COMMENT '签署公司',
  `uname` varchar(20) DEFAULT NULL COMMENT '签署人',
  `companyid` smallint(6) DEFAULT '0' COMMENT '签署公司Id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户合同表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_userract`
--

LOCK TABLES `jouryu_userract` WRITE;
/*!40000 ALTER TABLE `jouryu_userract` DISABLE KEYS */;
INSERT INTO `jouryu_userract` VALUES (1,'第一次签劳动合同','2015-10-01','2018-07-31',1,0,'2018-07-11 12:11:51',NULL,'劳动合同',2,'2018-07-10','琢瑜OA开发团队','管理员',1),(2,'合同','2015-10-01','2016-09-30',6,0,'2017-07-08 15:40:20','嗯嗯嗯','劳动合同',3,NULL,'琢瑜OA开发团队','张飞',1),(3,'合同','2015-10-01','2018-07-31',3,0,'2018-07-28 23:15:45','谔谔','劳动合同',3,NULL,'琢瑜OA开发团队','小乔',1);
/*!40000 ALTER TABLE `jouryu_userract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_vcard`
--

DROP TABLE IF EXISTS `jouryu_vcard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_vcard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `optdt` datetime DEFAULT NULL,
  `uid` smallint(6) DEFAULT '0',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `gname` varchar(20) DEFAULT NULL COMMENT '所在组名',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `unitname` varchar(50) DEFAULT NULL COMMENT '单位名称',
  `sex` varchar(5) DEFAULT NULL COMMENT '性别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='个人通讯录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_vcard`
--

LOCK TABLES `jouryu_vcard` WRITE;
/*!40000 ALTER TABLE `jouryu_vcard` DISABLE KEYS */;
INSERT INTO `jouryu_vcard` VALUES (2,'曹操',NULL,'2017-08-22 16:17:49',1,NULL,'caocao@jouryu.com','敌人','管理员',NULL,0,'魏国','男'),(3,'诸葛亮',NULL,'2016-12-20 11:27:08',1,NULL,'zgl@jouryu.com','同事','管理员',NULL,0,'蜀国',NULL),(4,'管理员',NULL,'2016-12-20 11:31:21',8,NULL,'admin@jouryu.com','同事','琢瑜OA客服',NULL,0,'琢瑜OA开发团队',NULL),(5,'管理员',NULL,'2016-12-21 14:36:17',1,NULL,'admin@jouryu.com',NULL,'管理员',NULL,0,NULL,NULL),(7,'关羽','15812345678','2017-08-22 16:19:20',1,'0592-123456','guanyu@jouryu.com','同事','管理员','荆州市',0,'蜀国荆州守将','男');
/*!40000 ALTER TABLE `jouryu_vcard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_worc`
--

DROP TABLE IF EXISTS `jouryu_worc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_worc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '文档分区名称',
  `recename` varchar(500) DEFAULT NULL COMMENT '可查看人员',
  `receid` varchar(500) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `guanname` varchar(500) DEFAULT NULL COMMENT '管理人员',
  `guanid` varchar(500) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `uid` int(11) DEFAULT '0' COMMENT '所属用户',
  `optname` varchar(30) DEFAULT NULL COMMENT '创建人',
  `uptype` varchar(100) DEFAULT NULL COMMENT '限制上传类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='文档分区表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_worc`
--

LOCK TABLES `jouryu_worc` WRITE;
/*!40000 ALTER TABLE `jouryu_worc` DISABLE KEYS */;
INSERT INTO `jouryu_worc` VALUES (1,'公共文档区','琢瑜OA开发团队','d1',0,'琢瑜OA开发团队','d1','2018-09-13 10:50:01',1,'管理员',NULL),(2,'琢瑜OA开发团队','琢瑜OA开发团队','d1',1,NULL,NULL,'2017-11-17 20:25:42',1,'管理员',NULL),(4,'小乔的文件分区','小乔','u3',0,'小乔','u3','2017-11-20 11:50:04',3,'小乔',NULL);
/*!40000 ALTER TABLE `jouryu_worc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_word`
--

DROP TABLE IF EXISTS `jouryu_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `fileid` int(11) DEFAULT '0',
  `shateid` varchar(200) DEFAULT NULL,
  `shate` varchar(200) DEFAULT NULL COMMENT '分享给我的',
  `optdt` datetime DEFAULT NULL,
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应类型',
  `cid` int(11) DEFAULT '0' COMMENT '文档分区ID',
  `type` tinyint(1) DEFAULT '0' COMMENT '0文件,1文件夹',
  `sort` smallint(1) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`),
  KEY `type` (`type`),
  KEY `typeid` (`typeid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文档表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_word`
--

LOCK TABLES `jouryu_word` WRITE;
/*!40000 ALTER TABLE `jouryu_word` DISABLE KEYS */;
INSERT INTO `jouryu_word` VALUES (1,NULL,1,'管理员',1,'d1','琢瑜OA开发团队','2016-11-23 22:26:22',0,1,0,0),(2,NULL,1,'管理员',2,'d1','琢瑜OA开发团队','2016-11-23 22:26:27',0,1,0,0),(3,'员工资料',1,'管理员',0,'d2','开发部',NULL,0,1,1,0);
/*!40000 ALTER TABLE `jouryu_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_work`
--

DROP TABLE IF EXISTS `jouryu_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(30) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `type` varchar(20) DEFAULT NULL COMMENT '任务类型',
  `grade` varchar(10) DEFAULT NULL COMMENT '任务等级',
  `distid` varchar(50) DEFAULT NULL,
  `dist` varchar(50) DEFAULT NULL COMMENT '分配给',
  `explain` varchar(4000) DEFAULT NULL COMMENT '说明',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `optid` int(11) DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人',
  `startdt` datetime DEFAULT NULL COMMENT '开始时间',
  `enddt` datetime DEFAULT NULL COMMENT '结束时间',
  `state` tinyint(1) DEFAULT '0' COMMENT '状态',
  `txdt` datetime DEFAULT NULL,
  `fen` smallint(6) DEFAULT '0' COMMENT '分值',
  `status` tinyint(1) DEFAULT '1',
  `projectid` smallint(6) DEFAULT '0' COMMENT '对应项目Id',
  `ddid` varchar(50) DEFAULT NULL,
  `ddname` varchar(50) DEFAULT NULL COMMENT '督导人员，不填默认上级',
  `score` smallint(6) DEFAULT '0' COMMENT '任务分数',
  `mark` smallint(6) DEFAULT '0' COMMENT '得分',
  `uid` smallint(6) DEFAULT '0',
  `applydt` date DEFAULT NULL COMMENT '申请日期',
  `isturn` tinyint(1) DEFAULT '1' COMMENT '是否提交',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_work`
--

LOCK TABLES `jouryu_work` WRITE;
/*!40000 ALTER TABLE `jouryu_work` DISABLE KEYS */;
INSERT INTO `jouryu_work` VALUES (1,NULL,'流程单据填写时建议添加保存草稿功能','改进','低','1','管理员',NULL,'2017-07-24 10:02:38',1,'管理员','2017-03-29 10:57:14',NULL,0,NULL,0,5,2,NULL,NULL,0,0,1,'2017-03-29',1),(2,NULL,'琢瑜OA功能开发','改进','中','1','管理员','1、添加编辑器插件。\n','2017-04-06 14:07:50',1,'管理员','2017-04-06 14:07:16',NULL,0,NULL,0,1,2,NULL,NULL,0,0,1,'2017-04-06',1),(3,NULL,'高级搜索添加','改进','中','1','管理员','哈哈哈','2017-04-18 11:43:47',1,'管理员','2017-04-10 17:14:14',NULL,0,NULL,0,1,2,NULL,NULL,0,45,1,'2017-04-10',1),(5,NULL,'标题改进','bug','低','7','赵子龙',NULL,'2017-08-15 17:43:16',1,'管理员','2017-08-12 17:31:18',NULL,0,NULL,0,3,3,'3','小乔',0,0,1,'2017-08-12',1),(6,NULL,'给你个任务哦','bug','低','1','管理员','阿拉拉拉','2018-07-05 11:29:52',7,'赵子龙','2018-07-05 11:29:27',NULL,0,NULL,0,6,4,NULL,NULL,0,0,7,'2018-07-05',1);
/*!40000 ALTER TABLE `jouryu_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jouryu_wouser`
--

DROP TABLE IF EXISTS `jouryu_wouser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jouryu_wouser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT '0' COMMENT '绑定用户Id',
  `openid` varchar(100) DEFAULT '微信openid',
  `nickname` varchar(30) DEFAULT NULL COMMENT '微信昵称',
  `sex` tinyint(1) DEFAULT '1' COMMENT '性别1男2女0未知',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `city` varchar(30) DEFAULT NULL COMMENT '城市',
  `country` varchar(30) DEFAULT NULL COMMENT '国家',
  `headimgurl` varchar(300) DEFAULT NULL COMMENT '微信头像',
  `adddt` datetime DEFAULT NULL COMMENT '添加时间',
  `optdt` datetime DEFAULT NULL COMMENT '操作时间',
  `ip` varchar(50) DEFAULT NULL COMMENT 'IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jouryu_wouser`
--

LOCK TABLES `jouryu_wouser` WRITE;
/*!40000 ALTER TABLE `jouryu_wouser` DISABLE KEYS */;
/*!40000 ALTER TABLE `jouryu_wouser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10 18:22:14
