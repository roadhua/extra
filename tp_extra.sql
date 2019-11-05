/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : 127.0.0.1:3306
 Source Schema         : tp_extra

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 05/11/2019 20:49:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for datamessage
-- ----------------------------
DROP TABLE IF EXISTS `datamessage`;
CREATE TABLE `datamessage`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `StudentID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `floor` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼层号',
  `Location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电脑位置',
  `status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电脑状态',
  `Leaving` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '留言',
  `time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '时间',
  `v_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '保留机房的问题号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机房留言表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for roomlist
-- ----------------------------
DROP TABLE IF EXISTS `roomlist`;
CREATE TABLE `roomlist`  (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `roomName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '机房名',
  `Rows` int(20) NOT NULL COMMENT '几行',
  `EachRow` int(20) NOT NULL COMMENT '每行数量',
  `number` int(30) NOT NULL COMMENT '总数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '机房表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roomlist
-- ----------------------------
INSERT INTO `roomlist` VALUES (28, '3-702', 8, 8, 64);
INSERT INTO `roomlist` VALUES (29, '3-703', 8, 9, 72);
INSERT INTO `roomlist` VALUES (30, '3-704', 6, 9, 54);
INSERT INTO `roomlist` VALUES (31, '2-404', 5, 5, 25);
INSERT INTO `roomlist` VALUES (32, '2-405', 6, 6, 36);
INSERT INTO `roomlist` VALUES (33, '2-406', 7, 8, 56);
INSERT INTO `roomlist` VALUES (34, '3-303', 8, 8, 64);
INSERT INTO `roomlist` VALUES (35, '3-304', 6, 6, 36);
INSERT INTO `roomlist` VALUES (36, '4-701', 5, 5, 25);
INSERT INTO `roomlist` VALUES (37, '4-402', 6, 8, 48);
INSERT INTO `roomlist` VALUES (38, '4-403', 6, 9, 54);
INSERT INTO `roomlist` VALUES (40, '3-701', 7, 9, 63);

