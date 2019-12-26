/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wtc

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-20 14:25:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department_message
-- ----------------------------
DROP TABLE IF EXISTS `department_message`;
CREATE TABLE `department_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `department_id` bigint(12) DEFAULT NULL COMMENT '资源接口名',
  `resource_name` varchar(50) DEFAULT NULL COMMENT '资源名称',
  `error_type` tinyint(10) DEFAULT NULL COMMENT '和部门表的status对应(0:正常,1:连接超时,2:发生错误,4:数据更新异常)',
  `message` varchar(2000) DEFAULT NULL COMMENT '提示信息',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `status` tinyint(10) DEFAULT NULL COMMENT '状态(1:已恢复正常;-1:处于异常状态)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department_message
-- ----------------------------
INSERT INTO `department_message` VALUES ('1', '4', 'ship-share-list-validate', '2', '海洋渔业厅数据正常', '2018-02-11 15:32:34', '2018-02-11 15:39:51', '1');
INSERT INTO `department_message` VALUES ('2', '4', 'ship-share-list-validate', '1', '海洋渔业厅连接超时', '2018-02-11 15:33:37', '2018-02-11 15:39:51', '1');
INSERT INTO `department_message` VALUES ('4', '4', 'ship-share-list-validate', '4', '海洋渔业厅数据更新异常', '2018-02-11 15:39:30', '2018-02-11 15:39:30', '-1');
INSERT INTO `department_message` VALUES ('5', '4', 'ship-share-list-validate', '4', '海洋渔业厅数据更新异常', '2018-02-11 15:45:05', '2018-02-11 15:45:05', '1');
INSERT INTO `department_message` VALUES ('6', '4', 'ship-share-list-validate', '2', '海洋渔业厅数据错误', '2018-02-11 15:55:54', '2018-02-11 16:05:21', '1');
INSERT INTO `department_message` VALUES ('8', '4', 'ship-share-list-validate', '4', '海洋渔业厅数据更新异常', '2018-02-11 16:01:02', '2018-02-11 16:05:20', '1');
INSERT INTO `department_message` VALUES ('9', '4', 'ship-share-list-validate', '1', '海洋渔业厅连接超时', '2018-02-11 16:03:31', '2018-02-11 16:05:22', '1');
INSERT INTO `department_message` VALUES ('10', '4', 'ship-share-list-validate', '1', '海洋渔业厅连接超时', '2018-02-24 15:42:26', '2018-02-24 15:42:26', '1');
INSERT INTO `department_message` VALUES ('11', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-24 15:53:18', '2018-02-24 15:53:18', '1');
INSERT INTO `department_message` VALUES ('12', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-24 15:53:18', '2018-02-24 15:53:18', '1');
INSERT INTO `department_message` VALUES ('13', '1', '00756544217070090002-1', '4', '水利厅数据更新异常', '2018-02-24 16:08:41', '2018-02-24 16:08:41', '1');
INSERT INTO `department_message` VALUES ('14', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-24 16:32:33', '2018-02-24 16:32:33', '1');
INSERT INTO `department_message` VALUES ('15', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-24 16:42:43', '2018-02-26 09:09:27', '1');
INSERT INTO `department_message` VALUES ('16', '2', '00756642917080020001-2', '1', '环保厅连接超时', '2018-02-24 16:42:43', '2018-02-26 09:09:27', '1');
INSERT INTO `department_message` VALUES ('17', '2', '00756642917080020001-2', '1', '环保厅连接超时', '2018-02-26 09:11:46', '2018-02-26 09:12:40', '1');
INSERT INTO `department_message` VALUES ('18', '2', '00756642917080020001-2', '1', '环保厅连接超时', '2018-02-26 09:15:12', '2018-02-26 09:15:12', '1');
INSERT INTO `department_message` VALUES ('19', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 10:21:27', '2018-02-26 10:21:27', '1');
INSERT INTO `department_message` VALUES ('20', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 10:21:27', '2018-02-26 10:21:27', '1');
INSERT INTO `department_message` VALUES ('21', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 13:54:15', '2018-02-26 13:54:15', '1');
INSERT INTO `department_message` VALUES ('22', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 13:57:00', '2018-02-26 13:57:00', '1');
INSERT INTO `department_message` VALUES ('23', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 13:58:51', '2018-02-26 13:58:51', '1');
INSERT INTO `department_message` VALUES ('24', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 14:02:49', '2018-02-26 14:02:49', '1');
INSERT INTO `department_message` VALUES ('25', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 14:03:55', '2018-02-26 14:03:55', '1');
INSERT INTO `department_message` VALUES ('26', '2', '00756642917080020001-2', '4', '环保厅数据更新异常', '2018-02-26 14:06:07', '2018-02-26 14:06:07', '1');
INSERT INTO `department_message` VALUES ('27', '2', '00756642917080020001-2', '1', 'dbo.YJ_AIRQUALITY_STATION连接超时', '2018-02-26 14:34:39', '2018-02-26 14:37:41', '1');
INSERT INTO `department_message` VALUES ('28', '2', '00756642917080020001-2', '4', 'dbo.YJ_AIRQUALITY_STATION数据更新异常', '2018-02-26 14:34:39', '2018-02-26 14:42:02', '1');
INSERT INTO `department_message` VALUES ('29', '2', '00756642917080020001-2', '1', 'dbo.YJ_AIRQUALITY_STATION连接超时', '2018-02-26 14:41:17', '2018-02-26 14:42:01', '1');
INSERT INTO `department_message` VALUES ('30', '4', 'ship-share-list-validate', '1', '海洋渔业厅连接超时', '2018-03-08 14:20:44', '2018-03-08 15:55:46', '1');
INSERT INTO `department_message` VALUES ('31', '4', 'ship-share-list-validate', '4', '海洋渔业厅数据更新异常', '2018-03-08 15:55:43', '2018-03-08 15:55:43', '-1');
INSERT INTO `department_message` VALUES ('32', '3', 'sdkLogin', '2', '林业厅错误', '2018-03-08 17:05:42', '2018-03-19 08:45:48', '1');
INSERT INTO `department_message` VALUES ('33', '4', 'ship-share-list-validate', '1', '海洋渔业厅连接超时', '2018-03-08 17:05:42', '2018-03-20 08:05:42', '-1');
