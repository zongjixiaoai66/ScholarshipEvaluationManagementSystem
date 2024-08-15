/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t360`;
CREATE DATABASE IF NOT EXISTS `t360` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t360`;

DROP TABLE IF EXISTS `chengji`;
CREATE TABLE IF NOT EXISTS `chengji` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `chengji_uuid_number` varchar(200) DEFAULT NULL COMMENT '学生成绩编号',
  `chengji_name` varchar(200) DEFAULT NULL COMMENT '学生成绩名称  Search111 ',
  `kemu_types` int DEFAULT NULL COMMENT '科目 Search111',
  `xuenian_types` int DEFAULT NULL COMMENT '学年 Search111',
  `xueqi_types` int DEFAULT NULL COMMENT '学期 Search111',
  `chengji_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `chengji_defen` decimal(10,2) DEFAULT NULL COMMENT '成绩',
  `chengji_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='学生成绩';

DELETE FROM `chengji`;
INSERT INTO `chengji` (`id`, `xuesheng_id`, `chengji_uuid_number`, `chengji_name`, `kemu_types`, `xuenian_types`, `xueqi_types`, `chengji_file`, `chengji_defen`, `chengji_content`, `insert_time`, `create_time`) VALUES
	(1, 2, '1681872077761', '学生成绩名称1', 1, 3, 2, 'upload/file.rar', 359.98, '备注1', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(2, 3, '1681872077736', '学生成绩名称2', 1, 1, 1, 'upload/file.rar', 813.17, '备注2', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(3, 1, '1681872077757', '学生成绩名称3', 1, 2, 1, 'upload/file.rar', 765.09, '备注3', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(4, 3, '1681872077710', '学生成绩名称4', 1, 2, 2, 'upload/file.rar', 303.92, '备注4', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(5, 3, '1681872077718', '学生成绩名称5', 1, 2, 1, 'upload/file.rar', 111.96, '备注5', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(6, 2, '1681872077712', '学生成绩名称6', 1, 1, 2, 'upload/file.rar', 958.59, '备注6', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(7, 1, '1681872077694', '学生成绩名称7', 1, 2, 2, 'upload/file.rar', 846.00, '备注7', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(8, 2, '1681872077764', '学生成绩名称8', 1, 1, 2, 'upload/file.rar', 723.07, '备注8', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(9, 2, '1681872077723', '学生成绩名称9', 1, 2, 1, 'upload/file.rar', 474.04, '备注9', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(10, 3, '1681872077688', '学生成绩名称10', 1, 2, 1, 'upload/file.rar', 694.66, '备注10', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(11, 3, '1681872077728', '学生成绩名称11', 1, 3, 1, 'upload/file.rar', 830.14, '备注11', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(12, 1, '1681872077782', '学生成绩名称12', 1, 3, 2, 'upload/file.rar', 499.11, '备注12', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(13, 3, '1681872077765', '学生成绩名称13', 1, 1, 2, 'upload/file.rar', 556.68, '备注13', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(14, 1, '1681872077697', '学生成绩名称14', 1, 1, 1, 'upload/file.rar', 994.62, '备注14', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(19, 1, '1681880817544', '学生1的成绩11', 1, 1, 1, '/upload/1684310259573.doc', 33.50, '无', '2023-04-19 05:06:57', '2023-04-19 05:06:57'),
	(20, 2, '1681880817544', '学生2的成绩11', 2, 2, 2, '/upload/1684310259573.doc', 88.60, '<p>无</p>', '2023-04-19 05:06:57', '2023-04-19 05:06:57');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(17, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-04-19 02:39:27'),
	(18, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-04-19 02:39:27'),
	(19, 'jinyong_types', '账户状态', 1, '启用', NULL, NULL, '2023-04-19 02:39:27'),
	(20, 'jinyong_types', '账户状态', 2, '禁用', NULL, NULL, '2023-04-19 02:39:27'),
	(21, 'news_types', '政策类型', 1, '政策类型1', NULL, NULL, '2023-04-19 02:39:27'),
	(22, 'news_types', '政策类型', 2, '政策类型2', NULL, NULL, '2023-04-19 02:39:27'),
	(23, 'jiangxuejin_shenqing_types', '奖学金申请类型', 1, '奖学金申请类型1', NULL, NULL, '2023-04-19 02:39:27'),
	(24, 'jiangxuejin_shenqing_types', '奖学金申请类型', 2, '奖学金申请类型2', NULL, NULL, '2023-04-19 02:39:27'),
	(25, 'jiangxuejin_shenqing_types', '奖学金申请类型', 3, '奖学金申请类型3', NULL, NULL, '2023-04-19 02:39:27'),
	(26, 'jiangxuejin_shenqing_types', '奖学金申请类型', 4, '奖学金申请类型4', NULL, NULL, '2023-04-19 02:39:27'),
	(27, 'jiangxuejin_shenqing_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-04-19 02:39:27'),
	(28, 'jiangxuejin_shenqing_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-04-19 02:39:27'),
	(29, 'jiangxuejin_shenqing_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-04-19 02:39:27'),
	(30, 'huodong_dejiang_types', '活动得奖', 1, '一等奖', NULL, '10', '2023-04-19 02:39:27'),
	(31, 'huodong_dejiang_types', '活动得奖', 2, '二等奖', NULL, '8', '2023-04-19 02:39:27'),
	(32, 'huodong_dejiang_types', '活动得奖', 3, '三等奖', NULL, '3', '2023-04-19 02:39:27'),
	(33, 'huodong_dejiang_types', '活动得奖', 4, '参与奖', NULL, '4', '2023-04-19 02:39:27'),
	(34, 'huodong_types', '活动类型', 1, '活动类型1', NULL, NULL, '2023-04-19 02:39:27'),
	(35, 'huodong_types', '活动类型', 2, '活动类型2', NULL, NULL, '2023-04-19 02:39:27'),
	(36, 'huodong_types', '活动类型', 3, '活动类型3', NULL, NULL, '2023-04-19 02:39:27'),
	(37, 'huodong_types', '活动类型', 4, '活动类型4', NULL, NULL, '2023-04-19 02:39:27'),
	(38, 'xuenian_types', '学年', 1, '2021学年', NULL, NULL, '2023-04-19 02:39:27'),
	(39, 'xuenian_types', '学年', 2, '2022学年', NULL, NULL, '2023-04-19 02:39:28'),
	(40, 'xuenian_types', '学年', 3, '2023学年', NULL, NULL, '2023-04-19 02:39:28'),
	(41, 'xueqi_types', '学期', 1, '上学期', NULL, NULL, '2023-04-19 02:39:28'),
	(42, 'xueqi_types', '学期', 2, '下学期', NULL, NULL, '2023-04-19 02:39:28'),
	(43, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-04-19 02:39:28'),
	(44, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-04-19 02:39:28'),
	(45, 'xuenian_types', '学年', 4, '2024学年', NULL, NULL, '2023-04-19 05:12:20'),
	(46, 'xueyuan_types', '学院', 1, '学院1', NULL, NULL, '2023-04-19 02:39:27'),
	(47, 'xueyuan_types', '学院', 2, '学院2', NULL, NULL, '2023-04-19 02:39:28'),
	(48, 'xueyuan_types', '学院', 3, '学院3', NULL, NULL, '2023-04-19 02:39:28'),
	(49, 'zhuanye_types', '专业', 1, '专业1', NULL, NULL, '2023-04-19 02:39:27'),
	(50, 'zhuanye_types', '专业', 2, '专业2', NULL, NULL, '2023-04-19 02:39:28'),
	(51, 'zhuanye_types', '专业', 3, '专业3', NULL, NULL, '2023-04-19 02:39:28'),
	(52, 'kemu_types', '科目', 1, '语文', NULL, NULL, '2023-04-19 05:12:20'),
	(53, 'kemu_types', '科目', 2, '数学', NULL, NULL, '2023-04-19 02:39:27'),
	(54, 'kemu_types', '科目', 3, '英语', NULL, NULL, '2023-04-19 02:39:28');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-04-19 02:41:17', '公告详情1', '2023-04-19 02:41:17'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-04-19 02:41:17', '公告详情2', '2023-04-19 02:41:17'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-04-19 02:41:17', '公告详情3', '2023-04-19 02:41:17'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 2, '2023-04-19 02:41:17', '公告详情4', '2023-04-19 02:41:17'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-04-19 02:41:17', '公告详情5', '2023-04-19 02:41:17'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-04-19 02:41:17', '公告详情6', '2023-04-19 02:41:17'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-04-19 02:41:17', '公告详情7', '2023-04-19 02:41:17'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-04-19 02:41:17', '公告详情8', '2023-04-19 02:41:17'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-04-19 02:41:17', '公告详情9', '2023-04-19 02:41:17'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-04-19 02:41:17', '公告详情10', '2023-04-19 02:41:17'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-04-19 02:41:17', '公告详情11', '2023-04-19 02:41:17'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 1, '2023-04-19 02:41:17', '公告详情12', '2023-04-19 02:41:17'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 1, '2023-04-19 02:41:17', '公告详情13', '2023-04-19 02:41:17'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-04-19 02:41:17', '<p>公告详情14电光火石个讽德诵功</p>', '2023-04-19 02:41:17');

DROP TABLE IF EXISTS `huodong`;
CREATE TABLE IF NOT EXISTS `huodong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `huodong_uuid_number` varchar(200) DEFAULT NULL COMMENT '活动编号',
  `huodong_name` varchar(200) DEFAULT NULL COMMENT '活动名称  Search111 ',
  `xuenian_types` int DEFAULT NULL COMMENT '学年 Search111',
  `xueqi_types` int DEFAULT NULL COMMENT '学期 Search111',
  `huodong_address` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `huodong_types` int DEFAULT NULL COMMENT '活动类型 Search111',
  `huodong_content` longtext COMMENT '活动介绍 ',
  `huodong_dejiang_types` int DEFAULT NULL COMMENT '活动得奖 Search111',
  `huodong_file` varchar(200) DEFAULT NULL COMMENT '附件',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '上传时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='活动';

DELETE FROM `huodong`;
INSERT INTO `huodong` (`id`, `xuesheng_id`, `huodong_uuid_number`, `huodong_name`, `xuenian_types`, `xueqi_types`, `huodong_address`, `huodong_types`, `huodong_content`, `huodong_dejiang_types`, `huodong_file`, `insert_time`, `create_time`) VALUES
	(1, 2, '1681872077753', '活动名称1', 2, 1, '活动地点1', 1, '活动介绍1', 3, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(2, 1, '1681872077730', '活动名称2', 2, 2, '活动地点2', 4, '活动介绍2', 2, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(3, 1, '1681872077742', '活动名称3', 1, 1, '活动地点3', 4, '活动介绍3', 2, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(4, 2, '1681872077732', '活动名称4', 2, 2, '活动地点4', 4, '活动介绍4', 3, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(5, 3, '1681872077762', '活动名称5', 2, 2, '活动地点5', 4, '活动介绍5', 4, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(6, 1, '1681872077763', '活动名称6', 1, 2, '活动地点6', 1, '活动介绍6', 2, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(7, 1, '1681872077792', '活动名称7', 3, 1, '活动地点7', 4, '活动介绍7', 1, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(8, 2, '1681872077792', '活动名称8', 1, 1, '活动地点8', 2, '活动介绍8', 3, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(9, 3, '1681872077729', '活动名称9', 1, 1, '活动地点9', 2, '活动介绍9', 3, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(10, 1, '1681872077712', '活动名称10', 2, 1, '活动地点10', 3, '活动介绍10', 4, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(11, 3, '1681872077751', '活动名称11', 1, 2, '活动地点11', 2, '活动介绍11', 2, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(12, 2, '1681872077793', '活动名称12', 3, 2, '活动地点12', 4, '活动介绍12', 2, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(13, 3, '1681872077719', '活动名称13', 3, 1, '活动地点13', 2, '活动介绍13', 3, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(14, 1, '1681872077734', '活动名称14', 3, 2, '活动地点14', 4, '活动介绍14', 3, 'upload/file.rar', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(15, 1, '1681880895442', '活动1111', 1, 1, '地点1111', 3, '<p>个核酸地方范德萨广东省广东省固定事故是多个</p>', 4, '/upload/1681880917354.doc', '2023-04-19 05:08:39', '2023-04-19 05:08:39');

DROP TABLE IF EXISTS `jiangxuejin_shenqing`;
CREATE TABLE IF NOT EXISTS `jiangxuejin_shenqing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `jiangxuejin_shenqing_uuid_number` varchar(200) DEFAULT NULL COMMENT '奖学金申请编号',
  `jiangxuejin_shenqing_name` varchar(200) DEFAULT NULL COMMENT '申请标题  Search111 ',
  `jiangxuejin_shenqing_types` int DEFAULT NULL COMMENT '奖学金申请类型 Search111',
  `jiangxuejin_shenqing_jine` decimal(10,2) DEFAULT NULL COMMENT '申请金额',
  `jiangxuejin_shenqing_content` longtext COMMENT '申请理由',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `jiangxuejin_shenqing_yesno_types` int DEFAULT NULL COMMENT '申请状态 Search111',
  `jiangxuejin_shenqing_yesno_text` longtext COMMENT '审核意见',
  `jiangxuejin_shenqing_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='奖学金申请';

DELETE FROM `jiangxuejin_shenqing`;
INSERT INTO `jiangxuejin_shenqing` (`id`, `xuesheng_id`, `jiangxuejin_shenqing_uuid_number`, `jiangxuejin_shenqing_name`, `jiangxuejin_shenqing_types`, `jiangxuejin_shenqing_jine`, `jiangxuejin_shenqing_content`, `insert_time`, `jiangxuejin_shenqing_yesno_types`, `jiangxuejin_shenqing_yesno_text`, `jiangxuejin_shenqing_shenhe_time`, `create_time`) VALUES
	(1, 1, '1681872077795', '申请标题1', 2, 705.15, '申请理由1', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(2, 3, '1681872077710', '申请标题2', 4, 344.39, '申请理由2', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(3, 1, '1681872077750', '申请标题3', 1, 123.85, '申请理由3', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(4, 3, '1681872077799', '申请标题4', 3, 412.47, '申请理由4', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(5, 2, '1681872077701', '申请标题5', 3, 68.33, '申请理由5', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(6, 3, '1681872077783', '申请标题6', 2, 336.56, '申请理由6', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(7, 2, '1681872077797', '申请标题7', 2, 657.23, '申请理由7', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(8, 3, '1681872077714', '申请标题8', 2, 328.68, '申请理由8', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(9, 3, '1681872077790', '申请标题9', 4, 195.86, '申请理由9', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(10, 2, '1681872077706', '申请标题10', 2, 119.34, '申请理由10', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(11, 3, '1681872077782', '申请标题11', 4, 461.48, '申请理由11', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(12, 3, '1681872077798', '申请标题12', 3, 999.68, '申请理由12', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(13, 2, '1681872077798', '申请标题13', 3, 855.64, '申请理由13', '2023-04-19 02:41:17', 1, NULL, NULL, '2023-04-19 02:41:17'),
	(14, 3, '1681872077755', '申请标题14', 2, 294.01, '申请理由14', '2023-04-19 02:41:17', 3, '固定死发的是个', '2023-04-19 05:11:27', '2023-04-19 02:41:17'),
	(15, 1, '1681880724023', '申请1111', 4, 999.00, '<p>固定死噶十多个大概</p>', '2023-04-19 05:05:32', 2, '的方法', '2023-04-19 05:11:22', '2023-04-19 05:05:32'),
	(16, 1, '1683609374773', '标题1111', 4, 999.00, '过大噶十多个是', '2023-05-09 05:16:21', 1, NULL, NULL, '2023-05-09 05:16:21');

DROP TABLE IF EXISTS `laoshi`;
CREATE TABLE IF NOT EXISTS `laoshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_uuid_number` varchar(200) DEFAULT NULL COMMENT '工号 Search111 ',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名 Search111 ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `laoshi_email` varchar(200) DEFAULT NULL COMMENT '老师邮箱',
  `xueyuan_types` int DEFAULT NULL COMMENT '学院 Search111 ',
  `zhuanye_types` int DEFAULT NULL COMMENT '专业 Search111 ',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='老师';

DELETE FROM `laoshi`;
INSERT INTO `laoshi` (`id`, `username`, `password`, `laoshi_uuid_number`, `laoshi_name`, `laoshi_phone`, `laoshi_id_number`, `laoshi_photo`, `sex_types`, `laoshi_email`, `xueyuan_types`, `zhuanye_types`, `jinyong_types`, `create_time`) VALUES
	(1, '老师1', '123456', '1681872077704', '老师姓名1', '17703786901', '410224199010102001', 'upload/laoshi1.jpg', 1, '1@qq.com', 1, 2, 1, '2023-04-19 02:41:17'),
	(2, '老师2', '123456', '1681872077705', '老师姓名2', '17703786902', '410224199010102002', 'upload/laoshi2.jpg', 2, '2@qq.com', 2, 1, 1, '2023-04-19 02:41:17'),
	(3, '老师3', '123456', '1681872077738', '老师姓名3', '17703786903', '410224199010102003', 'upload/laoshi3.jpg', 1, '3@qq.com', 1, 2, 1, '2023-04-19 02:41:17');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '政策名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '政策图片 ',
  `news_types` int NOT NULL COMMENT '政策类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `news_content` longtext COMMENT '政策详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='政策信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '政策名称1', 'upload/news1.jpg', 2, '2023-04-19 02:41:17', '政策详情1', '2023-04-19 02:41:17'),
	(2, '政策名称2', 'upload/news2.jpg', 2, '2023-04-19 02:41:17', '政策详情2', '2023-04-19 02:41:17'),
	(3, '政策名称3', 'upload/news3.jpg', 2, '2023-04-19 02:41:17', '政策详情3', '2023-04-19 02:41:17'),
	(4, '政策名称4', 'upload/news4.jpg', 2, '2023-04-19 02:41:17', '政策详情4', '2023-04-19 02:41:17'),
	(5, '政策名称5', 'upload/news5.jpg', 2, '2023-04-19 02:41:17', '政策详情5', '2023-04-19 02:41:17'),
	(6, '政策名称6', 'upload/news6.jpg', 1, '2023-04-19 02:41:17', '政策详情6', '2023-04-19 02:41:17'),
	(7, '政策名称7', 'upload/news7.jpg', 2, '2023-04-19 02:41:17', '政策详情7', '2023-04-19 02:41:17'),
	(8, '政策名称8', 'upload/news8.jpg', 1, '2023-04-19 02:41:17', '政策详情8', '2023-04-19 02:41:17'),
	(9, '政策名称9', 'upload/news9.jpg', 2, '2023-04-19 02:41:17', '政策详情9', '2023-04-19 02:41:17'),
	(10, '政策名称10', 'upload/news10.jpg', 2, '2023-04-19 02:41:17', '政策详情10', '2023-04-19 02:41:17'),
	(11, '政策名称11', 'upload/news11.jpg', 1, '2023-04-19 02:41:17', '政策详情11', '2023-04-19 02:41:17'),
	(12, '政策名称12', 'upload/news12.jpg', 1, '2023-04-19 02:41:17', '政策详情12', '2023-04-19 02:41:17'),
	(13, '政策名称13', 'upload/news13.jpg', 1, '2023-04-19 02:41:17', '政策详情13', '2023-04-19 02:41:17'),
	(14, '政策名称14', 'upload/news14.jpg', 2, '2023-04-19 02:41:17', '政策详情14', '2023-04-19 02:41:17');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '员工id',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'lpnzubqgjpctc44m7j60tkboegmsb3o4', '2023-04-19 02:44:10', '2024-08-09 04:41:04'),
	(2, 1, 'a1', 'xuesheng', '学生', 'ecaldkt6qj5zcuwuw930dxragn9z73px', '2023-04-19 05:05:06', '2024-08-09 04:42:20'),
	(3, 1, 'a1', 'laoshi', '老师', 'krpchp53lgngkpd4wkgmxxyew3hefx8n', '2023-04-19 05:06:03', '2024-08-09 04:42:04');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '员工名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-04-19 02:39:27');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `xuesheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `xuesheng_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `xuesheng_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号',
  `xuesheng_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号',
  `xuesheng_photo` varchar(200) DEFAULT NULL COMMENT '学生头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `xuesheng_email` varchar(200) DEFAULT NULL COMMENT '学生邮箱',
  `xueyuan_types` int DEFAULT NULL COMMENT '学院 Search111 ',
  `zhuanye_types` int DEFAULT NULL COMMENT '专业 Search111 ',
  `jinyong_types` int DEFAULT NULL COMMENT '账户状态 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `username`, `password`, `xuesheng_uuid_number`, `xuesheng_name`, `xuesheng_phone`, `xuesheng_id_number`, `xuesheng_photo`, `sex_types`, `xuesheng_email`, `xueyuan_types`, `zhuanye_types`, `jinyong_types`, `create_time`) VALUES
	(1, '学生1', '123456', '1681872077752', '学生姓名1', '17703786901', '410224199010102001', 'upload/xuesheng1.jpg', 2, '1@qq.com', 2, 2, 1, '2023-04-19 02:41:17'),
	(2, '学生2', '123456', '1681872077775', '学生姓名2', '17703786902', '410224199010102002', 'upload/xuesheng2.jpg', 1, '2@qq.com', 1, 2, 1, '2023-04-19 02:41:17'),
	(3, '学生3', '123456', '1681872077728', '学生姓名3', '17703786903', '410224199010102003', 'upload/xuesheng3.jpg', 1, '3@qq.com', 1, 2, 2, '2023-04-19 02:41:17');

DROP TABLE IF EXISTS `zonghepingce`;
CREATE TABLE IF NOT EXISTS `zonghepingce` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `xuesheng_id` int DEFAULT NULL COMMENT '学生',
  `zonghepingce_uuid_number` varchar(200) DEFAULT NULL COMMENT '综合评测编号',
  `xuenian_types` int DEFAULT NULL COMMENT '学年 Search111',
  `xueqi_types` int DEFAULT NULL COMMENT '学期 Search111',
  `zonghepingce_chengji_defen` decimal(10,2) DEFAULT NULL COMMENT '成绩计算得分',
  `zonghepingce_huodong_defen` decimal(10,2) DEFAULT NULL COMMENT '活动计算得分',
  `zonghepingce_zuizhong_defen` decimal(10,2) DEFAULT NULL COMMENT '最终得分',
  `zonghepingce_content` longtext COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评测时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='综合评测';

DELETE FROM `zonghepingce`;
INSERT INTO `zonghepingce` (`id`, `xuesheng_id`, `zonghepingce_uuid_number`, `xuenian_types`, `xueqi_types`, `zonghepingce_chengji_defen`, `zonghepingce_huodong_defen`, `zonghepingce_zuizhong_defen`, `zonghepingce_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '1681872077796', 2, 2, 825.65, 561.33, 505.24, '备注1', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(2, 3, '1681872077769', 2, 2, 224.73, 217.39, 294.34, '备注2', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(3, 1, '1681872077735', 3, 1, 182.04, 790.33, 940.43, '备注3', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(4, 1, '1681872077745', 1, 1, 3.02, 517.53, 518.44, '备注4', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(5, 3, '1681872077771', 1, 2, 102.96, 700.97, 133.21, '备注5', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(6, 2, '1681872077749', 1, 1, 325.77, 166.34, 297.74, '备注6', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(7, 3, '1681872077777', 2, 2, 314.62, 851.84, 92.49, '备注7', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(8, 2, '1681872077787', 1, 1, 177.50, 429.00, 550.83, '备注8', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(9, 3, '1681872077800', 1, 2, 858.32, 55.84, 412.21, '备注9', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(10, 3, '1681872077806', 3, 2, 825.61, 90.62, 969.01, '备注10', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(11, 3, '1681872077757', 2, 1, 296.37, 306.85, 773.03, '备注11', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(12, 2, '1681872077754', 2, 2, 849.29, 704.08, 344.52, '备注12', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(13, 2, '1681872077794', 3, 1, 384.61, 345.90, 538.61, '备注13', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(14, 2, '1681872077736', 3, 2, 359.98, 8.00, 254.39, '<p>备注14广东佛山的个</p>', '2023-04-19 02:41:17', '2023-04-19 02:41:17'),
	(16, 3, '1683610970648', 3, 1, 830.14, 3.00, 582.00, '<p>gdgdsgdsg个第三个第三个</p>', '2023-05-09 05:43:37', '2023-05-09 05:43:37');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