-- ----------------------------
-- Table structure for studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `studentinfo`;
CREATE TABLE `studentinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id自动增长',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号/学号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生账号信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of studentinfo
-- ----------------------------
INSERT INTO `studentinfo` VALUES (1, '18032830102', '123456', '陈创彬');
INSERT INTO `studentinfo` VALUES (2, '18032830112', '123456', '李淇源\r\n');
INSERT INTO `studentinfo` VALUES (3, '18032830120\r\n', '123456', '詹永恒\r\n');
INSERT INTO `studentinfo` VALUES (4, '18032830109\r\n', '123456', '何日荣\r\n');
INSERT INTO `studentinfo` VALUES (5, '18032830110\r\n', '123456', '周振鸿\r\n');
INSERT INTO `studentinfo` VALUES (6, '18032830116\r\n', '123456', '欧阳晨\r\n');
INSERT INTO `studentinfo` VALUES (7, '18032830131\r\n', '123456', '俞凯旋\r\n');
INSERT INTO `studentinfo` VALUES (8, '18032830126\r\n', '123456', '曾晶莹\r\n');
INSERT INTO `studentinfo` VALUES (9, '18032830106', '123456', '詹楚金');
INSERT INTO `studentinfo` VALUES (10, '18032830108\r\n', '123456', '董月华\r\n');
INSERT INTO `studentinfo` VALUES (11, '18032830129\r\n', '123456', '吴远艳\r\n');
INSERT INTO `studentinfo` VALUES (12, '18032830114\r\n', '123456', '黄升\r\n');
INSERT INTO `studentinfo` VALUES (13, '18063470105\r\n', '123456', '吴京泽\r\n');
INSERT INTO `studentinfo` VALUES (14, '18032830111\r\n', '123456', '李浩磊\r\n');
INSERT INTO `studentinfo` VALUES (15, '18032830122\r\n', '123456', '陈春煜\r\n');
INSERT INTO `studentinfo` VALUES (16, '18032830127\r\n', '123456', '陈靓靓\r\n');
INSERT INTO `studentinfo` VALUES (17, '18032830103\r\n', '123456', '刘泽栋\r\n');
INSERT INTO `studentinfo` VALUES (18, '18032830101\r\n', '123456', '陈翘鑫\r\n');
INSERT INTO `studentinfo` VALUES (19, '18032830104\r\n', '123456', '李耀辉\r\n');
INSERT INTO `studentinfo` VALUES (20, '18032830121\r\n', '123456', '王华贵\r\n');
INSERT INTO `studentinfo` VALUES (21, '18032830113\r\n', '123456', '陈佳炜\r\n');
INSERT INTO `studentinfo` VALUES (22, '18032830107\r\n', '123456', '李志强\r\n');
INSERT INTO `studentinfo` VALUES (23, '18032830118\r\n', '123456', '苏扬\r\n');
INSERT INTO `studentinfo` VALUES (24, '18032830123\r\n', '123456', '林志和\r\n');
INSERT INTO `studentinfo` VALUES (25, '18032830128\r\n', '123456', '李华盛\r\n');
INSERT INTO `studentinfo` VALUES (26, '18032830115\r\n', '123456', '许家毅\r\n');
INSERT INTO `studentinfo` VALUES (27, '18063470104\r\n', '123456', '王梓通\r\n');
INSERT INTO `studentinfo` VALUES (28, '18032830117\r\n', '123456', '庞智权\r\n');
INSERT INTO `studentinfo` VALUES (29, 'admin', '111111', '管理员');

-- ----------------------------
-- Table structure for tp_banner
-- ----------------------------
DROP TABLE IF EXISTS `tp_banner`;
CREATE TABLE `tp_banner`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片名字',
  `pic_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片的地址',
  `pic_goods_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片链接到的商品内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_banner
-- ----------------------------
INSERT INTO `tp_banner` VALUES (1, '20191030/473dc24144d494078de2932f8e332264.jpg', './static/banner/', 'javascript:;');
INSERT INTO `tp_banner` VALUES (2, '20191028/b7871e0dbfcdefd5683351b3bcd8d7a2.jpg', './static/banner/', 'javascript:;');
INSERT INTO `tp_banner` VALUES (3, '20191028/bb793cb3f04cf720d452d4db5e5472e1.jpg', './static/banner/', 'javascript:;');
INSERT INTO `tp_banner` VALUES (4, '20191028/6d28f25b4ed0dae04f5e647fe8a2d123.jpg', './static/banner/', 'javascript:;');
INSERT INTO `tp_banner` VALUES (5, '20191028/0d8237ee20bb0175e096ddc46cc53571.jpg', './static/banner/', 'javascript:;');

-- ----------------------------
-- Table structure for tp_bog
-- ----------------------------
DROP TABLE IF EXISTS `tp_bog`;
CREATE TABLE `tp_bog`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_bog
-- ----------------------------
INSERT INTO `tp_bog` VALUES (1, '久居景', NULL);
INSERT INTO `tp_bog` VALUES (2, '石头', NULL);

-- ----------------------------
-- Table structure for tp_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_category`;
CREATE TABLE `tp_category`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_category
-- ----------------------------
INSERT INTO `tp_category` VALUES (1, '女士上装', 0);
INSERT INTO `tp_category` VALUES (2, '新品', 0);
INSERT INTO `tp_category` VALUES (3, '特色品种', 0);
INSERT INTO `tp_category` VALUES (4, '儿童运动', 0);
INSERT INTO `tp_category` VALUES (5, '童鞋', 0);
INSERT INTO `tp_category` VALUES (6, '复古风', 0);
INSERT INTO `tp_category` VALUES (7, '衬衫', 1);
INSERT INTO `tp_category` VALUES (8, 'T恤', 1);
INSERT INTO `tp_category` VALUES (9, '风衣', 1);
INSERT INTO `tp_category` VALUES (10, '连衣裙', 2);
INSERT INTO `tp_category` VALUES (11, '小西装', 2);
INSERT INTO `tp_category` VALUES (12, '卫衣', 2);
INSERT INTO `tp_category` VALUES (13, '牛仔裤', 2);
INSERT INTO `tp_category` VALUES (14, '演出服', 3);
INSERT INTO `tp_category` VALUES (15, '长袍', 3);
INSERT INTO `tp_category` VALUES (16, 'JK制服', 3);
INSERT INTO `tp_category` VALUES (17, '欧美风', 3);
INSERT INTO `tp_category` VALUES (18, '上衣', 4);
INSERT INTO `tp_category` VALUES (19, '毛衣', 4);
INSERT INTO `tp_category` VALUES (20, '亲子装', 4);
INSERT INTO `tp_category` VALUES (21, '运动鞋', 5);
INSERT INTO `tp_category` VALUES (22, '帆布鞋', 5);
INSERT INTO `tp_category` VALUES (23, '民国', 6);
INSERT INTO `tp_category` VALUES (24, '汉服', 6);

-- ----------------------------
-- Table structure for tp_cs
-- ----------------------------
DROP TABLE IF EXISTS `tp_cs`;
CREATE TABLE `tp_cs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `grade_id` int(11) NOT NULL,
  `student_id` int(11) NULL DEFAULT NULL,
  `cs_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '班级表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_cs
-- ----------------------------
INSERT INTO `tp_cs` VALUES (1, 0, 2, 1);
INSERT INTO `tp_cs` VALUES (2, 0, 2, 2);
INSERT INTO `tp_cs` VALUES (3, 0, 2, 3);
INSERT INTO `tp_cs` VALUES (4, 0, 2, 4);

