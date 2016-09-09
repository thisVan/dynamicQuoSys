/*
Navicat MySQL Data Transfer

Source Server         : Sara
Source Server Version : 50520
Source Host           : 127.0.0.1:3306
Source Database       : led_statistic

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-08-22 16:48:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bumen
-- ----------------------------
DROP TABLE IF EXISTS `bumen`;
CREATE TABLE `bumen` (
  `bm_id` int(11) NOT NULL,
  `bm_mingcheng` varchar(30) NOT NULL,
  `bm_zhuguan` varchar(8) NOT NULL,
  `bm_fenguanlingdao` varchar(8) DEFAULT NULL,
  `bm_bangongshi` varchar(140) DEFAULT NULL,
  `bm_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bumen
-- ----------------------------
INSERT INTO `bumen` VALUES ('1', '广州直客部', '黄颖', '聂辰晨', '广州大道中289号生产综合楼3楼市场部办公室', '2016-06-26 15:23:21');
INSERT INTO `bumen` VALUES ('2', '代理部', '李若维', '聂辰晨', '', '2016-06-26 15:23:21');
INSERT INTO `bumen` VALUES ('3', '区域资源经营管理部', '陈振斌', '聂辰晨', '', '2016-06-26 15:23:21');
INSERT INTO `bumen` VALUES ('4', '深圳分部', '杨 红', '聂晨晨', '', '2016-06-26 15:23:21');
INSERT INTO `bumen` VALUES ('5', '公司领导', '郑君', '郑君', '广州大道中289号生产综合楼3楼市场部办公室', '2016-06-26 15:23:21');

-- ----------------------------
-- Table structure for dingdanshoukuaninfo
-- ----------------------------
DROP TABLE IF EXISTS `dingdanshoukuaninfo`;
CREATE TABLE `dingdanshoukuaninfo` (
  `skinfo_id` int(11) NOT NULL AUTO_INCREMENT,
  `skinfo_renkanbianhao` varchar(50) NOT NULL,
  `skinfo_yfzongjine` decimal(12,2) NOT NULL,
  `skinfo_yidaokuan` decimal(12,2) NOT NULL DEFAULT '0.00',
  `skinfo_weifukuan` decimal(12,2) NOT NULL DEFAULT '0.00',
  `skinfo_isfuqing` tinyint(4) NOT NULL DEFAULT '0',
  `skinfo_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`skinfo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of dingdanshoukuaninfo
-- ----------------------------
INSERT INTO `dingdanshoukuaninfo` VALUES ('1', '455454', '4545454.00', '0.00', '0.00', '0', '2016-07-18 10:53:25');
INSERT INTO `dingdanshoukuaninfo` VALUES ('2', '123456', '800000.00', '0.00', '0.00', '0', '2016-07-18 14:42:13');
INSERT INTO `dingdanshoukuaninfo` VALUES ('3', '111111', '100000000.00', '0.00', '0.00', '0', '2016-07-18 14:52:03');
INSERT INTO `dingdanshoukuaninfo` VALUES ('4', '20160624002', '100000.00', '50000.00', '50000.00', '0', '2016-07-25 14:57:00');
INSERT INTO `dingdanshoukuaninfo` VALUES ('5', '324234343', '10000.00', '0.00', '0.00', '0', '2016-07-28 21:07:06');
INSERT INTO `dingdanshoukuaninfo` VALUES ('6', '354676865', '8000.00', '0.00', '0.00', '0', '2016-07-28 22:11:10');
INSERT INTO `dingdanshoukuaninfo` VALUES ('7', '9876543', '20000.00', '0.00', '0.00', '0', '2016-07-28 23:14:52');
INSERT INTO `dingdanshoukuaninfo` VALUES ('8', '54556576', '566.00', '0.00', '0.00', '0', '2016-07-28 23:17:11');
INSERT INTO `dingdanshoukuaninfo` VALUES ('9', '121332', '100000.00', '0.00', '0.00', '0', '2016-07-29 10:30:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('10', '1111111', '30000.00', '0.00', '0.00', '0', '2016-07-29 10:40:51');
INSERT INTO `dingdanshoukuaninfo` VALUES ('11', '1111111', '30000.00', '0.00', '0.00', '0', '2016-07-29 11:28:11');
INSERT INTO `dingdanshoukuaninfo` VALUES ('12', '2222222', '80000.00', '0.00', '0.00', '0', '2016-07-29 14:25:12');
INSERT INTO `dingdanshoukuaninfo` VALUES ('13', '333333', '20000.00', '0.00', '0.00', '0', '2016-07-30 11:08:32');
INSERT INTO `dingdanshoukuaninfo` VALUES ('14', '3333333', '10000.00', '0.00', '0.00', '0', '2016-07-30 20:24:35');
INSERT INTO `dingdanshoukuaninfo` VALUES ('15', '333', '20000.00', '0.00', '0.00', '0', '2016-08-01 11:15:46');
INSERT INTO `dingdanshoukuaninfo` VALUES ('19', '5555555', '10000.00', '0.00', '0.00', '0', '2016-08-04 15:05:32');
INSERT INTO `dingdanshoukuaninfo` VALUES ('20', 'weewe', '4566.00', '0.00', '0.00', '0', '2016-08-04 15:36:44');
INSERT INTO `dingdanshoukuaninfo` VALUES ('21', '55555555', '10000.00', '0.00', '0.00', '0', '2016-08-04 16:05:45');
INSERT INTO `dingdanshoukuaninfo` VALUES ('22', '1111111111', '10000.00', '0.00', '0.00', '0', '2016-08-04 16:11:46');
INSERT INTO `dingdanshoukuaninfo` VALUES ('23', '77777777777777777777', '10000.00', '0.00', '0.00', '0', '2016-08-04 16:12:54');
INSERT INTO `dingdanshoukuaninfo` VALUES ('24', '01', '4500.00', '0.00', '0.00', '0', '2016-08-04 17:26:14');
INSERT INTO `dingdanshoukuaninfo` VALUES ('25', '02', '152064.00', '0.00', '0.00', '0', '2016-08-04 17:31:46');
INSERT INTO `dingdanshoukuaninfo` VALUES ('26', '03', '0.00', '0.00', '0.00', '0', '2016-08-04 17:41:22');
INSERT INTO `dingdanshoukuaninfo` VALUES ('27', '04', '0.00', '0.00', '0.00', '0', '2016-08-04 17:43:33');
INSERT INTO `dingdanshoukuaninfo` VALUES ('28', '05', '4500.00', '0.00', '0.00', '0', '2016-08-04 17:45:32');
INSERT INTO `dingdanshoukuaninfo` VALUES ('29', '06', '0.00', '0.00', '0.00', '0', '2016-08-04 17:59:56');
INSERT INTO `dingdanshoukuaninfo` VALUES ('30', '07', '33120.00', '0.00', '0.00', '0', '2016-08-04 18:02:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('31', '08', '0.00', '0.00', '0.00', '0', '2016-08-04 18:06:56');
INSERT INTO `dingdanshoukuaninfo` VALUES ('32', '09', '16000.00', '0.00', '0.00', '0', '2016-08-04 18:10:55');
INSERT INTO `dingdanshoukuaninfo` VALUES ('33', '010', '24840.00', '0.00', '0.00', '0', '2016-08-04 18:14:20');
INSERT INTO `dingdanshoukuaninfo` VALUES ('34', '011', '0.00', '0.00', '0.00', '0', '2016-08-04 18:23:00');
INSERT INTO `dingdanshoukuaninfo` VALUES ('35', '1111', '10000.00', '0.00', '0.00', '0', '2016-08-05 10:26:31');
INSERT INTO `dingdanshoukuaninfo` VALUES ('36', '012', '0.00', '0.00', '0.00', '0', '2016-08-05 10:33:36');
INSERT INTO `dingdanshoukuaninfo` VALUES ('37', '13', '112800.00', '0.00', '0.00', '0', '2016-08-05 10:53:48');
INSERT INTO `dingdanshoukuaninfo` VALUES ('38', '14', '0.00', '0.00', '0.00', '0', '2016-08-05 10:56:08');
INSERT INTO `dingdanshoukuaninfo` VALUES ('39', '15', '2500.00', '0.00', '0.00', '0', '2016-08-05 10:59:10');
INSERT INTO `dingdanshoukuaninfo` VALUES ('40', '16', '0.00', '0.00', '0.00', '0', '2016-08-05 11:03:35');
INSERT INTO `dingdanshoukuaninfo` VALUES ('41', '17', '0.00', '0.00', '0.00', '0', '2016-08-05 11:06:26');
INSERT INTO `dingdanshoukuaninfo` VALUES ('42', '18', '20932.00', '0.00', '0.00', '0', '2016-08-05 11:08:54');
INSERT INTO `dingdanshoukuaninfo` VALUES ('43', '19', '4185.00', '0.00', '0.00', '0', '2016-08-05 11:10:39');
INSERT INTO `dingdanshoukuaninfo` VALUES ('44', '20', '0.00', '0.00', '0.00', '0', '2016-08-05 11:13:06');
INSERT INTO `dingdanshoukuaninfo` VALUES ('45', '21', '4000.00', '0.00', '0.00', '0', '2016-08-05 11:15:28');
INSERT INTO `dingdanshoukuaninfo` VALUES ('46', '22', '0.00', '0.00', '0.00', '0', '2016-08-05 11:20:31');
INSERT INTO `dingdanshoukuaninfo` VALUES ('47', '23', '31320.00', '0.00', '0.00', '0', '2016-08-05 11:23:34');
INSERT INTO `dingdanshoukuaninfo` VALUES ('48', '24', '25000.00', '0.00', '0.00', '0', '2016-08-05 11:33:11');
INSERT INTO `dingdanshoukuaninfo` VALUES ('49', '25', '0.00', '0.00', '0.00', '0', '2016-08-05 12:07:07');
INSERT INTO `dingdanshoukuaninfo` VALUES ('50', '27', '0.00', '0.00', '0.00', '0', '2016-08-05 12:08:43');
INSERT INTO `dingdanshoukuaninfo` VALUES ('51', '28', '0.00', '0.00', '0.00', '0', '2016-08-05 12:12:55');
INSERT INTO `dingdanshoukuaninfo` VALUES ('52', '29', '35000.00', '0.00', '0.00', '0', '2016-08-05 12:18:41');
INSERT INTO `dingdanshoukuaninfo` VALUES ('53', '30', '0.00', '0.00', '0.00', '0', '2016-08-05 12:22:38');
INSERT INTO `dingdanshoukuaninfo` VALUES ('54', '31', '0.00', '0.00', '0.00', '0', '2016-08-05 14:22:26');
INSERT INTO `dingdanshoukuaninfo` VALUES ('55', '32', '0.00', '0.00', '0.00', '0', '2016-08-05 14:28:05');
INSERT INTO `dingdanshoukuaninfo` VALUES ('56', '33', '0.00', '0.00', '0.00', '0', '2016-08-05 14:29:52');
INSERT INTO `dingdanshoukuaninfo` VALUES ('57', '34', '0.00', '0.00', '0.00', '0', '2016-08-05 14:32:00');
INSERT INTO `dingdanshoukuaninfo` VALUES ('58', '35', '0.00', '0.00', '0.00', '0', '2016-08-05 14:34:21');
INSERT INTO `dingdanshoukuaninfo` VALUES ('59', '37', '0.00', '0.00', '0.00', '0', '2016-08-05 14:35:55');
INSERT INTO `dingdanshoukuaninfo` VALUES ('60', '38', '69351.00', '0.00', '0.00', '0', '2016-08-05 14:41:39');
INSERT INTO `dingdanshoukuaninfo` VALUES ('61', '39', '80000.00', '0.00', '0.00', '0', '2016-08-05 14:44:04');
INSERT INTO `dingdanshoukuaninfo` VALUES ('62', '40', '0.00', '0.00', '0.00', '0', '2016-08-05 14:46:25');
INSERT INTO `dingdanshoukuaninfo` VALUES ('63', '41', '0.00', '0.00', '0.00', '0', '2016-08-05 14:50:33');
INSERT INTO `dingdanshoukuaninfo` VALUES ('64', '42', '8605.71', '0.00', '0.00', '0', '2016-08-05 14:57:22');
INSERT INTO `dingdanshoukuaninfo` VALUES ('65', '43', '447300.00', '0.00', '0.00', '0', '2016-08-05 14:59:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('66', '44', '10159.11', '0.00', '0.00', '0', '2016-08-05 15:02:06');
INSERT INTO `dingdanshoukuaninfo` VALUES ('67', '45', '0.00', '0.00', '0.00', '0', '2016-08-05 15:03:51');
INSERT INTO `dingdanshoukuaninfo` VALUES ('68', '47', '15900.00', '0.00', '0.00', '0', '2016-08-05 15:06:47');
INSERT INTO `dingdanshoukuaninfo` VALUES ('69', '48', '0.00', '0.00', '0.00', '0', '2016-08-05 15:09:27');
INSERT INTO `dingdanshoukuaninfo` VALUES ('70', '50', '0.00', '0.00', '0.00', '0', '2016-08-05 15:11:53');
INSERT INTO `dingdanshoukuaninfo` VALUES ('71', '51', '0.00', '0.00', '0.00', '0', '2016-08-05 15:20:30');
INSERT INTO `dingdanshoukuaninfo` VALUES ('72', '52', '0.00', '0.00', '0.00', '0', '2016-08-05 15:23:13');
INSERT INTO `dingdanshoukuaninfo` VALUES ('73', '54', '180000.00', '0.00', '0.00', '0', '2016-08-05 15:27:00');
INSERT INTO `dingdanshoukuaninfo` VALUES ('74', '55', '0.00', '0.00', '0.00', '0', '2016-08-05 15:29:43');
INSERT INTO `dingdanshoukuaninfo` VALUES ('75', '56', '8316.00', '0.00', '0.00', '0', '2016-08-05 15:31:15');
INSERT INTO `dingdanshoukuaninfo` VALUES ('76', '57', '1400.00', '0.00', '0.00', '0', '2016-08-05 15:33:38');
INSERT INTO `dingdanshoukuaninfo` VALUES ('77', '59', '15600.00', '0.00', '0.00', '0', '2016-08-05 15:36:05');
INSERT INTO `dingdanshoukuaninfo` VALUES ('78', '60', '2800.00', '0.00', '0.00', '0', '2016-08-05 15:38:34');
INSERT INTO `dingdanshoukuaninfo` VALUES ('79', '61', '0.00', '0.00', '0.00', '0', '2016-08-05 15:41:27');
INSERT INTO `dingdanshoukuaninfo` VALUES ('80', '62', '0.00', '0.00', '0.00', '0', '2016-08-05 15:44:05');
INSERT INTO `dingdanshoukuaninfo` VALUES ('81', '64', '0.00', '0.00', '0.00', '0', '2016-08-05 15:45:53');
INSERT INTO `dingdanshoukuaninfo` VALUES ('82', '65', '8316.00', '0.00', '0.00', '0', '2016-08-05 15:47:36');
INSERT INTO `dingdanshoukuaninfo` VALUES ('83', '66', '4156.00', '0.00', '0.00', '0', '2016-08-05 15:49:28');
INSERT INTO `dingdanshoukuaninfo` VALUES ('84', '67', '0.00', '0.00', '0.00', '0', '2016-08-05 15:51:18');
INSERT INTO `dingdanshoukuaninfo` VALUES ('85', '68', '59280.00', '0.00', '0.00', '0', '2016-08-05 16:00:16');
INSERT INTO `dingdanshoukuaninfo` VALUES ('86', '69', '0.00', '0.00', '0.00', '0', '2016-08-05 16:02:46');
INSERT INTO `dingdanshoukuaninfo` VALUES ('87', '70', '200000.00', '0.00', '0.00', '0', '2016-08-05 16:05:53');
INSERT INTO `dingdanshoukuaninfo` VALUES ('88', '73', '151648.00', '0.00', '0.00', '0', '2016-08-05 16:09:48');
INSERT INTO `dingdanshoukuaninfo` VALUES ('89', '74', '15000.00', '0.00', '0.00', '0', '2016-08-05 16:12:05');
INSERT INTO `dingdanshoukuaninfo` VALUES ('90', '75', '0.00', '0.00', '0.00', '0', '2016-08-05 16:14:08');
INSERT INTO `dingdanshoukuaninfo` VALUES ('91', '1688101', '0.00', '0.00', '0.00', '0', '2016-08-08 14:42:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('92', '1688001', '0.00', '0.00', '0.00', '0', '2016-08-08 14:51:14');
INSERT INTO `dingdanshoukuaninfo` VALUES ('93', '1688102', '0.00', '0.00', '0.00', '0', '2016-08-08 14:53:40');
INSERT INTO `dingdanshoukuaninfo` VALUES ('94', '1688103', '0.00', '0.00', '0.00', '0', '2016-08-08 14:57:45');
INSERT INTO `dingdanshoukuaninfo` VALUES ('95', '1688104', '0.00', '0.00', '0.00', '0', '2016-08-08 15:00:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('96', '1688002', '0.00', '0.00', '0.00', '0', '2016-08-08 15:01:12');
INSERT INTO `dingdanshoukuaninfo` VALUES ('97', '1688003', '0.00', '0.00', '0.00', '0', '2016-08-08 15:05:34');
INSERT INTO `dingdanshoukuaninfo` VALUES ('98', '1688105', '0.00', '0.00', '0.00', '0', '2016-08-08 15:06:25');
INSERT INTO `dingdanshoukuaninfo` VALUES ('99', '1688004', '0.00', '0.00', '0.00', '0', '2016-08-08 15:09:34');
INSERT INTO `dingdanshoukuaninfo` VALUES ('100', '1688107', '0.00', '0.00', '0.00', '0', '2016-08-08 15:10:06');
INSERT INTO `dingdanshoukuaninfo` VALUES ('101', '1688108', '0.00', '0.00', '0.00', '0', '2016-08-08 15:15:08');
INSERT INTO `dingdanshoukuaninfo` VALUES ('102', '1688005', '0.00', '0.00', '0.00', '0', '2016-08-08 15:15:09');
INSERT INTO `dingdanshoukuaninfo` VALUES ('103', '1688109', '0.00', '0.00', '0.00', '0', '2016-08-08 15:18:05');
INSERT INTO `dingdanshoukuaninfo` VALUES ('104', '1688006', '0.00', '0.00', '0.00', '0', '2016-08-08 15:21:31');
INSERT INTO `dingdanshoukuaninfo` VALUES ('105', '1688110', '0.00', '0.00', '0.00', '0', '2016-08-08 15:25:36');
INSERT INTO `dingdanshoukuaninfo` VALUES ('106', '1688007', '0.00', '0.00', '0.00', '0', '2016-08-08 15:26:04');
INSERT INTO `dingdanshoukuaninfo` VALUES ('107', '1688111', '0.00', '0.00', '0.00', '0', '2016-08-08 15:28:53');
INSERT INTO `dingdanshoukuaninfo` VALUES ('108', '1688008', '0.00', '0.00', '0.00', '0', '2016-08-08 15:33:03');
INSERT INTO `dingdanshoukuaninfo` VALUES ('109', '1688112', '0.00', '0.00', '0.00', '0', '2016-08-08 15:35:00');
INSERT INTO `dingdanshoukuaninfo` VALUES ('110', '1688114', '0.00', '0.00', '0.00', '0', '2016-08-08 15:40:46');
INSERT INTO `dingdanshoukuaninfo` VALUES ('111', '1688009', '0.00', '0.00', '0.00', '0', '2016-08-08 15:41:49');
INSERT INTO `dingdanshoukuaninfo` VALUES ('112', '1688115', '0.00', '0.00', '0.00', '0', '2016-08-08 15:46:04');
INSERT INTO `dingdanshoukuaninfo` VALUES ('113', '1688010', '0.00', '0.00', '0.00', '0', '2016-08-08 15:46:14');
INSERT INTO `dingdanshoukuaninfo` VALUES ('114', '1688116', '0.00', '0.00', '0.00', '0', '2016-08-08 15:51:29');
INSERT INTO `dingdanshoukuaninfo` VALUES ('115', '1688011', '0.00', '0.00', '0.00', '0', '2016-08-08 15:51:54');
INSERT INTO `dingdanshoukuaninfo` VALUES ('116', '1688012', '0.00', '0.00', '0.00', '0', '2016-08-08 15:59:01');
INSERT INTO `dingdanshoukuaninfo` VALUES ('117', '1688118', '5000.00', '0.00', '0.00', '0', '2016-08-08 16:06:29');
INSERT INTO `dingdanshoukuaninfo` VALUES ('118', '1688119', '100000.00', '0.00', '0.00', '0', '2016-08-08 16:10:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('119', '1688013', '4500.00', '0.00', '0.00', '0', '2016-08-08 16:17:21');
INSERT INTO `dingdanshoukuaninfo` VALUES ('120', '1688120', '0.00', '0.00', '0.00', '0', '2016-08-08 16:23:14');
INSERT INTO `dingdanshoukuaninfo` VALUES ('121', '1688121', '0.00', '0.00', '0.00', '0', '2016-08-08 16:25:20');
INSERT INTO `dingdanshoukuaninfo` VALUES ('122', '1688122', '0.00', '0.00', '0.00', '0', '2016-08-08 16:27:23');
INSERT INTO `dingdanshoukuaninfo` VALUES ('123', '1688123', '0.00', '0.00', '0.00', '0', '2016-08-08 16:29:58');
INSERT INTO `dingdanshoukuaninfo` VALUES ('124', '1688124', '0.00', '0.00', '0.00', '0', '2016-08-08 16:33:20');
INSERT INTO `dingdanshoukuaninfo` VALUES ('125', '1688126', '0.00', '0.00', '0.00', '0', '2016-08-08 16:36:59');
INSERT INTO `dingdanshoukuaninfo` VALUES ('126', '1688127', '0.00', '0.00', '0.00', '0', '2016-08-08 16:41:33');

-- ----------------------------
-- Table structure for fukuan
-- ----------------------------
DROP TABLE IF EXISTS `fukuan`;
CREATE TABLE `fukuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `renkanbianhao` varchar(50) NOT NULL,
  `ywy_id` int(11) NOT NULL,
  `mingcheng` varchar(140) NOT NULL,
  `jine` decimal(12,2) NOT NULL,
  `fukuanshijian` date NOT NULL,
  `fukuanfangshi` varchar(10) NOT NULL DEFAULT '现金',
  `fukuanbeizhu` varchar(500) DEFAULT NULL,
  `fukuan_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fukuan_renkanshu_fk_renkanbianhao` (`renkanbianhao`),
  CONSTRAINT `fukuan_renkanshu_fk_renkanbianhao` FOREIGN KEY (`renkanbianhao`) REFERENCES `renkanshu` (`renkanbianhao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fukuan
-- ----------------------------

-- ----------------------------
-- Table structure for hangye
-- ----------------------------
DROP TABLE IF EXISTS `hangye`;
CREATE TABLE `hangye` (
  `hangyename` varchar(70) NOT NULL,
  `hangyenameen` varchar(70) DEFAULT NULL,
  `hangyeguishu` varchar(70) DEFAULT NULL,
  `hangye_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`hangyename`),
  KEY `hangyename` (`hangyename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hangye
-- ----------------------------
INSERT INTO `hangye` VALUES ('专业服务(咨询、人力资源、财会)', 'Professional Services (Consulting, HR, Finance/Accounting)', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('中介服务', 'Agency', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('互联网/电子商务', 'Internet/E-commerce', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('交通/运输/物流', 'Transportation/Logistic/Distribution', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('仪器仪表/工业自动化', 'Instrument/Industry Automation', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('会计/审计', 'Accounting, Auditing', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('保险', 'Insurance', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('信托/担保/拍卖/典当', 'Trust/Auction/Guarantee/Pawn', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('公关/市场推广/会展', 'Public Relations/Marketing/Exhibitions', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('农/林/牧/渔', 'Agriculture/Forestry/Husbandry/Fishery', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('制药/生物工程', 'Pharmaceuticals/Biotechnology', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('办公用品及设备', 'Office Supplies & Equipment', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('医疗/护理/卫生', 'Medical Care/Healthcare/Public Health', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('医疗设备/器械', 'Medical Facilities/Equipment', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('印刷/包装/造纸', 'Printing/Packaging/Paper', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('原材料和加工', 'Raw Materials & Processing', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('外包服务', 'Outsourcing Services', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('多元化业务集团公司', 'Diversified Business Group Company', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('奢侈品/收藏品/工艺品/珠宝', 'Luxury/Collectibles/Arts&Craft/Jewelry', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('娱乐/休闲/体育', 'Entertainment/Leisure/Sports & Fitness', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('学术/科研', 'Science/Research', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('家具/家电/玩具/礼品', 'Furniture/Home Appliances/Toys/Gifts', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('家居/室内设计/装潢', 'Interior Design/Decoration', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('广告', 'Advertising', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('建筑/建材/工程', 'Architectural Services/Building Materials/Construction', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('影视/媒体/艺术/文化传播', 'Flim & Television/Media/Arts/Communication', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('快速消费品(食品、饮料、化妆品)', 'FMCG( Food,Beverage,Cosmetics)', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('房地产', 'Real Estate', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('批发/零售', 'Wholesale/Retail', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('政府/公共事业', 'Government/Public Service', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('教育/培训/院校', 'Education/Training/Universities and Colleges', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('文字媒体/出版', 'Print Media/Publishing', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('新能源', 'New Energy', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('服装/纺织/皮革', 'Apparel/Textiles/Leather Goods', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('机械/设备/重工', 'Machinery, Equipment, Heavy Industries', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('检测，认证', 'Testing, Certification', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('汽车及零配件', 'Automobile & Components', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('法律', 'Legal', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('物业管理/商业中心', 'Property Management', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('环保', 'Environmental Protection', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('生活服务', 'Personal Care & Services', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('电子技术/半导体/集成电路', 'Electronics/Semiconductor/IC', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('电气/电力/水利', 'Electricity/Utilities/Energy', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('石油/化工/矿产/地质', 'Oils/Chemicals/Mines/Geology', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('租赁服务', 'Leasing Service', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('网络游戏', 'Online Game', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('美容/保健', 'Beauty/Health', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('航天/航空', 'Aerospace/Aviation/Airlines', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('计算机服务(系统、数据服务、维修)', 'Computer Services', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('计算机硬件', 'Computers, Hardware', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('计算机软件', 'Computers,Software\r\nComputers,Software', null, '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('贸易/进出口', 'Trading/Import & Export', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('通信/电信/网络设备', 'Telecom & Network Equipment', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('通信/电信运营、增值服务', 'Telecom Operators/Service Providers', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('酒店/旅游', 'Hospitality/Tourism', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('采掘业/冶炼', 'Mining/Metallurgy', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('金融/投资/证券', 'Finance/Investments/Securities', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('银行', 'Banking', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('非盈利机构', 'Non-Profit Organizations', '', '2016-06-26 15:28:12');
INSERT INTO `hangye` VALUES ('餐饮业', 'Restaurant & Food Services', '', '2016-06-26 15:28:12');

-- ----------------------------
-- Table structure for industry
-- ----------------------------
DROP TABLE IF EXISTS `industry`;
CREATE TABLE `industry` (
  `industryID` smallint(6) NOT NULL AUTO_INCREMENT,
  `industryDesc` varchar(100) DEFAULT NULL,
  `industryClassifyID` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`industryID`),
  KEY `FKBDE6FBACB7EB9414` (`industryClassifyID`),
  KEY `FK79441DE13EE6D6D` (`industryClassifyID`),
  CONSTRAINT `FK79441DE13EE6D6D` FOREIGN KEY (`industryClassifyID`) REFERENCES `industryclassify` (`id`),
  CONSTRAINT `FKBDE6FBACB7EB9414` FOREIGN KEY (`industryID`) REFERENCES `industryclassify` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of industry
-- ----------------------------
INSERT INTO `industry` VALUES ('1', '台式电脑/笔记本', '70');
INSERT INTO `industry` VALUES ('2', '平板电脑', '70');
INSERT INTO `industry` VALUES ('3', '电脑配件/软件', '70');
INSERT INTO `industry` VALUES ('4', '电脑市场', '70');
INSERT INTO `industry` VALUES ('5', '数码产品', '70');
INSERT INTO `industry` VALUES ('6', '手机', '70');
INSERT INTO `industry` VALUES ('7', '其它IT/数码产品', '70');
INSERT INTO `industry` VALUES ('8', '商用楼宇', '71');
INSERT INTO `industry` VALUES ('9', '住宅楼', '71');
INSERT INTO `industry` VALUES ('10', '其它房地产', '71');
INSERT INTO `industry` VALUES ('11', '商务系列', '72');
INSERT INTO `industry` VALUES ('12', '运动系列', '72');
INSERT INTO `industry` VALUES ('13', '休闲系列', '72');
INSERT INTO `industry` VALUES ('14', '内衣', '72');
INSERT INTO `industry` VALUES ('15', '其它服饰', '72');
INSERT INTO `industry` VALUES ('16', '房产中介', '73');
INSERT INTO `industry` VALUES ('17', '购物商场', '73');
INSERT INTO `industry` VALUES ('18', '交易市场', '73');
INSERT INTO `industry` VALUES ('19', '咖啡厅', '73');
INSERT INTO `industry` VALUES ('20', '快餐连锁', '73');
INSERT INTO `industry` VALUES ('21', '美容美发', '73');
INSERT INTO `industry` VALUES ('22', '饮食服务', '73');
INSERT INTO `industry` VALUES ('23', '展览会', '73');
INSERT INTO `industry` VALUES ('24', '照相冲印服务', '73');
INSERT INTO `industry` VALUES ('25', '专业服务', '73');
INSERT INTO `industry` VALUES ('26', '超市', '73');
INSERT INTO `industry` VALUES ('27', '医院', '73');
INSERT INTO `industry` VALUES ('28', '牙科美容', '73');
INSERT INTO `industry` VALUES ('29', '法务服务', '73');
INSERT INTO `industry` VALUES ('30', '其他服务业', '73');
INSERT INTO `industry` VALUES ('31', '媒体公司', '74');
INSERT INTO `industry` VALUES ('32', '广告公司', '74');
INSERT INTO `industry` VALUES ('33', '护肤用品', '75');
INSERT INTO `industry` VALUES ('34', '化妆品', '75');
INSERT INTO `industry` VALUES ('35', '洗发护发用品', '75');
INSERT INTO `industry` VALUES ('36', '香水', '75');
INSERT INTO `industry` VALUES ('37', '牙膏', '75');
INSERT INTO `industry` VALUES ('38', '洗涤用品', '75');
INSERT INTO `industry` VALUES ('39', '冰箱', '76');
INSERT INTO `industry` VALUES ('40', '电器商场', '76');
INSERT INTO `industry` VALUES ('41', '电视', '76');
INSERT INTO `industry` VALUES ('42', '空调', '76');
INSERT INTO `industry` VALUES ('43', '厨房小家电', '76');
INSERT INTO `industry` VALUES ('44', '洗衣机', '76');
INSERT INTO `industry` VALUES ('45', '音响器材', '76');
INSERT INTO `industry` VALUES ('46', '净水器', '76');
INSERT INTO `industry` VALUES ('47', '油烟机', '76');
INSERT INTO `industry` VALUES ('48', '照明', '76');
INSERT INTO `industry` VALUES ('49', '其它家电', '76');
INSERT INTO `industry` VALUES ('50', '橱柜', '77');
INSERT INTO `industry` VALUES ('51', '家居城', '77');
INSERT INTO `industry` VALUES ('52', '家居装饰品', '77');
INSERT INTO `industry` VALUES ('53', '车用服务系统', '78');
INSERT INTO `industry` VALUES ('54', '航空公司', '78');
INSERT INTO `industry` VALUES ('55', '汽车', '78');
INSERT INTO `industry` VALUES ('56', '汽车配件', '78');
INSERT INTO `industry` VALUES ('57', '其他交通类', '78');
INSERT INTO `industry` VALUES ('58', '建材市场', '79');
INSERT INTO `industry` VALUES ('59', '装修公司', '79');
INSERT INTO `industry` VALUES ('60', '装筑材料 ', '79');
INSERT INTO `industry` VALUES ('61', '其它建材', '79');
INSERT INTO `industry` VALUES ('62', '通信', '80');
INSERT INTO `industry` VALUES ('63', '宽带产品及服务', '80');
INSERT INTO `industry` VALUES ('64', '其它移动运营服务', '80');
INSERT INTO `industry` VALUES ('65', '办公器具及服务', '81');
INSERT INTO `industry` VALUES ('66', '办公家具', '81');
INSERT INTO `industry` VALUES ('67', '啤酒', '82');
INSERT INTO `industry` VALUES ('68', '洋酒', '82');
INSERT INTO `industry` VALUES ('69', '白酒', '82');
INSERT INTO `industry` VALUES ('70', '葡萄酒', '82');
INSERT INTO `industry` VALUES ('71', '其它酒类', '82');
INSERT INTO `industry` VALUES ('72', '婴儿食品', '83');
INSERT INTO `industry` VALUES ('73', '婴儿/儿童用品', '83');
INSERT INTO `industry` VALUES ('74', '孕产妇用品', '83');
INSERT INTO `industry` VALUES ('75', '其它母婴用品', '83');
INSERT INTO `industry` VALUES ('76', '彩票', '84');
INSERT INTO `industry` VALUES ('77', '小额信贷', '84');
INSERT INTO `industry` VALUES ('78', '银行服务', '84');
INSERT INTO `industry` VALUES ('79', '保险服务', '84');
INSERT INTO `industry` VALUES ('80', '营养奶粉', '85');
INSERT INTO `industry` VALUES ('81', '固体类茶', '85');
INSERT INTO `industry` VALUES ('82', '糕点/饼干', '85');
INSERT INTO `industry` VALUES ('83', '粮食', '85');
INSERT INTO `industry` VALUES ('84', '巧克力', '85');
INSERT INTO `industry` VALUES ('85', '食用油', '85');
INSERT INTO `industry` VALUES ('86', '调味品', '85');
INSERT INTO `industry` VALUES ('87', '肉类', '85');
INSERT INTO `industry` VALUES ('88', '其它食品', '85');
INSERT INTO `industry` VALUES ('89', '电子商务类网站', '86');
INSERT INTO `industry` VALUES ('90', '新闻门户类网站', '86');
INSERT INTO `industry` VALUES ('91', '生活服务类网站', '86');
INSERT INTO `industry` VALUES ('92', '娱乐休闲类网站', '86');
INSERT INTO `industry` VALUES ('93', '在线旅游类网站', '86');
INSERT INTO `industry` VALUES ('94', '在线教育类网站', '86');
INSERT INTO `industry` VALUES ('95', '招聘类网站', '86');
INSERT INTO `industry` VALUES ('96', '其他类网站', '86');
INSERT INTO `industry` VALUES ('97', '电子产业', '87');
INSERT INTO `industry` VALUES ('98', '燃料', '87');
INSERT INTO `industry` VALUES ('99', '其它工业', '87');
INSERT INTO `industry` VALUES ('100', '西药', '88');
INSERT INTO `industry` VALUES ('101', '中成药', '88');
INSERT INTO `industry` VALUES ('102', '医疗器械', '88');
INSERT INTO `industry` VALUES ('103', '其它药品', '88');
INSERT INTO `industry` VALUES ('104', '茶饮料', '89');
INSERT INTO `industry` VALUES ('105', '果汁', '89');
INSERT INTO `industry` VALUES ('106', '乳酸菌饮品', '89');
INSERT INTO `industry` VALUES ('107', '水', '89');
INSERT INTO `industry` VALUES ('108', '碳酸饮料', '89');
INSERT INTO `industry` VALUES ('109', '液态奶', '89');
INSERT INTO `industry` VALUES ('110', '功能性饮品', '89');
INSERT INTO `industry` VALUES ('111', '其它饮料', '89');
INSERT INTO `industry` VALUES ('112', '腕表', '90');
INSERT INTO `industry` VALUES ('113', '箱包', '90');
INSERT INTO `industry` VALUES ('114', '须刨', '90');
INSERT INTO `industry` VALUES ('115', '珠宝首饰', '90');
INSERT INTO `industry` VALUES ('116', '其它个人用品', '90');
INSERT INTO `industry` VALUES ('117', '减肥类保健品', '91');
INSERT INTO `industry` VALUES ('118', '补益类保健品', '91');
INSERT INTO `industry` VALUES ('119', '其它保健食品', '91');
INSERT INTO `industry` VALUES ('120', '健身房', '92');
INSERT INTO `industry` VALUES ('121', '酒店', '92');
INSERT INTO `industry` VALUES ('122', '旅游', '92');
INSERT INTO `industry` VALUES ('123', '电影', '92');
INSERT INTO `industry` VALUES ('124', '文化娱乐场所', '92');
INSERT INTO `industry` VALUES ('125', '游乐园', '92');
INSERT INTO `industry` VALUES ('126', '渡假村', '92');
INSERT INTO `industry` VALUES ('127', '玩具游戏', '92');
INSERT INTO `industry` VALUES ('128', '其它娱乐休闲', '92');
INSERT INTO `industry` VALUES ('129', '教育学校', '93');
INSERT INTO `industry` VALUES ('130', '培训机构', '93');
INSERT INTO `industry` VALUES ('131', '政府部门', '94');
INSERT INTO `industry` VALUES ('132', '公益', '94');

-- ----------------------------
-- Table structure for industryclassify
-- ----------------------------
DROP TABLE IF EXISTS `industryclassify`;
CREATE TABLE `industryclassify` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of industryclassify
-- ----------------------------
INSERT INTO `industryclassify` VALUES ('70', 'IT/数码产品');
INSERT INTO `industryclassify` VALUES ('71', '房地产');
INSERT INTO `industryclassify` VALUES ('72', '服饰');
INSERT INTO `industryclassify` VALUES ('73', '服务业');
INSERT INTO `industryclassify` VALUES ('74', '媒体/广告公司');
INSERT INTO `industryclassify` VALUES ('75', '化妆品/日用品');
INSERT INTO `industryclassify` VALUES ('76', '家电');
INSERT INTO `industryclassify` VALUES ('77', '家具/家居用品');
INSERT INTO `industryclassify` VALUES ('78', '交通');
INSERT INTO `industryclassify` VALUES ('79', '建材');
INSERT INTO `industryclassify` VALUES ('80', '移动运营商');
INSERT INTO `industryclassify` VALUES ('81', '办公');
INSERT INTO `industryclassify` VALUES ('82', '酒类');
INSERT INTO `industryclassify` VALUES ('83', '母婴用品');
INSERT INTO `industryclassify` VALUES ('84', '金融保险');
INSERT INTO `industryclassify` VALUES ('85', '食品');
INSERT INTO `industryclassify` VALUES ('86', '网站');
INSERT INTO `industryclassify` VALUES ('87', '工业');
INSERT INTO `industryclassify` VALUES ('88', '药品');
INSERT INTO `industryclassify` VALUES ('89', '饮料');
INSERT INTO `industryclassify` VALUES ('90', '个人用品');
INSERT INTO `industryclassify` VALUES ('91', '营养保健食品');
INSERT INTO `industryclassify` VALUES ('92', '娱乐休闲');
INSERT INTO `industryclassify` VALUES ('93', '教育培训');
INSERT INTO `industryclassify` VALUES ('94', '政务/公益');

-- ----------------------------
-- Table structure for led
-- ----------------------------
DROP TABLE IF EXISTS `led`;
CREATE TABLE `led` (
  `led_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `led_daima` varchar(30) DEFAULT NULL,
  `led_name` varchar(50) NOT NULL,
  `led_weizhi` varchar(255) NOT NULL,
  `led_bofangshichang` int(11) DEFAULT NULL,
  `led_bofangkaishishijian` time DEFAULT '08:00:00',
  `led_bofangjieshushijian` time DEFAULT '22:00:00',
  `led_jianxieshichang` int(11) unsigned DEFAULT '0',
  `led_jianxiestart` time DEFAULT NULL,
  `led_jianxieend` time DEFAULT NULL,
  `led_changdu` float DEFAULT NULL,
  `led_kuangdu` float DEFAULT NULL,
  `led_mianji` float DEFAULT NULL,
  `led_fenbianlv` varchar(10) DEFAULT NULL,
  `led_leixing` varchar(25) DEFAULT 'led',
  `led_kanliprice` int(11) DEFAULT '118800',
  `led_suozaiquyu` varchar(8) DEFAULT NULL,
  `led_chengshi` varchar(25) DEFAULT NULL,
  `led_quxian` varchar(25) DEFAULT NULL,
  `led_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `state` varchar(1) DEFAULT NULL COMMENT '屏幕的三个状态：A-->激活，U-->未激活，D-->删除',
  PRIMARY KEY (`led_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of led
-- ----------------------------
INSERT INTO `led` VALUES ('101', 'N-GD-GZ-01', '南都楼顶', '广州大道中南方都市报办公楼北墙体', '50400', '08:00:00', '22:00:00', '0', null, null, '22.36', '14.04', '313.93', '1808×1024', '', '118800', '广东', '广州', '越秀区', '2016-08-09 23:07:25', 'A');
INSERT INTO `led` VALUES ('102', 'N-GD-GZ-02', '北京路香港城', '广州北京路步行街入口香港城外墙', '45000', '09:00:00', '21:30:00', '0', null, null, '15.872', '7.68', '121.9', '1280×1024', 'led', '99000', '广东', '广州', '天河区', '2016-08-09 23:07:21', 'A');
INSERT INTO `led` VALUES ('103', 'N-GD-GZ-03-1', '广州IFC', '广州珠江新城广州国际金融中心', '50400', '08:00:00', '22:00:00', '0', null, null, '14.6', '8.029', '117.22', '1440×900', 'led', '82800', '广东', '广州', '天河区', '2016-08-09 23:07:15', 'A');
INSERT INTO `led` VALUES ('104', 'N-GD-GZ-03-2', '广州IFC（带状屏）', '广州珠江新城广州国际金融中心（带状屏）', '50400', '08:00:00', '22:00:00', '0', null, null, '179.69', '1.02', null, '', 'led', '39000', '', null, null, '2016-08-09 21:48:42', 'A');
INSERT INTO `led` VALUES ('105', 'N-GD-GZ-04', '广州车天车地', '广州大道北车天车地', '50400', '08:00:00', '22:00:00', '0', null, null, '16.36', '14.45', null, null, 'led', '80000', '', null, null, '2016-08-09 22:21:30', 'A');
INSERT INTO `led` VALUES ('201', 'N-GD-SZ-01', '深圳东门', '深圳东门步行街金世界百货', '43200', '08:00:00', '22:00:00', '0', null, null, '17', '9', null, null, 'led', '54600', '', null, null, '2016-08-09 22:21:36', 'A');
INSERT INTO `led` VALUES ('202', 'N-GD-SZ-02', '深圳新绿岛', '深圳南山新绿岛大厦', '48600', '08:00:00', '21:30:00', '0', null, null, '10.15', '30.05', null, null, 'led', '78000', '', null, null, '2016-08-09 22:21:53', 'A');
INSERT INTO `led` VALUES ('203', 'N-GD-SZ-03', '深圳金凯广场', '深圳市罗湖区金凯广场外墙体', '48600', '08:00:00', '21:30:00', '0', null, null, '16.44', '7.2', null, null, 'led', '59800', '', null, null, '2016-08-09 22:22:05', 'A');
INSERT INTO `led` VALUES ('204', 'N-GD-SZ-04', '深圳北方大厦', '深南大道北方大厦', '10800', '08:00:00', '11:00:00', '0', null, null, '12', '43', null, null, 'led', '380000', '', null, null, '2016-08-12 09:40:05', 'A');
INSERT INTO `led` VALUES ('301', 'N-GD-FS-01', '佛山ICC', '佛山国际商业中心(ICC)', '50400', '08:00:00', '22:00:00', '0', null, null, '31.25', '9.7', null, null, 'led', '58000', '', null, null, '2016-08-09 22:22:20', 'A');
INSERT INTO `led` VALUES ('401', 'N-GD-DG-01', '东莞会展中心', '南城会展中心', '52200', '08:00:00', '22:00:00', '0', null, null, '18.8', '6.9', null, '', 'led', '108000', '', null, null, '2016-08-09 23:19:29', 'U');
INSERT INTO `led` VALUES ('402', 'N-GD-DG-02', '东莞大朗', '大朗新世纪长盛广场外墙', '41400', '08:00:00', '22:00:00', '0', null, null, '13.3', '9.3', null, null, 'led', '48000', '', null, null, '2016-08-09 22:23:05', 'A');
INSERT INTO `led` VALUES ('403', 'N-GD-DG-03', '东莞虎门', '虎门大道柏景豪庭', '43200', '08:00:00', '22:00:00', '0', null, null, '18.5', '5.6', null, '', 'led', '58000', '', null, null, '2016-08-09 22:23:06', 'U');
INSERT INTO `led` VALUES ('404', 'N-GD-DG-04', '东莞常平', '常平联邦国际广场', '55080', '08:00:00', '22:00:00', '0', null, null, '9.6', '14.5', null, '', 'led', '58000', '', null, null, '2016-08-09 22:23:06', 'U');
INSERT INTO `led` VALUES ('501', 'N-GD-ZH-01', '珠海钰海', '珠海钰海环球金融中心', '50400', '08:00:00', '22:00:00', '0', null, null, '21.76', '9.29', null, null, 'led', '58000', '', null, null, '2016-08-09 22:23:07', 'A');
INSERT INTO `led` VALUES ('601', 'N-GD-HZ-01', '惠州花边岭', '惠州麦科特大道花边岭广场转盘绿地内', '52200', '08:00:00', '22:00:00', '0', null, null, '16.2', '11', null, null, 'led', '39000', '', null, null, '2016-08-09 22:23:08', 'A');
INSERT INTO `led` VALUES ('701', 'N-GD-ZS-01', '中山益华', '中山市益华商圈核心区 ', '43200', '08:00:00', '22:00:00', '0', null, null, '16', '11.3', null, null, 'led', '36000', '', null, null, '2016-08-09 22:23:08', 'A');
INSERT INTO `led` VALUES ('702', 'N-GD-ZS-02', '中山兴中', '中山市兴中大厦', '50400', '08:00:00', '22:00:00', '0', null, null, '19.5', '7.8', null, null, 'led', '36000', '', null, null, '2016-08-09 22:23:09', 'A');
INSERT INTO `led` VALUES ('801', 'N-GD-JM-01', '江门中泰莱', '江门市中泰莱大酒店 ', '48600', '08:00:00', '22:00:00', '0', null, null, '15.36', '8.46', null, null, 'led', '36000', '', null, null, '2016-08-09 22:23:09', 'A');
INSERT INTO `led` VALUES ('802', 'N-GD-JM-02', '江门住建大厦', '江门市住建大厦', '48600', '08:00:00', '22:00:00', '0', null, null, '12.2', '7.8', null, null, 'led', '36000', '', null, null, '2016-08-09 22:23:10', 'A');
INSERT INTO `led` VALUES ('901', 'N-GD-ZQ-01', '肇庆星湖', '肇庆星湖国际广场正门', '45000', '08:00:00', '22:00:00', '0', null, null, '13.5', '9', null, null, 'led', '36000', '', null, null, '2016-08-09 22:23:10', 'A');
INSERT INTO `led` VALUES ('A01', 'N-GD-QY-01', '清远市政府', '清远市政府广场西侧 ', '36000', '08:00:00', '22:00:00', '0', null, null, '15.36', '8.46', null, '', 'led', '36000', '', null, null, '2016-08-09 23:19:27', 'A');
INSERT INTO `led` VALUES ('B02', 'N-GD-CZ-01', '潮州蓝玥湾', '潮州蓝玥湾酒店', '57600', '08:00:00', '22:00:00', '0', null, null, '17.92', '8.33', null, null, 'led', '36000', '', null, null, '2016-08-09 22:23:11', 'A');
INSERT INTO `led` VALUES ('C01', 'N-GD-YF-01', '云浮东街口', '云浮东街口', '46800', '08:00:00', '22:00:00', '0', null, null, '9', '5', null, '', 'led', '18000', '', null, null, '2016-08-09 22:23:12', 'A');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hasRead` int(1) NOT NULL,
  `content` longtext COLLATE utf8_bin,
  `recevier` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ywy_id` (`recevier`),
  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`recevier`) REFERENCES `yewuyuan` (`ywy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('48', '2016-08-04 17:32:11', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303120E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5AF8CE980B8E8A385E9A5B0E5B9BFE59CBAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('49', '2016-08-04 17:32:11', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A1A6E6A3AEE5BDB1E8A786E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('50', '2016-08-04 17:32:11', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A1A6E6A3AEE5BDB1E8A786E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('51', '2016-08-04 17:32:11', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A1A6E6A3AEE5BDB1E8A786E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('52', '2016-08-05 10:41:51', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303320E5B9BFE5918AE5AEA2E688B7EFBC9AE6BDAEE5B79EE5B882E58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('53', '2016-08-05 10:41:51', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303420E5B9BFE5918AE5AEA2E688B7EFBC9AE78FA0E6B5B7E5B882E585ACE59BADE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('54', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303520E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('55', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('56', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('57', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('58', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('59', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('60', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('61', '2016-08-05 10:41:52', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('62', '2016-08-05 10:44:20', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('63', '2016-08-05 10:44:20', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('64', '2016-08-05 10:44:20', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('65', '2016-08-05 10:44:20', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('66', '2016-08-05 10:44:20', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE88D83E6A3AEE8B4B8E69893E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('67', '2016-08-05 10:44:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E59F8EE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('68', '2016-08-05 10:44:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E59F8EE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('69', '2016-08-05 10:44:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E59F8EE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('70', '2016-08-05 10:44:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303920E5B9BFE5918AE5AEA2E688B7EFBC9AE5889BE6A3AEE58A9EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('71', '2016-08-05 10:44:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A30313020E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5B9BFE692ADE794B5E8A786E5A4A7E5ADA6E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('72', '2016-08-05 10:44:36', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A30313120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E587A4E7BF94E4B99DE5A4A9E4BCA0E5AA92E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('73', '2016-08-05 10:44:36', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A30313120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E587A4E7BF94E4B99DE5A4A9E4BCA0E5AA92E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('74', '2016-08-05 10:44:36', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A30313120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E587A4E7BF94E4B99DE5A4A9E4BCA0E5AA92E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('75', '2016-08-05 10:44:36', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A30313220E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE59BBDE59BBDE69785E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('76', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE594AFE8BF9CE5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('77', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE594AFE8BF9CE5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('78', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313420E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('79', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313420E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('80', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313420E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('81', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313520E5B9BFE5918AE5AEA2E688B7EFBC9AE7ABAFE5B79EE5908DE997A8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('82', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313620E5B9BFE5918AE5AEA2E688B7EFBC9AE5AE89E9AA85E587AFE8BFAAE68B89E5858BE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('83', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313720E5B9BFE5918AE5AEA2E688B7EFBC9AE5AE89E9AA85E587AFE8BFAAE68B89E5858BE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('84', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313820E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5A794E5AEA3E4BCA0E983A8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('85', '2016-08-05 12:23:15', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A313920E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5A794E5AEA3E4BCA0E983A8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('86', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323020E5B9BFE5918AE5AEA2E688B7EFBC9AE4BD9BE5B1B1E5B882E7A685E59F8EE58CBAE59F8EE5B882E7BBBCE59088E7AEA1E79086E5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('87', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B19FE997A8E59088E5AE8FE5A5A5E8BFAAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('88', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B19FE997A8E59088E5AE8FE5A5A5E8BFAAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('89', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323220E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('90', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323220E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('91', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323220E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('92', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323220E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('93', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323320E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('94', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323320E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('95', '2016-08-05 12:23:21', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323320E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('96', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323320E5B9BFE5918AE5AEA2E688B7EFBC9AE4B88AE6B5B7E5B195E8BF8EE59586E8B4B8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('97', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A999E6B08FE585ACE585B1E585B3E7B3BBE592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('98', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A999E6B08FE585ACE585B1E585B3E7B3BBE592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('99', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A999E6B08FE585ACE585B1E585B3E7B3BBE592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('100', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A999E6B08FE585ACE585B1E585B3E7B3BBE592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('101', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A999E6B08FE585ACE585B1E585B3E7B3BBE592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('102', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323520E5B9BFE5918AE5AEA2E688B7EFBC9AE683A0E5B79EE88BB9E69E9CE8A385E9A5B0E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('103', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323720E5B9BFE5918AE5AEA2E688B7EFBC9AE58D8EE8B4B8E5A4A9E59CB0E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('104', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('105', '2016-08-05 12:23:27', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('106', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('107', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('108', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('109', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('110', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('111', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('112', '2016-08-05 12:23:34', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333020E5B9BFE5918AE5AEA2E688B7EFBC9AE98791E8AF83E8978FE88DAFE9A686E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('113', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('114', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('115', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('116', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('117', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('118', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('119', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('120', '2016-08-05 16:08:39', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('121', '2016-08-05 16:08:40', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('122', '2016-08-05 16:08:40', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('123', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('124', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('125', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('126', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('127', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('128', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('129', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('130', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('131', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('132', '2016-08-05 16:10:14', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('133', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('134', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE79C81E4BD93E882B2E5BDA9E7A5A8E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('135', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333320E5B9BFE5918AE5AEA2E688B7EFBC9AE6BDAEE5B79EE5B882E58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('136', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333420E5B9BFE5918AE5AEA2E688B7EFBC9AE6BDAEE5B79EE5B882E4BABAE6B091E694BFE5BA9CE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('137', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333520E5B9BFE5918AE5AEA2E688B7EFBC9AE6BDAEE5B79EE5B882E8939DE78EA5E6B9BEE98592E5BA97E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('138', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333720E5B9BFE5918AE5AEA2E688B7EFBC9AE6989FE6B996E59BBDE99985E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('139', '2016-08-05 16:14:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333820E5B9BFE5918AE5AEA2E688B7EFBC9AE4BD9BE5B1B1E5A3B9E5BC98E59586E58AA1E69C8DE58AA1E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('140', '2016-08-05 16:14:13', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A333920E5B9BFE5918AE5AEA2E688B7EFBC9AE58F8BE982A6E4BF9DE999A9E69C89E99990E585ACE58FB8E5B9BFE4B89CE58886E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('141', '2016-08-05 16:14:13', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343020E5B9BFE5918AE5AEA2E688B7EFBC9AE683A0E5B79EE5B882E59BBDE59C9FE8B584E6BA90E5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('142', '2016-08-05 16:14:13', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('143', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('144', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343120E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('145', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E59F8EE5B882E5A48DE5BBBAE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('146', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E59F8EE5B882E5A48DE5BBBAE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('147', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E59F8EE5B882E5A48DE5BBBAE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('148', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E59F8EE5B882E5A48DE5BBBAE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('149', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E59F8EE5B882E5A48DE5BBBAE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('150', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E59F8EE5B882E5A48DE5BBBAE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('151', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE7BE8EE5B9B4E58CBBE79697E997A8E8AF8AE983A8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('152', '2016-08-05 16:14:21', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE7BE8EE5B9B4E58CBBE79697E997A8E8AF8AE983A8E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('153', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343420E5B9BFE5918AE5AEA2E688B7EFBC9AE58D8EE88BB1E59F8EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('154', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E587A4E7BF94E4B99DE5A4A9E4BCA0E5AA92E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('155', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE4B8ADE6A3AEE5AE9EE58A9BE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('156', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE4B8ADE6A3AEE5AE9EE58A9BE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('157', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A343820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE6A999E6B08FE585ACE585B1E585B3E7B3BBE592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('158', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353020E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E6B8AFE69C88E9A5BCE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('159', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353120E5B9BFE5918AE5AEA2E688B7EFBC9AE4BD9BE5B1B1E5B882E7A685E59F8EE58CBAE59F8EE5B882E7BBBCE59088E7AEA1E79086E5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('160', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353220E5B9BFE5918AE5AEA2E688B7EFBC9AE4BD9BE5B1B1E5B882E7A685E59F8EE58CBAE59F8EE5B882E7BBBCE59088E7AEA1E79086E5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('161', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353420E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE4BAA4E58D97E696B9E68A95E8B584E58F91E5B195E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('162', '2016-08-05 16:14:32', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('163', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('164', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('165', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353620E5B9BFE5918AE5AEA2E688B7EFBC9AE7A588E7A68FE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('166', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353720E5B9BFE5918AE5AEA2E688B7EFBC9AE58C97E4BAACE4B8ADE58D9AE5B7A8E79FB3E69687E58C96E4BCA0E5AA92E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('167', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353920E5B9BFE5918AE5AEA2E688B7EFBC9AE68192E5A4A7E59F8EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('168', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363020E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E4BF9DE999A9E8A18CE4B89AE58D8FE4BC9AE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('169', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363120E5B9BFE5918AE5AEA2E688B7EFBC9AE78FA0E6B5B7E585ACE58583E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('170', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363220E5B9BFE5918AE5AEA2E688B7EFBC9AE6B19FE997A8E5B882E4B8BDE5AEABE59BBDE99985E98592E5BA97E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('171', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363220E5B9BFE5918AE5AEA2E688B7EFBC9AE6B19FE997A8E5B882E4B8BDE5AEABE59BBDE99985E98592E5BA97E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('172', '2016-08-05 16:14:55', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363420E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE59BBDE59BBDE69785E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('173', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363520E5B9BFE5918AE5AEA2E688B7EFBC9AE99B84E5B3B0E59F8EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('174', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363620E5B9BFE5918AE5AEA2E688B7EFBC9AE58D8EE88BB1E59F8EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('175', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363720E5B9BFE5918AE5AEA2E688B7EFBC9AE8A5BFE6B996E4B8BDE697A5E59586E59CBAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('176', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363820E5B9BFE5918AE5AEA2E688B7EFBC9AE6A8AAE790B4E98791E89E8DE4BCA0E5AA92E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('177', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363820E5B9BFE5918AE5AEA2E688B7EFBC9AE6A8AAE790B4E98791E89E8DE4BCA0E5AA92E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('178', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363820E5B9BFE5918AE5AEA2E688B7EFBC9AE6A8AAE790B4E98791E89E8DE4BCA0E5AA92E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('179', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363820E5B9BFE5918AE5AEA2E688B7EFBC9AE6A8AAE790B4E98791E89E8DE4BCA0E5AA92E4B8ADE5BF83E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('180', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363920E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('181', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363920E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('182', '2016-08-05 16:15:04', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A363920E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('183', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373020E5B9BFE5918AE5AEA2E688B7EFBC9AE5B1B1E69CA8E59FB9E8AEADE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('184', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E7BEA4E7BFA5E8A18CE4BC81E4B89AE7AEA1E79086E592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('185', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E7BEA4E7BFA5E8A18CE4BC81E4B89AE7AEA1E79086E592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('186', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E7BEA4E7BFA5E8A18CE4BC81E4B89AE7AEA1E79086E592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('187', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E7BEA4E7BFA5E8A18CE4BC81E4B89AE7AEA1E79086E592A8E8AFA2E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('188', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373420E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5908DE587AFE8A385E9A5B0E8AEBEE8AEA1E5B7A5E7A88BE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('189', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('190', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('191', '2016-08-05 16:15:12', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A373520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E6989FE6B187E6B0B8E68890E69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('192', '2016-08-08 11:21:30', '2', 0xE588A0E999A4E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303120E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5AF8CE980B8E8A385E9A5B0E5B9BFE59CBAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('193', '2016-08-08 11:28:34', '2', 0xE588A0E999A4E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303120E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5AF8CE980B8E8A385E9A5B0E5B9BFE59CBAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('194', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303120E5B9BFE5918AE5AEA2E688B7EFBC9AE683A0E5B79EE4BC98E58F8BE69687E58C96E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('195', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303120E5B9BFE5918AE5AEA2E688B7EFBC9AE98381E98791E9A699E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('196', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('197', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('198', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('199', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('200', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('201', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('202', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('203', '2016-08-08 16:42:37', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303220E5B9BFE5918AE5AEA2E688B7EFBC9AE5A5A5E4B880E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('204', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303320E5B9BFE5918AE5AEA2E688B7EFBC9AE5A4A9E5AE89E695B0E7A081E59F8EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('205', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303420E5B9BFE5918AE5AEA2E688B7EFBC9AE5A4A7E7B2A4E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('206', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('207', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('208', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('209', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('210', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('211', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('212', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('213', '2016-08-08 16:42:47', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303220E5B9BFE5918AE5AEA2E688B7EFBC9AE58D97E59BBDE4B9A6E9A699E69687E58C96E88A82E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('214', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303320E5B9BFE5918AE5AEA2E688B7EFBC9AE683A0E5B79EE5B882E59F8EE7AEA1E689A7E6B395E5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('215', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303520E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('216', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303520E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('217', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303520E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('218', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303520E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('219', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303420E5B9BFE5918AE5AEA2E688B7EFBC9AE8A5BFE6B19FE7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('220', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303720E5B9BFE5918AE5AEA2E688B7EFBC9AE58C97E4BAACE8B7AFE69687E58C96E6A0B8E5BF83E58CBAE7AEA1E5A794E4BC9AE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('221', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E88B8FE5AE81E4BA91E59586E99480E594AEE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('222', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E88B8FE5AE81E4BA91E59586E99480E594AEE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('223', '2016-08-08 16:42:53', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303820E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E88B8FE5AE81E4BA91E59586E99480E594AEE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('224', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E58D93E5AE81E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('225', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303520E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E58D93E5AE81E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('226', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831303920E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('227', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303620E5B9BFE5918AE5AEA2E688B7EFBC9AE58C97E4BAACE78EAFE79083E4B883E7A68FE5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('228', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313020E5B9BFE5918AE5AEA2E688B7EFBC9AE6A285E88AB1E69D91E8A197E98193E58A9EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('229', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313020E5B9BFE5918AE5AEA2E688B7EFBC9AE6A285E88AB1E69D91E8A197E98193E58A9EE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('230', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303720E5B9BFE5918AE5AEA2E688B7EFBC9AE5A4A7E7B2A4E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('231', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303720E5B9BFE5918AE5AEA2E688B7EFBC9AE5A4A7E7B2A4E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('232', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313120E5B9BFE5918AE5AEA2E688B7EFBC9AE5A4A7E7B2A4E7BD91E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('233', '2016-08-08 16:43:01', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('234', '2016-08-08 16:43:07', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('235', '2016-08-08 16:43:07', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('236', '2016-08-08 16:43:07', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('237', '2016-08-08 16:43:07', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('238', '2016-08-08 16:43:07', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('239', '2016-08-08 16:43:07', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('240', '2016-08-08 16:43:08', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313220E5B9BFE5918AE5AEA2E688B7EFBC9AE6B19FE997A8E5B882E4BD8FE688BFE5928CE59F8EE4B9A1E5BBBAE8AEBEE5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('241', '2016-08-08 16:43:08', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313220E5B9BFE5918AE5AEA2E688B7EFBC9AE6B19FE997A8E5B882E4BD8FE688BFE5928CE59F8EE4B9A1E5BBBAE8AEBEE5B180E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('242', '2016-08-08 16:43:08', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313420E5B9BFE5918AE5AEA2E688B7EFBC9AE79B8AE58D8EE5B9BFE59CBAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('243', '2016-08-08 16:43:08', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830303920E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E587A4E7BF94E4B99DE5A4A9E4BCA0E5AA92E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('244', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313520E5B9BFE5918AE5AEA2E688B7EFBC9AE4B89CE88E9EE5B882E5BEAEE8A786E7958CE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('245', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830313020E5B9BFE5918AE5AEA2E688B7EFBC9AE6B7B1E59CB3E5B882E5889BE4B896E58589E6988EE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('246', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('247', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830313120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE4B89CE58D97E696B9E696B0E8A786E7958CE4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('248', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830313220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE4B8ADE6A3AEE5AE9EE58A9BE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('249', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830313220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE4B8ADE6A3AEE5AE9EE58A9BE69687E58C96E4BCA0E692ADE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('250', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE696B0E4BFA1E681AFE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('251', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE696B0E4BFA1E681AFE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('252', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE696B0E4BFA1E681AFE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('253', '2016-08-08 16:43:13', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313820E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE696B0E4BFA1E681AFE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('254', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831313920E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5B882E9B8BFE89299E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('255', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383830313320E5B9BFE5918AE5AEA2E688B7EFBC9AE7A68FE588A9E5BDA9E7A5A8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('256', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323020E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('257', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323020E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('258', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323020E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('259', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323020E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('260', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('261', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('262', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('263', '2016-08-08 16:43:20', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323120E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('264', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('265', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('266', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('267', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323220E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('268', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('269', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('270', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('271', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323320E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('272', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('273', '2016-08-08 16:43:25', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('274', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('275', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323420E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('276', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('277', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('278', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('279', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323620E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('280', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('281', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('282', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('283', '2016-08-08 16:43:35', '2', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323720E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('284', '2016-08-10 22:28:35', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('285', '2016-08-10 22:28:35', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('286', '2016-08-11 15:26:30', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('287', '2016-08-11 16:30:59', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('292', '2016-08-11 17:10:59', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('293', '2016-08-11 17:10:59', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('294', '2016-08-11 17:10:59', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353120E5B9BFE5918AE5AEA2E688B7EFBC9AE4BD9BE5B1B1E5B882E7A685E59F8EE58CBAE59F8EE5B882E7BBBCE59088E7AEA1E79086E5B180E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('298', '2016-08-11 17:23:38', '2', 0xE588A0E999A4E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A3136383831323020E5B9BFE5918AE5AEA2E688B7EFBC9AE5B9BFE5B79EE5BDB1E4BCA0E5B9BFE5918AE69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('299', '2016-08-11 18:11:05', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('300', '2016-08-11 18:35:47', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('301', '2016-08-15 15:44:57', '2', 0xE588A0E999A4E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A303120E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE5B1B1E5B882E5AF8CE980B8E8A385E9A5B0E5B9BFE59CBAE79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('302', '2016-08-15 15:45:38', '2', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE5B7B2E9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('303', '2016-08-19 16:00:37', '0', 0xE4B88BE794BBE8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('304', '2016-08-20 10:02:38', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9A6E756C6CE79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('305', '2016-08-20 12:12:37', '0', 0xE588A0E999A4E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A353420E5B9BFE5918AE5AEA2E688B7EFBC9AE4B8ADE4BAA4E58D97E696B9E68A95E8B584E58F91E5B195E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('306', '2016-08-20 12:13:18', '0', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('307', '2016-08-20 17:25:00', '0', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('308', '2016-08-20 17:25:45', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9A6E756C6CE79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('309', '2016-08-20 19:06:38', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9A6E756C6CE79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('310', '2016-08-20 19:06:38', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9A6E756C6CE79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('311', '2016-08-22 09:36:18', '0', 0xE4BFAEE694B9E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9AE7BD91E69893E4BCA0E5AA92E7A791E68A80E69C89E99990E585ACE58FB8E79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');
INSERT INTO `message` VALUES ('312', '2016-08-22 15:36:49', '0', 0xE6B7BBE58AA0E8AEA2E58D952D2DE8AEA4E5888AE4B9A6E7BC96E58FB7EFBC9A323920E5B9BFE5918AE5AEA2E688B7EFBC9A6E756C6CE79A84E4BFA1E681AFE3808AE4B88DE3808BE9809AE8BF87E5AEA1E6A0B8EFBC8CE5AEA1E6A0B8E4BABAEFBC9A61646D696E20E5AEA1E6A0B8E79086E794B1EFBC9A, '36');

-- ----------------------------
-- Table structure for orderaudit
-- ----------------------------
DROP TABLE IF EXISTS `orderaudit`;
CREATE TABLE `orderaudit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yewu_id` int(11) DEFAULT NULL,
  `renkanbianhao` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kanhu` varchar(140) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guanggaoneirong` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry` smallint(6) DEFAULT NULL,
  `leixing` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ywy_id` int(11) DEFAULT NULL,
  `led` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shichang` int(11) DEFAULT NULL,
  `pinci` int(11) DEFAULT NULL,
  `kaishishijian` date DEFAULT NULL,
  `jieshushijian` date DEFAULT NULL,
  `shuliang` int(11) DEFAULT NULL,
  `kanlijiaxiaoji` decimal(12,2) DEFAULT NULL,
  `shiduan` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operTimestamp` date NOT NULL,
  `operYwy_id` int(11) NOT NULL,
  `operType` char(1) CHARACTER SET utf8 NOT NULL COMMENT 'A-->添加，L-->修改，D-->删除，U-->下画',
  `operReason` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderState` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `yewu_id_fk` (`yewu_id`),
  KEY `ywy_id_fk` (`ywy_id`),
  KEY `oper_ywy_id_fk` (`operYwy_id`),
  KEY `orderaudit_led_fk` (`led`),
  KEY `industry_orderaudit_fk` (`industry`),
  CONSTRAINT `industry_orderaudit_fk` FOREIGN KEY (`industry`) REFERENCES `industry` (`industryID`),
  CONSTRAINT `oper_ywy_id_fk` FOREIGN KEY (`operYwy_id`) REFERENCES `yewuyuan` (`ywy_id`),
  CONSTRAINT `orderaudit_led_fk` FOREIGN KEY (`led`) REFERENCES `led` (`led_id`),
  CONSTRAINT `ywy_id_fk` FOREIGN KEY (`ywy_id`) REFERENCES `yewuyuan` (`ywy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of orderaudit
-- ----------------------------
INSERT INTO `orderaudit` VALUES ('23', null, '29', '网易传媒科技有限公司', '666666', '1', '商业广告', null, '101', '66', '66', '2016-08-01', '2016-08-31', '6', null, null, '2016-08-20', '36', 'A', null, null);
INSERT INTO `orderaudit` VALUES ('25', '170', '51', '佛山市禅城区城市综合管理局', '台湾连锁品牌展览会', '23', '商业广告', null, '104', '15', '60', '2016-07-05', '2016-07-10', '1', null, null, '2016-08-22', '36', 'L', null, null);
INSERT INTO `orderaudit` VALUES ('26', '121', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', null, '201', '15', '30', '2016-07-28', '2016-08-21', '4', null, null, '2016-08-22', '36', 'U', null, null);
INSERT INTO `orderaudit` VALUES ('27', '121', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', null, '201', '15', '30', '2016-07-28', '2016-08-21', '4', null, null, '2016-08-22', '36', 'U', null, null);
INSERT INTO `orderaudit` VALUES ('28', '118', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', null, '101', '15', '90', '2016-07-28', '2016-08-01', '4', null, null, '2016-08-22', '36', 'U', 'asdsas', null);

-- ----------------------------
-- Table structure for remark
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `operYwyName` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `operTime` datetime NOT NULL,
  `operContent` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `ywId` int(11) NOT NULL,
  `orderauditId` int(11) DEFAULT NULL,
  `auditYwyName` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auditTime` datetime DEFAULT NULL,
  `state` varchar(1) COLLATE utf8_unicode_ci NOT NULL COMMENT '备注的两个状态：A-->审核阶段，N-->审核后，形成新订单的备注',
  PRIMARY KEY (`id`),
  KEY `remark_yw_id` (`ywId`),
  CONSTRAINT `remark_yw_id` FOREIGN KEY (`ywId`) REFERENCES `yewu` (`yewu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of remark
-- ----------------------------
INSERT INTO `remark` VALUES ('4', 'admin', '2016-08-11 16:30:00', '2016-08-11 16:30:00.0 admin 将屏幕：深圳金凯广场 更换为 南都楼顶;   审核人：admin, 审核时间：2016-08-11 16:30:59.0, 审核结果：不通过', '122', '5', 'admin', '2016-08-11 16:30:59', 'N');
INSERT INTO `remark` VALUES ('5', 'admin', '2016-08-11 16:33:19', '2016-08-11 16:33:19.0 admin 将行业：新闻门户类网站 修改为 小额信贷;   审核人：admin, 审核时间：2016-08-11 17:10:59.0, 审核结果：不通过', '119', '6', 'admin', '2016-08-11 17:10:59', 'N');
INSERT INTO `remark` VALUES ('6', 'admin', '2016-08-11 16:33:26', '2016-08-11 16:33:26.0 admin 将屏幕：南都楼顶 更换为 广州车天车地;   审核人：admin, 审核时间：2016-08-11 17:10:59.0, 审核结果：不通过', '118', '7', 'admin', '2016-08-11 17:10:59', 'N');
INSERT INTO `remark` VALUES ('7', 'admin', '2016-08-11 16:33:37', '2016-08-11 16:33:37.0 admin 将行业：展览会 修改为 其它IT/数码产品;   审核人：admin, 审核时间：2016-08-11 17:10:59.0, 审核结果：不通过', '170', '8', 'admin', '2016-08-11 17:10:59', 'N');
INSERT INTO `remark` VALUES ('8', 'admin', '2016-08-11 17:09:59', '2016-08-11 17:09:59.0 admin 删除订单———认刊书编号：1688120 广告客户：广州影传广告有限公司 广告内容：名堂 行业：其它娱乐休闲 广告类型：商业广告 屏幕：广州IFC（带状屏） 时长：15 频次：60 开始时间：2016-07-06 00:00:00.0 结束时间：2016-08-02 00:00:00.0 数量：4  审核人：admin, 审核时间：2016-08-11 17:23:38.0, 审核结果：不通过', '268', '9', 'admin', '2016-08-11 17:23:38', 'N');
INSERT INTO `remark` VALUES ('9', 'admin', '2016-08-11 17:44:47', '2016-08-11 17:44:47.0 admin 删除订单———认刊书编号：54 广告客户：中交南方投资发展有限公司 广告内容：中交汇通，横琴广场宣传片 行业：商用楼宇 广告类型：商业广告 屏幕：珠海钰海 时长：15 频次：120 开始时间：2016-07-05 00:00:00.0 结束时间：2017-07-04 00:00:00.0 数量：52  审核人：admin, 审核时间：2016-08-20 12:12:37.0, 审核结果：不通过', '172', '10', 'admin', '2016-08-20 12:12:37', 'N');
INSERT INTO `remark` VALUES ('10', 'admin', '2016-08-11 18:06:31', '2016-08-11 18:06:31.0 admin 将屏幕：深圳东门 更换为 广州车天车地;   审核人：admin, 审核时间：2016-08-11 18:11:05.0, 审核结果：不通过', '121', '11', 'admin', '2016-08-11 18:11:05', 'N');
INSERT INTO `remark` VALUES ('11', 'admin', '2016-08-11 18:14:32', '2016-08-11 18:14:32.0 admin 修改订单———认刊书编号：29 广告客户：网易传媒科技有限公司 将屏幕：南都楼顶 更换为 广州IFC（带状屏）;   审核人：admin, 审核时间：2016-08-11 18:35:47.0, 审核结果：不通过', '118', '12', 'admin', '2016-08-11 18:35:47', 'N');
INSERT INTO `remark` VALUES ('12', 'admin', '2016-08-12 10:50:08', '2016-08-12 10:50:08.0 admin 修改订单———认刊书编号：29 广告客户：网易传媒科技有限公司 将屏幕：南都楼顶 更换为 深圳金凯广场;   审核人：admin, 审核时间：2016-08-20 17:25:00.0, 审核结果：不通过', '118', '13', 'admin', '2016-08-20 17:25:00', 'N');
INSERT INTO `remark` VALUES ('13', 'admin', '2016-08-15 15:38:31', '2016-08-15 15:38:31.0 admin 修改订单———认刊书编号：29 广告客户：网易传媒科技有限公司 将订单状态：上画 修改为 下画  审核人：admin, 审核时间：2016-08-15 15:45:38.0, 审核结果：通过！', '121', '14', 'admin', '2016-08-15 15:45:38', 'N');
INSERT INTO `remark` VALUES ('15', 'admin', '2016-08-15 15:44:06', '2016-08-15 15:44:06.0 admin 删除订单———认刊书编号：01 广告客户：中山市富逸装饰广场 广告内容：富逸装饰广场 行业：装修公司 广告类型：商业广告 屏幕：中山兴中 时长：10 频次：60 开始时间：2016-07-16 00:00:00.0 结束时间：2016-07-30 00:00:00.0 数量：2  审核人：admin, 审核时间：2016-08-15 15:44:57.0, 审核结果：通过！', '59', '15', 'admin', '2016-08-15 15:44:57', 'N');
INSERT INTO `remark` VALUES ('16', 'admin', '2016-08-15 16:59:42', '2016-08-15 16:59:42.0 admin 修改订单———认刊书编号：29 广告客户：网易传媒科技有限公司 将行业：新闻门户类网站 修改为 通信;   审核人：admin, 审核时间：2016-08-20 12:13:18.0, 审核结果：不通过', '122', '16', 'admin', '2016-08-20 12:13:18', 'N');
INSERT INTO `remark` VALUES ('17', 'admin', '2016-08-19 14:56:17', '2016-08-19 14:56:17.0 admin 下画订单———认刊书编号：29 广告客户：网易传媒科技有限公司 广告内容：网易 行业：新闻门户类网站 广告类型：商业广告 屏幕：广州车天车地 时长：15 频次：30 开始时间：2016-07-28 00:00:00.0 结束时间：2016-08-21 00:00:00.0 数量：4  审核人：admin, 审核时间：2016-08-19 16:00:37.0, 审核结果：不通过', '119', '17', 'admin', '2016-08-19 16:00:37', 'N');
INSERT INTO `remark` VALUES ('18', 'admin', '2016-08-19 16:20:39', '2016-08-19 16:20:39.0 admin 添加订单（上画）———认刊书编号：29 广告客户：网易传媒科技有限公司  审核人：admin, 审核时间：2016-08-20 10:02:38.0, 审核结果：不通过', '119', '18', 'admin', '2016-08-20 10:02:38', 'N');
INSERT INTO `remark` VALUES ('19', 'admin', '2016-08-20 10:07:10', '2016-08-20 10:07:10.0 admin 添加订单（上画）———认刊书编号：29 广告客户：网易传媒科技有限公司  审核人：admin, 审核时间：2016-08-20 17:25:45.0, 审核结果：不通过', '121', '19', 'admin', '2016-08-20 17:25:45', 'N');
INSERT INTO `remark` VALUES ('20', 'admin', '2016-08-20 16:38:15', '2016-08-20 16:38:15.0 admin 添加订单（上画）———认刊书编号：29 广告客户：网易传媒科技有限公司  审核人：admin, 审核时间：2016-08-20 19:06:38.0, 审核结果：不通过, 审核理由：', '118', '20', 'admin', '2016-08-20 19:06:38', 'N');
INSERT INTO `remark` VALUES ('21', 'admin', '2016-08-20 16:38:56', '2016-08-20 16:38:56.0 admin 添加订单（上画）———认刊书编号：29 广告客户：网易传媒科技有限公司  审核人：admin, 审核时间：2016-08-20 19:06:38.0, 审核结果：不通过, 审核理由：', '120', '21', 'admin', '2016-08-20 19:06:38', 'N');
INSERT INTO `remark` VALUES ('22', 'admin', '2016-08-20 16:43:53', '2016-08-20 16:43:53.0 admin 添加订单（上画）———认刊书编号：29 广告客户：网易传媒科技有限公司  审核人：admin, 审核时间：2016-08-22 15:36:49.0, 审核结果：不通过, 审核理由：', '118', '22', 'admin', '2016-08-22 15:36:49', 'N');
INSERT INTO `remark` VALUES ('23', 'admin', '2016-08-20 16:47:50', '2016-08-20 16:47:50.0 admin 添加订单（上画）———认刊书编号：29 广告客户：网易传媒科技有限公司', '118', '23', null, null, 'A');
INSERT INTO `remark` VALUES ('24', 'admin', '2016-08-21 20:24:19', '2016-08-21 20:24:19.0 admin 修改订单———认刊书编号：29 广告客户：网易传媒科技有限公司 将  审核人：admin, 审核时间：2016-08-22 09:36:18.0, 审核结果：不通过, 审核理由：', '118', '24', 'admin', '2016-08-22 09:36:18', 'N');
INSERT INTO `remark` VALUES ('25', 'admin', '2016-08-22 09:36:48', '2016-08-22 09:36:48.0 admin 修改订单———认刊书编号：51 广告客户：佛山市禅城区城市综合管理局 将屏幕：佛山ICC 更换为 广州IFC（带状屏）; ', '170', '25', null, null, 'A');
INSERT INTO `remark` VALUES ('26', 'admin', '2016-08-22 15:36:23', '2016-08-22 15:36:23.0 admin 下画订单———认刊书编号：29 广告客户：网易传媒科技有限公司 广告内容：网易 行业：新闻门户类网站 广告类型：商业广告 屏幕：深圳东门 时长：15 频次：30 开始时间：2016-07-28 00:00:00.0 结束时间：2016-08-21 00:00:00.0 数量：4', '121', '26', null, null, 'A');
INSERT INTO `remark` VALUES ('27', 'admin', '2016-08-22 15:46:57', '2016-08-22 15:46:57.0 admin 下画订单———认刊书编号：29 广告客户：网易传媒科技有限公司 广告内容：网易 行业：新闻门户类网站 广告类型：商业广告 屏幕：深圳东门 时长：15 频次：30 开始时间：2016-07-28 00:00:00.0 结束时间：2016-08-21 00:00:00.0 数量：4', '121', '27', null, null, 'A');
INSERT INTO `remark` VALUES ('28', 'admin', '2016-08-22 16:28:37', '2016-08-22 16:28:37.0 admin 下画订单———认刊书编号：29 广告客户：网易传媒科技有限公司 广告内容：网易 行业：新闻门户类网站 广告类型：商业广告 屏幕：南都楼顶 时长：15 频次：90 开始时间：2016-07-28 00:00:00.0 结束时间：2016-08-21 00:00:00.0 数量：4<br>下画理由：asdsas', '118', '28', null, null, 'A');

-- ----------------------------
-- Table structure for renkanshu
-- ----------------------------
DROP TABLE IF EXISTS `renkanshu`;
CREATE TABLE `renkanshu` (
  `renkanbianhao` varchar(50) NOT NULL,
  `qiandingriqi` date NOT NULL,
  `ywy_id` int(11) NOT NULL,
  `hetongbianhao` varchar(50) DEFAULT NULL,
  `baogaobianhao` varchar(50) DEFAULT NULL,
  `guangaokanhu` varchar(140) DEFAULT NULL,
  `hangye` smallint(6) DEFAULT NULL,
  `guanggaodailigongsi` varchar(140) DEFAULT NULL,
  `pinpai` varchar(140) DEFAULT NULL,
  `guanggaoneirong` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gaojianlaiyuan` varchar(50) NOT NULL DEFAULT '刊户设计',
  `gaojianleibie` varchar(10) NOT NULL DEFAULT 'MPG',
  `kanlizongjia` decimal(12,2) NOT NULL,
  `zhekou` decimal(3,2) NOT NULL,
  `dingjin` decimal(12,2) DEFAULT '0.00',
  `fenqi` int(1) DEFAULT '1',
  `rks_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `renkanshubeizhu` varchar(255) DEFAULT NULL,
  `hangyename` varchar(70) DEFAULT NULL,
  `state` varchar(1) DEFAULT NULL COMMENT '认刊书的两个状态：N-->正常，D-->删除',
  PRIMARY KEY (`renkanbianhao`),
  KEY `FK795EC843D6D8D6E` (`hangye`),
  KEY `FK795EC843D2F18F15` (`hangyename`),
  CONSTRAINT `renkanshu_industry_hangye_fk` FOREIGN KEY (`hangye`) REFERENCES `industry` (`industryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of renkanshu
-- ----------------------------
INSERT INTO `renkanshu` VALUES ('01', '2016-07-13', '1', '', '', '中山市富逸装饰广场', '59', '广东南方日报经营有限公司中山分公司', null, '富逸装饰广场', '刊户设计', 'AVI', '4500.00', '0.09', null, null, '2016-08-15 15:46:19', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('010', '2016-07-15', '1', '', '', '中山市广播电视大学', '129', '广东南方日报经营有限公司中山分公司', null, '中山市广播电视大学', '刊户设计', 'AVI', '24840.00', '0.08', null, null, '2016-08-08 11:19:27', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('011', '2016-07-12', '1', '', '', '深圳市凤翔九天传媒有限公司', '8', '', null, '深圳市兴海腾楗投资发展有限公司  心海城', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:28', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('012', '2016-07-18', '1', '', '', '中国国旅', '122', '', null, '惠州 中国国旅 长隆', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:29', '惠州--中国国旅 长隆 0718.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('02', '2016-07-13', '1', '', '', '广州桦森影视有限公司', '8', '', null, '珠光地产项目广告', '刊户设计', 'AVI', '152064.00', '0.09', null, null, '2016-08-08 11:19:30', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('03', '2016-07-14', '1', '', '', '潮州市南方新视界传媒科技有限公司', '31', '潮州市南方新视界传媒科技有限公司', null, '南方新视界传媒科技有限公司自主形象推广宣传片', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:30', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('04', '2016-07-14', '1', '', '', '珠海市公园文化传播有限公司', '8', '中国奥园地产集团', null, '珠海奥园广场', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:31', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('05', '2016-07-13', '1', '', '', '广东省体育彩票中心', '128', '', null, '体彩大乐透', '刊户设计', 'AVI', '4500.00', '0.02', null, null, '2016-08-08 11:19:35', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('06', '2016-07-13', '1', '', '', '广东省体育彩票中心', '128', '', null, '体彩大乐透', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:35', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('07', '2016-07-14', '1', '', '', '广州荃森贸易有限公司', '104', '', null, '必胜饮料形象宣传', '刊户设计', 'AVI', '33120.00', '0.10', null, null, '2016-08-08 11:19:36', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('08', '2016-07-15', '1', '', '', '深圳市星汇永城文化传播有限公司', '32', '', null, '哆啦A梦', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:37', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('09', '2016-07-15', '1', '', '', '创森办', '1', '', null, '肇庆-创森办A片10秒7.15       肇庆-创森办B片10秒7.15     肇庆-创森办C片10秒7.15    肇庆-创森办D片23秒7.15', '刊户设计', 'AVI', '16000.00', '0.03', null, null, '2016-08-08 11:19:37', null, null, 'N');
INSERT INTO `renkanshu` VALUES ('13', '2016-07-18', '1', '', '', '广州唯远广告有限公司', '103', '', null, '粤秀医院', '刊户设计', 'AVI', '112800.00', '0.60', null, null, '2016-08-08 11:19:38', '框架合同，每月播出一周，总共12周，共合计112800，合计12单，此单为第8单', null, 'N');
INSERT INTO `renkanshu` VALUES ('14', '2016-07-18', '1', '', '', '深圳市星汇永成文化传播有限公司', '1', '', null, '封神传奇', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:38', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('15', '2016-07-19', '1', '', '', '端州名门', '60', '', null, '肇庆-端州名门32秒 7.19', '刊户设计', 'AVI', '2500.00', '0.03', null, null, '2016-08-08 11:19:39', '按合同价10000 平均，每天得出', null, 'N');
INSERT INTO `renkanshu` VALUES ('16', '2016-07-19', '1', '0000105', '', '安骅凯迪拉克', '55', '惠州市优友文化传播有限公司', null, '惠州凯迪拉克', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:39', '惠州-凯迪拉克0919.wmv', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688001', '2016-07-18', '1', '', '', '郁金香', '64', '', null, '中国移动', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:33', '新绿岛屏体在7月17日出现单条模块，影响了广告内容播放和监播拍摄。现申请补播两天广告给予客户。由于第三方监播拍摄监播照片，向公司申请了赠播两天给予客户安排', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688002', '2016-07-20', '1', '', '', '南国书香文化节', '23', '', null, '南国书香文化节宣传内容', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:33', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688003', '2016-07-21', '1', '', '', '惠州市城管执法局', '131', '', null, '公益广告', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:34', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688004', '2016-07-26', '1', '', '', '西江网', '23', '', null, '肇庆-西江网动漫节30秒 7.26', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:34', '配合宣传', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688005', '2016-07-28', '1', '', '', '深圳卓宁广告有限公司', '6', '', null, 'Vivo手机', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:35', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688006', '2016-07-29', '1', '', '', '北京环球七福广告有限公司', '23', '', null, '音乐之声宣传片（我要我的音乐）', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:35', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688007', '2016-07-29', '1', '', '', '大粤网', '23', '', null, '全球投资峰会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:36', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688008', '2016-07-29', '1', '', '', '广东南方新视界传媒科技有限公司', '132', '', null, '公益广告-感谢您守护这个城市', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:36', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688009', '2016-07-26', '1', '', '', '深圳市凤翔九天传媒有限公司', '10', '', null, '恒大棕榈岛', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:42', '因台风金凯广场于2016年8月2日8：05-8月3日10：55关屏，现申请补偿三天给客户，即延播到2016.8.6，客户原投放日期为：2016.6.18-2016.8.3', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688010', '2016-07-28', '1', '', '', '深圳市创世光明文化传播有限公司', '60', '', null, '誉峯名门宣传片', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:41', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688011', '2016-07-25', '1', '', '', '广东南方新视界传媒科技有限公司', '31', '', null, '公司奥运热点新闻', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:41', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688012', '2016-07-28', '1', '', '', '广州中森实力文化传播有限公司', '132', '', null, '广州市城管公益广告', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:41', '因需拍摄监播故作插播', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688013', '2016-08-03', '1', '', '', '福利彩票', '76', '', null, '肇庆-福利彩票18秒 8.3', '刊户设计', 'AVI', '4500.00', '0.03', null, null, '2016-08-15 15:46:40', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688101', '2016-07-04', '1', '', '', '惠州优友文化公司', '125', '', null, '中国国旅-长隆水上乐园', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:40', '惠州屏幕系统在7月1日、2日磁盘空间满载和数据日志满载导致广告没有播放成功。现申请补播两天广告给予客户。', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688102', '2016-07-04', '1', '', '', '奥一网', '31', '', null, '南都自媒体', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:39', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688103', '2016-07-05', '1', '', '', '天安数码城', '4', '', null, '天安数码城', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:39', '客户下半年有广告推广费用，现在做客情关系，特申请赠播一个月。', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688104', '2016-07-06', '1', '', '', '大粤网', '9', '', null, '腾讯房产珠海站', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:46', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688105', '2016-07-06', '1', '', '', '广东南方新视界传媒科技有限公司', '76', '', null, '欧洲杯胜负竞猜互动赠播', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:47', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688107', '2016-07-07', '1', '', '', '北京路文化核心区管委会', '132', '', null, '慈善主题公益宣传视频', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:47', '由于陈总出差已请示陈总，回来补签此单。', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688108', '2016-07-06', '1', '', '', '深圳市苏宁云商销售有限公司', '89', '', null, '苏宁', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:47', '深圳苏宁为我司长期合作客户，在灯箱固定投放，现赠播LED支持苏宁15年庆，以寻求LED媒体的合作。', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688109', '2016-07-07', '1', '', '', '广东南方新视界传媒科技有限公司', '1', '', null, '第五届“羊城杯”公益广告创意大赛快闪预告片', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:48', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688110', '2016-07-08', '1', '', '', '梅花村街道办', '132', '', null, '“登革热防控”、“来穗人员管理”、“反邪教宣传”以及新增“创建国家食品安全城市”', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:48', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688111', '2016-07-08', '1', '', '', '大粤网', '23', '', null, '腾讯区域自媒体峰会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:48', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688112', '2016-07-11', '1', '', '', '江门市住房和城乡建设局', '131', '', null, '首届江门市五人足球超级联赛宣传片', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:49', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688114', '2016-07-14', '1', '', '', '益华广场', '17', '', null, '益华印尼食品节', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:49', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688115', '2016-07-11', '1', '', '', '东莞市微视界文化传播有限公司', '55', '', null, '永佳丰田', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:50', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688116', '2016-07-11', '1', '', '', '广东南方新视界传媒科技有限公司', '132', '', null, '“羊城杯”公益广告', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:50', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688118', '2016-07-18', '1', '', '', '广新信息公司', '23', '', null, '会展广告', '刊户设计', 'AVI', '5000.00', '0.02', null, null, '2016-08-15 15:46:51', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688119', '2016-07-29', '1', '', '', '广州市鸿蒙广告有限公司', '104', '', null, '康师傅饮料各系列', '刊户设计', 'AVI', '100000.00', '0.08', null, null, '2016-08-15 15:46:52', '按7月31号播出的广告画面继续播出。每天晚上18点-19点固定方式共计播出1小时。', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688120', '2016-07-04', '1', '', '', '广州影传广告有限公司', '128', '', null, '名堂', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:53', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688121', '2016-07-04', '1', '', '', '广州影传广告有限公司', '31', '', null, '荔枝FM', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:46:59', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688122', '2016-07-04', '1', '', '', '广州影传广告有限公司', '123', '', null, '三体', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:47:00', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688123', '2016-07-06', '1', '', '', '广州影传广告有限公司', '123', '', null, '克不容缓', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:47:00', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688124', '2016-07-18', '1', '', '', '广州影传广告有限公司', '1', '', null, '封神传奇', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:47:00', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688126', '2016-07-22', '1', '', '', '广州影传广告有限公司', '23', '', null, '斯卡拉歌剧院芭蕾舞', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:47:01', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('1688127', '2016-07-28', '1', '', '', '广州影传广告有限公司', '120', '', null, '张杰', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-15 15:47:02', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('17', '2016-07-20', '1', '0000105', '', '安骅凯迪拉克', '55', '惠州市优友文化传播有限公司', null, '惠州 凯迪拉克', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:40', '惠州-凯迪拉克 01.0720.WMV  惠州-凯迪拉克 02.0720.WMV 两个稿件各播10秒60次', null, 'N');
INSERT INTO `renkanshu` VALUES ('18', '2016-07-20', '1', '', '', '中山市委宣传部', '131', '广东南方日报经营有限公司中山分公司', null, '“四个定位”', '刊户设计', 'AVI', '20932.00', '0.04', null, null, '2016-08-08 11:19:43', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('19', '2016-07-20', '1', '', '', '中山市委宣传部', '131', '广东南方日报经营有限公司中山分公司', null, '“换届”', '刊户设计', 'AVI', '4185.00', '0.10', null, null, '2016-08-08 11:19:44', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('20', '2016-07-21', '1', '', '', '佛山市禅城区城市综合管理局', '131', '广州中海文化传播有限公司佛山分公司', null, '社会主义核心价值', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:44', '要求至少每10分钟播放一次', null, 'N');
INSERT INTO `renkanshu` VALUES ('21', '2016-07-19', '1', '', '', '江门合宏奥迪', '55', '', null, '江门合宏奥迪', '刊户设计', 'AVI', '4000.00', '0.01', null, null, '2016-08-08 11:19:33', '稿件已发给文威', null, 'N');
INSERT INTO `renkanshu` VALUES ('22', '2016-07-24', '1', '', '', '上海展迎商贸有限公司', '33', '', null, '香港日置名媛美容形象宣传', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:46', '稿件已给设计 置换', null, 'N');
INSERT INTO `renkanshu` VALUES ('23', '2016-07-31', '1', '', '', '上海展迎商贸有限公司', '33', '', null, '香港日置名媛美容形象宣传', '刊户设计', 'AVI', '31320.00', '0.10', null, null, '2016-08-08 11:19:46', '稿件已给设计', null, 'N');
INSERT INTO `renkanshu` VALUES ('24', '2016-07-22', '1', '', '', '广州橙氏公共关系咨询有限公司', '67', '', null, '珠江纯生啤酒派对', '刊户设计', 'AVI', '25000.00', '0.09', null, null, '2016-08-08 11:19:47', '框架合同，共播出两周，合计25000元。此单为第一周', null, 'N');
INSERT INTO `renkanshu` VALUES ('25', '2016-07-25', '1', '0000107', '', '惠州苹果装饰', '59', '', null, '惠州 苹果装饰', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:47', '惠州-苹果装饰.任意装.0725.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('27', '2016-07-25', '1', '0000106', '', '华贸天地', '1', '', null, '惠州 华贸天地', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:49', '惠州-华贸天地五周年庆 0725.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('28', '2016-07-25', '1', '', '', '深圳市星汇永成文化传播有限公司', '124', '', null, 'IU深圳演唱会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:50', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('29', '2015-12-09', '1', '', '', '网易传媒科技有限公司', '90', '', null, '网易', '刊户设计', 'AVI', '35000.00', '0.02', null, null, '2016-08-08 11:19:50', '框架合同 播放刊例总价为5，000，000元，此次刊例金额为：1777321元，合同刊例金额已核销完毕，实付现金3.5万', null, 'N');
INSERT INTO `renkanshu` VALUES ('30', '2016-07-26', '1', '0000108', '', '金诃藏药馆', '101', '', null, '惠州 金诃藏药馆', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:51', '惠州 金诃藏药馆.0736.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('31', '2016-07-25', '1', '', '', '广东省体育彩票中心', '128', '', null, '体彩大乐透2.14亿大奖', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:52', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('32', '2016-07-25', '1', '', '', '广东省体育彩票中心', '76', '', null, '加油中国', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:52', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('33', '2016-07-27', '1', '', '', '潮州市南方新视界传媒科技有限公司', '31', '潮州市南方新视界传媒科技有限公司', null, '建军节公益广告', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:53', '自主形象推广', null, 'N');
INSERT INTO `renkanshu` VALUES ('34', '2016-07-27', '1', '', '', '潮州市人民政府', '131', '潮州市南方新视界传媒科技有限公司', null, '潮州市人民政府征兵公益宣传广告', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:54', '政府公益广告 赠播一周', null, 'N');
INSERT INTO `renkanshu` VALUES ('35', '2016-07-27', '1', '', '', '潮州市蓝玥湾酒店有限公司', '22', '潮州市南方新视界传媒科技有限公司', null, '蓝玥湾酒店二楼宣传广告', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:54', '赠播一个月', null, 'N');
INSERT INTO `renkanshu` VALUES ('37', '2016-07-27', '1', '', '', '星湖国际', '1', '', null, '肇庆-星湖国际 星巴克 30秒 7.26', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:55', '租赁约定', null, 'N');
INSERT INTO `renkanshu` VALUES ('38', '2016-07-27', '1', '', '', '佛山壹弘商务服务有限公司', '8', '广州中海文化传播有限公司佛山分公司', null, '智慧新城', '刊户设计', 'AVI', '69351.00', '0.05', null, null, '2016-08-08 11:19:55', '稿件沿用旧稿', null, 'N');
INSERT INTO `renkanshu` VALUES ('39', '2016-07-27', '1', '', '', '友邦保险有限公司广东分公司', '79', '广东南方日报经营有限公司中山分公司', null, '友邦保险', '刊户设计', 'AVI', '80000.00', '0.09', null, null, '2016-08-08 11:19:56', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('40', '2016-07-28', '1', '0000109', '', '惠州市国土资源局', '131', '惠州市优友文化传播有限公司', null, '测绘日', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:56', '惠州-测绘法宣传日8.29  0728.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('41', '2016-07-27', '1', '', '', '深圳市星汇永成文化传播有限公司', '23', '', null, '罗志祥深圳演唱会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:19:57', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('42', '2016-07-21', '1', '', '', '广州市城市复建有限公司', '9', '广州市维策房地产咨询有限公司', null, '花城金沙汇', '刊户设计', 'AVI', '8605.71', '0.10', null, null, '2016-08-08 11:20:00', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('43', '2016-07-29', '1', '', '', '广州美年医疗门诊部有限公司', '27', '', null, '形象宣传', '刊户设计', 'AVI', '447300.00', '0.75', null, null, '2016-08-08 11:20:05', '置换合同 设计稿已给文威 体检卡', null, 'N');
INSERT INTO `renkanshu` VALUES ('44', '2016-08-28', '1', '', '', '华英城', '9', '', null, '肇庆-华英城 30秒 7.28', '刊户设计', 'AVI', '10159.11', '0.04', null, null, '2016-08-08 11:20:05', '按合同价41560平均至每天得出', null, 'N');
INSERT INTO `renkanshu` VALUES ('45', '2016-07-28', '1', '', '', '深圳市凤翔九天传媒有限公司', '9', '', null, '宏发地产 宏发世纪城', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:06', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('47', '2016-07-28', '1', '', '', '广州中森实力文化传播有限公司', '131', '', null, '广州市城管公益广告', '刊户设计', 'AVI', '15900.00', '0.04', null, null, '2016-08-08 11:20:07', '协议价', null, 'N');
INSERT INTO `renkanshu` VALUES ('48', '2016-07-28', '1', '', '', '广州橙氏公共关系咨询有限公司', '67', '', null, '珠江纯生啤酒派对', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:07', '北京路屏幕外墙维护影响了广告播放质量。现将北京路屏点更换为珠江新城西塔屏点，延期一周播放。', null, 'N');
INSERT INTO `renkanshu` VALUES ('50', '2016-07-29', '1', '0000110', '', '深港月饼', '82', '', null, '深港月饼', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:08', '惠州-深港月饼 0729.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('51', '2016-07-01', '1', '', '', '佛山市禅城区城市综合管理局', '23', '广州中海文化传播有限公司分公司', null, '台湾连锁品牌展览会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:11', '要求至少每十分钟播放一次', null, 'N');
INSERT INTO `renkanshu` VALUES ('52', '2016-08-01', '1', '', '', '佛山市禅城区城市综合管理局', '131', '广州中海文化传播有限公司佛山分公司', null, '红黑榜', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:11', '要求至少每10分钟播放一次，每个稿件分别重播60次', null, 'N');
INSERT INTO `renkanshu` VALUES ('54', '2016-07-02', '1', '', '', '中交南方投资发展有限公司', '8', '深圳创世文明文化传播有限公司', null, '中交汇通，横琴广场宣传片', '刊户设计', 'AVI', '180000.00', '0.06', null, null, '2016-08-08 11:20:12', '依合同付款方式结算 稿件已给设计', null, 'N');
INSERT INTO `renkanshu` VALUES ('55', '2016-07-04', '1', '', '', '深圳市星汇永成文化传播有限公司', '23', '', null, '张根硕深圳演唱会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:21', '稿件已给设计', null, 'N');
INSERT INTO `renkanshu` VALUES ('56', '2016-07-04', '1', '', '', '祈福', '8', '广州维策房地产咨询有限公司', null, '缤纷汇', '刊户设计', 'AVI', '8316.00', '0.10', null, null, '2016-08-08 11:20:20', '1折结算', null, 'N');
INSERT INTO `renkanshu` VALUES ('57', '2016-07-05', '1', '', '', '北京中博巨石文化传媒', '123', '', null, '电影片花《陆垚知马俐》', '刊户设计', 'AVI', '1400.00', '0.01', null, null, '2016-08-08 11:20:19', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('59', '2016-07-05', '1', '', '', '恒大城', '9', '广东南方新视界传媒科技有限公司', null, '恒大地产', '刊户设计', 'AVI', '15600.00', '1.00', null, null, '2016-08-08 11:20:18', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('60', '2016-07-05', '1', '', '', '中山市保险行业协会', '79', '广东南方日报经营有限公司中山分公司', null, '保险协会', '刊户设计', 'AVI', '2800.00', '0.06', null, null, '2016-08-08 11:20:16', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('61', '2016-07-01', '1', '', '', '珠海公元文化传播有限公司', '123', '', null, '大师傅', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:14', '珠海钰海屏幕第三合作方投放广告价格后补，稿件已给陈文威', null, 'N');
INSERT INTO `renkanshu` VALUES ('62', '2016-07-06', '1', '', '', '江门市丽宫国际酒店', '1', '', null, '丽宫月饼', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:13', '产品置换，双方协议置换13000元等价产品，稿件已发给文威', null, 'N');
INSERT INTO `renkanshu` VALUES ('64', '2016-07-07', '1', '0000102', '', '中国国旅', '122', '惠州市优友文化传播有限公司', null, '广州长隆', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:24', '惠州-长隆野生动物园 0707.WMV ', null, 'N');
INSERT INTO `renkanshu` VALUES ('65', '2016-07-07', '1', '', '', '雄峰城', '89', '', null, '雄蜂城', '刊户设计', 'AVI', '8316.00', '0.10', null, null, '2016-08-08 11:20:24', '电商合作1折结算', null, 'N');
INSERT INTO `renkanshu` VALUES ('66', '2016-07-07', '1', '', '', '华英城', '9', '', null, '肇庆-华英城 30秒 7.7', '刊户设计', 'AVI', '4156.00', '0.04', null, null, '2016-08-08 11:20:25', '价格按合同价 41560 平均每天得出 ', null, 'N');
INSERT INTO `renkanshu` VALUES ('67', '2016-07-08', '1', '0000103', '', '西湖丽日商场', '8', '惠州市优友文化传播有限公司', null, '惠州-西湖丽日商场周年庆', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:25', '惠州-西湖丽日商场周年庆 0708.WMV', null, 'N');
INSERT INTO `renkanshu` VALUES ('68', '2016-07-05', '1', '', '', '横琴金融传媒中心', '9', '南方都市报', null, '香江地产', '刊户设计', 'AVI', '59280.00', '0.10', null, null, '2016-08-08 11:20:31', '按1折结算', null, 'N');
INSERT INTO `renkanshu` VALUES ('69', '2016-07-11', '1', '', '', '深圳市星汇永成文化传播有限公司', '23', '', null, '许魏洲深圳演唱会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:31', '', null, 'N');
INSERT INTO `renkanshu` VALUES ('70', '2016-07-05', '1', '', '', '山木培训', '130', '', null, '山木培训', '刊户设计', 'AVI', '200000.00', '0.01', null, null, '2016-08-08 11:20:30', '业主特惠价 播放10个月付款100，000元，余款刊后一个月内付', null, 'N');
INSERT INTO `renkanshu` VALUES ('73', '2016-07-12', '1', '', '', '广州市群翥行企业管理咨询有限公司', '42', '', null, '美的空调', '刊户设计', 'AVI', '151648.00', '0.09', null, null, '2016-08-08 11:20:29', '稿件已发给文威', null, 'N');
INSERT INTO `renkanshu` VALUES ('74', '2016-07-13', '1', '', '', '中山市名凯装饰设计工程有限公司', '1', '广东南方日报经营有限公司中山分公司', null, '名凯装饰', '刊户设计', 'AVI', '15000.00', '0.06', null, null, '2016-08-08 11:20:27', '全额置换', null, 'N');
INSERT INTO `renkanshu` VALUES ('75', '2016-07-12', '1', '', '', '深圳市星汇永成文化传播有限公司', '23', '', null, '徐佳莹深圳演唱会', '刊户设计', 'AVI', '0.00', '0.00', null, null, '2016-08-08 11:20:27', '', null, 'N');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `url` varchar(50) NOT NULL,
  `parentName` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '运营概况', 'index', '运营概况');
INSERT INTO `resource` VALUES ('2', '认刊录入', 'renkantypein', '数据管理');
INSERT INTO `resource` VALUES ('3', '订单管理', 'dingdanguanli', '数据管理');
INSERT INTO `resource` VALUES ('4', '屏幕管理', 'pingmuguanli', '数据管理');
INSERT INTO `resource` VALUES ('5', '人员管理', 'renyuanguanli', '数据管理');
INSERT INTO `resource` VALUES ('6', '屏幕统计', 'pingmustatistic', '统计报表');
INSERT INTO `resource` VALUES ('7', '业绩统计', 'yejistatistic', '统计报表');
INSERT INTO `resource` VALUES ('8', '业务审核', 'yewuaudit', '业务审核');
INSERT INTO `resource` VALUES ('9', '屏幕资源', 'ledResource', '屏幕资源');
INSERT INTO `resource` VALUES ('10', '行业统计', 'hangyestatistic', '统计报表');
INSERT INTO `resource` VALUES ('11', '待审核订单', 'myAuditOrderListPage', '待审核订单');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `competence` bigint(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '-1', '超级管理员');
INSERT INTO `role` VALUES ('2', '4', '品控部');
INSERT INTO `role` VALUES ('3', '5', '领导');
INSERT INTO `role` VALUES ('4', '3', '助理');

-- ----------------------------
-- Table structure for role_resource
-- ----------------------------
DROP TABLE IF EXISTS `role_resource`;
CREATE TABLE `role_resource` (
  `role_id` smallint(6) NOT NULL,
  `resource_id` smallint(6) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`role_id`,`position`),
  KEY `FKE25F2DB79E53FF37` (`role_id`),
  KEY `FKE25F2DB7720D51B7` (`resource_id`),
  CONSTRAINT `role_resource_ibfk_1` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`),
  CONSTRAINT `role_resource_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_resource
-- ----------------------------
INSERT INTO `role_resource` VALUES ('1', '1', '1');
INSERT INTO `role_resource` VALUES ('3', '1', '1');
INSERT INTO `role_resource` VALUES ('1', '2', '3');
INSERT INTO `role_resource` VALUES ('2', '2', '2');
INSERT INTO `role_resource` VALUES ('4', '2', '1');
INSERT INTO `role_resource` VALUES ('1', '3', '4');
INSERT INTO `role_resource` VALUES ('2', '3', '3');
INSERT INTO `role_resource` VALUES ('4', '3', '2');
INSERT INTO `role_resource` VALUES ('1', '4', '5');
INSERT INTO `role_resource` VALUES ('1', '5', '6');
INSERT INTO `role_resource` VALUES ('1', '6', '7');
INSERT INTO `role_resource` VALUES ('3', '6', '2');
INSERT INTO `role_resource` VALUES ('1', '8', '8');
INSERT INTO `role_resource` VALUES ('2', '8', '1');
INSERT INTO `role_resource` VALUES ('1', '9', '2');
INSERT INTO `role_resource` VALUES ('2', '9', '4');
INSERT INTO `role_resource` VALUES ('3', '9', '3');
INSERT INTO `role_resource` VALUES ('4', '9', '3');
INSERT INTO `role_resource` VALUES ('1', '10', '9');
INSERT INTO `role_resource` VALUES ('2', '10', '5');
INSERT INTO `role_resource` VALUES ('3', '10', '4');
INSERT INTO `role_resource` VALUES ('4', '10', '4');
INSERT INTO `role_resource` VALUES ('1', '11', '10');
INSERT INTO `role_resource` VALUES ('2', '11', '6');
INSERT INTO `role_resource` VALUES ('4', '11', '5');

-- ----------------------------
-- Table structure for shoukuan
-- ----------------------------
DROP TABLE IF EXISTS `shoukuan`;
CREATE TABLE `shoukuan` (
  `sk_id` int(11) NOT NULL AUTO_INCREMENT,
  `sk_renkanbianhao` varchar(50) NOT NULL,
  `sk_ywyid` int(11) NOT NULL,
  `sk_mingcheng` varchar(140) NOT NULL,
  `sk_shoukuanjine` decimal(12,0) NOT NULL,
  `sk_shoukuanshijian` date NOT NULL,
  `sk_shoukuanfangshi` varchar(10) NOT NULL,
  `sk_shoukuanbeizhu` varchar(500) DEFAULT NULL,
  `sk_shenheren` varchar(8) DEFAULT NULL,
  `sk_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`sk_id`,`sk_timestamp`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoukuan
-- ----------------------------
INSERT INTO `shoukuan` VALUES ('1', '111111', '1', '第1期', '80000000', '2016-07-08', '现金', ' 78', '78', '2016-07-08 17:16:29');
INSERT INTO `shoukuan` VALUES ('14', '111111', '1', '第2期', '12000000', '2016-07-18', '现金', null, null, '2016-07-18 17:38:05');

-- ----------------------------
-- Table structure for yewu
-- ----------------------------
DROP TABLE IF EXISTS `yewu`;
CREATE TABLE `yewu` (
  `yewu_id` int(11) NOT NULL AUTO_INCREMENT,
  `renkanbianhao` varchar(50) NOT NULL,
  `kanhu` varchar(140) NOT NULL,
  `guanggaoneirong` varchar(150) DEFAULT NULL,
  `industry` smallint(6) DEFAULT NULL,
  `leixing` varchar(25) NOT NULL,
  `ywy_id` int(11) NOT NULL,
  `led` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shichang` int(11) unsigned NOT NULL,
  `pinci` int(11) unsigned NOT NULL,
  `kaishishijian` date NOT NULL,
  `jieshushijian` date NOT NULL,
  `shuliang` int(11) unsigned NOT NULL,
  `kanlijiaxiaoji` decimal(12,2) DEFAULT NULL,
  `shiduan` varchar(25) DEFAULT NULL,
  `yewu_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createTimestamp` datetime DEFAULT NULL,
  `createYwy_id` int(11) DEFAULT NULL,
  `alterTimestamp` datetime DEFAULT NULL,
  `alterYwy_id` int(11) DEFAULT NULL,
  `auditTimestamp` datetime DEFAULT NULL,
  `auditYwy_id` int(11) DEFAULT NULL,
  `state` char(1) DEFAULT NULL COMMENT '订单的两个状态：N-->正常，U-->下画，D-->删除',
  PRIMARY KEY (`yewu_id`),
  KEY `yewu_led_fk_ledid` (`led`),
  KEY `yewu_ywy_fk_ywyid` (`ywy_id`),
  KEY `yewu_renkanshu_fk_renkanbianhao` (`renkanbianhao`),
  KEY `yewu_create_fk_ywyid` (`createYwy_id`),
  KEY `yewu_alter_fk_ywyid` (`alterYwy_id`),
  KEY `yewu_audit_fk_ywyid` (`auditYwy_id`),
  KEY `yewu_industry_fk` (`industry`),
  CONSTRAINT `yewu_alter_fk_ywyid` FOREIGN KEY (`alterYwy_id`) REFERENCES `yewuyuan` (`ywy_id`),
  CONSTRAINT `yewu_audit_fk_ywyid` FOREIGN KEY (`auditYwy_id`) REFERENCES `yewuyuan` (`ywy_id`),
  CONSTRAINT `yewu_create_fk_ywyid` FOREIGN KEY (`createYwy_id`) REFERENCES `yewuyuan` (`ywy_id`),
  CONSTRAINT `yewu_industry_fk` FOREIGN KEY (`industry`) REFERENCES `industry` (`industryID`),
  CONSTRAINT `yewu_led_fk` FOREIGN KEY (`led`) REFERENCES `led` (`led_id`),
  CONSTRAINT `yewu_renkanshu_fk_renkanbianhao` FOREIGN KEY (`renkanbianhao`) REFERENCES `renkanshu` (`renkanbianhao`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `yewu_ywy_fk_ywyid` FOREIGN KEY (`ywy_id`) REFERENCES `yewuyuan` (`ywy_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=293 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yewu
-- ----------------------------
INSERT INTO `yewu` VALUES ('59', '01', '中山市富逸装饰广场', '富逸装饰广场', '59', '商业广告', '1', '702', '10', '60', '2016-07-16', '2016-07-30', '2', '50142.00', null, '2016-08-15 15:48:12', '2016-08-04 00:00:00', '36', '2016-08-15 00:00:00', '36', '2016-08-04 17:32:11', '36', 'N');
INSERT INTO `yewu` VALUES ('60', '02', '广州桦森影视有限公司', '珠光地产项目广告', '8', '商业广告', '1', '101', '15', '60', '2016-07-18', '2016-08-28', '6', '712800.00', null, '2016-08-11 11:28:38', '2016-08-04 00:00:00', '36', null, null, '2016-08-04 17:32:11', '36', 'N');
INSERT INTO `yewu` VALUES ('61', '02', '广州桦森影视有限公司', '珠光地产项目广告', '8', '商业广告', '1', '103', '15', '60', '2016-07-18', '2016-08-28', '6', '496800.00', null, '2016-08-11 11:28:38', '2016-08-04 00:00:00', '36', null, null, '2016-08-04 17:32:12', '36', 'N');
INSERT INTO `yewu` VALUES ('62', '02', '广州桦森影视有限公司', '珠光地产项目广告', '8', '商业广告', '1', '105', '15', '60', '2016-07-18', '2016-08-28', '6', '480000.00', null, '2016-08-11 11:28:59', '2016-08-04 00:00:00', '36', null, null, '2016-08-04 17:32:12', '36', 'N');
INSERT INTO `yewu` VALUES ('63', '03', '潮州市南方新视界传媒科技有限公司', '南方新视界传媒科技有限公司自主形象推广宣传片', '31', '商业广告', '1', 'B02', '15', '30', '2016-07-16', '2016-12-31', '24', '0.00', null, '2016-08-11 11:29:10', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('64', '04', '珠海市公园文化传播有限公司', '珠海奥园广场', '8', '商业广告', '1', '501', '15', '60', '2016-07-15', '2016-08-29', '2', '0.00', null, '2016-08-11 11:29:28', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('65', '05', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '404', '15', '60', '2016-07-18', '2016-08-14', '4', '232000.00', null, '2016-08-11 11:29:29', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('66', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '101', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:30', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('67', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '105', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:30', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('68', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '103', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:33', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('69', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '104', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:34', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('70', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '202', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:34', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('71', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '203', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:35', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('72', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '402', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:36', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:41:52', '36', 'N');
INSERT INTO `yewu` VALUES ('73', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '301', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:36', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('74', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '702', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:37', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('75', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '701', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:37', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('76', '06', '广东省体育彩票中心', '体彩大乐透', '128', '商业广告', '1', '501', '15', '60', '2016-07-18', '2016-08-14', '4', '0.00', null, '2016-08-11 11:29:38', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('77', '07', '广州荃森贸易有限公司', '必胜饮料形象宣传', '104', '商业广告', '1', '103', '15', '60', '2016-07-06', '2016-09-09', '8', '331200.00', null, '2016-08-11 11:29:55', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('78', '08', '深圳市星汇永城文化传播有限公司', '哆啦A梦', '32', '商业广告', '1', '201', '15', '60', '2016-07-16', '2016-07-22', '1', '0.00', null, '2016-08-11 11:30:04', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('79', '08', '深圳市星汇永城文化传播有限公司', '哆啦A梦', '32', '商业广告', '1', '202', '15', '60', '2016-07-16', '2016-07-22', '1', '0.00', null, '2016-08-11 11:30:08', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('80', '08', '深圳市星汇永城文化传播有限公司', '哆啦A梦', '32', '商业广告', '1', '203', '15', '60', '2016-07-16', '2016-07-22', '1', '0.00', null, '2016-08-11 11:30:13', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('81', '09', '创森办', '肇庆-创森办A片10秒7.15       肇庆-创森办B片10秒7.15     肇庆-创森办C片10秒7.15    肇庆-创森办D片23秒7.15', '1', '商业广告', '1', '901', '60', '30', '2016-07-18', '2016-10-17', '13', '555864.00', null, '2016-08-11 11:30:21', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('82', '010', '中山市广播电视大学', '中山市广播电视大学', '129', '商业广告', '1', '702', '15', '60', '2016-07-19', '2016-09-17', '8', '308571.00', null, '2016-08-11 11:27:49', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:21', '36', 'N');
INSERT INTO `yewu` VALUES ('83', '011', '深圳市凤翔九天传媒有限公司', '深圳市兴海腾楗投资发展有限公司  心海城', '8', '商业广告', '1', '202', '15', '60', '2016-07-17', '2016-10-09', '12', '0.00', null, '2016-08-11 11:27:52', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:37', '36', 'N');
INSERT INTO `yewu` VALUES ('84', '011', '深圳市凤翔九天传媒有限公司', '深圳市兴海腾楗投资发展有限公司  心海城', '8', '商业广告', '1', '201', '15', '60', '2016-07-17', '2016-10-09', '12', '0.00', null, '2016-08-11 11:27:53', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:37', '36', 'N');
INSERT INTO `yewu` VALUES ('85', '011', '深圳市凤翔九天传媒有限公司', '深圳市兴海腾楗投资发展有限公司  心海城', '8', '商业广告', '1', '203', '15', '60', '2016-07-17', '2016-10-09', '12', '0.00', null, '2016-08-11 11:28:27', '2016-08-04 00:00:00', '36', null, null, '2016-08-05 10:44:37', '36', 'N');
INSERT INTO `yewu` VALUES ('86', '012', '中国国旅', '惠州 中国国旅 长隆', '122', '商业广告', '1', '601', '15', '30', '2016-07-19', '2016-07-25', '1', '55965.00', null, '2016-08-11 11:28:36', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 10:44:37', '36', 'N');
INSERT INTO `yewu` VALUES ('87', '13', '广州唯远广告有限公司', '粤秀医院', '103', '商业广告', '1', '101', '15', '60', '2016-07-20', '2016-07-26', '1', '108000.00', null, '2016-08-11 11:30:27', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('88', '13', '广州唯远广告有限公司', '粤秀医院', '103', '商业广告', '1', '105', '15', '60', '2016-07-20', '2016-07-26', '1', '80000.00', null, '2016-08-11 11:30:36', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('89', '14', '深圳市星汇永成文化传播有限公司', '封神传奇', '1', '商业广告', '1', '201', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:30:37', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('90', '14', '深圳市星汇永成文化传播有限公司', '封神传奇', '1', '商业广告', '1', '202', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:30:38', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('91', '14', '深圳市星汇永成文化传播有限公司', '封神传奇', '1', '商业广告', '1', '203', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:30:45', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('92', '15', '端州名门', '肇庆-端州名门32秒 7.19', '60', '商业广告', '1', '901', '30', '60', '2016-07-20', '2016-07-26', '1', '76608.00', null, '2016-08-11 11:30:52', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('93', '16', '安骅凯迪拉克', '惠州凯迪拉克', '55', '商业广告', '1', '601', '10', '90', '2016-07-21', '2016-08-20', '4', '0.00', null, '2016-08-11 11:31:03', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('94', '17', '安骅凯迪拉克', '惠州 凯迪拉克', '55', '商业广告', '1', '601', '10', '120', '2016-07-22', '2016-08-21', '4', '0.00', null, '2016-08-11 11:38:23', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('95', '18', '中山市委宣传部', '“四个定位”', '131', '商业广告', '1', '702', '30', '30', '2016-07-22', '2016-10-19', '13', '474428.00', null, '2016-08-11 11:38:25', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('96', '19', '中山市委宣传部', '“换届”', '131', '商业广告', '1', '702', '5', '30', '2016-07-20', '2016-08-22', '4', '39960.00', null, '2016-08-11 11:38:27', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:15', '36', 'N');
INSERT INTO `yewu` VALUES ('97', '20', '佛山市禅城区城市综合管理局', '社会主义核心价值', '131', '公益广告', '1', '301', '15', '60', '2016-07-22', '2016-08-31', '6', '0.00', null, '2016-08-11 11:38:41', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('98', '21', '江门合宏奥迪', '江门合宏奥迪', '55', '商业广告', '1', '801', '30', '90', '2016-07-22', '2016-08-18', '4', '383760.00', null, '2016-08-11 11:38:42', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('99', '21', '江门合宏奥迪', '江门合宏奥迪', '55', '商业广告', '1', '802', '30', '90', '2016-07-22', '2016-08-18', '4', '383760.00', null, '2016-08-11 11:38:48', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('100', '22', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '互赠广告', '1', '101', '15', '60', '2016-07-25', '2016-07-31', '1', '118800.00', null, '2016-08-11 11:38:49', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('101', '22', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '互赠广告', '1', '105', '15', '60', '2016-07-25', '2016-07-31', '1', '80000.00', null, '2016-08-11 11:38:50', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('102', '22', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '互赠广告', '1', '201', '15', '60', '2016-07-25', '2016-07-31', '1', '54600.00', null, '2016-08-11 11:38:50', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('103', '22', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '互赠广告', '1', '203', '15', '60', '2016-07-25', '2016-07-31', '1', '59800.00', null, '2016-08-11 11:38:51', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('104', '23', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '商业广告', '1', '101', '15', '60', '2016-08-01', '2016-08-07', '1', '118800.00', null, '2016-08-11 11:38:52', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('105', '23', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '商业广告', '1', '105', '15', '60', '2016-08-01', '2016-08-07', '1', '80000.00', null, '2016-08-11 11:38:52', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('106', '23', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '商业广告', '1', '201', '15', '60', '2016-08-01', '2016-08-07', '1', '54600.00', null, '2016-08-11 11:38:53', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:22', '36', 'N');
INSERT INTO `yewu` VALUES ('107', '23', '上海展迎商贸有限公司', '香港日置名媛美容形象宣传', '33', '商业广告', '1', '203', '15', '60', '2016-08-01', '2016-08-07', '1', '59800.00', null, '2016-08-11 11:38:54', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('108', '24', '广州橙氏公共关系咨询有限公司', '珠江纯生啤酒派对', '67', '商业广告', '1', '101', '15', '30', '2016-07-26', '2016-08-01', '1', '83160.00', null, '2016-08-11 11:39:03', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('109', '24', '广州橙氏公共关系咨询有限公司', '珠江纯生啤酒派对', '67', '商业广告', '1', '102', '15', '30', '2016-07-26', '2016-08-01', '1', '57960.00', null, '2016-08-11 11:39:04', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('110', '24', '广州橙氏公共关系咨询有限公司', '珠江纯生啤酒派对', '67', '商业广告', '1', '105', '15', '30', '2016-07-26', '2016-08-01', '1', '57960.00', null, '2016-08-11 11:39:06', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('111', '24', '广州橙氏公共关系咨询有限公司', '珠江纯生啤酒派对', '67', '商业广告', '1', '103', '15', '30', '2016-07-26', '2016-08-01', '1', '27300.00', null, '2016-08-11 11:39:07', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('112', '24', '广州橙氏公共关系咨询有限公司', '珠江纯生啤酒派对', '67', '商业广告', '1', '104', '15', '30', '2016-07-26', '2016-08-01', '1', '56000.00', null, '2016-08-11 11:39:19', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('113', '25', '惠州苹果装饰', '惠州 苹果装饰', '59', '商业广告', '1', '601', '15', '120', '2016-07-26', '2016-08-25', '4', '0.00', null, '2016-08-11 11:39:26', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('114', '27', '华贸天地', '惠州 华贸天地', '1', '商业广告', '1', '601', '10', '90', '2016-07-26', '2016-08-01', '1', '0.00', null, '2016-08-11 11:39:37', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('115', '28', '深圳市星汇永成文化传播有限公司', 'IU深圳演唱会', '124', '商业广告', '1', '201', '15', '60', '2016-07-27', '2016-08-23', '4', '0.00', null, '2016-08-11 11:39:38', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('116', '28', '深圳市星汇永成文化传播有限公司', 'IU深圳演唱会', '124', '商业广告', '1', '202', '15', '60', '2016-07-27', '2016-08-23', '4', '0.00', null, '2016-08-11 11:39:39', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:28', '36', 'N');
INSERT INTO `yewu` VALUES ('117', '28', '深圳市星汇永成文化传播有限公司', 'IU深圳演唱会', '124', '商业广告', '1', '203', '15', '60', '2016-07-27', '2016-08-23', '4', '0.00', null, '2016-08-11 11:39:40', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:34', '36', 'N');
INSERT INTO `yewu` VALUES ('118', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', '1', '101', '15', '90', '2016-07-28', '2016-08-21', '4', '501428.00', null, '2016-08-11 11:39:48', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:34', '36', 'N');
INSERT INTO `yewu` VALUES ('119', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', '1', '105', '15', '30', '2016-07-28', '2016-08-21', '4', '371428.00', null, '2016-08-11 11:39:49', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:34', '36', 'N');
INSERT INTO `yewu` VALUES ('120', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', '1', '103', '15', '30', '2016-07-28', '2016-08-21', '4', '384428.00', null, '2016-08-11 11:39:53', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:34', '36', 'N');
INSERT INTO `yewu` VALUES ('121', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', '1', '201', '15', '30', '2016-07-28', '2016-08-21', '4', '253500.00', null, '2016-08-15 15:49:05', '2016-08-05 00:00:00', '36', '2016-08-15 00:00:00', '36', '2016-08-15 15:45:38', '36', 'N');
INSERT INTO `yewu` VALUES ('122', '29', '网易传媒科技有限公司', '网易', '90', '商业广告', '1', '203', '15', '30', '2016-07-28', '2016-08-20', '4', '266537.00', null, '2016-08-11 11:40:04', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:34', '36', 'N');
INSERT INTO `yewu` VALUES ('123', '30', '金诃藏药馆', '惠州 金诃藏药馆', '101', '商业广告', '1', '601', '15', '120', '2016-07-27', '2016-10-05', '10', '0.00', null, '2016-08-11 11:40:11', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 12:23:34', '36', 'N');
INSERT INTO `yewu` VALUES ('124', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '101', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:13', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('125', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '105', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:14', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('126', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '103', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:15', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('127', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '104', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:15', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('128', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '202', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:16', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('129', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '203', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:16', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('130', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '402', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:20', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('131', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '301', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:20', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('132', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '702', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:21', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('133', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '701', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:22', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:08:40', '36', 'N');
INSERT INTO `yewu` VALUES ('134', '31', '广东省体育彩票中心', '体彩大乐透2.14亿大奖', '128', '商业广告', '1', '501', '15', '60', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:40:29', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('135', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '101', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:30', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('136', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '105', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:31', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('137', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '103', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:31', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('138', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '104', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:32', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('139', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '202', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:32', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('140', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '203', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:33', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('141', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '402', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:34', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('142', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '301', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:35', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('143', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '702', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:38', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:10:14', '36', 'N');
INSERT INTO `yewu` VALUES ('144', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '701', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:40:39', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('145', '32', '广东省体育彩票中心', '加油中国', '76', '商业广告', '1', '501', '15', '60', '2016-07-28', '2016-08-10', '2', '0.00', null, '2016-08-11 11:41:42', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('146', '33', '潮州市南方新视界传媒科技有限公司', '建军节公益广告', '31', '公益广告', '1', 'B02', '15', '60', '2016-07-31', '2016-08-01', '0', '0.00', null, '2016-08-11 11:41:51', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('147', '34', '潮州市人民政府', '潮州市人民政府征兵公益宣传广告', '131', '赠播广告', '1', 'B02', '15', '60', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:41:59', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('148', '35', '潮州市蓝玥湾酒店有限公司', '蓝玥湾酒店二楼宣传广告', '22', '赠播广告', '1', 'B02', '15', '60', '2016-07-29', '2016-08-28', '4', '0.00', null, '2016-08-11 11:42:09', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('149', '37', '星湖国际', '肇庆-星湖国际 星巴克 30秒 7.26', '1', '赠播广告', '1', '901', '30', '30', '2016-07-28', '2016-08-25', '4', '0.00', null, '2016-08-11 11:42:16', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('150', '38', '佛山壹弘商务服务有限公司', '智慧新城', '8', '商业广告', '1', '301', '15', '120', '2016-07-30', '2017-01-31', '17', '1541142.86', null, '2016-08-11 11:42:17', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('151', '39', '友邦保险有限公司广东分公司', '友邦保险', '79', '商业广告', '1', '702', '15', '30', '2016-08-29', '2017-03-25', '34', '864000.00', null, '2016-08-11 11:42:28', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('152', '40', '惠州市国土资源局', '测绘日', '131', '公益广告', '1', '601', '5', '120', '2016-07-30', '2016-08-30', '4', '0.00', null, '2016-08-11 11:42:43', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('153', '41', '深圳市星汇永成文化传播有限公司', '罗志祥深圳演唱会', '23', '赠播广告', '1', '201', '15', '60', '2016-07-29', '2016-08-11', '2', '0.00', null, '2016-08-11 11:42:43', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:14', '36', 'N');
INSERT INTO `yewu` VALUES ('154', '41', '深圳市星汇永成文化传播有限公司', '罗志祥深圳演唱会', '23', '赠播广告', '1', '202', '15', '60', '2016-07-29', '2016-08-11', '2', '0.00', null, '2016-08-11 11:42:44', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('155', '41', '深圳市星汇永成文化传播有限公司', '罗志祥深圳演唱会', '23', '赠播广告', '1', '203', '15', '60', '2016-07-29', '2016-08-11', '2', '0.00', null, '2016-08-11 11:42:50', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('156', '42', '广州市城市复建有限公司', '花城金沙汇', '9', '商业广告', '1', '101', '15', '60', '2016-08-01', '2016-08-01', '1', '16857.00', null, '2016-08-11 11:42:51', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('157', '42', '广州市城市复建有限公司', '花城金沙汇', '9', '商业广告', '1', '101', '15', '60', '2016-08-03', '2016-08-03', '1', '16857.00', null, '2016-08-11 11:42:52', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('158', '42', '广州市城市复建有限公司', '花城金沙汇', '9', '商业广告', '1', '101', '15', '60', '2016-08-05', '2016-08-05', '1', '16857.00', null, '2016-08-11 11:42:52', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('159', '42', '广州市城市复建有限公司', '花城金沙汇', '9', '商业广告', '1', '103', '15', '60', '2016-08-01', '2016-08-01', '1', '11828.00', null, '2016-08-11 11:42:53', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('160', '42', '广州市城市复建有限公司', '花城金沙汇', '9', '商业广告', '1', '103', '15', '60', '2016-08-03', '2016-08-03', '1', '11828.00', null, '2016-08-11 11:42:54', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('161', '42', '广州市城市复建有限公司', '花城金沙汇', '9', '商业广告', '1', '103', '15', '60', '2016-08-05', '2016-08-05', '1', '11828.00', null, '2016-08-11 11:43:04', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('162', '43', '广州美年医疗门诊部有限公司', '形象宣传', '27', '商业广告', '1', '101', '15', '60', '2016-08-01', '2016-08-21', '3', '356400.00', null, '2016-08-11 11:43:05', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('163', '43', '广州美年医疗门诊部有限公司', '形象宣传', '27', '商业广告', '1', '105', '15', '60', '2016-08-01', '2016-08-21', '3', '240000.00', null, '2016-08-11 11:43:22', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:22', '36', 'N');
INSERT INTO `yewu` VALUES ('164', '44', '华英城', '肇庆-华英城 30秒 7.28', '9', '商业广告', '1', '901', '30', '60', '2016-07-29', '2016-08-13', '3', '263340.00', null, '2016-08-11 11:43:22', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('165', '45', '深圳市凤翔九天传媒有限公司', '宏发地产 宏发世纪城', '9', '商业广告', '1', '202', '15', '120', '2016-07-29', '2016-08-29', '5', '0.00', null, '2016-08-11 11:43:30', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('166', '47', '广州中森实力文化传播有限公司', '广州市城管公益广告', '131', '商业广告', '1', '101', '60', '30', '2016-08-01', '2016-08-07', '1', '271161.00', null, '2016-08-11 11:43:31', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('167', '47', '广州中森实力文化传播有限公司', '广州市城管公益广告', '131', '商业广告', '1', '105', '60', '30', '2016-08-01', '2016-08-07', '1', '182600.00', null, '2016-08-11 11:43:38', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('168', '48', '广州橙氏公共关系咨询有限公司', '珠江纯生啤酒派对', '67', '赠播广告', '1', '103', '15', '30', '2016-08-02', '2016-08-08', '1', '0.00', null, '2016-08-11 11:43:44', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('169', '50', '深港月饼', '深港月饼', '82', '商业广告', '1', '601', '10', '120', '2016-08-01', '2016-08-31', '4', '0.00', null, '2016-08-11 11:43:56', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('170', '51', '佛山市禅城区城市综合管理局', '台湾连锁品牌展览会', '23', '商业广告', '1', '301', '15', '60', '2016-07-05', '2016-07-10', '1', '0.00', null, '2016-08-11 11:44:02', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('171', '52', '佛山市禅城区城市综合管理局', '红黑榜', '131', '公益广告', '1', '301', '30', '120', '2016-07-05', '2016-07-06', '1', '0.00', null, '2016-08-11 11:44:08', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('172', '54', '中交南方投资发展有限公司', '中交汇通，横琴广场宣传片', '8', '商业广告', '1', '501', '15', '120', '2016-07-05', '2017-07-04', '52', '3016000.00', null, '2016-08-11 11:44:14', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('173', '55', '深圳市星汇永成文化传播有限公司', '张根硕深圳演唱会', '23', '商业广告', '1', '201', '15', '60', '2016-07-08', '2016-07-21', '2', '0.00', null, '2016-08-11 11:44:15', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:33', '36', 'N');
INSERT INTO `yewu` VALUES ('174', '55', '深圳市星汇永成文化传播有限公司', '张根硕深圳演唱会', '23', '商业广告', '1', '202', '15', '60', '2016-07-08', '2016-07-21', '2', '0.00', null, '2016-08-11 11:44:16', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('175', '55', '深圳市星汇永成文化传播有限公司', '张根硕深圳演唱会', '23', '商业广告', '1', '203', '15', '60', '2016-07-08', '2016-07-21', '2', '0.00', null, '2016-08-11 11:44:17', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('176', '56', '祈福', '缤纷汇', '8', '商业广告', '1', '101', '15', '30', '2016-07-06', '2016-08-12', '1', '83160.00', null, '2016-08-11 11:44:30', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('177', '57', '北京中博巨石文化传媒', '电影片花《陆垚知马俐》', '123', '商业广告', '1', '402', '15', '60', '2016-07-07', '2016-07-20', '2', '96000.00', null, '2016-08-11 11:44:41', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('178', '59', '恒大城', '恒大地产', '9', '商业广告', '1', 'C01', '30', '90', '2016-07-08', '2016-09-08', '15', '15600.00', null, '2016-08-11 11:45:28', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('179', '60', '中山市保险行业协会', '保险协会', '79', '商业广告', '1', '702', '10', '30', '2016-07-07', '2016-08-01', '4', '45195.00', null, '2016-08-11 11:46:58', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('180', '61', '珠海公元文化传播有限公司', '大师傅', '123', '商业广告', '1', '501', '15', '60', '2016-07-06', '2016-08-05', '4', '0.00', null, '2016-08-11 11:47:04', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('181', '62', '江门市丽宫国际酒店', '丽宫月饼', '1', '互赠广告', '1', '801', '15', '60', '2016-07-08', '2016-09-01', '8', '0.00', null, '2016-08-11 11:47:06', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('182', '62', '江门市丽宫国际酒店', '丽宫月饼', '1', '互赠广告', '1', '802', '15', '60', '2016-07-08', '2016-09-01', '8', '0.00', null, '2016-08-11 11:47:17', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('183', '64', '中国国旅', '广州长隆', '122', '商业广告', '1', '601', '10', '60', '2016-07-11', '2016-07-17', '1', '0.00', null, '2016-08-11 11:47:24', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:14:56', '36', 'N');
INSERT INTO `yewu` VALUES ('184', '65', '雄峰城', '雄蜂城', '89', '商业广告', '1', '101', '15', '30', '2016-07-11', '2016-07-17', '1', '83160.00', null, '2016-08-11 11:47:31', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('185', '66', '华英城', '肇庆-华英城 30秒 7.7', '9', '商业广告', '1', '901', '30', '60', '2016-07-09', '2016-07-17', '1', '107730.00', null, '2016-08-11 11:47:36', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('186', '67', '西湖丽日商场', '惠州-西湖丽日商场周年庆', '8', '商业广告', '1', '601', '10', '120', '2016-07-09', '2016-07-16', '1', '0.00', null, '2016-08-11 11:47:44', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('187', '68', '横琴金融传媒中心', '香江地产', '9', '商业广告', '1', '101', '15', '60', '2016-07-12', '2016-07-25', '2', '237600.00', null, '2016-08-11 11:47:45', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('188', '68', '横琴金融传媒中心', '香江地产', '9', '商业广告', '1', '201', '15', '60', '2016-07-12', '2016-07-25', '2', '109200.00', null, '2016-08-11 11:47:46', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('189', '68', '横琴金融传媒中心', '香江地产', '9', '商业广告', '1', '501', '15', '60', '2016-07-12', '2016-08-01', '3', '174000.00', null, '2016-08-11 11:47:46', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('190', '68', '横琴金融传媒中心', '香江地产', '9', '商业广告', '1', '701', '15', '60', '2016-07-12', '2016-07-25', '2', '72000.00', null, '2016-08-11 11:47:47', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('191', '69', '深圳市星汇永成文化传播有限公司', '许魏洲深圳演唱会', '23', '商业广告', '1', '201', '15', '60', '2016-07-13', '2016-07-26', '2', '0.00', null, '2016-08-11 11:48:12', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('192', '69', '深圳市星汇永成文化传播有限公司', '许魏洲深圳演唱会', '23', '商业广告', '1', '202', '15', '60', '2016-07-13', '2016-07-26', '2', '0.00', null, '2016-08-11 11:48:04', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('193', '69', '深圳市星汇永成文化传播有限公司', '许魏洲深圳演唱会', '23', '商业广告', '1', '203', '15', '60', '2016-07-13', '2016-07-26', '2', '0.00', null, '2016-08-11 11:48:03', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:04', '36', 'N');
INSERT INTO `yewu` VALUES ('194', '70', '山木培训', '山木培训', '130', '商业广告', '1', '204', '10', '120', '2015-09-05', '2016-09-04', '52', '31616000.00', null, '2016-08-11 11:48:19', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('195', '73', '广州市群翥行企业管理咨询有限公司', '美的空调', '42', '商业广告', '1', '101', '15', '120', '2016-07-14', '2016-08-10', '4', '760320.00', null, '2016-08-11 11:48:20', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('196', '73', '广州市群翥行企业管理咨询有限公司', '美的空调', '42', '商业广告', '1', '105', '15', '120', '2016-07-14', '2016-08-10', '4', '512000.00', null, '2016-08-11 11:48:21', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('197', '73', '广州市群翥行企业管理咨询有限公司', '美的空调', '42', '商业广告', '1', '802', '15', '120', '2016-07-14', '2016-08-10', '4', '230400.00', null, '2016-08-11 11:48:21', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('198', '73', '广州市群翥行企业管理咨询有限公司', '美的空调', '42', '商业广告', '1', '801', '15', '120', '2016-07-14', '2016-08-10', '4', '230400.00', null, '2016-08-11 11:48:29', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('199', '74', '中山市名凯装饰设计工程有限公司', '名凯装饰', '1', '互赠广告', '1', '702', '15', '60', '2016-07-15', '2016-08-29', '6', '231428.00', null, '2016-08-11 11:48:30', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('200', '75', '深圳市星汇永成文化传播有限公司', '徐佳莹深圳演唱会', '23', '商业广告', '1', '201', '15', '60', '2016-07-14', '2016-08-06', '3', '0.00', null, '2016-08-11 11:48:00', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('201', '75', '深圳市星汇永成文化传播有限公司', '徐佳莹深圳演唱会', '23', '商业广告', '1', '202', '15', '60', '2016-07-14', '2016-08-06', '3', '0.00', null, '2016-08-11 11:48:00', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('202', '75', '深圳市星汇永成文化传播有限公司', '徐佳莹深圳演唱会', '23', '商业广告', '1', '203', '15', '60', '2016-07-14', '2016-08-06', '3', '0.00', null, '2016-08-11 11:47:59', '2016-08-05 00:00:00', '36', null, null, '2016-08-05 16:15:12', '36', 'N');
INSERT INTO `yewu` VALUES ('203', '1688101', '惠州优友文化公司', '中国国旅-长隆水上乐园', '125', '赠播广告', '1', '601', '30', '30', '2016-07-08', '2016-07-09', '1', '0.00', null, '2016-08-11 11:32:57', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('204', '1688001', '郁金香', '中国移动', '64', '赠播广告', '1', '202', '30', '30', '2016-07-19', '2016-07-20', '1', '0.00', null, '2016-08-11 11:31:09', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('205', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '101', '15', '60', '2016-07-06', '2016-07-12', '1', '118800.00', null, '2016-08-11 11:32:58', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('206', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '103', '15', '60', '2016-07-06', '2016-07-12', '1', '82800.00', null, '2016-08-11 11:32:59', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('207', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '201', '15', '60', '2016-07-06', '2016-07-12', '1', '54600.00', null, '2016-08-11 11:32:59', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('208', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '301', '15', '60', '2016-07-06', '2016-07-12', '1', '58000.00', null, '2016-08-11 11:33:00', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('209', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '402', '15', '60', '2016-07-06', '2016-07-12', '1', '48000.00', null, '2016-08-11 11:33:04', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:37', '36', 'N');
INSERT INTO `yewu` VALUES ('210', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '501', '15', '60', '2016-07-06', '2016-07-12', '1', '58000.00', null, '2016-08-11 11:33:04', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:38', '36', 'N');
INSERT INTO `yewu` VALUES ('211', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '701', '15', '60', '2016-07-06', '2016-07-12', '1', '36000.00', null, '2016-08-11 11:33:05', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:38', '36', 'N');
INSERT INTO `yewu` VALUES ('212', '1688102', '奥一网', '南都自媒体', '31', '赠播广告', '1', '801', '15', '60', '2016-07-06', '2016-07-12', '1', '36000.00', null, '2016-08-11 11:33:07', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:38', '36', 'N');
INSERT INTO `yewu` VALUES ('213', '1688103', '天安数码城', '天安数码城', '4', '赠播广告', '1', '402', '15', '60', '2016-07-06', '2016-08-05', '4', '0.00', null, '2016-08-11 11:34:21', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:47', '36', 'N');
INSERT INTO `yewu` VALUES ('214', '1688104', '大粤网', '腾讯房产珠海站', '9', '赠播广告', '1', '501', '15', '60', '2016-07-08', '2016-07-14', '1', '58000.00', null, '2016-08-11 11:34:41', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:47', '36', 'N');
INSERT INTO `yewu` VALUES ('215', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '赠播广告', '1', '101', '15', '60', '2016-07-21', '2016-08-25', '5', '0.00', null, '2016-08-11 11:31:11', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:47', '36', 'N');
INSERT INTO `yewu` VALUES ('216', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '赠播广告', '1', '105', '15', '60', '2016-07-21', '2016-08-25', '5', '0.00', null, '2016-08-11 11:31:12', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:47', '36', 'N');
INSERT INTO `yewu` VALUES ('217', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '赠播广告', '1', '103', '15', '60', '2016-07-21', '2016-08-25', '5', '0.00', null, '2016-08-11 11:31:12', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:48', '36', 'N');
INSERT INTO `yewu` VALUES ('218', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '商业广告', '1', '203', '15', '60', '2016-07-21', '2016-08-25', '4', '0.00', null, '2016-08-11 11:31:13', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:48', '36', 'N');
INSERT INTO `yewu` VALUES ('219', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '商业广告', '1', '201', '15', '60', '2016-07-21', '2016-08-25', '4', '0.00', null, '2016-08-11 11:31:13', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:48', '36', 'N');
INSERT INTO `yewu` VALUES ('220', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '商业广告', '1', '402', '15', '60', '2016-07-21', '2016-08-25', '4', '0.00', null, '2016-08-11 11:31:14', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:48', '36', 'N');
INSERT INTO `yewu` VALUES ('221', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '商业广告', '1', '301', '15', '60', '2016-07-21', '2016-08-25', '4', '0.00', null, '2016-08-11 11:31:14', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:48', '36', 'N');
INSERT INTO `yewu` VALUES ('222', '1688002', '南国书香文化节', '南国书香文化节宣传内容', '23', '商业广告', '1', '702', '15', '60', '2016-07-21', '2016-08-25', '4', '0.00', null, '2016-08-11 11:31:15', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:48', '36', 'N');
INSERT INTO `yewu` VALUES ('223', '1688003', '惠州市城管执法局', '公益广告', '131', '公益广告', '1', '601', '30', '60', '2016-07-22', '2016-12-31', '23', '0.00', null, '2016-08-11 11:31:34', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('224', '1688105', '广东南方新视界传媒科技有限公司', '欧洲杯胜负竞猜互动赠播', '76', '赠播广告', '1', '101', '15', '60', '2016-07-09', '2016-07-10', '1', '0.00', null, '2016-08-11 11:34:44', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('225', '1688105', '广东南方新视界传媒科技有限公司', '欧洲杯胜负竞猜互动赠播', '76', '赠播广告', '1', '102', '15', '60', '2016-07-09', '2016-07-10', '1', '0.00', null, '2016-08-11 11:34:45', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('226', '1688105', '广东南方新视界传媒科技有限公司', '欧洲杯胜负竞猜互动赠播', '76', '赠播广告', '1', '103', '15', '60', '2016-07-09', '2016-07-10', '1', '0.00', null, '2016-08-11 11:34:46', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('227', '1688105', '广东南方新视界传媒科技有限公司', '欧洲杯胜负竞猜互动赠播', '76', '赠播广告', '1', '105', '15', '60', '2016-07-09', '2016-07-10', '1', '0.00', null, '2016-08-11 11:34:52', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('228', '1688004', '西江网', '肇庆-西江网动漫节30秒 7.26', '23', '赠播广告', '1', '901', '30', '30', '2016-07-28', '2016-08-03', '1', '0.00', null, '2016-08-11 11:31:40', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('229', '1688107', '北京路文化核心区管委会', '慈善主题公益宣传视频', '132', '赠播广告', '1', '102', '30', '30', '2016-07-09', '2016-07-10', '0', '0.00', null, '2016-08-11 11:35:02', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('230', '1688108', '深圳市苏宁云商销售有限公司', '苏宁', '89', '赠播广告', '1', '201', '15', '60', '2016-07-11', '2016-07-17', '1', '0.00', null, '2016-08-11 11:35:04', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:53', '36', 'N');
INSERT INTO `yewu` VALUES ('231', '1688108', '深圳市苏宁云商销售有限公司', '苏宁', '89', '赠播广告', '1', '203', '15', '60', '2016-07-11', '2016-07-17', '1', '0.00', null, '2016-08-11 11:35:04', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:54', '36', 'N');
INSERT INTO `yewu` VALUES ('232', '1688108', '深圳市苏宁云商销售有限公司', '苏宁', '89', '赠播广告', '1', '202', '15', '60', '2016-07-11', '2016-07-17', '1', '0.00', null, '2016-08-11 11:35:11', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:42:54', '36', 'N');
INSERT INTO `yewu` VALUES ('233', '1688005', '深圳卓宁广告有限公司', 'Vivo手机', '6', '赠播广告', '1', '203', '15', '60', '2016-07-29', '2016-10-27', '13', '0.00', null, '2016-08-11 11:31:41', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('234', '1688005', '深圳卓宁广告有限公司', 'Vivo手机', '6', '赠播广告', '1', '202', '15', '60', '2016-07-29', '2016-10-27', '13', '0.00', null, '2016-08-11 11:31:50', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('235', '1688109', '广东南方新视界传媒科技有限公司', '第五届“羊城杯”公益广告创意大赛快闪预告片', '1', '赠播广告', '1', '102', '30', '60', '2016-07-09', '2016-07-10', '1', '0.00', null, '2016-08-11 11:35:12', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('236', '1688006', '北京环球七福广告有限公司', '音乐之声宣传片（我要我的音乐）', '23', '互赠广告', '1', '103', '15', '180', '2016-08-02', '2016-09-27', '8', '0.00', null, '2016-08-11 11:31:51', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('237', '1688110', '梅花村街道办', '“登革热防控”、“来穗人员管理”、“反邪教宣传”以及新增“创建国家食品安全城市”', '132', '赠播广告', '1', '101', '45', '30', '2016-07-11', '2016-07-31', '3', '0.00', null, '2016-08-11 11:35:24', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('238', '1688110', '梅花村街道办', '“登革热防控”、“来穗人员管理”、“反邪教宣传”以及新增“创建国家食品安全城市”', '132', '赠播广告', '1', '101', '30', '30', '2016-07-11', '2016-07-31', '3', '0.00', null, '2016-08-11 11:35:32', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('239', '1688007', '大粤网', '全球投资峰会', '23', '赠播广告', '1', '101', '15', '60', '2016-08-04', '2016-08-10', '1', '0.00', null, '2016-08-11 11:31:51', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('240', '1688007', '大粤网', '全球投资峰会', '23', '赠播广告', '1', '103', '15', '60', '2016-08-04', '2016-08-10', '1', '0.00', null, '2016-08-11 11:32:03', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:01', '36', 'N');
INSERT INTO `yewu` VALUES ('241', '1688111', '大粤网', '腾讯区域自媒体峰会', '23', '赠播广告', '1', '101', '15', '60', '2016-07-13', '2016-07-19', '1', '118800.00', null, '2016-08-11 11:35:40', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:02', '36', 'N');
INSERT INTO `yewu` VALUES ('242', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '101', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:04', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:02', '36', 'N');
INSERT INTO `yewu` VALUES ('243', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '105', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:04', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('244', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '102', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:05', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('245', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '203', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:06', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('246', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '202', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:06', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('247', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '501', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:07', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('248', '1688008', '广东南方新视界传媒科技有限公司', '公益广告-感谢您守护这个城市', '132', '公益广告', '1', '301', '15', '120', '2016-08-02', '2016-08-03', '1', '0.00', null, '2016-08-11 11:32:08', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('249', '1688112', '江门市住房和城乡建设局', '首届江门市五人足球超级联赛宣传片', '131', '赠播广告', '1', '801', '15', '30', '2016-07-15', '2016-08-31', '7', '0.00', null, '2016-08-11 11:35:41', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('250', '1688112', '江门市住房和城乡建设局', '首届江门市五人足球超级联赛宣传片', '131', '赠播广告', '1', '802', '15', '30', '2016-07-15', '2016-08-31', '7', '0.00', null, '2016-08-11 11:35:48', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('251', '1688114', '益华广场', '益华印尼食品节', '17', '赠播广告', '1', '701', '15', '60', '2016-07-16', '2016-07-24', '1', '0.00', null, '2016-08-11 11:35:55', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('252', '1688009', '深圳市凤翔九天传媒有限公司', '恒大棕榈岛', '10', '赠播广告', '1', '203', '15', '120', '2016-08-04', '2016-08-06', '1', '0.00', null, '2016-08-11 11:32:22', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:08', '36', 'N');
INSERT INTO `yewu` VALUES ('253', '1688115', '东莞市微视界文化传播有限公司', '永佳丰田', '55', '赠播广告', '1', '402', '30', '120', '2016-07-15', '2016-07-15', '0', '0.00', null, '2016-08-11 11:35:57', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('254', '1688010', '深圳市创世光明文化传播有限公司', '誉峯名门宣传片', '60', '商业广告', '1', '501', '15', '60', '2016-08-04', '2016-08-04', '1', '0.00', null, '2016-08-11 11:32:30', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('255', '1688116', '广东南方新视界传媒科技有限公司', '“羊城杯”公益广告', '132', '公益广告', '1', '101', '30', '60', '2016-07-20', '2016-08-20', '4', '0.00', null, '2016-08-11 11:36:13', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('256', '1688011', '广东南方新视界传媒科技有限公司', '公司奥运热点新闻', '31', '公益广告', '1', '101', '15', '60', '2016-08-05', '2016-08-07', '1', '0.00', null, '2016-08-11 11:32:36', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('257', '1688012', '广州中森实力文化传播有限公司', '广州市城管公益广告', '132', '公益广告', '1', '101', '60', '30', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:32:37', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('258', '1688012', '广州中森实力文化传播有限公司', '广州市城管公益广告', '132', '公益广告', '1', '105', '60', '30', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:32:43', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('259', '1688118', '广新信息公司', '会展广告', '23', '商业广告', '1', '101', '15', '60', '2016-07-18', '2016-07-22', '1', '84857.00', null, '2016-08-11 11:36:14', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('260', '1688118', '广新信息公司', '会展广告', '23', '商业广告', '1', '105', '15', '60', '2016-07-18', '2016-07-22', '1', '57143.00', null, '2016-08-11 11:36:14', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('261', '1688118', '广新信息公司', '会展广告', '23', '商业广告', '1', '103', '15', '60', '2016-07-18', '2016-07-22', '1', '70714.00', null, '2016-08-11 11:36:15', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('262', '1688118', '广新信息公司', '会展广告', '23', '商业广告', '1', '102', '15', '60', '2016-07-18', '2016-07-22', '1', '59143.00', null, '2016-08-11 11:36:26', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:14', '36', 'N');
INSERT INTO `yewu` VALUES ('263', '1688119', '广州市鸿蒙广告有限公司', '康师傅饮料各系列', '104', '商业广告', '1', '201', '30', '120', '2016-08-01', '2016-09-30', '9', '1332240.00', null, '2016-08-11 11:36:33', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('264', '1688013', '福利彩票', '肇庆-福利彩票18秒 8.3', '76', '商业广告', '1', '901', '15', '60', '2016-08-04', '2016-09-02', '4', '178524.00', null, '2016-08-11 11:32:49', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('265', '1688120', '广州影传广告有限公司', '名堂', '128', '商业广告', '1', '101', '15', '60', '2016-07-06', '2016-08-02', '4', '0.00', null, '2016-08-11 11:36:35', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('266', '1688120', '广州影传广告有限公司', '名堂', '128', '商业广告', '1', '105', '15', '60', '2016-07-06', '2016-08-02', '4', '0.00', null, '2016-08-11 11:36:36', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('267', '1688120', '广州影传广告有限公司', '名堂', '128', '商业广告', '1', '103', '15', '60', '2016-07-06', '2016-08-02', '4', '0.00', null, '2016-08-11 11:36:36', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('268', '1688120', '广州影传广告有限公司', '名堂', '128', '商业广告', '1', '104', '15', '60', '2016-07-06', '2016-08-02', '4', '0.00', null, '2016-08-11 11:36:44', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('269', '1688121', '广州影传广告有限公司', '荔枝FM', '31', '商业广告', '1', '101', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:36:45', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('270', '1688121', '广州影传广告有限公司', '荔枝FM', '31', '商业广告', '1', '105', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:36:46', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('271', '1688121', '广州影传广告有限公司', '荔枝FM', '31', '商业广告', '1', '103', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:36:47', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('272', '1688121', '广州影传广告有限公司', '荔枝FM', '31', '商业广告', '1', '104', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:37:09', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:20', '36', 'N');
INSERT INTO `yewu` VALUES ('273', '1688122', '广州影传广告有限公司', '三体', '123', '商业广告', '1', '101', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:37:10', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('274', '1688122', '广州影传广告有限公司', '三体', '123', '商业广告', '1', '105', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:37:14', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('275', '1688122', '广州影传广告有限公司', '三体', '123', '商业广告', '1', '103', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:37:15', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('276', '1688122', '广州影传广告有限公司', '三体', '123', '商业广告', '1', '104', '15', '60', '2016-07-06', '2016-07-19', '2', '0.00', null, '2016-08-11 11:37:18', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('277', '1688123', '广州影传广告有限公司', '克不容缓', '123', '商业广告', '1', '101', '15', '60', '2016-07-08', '2016-08-04', '4', '0.00', null, '2016-08-11 11:37:22', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('278', '1688123', '广州影传广告有限公司', '克不容缓', '123', '商业广告', '1', '103', '15', '60', '2016-07-08', '2016-08-04', '4', '0.00', null, '2016-08-11 11:37:23', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('279', '1688123', '广州影传广告有限公司', '克不容缓', '123', '商业广告', '1', '104', '15', '60', '2016-07-08', '2016-08-04', '4', '0.00', null, '2016-08-11 11:37:23', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('280', '1688123', '广州影传广告有限公司', '克不容缓', '123', '商业广告', '1', '105', '15', '60', '2016-07-08', '2016-08-04', '4', '0.00', null, '2016-08-11 11:37:28', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('281', '1688124', '广州影传广告有限公司', '封神传奇', '1', '商业广告', '1', '101', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:37:36', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('282', '1688124', '广州影传广告有限公司', '封神传奇', '1', '商业广告', '1', '105', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:37:37', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:26', '36', 'N');
INSERT INTO `yewu` VALUES ('283', '1688124', '广州影传广告有限公司', '封神传奇', '1', '商业广告', '1', '103', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:37:37', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('284', '1688124', '广州影传广告有限公司', '封神传奇', '1', '商业广告', '1', '104', '15', '60', '2016-07-25', '2016-07-31', '1', '0.00', null, '2016-08-11 11:37:39', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('285', '1688126', '广州影传广告有限公司', '斯卡拉歌剧院芭蕾舞', '23', '商业广告', '1', '101', '15', '60', '2016-07-26', '2016-08-08', '2', '0.00', null, '2016-08-11 11:37:52', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('286', '1688126', '广州影传广告有限公司', '斯卡拉歌剧院芭蕾舞', '23', '商业广告', '1', '103', '15', '30', '2016-07-26', '2016-08-08', '2', '0.00', null, '2016-08-11 11:37:52', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('287', '1688126', '广州影传广告有限公司', '斯卡拉歌剧院芭蕾舞', '23', '商业广告', '1', '104', '15', '30', '2016-07-26', '2016-08-08', '4', '0.00', null, '2016-08-11 11:37:53', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('288', '1688126', '广州影传广告有限公司', '斯卡拉歌剧院芭蕾舞', '23', '商业广告', '1', '105', '15', '30', '2016-07-26', '2016-08-08', '4', '0.00', null, '2016-08-11 11:37:53', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('289', '1688127', '广州影传广告有限公司', '张杰', '120', '商业广告', '1', '101', '15', '60', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:38:07', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('290', '1688127', '广州影传广告有限公司', '张杰', '120', '商业广告', '1', '105', '15', '30', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:38:08', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:35', '36', 'N');
INSERT INTO `yewu` VALUES ('291', '1688127', '广州影传广告有限公司', '张杰', '120', '商业广告', '1', '103', '15', '30', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:38:08', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:36', '36', 'N');
INSERT INTO `yewu` VALUES ('292', '1688127', '广州影传广告有限公司', '张杰', '120', '商业广告', '1', '104', '15', '30', '2016-08-01', '2016-08-07', '1', '0.00', null, '2016-08-11 11:38:15', '2016-08-08 00:00:00', '36', null, null, '2016-08-08 16:43:36', '36', 'N');

-- ----------------------------
-- Table structure for yewuyuan
-- ----------------------------
DROP TABLE IF EXISTS `yewuyuan`;
CREATE TABLE `yewuyuan` (
  `ywy_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `ywy_xingming` varchar(25) NOT NULL,
  `ywy_ruzhishijian` date DEFAULT NULL,
  `ywy_bumenid` int(11) DEFAULT NULL,
  `ywy_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rold_id` smallint(6) NOT NULL,
  `state` char(1) NOT NULL,
  PRIMARY KEY (`ywy_id`),
  KEY `ywy_bm_fk` (`ywy_bumenid`),
  KEY `ywy_r_fk` (`rold_id`),
  CONSTRAINT `ywy_bm_fk` FOREIGN KEY (`ywy_bumenid`) REFERENCES `bumen` (`bm_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ywy_r_fk` FOREIGN KEY (`rold_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yewuyuan
-- ----------------------------
INSERT INTO `yewuyuan` VALUES ('1', 'libs', '123456', '李本生', null, '3', '2016-07-06 09:20:30', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('2', 'weiqm', '123456', '魏秋明', null, '1', '2016-07-06 09:20:32', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('3', 'wangyf', '123456', '汪永锋', null, '1', '2016-07-06 09:20:33', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('4', 'zhangb', '123456', '张 彪', null, '1', '2016-07-06 09:20:35', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('5', 'zhengj', '123456', '郑君', null, '5', '2016-07-06 09:20:36', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('6', 'niecs', '123456', '聂辰晟', null, '5', '2016-07-06 09:20:37', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('7', 'yusj', '123456', '余世杰', null, '5', '2016-07-06 09:20:39', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('8', 'zhengdn', '123456', '郑东南', null, '5', '2016-07-06 09:20:40', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('9', 'yangyl', '123456', '杨叶林', null, '5', '2016-07-06 09:20:42', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('10', 'huangy', '123456', '黄  颖', null, '1', '2016-07-06 09:20:43', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('11', 'lifq', '123456', '李凤琴', null, '1', '2016-07-06 09:20:45', '4', 'N');
INSERT INTO `yewuyuan` VALUES ('12', 'qih', '123456', '齐  会', null, '1', '2016-07-06 09:20:46', '4', 'N');
INSERT INTO `yewuyuan` VALUES ('13', 'niuy', '123456', '牛  宇', '2015-06-24', '1', '2016-07-06 09:20:48', '4', 'N');
INSERT INTO `yewuyuan` VALUES ('14', 'wuqy', '123456', '吴秋莹', null, '1', '2016-07-06 09:20:49', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('15', 'zhengjie', '123456', '郑  捷', null, '1', '2016-07-06 09:20:50', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('16', 'huangyq', '123456', '黄勇强', null, '1', '2016-07-06 09:20:51', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('17', 'liyw', '123456', '李若维', null, '2', '2016-07-06 09:20:53', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('18', 'xiexy', '123456', '谢小勇', null, '2', '2016-07-06 09:20:54', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('19', 'liangxn', '123456', '梁晓楠', null, '2', '2016-07-06 09:20:56', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('20', 'yanghh', '123456', '杨惠华', null, '2', '2016-07-06 09:20:57', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('21', 'hex', '123456', '何  霞', null, '2', '2016-07-06 09:20:58', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('22', 'zhangym', '123456', '张亚珉', null, '2', '2016-07-06 09:21:00', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('23', 'chenzb', '123456', '陈振斌', null, '3', '2016-07-06 09:21:02', '3', 'N');
INSERT INTO `yewuyuan` VALUES ('24', 'yanglh', '123456', '杨立华', null, '3', '2016-07-06 09:21:02', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('25', 'budy', '123456', '布独伊', null, '3', '2016-07-06 09:21:04', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('26', 'luojy', '123456', '罗婧洋', null, '3', '2016-07-06 09:21:05', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('27', 'youw', '123456', '尤  威', null, '3', '2016-07-06 09:21:07', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('28', 'pengns', '123456', '彭娜莎', null, '3', '2016-07-06 09:21:10', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('29', 'chenb', '123456', '陈  斌', null, '3', '2016-07-06 09:21:11', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('30', 'maimj', '123456', '麦敏晶', null, '3', '2016-07-06 09:21:12', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('31', 'yanghh', '123456', '杨红', null, '4', '2016-07-06 09:21:14', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('32', 'xuf', '123456', '许  芳', null, '4', '2016-07-06 09:21:15', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('33', 'hehb', '123456', '何浩波', null, '4', '2016-07-06 09:21:16', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('34', 'wangzw', '123456', '王治伟', null, '4', '2016-07-06 09:21:23', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('35', 'liuhy', '123456', '刘怀勇', null, '4', '2016-07-06 09:21:22', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('36', 'admin', 'a', 'admin', null, null, '2016-07-06 09:21:21', '1', 'N');
INSERT INTO `yewuyuan` VALUES ('45', 'aaa', '123456', 'aaa', null, '1', '2016-07-22 12:07:24', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('46', 'asa', '123456', 'aas', '2016-06-27', '1', '2016-07-22 12:09:37', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('47', 'aa', '123456', 'aa', '2016-07-20', '1', '2016-07-22 12:23:27', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('48', 'aaaa', '123456', 'aa', '2016-06-27', '1', '2016-07-22 12:50:53', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('49', 'aaaaa', '123456', 'aaa', null, '1', '2016-07-26 20:38:13', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('50', 'aaaaaaaa', '123456', 'aaa', null, '1', '2016-07-28 12:36:49', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('51', 'aaaaaaaa', '123456', 'aaa', null, '1', '2016-07-28 12:36:49', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('53', '1', '123456', '1', null, '1', '2016-08-03 23:10:49', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('54', 'aaaaaa', '123456', 'aaaaaaaaaa', null, '1', '2016-08-10 14:50:36', '2', 'N');
INSERT INTO `yewuyuan` VALUES ('55', 'zhangx', '123456', '张潇', null, '5', '2016-08-12 09:41:55', '3', 'N');

-- ----------------------------
-- Table structure for ywymubiao
-- ----------------------------
DROP TABLE IF EXISTS `ywymubiao`;
CREATE TABLE `ywymubiao` (
  `goal_id` int(11) NOT NULL AUTO_INCREMENT,
  `goal_niandu` year(4) NOT NULL,
  `goal_ywyid` int(11) NOT NULL,
  `goal_mubiao` decimal(12,2) NOT NULL,
  `goal_wanchenglv` decimal(3,2) DEFAULT NULL,
  `goal_timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`goal_id`),
  KEY `ywymb_ywy_fk_ywyid` (`goal_ywyid`),
  CONSTRAINT `ywymb_ywy_fk_ywyid` FOREIGN KEY (`goal_ywyid`) REFERENCES `yewuyuan` (`ywy_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ywymubiao
-- ----------------------------
INSERT INTO `ywymubiao` VALUES ('36', '2016', '1', '400000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('37', '2016', '2', '600000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('38', '2016', '3', '1000000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('39', '2016', '4', '800000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('40', '2016', '5', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('41', '2016', '6', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('42', '2016', '7', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('43', '2016', '8', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('44', '2016', '9', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('45', '2016', '10', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('46', '2016', '11', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('47', '2016', '12', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('48', '2016', '13', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('49', '2016', '14', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('50', '2016', '15', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('51', '2016', '16', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('52', '2016', '17', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('53', '2016', '18', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('54', '2016', '19', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('55', '2016', '20', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('56', '2016', '21', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('57', '2016', '22', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('58', '2016', '23', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('59', '2016', '24', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('60', '2016', '25', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('61', '2016', '26', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('62', '2016', '27', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('63', '2016', '28', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('64', '2016', '29', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('65', '2016', '30', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('66', '2016', '31', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('67', '2016', '32', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('68', '2016', '33', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('69', '2016', '34', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('70', '2016', '35', '100000.00', null, '2016-06-26 15:31:16');
INSERT INTO `ywymubiao` VALUES ('71', '2015', '5', '10000.00', null, '2016-06-26 18:14:45');
DROP TRIGGER IF EXISTS `tri_dingdanshoukuaninfo_atrenkanshu`;
DELIMITER ;;
CREATE TRIGGER `tri_dingdanshoukuaninfo_atrenkanshu` AFTER INSERT ON `renkanshu` FOR EACH ROW BEGIN
insert into dingdanshoukuaninfo(dingdanshoukuaninfo.skinfo_renkanbianhao, dingdanshoukuaninfo.skinfo_yfzongjine) values(new.renkanbianhao,new.kanlizongjia);
END
;;
DELIMITER ;
