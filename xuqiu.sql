/*
Navicat MySQL Data Transfer

Source Server         : zll
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : xuqiu

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2018-10-09 10:18:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for hangye
-- ----------------------------
DROP TABLE IF EXISTS `hangye`;
CREATE TABLE `hangye` (
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hangye
-- ----------------------------
INSERT INTO `hangye` VALUES ('医药', '1');
INSERT INTO `hangye` VALUES ('It', '2');
INSERT INTO `hangye` VALUES ('老师', '3');
INSERT INTO `hangye` VALUES ('经理', '4');
INSERT INTO `hangye` VALUES ('公务员', '5');

-- ----------------------------
-- Table structure for quanxian
-- ----------------------------
DROP TABLE IF EXISTS `quanxian`;
CREATE TABLE `quanxian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `tianbao` int(11) DEFAULT NULL,
  `chakangerenshenhexuqiu` int(11) DEFAULT NULL,
  `chakanquanbushenhexuqiu` int(11) DEFAULT NULL,
  `xuqiuxiugai` int(11) DEFAULT NULL,
  `chakanquanbu` int(11) DEFAULT NULL,
  `chakangeren` int(11) DEFAULT NULL,
  `chakantuihui` int(11) DEFAULT NULL,
  `shenhexuqiu` int(11) DEFAULT NULL,
  `chakanuser` int(11) DEFAULT NULL,
  `xinxixiugai` int(11) DEFAULT NULL,
  `mimaxiugai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quanxian
-- ----------------------------
INSERT INTO `quanxian` VALUES ('1', '管理员', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');
INSERT INTO `quanxian` VALUES ('2', '用户', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1');
INSERT INTO `quanxian` VALUES ('6', '6666', '1', '1', '0', '0', '0', '0', '0', '0', '0', '1', '1');
INSERT INTO `quanxian` VALUES ('7', '123', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for tuihui
-- ----------------------------
DROP TABLE IF EXISTS `tuihui`;
CREATE TABLE `tuihui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `zhengjiid` int(11) DEFAULT NULL,
  `tuihui` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tuihui
-- ----------------------------
INSERT INTO `tuihui` VALUES ('1', '4', '滚滚滚');
INSERT INTO `tuihui` VALUES ('3', '0', '5555');
INSERT INTO `tuihui` VALUES ('4', '4', '56456');
INSERT INTO `tuihui` VALUES ('5', '0', null);
INSERT INTO `tuihui` VALUES ('6', '3', '6666666');
INSERT INTO `tuihui` VALUES ('7', '11', '内容');
INSERT INTO `tuihui` VALUES ('8', '14', '简介太繁琐');
INSERT INTO `tuihui` VALUES ('9', '50', '简介太繁琐');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `shenfenhao` varchar(255) DEFAULT NULL,
  `shi` varchar(255) DEFAULT NULL,
  `danwei` varchar(255) DEFAULT NULL,
  `zhuanye` varchar(255) DEFAULT NULL,
  `hangye` varchar(255) DEFAULT NULL,
  `jiaoyu` varchar(255) DEFAULT NULL,
  `zhicheng` varchar(255) DEFAULT NULL,
  `tongxundizhi` varchar(255) DEFAULT NULL,
  `youzhengbianma` varchar(255) DEFAULT NULL,
  `shouji` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `youxiang` varchar(255) DEFAULT NULL,
  `shenfen` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '123456', '大神', '141031199610260051', '石家庄市', '阿里巴巴', 'IT', '架构师', '本科', 'CEO', '山西', '041300', '13223490775', '2244521', '1978472899@qq.com', '管理员');

-- ----------------------------
-- Table structure for xueke
-- ----------------------------
DROP TABLE IF EXISTS `xueke`;
CREATE TABLE `xueke` (
  `name` varchar(255) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of xueke
-- ----------------------------
INSERT INTO `xueke` VALUES ('语文', '1');
INSERT INTO `xueke` VALUES ('数学', '2');
INSERT INTO `xueke` VALUES ('英语', '3');
INSERT INTO `xueke` VALUES ('化学', '4');
INSERT INTO `xueke` VALUES ('美术', '5');

-- ----------------------------
-- Table structure for zhengji
-- ----------------------------
DROP TABLE IF EXISTS `zhengji`;
CREATE TABLE `zhengji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` int(11) DEFAULT NULL,
  `createdate` varchar(255) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `jiname` varchar(255) DEFAULT NULL,
  `guikou` varchar(255) DEFAULT NULL,
  `tongxundizhi` varchar(255) DEFAULT NULL,
  `suozaidiyu` varchar(255) DEFAULT NULL,
  `wangzhi` varchar(255) DEFAULT NULL,
  `dianzixinxiang` varchar(255) DEFAULT NULL,
  `farendaibiao` varchar(255) DEFAULT NULL,
  `youzhengbianma` varchar(255) DEFAULT NULL,
  `lianxi` varchar(255) DEFAULT NULL,
  `dianhua` varchar(255) DEFAULT NULL,
  `shouji` varchar(255) DEFAULT NULL,
  `chuangzhen` varchar(255) DEFAULT NULL,
  `jigoushuxing` varchar(255) DEFAULT NULL,
  `jigoujianjie` varchar(255) DEFAULT NULL,
  `jishuxuqiuname` varchar(255) DEFAULT NULL,
  `xuqiuqianyear` varchar(255) DEFAULT NULL,
  `xuqiuhouyear` varchar(255) DEFAULT NULL,
  `xuqiugaishu` varchar(255) DEFAULT NULL,
  `guanjian3` varchar(255) DEFAULT NULL,
  `guanjian4` varchar(255) DEFAULT NULL,
  `guanjian2` varchar(255) DEFAULT NULL,
  `guanjian1` varchar(255) DEFAULT NULL,
  `guanjian5` varchar(255) DEFAULT NULL,
  `jine` varchar(255) DEFAULT NULL,
  `xuqiujiejuefangshi` varchar(255) DEFAULT NULL,
  `hezuodanwei` varchar(255) DEFAULT NULL,
  `kejihuodongleixing` varchar(255) DEFAULT NULL,
  `xuekenfenlei` varchar(255) DEFAULT NULL,
  `twoxueke` varchar(255) DEFAULT NULL,
  `lingyu` varchar(255) DEFAULT NULL,
  `hangye` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zhengji
-- ----------------------------
INSERT INTO `zhengji` VALUES ('2', '2', null, '1', '阿里巴巴', '', '山西', '石家庄市', '', '1978472899@qq.com', '', '041300', '大神', '2244521', '13223490775', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('3', '4', null, '1', '阿里巴巴', '', '山西', '石家庄市', '', '1978472899@qq.com', '', '041300', '大神', '2244521', '13223490775', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('6', '3', null, '1', '阿里巴巴', '', '山西', '石家庄市', '', '1978472899@qq.com', '', '041300', '大神', '2244521', '13223490775', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('7', '3', null, '1', '', '', '', '', '', '', '', '', '', '', '', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('9', '3', null, '1', 'hhhhh', 'ggg', 'gg', 'gg', '', '', '', '', '', '', '', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('10', '0', null, '0', '323', '323', '32', '23', '23', '', '', '23', '', '', '', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('12', '1', null, '1', '阿里巴巴', '石家庄铁道大学', '山西', '石家庄市', 'www.std.com.cn', '1978472899@qq.com', '谢梦雨', '041300', '田会', '2244521', '13223490775', '7063254', '高等院校', '还不错，', '网络技能大赛', '', '', '该大赛', '3', '4', '2', '1', '5', '1000', '独立开发', '河北经贸大学', '应用研究', '0', null, '电子信息', '3');
INSERT INTO `zhengji` VALUES ('13', '1', null, '1', '阿里巴巴', '', '山西', '石家庄市', '', '1978472899@qq.com', '', '041300', '大神', '2244521', '13223490775', '', null, '', '', '', '', '', '', '', '', '', '', '', null, '', null, '0', null, null, '0');
INSERT INTO `zhengji` VALUES ('15', '0', null, '0', '石家庄铁道大学', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `zhengji` VALUES ('16', '0', null, '1', '阿里巴巴', 'aaaa', '山西', '石家庄市', 'aaaaa', '1978472899@qq.com', 'aaaa', '041300', '大神', '2244521', '13223490775', 'aaaaa', '企业', 'aaaaaaaa', 'aaaaaaaa', '2018-7-16', '2018-7-24', 'aaaaaa', '', '', '', 'aaaaa', '', '10000', '合作开发', 'aaaa', '基础研究', '医药', null, null, '0');
INSERT INTO `zhengji` VALUES ('17', '0', null, '1', '阿里巴巴', 'aaaa', '山西', '石家庄市', 'aaaaaaa', '1978472899@qq.com', 'aaaaaaaa', '041300', '大神', '2244521', '13223490775', 'aaaaaaa', '企业', 'aaaaaa', 'aaaaaa', '2018-7-17', '2018-7-31', 'aaaaa', '', '', '', 'aaaaaaaa', '', '10', '独立开发', 'aaaa', '基础研究', '语文', null, null, '0');
INSERT INTO `zhengji` VALUES ('18', '0', null, '1', '阿里巴巴', 'aaaaaa', '山西', '石家庄市', 'aaaaaaa', '1978472899@qq.com', 'aaaaaaa', '041300', '大神', '2244521', '13223490775', 'aaaaaaa', null, 'aaaaaaaaaaaaa', 'aaaaaaaa', '2018-7-23', '2018-7-28', 'aaaaaaa', '', '', '', 'aaaaaaa', '', '100', '独立开发', 'aaaaa', '基础研究', '语文', null, null, '0');
INSERT INTO `zhengji` VALUES ('19', '0', null, '1', '阿里巴巴', 'aaaaaa', '山西', '石家庄市', 'aaaaaaa', '1978472899@qq.com', 'aaaaaaa', '041300', '大神', '2244521', '13223490775', 'aaaaaaa', null, 'aaaaaaaaaaaaa', 'aaaaaaaa', '', '', 'aaaaaaa', '', '', '', 'aaaaaaa', '', '100', '独立开发', 'aaaaa', '基础研究', '0', null, null, '0');