-- ----------------------------
-- Table structure for tp_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods`;
CREATE TABLE `tp_goods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品名称',
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品描述',
  `category_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品分类id',
  `keywords` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'SEO搜索',
  `more_style` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '该商品的其他款颜色(id获取)',
  `size` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '尺码(中号  大号XL 2XL 3XL)',
  `goods_brand` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品品牌',
  `market_price` decimal(10, 2) NOT NULL COMMENT '市场价',
  `cost` decimal(10, 2) NOT NULL COMMENT '成本价',
  `price` decimal(10, 2) NOT NULL COMMENT '销售价格',
  `stock` int(10) NOT NULL COMMENT '商品库存',
  `shipping_fee` decimal(10, 2) NOT NULL COMMENT '物流运费',
  `is_shelf` int(11) NOT NULL COMMENT '是否上架(1是，0否)',
  `is_new` tinyint(4) NOT NULL COMMENT '本店新品(1是，0否)',
  `is_host` tinyint(4) NOT NULL COMMENT '是否热销推荐(1是，0否)',
  `is_more` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '更多推荐(1是，0否)',
  `provider` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '提供商',
  `shop_clicks` int(11) UNSIGNED NOT NULL COMMENT '商品点击数量',
  `like_clicks` int(11) UNSIGNED NOT NULL COMMENT '用户点赞数量',
  `sales` int(11) NOT NULL COMMENT '销售数量',
  `picture` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品主图',
  `img_id_array` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品副图',
  `details` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品详情(以反斜杠分段)',
  `create_time` int(11) NOT NULL COMMENT '入库时间',
  `goods_number` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统自动生成编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_goods
-- ----------------------------
INSERT INTO `tp_goods` VALUES (34, '【全羊绒】哥弟女装2019秋冬新款圆领葱纱纯羊绒衫图案长袖套头针织衫女毛衣A300342 粉紫', '雪中飞2019春夏新款廓形中长款前短后长活力运动口袋连帽卫衣女X80740152 亮黄色|3100 165/84A', '2,24', '运动口袋连帽卫衣', '55,67,58,78', 'S,M,L,XL,XXL', ' 雪中飞（SNOW FLYING）', 199.00, 68.00, 119.00, 12, 1.00, 1, 0, 1, '0', '雪中飞', 234, 234, 234, '1', '1,2,3,4,5', '品牌： 雪中飞（SNOW FLYING）\r\n商品名称：雪中飞2019春夏新款廓形中长款前短后长活力运动口袋连帽卫衣女X80740152 亮黄色|3100 165/84A商品编号：41461466877店铺： 雪中飞女装官方旗舰店商品毛重：1.0kg货号：X80740152版型：宽松型领型：连帽流行元素：不对称，袋鼠兜衣长：中长款组合形式：单件材质：棉袖型：常规适用年龄：18-24周岁衣门襟：套头图案：字母风格：通勤袖长：长袖上市时间：2019年春季', 1560506517, '00001');
INSERT INTO `tp_goods` VALUES (50, '雷公馆 派克服女2019冬季新品獭兔内胆可拆卸袖子带毛皮草外套中长款尼克服连帽品牌女装', 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）', '1,3', '夏季新品t恤女', '55,67,58,78', 'S,M,L,XL,XXL', ' DGPZ', 288.00, 12.85, 122.00, 23, 34.00, 1, 0, 1, '0', ' DGPZ旗舰店', 234, 4234, 234, '2', '1,2,3,4,5', '品牌： DGPZ\r\n商品名称：DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）商品编号：27002704471店铺： DGPZ旗舰店商品毛重：350.00g商品产地：中国大陆货号：XXL601版型：宽松型领型：圆领流行元素：印花衣长：常规款组合形式：单件材质：棉袖型：常规袖适用年龄：18-24周岁图案文化：创意图案：字母风格：休闲风，简约，运动风，欧美风，韩版，日系袖长：短袖上市时间：2019年夏季', 1560506865, '00002');
INSERT INTO `tp_goods` VALUES (51, 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣', 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）', '1,3', '夏季新品t恤女', '55,67,58,78', 'S,M,L,XL,XXL', ' DGPZ', 198.00, 12.85, 142.00, 23, 34.00, 1, 0, 1, '0', ' DGPZ旗舰店', 234, 4234, 234, '3', '1,2,3,4,5', '品牌： DGPZ\r\n商品名称：DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）商品编号：27002704471店铺： DGPZ旗舰店商品毛重：350.00g商品产地：中国大陆货号：XXL601版型：宽松型领型：圆领流行元素：印花衣长：常规款组合形式：单件材质：棉袖型：常规袖适用年龄：18-24周岁图案文化：创意图案：字母风格：休闲风，简约，运动风，欧美风，韩版，日系袖长：短袖上市时间：2019年夏季', 1560506865, '00003');
INSERT INTO `tp_goods` VALUES (53, 'YAYA鸭鸭服饰轻薄羽绒服女2019新款女装冬季白鸭绒修身韩版超轻薄羽绒衣外套 藏青色009立领', 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）', '1,3', '夏季新品t恤女', '55,67,58,78', 'S,M,L,XL,XXL', ' DGPZ', 185.00, 12.85, 165.00, 23, 34.00, 1, 0, 1, '0', ' DGPZ旗舰店', 234, 4234, 234, '4', '1,2,3,4,5', '品牌： DGPZ\r\n商品名称：DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）商品编号：27002704471店铺： DGPZ旗舰店商品毛重：350.00g商品产地：中国大陆货号：XXL601版型：宽松型领型：圆领流行元素：印花衣长：常规款组合形式：单件材质：棉袖型：常规袖适用年龄：18-24周岁图案文化：创意图案：字母风格：休闲风，简约，运动风，欧美风，韩版，日系袖长：短袖上市时间：2019年夏季', 1560506865, '00004');
INSERT INTO `tp_goods` VALUES (55, 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣', 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）', '1,3', '夏季新品t恤女', '55,67,58,78', 'S,M,L,XL,XXL', ' DGPZ', 325.00, 12.85, 263.00, 23, 34.00, 1, 0, 1, '0', ' DGPZ旗舰店', 234, 4234, 234, '5', '1,2,3,4,5', '品牌： DGPZ\r\n商品名称：DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）商品编号：27002704471店铺： DGPZ旗舰店商品毛重：350.00g商品产地：中国大陆货号：XXL601版型：宽松型领型：圆领流行元素：印花衣长：常规款组合形式：单件材质：棉袖型：常规袖适用年龄：18-24周岁图案文化：创意图案：字母风格：休闲风，简约，运动风，欧美风，韩版，日系袖长：短袖上市时间：2019年夏季', 1560506865, '00005');
INSERT INTO `tp_goods` VALUES (56, '鹿王羊绒针织衫2019秋冬新款圆领平针女套衫102930024 黑色C7402J 160/80A/9', 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）', '1,3', '夏季新品t恤女', '55,67,58,78', 'S,M,L,XL,XXL', ' DGPZ', 299.00, 12.85, 145.00, 23, 34.00, 1, 0, 1, '0', ' DGPZ旗舰店', 234, 4234, 234, '6', '1,2,3,4,5', '品牌： DGPZ\r\n商品名称：DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）商品编号：27002704471店铺： DGPZ旗舰店商品毛重：350.00g商品产地：中国大陆货号：XXL601版型：宽松型领型：圆领流行元素：印花衣长：常规款组合形式：单件材质：棉袖型：常规袖适用年龄：18-24周岁图案文化：创意图案：字母风格：休闲风，简约，运动风，欧美风，韩版，日系袖长：短袖上市时间：2019年夏季', 1560506865, '00006');
INSERT INTO `tp_goods` VALUES (57, 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣', 'DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）', '1,3', '夏季新品t恤女', '55,67,58,78', 'S,M,L,XL,XXL', ' DGPZ', 188.00, 12.85, 123.00, 23, 34.00, 1, 0, 1, '0', ' DGPZ旗舰店', 234, 4234, 234, '7', '1,2,3,4,5', '品牌： DGPZ\r\n商品名称：DGPZ短袖2019年夏季新品t恤女夏天宽松大码上衣服韩范半袖短款吸汗衫字母印花丅桖上衣XXL601 军绿色 M（宽松款110-130斤）商品编号：27002704471店铺： DGPZ旗舰店商品毛重：350.00g商品产地：中国大陆货号：XXL601版型：宽松型领型：圆领流行元素：印花衣长：常规款组合形式：单件材质：棉袖型：常规袖适用年龄：18-24周岁图案文化：创意图案：字母风格：休闲风，简约，运动风，欧美风，韩版，日系袖长：短袖上市时间：2019年夏季', 1560506865, '00007');
INSERT INTO `tp_goods` VALUES (58, '雷公馆 派克服女2019冬季新品貂皮内胆水貂毛领皮草外套中长款貂皮大衣显瘦品牌女装 藏蓝色', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 199.00, 98.00, 155.00, 50, 3.00, 1, 0, 1, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '8', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00008');
INSERT INTO `tp_goods` VALUES (59, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 1, 0, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '9', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00009');
INSERT INTO `tp_goods` VALUES (60, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 189.00, 50, 3.00, 1, 1, 0, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '10', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00010');
INSERT INTO `tp_goods` VALUES (61, '雪中飞2019秋冬新品韩版宽松白色大码工装羽绒服时尚保暖男女外套加厚加绒 白色男女', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 322.00, 50, 3.00, 1, 1, 0, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '11', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00011');
INSERT INTO `tp_goods` VALUES (62, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 356.00, 50, 3.00, 1, 1, 0, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '12', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00012');
INSERT INTO `tp_goods` VALUES (63, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 342.00, 50, 3.00, 1, 1, 0, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '13', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00013');
INSERT INTO `tp_goods` VALUES (64, '帕什 羊绒衫女纯山羊绒 堆堆领菱形钩花高领毛衣女 AT17612 焦糖', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 124.00, 50, 3.00, 1, 1, 0, '0', ' 晨芙服饰旗舰店', 123, 321, 12, '14', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00014');
INSERT INTO `tp_goods` VALUES (65, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 725.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '15', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00015');
INSERT INTO `tp_goods` VALUES (66, '乾祥 2019冬季新款皮草女外套中长款獭兔毛内胆狐狸毛领派克服女大衣连帽皮毛一体女装 1801黑色 ', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 239.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '16', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00016');
INSERT INTO `tp_goods` VALUES (67, '乾祥 2019冬季新款皮草女外套中长款獭兔毛内胆狐狸毛领派克服女大衣连帽皮毛一体女装 1801黑色 ', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 368.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '17', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00017');
INSERT INTO `tp_goods` VALUES (68, '坦博尔2019新款女士羽绒服女中长款大毛领连帽时尚外套TD19188 秋芦卡 175/96A', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '18', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00018');
INSERT INTO `tp_goods` VALUES (69, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 189.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '19', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00019');
INSERT INTO `tp_goods` VALUES (70, '乾祥 2019冬季派克服女外套中长款貉子毛领韩版修身皮草大衣獭兔毛内胆 6815绿', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 142.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '20', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00020');
INSERT INTO `tp_goods` VALUES (71, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '21', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00021');
INSERT INTO `tp_goods` VALUES (72, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 143.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '22', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00022');
INSERT INTO `tp_goods` VALUES (73, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '23', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00023');
INSERT INTO `tp_goods` VALUES (74, 'yaloo/雅鹿羽绒服女中长款 爆款2019新款韩版清仓大毛领时尚外套 焦糖色', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 1999.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '24', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00024');
INSERT INTO `tp_goods` VALUES (75, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '25', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00025');
INSERT INTO `tp_goods` VALUES (76, 'LINC/金羽杰2019秋冬新款羽绒服女中长款连帽毛领迷彩印花LOGO980108 深沉紫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '26', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00026');
INSERT INTO `tp_goods` VALUES (77, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 312.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '27', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00027');
INSERT INTO `tp_goods` VALUES (78, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 123.55, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '28', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00028');
INSERT INTO `tp_goods` VALUES (79, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '29', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00029');
INSERT INTO `tp_goods` VALUES (80, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 356.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '30', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00030');
INSERT INTO `tp_goods` VALUES (81, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 155.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '31', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00031');
INSERT INTO `tp_goods` VALUES (82, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 213.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '32', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00032');
INSERT INTO `tp_goods` VALUES (83, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 213.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '33', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00033');
INSERT INTO `tp_goods` VALUES (84, '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫', '晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL', '1,3', '女短袖职业装', '55,67,58,78', 'S,M,L,XL,XXL', ' 晨芙', 299.00, 98.00, 213.00, 50, 3.00, 1, 0, 0, '1', ' 晨芙服饰旗舰店', 123, 321, 12, '34', '1,2,3,4,5', '品牌： 晨芙\r\n商品名称：晨芙衬衫女短袖职业装女装套装2019夏装修身气质竖条纹薄款时尚半裙工作服OL商务正装衬衣工装半袖寸衫 灰底白条 XL商品编号：41975426216店铺： 晨芙服饰旗舰店商品毛重：300.00g商品产地：中国大陆货号：YR9011/2-Q313衣长：常规款领型：POLO领流行元素：立体剪裁，3D材质：雪纺袖型：常规袖适用年龄：25-29周岁风格：男友风，混搭，港风，小清新，学院风，淑女风，通勤，仙女，休闲风，简约，复古风，优雅，文艺，百搭，小香风，韩版版型：修身型袖长：短袖上市时间：2019年春季', 1560505799, '00034');

-- ----------------------------
-- Table structure for tp_h_car
-- ----------------------------
DROP TABLE IF EXISTS `tp_h_car`;
CREATE TABLE `tp_h_car`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL COMMENT '用户id',
  `goods_serial` char(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品id',
  `unit_price` decimal(10, 2) NOT NULL COMMENT '商品的单价',
  `goods_size` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品大小',
  `goods_num` int(10) NOT NULL COMMENT '商品数量',
  `total` decimal(10, 2) NOT NULL COMMENT '合计',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_h_car
-- ----------------------------
INSERT INTO `tp_h_car` VALUES (21, 11, '00010', 189.00, 'XL', 3, 567.00);
INSERT INTO `tp_h_car` VALUES (22, 11, '00010', 189.00, 'L', 2, 378.00);
INSERT INTO `tp_h_car` VALUES (24, 3, '00010', 189.00, 'XXL', 3, 567.00);
INSERT INTO `tp_h_car` VALUES (25, 3, '00004', 165.00, 'XL', 1, 165.00);
INSERT INTO `tp_h_car` VALUES (26, 3, '00004', 165.00, 'XXL', 3, 495.00);
INSERT INTO `tp_h_car` VALUES (27, 3, '00028', 123.55, 'XL', 2, 123.55);
INSERT INTO `tp_h_car` VALUES (28, 3, '00028', 123.55, 'S', 5, 123.55);
INSERT INTO `tp_h_car` VALUES (29, 3, '00028', 123.55, 'L', 1, 123.55);

-- ----------------------------
-- Table structure for tp_h_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_h_user`;
CREATE TABLE `tp_h_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_h_user
-- ----------------------------
INSERT INTO `tp_h_user` VALUES (3, 'admin', '15119402012', '1343981615@qq.com', '549683705853796104f80204bdcb47cc');
INSERT INTO `tp_h_user` VALUES (11, '123', '15915845254', '1366430517@qq.com', '549683705853796104f80204bdcb47cc');

-- ----------------------------
-- Table structure for tp_minor
-- ----------------------------
DROP TABLE IF EXISTS `tp_minor`;
CREATE TABLE `tp_minor`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `minor` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '子模块',
  `minor_url` varchar(55) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'url地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_minor
-- ----------------------------
INSERT INTO `tp_minor` VALUES (1, '首页', 'admin/index/index');
INSERT INTO `tp_minor` VALUES (2, '商品列表', 'admin/Goods/goodsList');
INSERT INTO `tp_minor` VALUES (3, '商品添加', 'admin/Goods/goodsAdd');
INSERT INTO `tp_minor` VALUES (4, '商品回收站', 'admin/Goods/goodsRecycle');
INSERT INTO `tp_minor` VALUES (5, '商品供应商', 'admin/Goods/goodsProvide');
INSERT INTO `tp_minor` VALUES (6, '订单列表', 'admin/Order/orderInfo');
INSERT INTO `tp_minor` VALUES (7, '店铺设置', 'admin/Shop/setShop');
INSERT INTO `tp_minor` VALUES (8, '分类管理', 'admin/Shop/shopSort');
INSERT INTO `tp_minor` VALUES (9, '轮播图', 'admin/Shop/shopChart');
INSERT INTO `tp_minor` VALUES (10, '商品促销', 'admin/Shop/shopSales');
INSERT INTO `tp_minor` VALUES (11, '管理员', 'admin/Manage/adminInfo');
INSERT INTO `tp_minor` VALUES (12, '用户', 'admin/Manaeg/adminUser');

-- ----------------------------
-- Table structure for tp_picture
-- ----------------------------
DROP TABLE IF EXISTS `tp_picture`;
CREATE TABLE `tp_picture`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品主图片名',
  `pic_addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品图地址',
  `upload_time` int(11) NOT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '商品主图表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_picture
