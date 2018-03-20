/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50540
Source Host           : localhost:3306
Source Database       : oa0003

Target Server Type    : MYSQL
Target Server Version : 50540
File Encoding         : 65001

Date: 2017-09-17 14:19:41
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `htmlvi_admin`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_admin`;
CREATE TABLE `htmlvi_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `user` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `name` varchar(50) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `loginci` smallint(6) DEFAULT '0' COMMENT '登录次数',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否启用',
  `type` tinyint(1) DEFAULT '0' COMMENT '0普通1管理员',
  `sex` varchar(10) DEFAULT NULL COMMENT '性别',
  `tel` varchar(50) DEFAULT NULL COMMENT '电话',
  `face` varchar(50) DEFAULT NULL,
  `deptid` int(11) DEFAULT '0' COMMENT '主部门ID',
  `deptname` varchar(50) DEFAULT NULL COMMENT '部门',
  `deptids` varchar(30) DEFAULT NULL COMMENT '其他部门ID',
  `deptnames` varchar(100) DEFAULT NULL COMMENT '子部门名称',
  `deptallname` varchar(100) DEFAULT NULL COMMENT '部门全部路径',
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
  PRIMARY KEY (`id`,`user`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of htmlvi_admin
-- ----------------------------
INSERT INTO `htmlvi_admin` VALUES ('1', null, 'admin', '管理员', 'e10adc3949ba59abbe56e057f20f883e', '1852', '1', '1', '男', '0592-1234567', 'upload/face/1.jpg', '2', '开发部', null, null, 'htmlvi开发团队/开发部', '5', '磐石', '项目主管', '0', '[1],[2]', '[5]', null, '15800000123', '1', '2016-06-01', null, '2017-03-08 09:52:30', null, null, null, '0', 'guanliyuan', null, '1', '1', '2017-09-17 14:16:51');
INSERT INTO `htmlvi_admin` VALUES ('2', null, 'diaochan', '貂蝉', 'e10adc3949ba59abbe56e057f20f883e', '67', '1', '0', '女', '0592-123456', 'upload/face/2.jpg', '3', '财务部', null, null, 'htmlvi开发团队/财务部', '5', '磐石', '财务总监', '0', '[1],[3]', '[5]', null, '15800000007', '1', '2016-08-09', null, null, null, null, null, '0', 'diaochan', null, '0', '0', null);
INSERT INTO `htmlvi_admin` VALUES ('3', null, 'xiaoqiao', '小乔', 'e10adc3949ba59abbe56e057f20f883e', '116', '1', '0', '女', null, 'upload/face/3.jpg', '3', '财务部', null, null, 'htmlvi开发团队/财务部', '2', '貂蝉', '出纳', '0', '[1],[3]', '[5],[2]', null, '15800000001', '1', '2017-05-02', null, '2016-08-30 20:34:23', null, null, null, '0', 'xiaoqiao', null, '0', '0', null);
INSERT INTO `htmlvi_admin` VALUES ('4', null, 'daqiao', '大乔', 'e10adc3949ba59abbe56e057f20f883e', '178', '1', '0', '女', null, 'upload/face/4.jpg', '4', '行政人事部', null, null, 'htmlvi开发团队/行政人事部', '5', '磐石', '人事主管', '0', '[1],[4]', '[5]', null, '15800000002', '1', '2017-07-01', null, '2016-10-20 22:27:51', null, null, null, '0', 'daqiao', null, '0', '0', null);
INSERT INTO `htmlvi_admin` VALUES ('5', null, 'rock', '磐石', 'e10adc3949ba59abbe56e057f20f883e', '184', '1', '0', '男', null, 'upload/face/5.jpg', '5', '管理层', null, null, 'htmlvi开发团队/管理层', null, null, '董事长', '0', '[1],[5]', null, null, '15800000009', '1', '2017-07-01', null, null, null, null, null, '0', 'panshi', null, '1', '0', null);
INSERT INTO `htmlvi_admin` VALUES ('6', null, 'zhangfei', '张飞', 'e10adc3949ba59abbe56e057f20f883e', '59', '1', '0', '男', null, 'upload/face/6.jpg', '2', '开发部', null, null, 'htmlvi开发团队/开发部', '1', '管理员', '程序员', '100', '[1],[2]', '[5],[1]', '1,2', '15800000004', '1', '2017-07-01', null, '2016-11-01 20:15:52', null, null, null, '0', 'zhangfei', null, '1', '0', null);
INSERT INTO `htmlvi_admin` VALUES ('7', null, 'zhaozl', '赵子龙', 'e10adc3949ba59abbe56e057f20f883e', '27', '1', '0', '男', null, 'upload/face/7.jpg', '2', '开发部', null, null, 'htmlvi开发团队/开发部', '1', '管理员', '高级程序员', '100', '[1],[2]', '[5],[1]', '1', '15800000005', '1', '2016-07-01', null, '2017-06-28 15:34:26', null, null, null, '0', 'zhaozilong', null, '1', '0', null);
INSERT INTO `htmlvi_admin` VALUES ('8', null, 'htmlvi', 'htmlvi客服', '6846860684f05029abccc09a53cd66f1', '289', '1', '1', '男', null, 'upload/face/8.jpg', '2', '开发部', null, null, 'htmlvi开发团队/开发部', '1', '管理员', '客服', '200', '[1],[2]', '[5],[1]', null, '15800000006', '1', '2016-07-01', null, null, null, 'htmlvi829', null, '2', 'htmlvikefu', null, '1', '0', null);

-- ----------------------------
-- Table structure for `htmlvi_assetm`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_assetm`;
CREATE TABLE `htmlvi_assetm` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='固定资产表';

-- ----------------------------
-- Records of htmlvi_assetm
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_book`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_book`;
CREATE TABLE `htmlvi_book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '书名',
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应分类',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图书表';

-- ----------------------------
-- Records of htmlvi_book
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_bookborrow`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_bookborrow`;
CREATE TABLE `htmlvi_bookborrow` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='图书借阅';

-- ----------------------------
-- Records of htmlvi_bookborrow
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_carm`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_carm`;
CREATE TABLE `htmlvi_carm` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='车辆表';

-- ----------------------------
-- Records of htmlvi_carm
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_carmang`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_carmang`;
CREATE TABLE `htmlvi_carmang` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='车辆维修保养记录表';

-- ----------------------------
-- Records of htmlvi_carmang
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_carmrese`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_carmrese`;
CREATE TABLE `htmlvi_carmrese` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='车辆预定';

-- ----------------------------
-- Records of htmlvi_carmrese
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_carms`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_carms`;
CREATE TABLE `htmlvi_carms` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='车辆信息登记表';

-- ----------------------------
-- Records of htmlvi_carms
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_chargems`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_chargems`;
CREATE TABLE `htmlvi_chargems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) DEFAULT '0',
  `mid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `updatedt` datetime DEFAULT NULL,
  `key` varchar(200) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT '0' COMMENT '对应安装模块Id',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统升级';

-- ----------------------------
-- Records of htmlvi_chargems
-- ----------------------------
INSERT INTO `htmlvi_chargems` VALUES ('1', '0', '1', '2016-12-28 15:24:19', '2017-08-31 13:47:45', null, '1');
INSERT INTO `htmlvi_chargems` VALUES ('2', '1', '1', '2016-12-28 15:21:14', '2017-08-31 13:47:45', null, '0');

-- ----------------------------
-- Table structure for `htmlvi_company`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_company`;
CREATE TABLE `htmlvi_company` (
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='公司单位表';

-- ----------------------------
-- Records of htmlvi_company
-- ----------------------------
INSERT INTO `htmlvi_company` VALUES ('1', 'htmlvi开发团队', null, '0592-123456', '0592-123456', '0', '0', '5', '磐石', '软件园', '厦门');

-- ----------------------------
-- Table structure for `htmlvi_custfina`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_custfina`;
CREATE TABLE `htmlvi_custfina` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户收付款';

-- ----------------------------
-- Records of htmlvi_custfina
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_customer`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_customer`;
CREATE TABLE `htmlvi_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` varchar(20) DEFAULT NULL COMMENT '客户类型',
  `uid` smallint(6) DEFAULT '0',
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
  `status` tinyint(4) DEFAULT '1',
  `adddt` datetime DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户';

-- ----------------------------
-- Records of htmlvi_customer
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_custract`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_custract`;
CREATE TABLE `htmlvi_custract` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户合同';

-- ----------------------------
-- Records of htmlvi_custract
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_custsale`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_custsale`;
CREATE TABLE `htmlvi_custsale` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='销售机会';

-- ----------------------------
-- Records of htmlvi_custsale
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_daily`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_daily`;
CREATE TABLE `htmlvi_daily` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='日报';

-- ----------------------------
-- Records of htmlvi_daily
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_dailyfx`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_dailyfx`;
CREATE TABLE `htmlvi_dailyfx` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='日报分析统计表';

-- ----------------------------
-- Records of htmlvi_dailyfx
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_dept`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_dept`;
CREATE TABLE `htmlvi_dept` (
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='组织结构部门';

-- ----------------------------
-- Records of htmlvi_dept
-- ----------------------------
INSERT INTO `htmlvi_dept` VALUES ('1', null, 'htmlvi开发团队', '0', '0', null, null, null);
INSERT INTO `htmlvi_dept` VALUES ('2', 'dev', '开发部', '1', '1', null, null, null);
INSERT INTO `htmlvi_dept` VALUES ('3', null, '财务部', '1', '2', null, null, null);
INSERT INTO `htmlvi_dept` VALUES ('4', null, '行政人事部', '1', '3', null, null, null);
INSERT INTO `htmlvi_dept` VALUES ('5', null, '管理层', '1', '0', null, null, null);

-- ----------------------------
-- Table structure for `htmlvi_editrecord`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_editrecord`;
CREATE TABLE `htmlvi_editrecord` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='修改记录表';

-- ----------------------------
-- Records of htmlvi_editrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_emailm`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_emailm`;
CREATE TABLE `htmlvi_emailm` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件主表';

-- ----------------------------
-- Records of htmlvi_emailm
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_emails`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_emails`;
CREATE TABLE `htmlvi_emails` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件子表';

-- ----------------------------
-- Records of htmlvi_emails
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_email_cont`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_email_cont`;
CREATE TABLE `htmlvi_email_cont` (
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
  `attachname` varchar(500) DEFAULT NULL COMMENT '福建名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统发送邮件内容';

-- ----------------------------
-- Records of htmlvi_email_cont
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_file`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_file`;
CREATE TABLE `htmlvi_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='上传文件记录表';

-- ----------------------------
-- Records of htmlvi_file
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_fininfom`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_fininfom`;
CREATE TABLE `htmlvi_fininfom` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='费用报销';

-- ----------------------------
-- Records of htmlvi_fininfom
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_fininfos`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_fininfos`;
CREATE TABLE `htmlvi_fininfos` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='费用报销子表';

-- ----------------------------
-- Records of htmlvi_fininfos
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_flow_bill`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_bill`;
CREATE TABLE `htmlvi_flow_bill` (
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
  `nowcourseid` smallint(6) DEFAULT '0' COMMENT '当前步骤Id',
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
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='流程单据';

-- ----------------------------
-- Records of htmlvi_flow_bill
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_flow_checks`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_checks`;
CREATE TABLE `htmlvi_flow_checks` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单据的审核人';

-- ----------------------------
-- Records of htmlvi_flow_checks
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_flow_cname`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_cname`;
CREATE TABLE `htmlvi_flow_cname` (
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='自定义审核人组';

-- ----------------------------
-- Records of htmlvi_flow_cname
-- ----------------------------
INSERT INTO `htmlvi_flow_cname` VALUES ('1', 'group1', '审核人员分组1', '1', '管理员', '0', 'd5', '管理层', '0');
INSERT INTO `htmlvi_flow_cname` VALUES ('2', 'group', '审核人员分组', '5', '磐石', '1', 'd1', '信呼开发团队', '0');
INSERT INTO `htmlvi_flow_cname` VALUES ('4', 'wewwe', null, '4', '大乔', '1', 'd3', '财务部', '22');

-- ----------------------------
-- Table structure for `htmlvi_flow_course`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_course`;
CREATE TABLE `htmlvi_flow_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT '0' COMMENT '上级ID',
  `nid` int(11) DEFAULT '0' COMMENT '下级步骤ID',
  `setid` smallint(6) DEFAULT '0' COMMENT '模块ID',
  `name` varchar(20) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `checktype` varchar(20) DEFAULT NULL,
  `checktypeid` varchar(200) DEFAULT NULL,
  `checktypename` varchar(200) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `whereid` smallint(6) DEFAULT '0' COMMENT '模块条件的Id',
  `where` varchar(100) DEFAULT NULL,
  `explain` varchar(100) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `courseact` varchar(50) DEFAULT NULL COMMENT '审核动作',
  `checkshu` tinyint(2) DEFAULT '1' COMMENT '至少几人审核 ,0全部',
  `checkfields` varchar(500) DEFAULT NULL COMMENT '审核处理表单',
  `pid` smallint(6) DEFAULT '0' COMMENT '上级Id(弃用)',
  `optid` smallint(6) DEFAULT '0' COMMENT '操作人id',
  `optname` varchar(20) DEFAULT NULL COMMENT '操作人姓名',
  `receid` varchar(200) DEFAULT NULL COMMENT '适用对象id',
  `recename` varchar(200) DEFAULT NULL COMMENT '适用对象',
  `iszf` tinyint(1) DEFAULT '0' COMMENT '是否可以转给他人办理',
  `isqm` tinyint(1) DEFAULT '0' COMMENT '手写签名0不用,1都需要,2只需要通过,3只需要不通过',
  PRIMARY KEY (`id`),
  KEY `setid` (`setid`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='流程步骤表';

-- ----------------------------
-- Records of htmlvi_flow_course
-- ----------------------------
INSERT INTO `htmlvi_flow_course` VALUES ('1', '0', '0', '5', '上级审核', null, 'super', null, null, '0', '0', null, null, '2016-07-02 21:05:00', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('2', '1', '0', '5', '人事审核', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-07-07 22:14:24', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('3', '0', '0', '6', '上级审核', null, 'super', null, null, '0', '0', null, null, '2016-07-02 22:25:29', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('4', '2', '0', '5', '总经理审核', null, 'user', '5', '磐石', '0', '2', null, '超过3天24小时', '2016-09-25 14:53:34', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('5', '0', '0', '23', '上级审核', null, 'super', null, null, '0', '0', null, null, '2016-08-27 08:46:27', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('6', '0', '0', '24', '行政发放', null, 'user', '4', '大乔', '0', '0', null, null, '2017-08-10 11:42:24', '1', '发放,驳回|red', '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('7', '0', '0', '11', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-09-02 17:36:36', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('8', '7', '0', '11', '人事审核', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-09-02 17:38:15', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('9', '8', '0', '11', '财务审核', null, 'rank', null, '财务总监', '0', '0', null, null, '2016-09-02 17:39:07', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('10', '0', '0', '25', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-09-03 09:26:32', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('11', '10', '0', '25', '人事审核', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-09-03 09:27:00', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('12', '11', '0', '25', '财务审核', null, 'rank', null, '财务总监', '0', '0', null, null, '2016-09-03 09:27:26', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('13', '0', '0', '26', '上级审核', null, 'super', null, null, '0', '0', null, null, '2016-09-03 09:27:55', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('14', '0', '0', '26', '人事审核', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-09-03 09:28:18', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('15', '0', '0', '26', '财务审核', null, 'rank', null, '财务总监', '0', '0', null, null, '2016-09-03 09:28:35', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('16', '0', '0', '27', '财务确认', null, 'rank', null, '财务总监', '0', '0', null, null, '2016-09-03 15:29:45', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('17', '16', '0', '27', '付款确认', null, 'apply', null, null, '0', '0', null, null, '2016-09-03 15:32:25', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('18', '17', '0', '27', '确认收款', null, 'rank', null, '财务总监', '0', '0', null, null, '2016-09-03 15:33:23', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('19', '0', '0', '28', '上级审批', null, 'super', null, null, '0', '0', null, null, '2017-02-08 14:39:04', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('20', '19', '0', '28', '行政审批', null, 'cname', 'group1', '审核人员分组1', '0', '0', null, null, '2017-06-20 16:43:37', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('21', '0', '0', '19', '上级审批', null, 'super', null, null, '0', '0', null, null, '2017-02-22 16:32:06', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('22', '21', '0', '19', '办公室批办', null, 'change', null, null, '0', '0', null, null, '2017-08-30 20:26:12', '1', null, '1', 'recename', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('23', '22', '0', '19', '领导审批', null, 'change', null, null, '0', '0', null, null, '2016-09-05 18:47:03', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('24', '0', '0', '20', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-09-05 18:49:16', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('25', '24', '0', '20', '办公室批办', null, 'change', null, null, '0', '0', null, null, '2016-09-05 18:49:41', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('26', '25', '0', '20', '领导审批', null, 'change', null, null, '0', '0', null, null, '2016-09-05 18:49:49', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('27', '0', '0', '32', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-10-06 20:43:27', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('28', '0', '0', '32', '人事审批', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-10-07 10:24:03', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('29', '0', '0', '33', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-10-07 11:41:01', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('30', '29', '0', '33', '人事审批', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-10-07 11:41:17', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('31', '0', '0', '34', '人事审核', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-10-07 19:24:54', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('32', '0', '0', '38', '人事审批', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-10-19 21:48:34', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('33', '0', '0', '37', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-10-19 22:28:02', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('34', '33', '0', '37', '人事审批', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-10-19 22:28:17', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('35', '0', '0', '39', '当事人确认', 'objectque', 'auto', null, null, '0', '0', null, null, '2016-10-20 20:52:15', '1', '无异议,不认可', '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('36', '35', '0', '39', '人事审批', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-10-20 20:53:10', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('37', '0', '0', '44', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-10-28 11:29:50', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('38', '37', '0', '44', '行政确认', null, 'user', '3', '小乔', '0', '0', null, null, '2017-08-25 20:03:02', '1', null, '1', 'kmstart,carid,carnum', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('39', '0', '0', '46', '行政确认', null, 'user', '3', '小乔', '0', '0', null, null, '2017-02-23 09:14:15', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('40', '39', '0', '46', '借阅人归返', null, 'apply', null, null, '0', '0', null, null, '2016-10-29 22:26:13', '1', '确认归还', '1', 'ghtime', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('41', '0', '0', '49', '上级审批', null, 'super', null, null, '0', '0', null, null, '2016-12-08 21:32:07', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('42', '41', '0', '49', '保管人确认', 'bgque', 'auto', null, null, '0', '0', null, null, '2016-12-08 21:33:08', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('43', '42', '0', '49', '申请人确认', null, 'apply', null, null, '0', '0', null, null, '2016-12-08 21:56:33', '1', '已盖章,放弃盖章', '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('44', '0', '0', '51', '上级审核', null, 'super', null, null, '0', '0', null, null, '2016-12-16 18:02:01', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('45', '44', '0', '51', '人事确认', null, 'rank', null, '人事主管', '0', '0', null, null, '2016-12-16 18:02:21', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('46', '0', '0', '52', '上级审核', null, 'super', null, null, '0', '0', null, null, '2016-12-19 09:58:39', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('47', '0', '0', '24', '行政确认', null, 'rank', null, '人事主管', '0', '0', null, null, '2017-08-10 11:32:14', '1', null, '1', null, '0', '0', null, 'd3,d4', '财务部,行政人事部', '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('48', '47', '0', '24', '行政发放', null, 'user', '3', '小乔', '1', '0', null, null, '2017-08-09 16:58:39', '1', '发放,驳回|red', '1', null, '0', '0', null, 'u3', '小乔', '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('50', '38', '0', '44', '驾驶员归还', 'jias', 'auto', null, null, '0', '0', null, null, '2017-03-01 14:58:11', '1', '已归还', '1', 'kmend,returndt', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('51', '0', '52', '4', '任务分配', null, 'super', null, null, '0', '4', null, '未分配时', '2017-08-15 11:19:33', '1', '同意分配|green|3,不通过|red', '1', 'dist', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('52', '0', '0', '4', '执行人执行', 'run', 'auto', null, null, '0', '0', null, '已分配', '2017-08-12 16:16:16', '1', '已完成||6,无法完成|red,执行中||4', '1', null, '0', '0', null, null, null, '1', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('53', '52', '0', '4', '提交人验证', null, 'opt', null, null, '0', '0', null, null, '2017-08-15 17:46:47', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('55', '0', '0', '59', '行政确认', null, 'rank', null, '人事主管', '0', '0', null, null, '2017-06-26 21:26:30', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('56', '0', '0', '60', '行政确认', null, 'rank', null, '人事主管', '0', '0', null, null, '2017-06-27 13:03:25', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('57', '0', '0', '60', '驾驶员处理', 'jia', 'auto', null, null, '0', '0', null, null, '2017-06-27 13:04:24', '1', null, '1', 'address,bujian,kmshu', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('58', '0', '0', '60', '驾驶员取车', 'jia', 'auto', null, null, '0', '0', null, null, '2017-06-27 13:05:41', '1', null, '1', 'nextdt,kmnshu,enddt,money', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('59', '3', '0', '6', '核算加班费', null, 'rank', null, '人事主管', '0', '129', null, null, '2017-06-29 10:05:49', '1', null, '1', 'jiafee', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('60', '0', '0', '62', '行政人员检查', null, 'user', '4', '大乔', '0', '0', null, null, '2017-07-07 13:16:02', '1', '确认', '1', 'iswx,reasons,money,wxname', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('61', '60', '0', '62', '外修确认', null, 'user', '4', '大乔', '0', '140', null, null, '2017-07-07 13:36:48', '1', null, '1', 'money,wxname', '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('62', '0', '0', '64', '上级审批', null, 'super', null, null, '0', '0', null, null, '2017-08-07 20:21:47', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('63', '62', '0', '64', '出纳付款', null, 'rank', null, '出纳', '0', '0', null, null, '2017-08-07 20:26:30', '1', '已付款', '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('64', '0', '0', '65', '上级审批', null, 'super', null, null, '0', '0', null, null, '2017-08-07 21:11:40', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('65', '64', '0', '65', '财务审批', null, 'rank', null, '财务总监', '0', '0', null, null, '2017-08-07 21:11:58', '1', null, '1', null, '0', '0', null, null, null, '0', '0');
INSERT INTO `htmlvi_flow_course` VALUES ('66', '65', '0', '65', '会计开票', null, 'rank', null, '出纳', '0', '0', null, null, '2017-08-07 21:12:24', '1', '已开票', '1', null, '0', '0', null, null, null, '0', '0');

-- ----------------------------
-- Table structure for `htmlvi_flow_element`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_element`;
CREATE TABLE `htmlvi_flow_element` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0',
  `name` varchar(20) DEFAULT NULL,
  `fields` varchar(50) DEFAULT NULL COMMENT '对应字段',
  `fieldstype` varchar(30) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0',
  `dev` varchar(20) DEFAULT NULL COMMENT '默认值',
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
  KEY `mid` (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=638 DEFAULT CHARSET=utf8 COMMENT='模块元素';

-- ----------------------------
-- Records of htmlvi_flow_element
-- ----------------------------
INSERT INTO `htmlvi_flow_element` VALUES ('1', '1', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('2', '1', '类型名称', 'typename', 'rockcombo', '2', null, '1', 'gongtype', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('3', '1', '内容', 'content', 'htmlediter', '3', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('4', '1', '发送给', 'recename', 'changedeptusercheck', '4', null, '0', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, '不选默认为发个全部人员', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('5', '1', '相应地址', 'url', 'text', '5', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('6', '2', '会议室', 'hyname', 'rockcombo', '0', null, '1', 'hyname', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('7', '2', '主题', 'title', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('8', '2', '开始时间', 'startdt', 'datetime', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('9', '2', '结束时间', 'enddt', 'datetime', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('10', '2', '参会人', 'joinname', 'changedeptusercheck', '4', null, '1', 'joinid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('11', '2', '说明', 'explain', 'textarea', '5', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('12', '3', '日期', 'dt', 'date', '3', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('13', '3', '日报类型', 'type', 'select', '2', '0', '1', '0|日报,1|周报,2|月报,3|年报', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('14', '3', '截止日期', 'enddt', 'date', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('15', '3', '内容', 'content', 'textarea', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('16', '3', '明日计划', 'plan', 'textarea', '6', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('17', '3', '新增时间', 'adddt', 'hidden', '7', '{now}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('18', '3', '人员', 'optname', 'text', '1', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('19', '2', '发起人', 'optname', 'text', '6', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('20', '4', '类型', 'type', 'rockcombo', '1', null, '1', 'worktype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('21', '4', '等级', 'grade', 'rockcombo', '2', null, '1', 'workgrade', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('22', '4', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('23', '4', '分配给', 'dist', 'changeuser', '3', null, '0', 'distid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('24', '4', '说明', 'explain', 'textarea', '5', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('26', '4', '创建人', 'optname', 'text', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('27', '4', '创建时间', 'optdt', 'datetime', '12', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('28', '4', '开始时间', 'startdt', 'datetime', '6', '{now}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('29', '4', '截止时间', 'enddt', 'datetime', '7', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('30', '5', '请假', 'kind', 'fixed', '0', '请假', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('31', '5', '请假类型', 'qjkind', 'rockcombo', '0', null, '1', 'kqqjkind', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('32', '5', '开始时间', 'stime', 'datetime', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('33', '5', '截止时间', 'etime', 'datetime', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('34', '5', '时间(小时)', 'totals', 'number', '0', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('35', '5', '说明', 'explain', 'textarea', '12', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('36', '6', '类型', 'kind', 'fixed', '0', '加班', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('37', '6', '开始时间', 'stime', 'datetime', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('38', '6', '截止时间', 'etime', 'datetime', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('39', '6', '时间(小时)', 'totals', 'number', '0', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('40', '6', '说明', 'explain', 'textarea', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('41', '7', '客户名称', 'name', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('42', '7', '所属人', 'suoname', 'text', '1', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('43', '7', '客户类型', 'type', 'rockcombo', '2', null, '1', 'crmtype', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('44', '7', '来源', 'laiyuan', 'rockcombo', '3', null, '1', 'crmlaiyuan', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '1', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('45', '7', '客户单位', 'unitname', 'text', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('47', '7', '联系电话', 'tel', 'text', '5', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('48', '7', '联系手机', 'mobile', 'text', '6', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('49', '7', '邮箱', 'email', 'text', '7', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('50', '7', '说明', 'explain', 'textarea', '14', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('51', '7', '地址', 'address', 'text', '8', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('52', '7', '交通路线', 'routeline', 'textarea', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('53', '8', '客户', 'custid', 'hidden', '0', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('54', '8', '客户', 'custname', 'selectdatafalse', '1', null, '1', 'selectcust,custid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('55', '8', '状态', 'state', 'rockcombo', '8', '0', '1', 'crmstate,value', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('56', '8', '说明', 'explain', 'textarea', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('57', '8', '申请日期', 'applydt', 'date', '2', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('58', '8', '来源', 'laiyuan', 'rockcombo', '3', null, '1', 'custsalelai', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('59', '8', '金额', 'money', 'number', '4', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('60', '8', '添加时间', 'adddt', 'datetime', '5', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('61', '8', '创建人', 'createname', 'text', '6', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('62', '8', '销售人员', 'optname', 'text', '7', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('63', '9', '名称', 'name', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('64', '9', '对应分类', 'typeid', 'rockcombo', '0', null, '1', 'goodstype,id,tree', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('65', '9', '规格', 'guige', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('66', '9', '型号', 'xinghao', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('67', '9', '单价', 'price', 'number', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('68', '9', '单位', 'unit', 'rockcombo', '0', null, '1', 'rockunit', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('69', '9', '说明', 'explain', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('70', '10', '用户Id', 'id', 'number', '19', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('71', '10', '姓名', 'name', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '1', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('72', '10', '部门Id', 'deptid', 'number', '7', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('73', '10', '部门', 'deptname', 'changedept', '8', null, '1', 'deptid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '1', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('74', '10', '职位', 'ranking', 'text', '9', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('75', '10', '上级主管', 'superman', 'changeusercheck', '10', null, '0', 'superid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '1', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('76', '10', '上级主管id', 'superid', 'text', '11', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('77', '10', '用户名', 'user', 'text', '2', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, '不能包含中文', '1', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('78', '10', '编号', 'num', 'text', '3', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, '唯一编号/工号', '1', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('79', '7', '状态', 'status', 'select', '10', '1', '1', '1|启用,0|停用', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('80', '12', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('81', '12', '提醒时间', 'startdt', 'datetime', '1', '{now}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('82', '12', '重复', 'rate', 'select', '2', null, '0', 'd|每天,w|每周,m|每月', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('83', '12', '重复值', 'rateval', 'checkboxall', '3', null, '0', '0|无,1|啊', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('84', '12', '说明', 'explain', 'textarea', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('85', '12', '记事人', 'optname', 'text', '5', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('86', '12', '截止时间', 'enddt', 'datetime', '6', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('87', '12', '提醒', 'txsj', 'select', '7', '0', '1', '0|不提醒,1|提醒', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('88', '21', '打卡时间', 'dkdt', 'datetime', '1', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('89', '21', '打卡类型', 'type', 'text', '2', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('90', '21', '添加时间', 'optdt', 'datetime', '3', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('91', '21', '定位地址', 'address', 'text', '4', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('92', '21', '姓名', 'base_name', 'text', '0', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('93', '22', '项目类型', 'type', 'rockcombo', '2', null, '1', 'projecttype', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('94', '22', '编号', 'num', 'text', '1', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('95', '22', '名称', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('96', '22', '开始时间', 'startdt', 'datetime', '3', '{now}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('97', '22', '预计结束时间', 'enddt', 'datetime', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('98', '22', '负责人', 'fuze', 'changeuser', '5', null, '1', 'fuzeid', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('99', '22', '执行人', 'runuser', 'changedeptusercheck', '6', null, '1', 'runuserid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('100', '22', '进度(%)', 'progress', 'select', '7', '0', '1', 'progressdata', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('101', '22', '内容', 'content', 'htmlediter', '8', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('102', '22', '状态', 'status', 'select', '20', '0', '1', '0|待执行,1|已完成,3|执行中', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('103', '23', '类型', 'atype', 'select', '0', '外出', '1', '外出,出差', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('104', '23', '外出地址', 'address', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('105', '23', '外出时间', 'outtime', 'datetime', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('106', '23', '预计回岗', 'intime', 'datetime', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('107', '23', '外出理由', 'reason', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('108', '23', '说明', 'explain', 'textarea', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('109', '24', '申请日期', 'applydt', 'text', '0', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('110', '24', '类型', 'type', 'fixed', '0', '0', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('111', '24', '说明', 'explain', 'textarea', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('112', '24', '物品', 'temp_aid', 'selectdatafalse', '0', null, '1', 'getgoodsdata,aid', '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('113', '24', '领用数量', 'count', 'number', '2', '0', '1', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('114', '11', '申请日期', 'applydt', 'text', '0', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('115', '11', '单据数(张)', 'bills', 'number', '0', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('116', '11', '收款人全称', 'fullname', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('117', '11', '付款方式', 'paytype', 'rockcombo', '0', null, '1', 'paytype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('118', '11', '收款帐号', 'cardid', 'text', '0', '', '1', '', '1', '1', '', '0', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('119', '11', '开户行', 'openbank', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('120', '11', '报销金额', 'money', 'number', '0', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('121', '11', '大写金额', 'moneycn', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('122', '11', '发生日期', 'sdt', 'date', '0', null, '1', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('123', '11', '报销项目', 'name', 'rockcombo', '0', null, '1', 'finaitems', '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('124', '11', '金额', 'money', 'number', '0', '0', '1', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('125', '11', '说明', 'sm', 'text', '0', null, '0', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('126', '24', '单位', 'unit', 'text', '3', null, '0', null, '0', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('127', '25', '申请日期', 'applydt', 'text', '0', '{date}', '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('128', '25', '附单据(张)', 'bills', 'number', '1', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('129', '25', '出差目的', 'purpose', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('130', '25', '出差成果', 'purresult', 'text', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('131', '25', '收款人全称', 'fullname', 'text', '4', '', '1', '', '1', '1', '', '0', '0', '', '', '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('132', '25', '付款方式', 'paytype', 'rockcombo', '5', '', '1', 'paytype', '1', '1', '', '0', '0', '', '', '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('133', '25', '收款帐号', 'cardid', 'text', '6', '', '1', '', '1', '1', '', '0', '0', '', '', '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('134', '25', '开户行', 'openbank', 'text', '7', '', '1', '', '1', '1', '', '0', '0', '', '', '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('135', '25', '报销金额', 'money', 'text', '8', '0', '1', '', '1', '1', '', '0', '0', '', '', '0', null, '1', '0', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('136', '25', '大写金额', 'moneycn', 'text', '9', '', '1', '', '1', '1', '', '0', '0', '', '', '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('137', '25', '发生日期', 'sdt', 'date', '0', '', '1', '', '1', '1', '', '1', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('138', '25', '报销项目', 'name', 'rockcombo', '1', '', '1', 'finaitems', '1', '1', '', '1', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('139', '25', '金额', 'money', 'number', '2', '0', '1', '', '1', '1', '', '1', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('140', '25', '说明', 'sm', 'text', '4', '', '0', '', '1', '1', '', '1', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('141', '25', '发生地点', 'didian', 'text', '3', null, '0', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('142', '25', '说明', 'explain', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('143', '25', '单据类型', 'type', 'fixed', '11', '1', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('144', '26', '单据类型', 'type', 'fixed', '0', '2', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('145', '26', '申请日期', 'applydt', 'text', '1', '{date}', '1', null, '1', '1', 'readonly', '0', '1', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('146', '26', '借款用途', 'purpose', 'text', '2', null, '1', null, '1', '1', null, '0', '1', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('147', '26', '收款人全称', 'fullname', 'text', '3', null, '1', null, '1', '1', null, '0', '1', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('148', '26', '付款方式', 'paytype', 'rockcombo', '4', null, '1', 'paytype', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('149', '26', '收款帐号', 'cardid', 'text', '5', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('150', '26', '开户行', 'openbank', 'text', '6', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('151', '26', '借款金额', 'money', 'text', '7', '0', '1', null, '1', '1', null, '0', '1', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('152', '26', '借款金额大写', 'moneycn', 'text', '8', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('153', '26', '说明', 'explain', 'textarea', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('154', '11', '说明', 'explain', 'textarea', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('155', '27', '类型', 'type', 'fixed', '0', '3', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('156', '27', '申请日期', 'applydt', 'text', '0', '{date}', '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('157', '27', '付款方式', 'paytype', 'rockcombo', '0', null, '1', 'paytype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('158', '27', '收款人全称', 'fullname', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('159', '27', '收款帐号', 'cardid', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('160', '27', '还款金额', 'money', 'number', '0', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('161', '27', '还款金额大写', 'moneycn', 'text', '0', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('162', '27', '说明', 'explain', 'textarea', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('163', '27', '需还款金额', 'temp_money', 'auto', '0', null, '0', 'jiekuantongs', '0', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('164', '28', '申请日期', 'applydt', 'text', '0', '{date}', '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('165', '28', '说明', 'explain', 'textarea', '1', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('166', '28', '类型', 'type', 'fixed', '2', '1', '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('168', '28', '供应商名称', 'custname', 'text', '3', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('169', '28', '采购金额', 'money', 'number', '5', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', '[{zb0.count}*{zb0.price}] - [{discount}]', null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('170', '28', '物品', 'temp_aid', 'selectdatafalse', '0', null, '1', 'getgoodsdata,aid', '1', '1', null, '1', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('171', '28', '采购数量', 'count', 'number', '2', '0', '1', '', '1', '1', '', '1', '0', '', '', '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('172', '28', '单位', 'unit', 'text', '3', null, '0', null, '1', '1', 'readonly', '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('173', '28', '单价', 'price', 'number', '4', '0', '0', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('174', '7', '供应商', 'isgys', 'checkbox', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('175', '19', '标题', 'title', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('176', '19', '副标题', 'titles', 'text', '3', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('177', '19', '公文等级', 'grade', 'rockcombo', '5', null, '1', 'officialgrade', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('178', '19', '公文类型', 'class', 'rockcombo', '6', null, '1', 'officialclass', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('179', '19', '公文编号', 'num', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('180', '19', '公文内容', 'content', 'htmlediter', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('181', '19', '说明', 'explain', 'textarea', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('182', '19', '需查阅对象', 'recename', 'changeusercheck', '11', null, '0', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('183', '20', '标题', 'title', 'text', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('184', '20', '副标题', 'titles', 'text', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('185', '20', '公文等级', 'grade', 'rockcombo', '6', null, '1', 'officialgrade', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('186', '20', '公文密级', 'miji', 'rockcombo', '8', null, '1', 'officialmiji', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('187', '20', '公文编号', 'num', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('188', '20', '公文内容', 'content', 'htmlediter', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('189', '20', '说明', 'explain', 'textarea', '11', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('190', '20', '需查阅对象', 'recename', 'changedeptusercheck', '12', null, '0', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('191', '20', '类型', 'type', 'fixed', '2', '1', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('192', '4', '所属项目', 'projectid', 'select', '4', null, '0', 'projectdata', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('193', '30', '类型', 'kind', 'rockcombo', '1', '请假', '1', 'kqkind', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('199', '30', '对应人员', 'uname', 'changeuser', '0', null, '1', 'uid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('195', '30', '开始时间', 'stime', 'datetime', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('196', '30', '截止时间', 'etime', 'datetime', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('197', '30', '时间(小时)', 'totals', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('198', '30', '说明', 'explain', 'textarea', '2', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('200', '2', '状态', 'state', 'text', '7', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('201', '1', '来源', 'zuozhe', 'text', '6', '{deptname}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('202', '1', '日期', 'indate', 'date', '7', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('203', '29', '电话', 'tel', 'text', '6', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('204', '29', '手机号', 'mobile', 'text', '10', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('205', '29', '邮箱', 'email', 'text', '11', null, '0', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('206', '29', '生日类型', 'birtype', 'select', '12', null, '1', '0|阳历,1|农历', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('207', '29', '生日', 'birthday', 'date', '13', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('208', '29', '学历', 'xueli', 'text', '14', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('209', '29', '民族', 'minzu', 'text', '15', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('210', '29', '籍贯', 'jiguan', 'text', '16', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('211', '29', '婚姻', 'hunyin', 'select', '9', null, '1', '未婚,已婚', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('212', '29', '现住址', 'nowdizhi', 'text', '8', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('213', '29', '家庭住址', 'housedizhi', 'text', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('214', '29', '姓名', 'name', 'text', '0', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('215', '29', '部门', 'deptname', 'text', '1', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('216', '29', '职位', 'ranking', 'text', '2', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('217', '29', '人员状态', 'state', 'rockcombo', '3', null, '0', 'userstate,value', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('218', '31', '合同名称', 'name', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('219', '31', '开始日期', 'startdt', 'date', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('220', '31', '截止日期', 'enddt', 'date', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('221', '31', '合同类型', 'httype', 'rockcombo', '5', null, '1', 'userhttype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('222', '31', '状态', 'state', 'text', '8', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('223', '31', '签署单位', 'company', 'hidden', '3', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('224', '31', '签署人', 'uname', 'changeuser', '0', null, '1', 'uid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('225', '31', '说明', 'explain', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('226', '31', '提前终止日期', 'tqenddt', 'date', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('227', '32', '职位', 'ranking', 'text', '3', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('228', '32', '入职日期', 'entrydt', 'text', '4', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('229', '32', '试用到期日', 'syenddt', 'date', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('230', '32', '转正日期', 'positivedt', 'date', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('231', '32', '申请说明', 'explain', 'textarea', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('232', '33', '职位', 'ranking', 'text', '2', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('233', '33', '入职日期', 'entrydt', 'text', '4', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('234', '33', '离职类型', 'redundtype', 'rockcombo', '5', null, '1', 'redundtype', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('235', '33', '离职日期', 'quitdt', 'date', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('236', '33', '离职原因', 'redundreson', 'textarea', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('237', '33', '说明', 'explain', 'textarea', '8', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('238', '34', '月份', 'month', 'month', '0', '{month}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('239', '34', '对应人', 'uname', 'changeuser', '0', null, '1', 'xuid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('240', '34', '基本工资', 'base', 'number', '1', '1500', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('241', '34', '职位津贴', 'postjt', 'number', '1', '3500', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('242', '34', '技能津贴', 'skilljt', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('243', '34', '交通补贴', 'travelbt', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('244', '34', '通信补贴', 'telbt', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('245', '34', '实发工资', 'money', 'text', '100', '0', '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('246', '34', '对应人员部门', 'udeptname', 'text', '0', '{deptname}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('247', '34', '职位', 'ranking', 'text', '0', '{ranking}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('248', '34', '奖励', 'reward', 'number', '20', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('249', '34', '处罚', 'punish', 'number', '40', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('250', '34', '说明', 'explain', 'textarea', '101', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('251', '34', '个人社保', 'socials', 'number', '41', '181', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('252', '34', '个人所得税', 'taxes', 'number', '42', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('253', '29', '开户行', 'bankname', 'text', '18', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('254', '29', '工资卡帐号', 'banknum', 'text', '17', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('255', '34', '其它增加', 'otherzj', 'number', '20', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('256', '34', '其它减少', 'otherjs', 'number', '43', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('257', '34', '迟到(次)', 'cidao', 'text', '50', '0', '0', null, '1', '0', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('258', '34', '迟到处罚', 'cidaos', 'number', '50', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('259', '34', '早退(次)', 'zaotui', 'text', '50', '0', '0', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('260', '34', '早退处罚', 'zaotuis', 'number', '50', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('261', '34', '请假(小时)', 'leave', 'text', '51', '0', '0', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('262', '34', '请假减少', 'leaves', 'number', '51', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('263', '34', '加班(小时)', 'jiaban', 'text', '20', '0', '0', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('264', '34', '加班补贴', 'jiabans', 'number', '20', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('265', '34', '未打卡(次)', 'weidk', 'text', '50', '0', '0', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('266', '34', '未打卡处罚', 'weidks', 'number', '50', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('267', '35', '客户名称', 'custid', 'select', '1', null, '1', 'selectcust', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('268', '35', '客户名称', 'custname', 'hidden', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('269', '35', '销售机会', 'saleid', 'select', '4', null, '0', 'selectsale', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('270', '35', '签约日期', 'signdt', 'date', '5', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('271', '35', '合同金额', 'money', 'number', '6', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('272', '35', '生效日期', 'startdt', 'date', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('273', '35', '截止日期', 'enddt', 'date', '8', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('274', '35', '合同内容', 'content', 'textarea', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('275', '35', '说明', 'explain', 'textarea', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('276', '35', '合同编号', 'num', 'num', '0', null, '1', 'HT-', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('277', '35', '合同类型', 'type', 'select', '10', '0', '1', '0|收款合同,1|付款合同', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('278', '36', '合同', 'htid', 'select', '1', null, '0', 'hetongdata', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('279', '36', '合同编号', 'htnum', 'hidden', '2', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('280', '36', '客户名称', 'custname', 'hidden', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('281', '36', '类型', 'type', 'select', '6', null, '1', '0|收款单,1|付款单', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('282', '36', '金额', 'money', 'number', '7', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('283', '36', '说明', 'explain', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('284', '35', '待收/付金额', 'moneys', 'text', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('285', '36', '客户名称', 'custid', 'select', '5', null, '1', 'selectcust', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('286', '36', '是否付款', 'ispay', 'select', '8', '0', '1', '0|否,1|是', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('287', '36', '收付款时间', 'paydt', 'datetime', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('288', '7', '联系人', 'linkname', 'text', '13', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('289', '36', '所属日期', 'dt', 'date', '3', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('290', '38', '要调动人', 'tranname', 'changeuser', '0', null, '1', 'tranuid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('291', '38', '调动类型', 'trantype', 'rockcombo', '0', null, '1', 'transfertype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('292', '38', '原来部门', 'olddeptname', 'text', '0', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('293', '38', '原来职位', 'oldranking', 'text', '0', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('294', '38', '调动后部门', 'newdeptname', 'changedept', '0', null, '1', 'newdeptid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('295', '38', '调动后职位', 'newranking', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('296', '38', '生效日期', 'effectivedt', 'date', '0', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('297', '38', '说明', 'explain', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('298', '37', '调薪幅度', 'floats', 'number', '4', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('299', '37', '生效日期', 'effectivedt', 'date', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('300', '37', '申请日期', 'applydt', 'date', '3', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('301', '37', '说明', 'explain', 'textarea', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('302', '37', '职位', 'ranking', 'text', '2', '{ranking}', '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('303', '39', '奖惩对象', 'object', 'changeuser', '3', null, '1', 'objectid', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('304', '39', '奖惩类型', 'type', 'select', '6', '0', '1', '0|奖励,1|处罚', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('305', '39', '奖惩结果', 'result', 'rockcombo', '7', null, '1', 'rewardresult', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('306', '39', '奖惩金额', 'money', 'number', '8', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('307', '39', '说明', 'explain', 'textarea', '9', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('308', '39', '申请日期', 'applydt', 'text', '2', '{date}', '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('309', '39', '发生时间', 'happendt', 'datetime', '4', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('310', '39', '发生地点', 'hapaddress', 'text', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('311', '40', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '50', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('312', '40', '对应分类', 'typeid', 'rockcombo', '0', null, '1', 'knowledgetype,id,tree', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('313', '40', '排序', 'sort', 'number', '0', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('314', '40', '内容', 'content', 'htmlediter', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('315', '41', '资产分类', 'typeid', 'rockcombo', '0', null, '1', 'assetstype,id,tree', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('316', '41', '编号', 'num', 'num', '1', null, '0', 'ZC-', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '1', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('317', '41', '名称', 'title', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('318', '41', '品牌', 'brand', 'rockcombo', '3', null, '0', 'rockbrand', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('319', '41', '存放仓库', 'ckid', 'rockcombo', '4', null, '1', 'warehouse,id', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('320', '41', '规格型号', 'model', 'text', '5', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('321', '41', '资产来源', 'laiyuan', 'rockcombo', '6', null, '1', 'wplaiyuan', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('322', '41', '状态', 'state', 'select', '7', '0', '1', '0|闲置,1|在用,2|维修,3|报废,4|丢失', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('323', '41', '购进日期', 'buydt', 'date', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('324', '41', '价格', 'price', 'number', '11', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('325', '41', '说明', 'explain', 'textarea', '30', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('326', '41', '使用人', 'usename', 'changedeptusercheck', '15', null, '0', 'useid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('327', '42', '车牌号', 'carnum', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('328', '42', '车辆类型', 'cartype', 'rockcombo', '1', null, '1', 'cartype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('329', '42', '车辆品牌', 'carbrand', 'rockcombo', '2', null, '1', 'carbrand', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('330', '42', '型号', 'carmode', 'text', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('331', '42', '购买日期', 'buydt', 'date', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('332', '42', '购买价格', 'buyprice', 'number', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('333', '42', '车架号', 'framenum', 'text', '7', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('334', '42', '发动机号', 'enginenb', 'text', '8', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('335', '42', '是否公开使用', 'ispublic', 'checkbox', '9', '1', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('336', '42', '说明', 'explain', 'textarea', '50', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('337', '42', '状态', 'state', 'select', '11', '1', '1', '0|办理中,1|可用,2|维修中,3|报废', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('516', '58', '状态', 'ztname', 'text', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('515', '42', '登记数', 'djshu', 'text', '51', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('346', '43', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '50', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('347', '43', '对应分类', 'typeid', 'rockcombo', '0', null, '1', 'knowtikutype,id,tree', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('348', '43', '类型', 'type', 'select', '0', '0', '1', '0|单选,1|多选', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('349', '43', 'A', 'ana', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('350', '43', 'B', 'anb', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('351', '43', 'C', 'anc', 'text', '1', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('352', '43', 'D', 'and', 'text', '1', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('353', '43', '答案', 'answer', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('354', '43', '状态', 'status', 'select', '1', '1', '1', '0|停用,1|启用', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('355', '43', '说明', 'explain', 'textarea', '20', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('356', '43', '题内容', 'content', 'htmlediter', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('357', '44', '使用者', 'usename', 'changedeptusercheck', '0', null, '1', 'useid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('358', '44', '使用人数', 'useren', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('359', '44', '开始时间', 'startdt', 'datetime', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('360', '44', '截止时间', 'enddt', 'datetime', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('361', '44', '目的地', 'address', 'text', '4', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('362', '44', '线路', 'xianlines', 'text', '5', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('363', '44', '预定车辆', 'carid', 'hidden', '6', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('364', '44', '车牌号', 'carnum', 'selectdatafalse', '7', null, '1', 'getcardata,carid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('365', '44', '驾驶员', 'jianame', 'changeusercheck', '8', null, '1', 'jiaid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('366', '44', '说明', 'explain', 'textarea', '12', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('367', '45', '书名', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('368', '45', '对应分类', 'typeid', 'rockcombo', '0', '0', '1', 'booktype,id,tree', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('369', '45', '编号', 'num', 'num', '0', null, '1', 'TS-', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '1', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('370', '45', '作者', 'author', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('371', '45', '出版社', 'chuban', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('372', '45', '出版日期', 'cbdt', 'date', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('373', '45', '价格', 'price', 'number', '0', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('374', '45', '数量', 'shul', 'number', '0', '1', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('375', '45', '说明', 'explain', 'textarea', '20', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('376', '45', '存放位置', 'weizhi', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('377', '45', 'ISBN', 'isbn', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('378', '46', '借阅书名', 'bookid', 'hidden', '0', null, '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('379', '46', '借阅书名', 'bookname', 'selectdatafalse', '0', null, '1', 'getbookdata,bookid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('380', '46', '借阅日期', 'jydt', 'date', '0', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('381', '46', '预计归还', 'yjdt', 'date', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', 'gt|{jydt}|{0}必须大于借阅日期', '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('382', '46', '归还时间', 'ghtime', 'datetime', '0', null, '0', null, '0', '1', null, '0', '0', null, null, '0', 'gt|{jydt}|{0}必须大于借阅日期,lt|{now}|{0}必须小于当前时间', '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('383', '46', '是否归返', 'isgh', 'select', '0', '0', '0', '0|否,1|是', '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('384', '46', '说明', 'explain', 'textarea', '20', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('385', '4', '督导人', 'ddname', 'changeusercheck', '8', null, '0', 'ddid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('386', '4', '任务分值', 'score', 'number', '9', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('387', '3', '评分分数', 'mark', 'text', '8', '0', '0', null, '0', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('388', '47', '主题', 'title', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('389', '47', '发送给', 'recename', 'changedeptusercheck', '2', null, '1', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('390', '47', '邮件内容', 'content', 'htmlediter', '10', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('391', '47', '抄送给', 'ccname', 'changeusercheck', '3', null, '0', 'ccid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('392', '47', '立即发送', 'isturn', 'checkbox', '11', '0', '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('393', '47', '发送人', 'sendname', 'text', '0', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('395', '48', '印章名称', 'name', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('396', '48', '印章类型', 'type', 'rockcombo', '0', null, '1', 'sealtype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('397', '48', '保管人', 'bgname', 'changeusercheck', '0', null, '1', 'bgid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('398', '49', '申请印章', 'sealid', 'select', '0', null, '1', 'getsealdata', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('399', '49', '印章名称', 'sealname', 'hidden', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('400', '49', '是否外带', 'isout', 'select', '0', '0', '1', '0|否,1|是', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('401', '49', '说明', 'explain', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('402', '5', '剩余考勤统计', 'temp_kqtotal', 'auto', '9', null, '0', 'getshentime', '1', '0', 'readonly', '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('403', '41', '封面图片', 'fengmian', 'uploadimg', '16', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('404', '47', '是否外发', 'type', 'select', '1', '0', '1', '0|否,1|是', '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('405', '51', '异常类型', 'errtype', 'rockcombo', '0', null, '1', 'kqerrtype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('406', '51', '异常日期', 'dt', 'date', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', 'elt|{date}|异常日期应小于当前日期', '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('407', '51', '应打卡时间', 'ytime', 'time', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('408', '51', '说明', 'explain', 'textarea', '10', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('409', '52', '流程模块', 'modeid', 'select', '0', '0', '1', 'modebill', '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('410', '52', '流程模块', 'modename', 'hidden', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('411', '52', '作废单号', 'tonum', 'select', '3', null, '1', 'gettonum', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('412', '52', '作废类型', 'type', 'select', '4', '0', '1', '0|作废单据,1|删除单据', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('413', '52', '说明', 'explain', 'textarea', '10', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('414', '53', '姓名', 'name', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('415', '53', '手机号', 'mobile', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('416', '53', '电话', 'tel', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('417', '53', '邮箱', 'email', 'email', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('418', '53', '所在组', 'gname', 'select', '0', null, '0', 'getgname', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('419', '53', '地址', 'address', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('420', '53', '单位名称', 'unitname', 'text', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('421', '29', '照片', 'zhaopian', 'uploadimg', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('422', '29', '身份证号', 'idnum', 'text', '5', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('423', '29', '备用联系人', 'spareman', 'text', '19', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('424', '29', '备用联系人电话', 'sparetel', 'text', '20', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('425', '29', '开始日期', 'startdt', 'date', '0', null, '1', null, '1', '1', null, '1', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('426', '29', '截止日期', 'enddt', 'date', '1', null, '1', null, '1', '1', null, '1', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('427', '29', '职位', 'rank', 'text', '2', null, '1', null, '1', '1', null, '1', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('428', '29', '单位名称', 'unitname', 'text', '3', null, '1', null, '1', '1', null, '1', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('429', '29', '开始日期', 'startdt', 'date', '0', null, '1', null, '1', '1', null, '2', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('430', '29', '截止日期', 'enddt', 'date', '1', null, '1', null, '1', '1', null, '2', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('431', '29', '专业', 'rank', 'text', '2', null, '1', null, '1', '1', null, '2', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('432', '29', '学校名称', 'unitname', 'text', '3', null, '1', null, '1', '1', null, '2', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('433', '1', '封面图片', 'fengmian', 'uploadimg', '1', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '1', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('434', '19', '正文文件', 'filecontid', 'uploadfile', '9', null, '1', 'doc,docx,pdf', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('435', '20', '公文文件', 'filecontid', 'uploadfile', '9', null, '0', 'doc,docx,pdf', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('436', '12', '提醒给', 'recename', 'changedeptusercheck', '8', null, '0', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('437', '2', '会议纪要人', 'jyname', 'changeusercheck', '8', null, '0', 'jyid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('438', '2', '会议纪要内容', 'content', 'htmlediter', '9', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('439', '54', '对应会议', 'mid', 'select', '0', null, '1', 'meetdata', '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('440', '54', '会议纪要内容', 'content', 'htmlediter', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('441', '54', '类型@0|普通,1|固定@not', 'type', 'fixed', '3', '2', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('442', '54', '会议主题', 'title', 'hidden', '1', null, '0', null, '0', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('443', '44', '起始公里数', 'kmstart', 'number', '9', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('444', '44', '结束公里数', 'kmend', 'number', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', 'gt|{kmstart}|结束公里数必须大于起始公路数', '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('445', '44', '归还时间', 'returndt', 'datetime', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', 'gt|{startdt}|归还时间必须大于开始时间', '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('446', '10', '入职日期', 'workdate', 'date', '4', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('447', '10', '性别', 'sex', 'select', '5', '男', '1', '男,女', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('448', '10', '名字拼音', 'pingyin', 'text', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, '拼音全拼(方便人员搜索)', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('449', '10', '手机号', 'mobile', 'text', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '1', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('451', '1', '操作人', 'optname', 'text', '8', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('452', '3', '操作时间', 'optdt', 'datetime', '9', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('453', '3', '部门', 'deptname', 'text', '0', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('454', '22', '任务数', 'workshu', 'number', '9', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('456', '7', '合同数', 'htshu', 'number', '15', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('455', '7', '是否标★', 'isstat', 'select', '11', '0', '1', '0|否,1|是', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('457', '7', '销售总额', 'moneyz', 'number', '16', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('458', '7', '待收金额', 'moneyd', 'number', '17', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('459', '29', '入职日期', 'workdate', 'date', '21', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('460', '29', '转正日期', 'positivedt', 'date', '23', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('461', '28', '物品Id', 'aid', 'hidden', '1', '0', '1', null, '1', '0', null, '1', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('462', '24', '物品Id', 'aid', 'hidden', '1', '0', '1', null, '1', '0', null, '1', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('463', '32', '申请日期', 'applydt', 'date', '2', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('467', '33', '申请日期', 'applydt', 'date', '3', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('474', '56', '标题', 'title', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('475', '56', '考试时间(分钟)', 'kstime', 'select', '1', '10', '1', 'kstimelist', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('484', '56', '状态', 'state', 'select', '12', '0', '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('476', '56', '开始时间', 'startdt', 'datetime', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('477', '56', '截止时间', 'enddt', 'datetime', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('478', '56', '多选题数', 'dxshu', 'number', '5', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('479', '56', '单选题数', 'dsshu', 'number', '4', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('480', '56', '考试对象', 'recename', 'changedeptusercheck', '6', null, '1', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('481', '56', '培训人数', 'reshu', 'number', '7', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('482', '56', '已答数', 'ydshu', 'number', '8', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('483', '56', '说明', 'explain', 'textarea', '11', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('485', '56', '总分', 'zfenshu', 'number', '9', '100', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('486', '56', '合格分数', 'hgfen', 'number', '10', '60', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('487', '6', '加班兑换', 'jiatype', 'select', '0', '0', '1', '0|调休,1|加班费', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('488', '6', '加班费', 'jiafee', 'number', '0', '0', '0', null, '1', '0', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('489', '48', '电子印章图片', 'sealimg', 'uploadimg', '0', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('490', '48', '说明', 'explain', 'textarea', '0', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('491', '56', '培训题库', 'tikuname', 'selectdatatrue', '6', null, '0', 'tikunamedata,tikuid', '1', '1', 'placeholder=\"不选/为空为全部题库\"', '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('492', '56', '题库id', 'tikuid', 'hidden', '0', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('504', '58', '车辆', 'carid', 'select', '0', null, '1', 'getcardata', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('505', '58', '登记类型', 'otype', 'rockcombo', '1', null, '1', 'carotype', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('506', '58', '开始日期', 'startdt', 'date', '2', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('507', '58', '截止日期', 'enddt', 'date', '3', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('508', '58', '驾驶员', 'jianame', 'changeusercheck', '4', null, '0', 'jiaid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('509', '58', '对应名称', 'unitname', 'text', '5', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('510', '58', '金额', 'money', 'number', '6', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('511', '58', '地点', 'address', 'text', '7', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('512', '58', '说明', 'explain', 'textarea', '8', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('513', '58', '登记人', 'optname', 'text', '9', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('514', '58', '登记时间', 'optdt', 'text', '10', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('517', '35', '状态', 'statetext', 'text', '13', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('518', '35', '创建人', 'createname', 'text', '14', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('519', '35', '拥有者', 'optname', 'text', '3', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('520', '36', '创建人', 'createname', 'text', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('521', '36', '所属人', 'optname', 'text', '0', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('522', '59', '维修车辆', 'carid', 'select', '0', '0', '1', 'getcardata', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('523', '59', '维修原因', 'reason', 'textarea', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('524', '59', '维修地点', 'address', 'text', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('525', '59', '驾驶员', 'jianame', 'changeusercheck', '3', null, '1', 'jiaid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('526', '59', '更换部件', 'bujian', 'text', '4', null, '1', null, '1', '1', null, '0', '0', null, null, '200', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('527', '59', '维修时间', 'startdt', 'datetime', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('528', '59', '维修截止时间', 'enddt', 'datetime', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', 'gt|{startdt}|截止时间必须大于开始时间', '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('529', '59', '维修金额', 'money', 'number', '7', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('530', '59', '说明', 'explain', 'textarea', '8', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('531', '60', '保养车辆', 'carid', 'select', '0', '0', '1', 'getcardata', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('532', '60', '保养原因', 'reason', 'textarea', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('533', '60', '保养地点', 'address', 'text', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('534', '60', '驾驶员', 'jianame', 'changeusercheck', '2', null, '1', 'jiaid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('535', '60', '保养内容', 'bujian', 'text', '5', null, '0', null, '0', '1', null, '0', '0', null, null, '200', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('536', '60', '保养时间', 'startdt', 'datetime', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('537', '60', '取车时间', 'enddt', 'datetime', '7', null, '0', null, '0', '1', null, '0', '0', null, null, '0', 'gt|{startdt}|截止时间必须大于开始时间', '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('538', '60', '保养金额', 'money', 'number', '8', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('539', '60', '说明', 'explain', 'textarea', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('540', '60', '当前保养公里数', 'kmshu', 'text', '9', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('541', '60', '下次保养日期', 'nextdt', 'date', '10', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('542', '60', '下次保养公里数', 'kmnshu', 'text', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', 'gt|{kmshu}|下次保养公里数必须大于当前公里数', '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('543', '60', '单据类型', 'type', 'fixed', '1', '1', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('544', '12', '状态', 'status', 'select', '9', '1', '1', '1|启用,0|停用', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('556', '61', '主Id', 'mid', 'text', '1', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('546', '61', '开始时间', 'startdt', 'datetime', '3', '{now}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('547', '61', '重复', 'rate', 'hidden', '5', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('548', '61', '重复值', 'rateval', 'hidden', '7', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('549', '61', '提醒内容', 'explain', 'textarea', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('555', '61', '模块编号', 'modenum', 'text', '0', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('551', '61', '截止时间', 'enddt', 'datetime', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('553', '61', '提醒给', 'recename', 'changedeptusercheck', '6', null, '0', 'receid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('554', '61', '状态', 'status', 'select', '10', '1', '1', '1|启用,0|停用', '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('557', '61', '频率设置', 'temp_rateval', 'auto', '9', null, '0', 'ratevalset', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('558', '61', '提醒频率', 'ratecont', 'text', '8', null, '1', null, '1', '1', 'readonly', '0', '0', null, null, '0', null, '1', '0', '1', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('559', '61', '操作时间', 'optdt', 'datetime', '11', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('560', '61', '操作人', 'optname', 'text', '12', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('561', '4', '得分', 'mark', 'text', '10', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('562', '28', '优惠价格', 'discount', 'number', '4', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('563', '62', '报修资产', 'assetm', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '100', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('564', '62', '保修原因', 'reason', 'textarea', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('565', '62', '实际原因', 'reasons', 'textarea', '3', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('566', '62', '需要外修', 'iswx', 'select', '2', '0', '0', '0|否,1|是', '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('567', '62', '维修金额', 'money', 'number', '5', '0', '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('569', '62', '维修人员', 'wxname', 'text', '6', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('570', '62', '说明', 'explain', 'textarea', '7', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('571', '63', '名称', 'name', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('572', '63', '所属单位', 'pid', 'select', '2', '0', '1', 'companydata', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('573', '63', '对应负责人', 'fuzename', 'changeusercheck', '3', null, '0', 'fuzeid', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('574', '63', '所在城市', 'city', 'text', '4', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('575', '63', '地址', 'address', 'text', '5', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '1', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('576', '63', '电话', 'tel', 'text', '6', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('577', '63', '传真', 'fax', 'text', '7', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('578', '63', '排序号', 'sort', 'number', '8', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('579', '63', '对应英文名', 'nameen', 'text', '1', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('580', '63', 'ID', 'id', 'text', '9', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('581', '31', '签署单位', 'companyid', 'select', '4', null, '1', 'companydata', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('582', '31', '部门', 'deptname', 'text', '1', null, '0', null, '0', '0', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('585', '10', '微信号', 'weixinid', 'text', '15', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, '手机号不能作为微信号', '1', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('583', '10', '电话', 'tel', 'text', '13', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('584', '10', '邮箱', 'email', 'email', '14', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '1', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('586', '10', '所属单位', 'companyid', 'select', '16', null, '1', 'companydata', '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('588', '10', '启用', 'status', 'select', '17', '1', '0', '1|启用,0|停用', '0', '0', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('589', '10', '管理员', 'type', 'select', '18', '0', '0', '0|普通,1|管理员', '0', '0', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('590', '10', '排序号', 'sort', 'number', '20', '0', '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('591', '10', '头像', 'face', 'uploadimg', '0', null, '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('592', '10', '所在组', 'groupname', 'checkboxall', '30', null, '0', 'groupdata', '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('593', '29', '所属单位', 'companyid', 'select', '25', null, '0', 'companydata', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('594', '29', '试用期到', 'syenddt', 'date', '22', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('595', '29', '离职日期', 'quitdt', 'date', '24', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('596', '10', '密码', 'pass', 'text', '2', null, '0', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, '新增默认123456,不填不修改密码', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('597', '9', '初始库存', 'stockcs', 'number', '0', '0', '0', null, '1', '1', 'min=\"0\"', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('598', '5', '请假天数', 'totday', 'text', '10', '0', '0', null, '1', '0', 'readonly', '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('599', '30', '天数', 'totday', 'text', '1', '0', '0', null, '1', '0', 'readonly', '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('600', '34', '是否发放', 'ispay', 'text', '102', '0', '0', null, '0', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('601', '64', '付款编号', 'num', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, '可为合同号/订单号', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('602', '64', '付款金额', 'money', 'number', '1', '0', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('603', '64', '付款日期', 'paydt', 'date', '2', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('604', '64', '收款单位', 'fullname', 'text', '3', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, '填写全称', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('605', '64', '收款银行', 'openbank', 'text', '4', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('606', '64', '收款帐号', 'cardid', 'text', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('607', '64', '付款方式', 'paytype', 'rockcombo', '6', null, '1', 'paytype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('608', '64', '说明', 'explain', 'textarea', '7', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('609', '64', '类型', 'type', 'fixed', '8', '4', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('611', '65', '开票名称', 'name', 'text', '1', null, '1', null, '1', '1', null, '0', '0', null, null, '50', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('610', '65', '类型', 'type', 'fixed', '0', '5', '1', null, '1', '0', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('612', '65', '开票金额', 'money', 'number', '2', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('613', '65', '开票日期', 'paydt', 'date', '3', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('614', '65', '公司单位名称', 'fullname', 'text', '4', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, '填写需要开票公司/单位全称', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('615', '65', '纳税识别号', 'shibieid', 'text', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('616', '65', '开户行', 'openbank', 'text', '8', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('617', '65', '开户帐号', 'cardid', 'text', '9', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('618', '65', '开票类型', 'paytype', 'rockcombo', '10', null, '1', 'openpiaotype', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('619', '65', '说明', 'explain', 'textarea', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('620', '65', '公司地址', 'address', 'text', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '1', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('621', '65', '联系电话', 'tel', 'text', '6', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('622', '65', '相关单号', 'num', 'text', '11', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '0', '0', '0', '0', '0', null, '可填写合同号/订单号', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('623', '53', '性别', 'sex', 'select', '0', null, '1', '男,女', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '1');
INSERT INTO `htmlvi_flow_element` VALUES ('624', '66', '对应模块', 'setid', 'text', '0', null, '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('625', '66', '通知内容摘要', 'summary', 'textarea', '10', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('626', '1', '开始时间', 'startdt', 'datetime', '12', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, '投票时需开始时间', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('627', '1', '截止时间', 'enddt', 'datetime', '13', null, '0', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, '投票时需截止时间', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('628', '1', '至少投票', 'mintou', 'number', '10', null, '0', null, '1', '1', 'min=\"0\"', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, '为0不填说明就不用投票', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('629', '1', '最多投票', 'maxtou', 'number', '10', '0', '0', null, '1', '1', 'min=\"0\"', '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, '0不限制', '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('630', '1', '投票选项', 'touitems', 'text', '0', null, '1', null, '1', '1', null, '1', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('631', '19', '发文字号', 'zinum', 'rockcombo', '0', null, '1', 'officiazinum', '1', '1', null, '0', '0', null, null, '30', null, '0', '1', '0', '1', '1', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('632', '19', '接收单位', 'unitname', 'text', '7', null, '1', null, '1', '1', null, '0', '0', null, null, '50', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('633', '20', '来文日期', 'laidt', 'date', '1', '{date}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('634', '20', '来文单位', 'unitsame', 'text', '5', null, '1', null, '1', '1', null, '0', '0', null, null, '50', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('635', '19', '发文单位', 'unitsame', 'text', '4', '{deptname}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('636', '19', '公文密级', 'miji', 'rockcombo', '8', null, '1', 'officialmiji', '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '0', '0', null, null, '0', '0');
INSERT INTO `htmlvi_flow_element` VALUES ('637', '20', '接收单位', 'unitname', 'text', '7', '{deptname}', '1', null, '1', '1', null, '0', '0', null, null, '0', null, '1', '0', '0', '1', '0', null, null, '0', '0');

-- ----------------------------
-- Table structure for `htmlvi_flow_extent`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_extent`;
CREATE TABLE `htmlvi_flow_extent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recename` varchar(200) DEFAULT NULL,
  `receid` varchar(200) DEFAULT NULL,
  `modeid` smallint(6) DEFAULT '0' COMMENT '模块',
  `type` tinyint(1) DEFAULT '0' COMMENT '0查看,1添加,2编辑,3删除',
  `wherestr` varchar(500) DEFAULT NULL COMMENT '条件',
  `explain` varchar(500) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `whereid` smallint(6) DEFAULT '0' COMMENT '条件Id',
  PRIMARY KEY (`id`),
  KEY `modeid` (`modeid`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='模块权限';

-- ----------------------------
-- Records of htmlvi_flow_extent
-- ----------------------------
INSERT INTO `htmlvi_flow_extent` VALUES ('1', '全体人员', 'all', '1', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('2', '全体人员', 'all', '1', '0', 'e3JlY2VpZH0:', '发布给包含我', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('3', '全体人员', 'all', '3', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('4', '全体人员', 'all', '2', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('5', '全体人员', 'all', '2', '0', 'YWxs', '全部数据', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('6', '全体人员', 'all', '3', '0', 'e2FsbHN1cGVyfQ::', '所有下属人员', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('10', '全体人员', 'all', '1', '2', 'b3B0aWQ9e3VpZH0:', '自己发布的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('11', '全体人员', 'all', '2', '2', 'b3B0aWQ9e3VpZH0gYW5kIHN0YXRlPTA:', '我创建的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('12', '全体人员', 'all', '4', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('13', '全体人员', 'all', '4', '0', 'YWxs', '任何人都可以看到任务', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('14', '全体人员', 'all', '5', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('15', '全体人员', 'all', '6', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('16', '管理员', 'u1', '1', '3', 'b3B0aWQ!MA::', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('117', '管理员', 'u1', '5', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('18', '全体人员', 'all', '2', '3', 'b3B0aWQ9e3VpZH0gYW5kIHN0YXRlIGluKDAsMyk:', '可删除我创建的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('19', '全体人员', 'all', '8', '3', 'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MQ::', '删除自己未成交的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('20', '全体人员', 'all', '7', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('21', '全体人员', 'all', '8', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('22', '全体人员', 'all', '9', '2', 'b3B0aWQ9e3VpZH0:', '本人添加可编辑', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('24', '全体人员', 'all', '3', '0', 'dWlkPXt1aWR9', '可查看我自己', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('25', '全体人员', 'all', '8', '0', 'dWlkPXt1aWR9', '可查看我自己', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('26', '全体人员', 'all', '7', '0', 'dWlkPXt1aWR9', '可查看我自己的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('27', '全体人员', 'all', '12', '2', 'dWlkPXt1aWR9', '编辑我自己', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('28', '全体人员', 'all', '12', '3', 'dWlkPXt1aWR9', '删除自己', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('29', '全体人员', 'all', '12', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('30', '全体人员', 'all', '12', '0', 'dWlkPXt1aWR9', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('31', '全体人员', 'all', '10', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('32', '全体人员', 'all', '13', '0', 'YWxs', '全体人员都可以查看组织结构', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('33', '管理员', 'u1', '13', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('34', '管理员', 'u1', '10', '3', 'YHR5cGVgPTA:', '只能删除非管理员帐号', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('35', '管理员', 'u1', '14', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('36', '管理员', 'u1', '14', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('37', '管理员', 'u1', '15', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('38', '管理员', 'u1', '15', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('39', '管理员', 'u1', '16', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('40', '管理员', 'u1', '16', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('41', '管理员', 'u1', '17', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('42', '管理员', 'u1', '17', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('43', '管理员', 'u1', '18', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('44', '管理员', 'u1', '18', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('45', '管理员', 'u1', '9', '3', 'YWxs', '管理可删除全部', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('46', '全体人员', 'all', '24', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('47', '全体人员', 'all', '25', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('48', '全体人员', 'all', '26', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('49', '全体人员', 'all', '7', '2', 'dWlkPXt1aWR9', '可编辑我自己的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('50', '全体人员', 'all', '22', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('51', '全体人员', 'all', '22', '2', 'b3B0aWQ9e3VpZH0:', '创建人可修改', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('52', '全体人员', 'all', '23', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('53', '全体人员', 'all', '11', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('54', '全体人员', 'all', '27', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('55', '全体人员', 'all', '8', '2', 'dWlkPXt1aWR9IGFuZCBodGlkPTA:', '可编辑自己未创建合同的单子', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('56', '全体人员', 'all', '3', '2', 'dWlkPXt1aWR9IGFuZCBkdD57ZGF0ZS0zfQ::', '自己可编辑3天前日报', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('57', '全体人员', 'all', '29', '2', 'aWQ9e3VpZH0:', '可编辑自己的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('58', '管理员', 'u1', '29', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('59', '全体人员', 'all', '29', '0', 'aWQ9e3VpZH0:', '可查看自己', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('60', '管理员', 'u1', '31', '0', 'YWxs', '可查看所有人', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('61', '管理员', 'u1', '31', '2', 'YWxs', '管理员可编辑所有人', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('62', '管理员,行政人事部', 'u1,d4', '29', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('63', '全体人员', 'all', '33', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('64', '全体人员', 'all', '32', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('65', '全体人员', 'all', '34', '0', 'YHh1aWRgPXt1aWR9', '可查看自己薪资', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('66', '全体人员', 'all', '34', '0', 'YG9wdGlkYD17dWlkfQ::', '可查看我提交的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('67', '管理员,信呼客服', 'u1,u8', '34', '0', null, null, '1', '3');
INSERT INTO `htmlvi_flow_extent` VALUES ('68', '全体人员', 'all', '35', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('69', '全体人员', 'all', '35', '2', 'dWlkPXt1aWR9IGFuZCBtb25leT1tb25leXM:', '编辑我的合同', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('70', '全体人员', 'all', '36', '2', 'dWlkPXt1aWR9IGFuZCBpc3BheT0w', '未付款前可以编辑', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('71', '管理员', 'u1', '36', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('72', '全体人员', 'all', '37', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('73', '全体人员', 'all', '40', '0', 'YWxs', '任何人都可以查看知识', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('74', '管理员,大乔', 'u1,u4', '40', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('75', '管理员,行政人事部', 'u1,d4', '41', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('76', '行政人事部', 'd4', '41', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('77', '全体人员', 'all', '41', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('78', '管理员,行政人事部', 'u1,d4', '41', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('79', '管理员,行政人事部', 'u1,d4', '42', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('80', '管理员,行政人事部', 'u1,d4', '42', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('81', '管理员,行政人事部', 'u1,d4', '42', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('82', '管理员,行政人事部', 'u1,d4', '42', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('83', '管理员,行政人事部', 'u1,d4', '43', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('84', '信呼开发团队', 'd1', '43', '2', 'b3B0aWQ9e3VpZH0:', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('85', '管理员,行政人事部', 'u1,d4', '43', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('86', '管理员,行政人事部', 'u1,d4', '43', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('87', '全体人员', 'all', '43', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('88', '全体人员', 'all', '44', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('89', '全体人员', 'all', '44', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('90', '全体人员', 'all', '45', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('91', '全体人员', 'all', '45', '2', 'b3B0aWQ9e3VpZH0:', '可编辑自己添加', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('92', '管理员,行政人事部', 'u1,d4', '45', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('93', '管理员,行政人事部', 'u1,d4', '45', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('94', '全体人员', 'all', '46', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('95', '全体人员', 'all', '46', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('96', '全体人员', 'all', '22', '3', 'b3B0aWQ9e3VpZH0:', '创建人可删除自己的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('97', '全体人员', 'all', '47', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('98', '全体人员', 'all', '47', '2', 'c2VuZGlkPXt1aWR9IGFuZCBpc3R1cm49MA::', '可编辑草稿', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('99', '全体人员', 'all', '47', '3', 'c2VuZGlkPXt1aWR9IGFuZCBpc3R1cm49MA::', '可删除草稿', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('100', '管理员', 'u1', '21', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('101', '全体人员', 'all', '48', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('102', '全体人员', 'all', '48', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('103', '全体人员', 'all', '48', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('104', '全体人员', 'all', '49', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('105', '全体人员', 'all', '51', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('106', '全体人员', 'all', '52', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('107', '全体人员', 'all', '53', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('108', '全体人员', 'all', '53', '2', 'dWlkPXt1aWR9', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('109', '全体人员', 'all', '53', '3', 'dWlkPXt1aWR9', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('110', '全体人员', 'all', '36', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('111', '全体人员', 'all', '36', '3', 'dWlkPXt1aWR9IGFuZCBpc3BheT0w', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('112', '行政人事部', 'd4', '28', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('113', '全体人员', 'all', '54', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('114', '全体人员', 'all', '54', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('115', '全体人员', 'all', '54', '2', 'b3B0aWQ9e3VpZH0:', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('116', '全体人员', 'all', '38', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('120', '全体人员', 'all', '10', '0', 'e2RlcHR9', '可以查看本部门人员', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('123', '管理员,行政人事部', 'u1,d4', '56', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('124', '全体人员', 'all', '56', '3', 'YG9wdGlkYD17dWlkfSBhbmQgYHN0YXJ0ZHRgPm5vdygp', '时间还未开始就可以删除', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('125', '全体人员', 'all', '56', '2', 'YG9wdGlkYD17dWlkfSBhbmQgYHN0YXJ0ZHRgPm5vdygp', '时间还未开始就可以编辑', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('126', '全体人员', 'all', '56', '0', 'YG9wdGlkYD17dWlkfQ::', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('127', '管理员,行政人事部', 'u1,d4', '56', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('130', '全体人员', 'all', '58', '2', 'b3B0aWQ9e3VpZH0:', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('131', '全体人员', 'all', '58', '3', 'b3B0aWQ9e3VpZH0:', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('132', '全体人员', 'all', '61', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('133', '全体人员', 'all', '61', '2', 'dWlkPXt1aWR9', '可编辑我自己', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('134', '全体人员', 'all', '61', '3', 'dWlkPXt1aWR9', '可删除我自己的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('135', '管理员', 'u1', '61', '3', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('136', '管理员', 'u1', '61', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('137', '全体人员', 'all', '62', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('138', '行政人事部', 'd4', '62', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('139', '全体人员', 'all', '63', '0', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('140', '管理员', 'u1', '63', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('141', '管理员', 'u1', '63', '3', 'YGlkYD4x', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('142', '管理员', 'u1', '63', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('143', '管理员', 'u1', '10', '2', 'YWxs', null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('144', '全体人员', 'all', '7', '3', 'dWlkPXt1aWR9', '可删除我自己的', '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('145', '全体人员', 'all', '64', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('146', '全体人员', 'all', '65', '1', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('147', '管理员', 'u1', '10', '4', null, null, '1', '0');
INSERT INTO `htmlvi_flow_extent` VALUES ('148', '全体人员', 'all', '7', '4', null, null, '1', '0');

-- ----------------------------
-- Table structure for `htmlvi_flow_log`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_log`;
CREATE TABLE `htmlvi_flow_log` (
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
  PRIMARY KEY (`id`),
  KEY `table` (`table`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单据操作记录';

-- ----------------------------
-- Records of htmlvi_flow_log
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_flow_menu`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_menu`;
CREATE TABLE `htmlvi_flow_menu` (
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
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COMMENT='单据操作菜单';

-- ----------------------------
-- Records of htmlvi_flow_menu
-- ----------------------------
INSERT INTO `htmlvi_flow_menu` VALUES ('1', '标为已读', 'yd', '0', '已读', 'green', '1', '标识', '1', null, null, '1', '0', '0', '0', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('2', '全部标识已读', 'allyd', '0', null, null, '1', null, '1', null, null, '1', '0', '0', '0', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('3', '标为已读', 'yd', '0', '已读', 'green', '1', '标识', '3', null, null, '1', '0', '0', '0', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('4', '全部标识已读', 'allyd', '0', null, null, '1', null, '3', null, null, '1', '0', '0', '0', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('5', '点评', null, '0', null, null, '0', null, '3', null, null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('6', '取消会议', null, '0', '取消', 'gray', '3', null, '2', 'b3B0aWQ9e3VpZH0gYW5kIHN0YXJ0ZHQ!e25vd30gIGFuZCBzdGF0ZT0w', '我发起，未开始会议可取消', '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('7', '结束会议', null, '0', '结束', 'orange', '2', null, '2', 'b3B0aWQ9e3VpZH0gYW5kIHN0YXJ0ZHQ8e25vd30gYW5kIGVuZGR0Pntub3d9ICBhbmQgc3RhdGU9MQ::', '我发起，开会中可提前结束', '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('12', '＋添加跟进记录', null, '0', '跟进', null, '1', '跟进记录', '7', 'KHVpZD17dWlkfSBvciB7c2hhdGVpZCx1aWRpbn0p', null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('13', '启用', 'ztqh', '0', '启用', 'green', '1', '状态切换', '7', 'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MA::', null, '1', '1', '0', '1', null, null, 'c3RhdHVzPTE:', '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('14', '停用', 'ztqh', '0', '停用', 'gray', '0', '状态切换', '7', 'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MQ::', null, '1', '1', '1', '1', null, null, 'c3RhdHVzPTA:', '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('15', '共享给...', 'shate', '5', null, null, '1', null, '7', 'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MQ::', null, '1', '1', '0', '3', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('16', '＋添加跟进', null, '0', null, null, '1', '跟进', '8', 'dWlkPXt1aWR9', null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('17', '标为跟进中', 'ztqh', '0', '跟进中', 'blue', '0', '状态切换', '8', 'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MCBhbmQgaHRpZD0w', null, '1', '1', '0', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('18', '标为已成交', 'ztqh', '0', '已成交', 'green', '1', '状态切换', '8', 'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MQ::', null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('19', '标为已丢失', 'ztqh', '0', '已丢失', 'gray', '2', '状态切换', '8', 'dWlkPXt1aWR9IGFuZCBzdGF0ZTw!MiBhbmQgaHRpZD0w', null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('20', '转移给...', 'zhuan', '0', null, null, '1', null, '8', 'dWlkPXt1aWR9IGFuZCBzdGF0ZT0w', null, '1', '1', '1', '2', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('21', '标为执行中', 'state2', '1', '执行中', 'orange', '3', '进度报告', '22', 'YHN0YXR1c2Agbm90IGluKDEsNSk:', null, '1', '1', '0', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('22', '更新进度', 'upprogress', '0', null, null, '0', null, '22', 'cHJvZ3Jlc3M8PjEwMCBhbmQgYHN0YXR1c2A8PjU:', null, '1', '1', '0', '4', null, 'progress', null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('23', '标为已完成', 'state1', '1', '已完成', 'green', '1', '进度报告', '22', 'c3RhdHVzIG5vdCBpbigxLDUp', null, '1', '1', '0', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('24', '终止项目', 'state3', '1', '终止', 'gray', '5', '进度报告', '22', 'YHN0YXR1c2Agbm90IGluKDEsNSk:', null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('25', '提前终止', null, '0', '终止', 'gray', '2', '提前终止', '31', 'c3RhdGU9MQ::', null, '1', '1', '1', '4', null, 'tqenddt', null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('26', '创建收款单', 'cjdaishou', '0', null, 'chocolate', '1', null, '35', 'dWlkPXt1aWR9IGFuZCBpc292ZXI9MCBhbmQgdHlwZT0w', null, '1', '0', '0', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('27', '标已收款', 'pay', '0', '已收款', 'green', '0', null, '36', 'dWlkPXt1aWR9IGFuZCB0eXBlPTAgYW5kIGlzcGF5PTA:', null, '1', '1', '1', '4', null, 'paydt', null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('28', '标已付款', 'pay', '0', '已付款', 'green', '0', null, '36', 'dWlkPXt1aWR9IGFuZCB0eXBlPTEgYW5kIGlzcGF5PTA:', null, '1', '1', '1', '4', null, 'paydt', null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('29', '创建付款单', 'cjdaishou', '0', null, 'chocolate', '1', null, '35', 'dWlkPXt1aWR9IGFuZCBpc292ZXI9MCBhbmQgdHlwZT0x', null, '1', '0', '0', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('30', '领用登记', null, '0', '领用', null, '1', null, '41', null, null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('31', '维修登记', null, '0', '维修', 'gray', '1', null, '41', null, null, '1', '1', '1', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('32', '标☆', null, '0', '标星', 'chocolate', '1', '状态切换', '7', 'dWlkPXt1aWR9IGFuZCBpc3N0YXQ9MA::', null, '1', '1', '0', '1', null, null, 'aXNzdGF0PTE:', '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('33', '取消标☆', null, '0', '取消标星', 'gray', '0', '状态切换', '7', 'dWlkPXt1aWR9IGFuZCBpc3N0YXQ9MQ::', null, '1', '1', '0', '1', null, null, 'aXNzdGF0PTA:', '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('34', '取消共享', 'unshate', '6', null, 'gray', '1', null, '7', 'dWlkPXt1aWR9IGFuZCBzdGF0dXM9MSBhbmQgc2hhdGUgaXMgbm90IG51bGw:', null, '1', '1', '0', '1', null, null, null, '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('35', '会议签到', null, '0', '签到', 'blue', '6', '签到', '2', 'c3RhdGU9MQ::', null, '1', '1', '0', '1', null, null, null, '1');
INSERT INTO `htmlvi_flow_menu` VALUES ('36', '设置为管理员', null, '0', null, null, '0', null, '10', 'YGlkYD4xICBhbmQge3VpZH09MSBhbmQgYHR5cGVgPTA:', null, '1', '1', '1', '0', null, null, 'YHR5cGVgPTE:', '0');
INSERT INTO `htmlvi_flow_menu` VALUES ('37', '取消管理员', null, '0', null, null, '0', null, '10', 'YGlkYD4xICBhbmQge3VpZH09MSBhbmQgYHR5cGVgPTE:', null, '1', '1', '1', '0', null, null, 'YHR5cGVgPTA:', '0');

-- ----------------------------
-- Table structure for `htmlvi_flow_remind`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_remind`;
CREATE TABLE `htmlvi_flow_remind` (
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
  `receid` varchar(100) DEFAULT NULL,
  `recename` varchar(100) DEFAULT NULL COMMENT '提醒给',
  PRIMARY KEY (`id`),
  UNIQUE KEY `table` (`uid`,`table`,`mid`) USING BTREE,
  UNIQUE KEY `uid` (`uid`,`modenum`,`mid`),
  KEY `table_2` (`table`,`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单据提醒设置表';

-- ----------------------------
-- Records of htmlvi_flow_remind
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_flow_set`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_set`;
CREATE TABLE `htmlvi_flow_set` (
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
  `statusstr` varchar(100) DEFAULT NULL COMMENT '状态值设置',
  `isgbjl` tinyint(1) DEFAULT '0' COMMENT '是否关闭操作记录',
  `isgbcy` tinyint(1) DEFAULT '0' COMMENT '是否不显示查阅记录',
  `isscl` tinyint(1) DEFAULT '0' COMMENT '是否生成列表页',
  `isup` tinyint(1) DEFAULT '1' COMMENT '更新时是否同步',
  `ddtx` tinyint(1) DEFAULT '0' COMMENT '是否钉钉提醒',
  `isbxs` tinyint(1) DEFAULT '0' COMMENT '录入页面是否不显示流程图',
  `lbztxs` tinyint(1) DEFAULT '0' COMMENT '列表页状态搜索显示0默认,1必须显示,2显示',
  PRIMARY KEY (`id`,`num`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='流程模块';

-- ----------------------------
-- Records of htmlvi_flow_set
-- ----------------------------
INSERT INTO `htmlvi_flow_set` VALUES ('1', '通知公告', 'gong', '1', 'infor', null, '[{typename}]{title}', 'title:[{typename}]{title}\noptdt:{optdt}', '行政', '1', '0', '0', '0', 'XA-Ymd-', '0', 'all', '全体人员', '2017-08-26 09:00:58', '1', '1', 'infors', '投票选项', null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('2', '会议', 'meet', '2', 'meet', '`type`=0', '[{hyname}]{title},{startdt}→{enddt}', null, '行政', '1', '0', '0', '0', 'XB-Ymd-', '0', 'all', '全体人员', '2017-04-11 09:41:04', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('3', '工作日报', 'daily', '21', 'daily', null, '[{optname}]{content}', 'title:[{optname}]{dt}的{type}\noptdt:{optdt}\ncont:{content}', '基础', '1', '0', '0', '0', 'XC-Ymd-', '0', 'all', '全体人员', '2016-09-24 21:58:37', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('4', '任务', 'work', '23', 'work', null, '[{type}]{title},分配给:{dist}', 'title:{title}\noptdt:{optdt}\ncont:类型：{type}[br]等级：{grade}[br]分配给：{dist}[br]创建者：{optname}[br]截止时间：{enddt}', '基础', '1', '0', '0', '0', 'XW-Ymd-', '1', 'all', '全体人员', '2017-03-24 13:12:46', '1', '1', null, null, '待?分配,已完成,未通过,待?执行,?执行中,已作废,待?验证', '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('5', '请假条', 'leave', '30', 'kqinfo', 'kind=[F]请假[F]', '[{qjkind}]{stime}→{etime}共{totals}小时,{explain}', 'title:[{qjkind}]共{totals}小时\ncont:时间：{stime}→{etime}[br]说明：{explain}\noptdt:{optdt}', '考勤', '1', '0', '0', '0', 'KA-Ymd-', '1', 'all', '全体人员', '2017-06-29 10:26:42', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('6', '加班单', 'jiaban', '31', 'kqinfo', 'kind=[F]加班[F]', '{stime}→{stime}共加班{totals}小时,{explain}', 'title:加班共{totals}小时\ncont:时间：{stime}→{etime}[br]说明：{explain}\noptdt:{optdt}', '考勤', '1', '0', '0', '0', 'KB-Ymd-', '1', 'all', '全体人员', '2017-06-29 10:26:09', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('7', '客户管理', 'customer', '50', 'customer', null, '{name}', 'title:{name}\noptdt:{optdt}\ncont:来源：{laiyuan}[br]操作人：{optname}[br]共享给：{shate}', '客户', '1', '0', '0', '0', 'CA-Ymd-', '0', 'all', '全体人员', '2016-09-25 08:42:17', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('8', '销售机会', 'custsale', '51', 'custsale', null, null, 'title:{custname}\noptdt:{optdt}\ncont:来源：{laiyuan}[br]销售人：{optname}[br]申请日期：{applydt}[br]预计金额：{money}', '客户', '1', '0', '0', '0', 'CB-Ymd-', '0', 'all', '全体人员', '2017-04-24 20:31:39', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('9', '物品', 'goods', '4', 'goods', null, null, null, '行政', '0', '0', '0', '0', 'CC-Ymd-', '0', 'all', '全体人员', '2016-09-01 20:51:47', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('11', '费用报销', 'finfybx', '90', 'fininfom', 'type=0', '报销：{money},收款人：{fullname}', null, '财务', '1', '0', '0', '0', 'FA-Ymd-', '1', 'all', '全体人员', '2017-05-06 18:36:22', '1', '1', 'fininfos', '报销明细', null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('10', '用户', 'user', '201', 'admin', null, null, 'title:{name}\ncont:部门：{deptallname}[br]职位：{ranking}[br]电话：{tel}[br]手机：{mobile}[br]邮箱：{email}', '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2017-07-08 19:38:55', '1', '0', null, null, null, '0', '0', '1', '1', '0', '0', '2');
INSERT INTO `htmlvi_flow_set` VALUES ('12', '日程', 'schedule', '24', 'schedule', null, '{title}', 'title:{title}\noptdt:{optdt}\ncont:时间：{startdt}[br]截止：{enddt}[br]说明：{explain}[br]重复：{rate}{rateval}[br]提醒：{txsj}', '基础', '1', '0', '0', '0', null, '0', 'all', '全体人员', '2016-09-25 11:51:09', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('13', '部门', 'dept', '202', 'dept', null, '{name}', null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2016-08-13 16:44:30', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('14', '系统组', 'group', '203', 'group', null, null, null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2016-08-13 17:47:58', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('15', '计划任务', 'task', '204', 'task', null, null, null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2016-08-13 17:23:01', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('16', '会话管理', 'huihua', '205', 'im_group', 'type<>2', null, null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2016-08-13 17:26:59', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('17', '应用管理', 'yingyong', '206', 'im_group', 'type=2', null, null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2016-08-13 17:26:25', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('18', '应用菜单', 'yymenu', '207', 'im_menu', null, null, null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2016-08-13 17:27:41', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('19', '发文单', 'officia', '40', 'official', 'type=0', '{num}[{class}]{title}', null, '公文', '1', '0', '0', '0', 'GA-Ymd-', '1', 'all', '全体人员', '2017-08-30 22:52:31', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('20', '收文单', 'officib', '41', 'official', 'type=1', null, null, '公文', '1', '0', '0', '0', 'GB-Ymd-', '1', 'all', '全体人员', '2017-08-30 22:52:35', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('21', '打卡记录', 'kqdkjl', '32', 'kqdkjl', null, null, 'title:{dkdt}(星期{week})\ncont:姓名：{name}[br]打卡类型：{type}[br]打卡IP：{ip}[br]说明：{explain}', '考勤', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2017-03-30 10:49:05', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('22', '项目', 'project', '22', 'project', null, null, null, '基础', '1', '0', '0', '0', null, '0', 'all', '全体人员', '2017-04-13 13:40:07', '1', '1', null, null, '待执行|blue,已完成|green,结束|#888888,执行中|#ff6600', '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('23', '外出出差', 'waichu', '33', 'kqout', null, '[{atype}]{address}{outtime}', 'title:{optname}[{atype}]{reason}\noptdt:{optdt}\ncont:外出时间：{outtime}[br]预计回岗：{intime}[br]地点：{address}[br]', '考勤', '1', '0', '0', '0', 'KD-Ymd-', '1', 'all', '全体人员', '2017-08-28 11:48:39', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('24', '物品领用', 'goodly', '5', 'goodm', 'type=0', '{explain}', null, '行政', '1', '0', '0', '0', 'CD-Ymd-', '1', 'all', '全体人员', '2017-08-10 10:46:26', '1', '1', 'goodss', '领用物品', '待?发放,已发放,驳回', '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('25', '出差报销', 'finccbx', '91', 'fininfom', 'type=1', '报销金额:{money},目的:{purpose},成果:{purresult}', null, '财务', '1', '0', '0', '0', 'FB-Ymd-', '1', 'all', '全体人员', '2017-05-06 21:29:35', '1', '1', 'fininfos', '报销明细', null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('26', '借款单', 'finjkd', '92', 'fininfom', 'type=2', '借款金额:{money},用途:{purpose}', null, '财务', '1', '0', '0', '0', 'FC-Ymd-', '1', 'all', '全体人员', '2017-05-06 21:45:31', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('27', '还款单', 'finhkd', '93', 'fininfom', 'type=3', '还款金额：{money}，还款方式:{paytype}，还款到：{fullname}', null, '财务', '1', '0', '0', '0', 'FD-Ymd-', '1', 'all', '全体人员', '2017-05-06 21:45:35', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('28', '物品采购', 'caigou', '6', 'goodm', 'type=1', '从[{custname}]采购金额:{money}元', null, '行政', '1', '0', '0', '0', 'CE-Ymd-', '1', 'all', '全体人员', '2016-09-03 22:58:07', '1', '1', 'goodss', '采购物品', null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('29', '人员档案', 'userinfo', '60', 'userinfo', null, null, null, '人事', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2017-07-08 19:38:44', '1', '0', 'userinfos,userinfos', '工作经历,教育经历', null, '0', '0', '0', '1', '0', '0', '1');
INSERT INTO `htmlvi_flow_set` VALUES ('30', '考勤信息', 'leavehr', '34', 'kqinfo', null, null, null, '考勤', '1', '0', '0', '0', null, '0', 'd4', '行政人事部', '2016-09-13 13:46:55', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('31', '员工合同', 'userract', '61', 'userract', null, null, null, '人事', '1', '0', '0', '0', null, '0', 'all', '全体人员', '2017-07-08 16:05:55', '1', '0', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('32', '转正申请', 'hrpositive', '62', 'hrpositive', null, '申请[{positivedt}]转正', null, '人事', '1', '0', '0', '0', 'HA-Ymd-', '1', 'all', '全体人员', '2017-05-03 21:09:12', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('33', '离职申请', 'hrredund', '63', 'hrredund', null, '[{redundtype}],在{quitdt}离职', null, '人事', '1', '0', '0', '0', 'HB-Ymd-', '1', 'all', '全体人员', '2017-05-03 21:40:44', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('34', '薪资', 'hrsalary', '65', 'hrsalary', null, '{uname}[{month}]月份的薪资', 'title:{month}薪资', '人事', '1', '0', '0', '0', 'HC-Ymd-', '1', 'all', '全体人员', '2017-08-07 10:03:57', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('35', '客户合同', 'custract', '52', 'custract', null, '编号[{num}],客户:{custname},{enddt}到期', 'title:{custname}\ncont:合同编号：{num}[br]日期：{startdt}→{enddt}[br]状态：{moneys}', '客户', '0', '0', '0', '0', 'CC-Ymd-', '0', 'all', '全体人员', '2017-07-04 11:34:02', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('36', '收付款单', 'custfina', '53', 'custfina', null, null, 'title:{custname}\noptdt:{optdt}\ncont:金额：{money}[br]对应合同：{htnum}', '客户', '0', '0', '0', '0', 'CD-Ymd-', '0', 'all', '全体人员', '2017-07-04 11:55:10', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('37', '调薪申请', 'hrtrsalary', '66', 'hrtrsalary', null, '{optname}申请调薪', null, '人事', '1', '0', '0', '0', 'HD-Ymd-', '1', 'all', '全体人员', '2017-05-03 22:12:37', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('38', '人事调动', 'hrtransfer', '67', 'hrtransfer', null, '[{tranname}]【{trantype}】:{olddeptname}→{newdeptname},{oldranking}→{newranking}', null, '人事', '1', '0', '0', '0', 'HE-Ymd-', '1', 'all', '全体人员', '2017-05-03 20:37:38', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('39', '奖惩处罚', 'reward', '68', 'reward', null, '对【{object}】的{atype},奖惩结果:{result},金额:{money}', null, '人事', '1', '0', '0', '0', 'HF-Ymd-', '1', 'all', '全体人员', '2017-05-03 22:22:43', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('40', '知识', 'knowledge', '71', 'knowledge', null, '{title}', 'title:{title}\noptdt:{optdt}', '资源', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2016-12-06 16:15:13', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('41', '固定资产', 'assetm', '7', 'assetm', null, null, null, '行政', '0', '0', '0', '0', 'CF-Ymd-', '0', 'all', '全体人员', '2016-10-26 20:42:04', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('42', '车辆管理', 'carm', '101', 'carm', null, null, null, '车辆', '0', '0', '0', '0', 'CH-Ymd-', '0', 'all', '全体人员', '2017-06-22 13:36:39', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('43', '题库', 'knowtiku', '72', 'knowtiku', null, null, 'title:[{typename}]{title}\ncont:A：{ana}[br]B：{anb}[br]C：{anc}[br]D：{and}', '资源', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2017-05-19 17:01:55', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('44', '车辆预定', 'carmrese', '103', 'carmrese', null, '{usename}预定车辆【{carnum}】在{startdt}前往{address}', null, '车辆', '1', '0', '0', '0', 'CJ-Ymd-', '1', 'all', '全体人员', '2017-05-08 10:15:15', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('45', '图书管理', 'book', '8', 'book', null, '{title}', 'title:{title}', '行政', '0', '0', '0', '0', 'CK-Ymd-', '0', 'all', '全体人员', '2017-04-12 09:03:49', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('46', '图书借阅', 'bookborrow', '9', 'bookborrow', null, '{optname}借阅[{bookname}]', null, '行政', '1', '0', '0', '0', 'CL-Ymd-', '1', 'all', '全体人员', '2017-05-08 11:15:03', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('47', '邮件', 'emailm', '25', 'emailm', null, '{title},发件人:{sendname}', 'title:{title}\noptdt:{senddt}\ncont:发件人：{sendname}[br]收件人：{recename}', '基础', '1', '0', '0', '0', null, '0', 'all', '全体人员', '2016-12-08 16:11:33', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('48', '印章', 'seal', '10', 'seal', null, null, null, '行政', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2016-12-08 21:02:54', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('49', '印章申请', 'sealapl', '11', 'sealapl', null, '{optname}申请使用[{sealname}]', null, '行政', '1', '0', '0', '0', 'CM-Ymd-', '1', 'all', '全体人员', '2017-06-21 21:16:58', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('50', '待办处理', 'daiban', '208', 'flow_bill', null, null, null, '系统', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2016-12-15 17:48:55', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('51', '打卡异常', 'kqerr', '35', 'kqerr', null, '{optname}[{errtype}]申请', null, '考勤', '1', '0', '0', '0', 'KE-Ymd-', '1', 'all', '全体人员', '2017-08-28 12:12:51', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('52', '单据作废申请', 'tovoid', '27', 'tovoid', null, '{optname}申请单号:{tonum}作废,模块:{modename}', null, '基础', '1', '0', '0', '0', 'ZF-Ymd-', '1', 'all', '全体人员', '2016-12-19 13:43:28', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('53', '个人通讯录', 'vcard', '26', 'vcard', null, null, 'title:{name}\ncont:电话：{tel}[br]手机：{mobile}[br]邮箱：{email}[br]所在组：{gname}', '基础', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2016-12-20 16:30:42', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('54', '会议纪要', 'meetjy', '3', 'meet', 'type=2', null, null, '行政', '1', '0', '0', '0', 'XC-Ymd-', '0', 'all', '全体人员', '2017-02-28 10:40:58', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('55', '定位记录', 'kqdw', '36', 'location', null, null, 'title:{name}\noptdt:{optdt}\ncont:星期：{week}[br]地址：{label}[br]说明：{explain}', '考勤', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2017-03-30 11:22:03', '1', '0', null, null, null, '1', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('56', '考试培训', 'knowtraim', '73', 'knowtraim', null, '{title},时间{startdt}→{enddt}', 'title:{title}\noptdt:{start}', '资源', '1', '0', '0', '0', 'ZA-Ymd-', '0', 'all', '全体人员', '2017-05-09 21:27:00', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('58', '车辆信息登记', 'carms', '102', 'carms', null, null, null, '车辆', '1', '0', '0', '0', 'CN-Ymd', '0', 'all', '全体人员', '2017-06-21 21:18:07', '1', '1', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('59', '车辆维修', 'carmwx', '104', 'carmang', 'type=0', null, null, '车辆', '1', '0', '0', '0', 'CX-Ymd-', '1', 'all', '全体人员', '2017-06-26 21:22:59', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('60', '车辆保养', 'carmby', '105', 'carmang', 'type=1', '车辆保养', null, '车辆', '1', '0', '0', '0', 'CY-Ymd-', '1', 'all', '全体人员', '2017-06-27 13:24:15', '1', '1', null, null, null, '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('61', '单据提醒设置', 'remind', '28', 'flow_remind', null, null, null, '基础', '0', '0', '0', '0', null, '0', 'all', '全体人员', '2017-06-30 13:05:47', '1', '0', null, null, null, '1', '1', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('62', '维修报修', 'repair', '12', 'repair', null, '{assetm}:{reason}', null, '行政', '1', '0', '0', '0', 'WX-Ymd-', '1', 'all', '全体人员', '2017-07-07 13:40:16', '1', '1', null, null, '待处理,已完成', '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('63', '公司单位', 'company', '200', 'company', null, null, null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2017-07-08 14:21:37', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('64', '付款申请', 'finpay', '94', 'fininfom', 'type=4', '申请付款{money}元', null, '财务', '1', '0', '0', '0', 'FE-Ymd-', '1', 'all', '全体人员', '2017-08-07 20:46:42', '1', '1', null, null, '待?处理,已付款', '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('65', '开票申请', 'finkai', '95', 'fininfom', 'type=5', '[{fullname}]要开票{money}元', null, '财务', '1', '0', '0', '0', 'FF-Ymd-', '1', 'all', '全体人员', '2017-08-07 21:13:21', '1', '1', null, null, '待?处理,已开票', '0', '0', '1', '1', '0', '0', '0');
INSERT INTO `htmlvi_flow_set` VALUES ('66', '单据通知设置', 'flowtodo', '209', 'flow_todo', null, '{summary}', null, '系统', '0', '0', '0', '0', null, '0', 'u1', '管理员', '2017-08-23 13:51:23', '1', '0', null, null, null, '0', '0', '0', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `htmlvi_flow_todo`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_todo`;
CREATE TABLE `htmlvi_flow_todo` (
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
  `todofields` varchar(100) DEFAULT NULL COMMENT '通知给主表上字段',
  `summary` varchar(100) DEFAULT NULL COMMENT '通知内容摘要',
  `botask` tinyint(1) DEFAULT '0' COMMENT '计划任务',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='单据通知设置表';

-- ----------------------------
-- Records of htmlvi_flow_todo
-- ----------------------------
INSERT INTO `htmlvi_flow_todo` VALUES ('1', '车辆信息到期提醒', null, '58', '这只是个事例', '96', '0', 'u1', '管理员', null, null, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', null, '车辆[{carid}]的{otype}将在{enddt}到期。', '1');

-- ----------------------------
-- Table structure for `htmlvi_flow_todos`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_todos`;
CREATE TABLE `htmlvi_flow_todos` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单据通知给对应人员';

-- ----------------------------
-- Records of htmlvi_flow_todos
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_flow_where`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_flow_where`;
CREATE TABLE `htmlvi_flow_where` (
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
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=utf8 COMMENT='单据条件';

-- ----------------------------
-- Records of htmlvi_flow_where
-- ----------------------------
INSERT INTO `htmlvi_flow_where` VALUES ('1', '1', 'my', null, '与我相关', 'e3JlY2VpZH0:', null, null, '0', 'receid包含用户', null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('2', '5', null, null, '大于3天', 'YHRvdGFsc2AgPiAyNA::', null, null, '0', '时间(小时) 大于 24', null, null, null, null, '0', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('3', '34', null, null, '管理员对应开发部', null, null, null, '0', null, 'd2', '开发部', null, null, '0', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('4', '4', null, null, '未分配的记录', 'YGRpc3RgIGlzIG51bGw:', null, null, '20', '分配给 为空 ', null, null, null, null, '0', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('5', '1', 'wfb', null, '我发布', 'YG9wdGlkYD17dWlkfQ::', null, null, '1', 'optid字段等于当前用户', null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('7', '3', 'my', null, '我的日报', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('8', '3', 'undall', null, '下属全部日报', 'YHVpZGAgaW4oe2FsbHN1cGVyfSk:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('9', '3', 'undwd', null, '全部下属未读', 'YHVpZGAgaW4oe2FsbHN1cGVyfSkgIGFuZCB7dW5yZWFkfQ::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('10', '1', 'wexx', null, '我未读', 'e3JlY2VpZH0gYW5kIHt1bnJlYWR9', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('11', '2', 'today', null, '今日会议', 'YHN0YXR1c2A9MSBhbmQgYHN0YXJ0ZHRgIGxpa2UgJ1tkYXRlXSUn', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('12', '2', 'bzhy', null, '本周会议', 'YHN0YXR1c2A9MSBhbmQgYHN0YXJ0ZHRgID49ICd7d2Vla2ZpcnN0fSc:', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('13', '2', 'all', null, '全部会议', 'YHN0YXR1c2A9MQ::', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('14', '2', 'myfq', null, '我发起会议', 'YHN0YXR1c2A9MSBhbmQgYG9wdGlkYD17dWlkfQ::', null, null, '4', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('15', '13', null, null, '大乔查看权限', null, null, null, '0', null, 'd3,d4', '财务部,行政人事部', null, null, '0', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('16', '4', 'my', null, '我的任务', 'e2Rpc3RpZCx1aWRpbn0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('17', '4', 'down', null, '我下属任务', 'e2Rpc3RpZCxkb3dufQ::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('18', '4', 'wcj', null, '我创建任务', 'YG9wdGlkYD17dWlkfQ::', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('19', '4', 'dd', null, '我督导任务', 'e2RkaWQsdWlkaW59', null, null, '4', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('20', '4', 'wwc', null, '我未完成任务', 'YHN0YXR1c2AgaW4oMyw0KSBhbmQge2Rpc3RpZCx1aWRpbn0:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('21', '4', 'all', 'all', '所有任务', 'MT0x', null, null, '5', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('22', '22', 'my', null, '我执行项目', 'e3J1bnVzZXJpZCxyZWNlbm90fQ::', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('23', '22', 'wwc', null, '我未完成项目', 'e3J1bnVzZXJpZCxyZWNlbm90fQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('24', '22', 'myfz', null, '我负责项目', 'e2Z1emVpZCx1aWRpbn0:', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('25', '22', 'mycj', null, '我创建项目', 'YG9wdGlkYD17dWlkfQ::', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('26', '22', 'all', 'all', '所有项目', 'MT0x', null, null, '5', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('27', '12', 'my', null, '我的日程', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('28', '12', 'rece', null, '提醒给我的', 'e3JlY2VpZCxyZWNlbm90fQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('29', '4', 'ywc', null, '已完成任务', 'e2Rpc3RpZCx1aWRpbn0gYW5kIGBzdGF0dXNgPTE:', null, null, '0', null, null, null, null, null, '0', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('30', '7', 'my', null, '我的客户', 'YHVpZGA9e3VpZH0gYW5kIGBzdGF0dXNgPTE:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('31', '7', 'gxgw', 'shate', '共享给我的', 'e3NoYXRlaWQsdWlkaW59', null, null, '21', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('32', '7', 'myall', null, '我全部客户', 'YHVpZGA9e3VpZH0:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('33', '7', 'my_ting', null, '我停用客户', 'dWlkPXt1aWR9IGFuZCBgc3RhdHVzYD0w', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('34', '7', 'downall', 'down', '下属全部客户', 'YHVpZGAgaW4oe3N1cGVyfSk:', null, null, '9', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('35', '7', 'downty', 'down', '下属停用', 'YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0dXNgPTA:', null, null, '10', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('36', '7', 'downstat', 'down', '下属标★', 'YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBpc3N0YXRgPTE:', null, null, '11', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('37', '7', 'mystat', null, '我标★客户', 'YHVpZGA9e3VpZH0gYW5kIGBpc3N0YXRgPTE:', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('38', '7', 'distdfp', 'dist', '待分配客户', 'YGlkYCA!IDAgYW5kIChgdWlkYD17dWlkfSBvciBgZnppZGA9e3VpZH0gb3IgYGNyZWF0ZWlkYD17dWlkfSBvciBgdWlkYCBpbih7c3VwZXJ9KSkgYW5kIGB1aWRgPTA:', null, null, '31', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('39', '7', 'distyfp', 'dist', '已分配的', 'YGlkYCA!IDAgYW5kIChgdWlkYD17dWlkfSBvciBgZnppZGA9e3VpZH0gb3IgYGNyZWF0ZWlkYD17dWlkfSAgb3IgYHVpZGAgaW4oe3N1cGVyfSkpIGFuZCBgdWlkYD4w', null, null, '32', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('40', '7', 'distall', 'dist', '全部分配状态', 'YGlkYCA!IDAgYW5kIChgdWlkYD17dWlkfSBvciBgZnppZGA9e3VpZH0gb3IgYGNyZWF0ZWlkYD17dWlkfSAgb3IgYHVpZGAgaW4oe3N1cGVyfSkp', null, null, '33', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('41', '7', 'mycj', null, '我创建', 'YGNyZWF0ZWlkYD17dWlkfQ::', null, null, '4', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('42', '7', 'all', 'all', '所有客户', 'MT0x', null, null, '50', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('43', '7', 'allty', 'all', '所有停用客户', 'YHN0YXR1c2A9MA::', null, null, '51', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('44', '29', 'my', null, '我的档案', 'W0FdYGlkYD17dWlkfQ::', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('45', '34', 'my', null, '我的薪资', 'YHh1aWRgPXt1aWR9', null, null, '0', null, null, null, null, null, '0', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('46', '8', 'mygx', null, '我需跟进', 'YHVpZGA9e3VpZH0gYW5kIGBzdGF0ZWA9MA::', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('47', '8', 'mycj', null, '已成交', 'YHVpZGA9e3VpZH0gYW5kIGBzdGF0ZWA9MQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('48', '8', 'myds', null, '已丢失', 'YHVpZGA9e3VpZH0gYW5kIGBzdGF0ZWA9Mg::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('49', '8', 'myall', null, '我所有销售机会', 'YHVpZGA9e3VpZH0g', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('50', '8', 'downgj', 'down', '下属需跟进', 'YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0ZWA9MA::', null, null, '11', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('51', '8', 'downcj', 'down', '下属已成交', 'YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0ZWA9MQ::', null, null, '12', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('52', '8', 'downds', 'down', '下属已丢失', 'YHVpZGAgaW4oe3N1cGVyfSkgYW5kIGBzdGF0ZWA9Mg::', null, null, '13', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('53', '8', 'downall', 'down', '下属所有销售机会', 'YHVpZGAgaW4oe3N1cGVyfSkg', null, null, '14', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('54', '8', 'all', 'all', '所有销售机会', 'MT0x', null, null, '22', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('55', '8', 'allgj', 'all', '所有需跟进', 'YHN0YXRlYD0w', null, null, '21', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('56', '8', 'allcj', 'all', '所有已成交', 'YHN0YXRlYD0x', null, null, '23', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('57', '8', 'allds', 'all', '所有已丢失', 'YHN0YXRlYD0y', null, null, '24', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('58', '38', 'my', null, '我的调动', 'W0FdYHRyYW51aWRgPXt1aWR9', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('59', '38', 'mysq', null, '我申请调动', 'YHVpZGA9e3VpZH0:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('60', '38', 'all', 'all', '所有调动', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('61', '32', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('62', '32', 'all', 'all', '所有申请', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('63', '33', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('64', '33', 'all', 'all', '所有申请', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('65', '37', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('66', '37', 'all', 'all', '所有申请', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('67', '39', 'objmy', null, '奖惩对象是我', 'YG9iamVjdGlkYD17dWlkfQ::', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('68', '39', 'my', null, '我申请的', 'YHVpZGA9e3VpZH0:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('69', '39', 'all', 'all', '所有奖惩', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('70', '1', 'all', 'all', '所有公告', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('71', '11', 'all', 'all', '所有费用报销', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('72', '11', 'my', null, '我的报销', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('73', '25', 'all', 'all', '所有出差报销', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('74', '25', 'my', null, '我的出差报销', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('75', '26', 'all', 'all', '所有借款单', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('76', '26', 'my', null, '我的借款单', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('77', '27', 'all', 'all', '所有还款单', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('78', '27', 'my', null, '我的还款单', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('79', '49', 'all', 'all', '所有印章申请', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('80', '49', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('81', '44', 'all', 'all', '所有车辆预定', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('82', '44', 'my', null, '我的预定', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('83', '44', 'myjia', null, '驾驶员是我', 'e2ppYWlkLHVpZGlufQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('84', '44', 'myuse', null, '使用人包含我', 'e3VzZWlkLHJlY2VhbGx9', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('85', '46', 'all', 'all', '所有图书借阅', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('86', '46', 'my', null, '我的借阅', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('87', '29', 'all', 'all', '所有档案', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('88', '3', 'all', 'all', '所有日报', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('89', '56', 'all', 'all', '所有培训', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('90', '43', 'all', 'all', '所有题库', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('91', '43', 'weidu', null, '我未读', 'e3VucmVhZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('167', '20', 'all', 'all', '所有收文单', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('93', '58', 'all', 'all', '所有登记', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('94', '42', 'all', 'all', '所以车辆', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('95', '42', 'public', 'all', '可预定车辆', 'YGlzcHVibGljYD0x', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('96', '58', 'kydq', 'all', '7天内到期', 'YGVuZGR0YCBpcyBub3QgbnVsbCBhbmQgYGVuZGR0YDx7ZGF0ZSs3fSBhbmQgYGVuZGR0YD49e2RhdGV9', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('97', '35', 'my', null, '我所有合同', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('98', '35', 'ygq', null, '已过期', 'YHVpZGA9e3VpZH0gYW5kIGBlbmRkdGA8e2RhdGV9', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('99', '35', 'daisfk', null, '待收/付款', 'YHVpZGA9e3VpZH0gYW5kIGBpc3BheWA9MA::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('100', '35', 'qbsfk', null, '已全部收/付款', 'YHVpZGA9e3VpZH0gYW5kIGBpc3BheWA9MQ::', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('101', '35', 'bfsfk', null, '部分收/付款', 'YHVpZGA9e3VpZH0gYW5kIGBpc3BheWA9Mg::', null, null, '4', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('102', '35', 'downall', 'down', '下属所有合同', 'IHt1aWQsZG93bn0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('103', '35', 'downygq', 'down', '已过期', 'IHt1aWQsZG93bn0gYW5kIGBlbmRkdGA8e2RhdGV9', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('104', '35', 'all', 'all', '所有合同', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('105', '36', 'myskd', null, '我收款单', 'YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0w', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('106', '36', 'myskdys', null, '我已收款', 'YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0wIGFuZCBgaXNwYXlgPTE:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('107', '36', 'myskdws', null, '我未收款', 'YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0wIGFuZCBgaXNwYXlgPTA:', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('108', '36', 'downskd', 'downskd', '下属收款单', 'IHt1aWQsZG93bn0gYW5kIGB0eXBlYD0w', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('109', '36', 'downskdys', 'downskd', '下属已收款', 'e3VpZCxkb3dufSBhbmQgYHR5cGVgPTAgYW5kIGBpc3BheWA9MQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('110', '36', 'downskdwsk', 'downskd', '下属未收款', 'e3VpZCxkb3dufSBhbmQgYHR5cGVgPTAgYW5kIGBpc3BheWA9MA::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('111', '36', 'allskd', 'allskd', '所有收款单', 'YHR5cGVgPTA:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('112', '36', 'allskdys', 'allskd', '所有已收款', 'YHR5cGVgPTAgYW5kIGBpc3BheWA9MQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('113', '36', 'allskdwsk', 'allskd', '所有未收款', 'YHR5cGVgPTAgYW5kIGBpc3BheWA9MA::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('114', '36', 'myfkd', 'fkd', '我的付款单', 'YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('115', '36', 'myfkdyf', 'fkd', '我已付款', 'YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0xIGFuZCBgaXNwYXlgPTE:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('116', '36', 'myfkdwf', 'fkd', '我未付款', 'YHVpZGA9e3VpZH0gYW5kIGB0eXBlYD0xIGFuZCBgaXNwYXlgPTA:', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('117', '36', 'downfkd', 'downfkd', '下属付款单', 'e3VpZCxkb3dufSBhbmQgYHR5cGVgPTE:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('118', '36', 'downfkdyf', 'downfkd', '下属已付款', 'e3VpZCxkb3dufSBhbmQgYHR5cGVgPTEgYW5kIGBpc3BheWA9MQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('119', '36', 'downfkdwf', 'downfkd', '下属未付款', 'e3VpZCxkb3dufSBhbmQgYHR5cGVgPTEgYW5kIGBpc3BheWA9MA::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('120', '36', 'allfkd', 'allfkd', '所有付款单', 'YHR5cGVgPTE:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('121', '36', 'allfkdyf', 'allfkd', '所有已付款', 'YHR5cGVgPTEgYW5kIGBpc3BheWA9MQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('122', '36', 'allfkdwf', 'allfkd', '所有未付款', 'YHR5cGVgPTEgYW5kIGBpc3BheWA9MA::', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('123', '59', 'all', 'all', '所有维修', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('124', '60', 'all', 'all', '所有保养记录', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('125', '59', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('126', '59', 'myjia', null, '驾驶员包含我', 'e2ppYWlkLHVpZGlufQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('127', '60', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('128', '60', 'myjia', null, '驾驶员包含我', 'IHtqaWFpZCx1aWRpbn0:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('129', '6', 'allfee', 'all', '加班费单据', 'YGppYXR5cGVgPTE:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('130', '6', 'all', 'all', '所有加班单', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('131', '6', 'my', null, '我的加班单', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('132', '5', 'my', null, '我的请假条', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('133', '5', 'all', 'all', '所有请假条', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('136', '42', 'my', null, '可预定车辆', 'YGlzcHVibGljYD0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('137', '61', 'my', null, '我的设置', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('138', '62', 'my', null, '我的报修', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('139', '62', 'all', 'all', '所有报修', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('140', '62', 'allsx', 'all', '需要外修', 'YGlzd3hgPTE:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('141', '63', 'all', 'all', '所有公司单位', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('142', '31', 'my', null, '我的合同', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('143', '31', 'all', 'all', '所有合同', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('144', '31', 'all30', 'all', '30天内过期', 'YGVuZGR0YDw9e2RhdGUrMzB9IGFuZCBgc3RhdGVgPTE:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('145', '31', 'allsxz', 'all', '生效中', 'YHN0YXRlYD0x', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('146', '31', 'allyzz', 'all', '已终止', 'YHN0YXRlYD0y', null, null, '3', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('147', '10', 'all', 'all', '所有用户', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('148', '10', 'allty', 'all', '已停用', 'YHN0YXR1c2A9MA::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('149', '10', 'allgly', 'all', '管理员用户', 'YHR5cGVgPTE:', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('150', '10', 'txlmy', 'txl', '通讯录', 'YHN0YXR1c2A9MQ::', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('151', '10', 'txldown', 'txl', '我直属下级', 'YHN0YXR1c2A9MSBhbmQge2lkLGRvd259', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('152', '10', 'txldownall', 'txl', '我全部下属', 'YHN0YXR1c2A9MSBhbmQge2lkLGRvd25hbGx9', null, null, '2', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('153', '64', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('154', '64', 'all', 'all', '所有申请', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('155', '65', 'my', null, '我的申请', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('156', '65', 'all', 'all', '所有申请', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('157', '23', 'my', null, '我的外出出差', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('158', '23', 'all', 'all', '所有外出出差', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('159', '23', 'mytoday', null, '我今日外出', 'YHVpZGA9e3VpZH0gYW5kIGBpbnRpbWVgID4gJ1tkYXRlXScgYW5kIGBvdXR0aW1lYDwgJ1tkYXRlXSAyMzo1OTo1OSc:', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('160', '23', 'alltoday', 'all', '所有今日外出', 'YGludGltZWAgPiAnW2RhdGVdJyBhbmQgYG91dHRpbWVgPCAnW2RhdGVdIDIzOjU5OjU5Jw::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('161', '23', 'downtoday', 'down', '下属今日外出', 'e3VpZCxkb3dufSBhbmQgYGludGltZWAgPiAnW2RhdGVdJyBhbmQgYG91dHRpbWVgPCAnW2RhdGVdIDIzOjU5OjU5Jw::', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('162', '23', 'downall', 'down', '下属所有外出', 'e3VpZCxkb3dufQ::', null, null, '1', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('163', '51', 'my', null, '我的打卡异常', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('164', '51', 'all', 'all', '所有打卡异常', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('165', '19', 'all', 'all', '所有发文', 'MT0x', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('166', '19', 'my', null, '我的发文', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);
INSERT INTO `htmlvi_flow_where` VALUES ('168', '20', 'my', null, '我的收文单', 'YHVpZGA9e3VpZH0:', null, null, '0', null, null, null, null, null, '1', '1', null, null);

-- ----------------------------
-- Table structure for `htmlvi_goodm`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_goodm`;
CREATE TABLE `htmlvi_goodm` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='物品领用采购申请主表';

-- ----------------------------
-- Records of htmlvi_goodm
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_goods`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_goods`;
CREATE TABLE `htmlvi_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应分类',
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='物品表';

-- ----------------------------
-- Records of htmlvi_goods
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_goodss`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_goodss`;
CREATE TABLE `htmlvi_goodss` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='物品库存详细表';

-- ----------------------------
-- Records of htmlvi_goodss
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_group`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_group`;
CREATE TABLE `htmlvi_group` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '组名',
  `sort` tinyint(4) DEFAULT '0',
  `ispir` tinyint(4) DEFAULT '1' COMMENT '是否权限验证',
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统组';

-- ----------------------------
-- Records of htmlvi_group
-- ----------------------------
INSERT INTO `htmlvi_group` VALUES ('1', '组1', '1', '1', '2014-09-04 17:33:47');
INSERT INTO `htmlvi_group` VALUES ('2', '组名', '2', '1', '2014-09-04 17:33:56');

-- ----------------------------
-- Table structure for `htmlvi_homeitems`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_homeitems`;
CREATE TABLE `htmlvi_homeitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `num` varchar(30) NOT NULL COMMENT '编号',
  `receid` varchar(300) DEFAULT NULL,
  `recename` varchar(500) DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `row` tinyint(1) DEFAULT '0' COMMENT '所在位置',
  PRIMARY KEY (`id`,`num`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='桌面项目表';

-- ----------------------------
-- Records of htmlvi_homeitems
-- ----------------------------
INSERT INTO `htmlvi_homeitems` VALUES ('1', '快捷入口', 'kjrk', null, null, '0', '1', '0');
INSERT INTO `htmlvi_homeitems` VALUES ('2', '通知公告', 'gong', null, null, '1', '1', '0');
INSERT INTO `htmlvi_homeitems` VALUES ('3', '考勤打卡', 'kqdk', null, null, '2', '1', '0');
INSERT INTO `htmlvi_homeitems` VALUES ('5', '我的申请', 'apply', null, null, '0', '1', '1');
INSERT INTO `htmlvi_homeitems` VALUES ('6', '今日会议', 'meet', null, null, '2', '1', '1');
INSERT INTO `htmlvi_homeitems` VALUES ('7', '系统日志', 'syslog', 'u1', '管理员', '3', '1', '1');
INSERT INTO `htmlvi_homeitems` VALUES ('8', '关于htmlvi', 'about', 'u1', '管理员', '10', '1', '1');

-- ----------------------------
-- Table structure for `htmlvi_hrpositive`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_hrpositive`;
CREATE TABLE `htmlvi_hrpositive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='HR转正';

-- ----------------------------
-- Records of htmlvi_hrpositive
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_hrredund`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_hrredund`;
CREATE TABLE `htmlvi_hrredund` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='离职申请';

-- ----------------------------
-- Records of htmlvi_hrredund
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_hrsalary`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_hrsalary`;
CREATE TABLE `htmlvi_hrsalary` (
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
  `month` varchar(10) NOT NULL COMMENT '月份',
  `base` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '基本工资',
  `money` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '实发',
  `postjt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '职务津贴',
  `skilljt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '技能津贴',
  `travelbt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '交通补贴',
  `telbt` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '通信补贴',
  `reward` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '奖励',
  `punish` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '处罚',
  `socials` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '个人社保',
  `taxes` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '个人所得税',
  `ispay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否发放',
  `otherzj` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '其它增加',
  `otherjs` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '其它减少',
  `cidao` smallint(6) NOT NULL DEFAULT '0' COMMENT '迟到(次)',
  `cidaos` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '迟到处罚',
  `zaotui` smallint(6) NOT NULL DEFAULT '0' COMMENT '早退(次)',
  `zaotuis` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '早退处罚',
  `leave` smallint(6) NOT NULL DEFAULT '0' COMMENT '请假(小时)',
  `leaves` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '请假减少',
  `jiaban` smallint(6) NOT NULL DEFAULT '0' COMMENT '加班(小时)',
  `jiabans` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '加班补贴',
  `weidk` smallint(6) NOT NULL DEFAULT '0' COMMENT '未打卡(次)',
  `weidks` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '未打卡减少',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='工资表';

-- ----------------------------
-- Records of htmlvi_hrsalary
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_hrtransfer`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_hrtransfer`;
CREATE TABLE `htmlvi_hrtransfer` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='职位调动';

-- ----------------------------
-- Records of htmlvi_hrtransfer
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_hrtrsalary`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_hrtrsalary`;
CREATE TABLE `htmlvi_hrtrsalary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='调薪申请';

-- ----------------------------
-- Records of htmlvi_hrtrsalary
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_im_group`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_im_group`;
CREATE TABLE `htmlvi_im_group` (
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
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='IM会话表';

-- ----------------------------
-- Records of htmlvi_im_group
-- ----------------------------
INSERT INTO `htmlvi_im_group` VALUES ('2', '全体人员', '0', null, '0', '0', '1', null, null, null, null, null, null, null, '1', null, null, null, '0', null, null, '1');
INSERT INTO `htmlvi_im_group` VALUES ('3', '通知公告', '0', '基础', '2', '28', null, null, null, 'images/gong.png', 'gong', null, null, 'link', '1', null, 'xiaolaba', '#f25e94', '0', 'gong', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('4', '会议', '0', '基础', '2', '27', null, null, null, 'images/meet.png', 'meet', null, null, 'auto', '1', null, 'huiyi-copy', '#fc6419', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('7', '工作日报', '0', '基础', '2', '26', null, null, '2015-06-25 16:03:34', 'images/daily.png', 'daily', null, null, 'auto', '1', null, 'ribaojindu', '#578dc4', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('12', '任务', '0', '流程', '2', '8', '1', '管理员', '2015-09-10 13:38:07', 'images/work.png', 'work', null, null, 'auto', '1', null, 'renwu', '#91cd4a', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('13', '万年历', '0', '基础', '2', '25', null, null, null, 'images/calendar.png', 'calendar', null, null, 'link', '1', null, 'rili', '#e0815c', '0', 'http://www.rili123.cn/rili123.htm', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('14', '高管群', '0', null, '0', '0', null, null, null, null, null, null, null, null, '1', null, null, null, '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('15', '流程申请', '0', '流程', '2', '10', null, null, null, 'images/flow.png', 'flow', null, null, 'buin', '1', null, 'shenqingliuchengicon', '#3fbfc2', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('16', '流程待办', '0', '流程', '2', '11', null, null, null, 'images/daiban.png', 'daiban', null, null, 'link', '1', null, 'daiban', '#33b5e5', '0', 'daiban', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('17', '客户管理', '0', '客户', '2', '51', null, null, null, 'images/crm.png', 'customer', null, null, 'auto', '1', null, 'kehu', '#2e98f1', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('18', '客户主页', '0', '客户', '2', '50', null, null, null, 'images/crm.png', 'crmindex', null, null, 'link', '1', null, 'kehu', '#2e98f1', '1', 'crmindex', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('19', '销售机会', '0', '客户', '2', '52', null, null, null, 'images/sale.png', 'custsale', null, null, 'auto', '1', null, 'xiaoshou', '#5c8fba', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('20', '文档', '0', '资源', '2', '31', null, null, null, 'images/folder.png', 'word', null, null, 'buin', '1', null, 'wenjian-copy', '#f5d95a', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('21', '日程', '0', '基础', '2', '23', null, null, null, 'images/bwl2.png', 'schedule', null, null, 'link', '1', null, 'richeng', '#158aad', '0', 'schedule', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('24', '外出出差', '0', '考勤', '2', '7', null, null, null, 'images/waichu.png', 'waichu', null, null, 'auto', '1', null, 'waichu', '#cc9999', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('26', '邮件', '0', '基础', '2', '22', null, null, null, 'images/email.png', 'emailm', null, null, 'link', '1', null, 'youjian', '#7CD3B0', '0', 'email', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('27', '知识信息', '0', '资源', '2', '32', null, null, null, 'images/zhishi.png', 'knowledge', null, null, 'auto', '1', null, 'knowledge', '#F28794', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('5', '通讯录', '0', '基础', '2', '21', null, null, null, 'images/tongxunlu.png', 'user', null, null, 'link', '1', null, 'tongxunlu', '#B28649', '0', 'reimtxl', null, null);
INSERT INTO `htmlvi_im_group` VALUES ('28', '考勤信息', '0', '考勤', '2', '5', null, null, null, 'images/kaoqin.png', 'kqdkjl', null, null, 'auto', '1', null, null, null, '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('29', '考勤打卡', '0', '考勤', '2', '4', null, null, null, 'images/adddk.png', 'kqdaka', null, null, 'link', '1', null, null, null, '0', null, '?d=we&m=ying&a=location', null);
INSERT INTO `htmlvi_im_group` VALUES ('30', '考勤统计', '0', '考勤', '2', '6', null, null, null, 'images/kaoqin.png', 'kqtotal', null, null, 'auto', '1', null, null, null, '2', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('31', '开发部', '0', null, '0', '1', null, null, null, null, null, null, null, null, '1', null, null, null, '0', null, null, '2');
INSERT INTO `htmlvi_im_group` VALUES ('32', '题库', '0', '资源', '2', '33', null, null, null, 'images/tiku.png', 'knowtiku', null, null, 'auto', '1', null, 'tiku', '#fb2b16', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('33', '培训考试', '0', '资源', '2', '34', null, null, null, 'images/kaoshi.png', 'kaoshi', null, null, 'auto', '1', null, 'kaoshi', '#4f68b0', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('34', '客户合同', '0', '客户', '2', '53', null, null, null, 'images/hetong.png', 'custract', null, null, 'auto', '1', null, 'kehu-kehuhetong', '#4ca2fa', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('35', '收款单', '0', '客户', '2', '54', null, null, null, 'images/skuan.png', 'custfina', null, null, 'auto', '1', null, 'achargeaudit', '#339966', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('36', '付款单', '0', '客户', '2', '55', null, null, null, 'images/fkuan.png', 'custfkd', null, null, 'auto', '1', null, 'apayaudit', '#cf9d31', '0', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('38', '工资条', '0', '基础', '2', '29', null, null, null, 'images/gzt.png', 'hrsalary', null, null, 'auto', '1', null, null, '#FF6666', '2', null, null, null);
INSERT INTO `htmlvi_im_group` VALUES ('39', '申请流程', '0', '流程', '2', '12', null, null, null, 'images/jia.png', 'flowapply', null, null, 'link', '1', null, null, null, '0', null, '?d=we&m=flow&a=apply', null);

-- ----------------------------
-- Table structure for `htmlvi_im_groupuser`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_im_groupuser`;
CREATE TABLE `htmlvi_im_groupuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gid` smallint(6) NOT NULL DEFAULT '0',
  `uid` smallint(6) NOT NULL DEFAULT '0',
  `istx` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COMMENT='IM会话人员';

-- ----------------------------
-- Records of htmlvi_im_groupuser
-- ----------------------------
INSERT INTO `htmlvi_im_groupuser` VALUES ('75', '2', '2', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('19', '0', '0', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('77', '14', '2', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('65', '2', '7', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('64', '2', '6', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('45', '26', '9', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('73', '14', '1', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('44', '26', '8', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('23', '2', '8', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('43', '26', '1', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('90', '2', '5', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('74', '2', '1', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('76', '2', '4', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('70', '14', '5', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('78', '2', '3', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('79', '31', '1', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('80', '31', '6', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('81', '31', '7', '1');
INSERT INTO `htmlvi_im_groupuser` VALUES ('82', '31', '8', '1');

-- ----------------------------
-- Table structure for `htmlvi_im_history`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_im_history`;
CREATE TABLE `htmlvi_im_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `receid` smallint(6) DEFAULT '0',
  `uid` smallint(6) DEFAULT NULL,
  `sendid` smallint(6) DEFAULT '0',
  `optdt` datetime DEFAULT NULL,
  `cont` varchar(200) DEFAULT NULL,
  `stotal` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`receid`,`uid`),
  KEY `optdt` (`optdt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IM会话记录历史表';

-- ----------------------------
-- Records of htmlvi_im_history
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_im_menu`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_im_menu`;
CREATE TABLE `htmlvi_im_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) NOT NULL DEFAULT '0',
  `pid` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(10) DEFAULT NULL COMMENT '名称',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `type` tinyint(4) DEFAULT '0' COMMENT '1url,0事件',
  `url` varchar(300) DEFAULT NULL COMMENT '对应地址',
  `num` varchar(20) DEFAULT NULL,
  `color` varchar(10) DEFAULT NULL COMMENT '颜色',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=140 DEFAULT CHARSET=utf8 COMMENT='IM下应用菜单';

-- ----------------------------
-- Records of htmlvi_im_menu
-- ----------------------------
INSERT INTO `htmlvi_im_menu` VALUES ('1', '13', '0', '上月', '0', '0', 'prevmonth', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('2', '13', '0', '当月', '0', '0', 'nowmonth', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('3', '13', '0', '下月', '0', '0', 'nextmonth', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('4', '3', '0', '全部信息', '0', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('5', '3', '0', '未读信息', '0', '0', 'wexx', 'weidu', null);
INSERT INTO `htmlvi_im_menu` VALUES ('6', '12', '0', '我的任务', '0', '0', null, 'myrw', null);
INSERT INTO `htmlvi_im_menu` VALUES ('7', '12', '0', '下属任务', '0', '0', 'down', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('8', '12', '0', '＋创建任务', '0', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('9', '3', '0', '新增公告', '0', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('10', '4', '0', '今日会议', '0', '0', 'today', 'today', null);
INSERT INTO `htmlvi_im_menu` VALUES ('11', '4', '0', '本周会议', '0', '0', 'week', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('12', '4', '0', '＋新增会议', '0', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('13', '7', '0', '我的日报', '0', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('14', '7', '0', '下属日报', '0', '0', 'under', 'under', null);
INSERT INTO `htmlvi_im_menu` VALUES ('15', '7', '0', '＋写日报', '0', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('16', '7', '14', '全部', '0', '0', 'undall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('17', '7', '14', '未读', '1', '0', 'undwd', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('18', '1', '0', '最新信息', '0', '0', 'new', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('19', '1', '0', '＋建议反馈', '1', '1', 'http://xh829.com/fankui.html', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('22', '12', '6', '我创建的', '2', '0', 'wcj', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('20', '12', '6', '未完成', '0', '0', 'wwc', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('21', '12', '6', '已完成', '1', '0', 'ywc', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('23', '15', '0', '流程申请', '3', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('24', '15', '23', '＋请假条', '0', '1', 'add_leave', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('25', '15', '23', '＋加班单', '0', '1', 'add_jiaban', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('26', '15', '0', '我的申请', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('27', '15', '0', '处理未通过', '0', '0', 'wtg', 'mywtg', null);
INSERT INTO `htmlvi_im_menu` VALUES ('28', '15', '26', '我所有申请', '0', '0', 'apply', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('29', '15', '26', '未通过', '0', '0', 'wtg', null, 'red');
INSERT INTO `htmlvi_im_menu` VALUES ('30', '15', '26', '已完成', '0', '0', 'ywc', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('31', '16', '0', '所有待办', '0', '0', 'daib', 'daiban', null);
INSERT INTO `htmlvi_im_menu` VALUES ('32', '16', '0', '单据查看', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('34', '16', '32', '直属下级申请', '1', '0', 'myxia', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('33', '16', '32', '经我处理', '0', '0', 'jwcl', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('35', '12', '6', '我所有任务', '3', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('36', '19', '0', '我的销售机会', '0', '0', null, 'gen', null);
INSERT INTO `htmlvi_im_menu` VALUES ('37', '17', '40', '我的客户', '0', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('41', '17', '0', '新增客户', '2', '1', 'add_customer', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('39', '17', '40', '我全部客户', '0', '0', 'myall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('40', '17', '0', '我的客户', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('42', '19', '0', '新增销售', '2', '1', 'add_custsale', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('43', '19', '36', '需跟进', '0', '0', 'mygx', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('44', '19', '36', '已成交', '1', '0', 'mycj', null, 'green');
INSERT INTO `htmlvi_im_menu` VALUES ('45', '19', '36', '已丢失', '2', '0', 'myds', null, '');
INSERT INTO `htmlvi_im_menu` VALUES ('46', '19', '36', '我所有销售', '3', '0', 'myall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('47', '17', '40', '我标★客户', '0', '0', 'mystat', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('48', '17', '40', '我停用客户', '0', '0', 'my_ting', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('49', '15', '26', '待处理', '0', '0', 'dcl', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('50', '20', '0', '新建文件夹', '2', '0', 'create', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('51', '20', '0', '上传文件', '0', '0', 'up', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('52', '20', '0', '共享的', '1', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('53', '21', '0', '日程', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('54', '21', '53', '当月', '0', '0', 'nowmonth', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('55', '21', '53', '下月', '0', '0', 'nextmonth', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('56', '21', '0', '日程管理', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('57', '21', '0', '＋新增', '0', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('58', '24', '87', '我今日外出', '0', '0', 'mytoday', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('59', '24', '0', '＋新增', '2', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('60', '24', '87', '我所有外出', '1', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('61', '20', '52', '我共享的', '0', '0', 'shate', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('62', '20', '52', '共享给我的', '0', '0', 'fxgw', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('63', '15', '23', '更多&gt;&gt;', '0', '0', 'moreapply', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('64', '26', '0', '收件箱', '0', '0', null, 'sjx', null);
INSERT INTO `htmlvi_im_menu` VALUES ('65', '26', '0', '＋写信', '2', '1', 'add_emailm', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('66', '27', '0', '知识信息', '0', '0', 'def', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('67', '26', '0', '草稿箱', '1', '0', 'cgx', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('68', '26', '64', '未读邮件', '0', '0', 'wdyj', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('69', '26', '64', '所有邮件', '0', '0', 'sjx', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('70', '26', '64', '已发送', '0', '0', 'yfs', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('71', '5', '0', '内部通讯录', '0', '0', 'txlmy|user', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('72', '5', '0', '个人通讯录', '0', '0', 'def|vcard', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('73', '5', '0', '＋新增', '0', '1', 'add_vcard', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('74', '28', '0', '我的记录', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('75', '28', '0', '考勤信息', '2', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('80', '28', '74', '我的打卡', '0', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('77', '28', '75', '＋请假条', '0', '1', 'add_leave', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('78', '28', '75', '我的请假条', '3', '0', 'my|leave', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('79', '17', '0', '下属客户', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('81', '28', '82', '下属打卡', '0', '0', 'down', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('82', '28', '0', '下属记录', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('83', '28', '74', '我的定位', '0', '0', 'my|kqdw', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('84', '28', '82', '下属定位', '0', '0', 'down|kqdw', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('92', '19', '0', '下属销售机会', '1', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('85', '28', '75', '我的加班单', '4', '0', 'my|jiaban', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('86', '28', '75', '＋加班单', '1', '1', 'add_jiaban', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('87', '24', '0', '我的外出', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('88', '24', '91', '下属所有外出', '3', '0', 'downall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('89', '1', '0', '打开官网', '0', '1', 'http://xh829.com/', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('90', '24', '91', '下属今日外出', '2', '0', 'downtoday', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('91', '24', '0', '下属外出', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('93', '30', '0', '我的统计', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('94', '30', '0', '下属统计', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('95', '30', '93', '当月统计', '0', '0', 'mynow', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('96', '30', '93', '上月统计', '0', '0', 'mylast', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('97', '30', '94', '当月统计', '0', '0', 'downnow', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('98', '30', '94', '上月统计', '0', '0', 'downlast', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('99', '21', '56', '我的日程', '0', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('100', '21', '56', '提醒给我的', '1', '0', 'rece', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('101', '17', '40', '我创建', '0', '0', 'mycj', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('102', '17', '40', '共享给我的', '0', '0', 'gxgw', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('103', '17', '79', '下属全部客户', '0', '0', 'downall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('104', '17', '79', '下属停用', '0', '0', 'downty', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('105', '17', '79', '下属标★', '0', '0', 'downstat', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('106', '19', '92', '下属需跟进', '0', '0', 'downgj', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('107', '19', '92', '下属已成交', '1', '0', 'downcj', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('108', '19', '92', '下属已丢失', '2', '0', 'downds', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('109', '19', '92', '所有销售机会', '3', '0', 'downall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('110', '32', '0', '所有题库', '0', '0', 'all', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('111', '32', '0', '未读题库', '1', '0', 'weidu', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('112', '33', '0', '我未考试', '0', '0', 'weiks', 'weiks', null);
INSERT INTO `htmlvi_im_menu` VALUES ('113', '33', '0', '所有考试', '1', '0', 'myall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('114', '34', '0', '我的合同', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('115', '34', '114', '我所有合同', '0', '0', 'my', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('116', '34', '114', '我的已过期', '1', '0', 'ygq', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('117', '34', '0', '下属合同', '1', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('118', '34', '117', '下属所有合同', '0', '0', 'downall', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('119', '34', '117', '下属已过期', '1', '0', 'downygq', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('120', '34', '0', '＋新增', '1', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('121', '35', '0', '我的收款单', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('122', '35', '121', '我未收款', '0', '0', 'myskdws', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('123', '35', '121', '我已收款', '1', '0', 'myskdys', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('124', '35', '121', '我所有的', '2', '0', 'myskd', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('125', '35', '0', '下属收款单', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('126', '35', '125', '下属未收款', '0', '0', 'downskdwsk', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('127', '35', '125', '下属已收款', '0', '0', 'downskdys', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('128', '35', '125', '下属所有', '0', '0', 'downskd', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('129', '35', '0', '＋新增', '0', '1', 'add', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('130', '36', '0', '我的付款单', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('131', '36', '130', '我未付款', '0', '0', 'myfkdwf|custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('132', '36', '130', '我已付款', '1', '0', 'myfkdyf|custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('133', '36', '130', '我所有的', '2', '0', 'myfkd|custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('134', '36', '0', '下属付款单', '0', '0', null, null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('135', '36', '134', '下属未付款', '0', '0', 'downfkdwf|custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('136', '36', '134', '下属已付款', '0', '0', 'downfkdyf|custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('137', '36', '134', '下属所有', '0', '0', 'downfkd|custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('138', '36', '0', '＋新增', '0', '1', 'add_custfina', null, null);
INSERT INTO `htmlvi_im_menu` VALUES ('139', '38', '0', '我的工资', '0', '0', 'my', null, null);

-- ----------------------------
-- Table structure for `htmlvi_im_mess`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_im_mess`;
CREATE TABLE `htmlvi_im_mess` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IM聊天记录表';

-- ----------------------------
-- Records of htmlvi_im_mess
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_im_messzt`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_im_messzt`;
CREATE TABLE `htmlvi_im_messzt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) DEFAULT NULL COMMENT '信息id',
  `uid` int(11) DEFAULT NULL COMMENT '人员id',
  `gid` smallint(6) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IM聊天消息状态表';

-- ----------------------------
-- Records of htmlvi_im_messzt
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_infor`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_infor`;
CREATE TABLE `htmlvi_infor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='通知公告';

-- ----------------------------
-- Records of htmlvi_infor
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_infors`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_infors`;
CREATE TABLE `htmlvi_infors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` smallint(6) DEFAULT '0' COMMENT '对应主表infor.id',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `touitems` varchar(200) DEFAULT NULL COMMENT '投票选项',
  `touci` int(11) DEFAULT '0' COMMENT '得到票数',
  PRIMARY KEY (`id`),
  KEY `mid` (`mid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of htmlvi_infors
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_knowledge`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_knowledge`;
CREATE TABLE `htmlvi_knowledge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL COMMENT '标题',
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应分类',
  `sort` smallint(6) DEFAULT '0' COMMENT '排序',
  `content` text,
  `optdt` datetime DEFAULT NULL,
  `optname` varchar(20) DEFAULT NULL,
  `adddt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识信息';

-- ----------------------------
-- Records of htmlvi_knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_knowtiku`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_knowtiku`;
CREATE TABLE `htmlvi_knowtiku` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识题库';

-- ----------------------------
-- Records of htmlvi_knowtiku
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_knowtraim`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_knowtraim`;
CREATE TABLE `htmlvi_knowtraim` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='培训表出题考试';

-- ----------------------------
-- Records of htmlvi_knowtraim
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_knowtrais`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_knowtrais`;
CREATE TABLE `htmlvi_knowtrais` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='考试培训子表';

-- ----------------------------
-- Records of htmlvi_knowtrais
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqanay`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqanay`;
CREATE TABLE `htmlvi_kqanay` (
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
  PRIMARY KEY (`id`),
  KEY `dt` (`dt`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='考勤分析';

-- ----------------------------
-- Records of htmlvi_kqanay
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqdist`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqdist`;
CREATE TABLE `htmlvi_kqdist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recename` varchar(200) DEFAULT NULL,
  `receid` varchar(20) DEFAULT NULL,
  `mid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0考勤时间,1休息,2定位的',
  `startdt` date DEFAULT NULL,
  `enddt` date DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1' COMMENT '状态',
  `sort` int(11) DEFAULT '0' COMMENT '排序号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='考勤分配表';

-- ----------------------------
-- Records of htmlvi_kqdist
-- ----------------------------
INSERT INTO `htmlvi_kqdist` VALUES ('1', '信呼开发团队', 'd1', '1', '0', '2010-01-01', '2021-09-30', '1', '1');
INSERT INTO `htmlvi_kqdist` VALUES ('4', '信呼开发团队', 'd1', '1', '1', '2014-08-01', '2021-08-31', '1', '0');
INSERT INTO `htmlvi_kqdist` VALUES ('5', '信呼开发团队', 'd1', '1', '2', '2016-11-01', '2017-12-31', '1', '0');
INSERT INTO `htmlvi_kqdist` VALUES ('6', '信呼客服', 'u8', '33', '0', '2017-05-01', '2017-05-16', '1', '0');
INSERT INTO `htmlvi_kqdist` VALUES ('7', '信呼客服', 'u8', '21', '0', '2017-05-17', '2017-05-31', '1', '0');
INSERT INTO `htmlvi_kqdist` VALUES ('8', '开发部', 'd2', '2', '2', '2017-05-01', '2017-05-31', '1', '0');
INSERT INTO `htmlvi_kqdist` VALUES ('9', '赵子龙', 'u7', '44', '0', '2017-07-01', '2018-07-31', '1', '0');

-- ----------------------------
-- Table structure for `htmlvi_kqdisv`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqdisv`;
CREATE TABLE `htmlvi_kqdisv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plx` tinyint(1) DEFAULT '1' COMMENT '1组排班,2人员',
  `receid` int(11) DEFAULT '0' COMMENT '组id,人员Id',
  `dt` date DEFAULT NULL COMMENT '日期',
  `type` tinyint(1) DEFAULT '0' COMMENT '0考勤时间,1休息,2工作日',
  `mid` int(11) DEFAULT '0' COMMENT '对应主ID',
  PRIMARY KEY (`id`),
  KEY `receid` (`plx`,`receid`,`dt`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of htmlvi_kqdisv
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqdkjl`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqdkjl`;
CREATE TABLE `htmlvi_kqdkjl` (
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
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`,`dkdt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='打卡记录';

-- ----------------------------
-- Records of htmlvi_kqdkjl
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqdw`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqdw`;
CREATE TABLE `htmlvi_kqdw` (
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='考勤定位规则';

-- ----------------------------
-- Records of htmlvi_kqdw
-- ----------------------------
INSERT INTO `htmlvi_kqdw` VALUES ('1', '公司位置', '24.529177795467607', '118.16920609709778', '厦门软件园', '100', '17', null, '0', '2');
INSERT INTO `htmlvi_kqdw` VALUES ('2', '软件园', '24.485332478987026', '118.18730771541595', '望海路', '300', '15', null, '0', null);

-- ----------------------------
-- Table structure for `htmlvi_kqerr`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqerr`;
CREATE TABLE `htmlvi_kqerr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT '0',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='打卡异常申请';

-- ----------------------------
-- Records of htmlvi_kqerr
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqinfo`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqinfo`;
CREATE TABLE `htmlvi_kqinfo` (
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
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='请假条加班单';

-- ----------------------------
-- Records of htmlvi_kqinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqout`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqout`;
CREATE TABLE `htmlvi_kqout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `outtime` datetime DEFAULT NULL COMMENT '外出时间',
  `intime` datetime DEFAULT NULL COMMENT '回岗时间',
  `address` varchar(50) DEFAULT NULL COMMENT '外出地址',
  `reason` varchar(500) DEFAULT NULL COMMENT '外出事由',
  `atype` varchar(2) DEFAULT NULL COMMENT '外出类型@外出,出差',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='外出出差';

-- ----------------------------
-- Records of htmlvi_kqout
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_kqsjgz`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqsjgz`;
CREATE TABLE `htmlvi_kqsjgz` (
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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='考勤时间规则';

-- ----------------------------
-- Records of htmlvi_kqsjgz
-- ----------------------------
INSERT INTO `htmlvi_kqsjgz` VALUES ('1', '全体人员考勤', '1', '0', null, null, '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('2', '下班', '3', '1', '13:00:00', '18:00:00', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('5', '正常', '0', '12', '06:00:00', '09:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('6', '迟到', '1', '12', '09:00:01', '12:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('7', '正常', '0', '2', '18:00:00', '23:59:59', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('8', '早退', '1', '2', '13:00:00', '17:59:59', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('12', '上班', '0', '1', '09:00:00', '12:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('21', '中班(8点-16点)', '3', '0', null, null, '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('22', '上班', '0', '21', '08:00:00', '12:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('23', '下班', '1', '21', '12:00:00', '16:00:00', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('24', '正常', '0', '22', '06:00:00', '08:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('25', '迟到', '1', '22', '08:00:01', '12:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('26', '早退', '1', '23', '12:00:01', '15:59:59', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('27', '正常', '0', '23', '16:00:00', '18:00:00', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('30', '晚班(16点-24点)', '4', '0', null, null, '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('31', '上班', '0', '30', '16:00:00', '20:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('32', '下班', '1', '30', '20:00:00', '23:59:59', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('33', '早班(0点-8点)', '2', '0', null, null, '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('34', '上班', '0', '33', '00:00:00', '04:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('35', '下班', '0', '33', '04:00:00', '08:00:00', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('36', '正常', '0', '34', '22:00:00', '00:00:00', '0', '2', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('37', '迟到', '0', '34', '00:00:01', '02:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('38', '正常', '0', '35', '08:00:00', '10:00:00', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('39', '早退', '0', '35', '04:00:00', '07:59:59', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('40', '正常', '0', '31', '14:00:00', '16:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('41', '迟到', '0', '31', '16:00:01', '20:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('42', '正常', '0', '32', '00:00:00', '02:00:00', '1', '1', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('43', '早退', '0', '32', '20:00:00', '23:59:59', '1', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('44', '全体人员4状态考勤', '5', '0', null, null, '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('45', '上午上班', '0', '44', '08:00:00', '12:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('46', '上午下班', '1', '44', '12:00:00', '14:30:00', '0', '0', '1', '1');
INSERT INTO `htmlvi_kqsjgz` VALUES ('47', '下午上班', '2', '44', '14:30:00', '18:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('48', '下午下班', '3', '44', '18:00:00', '23:59:59', '0', '0', '1', '1');
INSERT INTO `htmlvi_kqsjgz` VALUES ('49', '正常', '0', '45', '06:00:00', '08:00:00', '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('50', '迟到', '1', '45', '08:00:01', '12:00:00', '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('51', '正常', '0', '46', '12:00:00', '14:30:00', '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('52', '早退', '0', '46', '08:00:01', '11:59:59', '1', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('53', '正常', '0', '47', '12:00:00', '14:30:00', '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('54', '迟到', '0', '47', '14:30:00', '18:00:00', '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('55', '正常', '0', '48', '18:00:00', '23:59:59', '1', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('56', '早退', '0', '48', '14:30:01', '17:59:59', '1', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('57', '半天班', '6', '0', null, null, '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('58', '上班', '0', '57', '09:00:00', '12:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('59', '下班', '1', '57', '12:00:00', '23:59:59', '0', '0', '1', '1');
INSERT INTO `htmlvi_kqsjgz` VALUES ('60', '正常', '0', '58', '06:00:00', '09:00:00', '0', '0', '1', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('61', '迟到', '0', '58', '09:00:01', '12:00:00', '0', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('62', '正常', '0', '59', '12:00:00', '23:59:59', '1', '0', '0', '0');
INSERT INTO `htmlvi_kqsjgz` VALUES ('63', '早退', '0', '59', '09:00:01', '12:00:00', '1', '0', '0', '0');

-- ----------------------------
-- Table structure for `htmlvi_kqxxsj`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_kqxxsj`;
CREATE TABLE `htmlvi_kqxxsj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `dt` date DEFAULT NULL,
  `pid` smallint(6) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0' COMMENT '0休息日,1工作日',
  `uid` int(11) DEFAULT '0' COMMENT '对应用户/部门Id',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`dt`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COMMENT='休息时间规则';

-- ----------------------------
-- Records of htmlvi_kqxxsj
-- ----------------------------
INSERT INTO `htmlvi_kqxxsj` VALUES ('1', '全体人员休息日', null, '0', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('10', null, '2017-02-01', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('3', null, '2017-02-05', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('4', null, '2017-02-11', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('5', null, '2017-02-12', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('6', null, '2017-02-18', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('7', null, '2017-02-19', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('8', null, '2017-02-25', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('9', null, '2017-02-26', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('11', null, '2017-02-02', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('12', null, '2017-01-01', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('13', null, '2017-01-07', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('14', null, '2017-01-08', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('15', null, '2017-01-14', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('16', null, '2017-01-15', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('17', null, '2017-01-21', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('25', null, '2017-01-29', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('19', null, '2017-01-28', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('23', null, '2017-01-31', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('21', null, '2017-01-02', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('22', null, '2017-01-30', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('24', null, '2017-01-27', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('26', null, '2017-04-01', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('27', null, '2017-04-02', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('28', null, '2017-04-08', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('29', null, '2017-04-09', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('30', null, '2017-04-15', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('31', null, '2017-04-16', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('32', null, '2017-04-22', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('33', null, '2017-04-23', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('34', null, '2017-04-29', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('35', null, '2017-04-30', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('36', null, '2017-05-06', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('37', null, '2017-05-07', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('38', null, '2017-05-13', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('39', null, '2017-05-14', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('40', null, '2017-05-20', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('41', null, '2017-05-21', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('42', null, '2017-05-27', '1', '0', '0');
INSERT INTO `htmlvi_kqxxsj` VALUES ('43', null, '2017-05-28', '1', '0', '0');

-- ----------------------------
-- Table structure for `htmlvi_location`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_location`;
CREATE TABLE `htmlvi_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(30) DEFAULT NULL,
  `uid` smallint(6) DEFAULT '0',
  `agentid` smallint(6) DEFAULT '0',
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='外勤定位';

-- ----------------------------
-- Records of htmlvi_location
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_log`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_log`;
CREATE TABLE `htmlvi_log` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of htmlvi_log
-- ----------------------------
INSERT INTO `htmlvi_log` VALUES ('1', 'pc登录', '1', '管理员', '[admin]用户名登录成功', '2017-09-04 10:53:01', '127.0.0.1', 'Firefox', '1503304287043', '0', 'http://localhost/xinhu_utf8_v1.5.6/index.php?a=check&m=login&d=&ajaxbool=true&rnd=0.7446618570611548');
INSERT INTO `htmlvi_log` VALUES ('2', 'pc登录', '1', '管理员', '[admin]用户名登录成功', '2017-09-04 10:58:03', '127.0.0.1', 'Firefox', '1503304287043', '0', 'http://localhost/xinhu_utf8_v1.5.6/index.php?a=check&m=login&d=&ajaxbool=true&rnd=0.8105629331884182');
INSERT INTO `htmlvi_log` VALUES ('3', 'pc登录', '1', '管理员', '[admin]用户名登录成功', '2017-09-17 14:16:51', '127.0.0.1', 'Firefox', '1505608952943', '0', 'http://localhost/oa0003/index.php?a=check&m=login&d=&ajaxbool=true&rnd=0.4571821511435311');
INSERT INTO `htmlvi_log` VALUES ('4', '删除单据', '1', '管理员', '删除模块[应用管理]id为1的单据', '2017-09-17 14:19:25', '127.0.0.1', 'Firefox', null, '3', 'http://localhost/oa0003/index.php?a=publicdel&m=index&d=&ajaxbool=true&rnd=0.8206751651140178');

-- ----------------------------
-- Table structure for `htmlvi_logintoken`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_logintoken`;
CREATE TABLE `htmlvi_logintoken` (
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
  KEY `token` (`token`,`cfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='系统登录token';

-- ----------------------------
-- Records of htmlvi_logintoken
-- ----------------------------
INSERT INTO `htmlvi_logintoken` VALUES ('3', '1', '管理员', 'qf3i39nf', '2017-09-17 14:16:51', '2017-09-17 14:16:51', 'pc', '1505608952943', '127.0.0.1', 'Firefox', '1');

-- ----------------------------
-- Table structure for `htmlvi_meet`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_meet`;
CREATE TABLE `htmlvi_meet` (
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会议';

-- ----------------------------
-- Records of htmlvi_meet
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_menu`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_menu`;
CREATE TABLE `htmlvi_menu` (
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
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COMMENT='系统菜单';

-- ----------------------------
-- Records of htmlvi_menu
-- ----------------------------
INSERT INTO `htmlvi_menu` VALUES ('1', '系统', '0', '20', null, 'cog', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('2', '菜单管理', '220', '4', 'system,menu', 'list-ul', null, 'menu', '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('3', '用户管理', '220', '2', 'flow,page,user,atype=all,pnum=all', 'user', null, 'user', '1', '1', '#5AAAE2', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('4', '计划任务', '46', '7', 'system,task', 'time', null, 'taskrun', '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('5', '组管理', '220', '3', 'system,group', 'group', null, 'group', '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('6', '组织结构', '220', '1', 'system,dept', 'sitemap', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('7', '流程模块', '0', '10', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('8', '权限管理', '1', '6', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('9', '人员→菜单', '8', '0', 'system,extent,type=um', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('10', '菜单→人员', '8', '1', 'system,extent,type=mu', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('11', '组→菜单', '8', '2', 'system,extent,type=gm', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('12', '菜单→组', '8', '3', 'system,extent,type=mg', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('13', '人员权限查看', '8', '4', 'system,extent,type=view', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('14', '即时通信管理', '1', '5', null, 'comment', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('15', '应用管理', '14', '4', 'main,yingyong', 'th-large', null, 'yingyong', '1', '1', '#1ABC9C', '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('16', '会话管理', '14', '3', 'main,imgroup', 'comments', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('17', '流程模块列表', '7', '2', 'main,flow,set', 'check', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('18', '服务器设置', '14', '0', 'main,xinhu,cog', 'tasks', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('20', '表单元素管理', '7', '5', 'main,flow,element', 'th-list', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('21', '流程模块权限', '7', '6', 'main,view', 'lock', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('22', '流程单据查看', '7', '7', 'main,flow,view', 'search', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('24', '数据选项', '7', '1', 'system,option,num=xinhu', 'cog', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('26', '流程审核步骤', '7', '4', 'main,flow,course', 'resize-vertical', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('27', '人事考勤', '0', '6', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('28', '物品管理', '140', '1', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('29', '单据异常监控', '7', '12', 'main,flow,error', 'briefcase', null, 'danerror', '1', '1', '#800000', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('30', '物品列表', '28', '0', 'main,goods', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('31', '物品出入库详情', '28', '0', 'main,goods,xiang', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('32', '考勤设置', '27', '10', null, 'time', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('33', '打卡记录', '57', '0', 'main,kaoqin,dkjl,atype=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('34', '单据操作菜单', '7', '8', 'main,flow,menu', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('36', '考勤信息', '57', '4', 'main,kaoqin,info', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('37', '客户统计', '63', '10', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('38', '个人办公', '0', '0', null, 'desktop', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('39', '个人中心', '38', '0', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('40', '流程', '0', '1', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('41', '我的申请', '40', '2', 'main,fwork,bill,atype=my', 'align-left', null, 'applymy', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('42', '流程申请', '40', '1', 'main,fwork,apply', 'plus', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('43', '待办/处理', '40', '0', 'main,fwork,bill,atype=daib', 'time', null, 'daiban', '0', '1', '#3BBDDB', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('44', '我的下属申请', '40', '3', 'main,fwork,bill,atype=xia', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('45', '日程', '38', '2', 'system,schedule,list', 'calendar', null, 'schedule', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('46', '系统工具', '1', '10', null, 'wrench', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('48', '微信设置', '47', '0', 'system,weixin,cog', null, null, null, '1', '0', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('49', '微信部门', '47', '1', 'system,weixin,dept', null, null, null, '1', '0', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('50', '微信用户', '47', '2', 'system,weixin,user', null, null, null, '1', '0', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('51', '应用设置', '47', '3', 'system,weixin,ying', null, null, null, '1', '0', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('52', '会话IM', '47', '4', 'system,weixin,chat', null, null, null, '1', '0', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('53', '考勤时间规则', '32', '1', 'main,kaoqin,sjgz', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('54', '考勤时间分配', '32', '2', 'main,kaoqin,sjfp,type=0', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('55', '休息时间规则', '32', '4', 'main,kaoqin,xxgz', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('56', '休息时间分配', '32', '5', 'main,kaoqin,sjfp,type=1', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('57', '考勤信息', '27', '11', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('58', '考勤分析', '57', '6', 'main,kaoqin,anay', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('59', '我的考勤', '38', '12', null, 'time', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('60', '考勤统计', '57', '7', 'main,kaoqin,total,atype=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('61', '人员考勤设置', '32', '0', 'main,kaoqin,kqcog', 'cog', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('62', '经我处理', '40', '4', 'main,fwork,bill,atype=jmy', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('63', '客户', '0', '5', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('64', '客户', '63', '1', 'main,customer,list,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('65', '我的任务', '66', '1', 'flow,page,work,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('66', '任务', '0', '3', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('67', '我未完成任务', '66', '2', 'flow,page,work,atype=wwc', 'book', null, 'workwwc', '0', '1', '#BFC462', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('68', '我创建任务', '66', '3', 'flow,page,work,atype=wcj', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('69', '我执行的项目', '79', '2', 'flow,page,project,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('70', '我未完成项目', '79', '2', 'flow,page,project,atype=wwc', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('71', '我创建的项目', '79', '3', 'flow,page,project,atype=mycj', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('72', '我负责的项目', '79', '2', 'flow,page,project,atype=myfz', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('73', '销售机会', '63', '2', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('74', '我申请未通过', '40', '2', 'main,fwork,bill,atype=mywtg', 'info-sign', null, 'applywtg', '0', '1', '#B67FF4', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('75', '共享给我的', '64', '1', 'flow,page,customer,atype=gxgw,pnum=shate', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('76', '工作日报', '38', '13', null, 'edit', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('77', '我的日报', '76', '6', 'flow,page,daily,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('78', '我下属日报', '76', '8', 'flow,page,daily,atype=undall', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('79', '项目管理', '66', '0', null, 'circle-arrow-right', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('80', '任务督导', '66', '4', 'flow,page,work,atype=dd', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('81', '所有任务一览', '66', '10', 'flow,page,work,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('82', '所有项目一览', '79', '10', 'flow,page,project,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('83', '我下属任务', '66', '2', 'flow,page,work,atype=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('84', '人事档案', '27', '0', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('85', '人员档案', '84', '0', 'flow,page,userinfo,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('86', '我的考勤表', '59', '0', 'main,kaoqin,geren', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('87', '我的考勤信息', '59', '4', 'main,kaoqin,kqinfo,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('88', '我的考勤统计', '59', '5', 'main,kaoqin,total,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('89', '会议', '38', '11', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('90', '通知公告', '38', '1', 'flow,page,gong,atype=my', 'volume-up', null, 'gong', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('91', '流程模块条件', '7', '9', 'main,flow,where', 'asterisk', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('92', '我的打卡记录', '59', '1', 'main,kaoqin,dkjl,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('93', '我的定位记录', '59', '6', 'main,kaoqin,location,atype=my', 'map-marker', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('94', '定位记录', '57', '1', 'main,kaoqin,location,atype=all', 'map-marker', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('95', '员工合同', '84', '0', 'flow,page,userract,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('96', '转正申请', '127', '0', 'flow,page,hrpositive,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('97', '离职申请', '127', '0', 'flow,page,hrredund,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('98', '薪资管理', '27', '3', null, 'money', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('99', '薪资核算', '98', '0', 'main,salary,list', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('100', '提醒信息', '39', '0', 'system,geren,todo', 'bell', null, 'todo', '0', '1', '#EFBB62', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('101', '个人资料', '39', '1', 'main,userinfo,geren', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('102', '薪资发放', '98', '0', 'main,salary,fafang', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('104', '合同', '63', '3', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('105', '收款单', '63', '4', null, 'money', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('106', '我的收款单', '105', '0', 'flow,page,custfina,atype=myskd', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('107', '我的付款单', '118', '0', 'flow,page,custfina,atype=myfkd,pnum=fkd', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('108', '我的合同', '104', '0', 'flow,page,custract,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('109', '我下属的合同', '104', '1', 'flow,page,custract,atype=downall,pnum=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('110', '我的销售机会', '73', '0', 'flow,page,custsale,atype=mygx', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('111', '我下属销售机会', '73', '1', 'flow,page,custsale,atype=downgj,pnum=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('112', '我的客户', '64', '0', 'flow,page,customer,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('113', '我下属客户', '64', '2', 'flow,page,customer,atype=downall,pnum=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('114', '金额统计', '63', '20', null, 'bar-chart', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('115', '我的财务统计', '114', '0', 'main,customer,total,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('116', '我下属财务统计', '114', '0', 'main,customer,total,atype=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('117', '我年度统计', '114', '0', 'main,customer,totalge', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('118', '付款单', '63', '5', null, null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('119', '我下属收款单', '105', '0', 'flow,page,custfina,atype=downskd,pnum=downskd', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('120', '我下属付款单', '118', '0', 'flow,page,custfina,atype=downfkd,pnum=downfkd', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('121', '所有收款单', '126', '4', 'flow,page,custfina,atype=allskd,pnum=allskd', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('122', '所有付款单', '126', '5', 'flow,page,custfina,atype=allfkd,pnum=allfkd', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('123', '客户分配', '64', '6', 'flow,page,customer,atype=distdfp,pnum=dist', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('19', '资源', '0', '2', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('124', '个人文档', '19', '0', 'system,word,guan,showlx=0', 'folder-close-alt', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('125', '共享的文档', '19', '2', 'system,word,shate', 'folder-open-alt', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('126', '客户查看', '63', '30', null, 'eye-open', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('127', '人事管理', '27', '1', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('128', '人事调动', '127', '0', 'flow,page,hrtransfer,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('129', '调薪申请', '127', '0', 'flow,page,hrtrsalary,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('130', '奖惩处罚', '127', '0', 'flow,page,reward,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('131', '我的客户统计', '37', '0', 'main,customer,alllist,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('132', '下属客户统计', '37', '0', 'main,customer,alllist,atype=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('133', '我上传过的文件', '39', '5', 'system,geren,file', 'folder-close-alt', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('134', '知识信息管理', '19', '3', 'system,infor,zhishi', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('135', '知识题库管理', '19', '4', 'system,infor,tiku', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('136', '知识题库学习', '19', '10', 'system,infor,tikuxx', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('137', '固定资产', '140', '1', 'main,assetm,list', 'laptop', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('138', '车辆管理', '140', '2', null, 'truck', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('139', '图书管理', '140', '3', null, 'book', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('140', '行政', '0', '7', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('141', '图书列表', '139', '0', 'main,book,list', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('143', '车辆列表', '138', '0', 'flow,page,carm,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('144', '车辆预定查询', '138', '2', 'flow,page,carmrese,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('145', '图书借阅', '139', '5', 'flow,page,bookborrow,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('146', '车辆预定情况', '138', '3', 'main,carm,carmqing', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('148', '内部通讯录', '39', '3', 'system,admin,txl', 'phone', null, 'reimtxl', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('149', '人员分析', '84', '0', 'main,userinfo,anay', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('150', '今日会议', '89', '0', 'flow,page,meet,atype=today', null, null, 'meet', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('151', '会议室情况', '89', '0', 'main,fwork,meethy', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('152', '定位打卡位置', '32', '6', 'main,kaoqin,kqdw', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('153', '定位打卡位置分配', '32', '7', 'main,kaoqin,sjfp,type=2', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('154', '邮件管理', '1', '3', null, 'envelope', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('156', '系统设置', '46', '0', 'system,cog,set', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('157', '邮件', '38', '0', 'system,email', 'envelope', null, 'email', '0', '1', '#0099CC', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('158', '知识信息查看', '19', '9', 'system,infor,zhishixx', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('159', '外出记录', '57', '2', 'flow,page,waichu,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('160', '我的外出记录', '59', '2', 'flow,page,waichu,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('161', '上传文件管理', '46', '15', 'system,geren,file,atype=all', 'folder-close-alt', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('162', '日志查看', '46', '16', 'system,cog,log', null, null, 'syslog', '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('163', '邮件收发设置', '154', '1', 'system,email,cogsfa', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('164', '用户邮箱设置', '154', '2', 'system,email,coguser', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('165', '印章管理', '140', '4', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('166', '印章列表', '165', '0', 'main,seal,list', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('167', '印章申请查询', '165', '0', 'flow,page,sealapl,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('168', '个人通讯录', '39', '4', 'system,geren,vcard', 'credit-card', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('169', '打卡异常', '57', '3', 'flow,page,kqerr,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('170', '我的打卡异常', '59', '3', 'flow,page,kqerr,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('172', '企业微信设置', '171', '0', 'system,weixinqy,cog', 'cog', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('155', '企业微信部门', '171', '1', 'system,weixinqy,dept', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('173', '企业微信用户', '171', '2', 'system,weixinqy,user', 'user', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('174', '企业微信应用', '171', '3', 'system,weixinqy,ying', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('179', '客户主页', '63', '0', 'main,customer,index', 'user-md', null, 'crmindex', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('175', '客户一览表', '126', '0', 'flow,page,customer,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('176', '所有客户合同', '126', '2', 'flow,page,custract,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('177', '所有销售机会', '126', '1', 'flow,page,custsale,atype=allgj,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('178', '所有财务统计', '126', '6', 'main,customer,total,atype=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('35', '单据通知设置', '7', '10', 'main,flow,todo', 'bell', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('181', '公众号设置', '180', '0', 'system,wxgzh,cog', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('182', '授权单据查看', '40', '5', 'main,fwork,bill,atype=grantview', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('183', '单据查看', '38', '3', 'main,fwork,search', 'search', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('184', '我的薪资', '39', '2', 'main,salary,my', 'money', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('185', '流程模块统计', '7', '11', 'main,flowtotal', 'bar-chart', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('186', '财务管理', '140', '11', null, 'money', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('187', '费用报销', '186', '0', 'flow,page,finfybx,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('188', '出差报销', '186', '3', 'flow,page,finccbx,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('189', '借款单', '186', '5', 'flow,page,finjkd,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('190', '还款单', '186', '7', 'flow,page,finhkd,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('191', '费用报销报表', '186', '1', 'flow,page,finccbxchart', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('192', '工作日报', '27', '2', null, 'edit', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('193', '所有日报', '192', '1', 'flow,page,daily,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('194', '日报统计', '192', '2', 'flow,page,dailytotal', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('195', '我的日报统计', '76', '7', 'flow,page,dailytotal,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('196', '日报统计分析', '192', '3', 'flow,page,dailychart', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('197', '考勤时间排班', '32', '3', 'main,kaoqin,sjpb', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('198', '我下属日报统计', '76', '9', 'flow,page,dailytotal,atype=down', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('199', '考试培训', '27', '12', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('200', '考试培训列表', '199', '0', 'flow,page,knowtraim,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('201', '考试培训人员', '199', '1', 'flow,page,knowtraimuser,atype=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('202', '我的培训考试', '39', '6', 'flow,page,knowtraimuser,atype=my', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('203', '部门文档', '19', '1', 'system,word,guan,showlx=1', 'folder-close-alt', null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('204', '公文', '0', '4', null, null, null, null, '1', '0', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('205', '收文单', '204', '2', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('206', '所有收文单', '205', '0', 'flow,page,officib,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('207', '单据提醒', '38', '4', 'main,fwork,todo', 'star-empty', null, 'flowtodo', '0', '1', '#ADCC61', '1', '0');
INSERT INTO `htmlvi_menu` VALUES ('209', '钉钉设置', '208', '0', 'system,wding,cog', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('210', '钉钉部门', '208', '1', 'system,wding,dept', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('211', '钉钉用户', '208', '2', 'system,wding,user', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('212', '钉钉微应用', '208', '3', 'system,wding,ying', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('213', '审核人员分组', '7', '3', 'main,flow,cname', 'group', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('214', '车辆信息登记', '138', '1', 'flow,page,carms,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('215', '车辆维修', '138', '4', 'flow,page,carmwx,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('216', '车辆保养', '138', '5', 'flow,page,carmby,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('217', '加班单核算', '57', '5', 'flow,page,jiaban,atype=allfee,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('218', '借款单统计', '186', '6', 'flow,page,finjkdtotal,atype=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('219', '公司单位', '220', '0', 'flow,page,company,atype=all,pnum=all', 'road', null, 'company', '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('220', '基础管理', '1', '0', null, 'asterisk', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('221', '首页项管理', '220', '5', 'system,home', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('222', '短信管理', '1', '4', null, 'envelope-alt', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('223', '短信设置', '222', '0', 'system,sms,cog', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('224', '短信签名', '222', '1', 'system,sms,qian', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('225', '短信模版', '222', '2', 'system,sms,tpl', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('226', '短信发送记录', '222', '3', 'system,sms,record', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('227', '我的会话记录', '39', '7', 'reim,record,atype=my', 'file-alt', null, 'reimrecord', '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('228', '会话记录', '14', '5', 'reim,record,atype=all', 'file-alt', null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('229', '付款申请', '186', '8', 'flow,page,finpay,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('230', '开票申请', '186', '9', 'flow,page,finkai,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('231', '日报授权查看', '76', '10', 'flow,page,daily,atype=grant', null, null, null, '0', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('232', '发文单', '204', '1', null, null, null, null, '1', '1', null, '0', '0');
INSERT INTO `htmlvi_menu` VALUES ('233', '所有发文单', '232', '0', 'flow,page,officia,atype=all,pnum=all', null, null, null, '1', '1', null, '0', '0');

-- ----------------------------
-- Table structure for `htmlvi_official`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_official`;
CREATE TABLE `htmlvi_official` (
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
  `filecontid` smallint(6) DEFAULT '0' COMMENT '正文文件Id',
  `zinum` varchar(30) DEFAULT NULL COMMENT '发文字号',
  `unitname` varchar(50) DEFAULT NULL COMMENT '发给单位',
  `unitsame` varchar(50) DEFAULT NULL COMMENT '发文单位',
  `miji` varchar(50) DEFAULT NULL COMMENT '公文密级',
  `laidt` date DEFAULT NULL COMMENT '来文日期',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='公文';

-- ----------------------------
-- Records of htmlvi_official
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_option`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_option`;
CREATE TABLE `htmlvi_option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `type` int(11) DEFAULT '0' COMMENT '选项类型',
  `pid` int(11) DEFAULT NULL,
  `num` varchar(50) DEFAULT NULL COMMENT '编号',
  `value` varchar(500) DEFAULT NULL COMMENT '对应值',
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
) ENGINE=MyISAM AUTO_INCREMENT=362 DEFAULT CHARSET=utf8 COMMENT='系统选项';

-- ----------------------------
-- Records of htmlvi_option
-- ----------------------------
INSERT INTO `htmlvi_option` VALUES ('4', '流程分类', '0', '1', 'flowfenlei', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('5', '考勤', '0', '4', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('6', '表单类型', '0', '1', 'flowinputtype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('7', '文本框', '0', '6', null, 'text', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('8', '日期', '0', '6', null, 'date', '1', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('9', '日期时间', '0', '6', null, 'datetime', '2', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('10', '时间', '0', '6', null, 'time', '3', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('11', '隐藏文本框', '0', '6', null, 'hidden', '4', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('12', '选择人员(单选)', '0', '6', null, 'changeuser', '7', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('13', '选择人员(多选)', '0', '6', null, 'changeusercheck', '8', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('14', '自定义', '0', '6', null, 'auto', '30', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('15', '数字', '0', '6', null, 'number', '5', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('16', '文本域', '0', '6', null, 'textarea', '6', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('17', '固定值', '0', '6', null, 'fixed', '11', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('18', '系统选项下拉框', '0', '6', null, 'rockcombo', '12', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('19', '下拉框', '0', '6', null, 'select', '13', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('20', 'html编辑器', '0', '6', null, 'htmlediter', '14', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('21', '选择部门人员', '0', '6', null, 'changedeptusercheck', '10', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('22', '单个复选框', '0', '6', null, 'checkbox', '15', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('23', '多个复选框', '0', '6', null, 'checkboxall', '16', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('24', '选择部门', '0', '6', null, 'changedept', '9', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('25', '行政', '0', '4', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('26', '信息类型', '0', '1', 'gongtype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('27', '通知公告', '0', '26', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('28', '规则制度', '0', '26', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('29', '会议室', '0', '1', 'hyname', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('30', '会客室', '0', '29', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('1', '信呼', '0', '0', 'xinhu', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('32', '任务类型', '0', '151', 'worktype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('33', '任务等级', '0', '151', 'workgrade', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('34', 'bug', '0', '32', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('35', '改进', '0', '32', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('36', '设计', '0', '32', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('37', '低', '0', '33', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('38', '中', '0', '33', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('39', '高', '0', '33', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('40', '紧急', '0', '33', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('41', '任务状态', '0', '151', 'workstate', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('42', '待执行', '0', '41', null, '0', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('43', '执行中', '0', '41', null, '2', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('44', '已完成', '0', '41', null, '1', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('45', '中止', '0', '41', null, '3', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('46', '请假类型', '0', '144', 'kqqjkind', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('47', '事假', '0', '46', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('48', '病假', '0', '46', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('49', '年假', '0', '46', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('50', '客户关系', '0', '1', 'crm', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('51', 'CRM', '0', '4', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('52', '客户来源', '0', '50', 'crmlaiyuan', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('53', '销售状态', '0', '50', 'crmstate', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('54', '网上开拓', '0', '52', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('55', '电话开拓', '0', '52', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('56', '跟进中', '0', '53', null, '0', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('57', '已成交', '0', '53', null, '1', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('58', '销售来源', '0', '50', 'custsalelai', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('59', '主动来访', '0', '58', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('60', '网上联系', '0', '58', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('61', '电话销售', '0', '58', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('62', '行政选项', '0', '1', 'goods', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('63', '互联网', '0', '83', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('64', '信呼', '0', '63', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('65', '办公耗材', '0', '83', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('66', '显示器', '0', '65', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('67', '鼠标', '0', '65', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('68', '主机', '0', '65', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('357', '编程', '0', '232', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('70', '资产品牌', '0', '62', 'rockbrand', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('71', '单位', '0', '62', 'rockunit', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('72', '台', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('73', '个', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('74', '件', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('75', '箱', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('76', '年', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('77', '月', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('78', '入库类型', '0', '62', 'kutype0', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('79', '出库类型', '0', '62', 'kutype1', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('80', '采购入库', '0', '78', null, '0', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('81', '领用出库', '0', '79', null, '0', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('82', '归返入库', '0', '78', null, '1', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('83', '物品分类', '0', '62', 'goodstype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('84', '销售出库', '0', '79', null, '1', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('85', '知识信息', '0', '26', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('86', '管理员文件夹目录', '0', null, 'folder1', null, '0', null, '1', '2016-10-26 20:52:17', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('87', '技术文档', '0', '86', null, null, '20', null, '1', '2016-08-08 22:07:41', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('88', '需求文档', '0', '86', null, null, '0', null, '1', '2016-08-08 22:08:27', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('89', '图片', '0', '86', null, null, '0', null, '1', '2016-08-08 22:44:10', '1', 'd1', '信呼开发团队', null);
INSERT INTO `htmlvi_option` VALUES ('92', '文件夹目录', '0', null, 'folder3', null, '0', null, '1', '2016-10-19 19:30:59', '3', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('93', '个人文件', '0', '92', null, null, '0', null, '1', '2016-08-09 13:57:06', '3', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('95', 'js文档', '0', '89', null, null, '0', null, '1', '2016-08-09 22:20:23', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('94', 'php文档', '0', '89', null, null, '0', null, '1', '2016-08-09 22:20:17', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('98', '文件夹目录', '0', null, 'folder4', null, '0', null, '1', '2016-10-19 19:31:27', '4', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('99', '公文选项', '0', '1', 'official', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('100', '公文类型', '0', '99', 'officialclass', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('101', '决议', '0', '100', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('102', '决定', '0', '100', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('103', '请示', '0', '100', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('104', '规定', '0', '100', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('105', '公文等级', '0', '99', 'officialgrade', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('106', '平急', '0', '105', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('107', '加急', '0', '105', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('108', '项目选项', '0', '1', 'project', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('109', '项目类型', '0', '108', 'projecttype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('110', '一般项目', '0', '109', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('111', '重要项目', '0', '109', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('112', '关键项目', '0', '109', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('113', '项目状态', '0', '108', 'projectstate', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('114', '待执行', '0', '113', null, '0', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('115', '执行中', '0', '113', null, '2', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('116', '已取消', '0', '113', null, '3', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('117', '已完成', '0', '113', null, '1', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('128', '文件夹目录', '0', null, 'folder8', null, '0', null, '1', '2016-10-01 17:57:12', '8', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('130', '财务选项', '0', '1', 'finance', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('131', '付款方式', '0', '130', 'paytype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('132', '现金', '0', '131', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('133', '支付宝', '0', '131', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('134', '微信', '0', '131', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('135', '银行转账', '0', '131', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('136', '报销项目', '0', '130', 'finaitems', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('137', '市内交通费', '0', '136', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('138', '电话费', '0', '136', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('139', '快递费', '0', '136', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('140', '停车费', '0', '136', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('141', '文件夹目录', '0', null, 'folder5', null, '0', null, '1', '2016-09-08 21:13:56', '5', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('143', '服务文档', '0', '128', null, null, '0', null, '1', '2016-09-13 11:32:22', '8', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('144', '考勤选项', '0', '1', 'kaoqin', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('145', '人事考勤类型', '0', '144', 'kqkind', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('146', '增加年假', '0', '145', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('147', '增加哺乳假', '0', '145', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('148', '增加陪产假', '0', '145', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('149', '奖惩', '0', '26', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('150', '文件夹目录', '0', null, 'folder9', null, '0', null, '1', '2016-10-01 18:38:06', '9', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('151', '任务选项', '0', '1', 'work', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('154', '人事选项', '0', '1', 'usertype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('155', '学历', '0', '154', 'xueli', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('156', '小学', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('157', '初中', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('158', '高中', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('159', '中专', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('160', '大专', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('161', '本科', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('162', '自考本科', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('163', '研究生', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('164', '博士', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('165', '其它', '0', '155', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('166', '合同类型', '0', '154', 'userhttype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('167', '劳动合同', '0', '166', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('168', '离职类型', '0', '154', 'redundtype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('169', '自动离职', '0', '168', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('170', '退休', '0', '168', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('171', '病辞', '0', '168', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('172', '辞退', '0', '168', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('173', '辞职', '0', '168', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('174', '月份', '0', '6', null, 'month', '17', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('175', '编号', '0', '6', null, 'num', '21', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('176', '客户类型', '0', '50', 'crmtype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('177', '互联网', '0', '176', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('178', '软件', '0', '176', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('179', '个体经营', '0', '176', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('180', '个人', '0', '176', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('181', '其它', '0', '176', null, null, '20', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('182', '政府机构', '0', '176', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('183', '人事调动类型', '0', '154', 'transfertype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('184', '平调', '0', '183', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('185', '晋升', '0', '183', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('186', '降职', '0', '183', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('190', '奖惩结果', '0', '154', 'rewardresult', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('191', '奖励', '0', '190', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('192', '警告', '0', '190', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('193', '辞退', '0', '190', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('194', '降职', '0', '190', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('195', '张飞文件夹目录', '0', null, 'folder6', null, '0', null, '1', '2016-10-24 21:27:22', '6', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('196', '个人经历', '0', '195', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('197', '知识分类', '0', null, 'knowledgetype', null, '0', null, '1', '2016-10-27 21:10:24', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('198', '工作指南', '0', '197', null, 'title,typename,recename,zuozhe,indate,optname,caozuo', '0', null, '1', '2017-04-21 09:26:50', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('199', '工作效率', '0', '198', null, null, '1', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('200', '工作目标', '0', '198', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('201', '规章制度', '0', '197', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('202', '工作规范', '0', '197', null, null, '0', null, '1', '2016-10-26 20:54:54', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('203', '资产分类', '0', '62', 'assetstype', null, '0', null, '1', '2016-10-27 21:14:45', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('204', '打印机', '0', '203', null, '', '0', null, '1', '2017-04-21 09:26:50', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('205', '固定资产来源', '0', '62', 'wplaiyuan', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('206', '电脑', '0', '203', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('207', '台式电脑', '0', '206', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('208', '笔记本', '0', '206', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('209', '平板', '0', '206', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('210', '一体机', '0', '206', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('211', '仓库', '0', '62', 'warehouse', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('212', '购入', '0', '205', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('213', '自建', '0', '205', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('214', '仓库1', '0', '211', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('215', '仓库2', '0', '211', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('216', '联想', '0', '70', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('217', '惠普', '0', '70', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('218', '车辆类型', '0', '327', 'cartype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('219', '小型车', '0', '218', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('220', '轿车', '0', '218', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('221', '车辆品牌', '0', '327', 'carbrand', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('222', '奔驰', '0', '221', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('223', '奥迪', '0', '221', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('224', '夏利', '0', '221', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('226', '题库分类', '0', null, 'knowtikutype', null, '0', null, '1', '2016-10-27 21:17:22', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('227', '官网知识', '0', '226', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('228', 'OA题库', '0', '226', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('229', '会议室1', '0', '29', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('230', '会议室2', '0', '29', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('231', '图书分类', '0', null, 'booktype', null, '0', null, '1', '2016-10-28 23:15:11', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('232', '计算机', '0', '231', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('233', '管理书籍', '0', '231', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('244', '印章类型', '0', '62', 'sealtype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('245', '合同章', '0', '244', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('246', '法人章', '0', '244', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('247', '财务章', '0', '244', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('248', '公章', '0', '244', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('249', '调休', '0', '46', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('250', '单图片上传', '0', '6', null, 'uploadimg', '19', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('251', '打卡异常类型', '0', '144', 'kqerrtype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('252', '忘记打卡', '0', '251', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('253', '打卡不成功', '0', '251', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('254', '邮箱文本框', '0', '6', null, 'email', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('255', 'gerenvcard_1选项', '0', null, 'gerenvcard_1', null, '0', null, '1', '2016-12-20 10:52:49', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('256', '同事', '0', '255', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('257', '盟友', '0', '255', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('258', '敌人', '0', '255', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('259', 'gerenvcard_8选项', '0', null, 'gerenvcard_8', null, '0', null, '1', '2016-12-20 11:23:21', '8', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('260', '同事', '0', '259', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('261', 'gerenvcard_5选项', '0', null, 'gerenvcard_5', null, '0', null, '1', '2016-12-20 11:30:38', '5', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('262', '弹框下拉选择(单选)', '0', '6', null, 'selectdatafalse', '22', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('263', '弹框下拉选择(多选)', '0', '6', null, 'selectdatatrue', '23', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('277', '用户bug1', '0', null, 'adminbug1', '2017-02-15 10:18:19', '0', null, '1', '2017-02-15 10:18:19', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('273', '单文件上传', '0', '6', null, 'uploadfile', '20', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('286', '模块列定义', '0', '-1007', 'columns_customer_shate', 'name,suoname,type,laiyuan,unitname,isstat,caozuo', '0', null, '1', '2017-07-13 19:02:20', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('287', '模块列定义', '0', '-1007', 'columns_customer_dist', 'name,suoname,type,laiyuan,unitname,isgys,linkname', '0', null, '1', '2017-04-21 11:55:50', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('288', '模块列定义', '0', '-1007', 'columns_customer_', 'name,suoname,type,unitname,tel,mobile,address,isstat,htshu,moneyz,moneyd,caozuo', '0', null, '1', '2017-04-21 11:55:33', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('294', '技术姿势', '0', '226', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('295', 'PHP知识', '0', '294', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('296', 'JS知识', '0', '294', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('298', '模块列定义', '0', '-1004', 'columns_work_', 'title,type,grade,dist,startdt,enddt,ddname,score,optname,optdt,caozuo', '0', null, '1', '2017-05-11 09:55:28', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('299', '模块列定义', '0', '-1004', 'columns_work_all', 'title,type,grade,dist,startdt,enddt,ddname,score,optname,optdt,caozuo', '0', null, '1', '2017-05-11 10:04:02', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('300', '收款章', '0', '244', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('302', '开发部文件夹目录', '0', null, 'deptfolderdev', null, '0', null, '1', '2017-05-27 17:36:02', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('303', '技术文档', '0', '302', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('304', '赵子龙文件夹目录', '0', null, 'folder7', null, '0', null, '1', '2017-05-27 17:49:46', '7', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('305', '公文密级', '0', '99', 'officialmiji', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('306', '私密', '0', '305', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('307', '机密', '0', '305', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('308', '绝密', '0', '305', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('309', '特急', '0', '105', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('310', '特提', '0', '105', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('311', '公文文件类别', '0', '99', 'officialfiletype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('312', '中央省委', '0', '311', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('313', '单选框', '0', '6', null, 'radio', '24', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('320', '车辆登记类型', '0', '327', 'carotype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('321', '加油', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('322', '强险', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('323', '商业险', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('324', '行驶证', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('325', '违章', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('326', '事故', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('327', '车辆管理选项', '0', '62', 'carm', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('328', '车辆几天内提醒(多个,分开)', '0', '327', 'cartodo', '0,3,7,10,30,45', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('331', '过桥费', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('332', '高速费', '0', '320', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('333', '客户合同到期几天内提醒', '0', '50', 'crmtodo', '0,3,7,10,30,45', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('334', '可直接申请请假类型', '0', '144', 'kqsqtype', '病假,事假', '0', null, '1', null, '0', null, null, '多个,分开，没有设置的请假类型时，申请请假条需要有剩余假期才可以申请。');
INSERT INTO `htmlvi_option` VALUES ('335', '人员状态', '0', '154', 'userstate', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('336', '试用期', '0', '335', null, '0', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('337', '正式', '0', '335', null, '1', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('338', '实习生', '0', '335', null, '2', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('339', '兼职', '0', '335', null, '3', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('340', '临时工', '0', '335', null, '4', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('341', '离职', '0', '335', null, '5', '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('342', 'gerenvcar选项', '0', null, 'gerenvcar', null, '0', null, '1', '2017-07-21 13:37:48', '1', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('344', '支', '0', '71', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('351', '发票类型', '0', '130', 'openpiaotype', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('352', '增值税普通发票', '0', '351', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('353', '增值税专用发票', '0', '351', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('354', '定额发票', '0', '351', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('355', '台式电脑2', '0', '206', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('356', '笔', '0', '65', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('359', '发文字号', '0', '99', 'officiazinum', null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('360', '信呼', '0', '359', null, null, '0', null, '1', null, '0', null, null, null);
INSERT INTO `htmlvi_option` VALUES ('361', null, '0', null, 'systemnum', '86694f1c98ed827a0ffea335c0e67b76', '0', null, '1', '2017-09-04 10:48:21', '1', null, null, null);

-- ----------------------------
-- Table structure for `htmlvi_project`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_project`;
CREATE TABLE `htmlvi_project` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Records of htmlvi_project
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_reads`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_reads`;
CREATE TABLE `htmlvi_reads` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单据浏览记录表';

-- ----------------------------
-- Records of htmlvi_reads
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_repair`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_repair`;
CREATE TABLE `htmlvi_repair` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='维修报修';

-- ----------------------------
-- Records of htmlvi_repair
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_reward`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_reward`;
CREATE TABLE `htmlvi_reward` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='奖惩';

-- ----------------------------
-- Records of htmlvi_reward
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_schedule`;
CREATE TABLE `htmlvi_schedule` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='日程';

-- ----------------------------
-- Records of htmlvi_schedule
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_seal`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_seal`;
CREATE TABLE `htmlvi_seal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '印章名称',
  `type` varchar(10) DEFAULT NULL COMMENT '印章类型',
  `bgname` varchar(50) DEFAULT NULL COMMENT '保管人',
  `bgid` varchar(50) DEFAULT NULL,
  `optdt` datetime DEFAULT NULL,
  `sort` smallint(6) DEFAULT '0' COMMENT '排序号',
  `sealimg` varchar(100) DEFAULT NULL COMMENT '对应印章图片',
  `explain` varchar(500) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='印章表';

-- ----------------------------
-- Records of htmlvi_seal
-- ----------------------------
INSERT INTO `htmlvi_seal` VALUES ('1', '信呼团队收款章', '收款章', '张飞', '6', '2017-05-18 20:45:25', '0', 'http://xh829.com/images/zhang_ys.png', null);
INSERT INTO `htmlvi_seal` VALUES ('2', '信呼团队公章', '公章', '管理员', '1', '2017-05-18 21:04:59', '0', 'http://xh829.com/images/gz.png', null);

-- ----------------------------
-- Table structure for `htmlvi_sealapl`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_sealapl`;
CREATE TABLE `htmlvi_sealapl` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='印章申请使用表';

-- ----------------------------
-- Records of htmlvi_sealapl
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_sjoin`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_sjoin`;
CREATE TABLE `htmlvi_sjoin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL COMMENT '类型',
  `mid` int(11) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL,
  `indate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`mid`,`sid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='后台菜单权限';

-- ----------------------------
-- Records of htmlvi_sjoin
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_task`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_task`;
CREATE TABLE `htmlvi_task` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `fenlei` varchar(10) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL COMMENT '运行地址',
  `type` varchar(50) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='计划任务';

-- ----------------------------
-- Records of htmlvi_task
-- ----------------------------
INSERT INTO `htmlvi_task` VALUES ('1', '流程从新匹配', '系统', 'flow,pipei', 'd,d', '00:10:00,12:10:00', '每天0,12点', '1', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `htmlvi_task` VALUES ('2', '数据备份', '系统', 'sys,beifen', 'd', '00:20:00', '每天凌晨00:20', '1', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `htmlvi_task` VALUES ('3', '系统升级提醒', '系统', 'sys,upgtx', 'd', '00:25:00', '每天凌晨00:25', '1', '0', null, null, '0', null, null, null, '8', 'htmlvi客服');
INSERT INTO `htmlvi_task` VALUES ('4', '5分钟运行1次', '系统', 'minute5,run', 'i5', '00', '每5分钟运行一次', '1', '0', null, null, '0', null, null, null, null, null);
INSERT INTO `htmlvi_task` VALUES ('5', '考勤信息提醒', '考勤', 'kaoqin,todo', 'd', '09:25:00', '每天9点', '1', '0', null, null, '20', null, null, '在模块【考勤信息】下设置提醒到哪些平台。', null, null);
INSERT INTO `htmlvi_task` VALUES ('6', '用户数据更新', '用户', 'sys,dataup', 'd', '00:10:00', '每天', '1', '0', null, null, '1', null, null, null, null, null);
INSERT INTO `htmlvi_task` VALUES ('7', '考勤分析', '考勤', 'kaoqin,anay', 'd', '02:15:00', '每天2点', '1', '0', null, null, '21', null, null, '分析全体人员昨天的考勤', null, null);
INSERT INTO `htmlvi_task` VALUES ('8', '员工合同提醒', '人事', 'hr,httodo', 'd', '00:05:00', null, '1', '0', null, null, '30', null, null, '员工合同到期提醒，hr调用转正离职运行', '4', '大乔');
INSERT INTO `htmlvi_task` VALUES ('9', '每天运行一次', '系统', 'day,run', 'd', '09:10:00', '每天09:10', '1', '0', null, null, '0', null, null, '任务到期,流程待办提醒', null, null);
INSERT INTO `htmlvi_task` VALUES ('10', '每月1号分析上月考勤', '考勤', 'kaoqin,lmanay', 'm', '01 05:00:00', '每月1号5点', '1', '0', null, null, '22', null, null, '分析上月全体人员考勤', null, null);
INSERT INTO `htmlvi_task` VALUES ('12', '日报统计分析', '考勤', 'kaoqin,dailyfx', 'd', '02:20', null, '1', '0', null, null, '23', null, null, null, null, null);
INSERT INTO `htmlvi_task` VALUES ('13', '车辆信息提醒', '车辆', 'carm,run', 'd', '08:10:00', null, '1', '0', null, null, '40', null, null, null, '4', '大乔');
INSERT INTO `htmlvi_task` VALUES ('14', '客户提醒', 'CRM', 'crm,run', 'd', '08:15:00', null, '1', '0', null, null, '50', null, null, '客户合同待收付款提醒', null, null);

-- ----------------------------
-- Table structure for `htmlvi_todo`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_todo`;
CREATE TABLE `htmlvi_todo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` smallint(6) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL COMMENT '类型',
  `mess` varchar(500) DEFAULT NULL COMMENT '信息内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态@0|未读,1|已读',
  `optdt` datetime DEFAULT NULL COMMENT '时间',
  `table` varchar(50) DEFAULT NULL,
  `mid` smallint(6) DEFAULT NULL,
  `readdt` datetime DEFAULT NULL COMMENT '已读时间',
  `tododt` datetime DEFAULT NULL COMMENT '提醒时间',
  `modenum` varchar(20) DEFAULT NULL COMMENT '对应模块编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='提醒消息表';

-- ----------------------------
-- Records of htmlvi_todo
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_tovoid`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_tovoid`;
CREATE TABLE `htmlvi_tovoid` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='单据申请作废表';

-- ----------------------------
-- Records of htmlvi_tovoid
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_userinfo`;
CREATE TABLE `htmlvi_userinfo` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) DEFAULT NULL COMMENT '姓名',
  `num` varchar(20) DEFAULT NULL COMMENT '编号',
  `deptname` varchar(30) DEFAULT NULL,
  `deptnames` varchar(100) DEFAULT NULL COMMENT '子部门名称',
  `ranking` varchar(20) DEFAULT NULL,
  `dkip` varchar(30) DEFAULT NULL,
  `dkmac` varchar(30) DEFAULT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户档案表';

-- ----------------------------
-- Records of htmlvi_userinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_userinfos`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_userinfos`;
CREATE TABLE `htmlvi_userinfos` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='人员档案子表';

-- ----------------------------
-- Records of htmlvi_userinfos
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_userract`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_userract`;
CREATE TABLE `htmlvi_userract` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户合同表';

-- ----------------------------
-- Records of htmlvi_userract
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_vcard`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_vcard`;
CREATE TABLE `htmlvi_vcard` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='个人通讯录';

-- ----------------------------
-- Records of htmlvi_vcard
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_word`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_word`;
CREATE TABLE `htmlvi_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `optid` smallint(6) DEFAULT '0',
  `optname` varchar(20) DEFAULT NULL,
  `fileid` int(11) DEFAULT '0',
  `shateid` varchar(200) DEFAULT NULL,
  `shate` varchar(200) DEFAULT NULL COMMENT '分享给我的',
  `optdt` datetime DEFAULT NULL,
  `typeid` smallint(6) DEFAULT '0' COMMENT '对应类型',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文档表';

-- ----------------------------
-- Records of htmlvi_word
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_work`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_work`;
CREATE TABLE `htmlvi_work` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务';

-- ----------------------------
-- Records of htmlvi_work
-- ----------------------------

-- ----------------------------
-- Table structure for `htmlvi_wouser`
-- ----------------------------
DROP TABLE IF EXISTS `htmlvi_wouser`;
CREATE TABLE `htmlvi_wouser` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信用户信息表';

-- ----------------------------
-- Records of htmlvi_wouser
-- ----------------------------
