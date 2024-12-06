/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-uaa

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-10-25 11:14:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(48) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL COMMENT '权限',
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL COMMENT '扩展信息',
  `autoapprove` varchar(256) DEFAULT NULL COMMENT '自动授权',
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='oauth2客户端详情配置';

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('backstage', 'default,courseId,searchId,userId,fileId,systemId,mediaId,uaaId,orderId,payId,killId', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', 'ymcc', 'client_credentials,password,authorization_code,refresh_token', 'http://www.baidu.com', null, '720000', '720000', null, 'false');
INSERT INTO `oauth_client_details` VALUES ('system', 'default,systemId', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', 'ymcc', 'client_credentials', 'http://www.baidu.com', 'employee:selectUserInfo', '720000', '720000', null, 'false');
INSERT INTO `oauth_client_details` VALUES ('website', 'default,courseId,searchId,userId,fileId,systemId,mediaId,uaaId,orderId,payId,killId', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', 'ymcc', 'client_credentials,password,authorization_code,refresh_token', 'http://www.baidu.com', null, '720000', '720000', null, 'false');

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(255) DEFAULT NULL COMMENT '授权码(未加密)',
  `authentication` varbinary(5000) DEFAULT NULL COMMENT 'AuthorizationRequestHolder.java对象序列化后的二进制数据'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='授权码';

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for t_login
-- ----------------------------
DROP TABLE IF EXISTS `t_login`;
CREATE TABLE `t_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` tinyint(1) DEFAULT NULL COMMENT '0是后台，1是前台',
  `enabled` bit(1) DEFAULT b'1',
  `account_non_expired` bit(1) DEFAULT b'1',
  `credentials_non_expired` bit(1) DEFAULT b'1',
  `account_non_locked` bit(1) DEFAULT b'1',
  `client_id` varchar(255) DEFAULT NULL COMMENT '对应Oauth2客户端详情ID',
  `client_secret` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='登录表';

-- ----------------------------
-- Records of t_login
-- ----------------------------
INSERT INTO `t_login` VALUES ('1', 'yhptest1', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '0', '', '', '', '', 'backstage', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('2', 'yhptest', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '0', '', '', '', '', 'backstage', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('3', '13330964748', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('4', '18000534099', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('6', 'itsource.cn', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '0', '', '', '', '', 'backstage', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('7', '小碗', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '0', '', '', '', '', 'backstage', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('8', 'terry', '$2a$10$bPS9UwRMf0EwHJ/JF1Txp.LMr4iwycAB6/TRmrGFMSsHlxNhS.Oly', '0', '', '', '', '', 'backstage', '123', 'https://img2.baidu.com/it/u=3309676100,432266439&fm=26&fmt=auto&gp=0.jpg');
INSERT INTO `t_login` VALUES ('9', '18233339999', '$2a$10$xIMDK./ALUaSD.UJ0DJJ5OhTMQOAUjV6974LsxmpQExU2nWVhilSC', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('10', '18233339999', '$2a$10$zm1/i4dj7uccCfcZXL6mZuumhrV2ErE5iTcH1K3kMOYdGgtMRZs2a', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('11', '18244444333', '$2a$10$0kMfwH6M7bz4w25UPAZxCe2zY3w.s0vzF69..2Fu63HFJwTHtr8Lu', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('12', '18244444332', '$2a$10$MNz9.rMxvgX4nABgmYziCOsxBjI1Tu2FxomOH04XMVNApz0nkyVlq', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('13', '18243444333', '$2a$10$2GzUk1S2JGw9Y9TJpI6qxeDpgAyQ4II5PWC2kFV6Vbm1EGMH1Wary', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('14', '18244343334', '$2a$10$cIEdtuOA.sGLTT6c5GJwM.GKudlKnEsc62lKMqQIiu.VpNlZEFh2m', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('15', '18244444335', '$2a$10$elzfUCDs0UFsKmYgLQgHVu6761wXLgpfXVOVDwZS9uhBSg9s/4kia', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('16', '18244444336', '$2a$10$mHFLVEfTHItLFtrmIKiXCONKnlJfQGCXh3bzokXvXca/pLxm0RGEe', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');
INSERT INTO `t_login` VALUES ('17', '18244444338', '$2a$10$OqdPnEov4JfhXuZiFnCYX.Ubc6b4M1.2F70YLVrnSd1g5.VPiwE2i', '1', '', '', '', '', 'website', '123', 'https://img2.baidu.com/it/u=1535346744,3172439964&fm=26&fmt=auto');

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) DEFAULT NULL,
  `login_id` bigint(20) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL COMMENT 'IP',
  `client_info` varchar(100) DEFAULT NULL COMMENT '客户端',
  `login_type` tinyint(4) DEFAULT NULL COMMENT '登录方式',
  `success` tinyint(4) NOT NULL DEFAULT '1' COMMENT '登录是否成功',
  `remark` varchar(50) DEFAULT NULL COMMENT '结果说明',
  PRIMARY KEY (`id`),
  KEY `login_id` (`login_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='登录记录';

-- ----------------------------
-- Records of t_login_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_login_role
-- ----------------------------
DROP TABLE IF EXISTS `t_login_role`;
CREATE TABLE `t_login_role` (
  `login_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户和角色中间表';

-- ----------------------------
-- Records of t_login_role
-- ----------------------------
INSERT INTO `t_login_role` VALUES ('1', '1', '1');
INSERT INTO `t_login_role` VALUES ('2', '1', '2');

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_15cj154flr9f3s4x5dg3bqilr` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

-- ----------------------------
-- Records of t_menu
-- ----------------------------

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `resource` varchar(255) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_id` bigint(20) DEFAULT NULL,
  `sn` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '员工查询', '/employee/list', '0', null, 'employee:list');
INSERT INTO `t_permission` VALUES ('2', '课程上线', '/course/onLine', '0', null, 'course:online');
INSERT INTO `t_permission` VALUES ('3', 'ES保存', '/es/onLineCourse', '0', null, 'es:saveCourse');
INSERT INTO `t_permission` VALUES ('4', '课程列表', '/course/pagelist', '0', null, 'course:pagelist');
INSERT INTO `t_permission` VALUES ('5', '课程添加', '/course/addOrUpdate', '0', null, 'course:addOrUpdate');
INSERT INTO `t_permission` VALUES ('6', 'ES添加课程', '/courseSearch/addOrupdate', '0', null, 'courseSearch:addOrupdate');
INSERT INTO `t_permission` VALUES ('7', '获取用户信息', '/employee/userInfo', '0', null, 'employee:selectUserInfo');

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '人事', 'HR');
INSERT INTO `t_role` VALUES ('2', '管理员', 'ADMIN');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `permission_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `permission_id` (`permission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '1', '1');
INSERT INTO `t_role_permission` VALUES ('1', '2', '2');
INSERT INTO `t_role_permission` VALUES ('1', '3', '3');
INSERT INTO `t_role_permission` VALUES ('1', '4', '4');
INSERT INTO `t_role_permission` VALUES ('1', '5', '5');
INSERT INTO `t_role_permission` VALUES ('1', '6', '6');
INSERT INTO `t_role_permission` VALUES ('1', '7', '7');
