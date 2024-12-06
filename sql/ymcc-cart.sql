/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-cart

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-12-03 18:31:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_course_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_course_cart`;
CREATE TABLE `t_course_cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `course_pic` varchar(255) DEFAULT NULL,
  `course_price` decimal(10,2) DEFAULT NULL COMMENT '价格冗余',
  `count` int(11) DEFAULT '1',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '状态：正常，删除',
  `course_note` varchar(255) DEFAULT NULL COMMENT '备注',
  `course_id` bigint(20) DEFAULT NULL,
  `login_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `grade_name` varchar(255) DEFAULT NULL,
  `old_course_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_cart
-- ----------------------------