-- ----------------------------
INSERT INTO `tp_picture` VALUES (1, '1b915277a86f6762.jpg', '20190521/811daef448e610581dbae806d7df2461.jpg', 1558445738);
INSERT INTO `tp_picture` VALUES (2, 'a7e8b0eee2af1f90.jpg!cc_350x449.jpg', '20190521/b2ed29ea547c75a7015ad6db23022d96.png', 1558445830);
INSERT INTO `tp_picture` VALUES (3, '5ac1ce2fN40d4a67d.jpg', '20190521/812448d6c352bdcee46f95b6133d7880.png', 1558446130);
INSERT INTO `tp_picture` VALUES (4, '5acac468N1a308f64.jpg', '20190521/bc3188282ead05028bce769149b90175.jpg', 1558446143);
INSERT INTO `tp_picture` VALUES (5, '5ad04affNd2204033.jpg', '20190521/f49e01d5284b72295df66acbd4a849e3.jpg', 1558446150);
INSERT INTO `tp_picture` VALUES (6, '5ad04b06N78793c6f.jpg', '20190521/5f53f2d040522f777adbc0c7c1815320.png', 1558446166);
INSERT INTO `tp_picture` VALUES (7, '5add384cNad6a1f0a.jpg', '20190521/8202471b3940d648b2cac15d4c09bc30.png', 1558446190);
INSERT INTO `tp_picture` VALUES (8, '5af5630eN2e1301be.jpg', '20190521/8b5661ee1d053e58a89889237a007422.png', 1558446205);
INSERT INTO `tp_picture` VALUES (9, '5b3f3d55N51c0f353.jpg', '20190521/20bb81f69a33096adcdf3f41a1aaddbc.png', 1558446289);
INSERT INTO `tp_picture` VALUES (10, '5b5ad83dNcd864675.jpg', '20190521/99a52639abc8f9840284f78ae3933ad3.png', 1558446370);
INSERT INTO `tp_picture` VALUES (11, '5b14e79fN69babf1b.jpg', '20190521/acc8bbc0a324c2361dd532a89602de0d.jpg', 1558446436);
INSERT INTO `tp_picture` VALUES (12, '5b500ba9N76193804.jpg', '20190521/02b742f24e33536883918d643812a42c.png', 1558446559);
INSERT INTO `tp_picture` VALUES (13, '5b615f57N249b815f.jpg', '20190522/e653c56313d4efde8eef276885549a77.jpg', 1558502018);
INSERT INTO `tp_picture` VALUES (14, '5b2860c9N21b09c1d.jpg', '20190522/dcb4632420c300a0ea8e20c935439b5c.jpg', 1558502242);
INSERT INTO `tp_picture` VALUES (15, '5bbd5cadNfae38e5a.jpg', '20190522/9f46aecc5ef13bd3ef9e990197d88a34.png', 1558502409);
INSERT INTO `tp_picture` VALUES (16, '5bbf1d23N3a4d87c5.jpg', '20190522/0f3d5f121d4e66a08ce7a235d571e152.png', 1558502450);
INSERT INTO `tp_picture` VALUES (17, '5bc547c9N4d37ef31.jpg', '20190522/e961e16504a8c5106a4f41e59ec35fcd.png', 1558502460);
INSERT INTO `tp_picture` VALUES (18, '7b2b4bb3133926fe.jpg', '20190522/237c03962412750f1c583fb9d7b88736.png', 1558502464);
INSERT INTO `tp_picture` VALUES (19, '14de69b60cf02fc4.jpg', '20190522/61e46954493693ca1412e2d0d7bcfb17.jpg', 1558502467);
INSERT INTO `tp_picture` VALUES (20, '20f5080e957808c6.jpg', '20190522/40d6b9e1b63b92c8d48f756a28cb7d8b.png', 1558502472);
INSERT INTO `tp_picture` VALUES (21, '56fb74c7N945793cc.jpg', '20190522/6e659d94eef03a0e1b9b78e283233935.jpg', 1558502476);
INSERT INTO `tp_picture` VALUES (22, '56fb803bN9eecdea8.jpg', '20190522/0a2ca30c1475f74df3b9aa9f33b8ec34.png', 1558502873);
INSERT INTO `tp_picture` VALUES (23, '58ef121aN1b4c6472.jpg', '20190522/dc1045f9bd52b330508082b88daec9f4.jpg', 1558502878);
INSERT INTO `tp_picture` VALUES (24, '556d20b8N282935fd.jpg', '20190522/3667e1ee1f14f89f2804d2b3950911aa.png', 1558502950);
INSERT INTO `tp_picture` VALUES (25, '556d6140N009df3b0.jpg', '20190522/2baec4fc4601553bfe94b4f4dceeef67.jpg', 1558503012);
INSERT INTO `tp_picture` VALUES (26, '829ff45e77b2087b.jpg', '20190522/2a12372040feacf9c0b07471f4ce9827.jpg', 1558504125);
INSERT INTO `tp_picture` VALUES (27, '5923e35fNceb66c2b.jpg', '20190522/8e77a5a24a0c752565bc6e51145397c9.png', 1558504132);
INSERT INTO `tp_picture` VALUES (28, '5949cc08N3acf1b38.jpg', '20190522/9a5a0159a38109834e9147cdad250622.jpg', 1558504180);
INSERT INTO `tp_picture` VALUES (29, '5949cf2fN4a2b30b3.jpg', '20190522/6f42c7360794baa3fedad669cc2af809.jpg', 1558504186);
INSERT INTO `tp_picture` VALUES (30, '5987dcddN283d7389.jpg', '20190522/773c0cbbaf87c9d097525fc9eb2b011e.jpg', 1558504344);
INSERT INTO `tp_picture` VALUES (31, '56736ab4N6e748a78.jpg', '20190522/ba8d79875bc0af449ec79bbfb93b1186.png', 1558504357);
INSERT INTO `tp_picture` VALUES (32, '56736b6aNfdea65b9.jpg', '20190522/eca7df2bf546ed4fbea24603b20be93c.jpg', 1558504361);
INSERT INTO `tp_picture` VALUES (33, '936057c4112d143a.jpg', '20190522/8309919a8fb5d1666384980338e5f102.jpg', 1558504681);
INSERT INTO `tp_picture` VALUES (34, 'e6b8f7983f1c531f.jpg', '20190522/beb196e708685d6cca384afbd006329b.png', 1558504699);
INSERT INTO `tp_picture` VALUES (35, 'e191eb721109fc64.jpg', '20190522/7ba31d4da5bc2d3727d1018ed95e7716.jpg', 1558504768);
INSERT INTO `tp_picture` VALUES (36, '58ef121aN1b4c6472.jpg', '20190522/691ad5b34b7b9fdeb93ed1c6e50e344e.jpg', 1558505016);
INSERT INTO `tp_picture` VALUES (37, '20f5080e957808c6.jpg', '20190522/79b4dbe363653eaf1af779da5e9f9c2e.jpg', 1558505455);
INSERT INTO `tp_picture` VALUES (38, '1b915277a86f6762.jpg', '20190522/c01500c402254b7671874c168b10e699.jpg', 1558505649);
INSERT INTO `tp_picture` VALUES (39, 'a389d1b193f9755cabca05441ceccb6a.png', '20190522/a389d1b193f9755cabca05441ceccb6a.png', 1558505675);

