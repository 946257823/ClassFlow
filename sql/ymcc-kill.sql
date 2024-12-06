/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-kill

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-12-03 18:29:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_kill_activity
-- ----------------------------
DROP TABLE IF EXISTS `t_kill_activity`;
CREATE TABLE `t_kill_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `time_str` varchar(100) DEFAULT NULL,
  `begin_time` bigint(20) DEFAULT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `publish_status` tinyint(4) DEFAULT NULL COMMENT '0待发布，1已发布 ，2已取消',
  `publish_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_kill_activity
-- ----------------------------
INSERT INTO `t_kill_activity` VALUES ('2', '双12剁手', '12-03 01:01', '1638428400000', '1638446400000', '1', '2021-12-03 00:44:05');
INSERT INTO `t_kill_activity` VALUES ('4', '双11剁手', '12-02 15:00', '1638428400000', '1638446400000', '1', '2021-12-03 00:47:15');
INSERT INTO `t_kill_activity` VALUES ('5', '京东618', '12-05 02:00', '1638640800000', '1638950400000', '1', '2021-12-03 00:48:45');

-- ----------------------------
-- Table structure for t_kill_course
-- ----------------------------
DROP TABLE IF EXISTS `t_kill_course`;
CREATE TABLE `t_kill_course` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) NOT NULL COMMENT '课程名字',
  `course_id` bigint(20) NOT NULL COMMENT '对应的课程ID',
  `kill_price` decimal(10,2) NOT NULL,
  `kill_count` int(6) NOT NULL COMMENT '库存',
  `kill_limit` tinyint(4) NOT NULL COMMENT '每个人可以秒杀的数量,默认1',
  `kill_sort` int(6) DEFAULT '0' COMMENT '秒杀课程排序',
  `publish_status` tinyint(4) NOT NULL COMMENT '秒杀状态:0待发布，1秒杀中，2秒杀结束',
  `course_pic` varchar(255) NOT NULL,
  `start_time` bigint(20) DEFAULT NULL COMMENT '秒杀开始时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '秒杀结束时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `publish_time` datetime DEFAULT NULL COMMENT '发布到Redis的时间',
  `teacher_names` varchar(255) DEFAULT NULL COMMENT '老师，用逗号隔开',
  `offline_time` datetime DEFAULT NULL COMMENT '下线时间',
  `activity_id` bigint(20) DEFAULT NULL,
  `time_str` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of t_kill_course
