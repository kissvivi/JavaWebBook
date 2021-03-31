/*
Navicat MySQL Data Transfer

Source Server         : vivi
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : books

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-06-10 21:16:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `danjia` varchar(20) DEFAULT NULL,
  `book_name` varchar(30) NOT NULL,
  `zuozhe` char(40) DEFAULT NULL,
  `isbn` char(18) NOT NULL,
  `chubanshe` varchar(30) DEFAULT NULL,
  `jianjie` varchar(255) DEFAULT NULL,
  `image` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`isbn`,`book_name`),
  KEY `book_name` (`book_name`,`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('42.09', '谁的青春不迷茫', '刘同', '978-7-302-44098-7', '中信出版社', '《谁的青春不迷茫》是由中信出版社出版的作家刘同的小说，讲述奋斗小青年刘同十年逆袭人生故事。写给那些都市中焦躁不安困惑迷茫的年轻人的一部作品。一个人，十年光阴；一座城，瞬息万变。 [1] \r\n第八届中国作家富豪榜文化盛典上，《谁的青春不迷茫》获封年度“最佳励志书”。 [2] ', 'image/sdqcbmm.jpg');
INSERT INTO `book` VALUES ('42.00', '你的孤独虽败犹荣', '刘同', '978-7-302-44098-8', '中信出版社', '《你的孤独 虽败犹荣》是2014年由中信出版社出版的图书，作者是刘同\n本书用33个真实动人的故事，讲述33种形式各异但又直抵内心的孤独。用最温暖的笔触诉说：孤独不是失败，它是自己与自己相处与对话最好的时光。\n此书新书上市仅三个月，销量已突破一百万册，迅速刷新了青春文学的销量纪录。', 'image/ndgdsbyr.jpg');
INSERT INTO `book` VALUES ('42.99', '向着光亮那方', '刘同', '978-7-302-44098-9', '中信出版社', '谁的青春不迷茫系列之三，青年作家刘同2016全新作品。关于人生中的转弯，告别，妥协，原则，裂痕……是青春的敌人，也是成长的代价。我们的青春都一样，孤独，迷茫，有光亮。愿你在自己存在的地方，成为一束光，照亮世界的一角。 [1] \r\n', 'image/xzglnf.jpg');
INSERT INTO `book` VALUES ('42.00', '小王子', '圣埃克苏佩里', '978-7-302-44099-0', '四川出版社', '《小王子》是法国作家安托万·德·圣·埃克苏佩里于1942年写成的著名儿童文学短篇小说。本书的主人公是来自外星球的小王子。书中以一位飞行员作为故事叙述者，讲述了小王子从自己星球出发前往地球的过程中，所经历的各种历险。作者以小王子的孩子式的眼光，透视出成人的空虚、盲目，愚妄和死板教条，用浅显天真的语言写出了人类的孤独寂寞、没有根基随风流浪的命运。同时，也表达出作者对金钱关系的批判，对真善美的讴歌。', 'image/xwz1.jpg');
INSERT INTO `book` VALUES ('50.00', '诗经', '佚名', '978-7-302-44099-1', '中华书局', '《诗经》是中国古代诗歌开端，最早的一部诗歌总集，收集了西周初年至春秋中叶（前11世纪至前6世纪）的诗歌，共311篇，其中6篇为笙诗，即只有标题，没有内容，称为笙诗六篇（南陔、白华、华黍、由康、崇伍、由仪），反映了周初至周晚期约五百年间的社会面貌。 [1] ', 'image/sj.jpg');
INSERT INTO `book` VALUES ('88.00', '谁动了我的奶酪？', '斯宾塞·约翰逊', '978-7-302-44099-2', '中信出版社', '《谁动了我的奶酪？》是美国作家斯宾塞·约翰逊创作的一个寓言故事，该书首次出版于1998年。\n书中主要讲述4个“人物”—两只小老鼠“嗅嗅”、“匆匆”和两个小矮人“哼哼”、“唧唧”找寻奶酪的故事。 [1] \n该书自1998年9月出版后，两年中销售2000万册，同时迅速跃居《纽约时报》、《华尔街日报》、《商业周刊》最畅销图书排行榜第一名。', 'image/sdlwdnl.jpg');
INSERT INTO `book` VALUES ('68.01', '余罪', '常书欣', '978-7-302-44099-3', '海南出版社', '《余罪》是网络原创文学作家常书欣所著的都市类小说，连载于创世中文网，小说已完结。?[1]??小说主角，警校学生余罪从一场特殊的选拔开始，进入了生活和社会矛盾之中，成为一个卧底，是一种挑战，也是一种难以想象的痛苦生活的开始。2014年2月，《余罪》冲入百度搜索风云榜小说总榜前百，言情第三十。2017年7月12日，《2017猫片 胡润原创文学IP价值榜》发布，《余罪》位列29位。', 'image/yz.jpg');

-- ----------------------------
-- Table structure for bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE `bookinfo` (
  `name` char(40) DEFAULT NULL,
  `id` char(20) NOT NULL,
  `password` char(30) DEFAULT NULL,
  `phone_number` char(11) DEFAULT NULL,
  `dizhi` varchar(30) DEFAULT NULL,
  `mail` char(30) DEFAULT NULL,
  `flag` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bookinfo
-- ----------------------------
INSERT INTO `bookinfo` VALUES ('123', '123', '123', '123', '123', '123', 'no');
INSERT INTO `bookinfo` VALUES ('1', 'admin', 'admin', '15549269166', '武汉工商学院', '1150622459@qq.com', 'yes');
INSERT INTO `bookinfo` VALUES ('xx', 'nihao', '22', '22', '22', '22', 'no');
INSERT INTO `bookinfo` VALUES ('root', 'root', 'root', 'root', 'root', 'root', 'yes');
INSERT INTO `bookinfo` VALUES ('向伟', 'vi', '33', '15549269166', '武汉', '1150622459@qq.com', 'no');
INSERT INTO `bookinfo` VALUES ('向伟', 'vivi', '22', '15549269166', '武汉', '111', 'no');
INSERT INTO `bookinfo` VALUES ('向伟', 'xw', '222', '2222', '222', '22', 'no');
INSERT INTO `bookinfo` VALUES ('xw', 'xw1', 'xw2', 'xw3', 'xw4', 'xw5', 'no');
INSERT INTO `bookinfo` VALUES ('向伟', 'xww', '310310', '15549269166', '湖北', '1150622459@qq.com', 'no');

-- ----------------------------
-- Table structure for ddan
-- ----------------------------
DROP TABLE IF EXISTS `ddan`;
CREATE TABLE `ddan` (
  `ddan_id` char(20) NOT NULL,
  `danjia` varchar(20) DEFAULT NULL,
  `book_name` char(30) DEFAULT NULL,
  `isbn` char(18) NOT NULL,
  `kh_id` char(20) NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`kh_id`,`isbn`,`ddan_id`),
  KEY ` nn` (`book_name`,`isbn`) USING BTREE,
  CONSTRAINT `bookss` FOREIGN KEY (`book_name`, `isbn`) REFERENCES `book` (`book_name`, `isbn`),
  CONSTRAINT `id` FOREIGN KEY (`kh_id`) REFERENCES `bookinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ddan
-- ----------------------------
INSERT INTO `ddan` VALUES ('709532981', '42.05', '谁的青春不迷茫', '978-7-302-44098-7', 'vivi', 'Wed May 30 00:43:02 CST 2018');
INSERT INTO `ddan` VALUES ('850674576', '88.00', '谁动了我的奶酪？', '978-7-302-44099-2', 'vivi', 'Sun May 27 01:43:33 CST 2018');
INSERT INTO `ddan` VALUES ('102238463', '68.01', '余罪', '978-7-302-44099-3', 'vivi', 'Mon May 28 09:30:47 CST 2018');