-- ----------------------------
-- Table structure for tp_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rolename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES (1, '首页管理');
INSERT INTO `tp_role` VALUES (2, '商品管理');
INSERT INTO `tp_role` VALUES (3, '交易订单');
INSERT INTO `tp_role` VALUES (4, '店铺');
INSERT INTO `tp_role` VALUES (5, '管理员');

-- ----------------------------
-- Table structure for tp_role_rule
-- ----------------------------
DROP TABLE IF EXISTS `tp_role_rule`;
CREATE TABLE `tp_role_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '约束角色id',
  `rule_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '约束权限id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  INDEX `rule_id`(`rule_id`) USING BTREE,
  CONSTRAINT `tp_role_rule_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `tp_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tp_role_rule_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `tp_rule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_role_rule
-- ----------------------------
INSERT INTO `tp_role_rule` VALUES (1, 1, 1);
INSERT INTO `tp_role_rule` VALUES (2, 2, 2);
INSERT INTO `tp_role_rule` VALUES (3, 3, 3);
INSERT INTO `tp_role_rule` VALUES (4, 4, 4);
INSERT INTO `tp_role_rule` VALUES (5, 5, 5);

-- ----------------------------
-- Table structure for tp_rule
-- ----------------------------
DROP TABLE IF EXISTS `tp_rule`;
CREATE TABLE `tp_rule`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `rulename` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限模块',
  `url` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '模块路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_rule
-- ----------------------------
INSERT INTO `tp_rule` VALUES (1, '首页管理', 'admin/Index/index');
INSERT INTO `tp_rule` VALUES (2, '商品管理', 'admin/Goods/goodsList');
INSERT INTO `tp_rule` VALUES (3, '交易订单', 'admin/Order/orderInfo');
INSERT INTO `tp_rule` VALUES (4, '店铺', 'admin/Shop/setShop');
INSERT INTO `tp_rule` VALUES (5, '管理员', 'admin/Manage/adminInfo');

-- ----------------------------
-- Table structure for tp_rule_minor
-- ----------------------------
DROP TABLE IF EXISTS `tp_rule_minor`;
CREATE TABLE `tp_rule_minor`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `rule_id` int(10) UNSIGNED NOT NULL COMMENT '父级权限',
  `minor_id` int(10) UNSIGNED NOT NULL COMMENT '子级权限',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rule_id`(`rule_id`) USING BTREE,
  INDEX `minor_id`(`minor_id`) USING BTREE,
  CONSTRAINT `minor_id` FOREIGN KEY (`minor_id`) REFERENCES `tp_minor` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rule_id` FOREIGN KEY (`rule_id`) REFERENCES `tp_rule` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_rule_minor
-- ----------------------------
INSERT INTO `tp_rule_minor` VALUES (1, 1, 1);
INSERT INTO `tp_rule_minor` VALUES (2, 2, 2);
INSERT INTO `tp_rule_minor` VALUES (3, 2, 3);
INSERT INTO `tp_rule_minor` VALUES (4, 2, 4);
INSERT INTO `tp_rule_minor` VALUES (5, 2, 5);
INSERT INTO `tp_rule_minor` VALUES (6, 3, 6);
INSERT INTO `tp_rule_minor` VALUES (7, 4, 7);
INSERT INTO `tp_rule_minor` VALUES (8, 4, 8);
INSERT INTO `tp_rule_minor` VALUES (9, 4, 9);
INSERT INTO `tp_rule_minor` VALUES (10, 4, 10);
INSERT INTO `tp_rule_minor` VALUES (11, 5, 11);
INSERT INTO `tp_rule_minor` VALUES (12, 5, 12);

-- ----------------------------
-- Table structure for tp_student
-- ----------------------------
DROP TABLE IF EXISTS `tp_student`;
CREATE TABLE `tp_student`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  `create_time` int(11) NULL DEFAULT NULL,
  `update_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_student
