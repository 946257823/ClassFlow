/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-media

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-10-25 11:13:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_media_file
-- ----------------------------
DROP TABLE IF EXISTS `t_media_file`;
CREATE TABLE `t_media_file` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_id` varchar(255) DEFAULT NULL COMMENT '文件的ID',
  `file_name` varchar(255) DEFAULT NULL COMMENT '文件名',
  `file_original_name` varchar(255) DEFAULT NULL COMMENT '源文件名',
  `file_url` varchar(255) DEFAULT NULL COMMENT '文件的云存储地址，处理过的m3u8格式',
  `file_path` varchar(255) DEFAULT NULL COMMENT '文件在本地磁盘的临时存储目录',
  `file_type` varchar(255) DEFAULT NULL COMMENT '文件类型',
  `file_status` tinyint(4) DEFAULT NULL COMMENT '1未处理 2处理成功 3处理失败 4无需处理',
  `file_size` bigint(20) DEFAULT NULL COMMENT '文件总大小',
  `mime_type` varchar(255) DEFAULT NULL COMMENT '文件mime类型',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `chapter_id` bigint(20) DEFAULT NULL COMMENT '属于哪个章节',
  `course_id` bigint(20) DEFAULT NULL COMMENT '属于哪个课程',
  `number` int(11) DEFAULT '1' COMMENT '视频的序号',
  `name` varchar(255) DEFAULT NULL COMMENT '视频名',
  `course_name` varchar(255) DEFAULT NULL,
  `chapter_name` varchar(255) DEFAULT NULL,
  `time_minute` int(10) DEFAULT NULL,
  `free` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_media_file
-- ----------------------------
INSERT INTO `t_media_file` VALUES ('41', '23b52cc0e985544b0f240d5d2d8fed10', '23b52cc0e985544b0f240d5d2d8fed10.avi', '页面静态化3.avi', 'http://115.159.88.63:8080/live/23b52cc0e985544b0f240d5d2d8fed10.m3u8', '2/3/23b52cc0e985544b0f240d5d2d8fed10/', 'avi', '2', '22574962', 'video/avi', '2021-09-16 13:51:30', '3', '9', '1', '应用架构的演变', 'java基础班java基础班', '第二章-Eureak服务注册与发现', '25', '');
INSERT INTO `t_media_file` VALUES ('42', '23b52cc0e985544b0f240d5d2d8fed10', '23b52cc0e985544b0f240d5d2d8fed10.avi', '页面静态化3.avi', 'http://115.159.88.63:8080/live/23b52cc0e985544b0f240d5d2d8fed10.m3u8', '2/3/23b52cc0e985544b0f240d5d2d8fed10/', 'avi', '2', '22574962', 'video/avi', '2021-09-16 13:51:30', '4', '9', '2', 'SpringCloud介绍', 'java基础班java基础班', '第二章-Eureak服务注册与发现', '20', '\0');
INSERT INTO `t_media_file` VALUES ('43', '1dd013223fc66fe3166c800a6909099f', '1dd013223fc66fe3166c800a6909099f.avi', '15、服务监控中心.avi', 'http://115.159.88.63:8080/live/1dd013223fc66fe3166c800a6909099f.m3u8', '1/d/1dd013223fc66fe3166c800a6909099f/', 'avi', '2', '26238464', 'video/avi', '2021-10-02 23:48:07', '1444276683508326400', '10', '1', 'SpringBoot介绍', 'SpringBoot', '第一章:SpringBoot概述', null, '');
INSERT INTO `t_media_file` VALUES ('48', '1dd013223fc66fe3166c800a6909099f', '1dd013223fc66fe3166c800a6909099f.avi', '15、服务监控中心.avi', 'http://115.159.88.63:8080/live/1dd013223fc66fe3166c800a6909099f.m3u8', '1/d/1dd013223fc66fe3166c800a6909099f/', 'avi', '2', '26238464', 'video/avi', '2021-10-03 08:49:13', '1444276683508326400', '10', '1', '11', 'SpringBoot', '第一章:SpringBoot概述', null, '\0');
INSERT INTO `t_media_file` VALUES ('49', '4b7fd2a8a950f8c4488169976d03eeca', '4b7fd2a8a950f8c4488169976d03eeca.avi', '1、集中式应用.avi', 'http://115.159.88.63:8080/live/4b7fd2a8a950f8c4488169976d03eeca.m3u8', '4/b/4b7fd2a8a950f8c4488169976d03eeca/', 'avi', '2', '22911488', 'video/avi', '2021-10-03 14:15:36', '1', '9', '1', 'SpringCloud高级', 'SpringCloud入门到高级', '第一章-微服务概述', null, '');
INSERT INTO `t_media_file` VALUES ('50', 'f5671e405934a99aa332e1b26edab700', 'f5671e405934a99aa332e1b26edab700.avi', '3、RPC原理.avi', 'http://115.159.88.63:8080/live/f5671e405934a99aa332e1b26edab700.m3u8', 'f/5/f5671e405934a99aa332e1b26edab700/', 'avi', '2', '20964864', 'video/avi', '2021-10-03 14:15:51', '1', '9', '2', 'SpringCloud高级', 'SpringCloud入门到高级', '第一章-微服务概述', null, '\0');
INSERT INTO `t_media_file` VALUES ('51', 'd8884f9249ab4d92147886953eeb1bb8', 'd8884f9249ab4d92147886953eeb1bb8.avi', '5、注册中心概述.avi', 'http://115.159.88.63:8080/live/d8884f9249ab4d92147886953eeb1bb8.m3u8', 'd/8/d8884f9249ab4d92147886953eeb1bb8/', 'avi', '2', '19751424', 'video/avi', '2021-10-03 14:16:12', '2', '9', '3', 'SpringCloud入门到高级', 'SpringCloud入门到高级', '第二章-Eureak服务注册与发现', null, '');
INSERT INTO `t_media_file` VALUES ('52', '4b7fd2a8a950f8c4488169976d03eeca', '4b7fd2a8a950f8c4488169976d03eeca.avi', '1、集中式应用.avi', 'http://115.159.88.63:8080/live/4b7fd2a8a950f8c4488169976d03eeca.m3u8', '4/b/4b7fd2a8a950f8c4488169976d03eeca/', 'avi', '2', '22911488', 'video/avi', '2021-10-09 16:39:35', '2', '3', '1', 'JDK装', 'java大神班', '第二章：安装', null, '\0');
INSERT INTO `t_media_file` VALUES ('53', '4b7fd2a8a950f8c4488169976d03eeca', '4b7fd2a8a950f8c4488169976d03eeca.avi', '1、集中式应用.avi', 'http://115.159.88.63:8080/live/4b7fd2a8a950f8c4488169976d03eeca.m3u8', '4/b/4b7fd2a8a950f8c4488169976d03eeca/', 'avi', '2', '22911488', 'video/avi', '2021-10-09 16:43:13', '1', '3', '3', 'java概述', 'java大神班', '第一章：概述', null, '');
INSERT INTO `t_media_file` VALUES ('54', '336903ed9ee9b7be0d643c12fb96911b', '336903ed9ee9b7be0d643c12fb96911b.avi', '14、开发流程.avi', 'http://115.159.88.63:8080/live/336903ed9ee9b7be0d643c12fb96911b.m3u8', '3/3/336903ed9ee9b7be0d643c12fb96911b/', 'avi', '2', '43369984', 'video/avi', '2021-10-20 15:00:14', '1450718317282312200', '3', '1', 'Java基础语法', 'java大神班', '第三章', null, '\0');
