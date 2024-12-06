/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-order

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-10-25 11:13:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_course_order
-- ----------------------------
DROP TABLE IF EXISTS `t_course_order`;
CREATE TABLE `t_course_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '最后支付更新时间',
  `order_no` varchar(255) NOT NULL COMMENT '订单编号',
  `total_amount` decimal(10,2) NOT NULL COMMENT '支付总的价格',
  `total_count` tinyint(4) NOT NULL COMMENT '秒杀数量',
  `status_order` tinyint(4) NOT NULL DEFAULT '0' COMMENT '    // 订单状态 ：\r\n    //0下单成功待支付，\r\n    //1支付成功订单完成\r\n    //2用户手动取消订单(未支付)\r\n    //3.支付失败\r\n    //4.超时自动订单取消',
  `user_id` bigint(20) NOT NULL COMMENT '用户',
  `title` varchar(255) DEFAULT NULL COMMENT '订单标题',
  `version` int(11) NOT NULL DEFAULT '0',
  `pay_type` tinyint(4) DEFAULT NULL COMMENT '支付方式:0余额直接，1支付宝，2微信,3银联',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_order
-- ----------------------------
INSERT INTO `t_course_order` VALUES ('1', '2021-10-20 14:52:07', null, '20211020025206458168', '222.00', '1', '4', '3', '购买课程 [java大神班;] , 支付[222.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('2', '2021-10-20 15:59:32', '2021-10-20 15:59:58', '20211020035932280559', '222.00', '1', '1', '3', '购买课程 [java大神班;] , 支付[222.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('3', '2021-10-20 16:07:25', '2021-10-20 16:07:46', '20211020040725652305', '100.00', '1', '1', '3', '购买课程 [java大神班;] , 支付[100.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('4', '2021-10-20 16:10:16', '2021-10-20 16:10:32', '20211020041016680257', '200.00', '1', '1', '3', '购买课程 [SpringCloud入门到超神;] , 支付[200.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('5', '2021-10-21 09:49:49', null, '20211021094949051613', '100.00', '1', '4', '3', '购买课程 [SpringCloud入门到超神;] , 支付[100.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('6', '2021-10-24 06:03:59', null, '20211024020359452072', '222.00', '1', '4', '3', '购买课程 [java大神班;] , 支付[222.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('7', '2021-10-24 06:05:02', null, '20211024020502421299', '222.00', '1', '4', '3', '购买课程 [java大神班;] , 支付[222.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('8', '2021-10-24 06:07:11', '2021-10-24 06:08:01', '20211024020711746024', '222.00', '1', '1', '3', '购买课程 [java大神班;] , 支付[222.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('9', '2021-10-24 06:11:25', null, '20211024021125448701', '222.00', '1', '4', '3', '购买课程 [java大神班;] , 支付[222.00] 元', '0', '1');
INSERT INTO `t_course_order` VALUES ('10', '2021-10-24 06:15:20', '2021-10-24 06:16:00', '20211024021520466764', '100.00', '1', '1', '3', '购买课程 [java大神班;] , 支付[100.00] 元', '0', '1');

-- ----------------------------
-- Table structure for t_course_order_item
-- ----------------------------
DROP TABLE IF EXISTS `t_course_order_item`;
CREATE TABLE `t_course_order_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(255) NOT NULL COMMENT '对应秒杀订单',
  `amount` decimal(10,2) NOT NULL COMMENT '秒杀课程的价格',
  `count` tinyint(4) NOT NULL COMMENT '秒杀到课程的数量',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL,
  `course_id` bigint(20) NOT NULL COMMENT '秒杀课程ID，不是课程ID',
  `course_name` varchar(255) DEFAULT NULL COMMENT '秒杀课程名字',
  `course_pic` varchar(255) DEFAULT NULL COMMENT '封面',
  `version` int(11) DEFAULT '0',
  `order_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course_order_item
-- ----------------------------
INSERT INTO `t_course_order_item` VALUES ('1', '1', '222.00', '1', '2021-10-20 14:52:07', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211020025206458168');
INSERT INTO `t_course_order_item` VALUES ('2', '2', '222.00', '1', '2021-10-20 15:59:32', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211020035932280559');
INSERT INTO `t_course_order_item` VALUES ('3', '3', '100.00', '1', '2021-10-20 16:07:25', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211020040725652305');
INSERT INTO `t_course_order_item` VALUES ('4', '4', '200.00', '1', '2021-10-20 16:10:16', null, '9', 'SpringCloud入门到超神', 'https://www.itsource.cn/upload/class/20190712/e5ffdba7-ddd8-412e-b300-3de9a85c36ab.jpg', '0', '20211020041016680257');
INSERT INTO `t_course_order_item` VALUES ('5', '5', '100.00', '1', '2021-10-21 09:49:49', null, '9', 'SpringCloud入门到超神', 'https://www.itsource.cn/upload/class/20190712/e5ffdba7-ddd8-412e-b300-3de9a85c36ab.jpg', '0', '20211021094949051613');
INSERT INTO `t_course_order_item` VALUES ('6', '6', '222.00', '1', '2021-10-24 06:03:59', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211024020359452072');
INSERT INTO `t_course_order_item` VALUES ('7', '7', '222.00', '1', '2021-10-24 06:05:02', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211024020502421299');
INSERT INTO `t_course_order_item` VALUES ('8', '8', '222.00', '1', '2021-10-24 06:07:11', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211024020711746024');
INSERT INTO `t_course_order_item` VALUES ('9', '9', '222.00', '1', '2021-10-24 06:11:25', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211024021125448701');
INSERT INTO `t_course_order_item` VALUES ('10', '10', '100.00', '1', '2021-10-24 06:15:20', null, '3', 'java大神班', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '0', '20211024021520466764');
