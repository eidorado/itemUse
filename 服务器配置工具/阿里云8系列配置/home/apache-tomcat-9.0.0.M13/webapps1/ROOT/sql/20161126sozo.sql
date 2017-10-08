-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.20 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 db_sozo 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_sozo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_sozo`;


-- 导出  表 db_sozo.t_sozo_pic 结构
CREATE TABLE IF NOT EXISTS `t_sozo_pic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL COMMENT '主标题',
  `secTitle` varchar(100) DEFAULT NULL COMMENT '副标题',
  `client` varchar(50) DEFAULT NULL COMMENT '客户',
  `industry` varchar(50) DEFAULT NULL COMMENT '行业',
  `doTime` datetime DEFAULT NULL COMMENT '项目时间',
  `intro` varchar(200) DEFAULT NULL COMMENT '活动简介',
  `createrId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `tagIds` varchar(50) DEFAULT NULL COMMENT '标签集',
  `tagNames` varchar(200) DEFAULT NULL COMMENT '标签集名称',
  `type` varchar(50) DEFAULT NULL COMMENT '类型，哪个位置,select,1第一列，2第二列，3第三列，9滚动图，0新闻类，',
  `status` char(2) DEFAULT NULL COMMENT '状态，0使用，1预存',
  `sn` varchar(5) DEFAULT NULL COMMENT '排序，默认0，desc倒序排,实际上排序里null比0还要小',
  `picSize` varchar(20) DEFAULT NULL COMMENT '要求封面尺寸',
  `picName` varchar(100) DEFAULT NULL COMMENT '大的主封面名称（上传获取）',
  `picUrl` varchar(100) DEFAULT NULL COMMENT '路径（上传获取）',
  `picBig` varchar(10) DEFAULT NULL COMMENT '大小KB（上传获取）最大5M,string也可以相加',
  `picSuffix` varchar(10) DEFAULT NULL COMMENT '后缀（上传获取）',
  `secPicName` varchar(100) DEFAULT NULL COMMENT '大的副封面名称',
  `secPicUrl` varchar(100) DEFAULT NULL,
  `secPicBig` varchar(10) DEFAULT NULL,
  `secPicSuffix` varchar(10) DEFAULT NULL,
  `littleAPicName` varchar(100) DEFAULT NULL COMMENT '小的主封面名称',
  `littleAPicUrl` varchar(100) DEFAULT NULL,
  `littleAPicBig` varchar(10) DEFAULT NULL,
  `littleBPicName` varchar(100) DEFAULT NULL COMMENT '小的副封面名称',
  `littleBPicUrl` varchar(100) DEFAULT NULL,
  `littleBPicBig` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目，新闻表';

-- 正在导出表  db_sozo.t_sozo_pic 的数据：~0 rows (大约)
DELETE FROM `t_sozo_pic`;
/*!40000 ALTER TABLE `t_sozo_pic` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sozo_pic` ENABLE KEYS */;


-- 导出  表 db_sozo.t_sozo_pic_detail 结构
CREATE TABLE IF NOT EXISTS `t_sozo_pic_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `picId` bigint(20) DEFAULT NULL,
  `fileName` varchar(100) DEFAULT NULL COMMENT '图片名称',
  `filePath` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `fileBig` varchar(50) DEFAULT NULL,
  `fileSuffix` varchar(20) DEFAULT NULL,
  `content` varchar(200) DEFAULT NULL COMMENT '文字',
  `flag` char(2) DEFAULT NULL COMMENT '1展示图片，2展示文字',
  `sn` varchar(5) DEFAULT NULL COMMENT '排序，默认0，desc倒序排,实际上排序里null比0还要小',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='项目，新闻详情，因为关于素造，素造团队，素造荣誉，素造星计划，素造客户，所以详情的picId  1-5应该给固定的关于素造，但还是预留10个位置比较安全，pic从11开始排序';

-- 正在导出表  db_sozo.t_sozo_pic_detail 的数据：~0 rows (大约)
DELETE FROM `t_sozo_pic_detail`;
/*!40000 ALTER TABLE `t_sozo_pic_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sozo_pic_detail` ENABLE KEYS */;


-- 导出  表 db_sozo.t_sozo_tag 结构
CREATE TABLE IF NOT EXISTS `t_sozo_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tagName` varchar(50) DEFAULT NULL,
  `tagRemak` varchar(100) DEFAULT NULL,
  `pId` bigint(20) DEFAULT NULL COMMENT '父ID，默认0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签';

-- 正在导出表  db_sozo.t_sozo_tag 的数据：~0 rows (大约)
DELETE FROM `t_sozo_tag`;
/*!40000 ALTER TABLE `t_sozo_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_sozo_tag` ENABLE KEYS */;


-- 导出  表 db_sozo.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `userId` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(100) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `question` varchar(25) DEFAULT NULL,
  `answer` varchar(25) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL COMMENT '用户备注',
  `createDate` date DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- 正在导出表  db_sozo.user 的数据：~0 rows (大约)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
