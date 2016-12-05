/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50549
Source Host           : localhost:3306
Source Database       : ordersystem

Target Server Type    : MYSQL
Target Server Version : 50549
File Encoding         : 65001

Date: 2016-12-05 18:06:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator
-- ----------------------------
DROP TABLE IF EXISTS `administrator`;
CREATE TABLE `administrator` (
  `admin_name` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL,
  PRIMARY KEY (`admin_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of administrator
-- ----------------------------
INSERT INTO `administrator` VALUES ('_admin', '123456');

-- ----------------------------
-- Table structure for theorder
-- ----------------------------
DROP TABLE IF EXISTS `theorder`;
CREATE TABLE `theorder` (
  `userid` varchar(20) NOT NULL,
  `order_info` text NOT NULL,
  `total` int(10) NOT NULL,
  `time` datetime NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of theorder
-- ----------------------------
INSERT INTO `theorder` VALUES ('qw', '甜橙盖饭 * 1,荔枝炒饭 * 1,黄桃烩饭 * 1,苹果汤面 * 1,奇异果焖饭 * 1,超赞的未知水果泡面 * 1,哈密瓜炒拉条 * 1,石榴炒面 * 1,橙汁拌面 * 1,', '225', '2016-10-11 01:14:52', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 12,荔枝炒饭 * 2,奇异果焖饭 * 2,石榴炒面 * 2,', '402', '2016-10-11 15:16:19', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 12,荔枝炒饭 * 2,奇异果焖饭 * 2,石榴炒面 * 2,', '402', '2016-10-11 15:16:37', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '哈密瓜炒拉条 * 1,', '27', '2016-10-11 15:18:32', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,苹果汤面 * 1,', '45', '2016-10-12 01:03:50', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,奇异果焖饭 * 1,哈密瓜炒拉条 * 1,', '73', '2016-10-12 14:44:40', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,奇异果焖饭 * 1,', '46', '2016-10-12 14:46:55', '已配餐');
INSERT INTO `theorder` VALUES ('qw', '甜橙盖饭 * 1,奇异果焖饭 * 1,', '46', '2016-10-12 16:24:27', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '荔枝炒饭 * 3,橙汁拌面 * 2,', '124', '2016-10-12 16:42:36', '已配餐');
INSERT INTO `theorder` VALUES ('zy', '苹果汤面 * 1,', '24', '2016-10-12 20:18:29', '已配餐');
INSERT INTO `theorder` VALUES ('wz', '甜橙盖饭 * 2,', '42', '2016-10-12 20:23:15', '已配餐');
INSERT INTO `theorder` VALUES ('qw', '荔枝炒饭 * 1,黄桃烩饭 * 1,奇异果焖饭 * 1,哈密瓜炒拉条 * 1,橙汁拌面 * 1,', '126', '2016-10-13 01:24:11', '已配餐');
INSERT INTO `theorder` VALUES ('qw', '甜橙盖饭 * 1,', '21', '2016-10-13 01:24:36', '已配餐');
INSERT INTO `theorder` VALUES ('mrz', '黄桃烩饭 * 3,奇异果焖饭 * 1,橙汁拌面 * 2,', '152', '2016-10-13 01:35:17', '已配餐');
INSERT INTO `theorder` VALUES ('yu', '甜橙盖饭 * 4,', '84', '2016-10-13 12:33:05', '已配餐');
INSERT INTO `theorder` VALUES ('yu', '甜橙盖饭 * 1,石榴炒面 * 1,', '49', '2016-10-13 13:42:57', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,荔枝炒饭 * 1,苹果汤面 * 1,', '67', '2016-10-13 13:54:35', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,荔枝炒饭 * 1,黄桃烩饭 * 1,苹果汤面 * 1,奇异果焖饭 * 1,超赞的未知水果泡面 * 1,哈密瓜炒拉条 * 1,石榴炒面 * 1,橙汁拌面 * 1,', '225', '2016-10-13 14:18:46', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,奇异果焖饭 * 1,', '46', '2016-10-13 14:23:22', '已配餐');
INSERT INTO `theorder` VALUES ('atao', '甜橙盖饭 * 5,奇异果焖饭 * 4,橙汁拌面 * 1,', '206', '2016-10-13 16:52:02', '已配餐');
INSERT INTO `theorder` VALUES ('atao', '甜橙盖饭 * 1,', '21', '2016-10-13 17:02:47', '已配餐');
INSERT INTO `theorder` VALUES ('atao', '荔枝炒饭 * 1,', '22', '2016-10-13 17:15:01', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '苹果汤面 * 1,橙汁拌面 * 1,', '53', '2016-10-13 17:25:07', '已配餐');
INSERT INTO `theorder` VALUES ('mashabi', '甜橙盖饭 * 1,奇异果焖饭 * 1,', '46', '2016-10-13 18:39:27', '已配餐');
INSERT INTO `theorder` VALUES ('mashabi', '荔枝炒饭 * 3,哈密瓜炒拉条 * 1,', '93', '2016-10-13 18:40:10', '已配餐');
INSERT INTO `theorder` VALUES ('zy', '奇异果焖饭 * 2,橙汁拌面 * 1,', '79', '2016-10-13 19:04:53', '已配餐');
INSERT INTO `theorder` VALUES ('zxc', '甜橙盖饭 * 2,奇异果焖饭 * 6,', '192', '2016-10-13 19:32:37', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '荔枝炒饭 * 1,', '22', '2016-10-13 19:43:30', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 3,', '63', '2016-10-13 20:05:45', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '超赞的未知水果泡面 * 2,', '52', '2016-10-13 20:05:56', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '甜橙盖饭 * 1,', '21', '2016-10-13 20:16:55', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '荔枝炒饭 * 1,超赞的未知水果泡面 * 1,', '48', '2016-10-13 22:17:52', '已配餐');
INSERT INTO `theorder` VALUES ('zxc', '甜橙盖饭 * 1,奇异果焖饭 * 1,', '46', '2016-10-13 23:47:21', '已配餐');
INSERT INTO `theorder` VALUES ('zxc', '石榴炒面 * 1,', '28', '2016-10-13 23:47:37', '已配餐');
INSERT INTO `theorder` VALUES ('zxc', '甜橙盖饭 * 1,', '21', '2016-10-13 23:56:23', '已配餐');
INSERT INTO `theorder` VALUES ('zxc', '奇异果焖饭 * 1,', '25', '2016-10-13 23:56:29', '已配餐');
INSERT INTO `theorder` VALUES ('admin', '奇异果焖饭 * 1,', '25', '2016-10-14 08:25:03', '已配餐');
INSERT INTO `theorder` VALUES ('qwert', '甜橙盖饭 * 1,苹果汤面 * 1,奇异果焖饭 * 2,石榴炒面 * 2,', '151', '2016-10-14 08:43:26', '已配餐');
INSERT INTO `theorder` VALUES ('qwert', '甜橙盖饭 * 1,', '21', '2016-10-14 08:44:12', '已配餐');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `question` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('admin', 'admin', '18829235991', 'a', 'b');
INSERT INTO `user` VALUES ('atao', 'shabi', '1882731974', 'dfa', 'dfa');
INSERT INTO `user` VALUES ('mashabi', '1014123', '13028519730', '123', '456');
INSERT INTO `user` VALUES ('mrz', '123', '1234', '123456', '1234567');
INSERT INTO `user` VALUES ('qw', '12', '12', '12', '2');
INSERT INTO `user` VALUES ('qwer', '1234', '12345678901', 'sadf', 'sadfas');
INSERT INTO `user` VALUES ('qwert', '1234', '12345678901', 'rqe', 'trwe');
INSERT INTO `user` VALUES ('wz', '123', '111', 'zzz', 'zzz');
INSERT INTO `user` VALUES ('yu', '123', '18829235253', 'yu', '123');
INSERT INTO `user` VALUES ('zxc', '111', '111', '11', '11');
INSERT INTO `user` VALUES ('zy', '123', '111', 'fsfsd', 'sfdwer');
