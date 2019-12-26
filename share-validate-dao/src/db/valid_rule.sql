/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wtc

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-20 14:25:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for valid_rule
-- ----------------------------
DROP TABLE IF EXISTS `valid_rule`;
CREATE TABLE `valid_rule` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `dep_id` bigint(12) DEFAULT NULL COMMENT '部门主键',
  `interf_id` varchar(50) NOT NULL COMMENT '数据接口编号',
  `time_spent` int(8) unsigned NOT NULL COMMENT '查询时间间隔，单位为秒',
  `mail_receiver` varchar(100) NOT NULL COMMENT '通知邮件接收者，多个以逗号分隔',
  `mail_title` varchar(100) NOT NULL COMMENT '通知邮件标题',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `type` tinyint(10) NOT NULL COMMENT '类型',
  `status` tinyint(10) unsigned NOT NULL COMMENT '状态 (1为可用,2为不可用)',
  `opt_type` tinyint(3) DEFAULT NULL COMMENT '数据校验类型',
  `timeout` tinyint(10) DEFAULT NULL COMMENT '数据更新超时时间(国土单位是天,其他厅局是小时)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='轮询规则表';

-- ----------------------------
-- Records of valid_rule
-- ----------------------------
INSERT INTO `valid_rule` VALUES ('1', '1', '00756544217070090002-1', '960', '118037520@qq.com', '水利厅数据同步程序', '水库实时信息(dbo.YJ_RESERVOIR)', '1', '1', '1', '6');
INSERT INTO `valid_rule` VALUES ('2', '1', '00756544217070090002-1', '960', '118037520@qq.com', '水利厅数据同步程序', '测站基本信息(dbo.ST_STBPRP_B)', '1', '1', '2', '13');
INSERT INTO `valid_rule` VALUES ('3', '1', '00756544217070090002-1', '960', '118037520@qq.com', '水利厅数据同步程序', '河道实时信息(dbo.RIVER_WATER_REGIME)', '1', '1', '3', '6');
INSERT INTO `valid_rule` VALUES ('4', '2', '00756642917080020001-2', '660', '118037520@qq.com', '环保厅数据同步程序', '空气质量实时信息数据(dbo.YJ_AIRQUALITY_INFO)', '2', '1', '1', '6');
INSERT INTO `valid_rule` VALUES ('5', '2', '00756642917080020001-2', '660', '118037520@qq.com', '环保厅数据同步程序', '空气质量监测站信息(dbo.YJ_AIRQUALITY_STATION)', '2', '1', '2', '13');
INSERT INTO `valid_rule` VALUES ('6', '3', 'sdkLogin', '600', '118037520@qq.com', '防火监控平台', '林业厅', '3', '1', '0', '6');
INSERT INTO `valid_rule` VALUES ('7', '4', 'ship-share-list-validate', '0', '118037520@qq.com', '渔船数据读取服务程序', '海洋渔业厅', '4', '1', '0', '6');
INSERT INTO `valid_rule` VALUES ('8', '5', 'search-stDevice-measureData-list', '0', '118037520@qq.com', '国土局数据读取服务程序', '国土厅', '5', '1', '0', '1');
