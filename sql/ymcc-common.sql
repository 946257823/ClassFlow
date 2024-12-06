/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-common

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-12-03 18:30:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_message_email
-- ----------------------------
DROP TABLE IF EXISTS `t_message_email`;
CREATE TABLE `t_message_email` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `copyto` varchar(255) DEFAULT NULL COMMENT '抄送',
  `user_id` bigint(20) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message_email
-- ----------------------------
INSERT INTO `t_message_email` VALUES ('7', '课程发布', null, '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', null, '1', '2021-09-29 21:49:05');
INSERT INTO `t_message_email` VALUES ('8', '课程发布', null, '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'javaWEB班j\'> javaWEB班j </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', null, '1', '2021-09-29 21:54:54');
INSERT INTO `t_message_email` VALUES ('9', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:03:57');
INSERT INTO `t_message_email` VALUES ('10', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:04:59');
INSERT INTO `t_message_email` VALUES ('11', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:06:21');
INSERT INTO `t_message_email` VALUES ('12', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5基础班\'> H5基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:06:36');
INSERT INTO `t_message_email` VALUES ('13', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringCloud入门到超神\'> SpringCloud入门到超神 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:06:44');
INSERT INTO `t_message_email` VALUES ('14', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:09:27');
INSERT INTO `t_message_email` VALUES ('15', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:10:14');
INSERT INTO `t_message_email` VALUES ('16', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:10:16');
INSERT INTO `t_message_email` VALUES ('17', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:14:44');
INSERT INTO `t_message_email` VALUES ('18', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:15:18');
INSERT INTO `t_message_email` VALUES ('19', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:15:20');
INSERT INTO `t_message_email` VALUES ('20', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:15:21');
INSERT INTO `t_message_email` VALUES ('21', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:15:23');
INSERT INTO `t_message_email` VALUES ('22', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:15:25');
INSERT INTO `t_message_email` VALUES ('23', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringBoot\'> SpringBoot </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:18:16');
INSERT INTO `t_message_email` VALUES ('24', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:19:42');
INSERT INTO `t_message_email` VALUES ('25', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:19:44');
INSERT INTO `t_message_email` VALUES ('26', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:19:46');
INSERT INTO `t_message_email` VALUES ('27', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:19:48');
INSERT INTO `t_message_email` VALUES ('28', '课程发布', null, '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '1', '2021-09-29 23:19:50');
INSERT INTO `t_message_email` VALUES ('29', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'测试\'> 测试 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-09 17:31:04');
INSERT INTO `t_message_email` VALUES ('30', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('31', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('32', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('33', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'H5基础班\'> H5基础班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('34', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('35', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('36', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('37', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('38', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('39', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('40', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-20 13:48:51');
INSERT INTO `t_message_email` VALUES ('41', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:01:54');
INSERT INTO `t_message_email` VALUES ('42', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:01:57');
INSERT INTO `t_message_email` VALUES ('43', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:01:59');
INSERT INTO `t_message_email` VALUES ('44', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=4\'> java架构师班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:39:17');
INSERT INTO `t_message_email` VALUES ('45', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=1\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:39:29');
INSERT INTO `t_message_email` VALUES ('46', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=2\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:39:32');
INSERT INTO `t_message_email` VALUES ('47', '课程发布', null, '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=3\'> java大神班 </a> 发布啦，点击课程了解详情', null, '1', '2021-10-24 05:39:50');

-- ----------------------------
-- Table structure for t_message_sms
-- ----------------------------
DROP TABLE IF EXISTS `t_message_sms`;
CREATE TABLE `t_message_sms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message_sms
-- ----------------------------
INSERT INTO `t_message_sms` VALUES ('7', '课程发布', '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', null, '2021-09-29 21:49:05', '1');
INSERT INTO `t_message_sms` VALUES ('8', '课程发布', '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'javaWEB班j\'> javaWEB班j </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', null, '2021-09-29 21:54:54', '1');
INSERT INTO `t_message_sms` VALUES ('9', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:03:57', '1');
INSERT INTO `t_message_sms` VALUES ('10', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:04:59', '1');
INSERT INTO `t_message_sms` VALUES ('11', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:06:21', '1');
INSERT INTO `t_message_sms` VALUES ('12', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5基础班\'> H5基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:06:36', '1');
INSERT INTO `t_message_sms` VALUES ('13', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringCloud入门到超神\'> SpringCloud入门到超神 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:06:44', '1');
INSERT INTO `t_message_sms` VALUES ('14', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:09:27', '1');
INSERT INTO `t_message_sms` VALUES ('15', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:10:14', '1');
INSERT INTO `t_message_sms` VALUES ('16', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:10:16', '1');
INSERT INTO `t_message_sms` VALUES ('17', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:14:44', '1');
INSERT INTO `t_message_sms` VALUES ('18', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:15:18', '1');
INSERT INTO `t_message_sms` VALUES ('19', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:15:20', '1');
INSERT INTO `t_message_sms` VALUES ('20', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:15:21', '1');
INSERT INTO `t_message_sms` VALUES ('21', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:15:23', '1');
INSERT INTO `t_message_sms` VALUES ('22', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:15:25', '1');
INSERT INTO `t_message_sms` VALUES ('23', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringBoot\'> SpringBoot </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:18:16', '1');
INSERT INTO `t_message_sms` VALUES ('24', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:19:42', '1');
INSERT INTO `t_message_sms` VALUES ('25', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:19:44', '1');
INSERT INTO `t_message_sms` VALUES ('26', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:19:46', '1');
INSERT INTO `t_message_sms` VALUES ('27', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:19:48', '1');
INSERT INTO `t_message_sms` VALUES ('28', '课程发布', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', null, '2021-09-29 23:19:50', '1');
INSERT INTO `t_message_sms` VALUES ('29', '注册验证码', '您的验证码为 817795 ,请在 10 分钟内使用', null, '2021-10-04 14:40:39', null);
INSERT INTO `t_message_sms` VALUES ('30', '注册验证码', '您的验证码为 817795 ,请在 10 分钟内使用', null, '2021-10-04 14:42:02', null);
INSERT INTO `t_message_sms` VALUES ('31', '注册验证码', '您的验证码为 817795 ,请在 10 分钟内使用', null, '2021-10-04 14:43:40', null);
INSERT INTO `t_message_sms` VALUES ('32', '注册验证码', '您的验证码为 806707 ,请在 10 分钟内使用', null, '2021-10-04 14:50:03', null);
INSERT INTO `t_message_sms` VALUES ('33', '注册验证码', '您的验证码为 680206 ,请在 10 分钟内使用', null, '2021-10-04 14:51:34', null);
INSERT INTO `t_message_sms` VALUES ('34', '注册验证码', '您的验证码为 425411 ,请在 10 分钟内使用', null, '2021-10-04 15:21:03', null);
INSERT INTO `t_message_sms` VALUES ('35', '课程发布', '亲爱的用户您好，最新课程 <a href=\'测试\'> 测试 </a> 发布啦，点击课程了解详情', null, '2021-10-09 17:31:04', '1');
INSERT INTO `t_message_sms` VALUES ('36', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:51', '1');
INSERT INTO `t_message_sms` VALUES ('37', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:51', '1');
INSERT INTO `t_message_sms` VALUES ('38', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('39', '课程发布', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('40', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('41', '课程发布', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('42', '课程发布', '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('43', '课程发布', '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('44', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('45', '课程发布', '亲爱的用户您好，最新课程 <a href=\'H5基础班\'> H5基础班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('46', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', null, '2021-10-20 13:48:54', '1');
INSERT INTO `t_message_sms` VALUES ('47', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:01:54', '1');
INSERT INTO `t_message_sms` VALUES ('48', '课程发布', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:01:57', '1');
INSERT INTO `t_message_sms` VALUES ('49', '课程发布', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:01:59', '1');
INSERT INTO `t_message_sms` VALUES ('50', '课程发布', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=4\'> java架构师班 </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:39:17', '1');
INSERT INTO `t_message_sms` VALUES ('51', '课程发布', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=1\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:39:29', '1');
INSERT INTO `t_message_sms` VALUES ('52', '课程发布', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=2\'> javaWEB班j </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:39:32', '1');
INSERT INTO `t_message_sms` VALUES ('53', '课程发布', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=3\'> java大神班 </a> 发布啦，点击课程了解详情', null, '2021-10-24 05:39:50', '1');
INSERT INTO `t_message_sms` VALUES ('54', '注册验证码', '您的验证码为 589176 ,请在 10 分钟内使用', null, '2021-10-26 08:16:19', null);
INSERT INTO `t_message_sms` VALUES ('55', '注册验证码', '您的验证码为 932723 ,请在 10 分钟内使用', null, '2021-10-26 08:17:18', null);
INSERT INTO `t_message_sms` VALUES ('56', '注册验证码', '您的验证码为 856394 ,请在 10 分钟内使用', null, '2021-10-26 08:18:04', null);
INSERT INTO `t_message_sms` VALUES ('57', '注册验证码', '您的验证码为 168468 ,请在 10 分钟内使用', null, '2021-10-26 11:38:16', null);
INSERT INTO `t_message_sms` VALUES ('58', '注册验证码', '您的验证码为 098815 ,请在 10 分钟内使用', null, '2021-10-26 11:59:24', null);

-- ----------------------------
-- Table structure for t_message_station
-- ----------------------------
DROP TABLE IF EXISTS `t_message_station`;
CREATE TABLE `t_message_station` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `send_time` datetime DEFAULT NULL,
  `isread` tinyint(4) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_message_station
-- ----------------------------
INSERT INTO `t_message_station` VALUES ('13', '课程发布啦', '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', '系统消息', '2021-09-29 21:49:05', '0', '1');
INSERT INTO `t_message_station` VALUES ('14', '课程发布啦', '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', '系统消息', '2021-09-29 21:49:05', '0', '2');
INSERT INTO `t_message_station` VALUES ('15', '课程发布啦', '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'javaWEB班j\'> javaWEB班j </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', '系统消息', '2021-09-29 21:54:54', '0', '1');
INSERT INTO `t_message_station` VALUES ('16', '课程发布啦', '\"ï¿½×°ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ï¿½ï¿½Ã£ï¿½ï¿½ï¿½ï¿½Â¿Î³ï¿½ <a href=\'javaWEB班j\'> javaWEB班j </a> ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Î³ï¿½ï¿½Ë½ï¿½ï¿½ï¿½ï¿½ï¿½\"', '系统消息', '2021-09-29 21:54:54', '0', '2');
INSERT INTO `t_message_station` VALUES ('17', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:03:57', '0', '1');
INSERT INTO `t_message_station` VALUES ('18', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:03:57', '0', '2');
INSERT INTO `t_message_station` VALUES ('19', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:04:59', '0', '1');
INSERT INTO `t_message_station` VALUES ('20', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:04:59', '0', '2');
INSERT INTO `t_message_station` VALUES ('21', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:06:21', '0', '1');
INSERT INTO `t_message_station` VALUES ('22', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:06:21', '0', '2');
INSERT INTO `t_message_station` VALUES ('23', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5基础班\'> H5基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:06:36', '0', '1');
INSERT INTO `t_message_station` VALUES ('24', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5基础班\'> H5基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:06:36', '0', '2');
INSERT INTO `t_message_station` VALUES ('25', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringCloud入门到超神\'> SpringCloud入门到超神 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:06:44', '0', '1');
INSERT INTO `t_message_station` VALUES ('26', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringCloud入门到超神\'> SpringCloud入门到超神 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:06:44', '0', '2');
INSERT INTO `t_message_station` VALUES ('27', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:09:27', '0', '1');
INSERT INTO `t_message_station` VALUES ('28', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:09:27', '0', '2');
INSERT INTO `t_message_station` VALUES ('29', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:10:14', '0', '1');
INSERT INTO `t_message_station` VALUES ('30', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:10:14', '0', '2');
INSERT INTO `t_message_station` VALUES ('31', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:10:16', '0', '1');
INSERT INTO `t_message_station` VALUES ('32', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:10:16', '0', '2');
INSERT INTO `t_message_station` VALUES ('33', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:14:44', '0', '1');
INSERT INTO `t_message_station` VALUES ('34', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:14:44', '0', '2');
INSERT INTO `t_message_station` VALUES ('35', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:18', '0', '1');
INSERT INTO `t_message_station` VALUES ('36', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:18', '0', '2');
INSERT INTO `t_message_station` VALUES ('37', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:20', '0', '1');
INSERT INTO `t_message_station` VALUES ('38', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:20', '0', '2');
INSERT INTO `t_message_station` VALUES ('39', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:21', '0', '1');
INSERT INTO `t_message_station` VALUES ('40', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:21', '0', '2');
INSERT INTO `t_message_station` VALUES ('41', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:23', '0', '1');
INSERT INTO `t_message_station` VALUES ('42', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:23', '0', '2');
INSERT INTO `t_message_station` VALUES ('43', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:25', '0', '1');
INSERT INTO `t_message_station` VALUES ('44', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:15:25', '0', '2');
INSERT INTO `t_message_station` VALUES ('45', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringBoot\'> SpringBoot </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:18:16', '0', '1');
INSERT INTO `t_message_station` VALUES ('46', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'SpringBoot\'> SpringBoot </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:18:16', '0', '2');
INSERT INTO `t_message_station` VALUES ('47', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:42', '0', '1');
INSERT INTO `t_message_station` VALUES ('48', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java基础班java基础班\'> java基础班java基础班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:42', '0', '2');
INSERT INTO `t_message_station` VALUES ('49', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:44', '0', '1');
INSERT INTO `t_message_station` VALUES ('50', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'javaWEB班j\'> javaWEB班j </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:44', '0', '2');
INSERT INTO `t_message_station` VALUES ('51', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:46', '0', '1');
INSERT INTO `t_message_station` VALUES ('52', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java大神班\'> java大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:46', '0', '2');
INSERT INTO `t_message_station` VALUES ('53', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:48', '0', '1');
INSERT INTO `t_message_station` VALUES ('54', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'java架构师班\'> java架构师班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:48', '0', '2');
INSERT INTO `t_message_station` VALUES ('55', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:50', '0', '1');
INSERT INTO `t_message_station` VALUES ('56', '课程发布啦', '\"äº²ç±çç¨æ·æ¨å¥½ï¼ææ°è¯¾ç¨ <a href=\'H5大神班\'> H5大神班 </a> åå¸å¦ï¼ç¹å»è¯¾ç¨äºè§£è¯¦æ\"', '系统消息', '2021-09-29 23:19:50', '0', '2');
INSERT INTO `t_message_station` VALUES ('57', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'测试\'> 测试 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-09 17:31:04', '0', '1');
INSERT INTO `t_message_station` VALUES ('58', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'测试\'> 测试 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-09 17:31:05', '0', '2');
INSERT INTO `t_message_station` VALUES ('59', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:52', '0', '3');
INSERT INTO `t_message_station` VALUES ('60', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:52', '0', '3');
INSERT INTO `t_message_station` VALUES ('61', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:52', '0', '3');
INSERT INTO `t_message_station` VALUES ('62', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:52', '0', '1');
INSERT INTO `t_message_station` VALUES ('63', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'H5基础班\'> H5基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:52', '0', '1');
INSERT INTO `t_message_station` VALUES ('64', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:52', '0', '1');
INSERT INTO `t_message_station` VALUES ('65', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:52', '0', '3');
INSERT INTO `t_message_station` VALUES ('66', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:52', '0', '2');
INSERT INTO `t_message_station` VALUES ('67', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'H5基础班\'> H5基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:52', '0', '2');
INSERT INTO `t_message_station` VALUES ('68', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:52', '0', '2');
INSERT INTO `t_message_station` VALUES ('69', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('70', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('71', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('72', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('73', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('74', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('75', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('76', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('77', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('78', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('79', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('80', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('81', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('82', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('83', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('84', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('85', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('86', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('87', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('88', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('89', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('90', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('91', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('92', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-20 13:48:55', '0', '3');
INSERT INTO `t_message_station` VALUES ('93', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('94', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('95', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('96', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '1');
INSERT INTO `t_message_station` VALUES ('97', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('98', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java架构师班\'> java架构师班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('99', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('100', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('101', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('102', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'H5大神班\'> H5大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-20 13:48:55', '0', '2');
INSERT INTO `t_message_station` VALUES ('103', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-24 05:01:16', '0', '3');
INSERT INTO `t_message_station` VALUES ('104', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:01:54', '0', '1');
INSERT INTO `t_message_station` VALUES ('105', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java基础班java基础班\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:01:54', '0', '2');
INSERT INTO `t_message_station` VALUES ('106', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:01:57', '0', '1');
INSERT INTO `t_message_station` VALUES ('107', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'javaWEB班j\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:01:57', '0', '2');
INSERT INTO `t_message_station` VALUES ('108', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:01:59', '0', '1');
INSERT INTO `t_message_station` VALUES ('109', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'java大神班\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:01:59', '0', '2');
INSERT INTO `t_message_station` VALUES ('110', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=4\'> java架构师班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:17', '0', '1');
INSERT INTO `t_message_station` VALUES ('111', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=4\'> java架构师班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:17', '0', '2');
INSERT INTO `t_message_station` VALUES ('112', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=1\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:29', '0', '1');
INSERT INTO `t_message_station` VALUES ('113', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=1\'> java基础班java基础班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:29', '0', '2');
INSERT INTO `t_message_station` VALUES ('114', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=2\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:32', '0', '1');
INSERT INTO `t_message_station` VALUES ('115', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=2\'> javaWEB班j </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:32', '0', '2');
INSERT INTO `t_message_station` VALUES ('116', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=3\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:50', '0', '1');
INSERT INTO `t_message_station` VALUES ('117', '课程发布啦', '亲爱的用户您好，最新课程 <a href=\'http://course.ymcc.com:6002/detail.html?courseId=3\'> java大神班 </a> 发布啦，点击课程了解详情', '系统消息', '2021-10-24 05:39:50', '0', '2');
INSERT INTO `t_message_station` VALUES ('118', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-24 06:03:59', '0', '3');
INSERT INTO `t_message_station` VALUES ('119', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-24 06:05:02', '0', '3');
INSERT INTO `t_message_station` VALUES ('120', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-24 06:07:11', '0', '3');
INSERT INTO `t_message_station` VALUES ('121', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-24 06:11:25', '0', '3');
INSERT INTO `t_message_station` VALUES ('122', '下单成功', '课程下单成功,请在30分钟内支付', '订单消息', '2021-10-24 06:15:20', '0', '3');
