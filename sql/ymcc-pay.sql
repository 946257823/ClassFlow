/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : 127.0.0.1:3306
Source Database       : ymcc-pay

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2021-10-25 11:14:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_alipay_info
-- ----------------------------
DROP TABLE IF EXISTS `t_alipay_info`;
CREATE TABLE `t_alipay_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_private_key` longtext COMMENT '商户私钥',
  `app_id` varchar(255) DEFAULT NULL,
  `alipay_public_key` longtext COMMENT '阿里公钥',
  `crate_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `gateway_host` varchar(255) DEFAULT NULL,
  `sign_type` varchar(255) DEFAULT NULL,
  `notify_url` varchar(255) DEFAULT NULL,
  `return_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_alipay_info
-- ----------------------------
INSERT INTO `t_alipay_info` VALUES ('2', 'MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCy3GEEwz3lGnc9nX/Pv107AYQeUaktrtO6auWigIgQ/uoF+buR2sRS0tzqt7k+tcE02RO2OU++yzMncJFkFPAf7fvAzm2+QuAGEMaR4w1GxjHYmgWnzJpR1PAgaI/sFKJrWIatgNbQIzQJCihjPixOnNVXgmyVGa5rzfYLiDhfeMVCHUYkd49UOQ+GhaHYUz543gqdLI5gkRHlFE6MCjlBFyhNV5DwhcMkLiMi+TqJva1RxQMaFLREQoZxAemS9fs2By8KOaiZ3pzlrmF27iat2fMq1mc73v2GG1SZSJ8l2g3QBffI8pkPWtwpWLT/taun4S0IGDi8EdpI02Q7V6kpAgMBAAECggEAQV0EH4dyQR1w4hWCtdsLKRseuy3Ak69GNOQH02EBWKSvxUtEXsMB5/qjPSuzCNXHK5cA+yDqoaEEqq8akuaL8j84N3e450TtNYo/5uSA35JiePOgiXfeFXWp404S+oV37Z7GaPWiiyGyTHNn2wzHiFsMJBTHtZ1S/pagCgrX/xs3fH/QUgbJP/L+IJkGOlSh8UsaY77nYYKJWbmsdtc51yZ+Fsp86if27JllxagV6bGPWdGBK+dSjuysXUlva9dXSX1bZ24nxISueTQa7Ty4R5dB9Y8CgFbhtL6mSjlwNx6j88NeBjw6q8DpYaFeDL/0JwXmDjaEBAToZSIFxu6AuQKBgQD3f9QeWznAthakvzw6tdBgzSX+uoTYwqPPFd3JJs5e+VH9GN7kQZ6kH6Foyub/n1gmBUC8noIi9kMYCJSsy0HHFboXeV9SSJOXm+8+m6nmgSUuPH7bj4gNh0fzY9VokWjcBs6Z5f5AlgXtTRJ9WgmkVyX/1T2LBlmrEEP5RfFPYwKBgQC5AQmMKCsx2I686qegsODs9O1NVdi8/ONgDTKmT9Z+LjLd44zLVQrPh2D8HMq5y66mqrhG8B6Q+zsawblmMl8Qm9DKo8xi0P/o21Lgkh2E5rLUJLIPEYyNfXxcWL9xJjVujxjc4BZOK4VSBs7pMGoRdZuBIIGCTpqoPZnXKcXJAwKBgQCaq2voPKJu6FxmQIxnNFAw7oOcGPwEaj7sn4Gmv3WgrLasMOq6QrfdYVcBoiuR/AaeXBIEzhoNt1BeqJ4hDjThMZbGLLeBOJHj4TM2MRmQT4zoxC2TELO5oJ06YV1wp86cEjTywGSQADFcBxpS8/2qkjvREXYQd7t5yARyt18CeQKBgCyeYW0aKwDEl/hcJ72Lq1O65pimQbWi0DvUMwkFbFfWUJJPVR+dDRRsNCnZz9Lrmt27guIo+1ZAIUscudg6Ac+BpOOaiaqzeWTxsJVU6CWrdinQB9m2g82EHEAxb0qcyno1rOtoaDjGKktUNQbslEhNswl7i4Cf8JDu+nF4M6l9AoGBALM9ux3t7AsJxBY07dsNNDltrjns2ngnfxmymwdMFkxxLM+/C+nvBIMuiyi2NTCduFggN2s8AKTqtosiYr9r9YCmn/5XbcJEOGmMSOys3vQCBN1qpQIc4OebJPtX57j+8T/ulShHeaT5L0IO5qFkfiX4fLfCC/n0+efsP0Sghs6D', '2016092800613550', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2ZcowlytU5RZeyLOeR/ScWokb8gCM9HkURMhfR5icUsg69btpK+uxfnrcAejN04cDUMRXGvwTjuLgcnU0LADbMn4Qi08o3mpx3cjMXpYlnxSZb2Bueyil6VsbVQL/fOErjH6wUJ6Mi0H/4zFY/fjAECux4s4VnEGrs75O9WTvdUqHvHYMPBvmtDYBF+ra98/d2DCJ+bjds9Va1QtPbHhNudt9TyUdCjYvfaQA+lgbWPwe22mdrcgIZIC9VGq2QkoQUvBasHZNBwGNI2puActPVuWm9bi9QDJJ/Y9wTORk+KqZwDbGFeZ4XYl0HHQkup/O8MplpO5QTXMldRc/RFs5QIDAQAB', '2021-09-28 12:53:14', '2021-09-28 12:53:16', 'https', 'openapi.alipaydev.com', 'RSA2', 'http://58dabm.natappfree.cc/ymcc/pay/pay/alipay/notify', 'http://loalhost:6002/pay.success.html');

-- ----------------------------
-- Table structure for t_pay_flow
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_flow`;
CREATE TABLE `t_pay_flow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notify_time` datetime NOT NULL COMMENT '交易时间',
  `subject` varchar(255) DEFAULT NULL COMMENT '标题',
  `out_trade_no` varchar(255) DEFAULT NULL COMMENT '交易号，对应订单号',
  `total_amount` decimal(10,0) DEFAULT NULL COMMENT '金额',
  `trade_status` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '错误码',
  `msg` varchar(255) DEFAULT NULL COMMENT '错误信息',
  `passback_params` varchar(255) DEFAULT NULL,
  `pay_success` bit(1) DEFAULT NULL,
  `result_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pay_flow
-- ----------------------------
INSERT INTO `t_pay_flow` VALUES ('1', '2021-10-20 14:54:07', '购买课程 [java大神班;] , 支付[222.00] 元', '20211020025206458168', '222', 'TRADE_SUCCESS', null, null, 'userId%3D3%26relationId%3D3', '', null);
INSERT INTO `t_pay_flow` VALUES ('2', '2021-10-20 15:59:58', '购买课程 [java大神班;] , 支付[222.00] 元', '20211020035932280559', '222', 'TRADE_SUCCESS', null, null, 'userId%3D3%26relationId%3D3', '', null);
INSERT INTO `t_pay_flow` VALUES ('3', '2021-10-20 16:07:46', '购买课程 [java大神班;] , 支付[100.00] 元', '20211020040725652305', '100', 'TRADE_SUCCESS', null, null, 'userId%3D3%26relationId%3D3', '', null);
INSERT INTO `t_pay_flow` VALUES ('4', '2021-10-20 16:10:32', '购买课程 [SpringCloud入门到超神;] , 支付[200.00] 元', '20211020041016680257', '200', 'TRADE_SUCCESS', null, null, 'userId%3D3%26relationId%3D9', '', null);
INSERT INTO `t_pay_flow` VALUES ('5', '2021-10-24 06:07:36', '购买课程 [java大神班;] , 支付[222.00] 元', '20211024020711746024', '222', 'TRADE_SUCCESS', null, null, 'userId%3D3%26relationId%3D3', '', null);
INSERT INTO `t_pay_flow` VALUES ('6', '2021-10-24 06:16:00', '购买课程 [java大神班;] , 支付[100.00] 元', '20211024021520466764', '100', 'TRADE_SUCCESS', null, null, 'userId%3D3%26relationId%3D3', '', null);

-- ----------------------------
-- Table structure for t_pay_order
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_order`;
CREATE TABLE `t_pay_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL COMMENT '流水创建',
  `update_time` datetime DEFAULT NULL,
  `amount` decimal(10,0) NOT NULL COMMENT '发生金额',
  `pay_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '支付方式:0余额直接，1支付宝，2微信,3银联',
  `relation_id` bigint(20) DEFAULT '0' COMMENT '业务ID，可以关联订单ID,或者课程ID',
  `order_no` varchar(255) NOT NULL COMMENT '订单号',
  `user_id` bigint(20) NOT NULL,
  `ext_params` varchar(255) DEFAULT NULL COMMENT '扩展参数，格式： xx=1&oo=2',
  `subject` varchar(255) NOT NULL COMMENT '描述',
  `pay_status` tinyint(4) NOT NULL COMMENT '支付状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_no` (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pay_order
-- ----------------------------
INSERT INTO `t_pay_order` VALUES ('1', '2021-10-20 14:52:09', null, '222', '1', '0', '20211020025206458168', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[222.00] 元', '1');
INSERT INTO `t_pay_order` VALUES ('2', '2021-10-20 15:59:32', null, '222', '1', '0', '20211020035932280559', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[222.00] 元', '1');
INSERT INTO `t_pay_order` VALUES ('3', '2021-10-20 16:07:25', null, '100', '1', '0', '20211020040725652305', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[100.00] 元', '1');
INSERT INTO `t_pay_order` VALUES ('4', '2021-10-20 16:10:16', null, '200', '1', '0', '20211020041016680257', '3', 'userId=3&relationId=9', '购买课程 [SpringCloud入门到超神;] , 支付[200.00] 元', '1');
INSERT INTO `t_pay_order` VALUES ('5', '2021-10-24 06:03:47', null, '100', '1', '0', '20211021094949051613', '3', 'userId=3&relationId=9', '购买课程 [SpringCloud入门到超神;] , 支付[100.00] 元', '0');
INSERT INTO `t_pay_order` VALUES ('6', '2021-10-24 06:03:59', null, '222', '1', '0', '20211024020359452072', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[222.00] 元', '3');
INSERT INTO `t_pay_order` VALUES ('7', '2021-10-24 06:05:02', null, '222', '1', '0', '20211024020502421299', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[222.00] 元', '3');
INSERT INTO `t_pay_order` VALUES ('8', '2021-10-24 06:07:11', null, '222', '1', '0', '20211024020711746024', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[222.00] 元', '1');
INSERT INTO `t_pay_order` VALUES ('9', '2021-10-24 06:11:25', null, '222', '1', '0', '20211024021125448701', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[222.00] 元', '3');
INSERT INTO `t_pay_order` VALUES ('10', '2021-10-24 06:15:20', null, '100', '1', '0', '20211024021520466764', '3', 'userId=3&relationId=3', '购买课程 [java大神班;] , 支付[100.00] 元', '1');
