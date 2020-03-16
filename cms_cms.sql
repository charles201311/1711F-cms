/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50639
Source Host           : localhost:3306
Source Database       : 1711

Target Server Type    : MYSQL
Target Server Version : 50639
File Encoding         : 65001

Date: 2020-03-16 10:10:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `cms_article`
-- ----------------------------
DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '文章内容',
  `picture` varchar(200) DEFAULT NULL COMMENT '标题图片',
  `channel_id` int(11) DEFAULT NULL COMMENT '所属栏目',
  `category_id` int(11) DEFAULT NULL COMMENT '所属分类',
  `user_id` int(11) DEFAULT NULL COMMENT '文章发布人',
  `hits` int(11) DEFAULT '0',
  `hot` int(11) DEFAULT '0',
  `status` int(11) DEFAULT NULL COMMENT '0,刚发布,1审核通过,-1 审核未通过',
  `deleted` int(11) DEFAULT NULL COMMENT '0:正常,1:删除',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `summary` text,
  `content_type` int(11) DEFAULT '0' COMMENT '文章类型: 1:html 2:image',
  `keywords` varchar(100) DEFAULT NULL,
  `original` varchar(100) DEFAULT NULL,
  `comment_num` int(11) DEFAULT '0' COMMENT '评论数量',
  PRIMARY KEY (`id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_USER` (`user_id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_CHAN` (`channel_id`),
  KEY `FK_CMS_ARTI_REFERENCE_CMS_CATE` (`category_id`),
  CONSTRAINT `cms_article_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `cms_category` (`id`),
  CONSTRAINT `cms_article_ibfk_2` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`),
  CONSTRAINT `cms_article_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_article
-- ----------------------------
INSERT INTO `cms_article` VALUES ('16', '硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	人类一直以来都想实现长生，目前，硅谷有数十个公司在做事人类未来永生技术的研究，而谷歌首席科学家雷·库兹韦尔预言说：到了2029年，人类将开始正式走上永生之旅；到2045年，人类将正式实现永生！\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔是美国硅谷知名的未来学研究者，发明家，作家，谷歌的首席工程师。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/02444a34691944cd8041c2f3ea52b109\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他曾发明了盲人阅读机、音乐合成器和语音识别系统。1988年，麻省理工学院提名他为“当年杰出发明家“。他曾获9项名誉博士学位，2次总统荣誉奖。同时也是一名成功的企业家，他用他的发明创办了自己的企业，开发出多项造福人类的高科技产品。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔被比尔盖茨称为“我所知道的人工智能预测领域最牛的人”，据说他的预测准确率高达86%。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/5866a0d13a3f48e1ad26220df982091b\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他成功预测了苏联的解体、电脑战胜冠军棋手、数字助理（如Siri）的出现，虚拟和增强现实系统等，其中最为知名的是他曾预测到了上世纪90年代，全球互联网使用率会暴增，到了21世纪初，无线网络会被大范围使用。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	还有就是他曾预言90年末电脑的发展将战胜棋王，1997年，“深蓝”战胜了棋王加里·卡斯帕罗夫。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	库兹韦尔之所以作出这样的预言，是基于这样的判断：\n</p>\n<ul class=\" list-paddingleft-2\" style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<li>\n		人体即将可以植入纳米机器人，纳米机器人开始接管人类的免疫系统，把病原体，肿瘤等一系列的病变错误进行修复。\n	</li>\n	<li>\n		人体开始启动程序化，植入纳米程序芯片后开始由机器人编程，实现一系列的组织器官的修复，比如癌症还有心血管疾病的修复。\n	</li>\n	<li>\n		当肉体再也支撑不了现实的“摧残”，渐渐老化不能用的时候，只需要将记忆芯片取出来，借助人工智能技术，合成一个新的“大脑”。\n	</li>\n</ul>', '5be50724-5d1f-4670-9622-4cb889ffd832.jpg', '1', '1', '1', '0', '0', '0', '0', '2020-03-05 11:42:47', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('17', '硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	人类一直以来都想实现长生，目前，硅谷有数十个公司在做事人类未来永生技术的研究，而谷歌首席科学家雷·库兹韦尔预言说：到了2029年，人类将开始正式走上永生之旅；到2045年，人类将正式实现永生！\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔是美国硅谷知名的未来学研究者，发明家，作家，谷歌的首席工程师。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/02444a34691944cd8041c2f3ea52b109\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他曾发明了盲人阅读机、音乐合成器和语音识别系统。1988年，麻省理工学院提名他为“当年杰出发明家“。他曾获9项名誉博士学位，2次总统荣誉奖。同时也是一名成功的企业家，他用他的发明创办了自己的企业，开发出多项造福人类的高科技产品。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔被比尔盖茨称为“我所知道的人工智能预测领域最牛的人”，据说他的预测准确率高达86%。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/5866a0d13a3f48e1ad26220df982091b\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他成功预测了苏联的解体、电脑战胜冠军棋手、数字助理（如Siri）的出现，虚拟和增强现实系统等，其中最为知名的是他曾预测到了上世纪90年代，全球互联网使用率会暴增，到了21世纪初，无线网络会被大范围使用。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	还有就是他曾预言90年末电脑的发展将战胜棋王，1997年，“深蓝”战胜了棋王加里·卡斯帕罗夫。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	库兹韦尔之所以作出这样的预言，是基于这样的判断：\n</p>\n<ul class=\" list-paddingleft-2\" style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<li>\n		人体即将可以植入纳米机器人，纳米机器人开始接管人类的免疫系统，把病原体，肿瘤等一系列的病变错误进行修复。\n	</li>\n	<li>\n		人体开始启动程序化，植入纳米程序芯片后开始由机器人编程，实现一系列的组织器官的修复，比如癌症还有心血管疾病的修复。\n	</li>\n	<li>\n		当肉体再也支撑不了现实的“摧残”，渐渐老化不能用的时候，只需要将记忆芯片取出来，借助人工智能技术，合成一个新的“大脑”。\n	</li>\n</ul>', 'edf39005-61c4-44a8-8174-ea74ef0ce49b.jpg', '1', '2', '1', '1', '1', '0', '0', '2020-03-05 11:43:38', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('18', '硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	人类一直以来都想实现长生，目前，硅谷有数十个公司在做事人类未来永生技术的研究，而谷歌首席科学家雷·库兹韦尔预言说：到了2029年，人类将开始正式走上永生之旅；到2045年，人类将正式实现永生！\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔是美国硅谷知名的未来学研究者，发明家，作家，谷歌的首席工程师。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/02444a34691944cd8041c2f3ea52b109\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他曾发明了盲人阅读机、音乐合成器和语音识别系统。1988年，麻省理工学院提名他为“当年杰出发明家“。他曾获9项名誉博士学位，2次总统荣誉奖。同时也是一名成功的企业家，他用他的发明创办了自己的企业，开发出多项造福人类的高科技产品。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔被比尔盖茨称为“我所知道的人工智能预测领域最牛的人”，据说他的预测准确率高达86%。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/5866a0d13a3f48e1ad26220df982091b\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他成功预测了苏联的解体、电脑战胜冠军棋手、数字助理（如Siri）的出现，虚拟和增强现实系统等，其中最为知名的是他曾预测到了上世纪90年代，全球互联网使用率会暴增，到了21世纪初，无线网络会被大范围使用。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	还有就是他曾预言90年末电脑的发展将战胜棋王，1997年，“深蓝”战胜了棋王加里·卡斯帕罗夫。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	库兹韦尔之所以作出这样的预言，是基于这样的判断：\n</p>\n<ul class=\" list-paddingleft-2\" style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<li>\n		人体即将可以植入纳米机器人，纳米机器人开始接管人类的免疫系统，把病原体，肿瘤等一系列的病变错误进行修复。\n	</li>\n	<li>\n		人体开始启动程序化，植入纳米程序芯片后开始由机器人编程，实现一系列的组织器官的修复，比如癌症还有心血管疾病的修复。\n	</li>\n	<li>\n		当肉体再也支撑不了现实的“摧残”，渐渐老化不能用的时候，只需要将记忆芯片取出来，借助人工智能技术，合成一个新的“大脑”。\n	</li>\n</ul>', '643a762e-f4c7-491f-ba7a-463097747757.jpg', '1', '2', '1', '0', '1', '0', '0', '2020-03-05 11:43:40', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('19', '硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	人类一直以来都想实现长生，目前，硅谷有数十个公司在做事人类未来永生技术的研究，而谷歌首席科学家雷·库兹韦尔预言说：到了2029年，人类将开始正式走上永生之旅；到2045年，人类将正式实现永生！\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔是美国硅谷知名的未来学研究者，发明家，作家，谷歌的首席工程师。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/02444a34691944cd8041c2f3ea52b109\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他曾发明了盲人阅读机、音乐合成器和语音识别系统。1988年，麻省理工学院提名他为“当年杰出发明家“。他曾获9项名誉博士学位，2次总统荣誉奖。同时也是一名成功的企业家，他用他的发明创办了自己的企业，开发出多项造福人类的高科技产品。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔被比尔盖茨称为“我所知道的人工智能预测领域最牛的人”，据说他的预测准确率高达86%。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/5866a0d13a3f48e1ad26220df982091b\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他成功预测了苏联的解体、电脑战胜冠军棋手、数字助理（如Siri）的出现，虚拟和增强现实系统等，其中最为知名的是他曾预测到了上世纪90年代，全球互联网使用率会暴增，到了21世纪初，无线网络会被大范围使用。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	还有就是他曾预言90年末电脑的发展将战胜棋王，1997年，“深蓝”战胜了棋王加里·卡斯帕罗夫。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	库兹韦尔之所以作出这样的预言，是基于这样的判断：\n</p>\n<ul class=\" list-paddingleft-2\" style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<li>\n		人体即将可以植入纳米机器人，纳米机器人开始接管人类的免疫系统，把病原体，肿瘤等一系列的病变错误进行修复。\n	</li>\n	<li>\n		人体开始启动程序化，植入纳米程序芯片后开始由机器人编程，实现一系列的组织器官的修复，比如癌症还有心血管疾病的修复。\n	</li>\n	<li>\n		当肉体再也支撑不了现实的“摧残”，渐渐老化不能用的时候，只需要将记忆芯片取出来，借助人工智能技术，合成一个新的“大脑”。\n	</li>\n</ul>', '9461fed4-5960-4174-bec7-edf2a37b1df7.jpg', '1', '2', '1', '0', '0', '1', '0', '2020-03-05 11:43:41', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('20', '硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	人类一直以来都想实现长生，目前，硅谷有数十个公司在做事人类未来永生技术的研究，而谷歌首席科学家雷·库兹韦尔预言说：到了2029年，人类将开始正式走上永生之旅；到2045年，人类将正式实现永生！\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔是美国硅谷知名的未来学研究者，发明家，作家，谷歌的首席工程师。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/02444a34691944cd8041c2f3ea52b109\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他曾发明了盲人阅读机、音乐合成器和语音识别系统。1988年，麻省理工学院提名他为“当年杰出发明家“。他曾获9项名誉博士学位，2次总统荣誉奖。同时也是一名成功的企业家，他用他的发明创办了自己的企业，开发出多项造福人类的高科技产品。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	雷·库兹韦尔被比尔盖茨称为“我所知道的人工智能预测领域最牛的人”，据说他的预测准确率高达86%。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/5866a0d13a3f48e1ad26220df982091b\" alt=\"硅谷著名预言家表示，2045年人类将实现永生，50年内能实现复活\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	他成功预测了苏联的解体、电脑战胜冠军棋手、数字助理（如Siri）的出现，虚拟和增强现实系统等，其中最为知名的是他曾预测到了上世纪90年代，全球互联网使用率会暴增，到了21世纪初，无线网络会被大范围使用。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	还有就是他曾预言90年末电脑的发展将战胜棋王，1997年，“深蓝”战胜了棋王加里·卡斯帕罗夫。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	库兹韦尔之所以作出这样的预言，是基于这样的判断：\n</p>\n<ul class=\" list-paddingleft-2\" style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<li>\n		人体即将可以植入纳米机器人，纳米机器人开始接管人类的免疫系统，把病原体，肿瘤等一系列的病变错误进行修复。\n	</li>\n	<li>\n		人体开始启动程序化，植入纳米程序芯片后开始由机器人编程，实现一系列的组织器官的修复，比如癌症还有心血管疾病的修复。\n	</li>\n	<li>\n		当肉体再也支撑不了现实的“摧残”，渐渐老化不能用的时候，只需要将记忆芯片取出来，借助人工智能技术，合成一个新的“大脑”。\n	</li>\n</ul>', 'e5ffc83c-0520-417d-90f1-2d8c8b9409e2.jpg', '1', '2', '1', '1', '0', '0', '0', '2020-03-05 11:43:43', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('21', '  华为鸿蒙确认更名！网民：新名称更令人惊艳', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	最近有报道称，华为的鸿蒙系统将余八月份与大家见面。余承东以前说过，但现在看来是真的。据悉，华为全球开发者大会也将在同一天举行。那时，可以看到全球软件开发人员聚集在一起解决鸿蒙面临的生态问题，并努力开发软件生态系统。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/5c47c1557aeb419d8614e6231bb92eb9\" alt=\"华为鸿蒙确认更名！网民：新名称更令人惊艳\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	可以看出华为这次将再次放大招了，自鸿蒙宣布以来，每个人的期望都不小。虽然这个名字乍一看听起来很奇怪，但实际上是取自\"混沌初开\"。目前，鸿盟还在欧洲注册了商标，名为\"方舟\"，意为诺亚方舟。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/afd3717aef3a42b4b24b9e91536acc41\" alt=\"华为鸿蒙确认更名！网民：新名称更令人惊艳\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	但是，鸿蒙的新名字又来了，被称为\"Harmony\"！它的意思是\"和谐\"。尽管它不如\"方舟\"强大，但它更加宏伟。此外，新名称的发音与鸿蒙类似，鸿蒙即将显示其真正的实力。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/669fe0445bce4676b8dd3d8f5d022340\" alt=\"华为鸿蒙确认更名！网民：新名称更令人惊艳\" />\n</div>', 'cfeb4e75-fcbb-4801-a997-e312fbdda0fd.jpg', '1', '2', '1', '0', '1', '1', '0', '2020-03-05 11:49:26', null, null, '0', null, null, '2');
INSERT INTO `cms_article` VALUES ('22', 'test ', 'aaaa', 'deacb52a-9598-46a7-9343-fa2c2692192e.jpg', '2', '5', '1', '1', '0', '-1', '0', '2020-03-05 19:39:30', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('23', '苹果发力中端市场，从6188跌到2999，128GB+iOS13', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	在众多智能手机厂商中，苹果是最会赚钱的一个，凭借iPhone手机，苹果获得了丰厚的利润。比如苹果史上卖的最火的iPhone6系列，据说它的出货量已经高达2.5亿。iPhone6系列因为亲民售价，其占据的市场正是那些中端市场，也就是3000元左右的市场。现在，虽然iPhone6系列已经停产，但苹果依然在这个市场发力，用的是iPhone6系列的继任者——iPhone7。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/324ba775441349fd9516d75de85fa5a6\" alt=\"苹果发力中端市场，从6188跌到2999，128GB+iOS13\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	最新消息显示，iPhone7现在依然有售，同时售价很低，仅2999元。简单说说iPhone7的情况，就是苹果发力中端市场，从6188跌到2999，拥有128GB+iOS13系统。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/76ad2cc5cf914a71a06caa8a34f46348\" alt=\"苹果发力中端市场，从6188跌到2999，128GB+iOS13\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	作为继任者，iPhone7延续iPhone6系列的优点，4.7英寸小屏，圆形HOME键，IP67级别防水防尘，还有强劲性能。在这里要仔细说说这个防水防尘功能，目前3000元左右的机型，基本不支持这些，唯独iPhone7，支持防水和防尘，这在平时的使用中，会让用户非常放心，能够随意使用。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p9.pstatp.com/large/pgc-image/203468f3fc5c476881ef89e141a94e41\" alt=\"苹果发力中端市场，从6188跌到2999，128GB+iOS13\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	相比iPhone6，iPhone7还有一个亮点，就是机身背部的天线放置方式更好看，配合一体化机身设计风格，看起来非常不错。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/4875717557a442eca7eab630464d7794\" alt=\"苹果发力中端市场，从6188跌到2999，128GB+iOS13\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	iPhone7的HOME键，也是全新风格，添加振动反馈，是全新力度感应键，可以感知压力，能够提供触感反馈，响应度更高，同时不易被按坏。核心硬件上，iPhone7带来苹果A10处理器，可以升级到最新iOS13系统，再加上128GB机身存储，用起来也是非常流畅。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p1.pstatp.com/large/pgc-image/133dd548104948f5b5904d070a1837a2\" alt=\"苹果发力中端市场，从6188跌到2999，128GB+iOS13\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	如果说iPhone7的缺点，那就是拍照了，到了现在，安卓阵营手机的拍照都在全面提升，对比来看，iPhone7的拍照功能就显得有些少了。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	屏幕前的朋友，你们觉得iPhone7如何，可以在评论区聊聊，说说你们的看法\n</p>', '055ab5e4-b901-4201-be77-f1f590f07268.jpg', '1', '2', '3', '0', '0', '0', '0', '2020-03-13 10:27:25', null, null, '0', null, null, '0');
INSERT INTO `cms_article` VALUES ('24', '《花木兰》全面撤档，万达负债融资20亿，全球影业的“黑暗时刻”', '<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	疫情爆发两个月，国内电影产业在回温的天气与降低的确诊数量下得到喘息，复工准备提上日程，而海外市场上疫情才开始真正显现破坏力。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	今天（3月13日），迪士尼正式对外宣布，受疫情影响，原本预计3月27日上映的真人版《花木兰》全球撤档，皮克斯新动画电影《1/2的魔法》延期，同时此前宣布4月上映的电影《新变种人》《鹿角》（福斯发行）宣布延期，《尚气与十诫传奇》停止拍摄，计划5月上映的电影《黑寡妇》也传出延期消息，而拍摄中的漫威剧集《猎鹰与冬兵》已经停止拍摄。——原本携着重磅IP气势汹汹前行的帝国迪士尼，踩了一个急刹车。\n</p>\n<div class=\"pgc-img\" style=\"margin:0px;padding:0px;font-size:16px;color:#222222;font-family:&quot;background-color:#FFFFFF;\">\n	<img src=\"http://p3.pstatp.com/large/pgc-image/08e31c50c5274fd2a4a097a1922e875f\" alt=\"《花木兰》全面撤档，万达负债融资20亿，全球影业的“黑暗时刻”\" />\n</div>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	<br />\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	同样被动刹车的还有其他好莱坞制片厂，派拉蒙宣布电影《寂静之地2》全球撤档、爱情喜剧片《爱情鸟》撤档，环球影业原计划将于5月22日上映的《速度与激情9》延期一年，索尼影业此前3月开始公映的《比得兔2》推迟到8月，更早之前，米高梅宣布《007:无暇赴死》推迟上映。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	至此，好莱坞市场3月到4月的大体量电影基本撤档。同时，原定于3月30日-4月2日举行的好莱坞业界推介大会Cinemacon宣布取消，历年好莱坞制片厂齐都要在此进行新片推介，盛会取消，海外电影市场受到的冲击进一步外延。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	而国内电影产业的情况也没有更好一些。虽然国内内容市场已经渐渐缓过了电影大规模撤档、影院关闭的打击，但是院线的处境并没有更好。\n</p>\n<p style=\"color:#222222;font-family:&quot;font-size:16px;background-color:#FFFFFF;\">\n	3月10日万达电影对外发布公告，拟发行不超过20亿的债务类融资工具，这无疑显示出院线受疫情影响出现了资金危机，而2019年万达业绩快报透露公司净利润亏损47亿，也预示着2020年万达处境的越发艰难。\n</p>', 'a2658f1a-ed2c-4fdb-b00d-8f0f7433e075.png', '6', '21', '1', '0', '0', '1', '0', '2020-03-14 08:37:48', null, null, '0', null, null, '1');
INSERT INTO `cms_article` VALUES ('25', '垃圾分类', '{\"A\":\"干垃圾\",\"B\":\"湿垃圾\"}', null, null, null, '1', '0', '0', '1', '0', '2020-03-15 10:58:50', null, null, '1', null, null, '0');
INSERT INTO `cms_article` VALUES ('26', '疫情什么时候结束', '{\"A\":\"明天\",\"B\":\"后天\",\"C\":\"1个月后\"}', null, null, null, '1', '0', '0', '1', '0', '2020-03-15 14:22:20', null, null, '1', null, null, '0');
INSERT INTO `cms_article` VALUES ('27', '你想升班吗？', '{\"A\":\"想升班\",\"B\":\"不想升班\",\"C\":\"十分想升班\",\"D\":\"我想末班\"}', null, null, null, '3', '0', '0', '1', '0', '2020-03-15 15:06:41', null, null, '1', null, null, '0');
INSERT INTO `cms_article` VALUES ('28', 'test316', 'test316test316test316test316test316test316test316test316test316', '1c9d94fb-bfae-42e8-96a1-cf5f9ce28d99.png', '4', '14', '5', '0', '0', '0', '0', '2020-03-16 08:42:10', null, null, null, null, null, '0');
INSERT INTO `cms_article` VALUES ('29', 'test315', 'test315test315test315test315test315test315', 'd801ebdd-0e4b-4693-99e0-0912d5aee078.png', '5', '17', '5', '0', '0', '1', '0', '2020-03-16 08:47:18', null, null, '0', null, null, '0');

-- ----------------------------
-- Table structure for `cms_category`
-- ----------------------------
DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `channel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_CMS_CATE_REFERENCE_CMS_CHAN` (`channel_id`),
  CONSTRAINT `cms_category_ibfk_1` FOREIGN KEY (`channel_id`) REFERENCES `cms_channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_category
-- ----------------------------
INSERT INTO `cms_category` VALUES ('1', '互联网', '1');
INSERT INTO `cms_category` VALUES ('2', '软件', '1');
INSERT INTO `cms_category` VALUES ('3', '智能家居', '1');
INSERT INTO `cms_category` VALUES ('4', '虚拟货币', '2');
INSERT INTO `cms_category` VALUES ('5', '股票', '2');
INSERT INTO `cms_category` VALUES ('6', '外汇', '2');
INSERT INTO `cms_category` VALUES ('7', '黄金', '2');
INSERT INTO `cms_category` VALUES ('8', '宏观经济', '2');
INSERT INTO `cms_category` VALUES ('9', '美国', '3');
INSERT INTO `cms_category` VALUES ('10', '亚洲', '3');
INSERT INTO `cms_category` VALUES ('11', '欧洲', '3');
INSERT INTO `cms_category` VALUES ('12', '非洲', '3');
INSERT INTO `cms_category` VALUES ('13', '新车', '4');
INSERT INTO `cms_category` VALUES ('14', 'SUV', '4');
INSERT INTO `cms_category` VALUES ('15', '汽车导购', '4');
INSERT INTO `cms_category` VALUES ('16', '用车', '4');
INSERT INTO `cms_category` VALUES ('17', 'NBA', '5');
INSERT INTO `cms_category` VALUES ('18', 'CBA', '5');
INSERT INTO `cms_category` VALUES ('19', '中超', '5');
INSERT INTO `cms_category` VALUES ('20', '意甲', '5');
INSERT INTO `cms_category` VALUES ('21', '电影', '6');
INSERT INTO `cms_category` VALUES ('22', '电视剧', '6');
INSERT INTO `cms_category` VALUES ('23', '综艺', '6');
INSERT INTO `cms_category` VALUES ('24', '明星八卦', '6');
INSERT INTO `cms_category` VALUES ('25', '段子', '7');
INSERT INTO `cms_category` VALUES ('26', '爆笑节目', '7');
INSERT INTO `cms_category` VALUES ('27', '童趣萌宠', '7');
INSERT INTO `cms_category` VALUES ('28', '雷人囧事', '7');
INSERT INTO `cms_category` VALUES ('29', '老图片', '9');
INSERT INTO `cms_category` VALUES ('30', '图片故事', '9');
INSERT INTO `cms_category` VALUES ('31', '摄影集', '9');
INSERT INTO `cms_category` VALUES ('32', '王者荣耀', '8');

-- ----------------------------
-- Table structure for `cms_channel`
-- ----------------------------
DROP TABLE IF EXISTS `cms_channel`;
CREATE TABLE `cms_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `sorted` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_channel
-- ----------------------------
INSERT INTO `cms_channel` VALUES ('1', '科技', null, null, null);
INSERT INTO `cms_channel` VALUES ('2', '财经', null, null, null);
INSERT INTO `cms_channel` VALUES ('3', '国际', null, null, null);
INSERT INTO `cms_channel` VALUES ('4', '汽车', null, null, null);
INSERT INTO `cms_channel` VALUES ('5', '体育', null, null, null);
INSERT INTO `cms_channel` VALUES ('6', '娱乐', null, null, null);
INSERT INTO `cms_channel` VALUES ('7', '搞笑', null, null, null);
INSERT INTO `cms_channel` VALUES ('8', '游戏', '游戏游戏游戏游戏', null, null);
INSERT INTO `cms_channel` VALUES ('9', '图片', null, null, null);

-- ----------------------------
-- Table structure for `cms_collect`
-- ----------------------------
DROP TABLE IF EXISTS `cms_collect`;
CREATE TABLE `cms_collect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(300) DEFAULT NULL,
  `url` varchar(200) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_collect
-- ----------------------------
INSERT INTO `cms_collect` VALUES ('2', '  华为鸿蒙确认更名！网民：新名称更令人惊艳', 'http://127.0.0.1/articleDetail?id=21', '3', '2020-03-14 10:01:41');

-- ----------------------------
-- Table structure for `cms_comment`
-- ----------------------------
DROP TABLE IF EXISTS `cms_comment`;
CREATE TABLE `cms_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `article_id` int(11) DEFAULT NULL,
  `content` longtext,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `article_id` (`article_id`),
  CONSTRAINT `cms_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `cms_user` (`id`),
  CONSTRAINT `cms_comment_ibfk_2` FOREIGN KEY (`article_id`) REFERENCES `cms_article` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_comment
-- ----------------------------
INSERT INTO `cms_comment` VALUES ('8', '1', '21', 'aaaaaaa', '2020-03-14 08:55:51');
INSERT INTO `cms_comment` VALUES ('9', '1', '21', 'bbbbbbbbb', '2020-03-14 08:56:25');
INSERT INTO `cms_comment` VALUES ('10', '1', '24', 'ccccc', '2020-03-14 08:56:42');

-- ----------------------------
-- Table structure for `cms_settings`
-- ----------------------------
DROP TABLE IF EXISTS `cms_settings`;
CREATE TABLE `cms_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_domain` varchar(50) DEFAULT NULL,
  `site_name` varchar(50) DEFAULT NULL,
  `article_list_size` int(11) DEFAULT NULL,
  `slide_size` int(11) DEFAULT NULL,
  `admin_username` varchar(16) DEFAULT NULL,
  `admin_password` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_settings
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_slide`
-- ----------------------------
DROP TABLE IF EXISTS `cms_slide`;
CREATE TABLE `cms_slide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `picture` varchar(50) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_slide
-- ----------------------------
INSERT INTO `cms_slide` VALUES ('1', '广告一', '', 'jd1.png');
INSERT INTO `cms_slide` VALUES ('2', '广告一', null, 'jd2.png');
INSERT INTO `cms_slide` VALUES ('3', '广告三', null, 'jd3.png');
INSERT INTO `cms_slide` VALUES ('4', '广告四', null, 'jd4.png');
INSERT INTO `cms_slide` VALUES ('5', '开发步骤', null, '开发步骤.png');

-- ----------------------------
-- Table structure for `cms_user`
-- ----------------------------
DROP TABLE IF EXISTS `cms_user`;
CREATE TABLE `cms_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nickname` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT '0' COMMENT '0:正常,1:禁用',
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `role` varchar(1) DEFAULT '0' COMMENT '0:普通用户,1:管理员',
  `url` varchar(200) DEFAULT NULL COMMENT '个人博客网址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_user
-- ----------------------------
INSERT INTO `cms_user` VALUES ('1', 'lucy', '16140a5af212b82efb8a2ca2918a0762', 'lucy', null, '0', '0', '2020-03-11 11:51:36', '2020-03-05 11:51:51', '0', null);
INSERT INTO `cms_user` VALUES ('2', 'admin', '16140a5af212b82efb8a2ca2918a0762', 'admin', null, '1', '0', null, null, '1', null);
INSERT INTO `cms_user` VALUES ('3', 'jack', '16140a5af212b82efb8a2ca2918a0762', 'jack', null, '1', '0', '2020-03-13 10:12:55', null, '0', null);
INSERT INTO `cms_user` VALUES ('4', 'test', '16140a5af212b82efb8a2ca2918a0762', 'test', null, '1', '0', '2020-03-15 15:00:31', null, '0', null);
INSERT INTO `cms_user` VALUES ('5', '316', '16140a5af212b82efb8a2ca2918a0762', '316', null, '1', '0', '2020-03-16 08:41:17', null, '0', null);

-- ----------------------------
-- Table structure for `cms_vote`
-- ----------------------------
DROP TABLE IF EXISTS `cms_vote`;
CREATE TABLE `cms_vote` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `option` char(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_vote
-- ----------------------------
INSERT INTO `cms_vote` VALUES ('1', '25', '1', 'A');
INSERT INTO `cms_vote` VALUES ('2', '25', '2', 'B');
INSERT INTO `cms_vote` VALUES ('3', '25', '3', 'A');
INSERT INTO `cms_vote` VALUES ('4', '26', '1', 'A');
INSERT INTO `cms_vote` VALUES ('8', '26', '4', 'B');
INSERT INTO `cms_vote` VALUES ('9', '26', '3', 'B');
INSERT INTO `cms_vote` VALUES ('10', '27', '3', 'A');
INSERT INTO `cms_vote` VALUES ('11', '27', '1', 'B');
INSERT INTO `cms_vote` VALUES ('12', '27', '4', 'A');
