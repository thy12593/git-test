/*
Navicat MySQL Data Transfer

Source Server         : localhost_root
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : wtc

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2018-03-20 14:25:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(6) NOT NULL COMMENT '主键',
  `department_name` varchar(12) DEFAULT NULL COMMENT '部门名称',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态(0:正常,1:连接超时,2:发生错误,4:数据更新异常)',
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '水利厅', '0', '2018-02-24 16:08:41');
INSERT INTO `department` VALUES ('2', '环保厅', '0', '2018-02-26 14:42:01');
INSERT INTO `department` VALUES ('3', '林业厅', '0', '2018-03-19 08:45:45');
INSERT INTO `department` VALUES ('4', '海洋渔业厅', '0', '2018-03-08 17:05:42');
INSERT INTO `department` VALUES ('5', '国土厅', '0', '2018-02-08 09:36:31');
