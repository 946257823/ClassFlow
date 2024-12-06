/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-user

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-10-25 11:14:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_account_flow
-- ----------------------------
DROP TABLE IF EXISTS `t_account_flow`;
CREATE TABLE `t_account_flow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(10,0) DEFAULT NULL COMMENT '流水金额',
  `account_id` bigint(20) DEFAULT NULL COMMENT '账户ID',
  `remark` varchar(255) DEFAULT NULL COMMENT '流水描述',
  `create_time` datetime DEFAULT NULL,
  `business_type` tinyint(4) DEFAULT NULL COMMENT '流水类型：充值，提现，购买课程',
  `business_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_account_flow
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `third_uid` varchar(50) DEFAULT NULL COMMENT '三方登录名',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `password` char(32) DEFAULT NULL COMMENT '密码',
  `avatar` varchar(100) DEFAULT NULL COMMENT '头像',
  `salt` varchar(100) DEFAULT NULL COMMENT '盐值',
  `nick_name` varchar(20) DEFAULT NULL COMMENT '昵称',
  `bit_state` bigint(20) DEFAULT '0' COMMENT '用户状态',
  `sec_level` tinyint(4) DEFAULT '0' COMMENT '安全级别',
  `login_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='会员登录账号';

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '1493695662249', '1493695662249', null, '13330964748', null, '45b4d26eed82b3b37b9e637ec1a7b765', null, 'IUZNuePMO9M2WjpRDobmkumphfW5SVnx', 'yhptest', '11', '0', '3');
INSERT INTO `t_user` VALUES ('2', '1493696055777', '1493696055777', null, '18000534099', null, '1b2d139a90d867443b58cb3f2b913ba7', null, '4XWeFM2CK2B8iUDRT7v36EEZ2EBwKhMI', '18000534099', '11', '0', '4');
INSERT INTO `t_user` VALUES ('3', '1493720954508', '1493720954508', null, '18000534098', null, '2f97acf09a7647b7416bd90e9a9d2ce5', null, 'Txaqv6D2HnOeQ4IvfXQTpE3d2AHSmOuz', '18000534098', '11', '0', null);
INSERT INTO `t_user` VALUES ('4', '1493731615512', '1493731615512', null, '18000534096', null, 'b5c12facbc7c34a8184c6fbff18d1f93', null, 'Vn2jfLa2e8PvavINK7Ak95jNlHft4crw', '18000534096', '11', '0', null);
INSERT INTO `t_user` VALUES ('5', '1493731911382', '1493731911382', null, '18000534095', null, 'ecacd0c0f63adc3ac7358e120815ef06', null, 'GAzxYCW2a8GS6s5Bi65bM3XptIjEwEWt', '18000534095', '1', '0', null);
INSERT INTO `t_user` VALUES ('7', '1571128610905', null, null, '18244445544', null, 'ccd98807b645bcf679e0dd6070c09d5e', null, '8009208978305125', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('8', '1571191089186', null, null, '18512891207', null, '840ccda78c9c327158e38bd97cbe0d8c', null, '3540041295115034', null, '0', '0', null);
INSERT INTO `t_user` VALUES ('9', '1603246657879', null, null, '18244444444', null, 'b4ae8bf26b12b85a5430bf973ab9d211', null, 'SIFZvyiVnAXdx6mN', '18244444444', '1', '0', null);
INSERT INTO `t_user` VALUES ('10', '1608887153463', null, null, '18244444455', null, 'd58ed0aa16630602d01ec09c5c85d2e9', null, '7840951831692762', null, '1', '0', null);
INSERT INTO `t_user` VALUES ('11', '1615449433994', null, null, '18244444446', null, '9f121141b325c42eb990f32c5f7df113', null, 'b24dbee4-0074-4a68-8c9a-77b32ca7eb8a', null, '1', '0', null);
INSERT INTO `t_user` VALUES ('12', '1633330574431', null, null, '18233339999', null, null, null, null, '18233339999', '1', '0', null);
INSERT INTO `t_user` VALUES ('14', '1633332207908', null, null, '18244444335', null, null, null, null, '18244444333', '1', '0', '16');
INSERT INTO `t_user` VALUES ('15', '1633332335345', null, null, '18244444333', null, null, null, null, '18244444333', '1', '0', '17');

-- ----------------------------
-- Table structure for t_user_account
-- ----------------------------
DROP TABLE IF EXISTS `t_user_account`;
CREATE TABLE `t_user_account` (
  `id` bigint(20) NOT NULL,
  `usable_amount` decimal(10,0) DEFAULT NULL,
  `frozen_amount` decimal(10,0) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL COMMENT '支付密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_account
-- ----------------------------
INSERT INTO `t_user_account` VALUES ('15', '0', '0', '2021-10-04 15:25:44', null, null);

-- ----------------------------
-- Table structure for t_user_address
-- ----------------------------
DROP TABLE IF EXISTS `t_user_address`;
CREATE TABLE `t_user_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '登录用户',
  `reciver` varchar(15) NOT NULL COMMENT '收货人',
  `area_code` varchar(9) NOT NULL COMMENT '区域',
  `address` varchar(30) DEFAULT NULL COMMENT '详细地址',
  `full_address` varchar(50) DEFAULT NULL COMMENT '全地址',
  `phone` char(11) NOT NULL COMMENT '手机号码',
  `phone_back` varchar(11) DEFAULT NULL COMMENT '备用手机号',
  `tel` varchar(11) DEFAULT NULL COMMENT '固定电话',
  `post_code` varchar(6) DEFAULT NULL COMMENT '邮编',
  `email` varchar(30) DEFAULT NULL COMMENT '电子邮件',
  `default_address` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否默认',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='收货地址';

