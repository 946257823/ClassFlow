/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-system

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-10-25 11:14:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_config
-- ----------------------------
DROP TABLE IF EXISTS `t_config`;
CREATE TABLE `t_config` (
  `id` bigint(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of t_config
-- ----------------------------
INSERT INTO `t_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `t_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '初始化密码 123456');
INSERT INTO `t_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `t_config` VALUES ('4', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `t_config` VALUES ('5', '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `t_config` VALUES ('6', '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '0', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `t_config` VALUES ('7', '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `t_config` VALUES ('8', '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `t_config` VALUES ('9', '主框架页-是否开启页脚', 'sys.index.ignoreFooter', 'true', 'Y', 'admin', '2020-12-30 10:02:28', '', null, '是否开启底部页脚显示（true显示，false隐藏）');

-- ----------------------------
-- Table structure for t_department
-- ----------------------------
DROP TABLE IF EXISTS `t_department`;
CREATE TABLE `t_department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) NOT NULL COMMENT '部门编号',
  `name` varchar(255) NOT NULL COMMENT '部门名称',
  `dir_path` varchar(255) DEFAULT NULL COMMENT '部门的上级分类层级id',
  `state` int(20) DEFAULT NULL COMMENT '部门状态，0正常，1禁用',
  `manager_id` bigint(20) DEFAULT NULL COMMENT '部门管理员，关联Employee表id',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门',
  `tenant_id` bigint(20) DEFAULT NULL COMMENT '部门所属机构(租户)',
  PRIMARY KEY (`id`),
  KEY `tenant_id` (`tenant_id`),
  KEY `tenant_id_2` (`tenant_id`),
  KEY `tenant_id_3` (`tenant_id`),
  KEY `manager_id` (`manager_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_department
-- ----------------------------
INSERT INTO `t_department` VALUES ('1', 'dept1', '部门1', '/1', '0', '42', null, '26');
INSERT INTO `t_department` VALUES ('2', 'dept2', '部门2', '/1', '0', '42', null, '26');
INSERT INTO `t_department` VALUES ('5', 'dept5', '部门5', '/1', '0', '42', '2', '26');
INSERT INTO `t_department` VALUES ('7', 'dept7', '部门7', '/1', '0', '42', '2', '26');
INSERT INTO `t_department` VALUES ('8', 'dept8', '部门8', '/1', '-1', '42', '5', '26');
INSERT INTO `t_department` VALUES ('10', 'dept10', '部门10', '/1', '-1', '42', '5', '26');
INSERT INTO `t_department` VALUES ('11', 'dept11', '部门11', '/1', '0', '42', '2', '26');
INSERT INTO `t_department` VALUES ('12', 'dept12', '部门12', '/1', '-1', '42', '1', '26');
INSERT INTO `t_department` VALUES ('13', 'dept13', '部门13', '/1', '0', '42', '2', '26');
INSERT INTO `t_department` VALUES ('14', 'dept14', '部门14', '/1', '-1', '42', '1', '26');
INSERT INTO `t_department` VALUES ('15', 'dept15', '部门15', '/1/12', '0', '42', '12', '26');
INSERT INTO `t_department` VALUES ('16', 'dept16', '部门16', '/1/12', '-1', '42', '12', '26');
INSERT INTO `t_department` VALUES ('17', 'dept17', '部门17', '/1/12/16', '0', '42', '16', '26');
INSERT INTO `t_department` VALUES ('18', 'dept18', '部门18', '/1', '-1', '42', '1', '26');
INSERT INTO `t_department` VALUES ('21', 'dept21', '部门21', '/2/22221', '0', '42', '2', '26');
INSERT INTO `t_department` VALUES ('22', 'dept22', '部门22', '/1', '-1', '42', '1', '26');
INSERT INTO `t_department` VALUES ('23', 'dept23', '部门23', '/1', '0', '42', '2', '26');
INSERT INTO `t_department` VALUES ('24', 'dept24', '部门24', '/1/12/16/17', '-1', '42', '17', '26');

-- ----------------------------
-- Table structure for t_employee
-- ----------------------------
DROP TABLE IF EXISTS `t_employee`;
CREATE TABLE `t_employee` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `real_name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `tel` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `input_time` date DEFAULT NULL COMMENT '创建时间',
  `state` int(11) DEFAULT NULL COMMENT '状态：0正常，1锁定，2注销',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门id',
  `type` tinyint(1) DEFAULT NULL COMMENT '员工类型 ， 1平台普通员工 ，2平台客服人员，3平台管理员，4机构员工，5,机构管理员或其他',
  `login_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_id` (`dept_id`),
  KEY `state` (`state`),
  KEY `state_2` (`state`),
  KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_employee
-- ----------------------------
INSERT INTO `t_employee` VALUES ('42', '张三', '13330964748', 'yhpjsjjy2@163.com', '2019-09-02', '0', null, '1', '1');
INSERT INTO `t_employee` VALUES ('43', null, '13330964749', 'yhp@itsource.cn', '2019-09-02', '0', null, '1', '2');
INSERT INTO `t_employee` VALUES ('44', null, '13330964758', 'yhp@itsource.cn', '2019-09-03', '0', null, '1', null);
INSERT INTO `t_employee` VALUES ('45', null, '110', 'itsource@qq.com', null, null, null, '3', null);
INSERT INTO `t_employee` VALUES ('46', null, '110', 'itsource@qq.com', null, null, null, null, null);
INSERT INTO `t_employee` VALUES ('47', null, '1101', 'itsou1rce@qq.com', '2019-09-26', null, null, '3', null);
INSERT INTO `t_employee` VALUES ('48', null, '110111', 'itsourc1111e@qq.com', '2019-09-26', null, null, '3', null);
INSERT INTO `t_employee` VALUES ('49', null, '110111', 'its11111ource@qq.com', '2019-09-27', null, null, '3', null);
INSERT INTO `t_employee` VALUES ('50', null, '110', 'itsource@qq.com', '2020-09-10', '0', null, '6', null);
INSERT INTO `t_employee` VALUES ('51', null, '1101', 'itsource@qq.com', '2020-09-10', '0', null, '6', null);
INSERT INTO `t_employee` VALUES ('52', null, '110', 'itsource@qq.com', '2020-09-10', '0', null, '6', null);
INSERT INTO `t_employee` VALUES ('53', null, '1103', 'itsource@qq.com', '2020-09-10', '0', null, '6', null);
INSERT INTO `t_employee` VALUES ('54', null, '18044229575', 'itsourc1111e@qq.com', '2020-10-10', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('55', null, '18244444444', 'itsource@qq.com', '2020-10-10', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('56', null, '18244444444', 'itsource@qq.com', '2020-10-10', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('57', null, '18244444444', 'itsource@qq.com', '2020-10-12', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('58', null, '18244229575', '18244229575@qq.com', '2020-12-16', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('59', null, '18244229574', 'itsource@qq.com', '2020-12-16', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('60', null, '18244444445', 'itsource@qq.com', '2020-12-16', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('61', null, '18244554455', 'itsource1@qq.com', '2020-12-19', '0', null, '5', null);
INSERT INTO `t_employee` VALUES ('62', 'itsource.cn', '69696969', 'itsource@qq.com', '2021-03-05', '0', null, '5', '6');
INSERT INTO `t_employee` VALUES ('63', '小碗', null, null, '2021-03-05', '0', null, '5', '7');
INSERT INTO `t_employee` VALUES ('64', 'terry', '110', 'terry@qq.com', '2021-03-05', '0', null, '5', '8');

-- ----------------------------
-- Table structure for t_operation_log
-- ----------------------------
DROP TABLE IF EXISTS `t_operation_log`;
CREATE TABLE `t_operation_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of t_operation_log
-- ----------------------------
INSERT INTO `t_operation_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_menu\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 15:26:11');
INSERT INTO `t_operation_log` VALUES ('101', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"1\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 15:27:16');
INSERT INTO `t_operation_log` VALUES ('102', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_dict_type,sys_dict_data\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 15:48:08');
INSERT INTO `t_operation_log` VALUES ('103', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_dict_data,sys_dict_type\"]}', 'null', '0', null, '2020-12-31 15:48:16');
INSERT INTO `t_operation_log` VALUES ('104', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_menu\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 15:50:01');
INSERT INTO `t_operation_log` VALUES ('105', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_menu\"]}', 'null', '0', null, '2020-12-31 15:50:06');
INSERT INTO `t_operation_log` VALUES ('106', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_menu\"]}', 'null', '0', null, '2020-12-31 15:51:22');
INSERT INTO `t_operation_log` VALUES ('107', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'POST', '1', 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"4,2,3\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 16:03:13');
INSERT INTO `t_operation_log` VALUES ('108', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_user,sys_dept\"]}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 16:03:25');
INSERT INTO `t_operation_log` VALUES ('109', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_dept,sys_user\"]}', 'null', '0', null, '2020-12-31 16:03:30');
INSERT INTO `t_operation_log` VALUES ('110', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'POST', '1', 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"5\"],\"tableName\":[\"sys_dept\"],\"tableComment\":[\"部门表\"],\"className\":[\"SysDept\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"56\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"部门id\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"deptId\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"57\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"父部门id\"],\"columns[1].javaType\":[\"Long\"],\"columns[1].javaField\":[\"parentId\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"58\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"祖级列表\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"ancestors\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"59\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"部门名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"deptName\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"LIKE\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"columns[4].columnId\":[\"60\"],\"columns[4].sort\":[\"5\"],\"columns[4].columnComment\":[\"显示顺序\"],\"columns[4].javaType\":[\"Integer\"],\"columns[4].javaField\":[\"orderNum\"],\"columns[4].isInsert\":[\"1\"],\"columns[4].isEdit\":[\"1\"],\"columns[4].isList\":[\"1\"],\"columns[4].isQuery\":[\"1\"],\"columns[4].queryType\":[\"EQ\"],\"columns[4].htmlType\":[\"input\"],\"columns[4].dictType\":[\"\"],\"columns[5].columnId\":[\"61\"],\"columns[5].sort\":[\"6\"],\"columns[5].columnComment\":[\"负责人\"],\"columns[5].javaType\":[\"String\"],\"columns[5].javaField\":[\"leader\"],\"columns[5].isInsert\":[\"1', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', '0', null, '2020-12-31 16:13:31');
INSERT INTO `t_operation_log` VALUES ('111', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', '研发部门', '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":[\"sys_dept\"]}', 'null', '0', null, '2020-12-31 16:13:36');

-- ----------------------------
-- Table structure for t_systemdictionary
-- ----------------------------
DROP TABLE IF EXISTS `t_systemdictionary`;
CREATE TABLE `t_systemdictionary` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `intro` varchar(255) DEFAULT NULL COMMENT '介绍描述',
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemdictionary
-- ----------------------------
INSERT INTO `t_systemdictionary` VALUES ('1', 'xl', '学历', '学历', '0');
INSERT INTO `t_systemdictionary` VALUES ('2', 'sr', '收入', '收入', '0');
INSERT INTO `t_systemdictionary` VALUES ('10', 'hy', '婚姻情况', '婚姻情况', '0');
INSERT INTO `t_systemdictionary` VALUES ('11', 'dj', '课程等级', '课程等级', '0');

-- ----------------------------
-- Table structure for t_systemdictionaryitem
-- ----------------------------
DROP TABLE IF EXISTS `t_systemdictionaryitem`;
CREATE TABLE `t_systemdictionaryitem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `requence` int(11) DEFAULT NULL COMMENT '排序',
  `intro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  CONSTRAINT `t_systemdictionaryitem_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `t_systemdictionary` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_systemdictionaryitem
-- ----------------------------
INSERT INTO `t_systemdictionaryitem` VALUES ('1', '11', '黑铁', '0', '课程等级');
INSERT INTO `t_systemdictionaryitem` VALUES ('2', '11', '青铜', '0', '课程等级');
INSERT INTO `t_systemdictionaryitem` VALUES ('3', '11', '白银', '0', '课程等级');
INSERT INTO `t_systemdictionaryitem` VALUES ('4', '11', '黄金', '0', '课程等级');
INSERT INTO `t_systemdictionaryitem` VALUES ('6', '2', '0-4000', '0', '工资范围');
INSERT INTO `t_systemdictionaryitem` VALUES ('7', '2', '4001-8000', '0', '工资范围');
INSERT INTO `t_systemdictionaryitem` VALUES ('8', '10', '已婚', '0', '婚姻情况');
INSERT INTO `t_systemdictionaryitem` VALUES ('9', '10', '未婚', '0', '婚姻情况');