-- ----------------------------
INSERT INTO `t_kill_course` VALUES ('6', 'java基础班java基础班', '1', '100.00', '100', '1', '0', '0', 'https://www.itsource.cn/upload/class/20200706/609f86c2-c77e-4785-9c8b-67969f1ca39f.png', '1635831058000', '1637942400000', '2021-11-02 05:31:02', '2021-11-02 05:31:05', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('7', 'javaWEB班j', '2', '200.00', '200', '1', '0', '0', 'https://www.itsource.cn/upload/class/20200512/e9db8748-8f9c-4c8a-866b-8e0a3331c389.png', '1635831093000', '1636473600000', '2021-11-02 05:31:55', '2021-11-02 05:32:00', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('8', 'java大神班', '3', '300.00', '300', '1', '0', '0', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '1635831121000', '1635955200000', '2021-11-02 05:32:04', '2021-11-02 05:32:05', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('9', 'javaWEB班j', '2', '200.00', '10', '1', '0', '0', 'https://www.itsource.cn/upload/class/20200512/e9db8748-8f9c-4c8a-866b-8e0a3331c389.png', '1635831365000', '1635868800000', '2021-11-02 05:33:18', '2021-11-02 05:33:20', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('10', 'javaWEB班j', '2', '200.00', '20', '1', '0', '0', 'https://www.itsource.cn/upload/class/20200512/e9db8748-8f9c-4c8a-866b-8e0a3331c389.png', '1635833939000', '1635868800000', '2021-11-02 06:16:11', '2021-11-02 06:16:15', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('11', 'java基础班java基础班', '1', '11.00', '11', '1', '0', '0', 'https://www.itsource.cn/upload/class/20200706/609f86c2-c77e-4785-9c8b-67969f1ca39f.png', '1635834291000', '1635834779000', '2021-11-02 06:23:08', '2021-11-02 06:23:10', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('12', 'java大神班', '3', '100.00', '10', '1', '0', '0', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '1635868800000', '1637856000000', '2021-11-02 06:53:25', '2021-11-02 06:53:30', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('13', 'H5大神班', '5', '1.00', '1000', '1', '0', '0', 'https://www.itsource.cn/upload/class/20201209/3958c089-42b5-4c6a-aed2-6305efe0514e.jpg', '1635836454000', '1635868800000', '2021-11-02 07:00:58', '2021-11-02 07:01:00', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('14', 'java基础班java基础班', '1', '100.00', '10', '1', '0', '0', 'https://www.itsource.cn/upload/class/20200706/609f86c2-c77e-4785-9c8b-67969f1ca39f.png', '1635836971000', '1635868800000', '2021-11-02 07:09:34', '2021-11-02 07:09:35', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('15', 'java大神班', '3', '1000.00', '100000', '1', '0', '0', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '1635839257000', '1635839259000', '2021-11-02 07:47:40', '2021-11-02 07:47:45', '陈老师', null, null, null);
INSERT INTO `t_kill_course` VALUES ('16', 'java基础班java基础班', '1', '100.00', '100', '1', '0', '1', 'https://www.itsource.cn/upload/class/20200706/609f86c2-c77e-4785-9c8b-67969f1ca39f.png', '1638428400000', '1638446400000', '2021-12-02 11:26:45', '2021-12-03 00:44:05', '陈老师', null, '2', '12-03 01:01');
INSERT INTO `t_kill_course` VALUES ('17', 'javaWEB班j', '2', '100.00', '100', '1', '0', '1', 'https://www.itsource.cn/upload/class/20200512/e9db8748-8f9c-4c8a-866b-8e0a3331c389.png', '1638428400000', '1638446400000', '2021-12-02 11:28:37', '2021-12-03 00:44:05', '陈老师', null, '2', '12-03 01:01');
INSERT INTO `t_kill_course` VALUES ('18', 'java大神班', '3', '200.00', '100', '1', '0', '1', 'https://www.itsource.cn/upload/class/20201119/e988f799-a0e3-4709-8bf2-cae29d95472c.jpg', '1638428400000', '1638446400000', '2021-12-02 11:28:54', '2021-12-03 00:44:05', '陈老师', null, '2', '12-03 01:01');
INSERT INTO `t_kill_course` VALUES ('19', 'java架构师班', '4', '100.00', '200', '1', '0', '1', 'https://www.itsource.cn/upload/class/20210310/fcff8f7a-f01a-4b83-908d-37bfb6a3d653.jpg', '1638428400000', '1638446400000', '2021-12-02 13:30:20', '2021-12-03 00:44:05', '陈老师', null, '2', '12-03 01:01');
INSERT INTO `t_kill_course` VALUES ('20', 'java架构师班', '4', '100.00', '100', '1', '0', '1', 'https://www.itsource.cn/upload/class/20210310/fcff8f7a-f01a-4b83-908d-37bfb6a3d653.jpg', '1638428400000', '1638446400000', '2021-12-03 00:47:12', '2021-12-03 00:47:15', '陈老师', null, '4', '12-02 15:00');
INSERT INTO `t_kill_course` VALUES ('21', 'java基础班java基础班', '1', '100.00', '1000', '1', '0', '1', 'https://www.itsource.cn/upload/class/20200706/609f86c2-c77e-4785-9c8b-67969f1ca39f.png', '1638640800000', '1638950400000', '2021-12-03 00:48:43', '2021-12-03 00:48:45', '陈老师', null, '5', '12-05 02:00');