-- ----------------------------
-- Records of t_user_address
-- ----------------------------
INSERT INTO `t_user_address` VALUES ('1', '1493967356998', '1493973095408', '1', '倪先华', '51,01,70', '府城大道666号天府新谷5号楼6楼', '四川省 成都市 高新区  府城大道666号天府新谷5号楼6楼', '18000534097', '', '', '610000', '', '1');
INSERT INTO `t_user_address` VALUES ('2', '1493967356998', '1493973095408', '1', '王大锤', '51,01,70', '府城大道666号天府新谷5号楼6楼', '四川省 成都市 高新区  府城大道666号天府新谷5号楼6楼', '18000534097', '', '', '610000', '', '0');

-- ----------------------------
-- Table structure for t_user_base_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_base_info`;
CREATE TABLE `t_user_base_info` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `reg_channel` tinyint(4) DEFAULT NULL COMMENT '注册渠道',
  `reg_time` bigint(20) DEFAULT NULL COMMENT '注册时间',
  `qq` varchar(12) DEFAULT NULL COMMENT 'QQ',
  `level` tinyint(4) DEFAULT '0' COMMENT '用户等级',
  `grow_score` int(11) DEFAULT '0' COMMENT '成长值',
  `refer_id` bigint(20) DEFAULT NULL COMMENT '推荐人',
  `sex` tinyint(4) DEFAULT NULL COMMENT '性别',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `area_code` int(11) DEFAULT NULL COMMENT '居住地区域',
  `address` varchar(100) DEFAULT NULL COMMENT '详细地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员基本信息';

-- ----------------------------
-- Records of t_user_base_info
-- ----------------------------
INSERT INTO `t_user_base_info` VALUES ('0', '1633332335345', null, '1', '1633332335345', null, '0', '0', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('1', '1493695662397', '1493695662397', '0', '1493695662249', null, '0', '1', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('2', '1493696055788', '1493696055788', '0', '1493696055777', null, '0', '1', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('3', '1493720954564', '1493720954564', '0', '1493720954508', null, '0', '1', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('4', '1493731615672', '1493731615672', '0', '1493731615512', null, '0', '1', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('5', '1493731911393', '1493731911393', '0', '1493731911382', null, '0', '1', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('6', '1571128610969', null, '1', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('7', '1571191089227', null, '1', null, null, '0', '0', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('8', '1603246657879', null, '1', '1603246657879', null, '0', '0', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('9', '1608887153463', null, '1', '1608887153463', null, '0', '0', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('10', '1615449433994', null, '1', '1615449433994', null, '0', '0', null, null, null, null, null);
INSERT INTO `t_user_base_info` VALUES ('11', '1633330574431', null, '1', '1633330574431', null, '0', '0', null, null, null, null, null);

-- ----------------------------
-- Table structure for t_user_grow_log
-- ----------------------------
DROP TABLE IF EXISTS `t_user_grow_log`;
CREATE TABLE `t_user_grow_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '登录用户',
  `from_reason` varchar(20) NOT NULL COMMENT '来源',
  `score` int(11) NOT NULL COMMENT '成长值',
  `remark` varchar(50) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成长值记录';

-- ----------------------------
-- Records of t_user_grow_log
-- ----------------------------

-- ----------------------------
-- Table structure for t_user_real_info
-- ----------------------------
DROP TABLE IF EXISTS `t_user_real_info`;
CREATE TABLE `t_user_real_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` bigint(20) DEFAULT NULL,
  `update_time` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL COMMENT '登录用户',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `id_card_no` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `id_card_front` varchar(100) DEFAULT NULL COMMENT '身份证正面',
  `id_card_back` varchar(100) DEFAULT NULL COMMENT '身份证反面',
  `id_card_hand` varchar(100) DEFAULT NULL COMMENT '手持身份证',
  `state` tinyint(4) DEFAULT NULL COMMENT '审核状态',
  `apply_time` bigint(20) DEFAULT NULL COMMENT '提交时间',
  `audit_time` bigint(20) DEFAULT NULL COMMENT '审核时间',
  `audit_user` varchar(30) DEFAULT NULL COMMENT '审核人',
  `remark` varchar(50) DEFAULT NULL COMMENT '审核备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员实名资料';

-- ----------------------------
-- Records of t_user_real_info
-- ----------------------------