-- ----------------------------
INSERT INTO `tp_student` VALUES (1, '贝贝', '女', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `tp_student` VALUES (2, '梆梆', '男', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `tp_student` VALUES (3, 'php', '异', '0000-00-00 00:00:00', NULL, NULL);
INSERT INTO `tp_student` VALUES (4, 'python', 'My', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tp_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tp_teacher`;
CREATE TABLE `tp_teacher`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `cs_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_teacher
-- ----------------------------
INSERT INTO `tp_teacher` VALUES (1, '将', '男', 36, 1);

-- ----------------------------
-- Table structure for tp_user
-- ----------------------------
DROP TABLE IF EXISTS `tp_user`;
CREATE TABLE `tp_user`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号码',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `is_system` int(10) NOT NULL COMMENT '是否为超级管理员',
  `last_login_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上次登录时间',
  `current_login_tim` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前登录时间',
  `user_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `user_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户ip',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_user
-- ----------------------------
INSERT INTO `tp_user` VALUES (1, '久居景', '0d42fab05e37b4006252d9dcea24af41', '15915845254', '15915845254@163.com', 1, '1572827079', '1557813927', 'timg.jpg', '127.0.0.1');
INSERT INTO `tp_user` VALUES (2, '贝贝', '0d42fab05e37b4006252d9dcea24af41', '2147483647', '15915845254@163.com', 1, '1572955346', '1568539666', 'timg.jpg', '127.0.0.1');
INSERT INTO `tp_user` VALUES (3, '依依', '0d42fab05e37b4006252d9dcea24af41', '2147483647', '1366430517@qq.com', 1, '1569290730', '1568539666', 'timg.jpg', '127.0.0.1');

-- ----------------------------
-- Table structure for tp_user_group
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_group`;
CREATE TABLE `tp_user_group`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_group_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_user_group
-- ----------------------------
INSERT INTO `tp_user_group` VALUES (8, '大房', 8);
INSERT INTO `tp_user_group` VALUES (9, '小房', 9);

-- ----------------------------
-- Table structure for tp_user_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_user_role`;
CREATE TABLE `tp_user_role`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '约束用户id',
  `role_id` int(10) UNSIGNED NOT NULL COMMENT '约束角色id',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `role_id`(`role_id`) USING BTREE,
  CONSTRAINT `tp_user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tp_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `tp_user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `tp_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_user_role
-- ----------------------------
INSERT INTO `tp_user_role` VALUES (1, 1, 1);
INSERT INTO `tp_user_role` VALUES (5, 1, 2);
INSERT INTO `tp_user_role` VALUES (6, 1, 3);
INSERT INTO `tp_user_role` VALUES (7, 1, 4);
INSERT INTO `tp_user_role` VALUES (8, 1, 5);
INSERT INTO `tp_user_role` VALUES (9, 2, 1);
INSERT INTO `tp_user_role` VALUES (10, 2, 4);
INSERT INTO `tp_user_role` VALUES (11, 3, 3);

-- ----------------------------
-- Table structure for tp_wife
-- ----------------------------
DROP TABLE IF EXISTS `tp_wife`;
CREATE TABLE `tp_wife`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `group_id_array` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bog_id` int(11) NULL DEFAULT NULL,
  `delete_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_wife
-- ----------------------------
INSERT INTO `tp_wife` VALUES (1, '贝尔', '5', 4, NULL);
INSERT INTO `tp_wife` VALUES (2, '胡戎', '6', 3, NULL);
INSERT INTO `tp_wife` VALUES (3, '紫薇', '7', 1, NULL);
INSERT INTO `tp_wife` VALUES (4, '贝壳儿', '8', 1, NULL);

SET FOREIGN_KEY_CHECKS = 1;
