/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50734
 Source Host           : localhost:3306
 Source Schema         : tpdemo

 Target Server Type    : MySQL
 Target Server Version : 50734
 File Encoding         : 65001

 Date: 06/08/2023 23:38:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tp_access
-- ----------------------------
DROP TABLE IF EXISTS `tp_access`;
CREATE TABLE `tp_access`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) UNSIGNED NOT NULL,
  `role_id` mediumint(8) UNSIGNED NOT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tp_access
-- ----------------------------
INSERT INTO `tp_access` VALUES (1, 19, 2, NULL);
INSERT INTO `tp_access` VALUES (2, 20, 4, NULL);
INSERT INTO `tp_access` VALUES (3, 21, 5, NULL);
INSERT INTO `tp_access` VALUES (4, 24, 1, NULL);
INSERT INTO `tp_access` VALUES (5, 25, 3, NULL);
INSERT INTO `tp_access` VALUES (6, 19, 3, NULL);
INSERT INTO `tp_access` VALUES (7, 21, 4, NULL);
INSERT INTO `tp_access` VALUES (8, 19, 1, NULL);

-- ----------------------------
-- Table structure for tp_goods
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods`;
CREATE TABLE `tp_goods`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '分类id',
  `goods_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名',
  `goods_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '略缩图',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '现价',
  `goods_old_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '原价',
  `goods_discount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '折扣，文字',
  `goods_sale` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '销量',
  `goods_favorite` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '收藏',
  `goods_delivery` int(3) UNSIGNED NULL DEFAULT 0 COMMENT '发货时间x天',
  `goods_service` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品服务 |延误必赔|退货补运费|全国包邮|7天无理由退货',
  `store_id` int(11) NULL DEFAULT NULL COMMENT '店铺id',
  `goods_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品链接',
  `goods_pcate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品分类 ',
  `goods_brand` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '品牌 ',
  `goods_shop` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店名 ',
  `goods_sql_addtime` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '入库时间 | ',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `category_id`(`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_goods
-- ----------------------------
INSERT INTO `tp_goods` VALUES (1, 1, 'HLA海澜之家短袖T恤男23许魏洲/范可新同款圆领短袖男', 'https:////img11.360buyimg.com/n7/jfs/t1/221328/36/32082/103048/64b0ff97F7fc0f7e9/c642f95efe195917.jpg', 78.65, 188.05, '商家让利', 55, 30, 12, NULL, 1, 'https://item.jd.com/100049835231.html', '/男装/男士T恤/海澜之家（HLA）//////////////190/104A(XXXL)/185/100A(XXL)/170/88A(M)/165/84A(S)/160/80A(XS)/180/96A(XL)/190/108A(XXXXL)/195/112A(XXXXXL)', ' 海澜之家（HLA）', ' 海澜之家京东自营旗舰店', 1689352917);
INSERT INTO `tp_goods` VALUES (2, 1, '威觉【两件装】港风新款夏季短袖t恤男宽松学生潮流韩版上衣男打底衫 E508白色+E509黑色【短袖T】 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/119112/31/35709/88620/6460f2cdFab933fba/84d485f7c5b67fe1.jpg', 39.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10056328583143.html', '/男装/男士T恤/威觉（WEIJUE）/E508白色+E508白色【短袖T】/E508白色+E508黑色【短袖T】/E508白色+E509白色【短袖T】/E508黑色+E508黑色【短袖T】/E508黑色+E509白色【短袖T】/E508黑色+E509黑色【短袖T】/E509白色+E509白色【短袖T】/E509白色+E509黑色【短袖T】/E509黑色+E509黑色【短袖T】/E508白色+E509黑色/E508白色+E508白色/E508白色+E508黑色/E508白色+E509白色/E508黑色+E', ' 威觉（WEIJUE）', ' 伊怡服饰专营店', 1689352917);
INSERT INTO `tp_goods` VALUES (3, 1, '雾卡【纯棉3件】短袖t恤男衣服圆领宽松潮印花青年大码新品夏季休闲 小鹿角铁灰+EXP卡其+大R黑 XL建议135-150斤', 'https:////img12.360buyimg.com/n7/jfs/t1/59399/8/23321/66999/63acfb01F67fdf380/9c0bb7a06131d705.jpg', 79.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10067594587977.html', '/男装/男士T恤/雾卡/小鹿角白+EXP白+大R白/小鹿角浅灰+EXP湖蓝+大R铁灰/小鹿角湖蓝+EXP白+大R卡其/小鹿角雾蓝+EXP湖蓝+大R卡其/小鹿角湖蓝+EXP雾蓝+大R黑/小鹿角卡其+EXP雾蓝+大R黑/小鹿角黑+EXP黑+大R黑/小鹿角卡其+EXP黑+大R湖蓝/小鹿角铁灰+EXP雾蓝+大R红/小鹿角湖蓝+EXP白+大R雾蓝/小鹿角黄+EXP白+大R黑/小鹿角湖蓝+EXP黑+大R铁灰/小鹿角红+EXP雾蓝+大R卡其/小鹿角白+EXP湖蓝+大R黑/小鹿角雾蓝+EXP卡其+大R白/小鹿角黑+EXP', ' 雾卡', ' 宾宇服饰专营店', 1689352917);
INSERT INTO `tp_goods` VALUES (4, 1, '保罗歌仕顿冰丝短袖t恤男士圆领衣服夏季潮流宽松半袖打底衫男装体恤汗衫 001深灰+030白色+002湖蓝色+055黑色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/209939/37/35638/124906/6491b8baF3717d0ee/f1baeac15909735f.jpg', 52.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10029894749597.html', '/男装/男士T恤/保罗歌仕顿（BAOLUOGESHIDUN）/002黑色+030湖蓝色+055浅黄色+059白色/002湖蓝+001湖蓝+030湖蓝+055湖蓝/028白色+002白色+001白色+055白色/028白色+002湖蓝色+055浅黄色+059白色/028白色+002湖蓝色+055深灰色+030白色/028白色+002湖蓝色+059黑色+030白色/028白色+002湖蓝色+055浅黄色+030白色/028白色+002深灰色+059黑色+030白色/028白色+055深灰色+059黑色+030', ' 保罗歌仕顿（BAOLUOGESHIDUN）', ' 艾兰斯服饰专营店', 1689352917);
INSERT INTO `tp_goods` VALUES (5, 1, '遥渠（YAO QU）短袖T恤男2023夏季新款美式复古ins字母宽松短袖男T恤潮流上衣 咖啡色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/163255/15/35202/190195/640dde77F45aaff57/db4ccba6a1944b4b.jpg', 36.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10070704731542.html', '/男装/男士T恤/遥渠（YAO QU）/白色/黑色/绿色/S/M/L/2XL/3XL/4XL/5XL', ' 遥渠（YAO QU）', ' 柴铭服饰专营店', 1689352917);
INSERT INTO `tp_goods` VALUES (6, 1, 'GENIOLAMODE森马集团t恤男短袖潮流休闲圆领青少年学生打底衣服潮 白色 L', 'https:////img12.360buyimg.com/n7/jfs/t1/121753/35/36160/46947/644b3292F191adbd1/6a53863bc483d380.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100047353432.html', '/男装/男士T恤/GENIOLAMODE//////M(建议105-115斤)/XL(建议135-155斤)/2XL(建议155-175斤)/3XL(建议175-195斤)', ' GENIOLAMODE', ' GENIOLAMODE京东自营专区', 1689352917);
INSERT INTO `tp_goods` VALUES (7, 1, '歌朴伟冰丝休闲裤子男夏季薄款速干运动宽松束脚春秋透气男士九分长裤 S029-灰色 XL(建议115-145斤)', 'https:////img12.360buyimg.com/n7/jfs/t1/185707/18/34997/47914/645219cbF3539f8d5/ff457efc420a57b5.jpg', 38.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10074694290747.html', '/男装/休闲裤/歌朴伟///M/L/2XL/3XL/4XL/5XL', ' 歌朴伟', ' 歌朴伟绍恺专卖店', 1689352917);
INSERT INTO `tp_goods` VALUES (8, 1, '南极人冰丝短袖t恤男士夏季凉感透气半袖学生休闲百搭男装运动速干衣服 白色(折纸飞机) L(建议体重115斤-135斤左右)', 'https:////img10.360buyimg.com/n7/jfs/t1/171966/4/37150/72796/6447406bF925595e6/98fdc25da63306fc.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10045501530525.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (9, 1, '【两件装】短袖T恤男夏季新款印花宽松休闲简约半袖衣服五分袖ins港风青少年学生圆领t恤潮 地球 深灰+微笑 蓝色 XL', 'https:////img11.360buyimg.com/n7/jfs/t1/19366/5/18220/115645/62c12dbfE8b715983/42b11cd660eba3d9.jpg', 39.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10050797700441.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (10, 1, '京东京造【抗菌系列】5A抑菌抗发黄T恤男40S新疆棉t恤男夏短袖打底T深灰L', 'https:////img13.360buyimg.com/n7/jfs/t1/114836/19/39717/119612/64917b29F4af9e2ef/3ccf174adfdf2214.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100033296958.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (11, 1, 'GLM森马集团品牌短袖T恤男夏季美式潮流全棉上衣男生帅气宽松半截袖', 'https:////img13.360buyimg.com/n7/jfs/t1/149655/21/34089/120984/6405941cF11470bfc/8de8d1e3734ec8b8.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100044103168.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (12, 1, 'HLA海澜之家短袖T恤男夏新疆棉微弹圆领数码印花t恤男', 'https:////img11.360buyimg.com/n7/jfs/t1/119060/28/38179/35274/64b10b8eF8d344e98/ce9984f824ca2e95.jpg', 72.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100016565291.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (13, 1, '南极人短袖T恤男夏季薄款港风潮牌上衣体恤衫宽松休闲网红半袖衣服男装 W82白色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/56958/25/22918/133499/6448f4e2Fc1032fac/faac641a5f491e7b.jpg', 27.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10046331772357.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (14, 1, '极溪T恤男短袖夏季趣味ins摸鱼小熊大码宽港风松百搭上衣潮牌男纯棉 深灰色 XL【125-140斤，优先发货】', 'https:////img12.360buyimg.com/n7/jfs/t1/68612/21/19644/181502/62a18b6bE78668336/8a4700e91048e8d9.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10054171106962.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (15, 1, '君茵重磅纯棉短袖t恤男2023夏季衣服男装新款学生印花美式复古宽松潮 咖啡色【BERR】 XL', 'https:////img11.360buyimg.com/n7/jfs/t1/166192/15/34743/114852/6463786aF3b41ef2b/66de2c93fee7ff15.jpg', 39.80, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10075880689681.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (16, 1, '回力（Warrior）运动t恤男短袖纯棉夏季衣服篮球体恤透气速干跑步男士健身服饰', 'https:////img14.360buyimg.com/n7/jfs/t1/114282/1/37247/52226/645ee399Fead79310/383d458a93b002cb.jpg', 49.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100042308564.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (17, 1, '汐嘻裤子男夏季冰丝休闲百搭商务运动裤子工装青年休闲裤阔腿百搭男装 黑色+深灰 XL-建议110-140斤左右', 'https:////img11.360buyimg.com/n7/jfs/t1/95628/39/25425/73365/63fcf91fF63ca1131/7f124a459b04dc0a.jpg', 29.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10068520592206.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (18, 1, 'GLM森马集团品牌华夫格短袖男夏季高级半袖男生宽松圆领衣服男士t恤', 'https:////img10.360buyimg.com/n7/jfs/t1/109201/11/32619/111965/64216cbcFe80c3480/aa5636a9d76d4640.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100048126000.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (19, 1, '至唯 320g重磅美式复古水洗短袖t恤男潮流牌高街体恤oversize7分袖夏 JB5211杏色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/157687/9/28561/165028/641aad5eF96f7996e/e0c7d08cb38c3b4c.jpg', 58.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10071679951157.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (20, 1, '南佩 裤子夏季男薄款韩版潮流冰丝休闲裤男宽松直筒阔腿九分小西裤男 K62-黑色（薄款） XL（110-140斤）', 'https:////img13.360buyimg.com/n7/jfs/t1/151389/10/27077/39152/648c4765Fc1083ff6/a9d4e06d2fb3735b.jpg', 32.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10033840673418.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (21, 1, '南极人纯棉短袖T恤男夏季男装圆领半袖体恤休闲男士五分袖打底衫上衣XL', 'https:////img10.360buyimg.com/n7/jfs/t1/30642/39/20888/111912/63fc544eFe9c512f0/19ff9d8fa0511299.jpg', 36.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100021468080.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (22, 1, '汐嘻【19.9两件】冰丝短袖T恤男纯色打底大码宽松半袖上衣圆领情侣 白色+黑色【两件装】 XL-建议115-130斤穿', 'https:////img13.360buyimg.com/n7/jfs/t1/141644/29/29301/90081/63089f97E706d0848/8adaa6f1397b33e5.jpg', 19.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10052226115323.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (23, 1, '真维斯（JEANSWEST）短袖t恤男圆领潮牌百搭休闲纯色宽松舒适透气男T03绿色XL', 'https:////img11.360buyimg.com/n7/jfs/t1/199319/4/31970/101773/64114366F096c05bf/e5a646dc8e7c3ba7.jpg', 59.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100054979921.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (24, 1, 'DCOUD【两件装】短袖T恤男夏季潮牌宽松打底衫学生休闲印花半袖t恤衫 CP白色+RH黑色 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/145076/21/36345/117560/64266314F5609b1d0/688b29c18347ebdc.jpg', 39.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10072024399618.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (25, 1, '大鱼界线纯色t恤男潮牌潮流百搭ins宽松半袖男夏季新款青少年衣服男生短袖 风车-白色 L(120-135斤）', 'https:////img10.360buyimg.com/n7/jfs/t1/100175/39/33635/80267/63ef5885Fff7dbc3b/8167c537e4061992.jpg', 38.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10056037265545.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (26, 1, 'VVC防晒衣服女士夏季冰丝防紫外线短外套披肩外套 浅灰色', 'https:////img10.360buyimg.com/n7/jfs/t1/111382/6/37516/99333/6475b5e9F0133b93a/c283bf939a55879e.jpg', 128.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100042598130.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (27, 1, '李宁短袖男跑步t恤夏季2023新品国潮圆领休闲冰丝运动透气体恤男上衣 白色(速干)100%聚酯纤维 L/175', 'https:////img10.360buyimg.com/n7/jfs/t1/80045/34/18720/120604/63faedd6F662de834/f540c6e586f61f5d.jpg', 59.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10068389221580.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (28, 1, 'GSON森马集团短袖t恤男夏季潮牌ins宽松休闲男款半袖青少年纯棉体恤衫 白色(折纸飞机) 175/L(男女同款)', 'https:////img10.360buyimg.com/n7/jfs/t1/98403/25/38861/53891/648702e3Ff0f55cba/2a03520225d41e70.jpg', 35.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10071551213745.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (29, 1, '南极人（Nanjiren）t恤男潮流休闲纯棉短袖内搭打底衫男士夏季上衣短袖男雪山白色 XL', 'https:////img11.360buyimg.com/n7/jfs/t1/155337/17/29960/112597/63c12bbeF3ca995cf/af1b494b7040ea70.jpg', 36.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100020188121.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (30, 1, 'GENIOLAMODE森马集团t恤男夏季休闲日系潮牌时尚印花百搭男士短袖 卡其 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/143872/33/36343/58896/6437f24eFf146ab28/2128d9de5eb7ad0f.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100046165248.html', '', '', '', 1689352917);
INSERT INTO `tp_goods` VALUES (31, 2, '爱心东东	\n卡吉蘭娜（Kajilanna）新款连衣裙2023夏季女装收腰显瘦纱裙法式温柔风气质套装裙子夏天 杏色上衣+咖色裙子 M 建议体重99-108斤', 'https:////img11.360buyimg.com/n7/jfs/t1/87775/22/42010/46982/64a91d29F5e70cd50/01259f1789e681ef.jpg', 89.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10052272731071.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (32, 2, '亿梵莎（YIFANSHA）新款连衣裙夏季女生裙子夏天学生衣服2023法式碎花收腰显瘦中长裙 图片色 均码', 'https:////img10.360buyimg.com/n7/jfs/t1/181273/39/34688/121668/643e5f79Fc887a404/596acfcd92b0f701.jpg', 88.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10073476573495.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (33, 2, '欧若婷雅新款连衣裙女装2023夏季韩版时尚套装女显瘦高腰牛仔裙子女两件装 套装 M', 'https:////img13.360buyimg.com/n7/jfs/t1/72960/40/22619/81122/641421c3F5254731f/0fc7dad0254cc0b6.jpg', 128.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10071068359043.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (34, 2, '亿梵莎（YIFANSHA）新款连衣裙夏季女生裙子夏天2023法式高级感气质显瘦仙女中长裙 米白色 均码', 'https:////img10.360buyimg.com/n7/jfs/t1/1947/8/21150/36116/643e5ca8F4d425857/c0506c79d52d48dd.jpg', 98.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10073475233925.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (35, 2, 'La Chapelle拉夏贝尔连衣裙女装2023夏季新时尚中长款显瘦A字裙女 白色 均码', 'https:////img13.360buyimg.com/n7/jfs/t1/221336/21/31077/89154/64a2bfe3Fcce27761/f3d52952acd78f95.jpg', 169.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100039805328.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (36, 2, '品彩短袖连衣裙女精致刺绣方领花纹a型高腰通勤a字裙 P132Q1380', 'https:////img10.360buyimg.com/n7/jfs/t1/109316/37/33042/122495/63f86033F6a38634a/07f957dbc7bb2e2a.jpg', 209.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100053556745.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (37, 2, '红蜻蜓（RED DRAGONFLY） 短袖t恤女2023年宽松针织打底夏季百搭圆领女装内搭女士上衣衫 短袖亚麻色 均码（适合80-130）', 'https:////img14.360buyimg.com/n7/jfs/t1/48390/24/22621/136433/64646d15F74381c24/2cf1b00707445278.jpg', 79.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10075202912434.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (38, 2, 'La Chapelle Sport拉夏贝尔短袖t恤女夏季透气纯棉运动休闲衣服女装时尚潮牌打底衫 奶白色(守望麦田) M(推荐100-120斤)', 'https:////img13.360buyimg.com/n7/jfs/t1/104230/14/30817/70557/64ae7592F4648db9f/085c8a976b3e87e1.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10069243993138.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (39, 2, '欧若婷雅新款连衣裙女装在逃公主蓬蓬裙小个子茶歇法式雪纺碎花裙子夏天 图片色 S', 'https:////img11.360buyimg.com/n7/jfs/t1/48625/32/18648/86868/6418612dF1ef6ed35/660df6fcc189c8d2.jpg', 128.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10071317597981.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (40, 2, 'La Chapelle拉夏贝尔连衣裙女装2023新夏季时尚中长款碎花裙子女 米白色 M', 'https:////img13.360buyimg.com/n7/jfs/t1/106782/5/27179/77177/649e9603F0e378c40/717e95ac6610c256.jpg', 259.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100035972288.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (41, 2, '红蜻蜓 t恤女短袖2023年夏季新款女装修身打底格子百搭女士上衣服衫 粉杏 均码（适合80-130斤）', 'https:////img13.360buyimg.com/n7/jfs/t1/180539/37/33110/159066/6406a82cF32522699/b61659e298ca064a.jpg', 89.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10070237726183.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (42, 2, '古地斯（GuDiSi）短袖棉麻连衣裙女两件套显瘦休闲套装裙子GDS2079 黑色+卡其色 L', 'https:////img11.360buyimg.com/n7/jfs/t1/50265/14/22374/72664/63e0838eFbb505c0a/3e017e4ecd5c7410.jpg', 359.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100043210326.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (43, 2, '索菲堡 100%新疆棉2023夏季短袖t恤女宽松百搭设计感小众洋气ins上衣潮 白色（粉图） L', 'https:////img11.360buyimg.com/n7/jfs/t1/96150/26/35115/161065/63f602d8F3ed3b0d7/c3b2656d3dcc55c1.jpg', 38.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10069412888086.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (44, 2, 'Halo Queen短袖T恤女2023夏款宽松大版显瘦半袖T恤女 H133T1568', 'https:////img12.360buyimg.com/n7/jfs/t1/118067/32/34653/97424/6462fce9Fb6ce017d/007ddc84578933ef.jpg', 69.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100055477587.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (45, 2, '妍莉芬（yanlifen）蓝色连衣裙女2023夏季新款法式气质设计感小众到及脚踝长裙子夏天 蓝色 M 体重108-125', 'https:////img13.360buyimg.com/n7/jfs/t1/6845/38/18520/118147/643ea627F40a0cbe5/8c24678bb5ad5273.jpg', 128.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10073500742953.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (46, 2, '可茵（Keyin）休闲裤女夏新款套装女2023年夏季女装小个子九分裤女百搭工装裤子 图片套装 M', 'https:////img10.360buyimg.com/n7/jfs/t1/122240/4/35362/66650/647e1199Fe5f816f6/7a60ac3fe5a9ca8a.jpg', 158.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10077581329940.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (47, 2, '吻瑷（wenai）休闲裤女2023年夏季新款夏装奶系穿搭一整套盐系港味炸街网红 杏色+休闲裤 M', 'https:////img14.360buyimg.com/n7/jfs/t1/116247/19/35647/62476/6462d836F770eb7c4/55b15e87d8785ea6.jpg', 138.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10075816847214.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (48, 2, '妍莉芬 法式短袖新款连衣裙女装夏天2023年夏季韩版气质a字桔梗长裙子 白+绿 M', 'https:////img14.360buyimg.com/n7/jfs/t1/187322/23/22312/380031/62446e80Eaa36b1a0/a46ade4eea27d084.jpg', 126.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10047920397224.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (49, 2, '与欣方领短袖连衣裙女夏法式温柔风蓬蓬裙收腰显瘦规则荷叶边公主裙 杏色 均码【可备注码数】', 'https:////img10.360buyimg.com/n7/jfs/t1/214190/33/27869/170607/642d5baaF481c8aab/0ae377c9171a7c22.png', 98.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10072381063970.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (50, 2, '苏彩尼棉麻连衣裙女装2023夏季新款小个子时尚休闲收腰显瘦中长裙子夏天 上白下卡其 M（建议100-110斤）', 'https:////img11.360buyimg.com/n7/jfs/t1/164859/3/12913/122690/6050ab24E67a247db/0595a00f2e33ffc8.jpg', 108.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10027820019151.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (51, 2, 'FOURDATRY法式 连衣裙夏季2023新款复古过膝长裙显瘦泡泡方领夏季连衣裙子 浅蓝色 M建议 90-105斤', 'https:////img13.360buyimg.com/n7/jfs/t1/206193/19/33868/97515/644a2fb2Fe2249fdc/be77a31d29858de6.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10074249972248.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (52, 2, '尚都比拉衬衫连衣裙女2023年夏季中长款女士收腰显瘦休闲裙子 黄色 M', 'https:////img11.360buyimg.com/n7/jfs/t1/204473/26/33413/54835/646ccf12Ffd8a2cff/a531dfedd53d9701.jpg', 299.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100051216676.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (53, 2, '唐狮（TonLion）2023短袖T恤女半袖体恤chic宽松上衣 牛油果绿 M', 'https:////img14.360buyimg.com/n7/jfs/t1/141517/20/36722/86612/6461da94Fb28c902a/20726ab34498e19f.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100055080609.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (54, 2, 'VEGA CHANG气质连衣裙夏季女2023新款设计感小众绑带荷叶边裙子 流星黑 M', 'https:////img13.360buyimg.com/n7/jfs/t1/88967/13/30321/41989/64ae4623Fa70c3740/aedf2af58b79e1cb.jpg', 199.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10070759942873.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (55, 2, '俞兆林女装韩版时尚T恤夏季宽松印花短袖T恤女 YWTC19Q347 白色 M', 'https:////img13.360buyimg.com/n7/jfs/t1/180047/23/34620/108011/64b0bc2aF4dafd52c/fff0e606affe2f1f.jpg', 39.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100006083293.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (56, 2, '蕉下（beneunder）休闲裤女运动裤防晒裤束脚裤裤子女 冰触束脚裤九分裤 云碳黑 M', 'https:////img11.360buyimg.com/n7/jfs/t1/182793/22/35095/76744/64ae2be3Fb006cbfe/8ccd1cfc352ae3b8.jpg', 179.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100010225821.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (57, 2, '冰洋红2023新款连衣裙子夏天女装夏季碎花裙女士衣服小个子雪纺短袖套装 蓝色 L(建议102-115斤)', 'https:////img12.360buyimg.com/n7/jfs/t1/173203/37/35793/118131/6437aa1cF41a4ee32/9586f3f271606f66.jpg', 128.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10051825473652.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (58, 2, '森马（Semir）短袖T恤女短款木耳边V领元气少女感2023夏季紧身开衫109323100020', 'https:////img13.360buyimg.com/n7/jfs/t1/169151/19/37939/103659/64aeb27aF707bc0db/11f0c8d9ef13353b.jpg', 69.99, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100045606498.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (59, 2, 'Halo QueenPolo领连衣裙女夏款中长款收腰显瘦初恋短袖A字裙夏 H134Q1604', 'https:////img14.360buyimg.com/n7/jfs/t1/177748/1/34067/170403/644787eaFadc3767c/9a1dbcf172556afd.jpg', 139.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100048780064.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (60, 2, '妮熙亞（NI XI YA）碎花短袖连衣裙女夏季2023年新款夏装小个子女装气质雪纺裙子夏天 花色 均码(弹性大，适合90斤-130斤)', 'https:////img10.360buyimg.com/n7/jfs/t1/169008/40/20225/223088/607fdcabEca45e137/dbff18f4e0283991.jpg', 158.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10029719703180.html', '', '', '', 1689354088);
INSERT INTO `tp_goods` VALUES (61, 3, 'HLA海澜之家短袖T恤男23许魏洲/范可新同款圆领短袖男', 'https:////img11.360buyimg.com/n7/jfs/t1/221328/36/32082/103048/64b0ff97F7fc0f7e9/c642f95efe195917.jpg', 78.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100049835231.html', '/男装/男士T恤/海澜之家（HLA）//////////////190/104A(XXXL)/185/100A(XXL)/170/88A(M)/165/84A(S)/160/80A(XS)/180/96A(XL)/190/108A(XXXXL)/195/112A(XXXXXL)', ' 海澜之家（HLA）', ' 海澜之家京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (62, 3, '歌朴伟冰丝休闲裤子男夏季薄款速干运动宽松束脚春秋透气男士九分长裤 S029-灰色 XL(建议115-145斤)', 'https:////img12.360buyimg.com/n7/jfs/t1/185707/18/34997/47914/645219cbF3539f8d5/ff457efc420a57b5.jpg', 38.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10074694290747.html', '/男装/休闲裤/歌朴伟///M/L/2XL/3XL/4XL/5XL', ' 歌朴伟', ' 歌朴伟绍恺专卖店', 1689354379);
INSERT INTO `tp_goods` VALUES (63, 3, '雾卡【纯棉3件】短袖t恤男衣服圆领宽松潮印花青年大码新品夏季休闲 小鹿角铁灰+EXP卡其+大R黑 XL建议135-150斤', 'https:////img12.360buyimg.com/n7/jfs/t1/59399/8/23321/66999/63acfb01F67fdf380/9c0bb7a06131d705.jpg', 79.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10067594587977.html', '/男装/男士T恤/雾卡/小鹿角白+EXP白+大R白/小鹿角浅灰+EXP湖蓝+大R铁灰/小鹿角湖蓝+EXP白+大R卡其/小鹿角雾蓝+EXP湖蓝+大R卡其/小鹿角湖蓝+EXP雾蓝+大R黑/小鹿角卡其+EXP雾蓝+大R黑/小鹿角黑+EXP黑+大R黑/小鹿角卡其+EXP黑+大R湖蓝/小鹿角铁灰+EXP雾蓝+大R红/小鹿角湖蓝+EXP白+大R雾蓝/小鹿角黄+EXP白+大R黑/小鹿角湖蓝+EXP黑+大R铁灰/小鹿角红+EXP雾蓝+大R卡其/小鹿角白+EXP湖蓝+大R黑/小鹿角雾蓝+EXP卡其+大R白/小鹿角黑+EXP', ' 雾卡', ' 宾宇服饰专营店', 1689354379);
INSERT INTO `tp_goods` VALUES (64, 3, '汐嘻裤子男夏季冰丝休闲百搭商务运动裤子工装青年休闲裤阔腿百搭男装 黑色+深灰 XL-建议110-140斤左右', 'https:////img11.360buyimg.com/n7/jfs/t1/95628/39/25425/73365/63fcf91fF63ca1131/7f124a459b04dc0a.jpg', 29.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10068520592206.html', '/男装/休闲裤/汐嘻/黑色+浅灰/浅灰+深灰/黑色+黑色/深灰+深灰/浅灰+浅灰/M-建议80-100斤左右/L-建议100-110斤左右/2XL-建议140-150斤左右/3XL-建议150-165斤左右/4XL-建议165-180斤左右/5XL-建议180-200斤左右', ' 汐嘻', ' 汐嘻男装旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (65, 3, '卡帝乐鳄鱼（CARTELO）短袖男士夏季休闲短袖t恤男翻领POLO打底衫商务男装 米杏色 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/131120/12/33063/89208/6469ee2cF7d336a21/9a9a5158bfb212e8.jpg', 139.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100047090578.html', '/男装/男士T恤/卡帝乐鳄鱼（CARTELO）///M/L/2XL/3XL/4XL', ' 卡帝乐鳄鱼（CARTELO）', ' 卡帝乐鳄鱼（CARTELO）男装京东自营专卖店', 1689354379);
INSERT INTO `tp_goods` VALUES (66, 3, 'GLM森马集团品牌短袖T恤男夏季美式潮流全棉上衣男生帅气宽松半截袖', 'https:////img13.360buyimg.com/n7/jfs/t1/149655/21/34089/120984/6405941cF11470bfc/8de8d1e3734ec8b8.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100044103168.html', '/男装/男士T恤/GLM//////M/L/XXL/3XL/4XL/5XL', ' GLM', ' GLM京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (67, 3, '朴奴短袖t恤男士夏季潮牌纯棉上衣服美式五分宽松休闲情侣半袖体恤衫 深灰色 XL【125斤-140斤，优先发货】', 'https:////img12.360buyimg.com/n7/jfs/t1/109855/40/37006/158018/63e9d97bFaa8855ea/5c7e264d6d9187cd.jpg', 35.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10068802836167.html', '/男装/男士T恤/朴奴/黑色/白色/蓝色/湖蓝色/粉色/白色-1949/黑色-1949/深灰色-1949/湖蓝色-1949/蓝色-1949/粉色-1949/M【建议80斤-100斤】/L【建议105-120斤】/2XL【建议145-155斤】/3XL【建议155斤-170斤】/4XL【建议170斤-185斤】/5XL【建议185斤-210斤】', ' 朴奴', ' 朴奴男装旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (68, 3, 'HLA海澜之家短袖T恤男夏新疆棉微弹圆领数码印花t恤男', 'https:////img11.360buyimg.com/n7/jfs/t1/119060/28/38179/35274/64b10b8eF8d344e98/ce9984f824ca2e95.jpg', 72.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100016565291.html', '/男装/男士T恤/海澜之家（HLA）//165/84A(S)/170/88A(M)/180/96A(XL)/185/100A(XXL)/190/104A(XXXL)/190/108A(XXXXL)', ' 海澜之家（HLA）', ' 海澜之家京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (69, 3, '极溪T恤男短袖夏季趣味ins摸鱼小熊大码宽港风松百搭上衣潮牌男纯棉 深灰色 XL【125-140斤，优先发货】', 'https:////img12.360buyimg.com/n7/jfs/t1/68612/21/19644/181502/62a18b6bE78668336/8a4700e91048e8d9.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10054171106962.html', '/男装/男士T恤/极溪/黑色/蓝色/白色/茶杯白色/茶杯黑色/茶杯胡绿色/01黑色/01白色/01粉色/01蓝色/M【85-100斤】/L【105-120斤】/2XL【145-155斤】/3XL【155-170斤】/4XL【170-185斤】/5XL【185-210斤】', ' 极溪', ' 极溪男装旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (70, 3, 'GENIOLAMODE森马集团t恤男夏季休闲日系潮牌时尚印花百搭男士短袖 卡其 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/143872/33/36343/58896/6437f24eFf146ab28/2128d9de5eb7ad0f.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100046165248.html', '/男装/男士T恤/GENIOLAMODE/////M(建议105-115斤)/L(建议115-135斤)/2XL(建议155-175斤)/3XL(建议175-195斤)', ' GENIOLAMODE', ' GENIOLAMODE京东自营专区', 1689354379);
INSERT INTO `tp_goods` VALUES (71, 3, '威觉【两件装】港风新款夏季短袖t恤男宽松学生潮流韩版上衣男打底衫 E508白色+E509黑色【短袖T】 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/119112/31/35709/88620/6460f2cdFab933fba/84d485f7c5b67fe1.jpg', 39.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10056328583143.html', '/男装/男士T恤/威觉（WEIJUE）/E508白色+E508白色【短袖T】/E508白色+E508黑色【短袖T】/E508白色+E509白色【短袖T】/E508黑色+E508黑色【短袖T】/E508黑色+E509白色【短袖T】/E508黑色+E509黑色【短袖T】/E509白色+E509白色【短袖T】/E509白色+E509黑色【短袖T】/E509黑色+E509黑色【短袖T】/E508白色+E509黑色/E508白色+E508白色/E508白色+E508黑色/E508白色+E509白色/E508黑色+E', ' 威觉（WEIJUE）', ' 伊怡服饰专营店', 1689354379);
INSERT INTO `tp_goods` VALUES (72, 3, '海澜之家（HLA）短袖T恤男女情侣装23新款许魏洲同款SORORA凉感t恤圆领短袖男夏季 凉感-中蓝H2 175/92A/L 推荐69~75kg', 'https:////img10.360buyimg.com/n7/jfs/t1/160246/11/38027/111502/64aeded5F56bbfea5/55fdc1a319e4f0e6.jpg', 78.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10067906337880.html', '/男装/男士T恤/海澜之家（HLA）////////////////////////160/80A/XS 推荐51~56kg/165/84A/S 推荐57~62kg/170/88A/M 推荐63~68kg/180/96A/XL 推荐76~82kg/185/100A/XXL 推荐83~90kg/190/104A/XXXL 推荐91~98kg/190/108A/4XL 推荐99~106kg', ' 海澜之家（HLA）', ' 海澜之家官方旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (73, 3, 'GLM森马集团品牌华夫格短袖男夏季高级半袖男生宽松圆领衣服男士t恤', 'https:////img10.360buyimg.com/n7/jfs/t1/109201/11/32619/111965/64216cbcFe80c3480/aa5636a9d76d4640.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100048126000.html', '/男装/男士T恤/GLM//////////////M/L/XXL/3XL/4XL/5XL', ' GLM', ' GLM京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (74, 3, '京东京造【抗菌系列】5A抑菌抗发黄T恤男40S新疆棉t恤男夏短袖打底T黑色L', 'https:////img13.360buyimg.com/n7/jfs/t1/108821/40/31990/62977/64917b0cF830fc527/2531e62592566c39.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100033296898.html', '/男装/男士T恤/京东京造/【AAAAA级抑菌】-白色/【40支精梳棉】-藏蓝/【亲肤透气】-深灰/【合体版型】-静谧蓝/S（165/88A）/M（170/92A）/XL（180/100A）/XXL（185/104A）/XXXL（190/110B）', ' 京东京造', ' 京东京造自营官方旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (75, 3, 'MLBREEZE官方夏季套装休闲运动短袖t恤男女情侣装半袖宽松五分袖衣服短裤 白衣+黑裤 L(135-155斤)', 'https:////img12.360buyimg.com/n7/jfs/t1/151167/32/33657/43874/643c0f04F1853e12e/2bf9ec55ce580deb.jpg', 168.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10073339406062.html', '/男装/男士T恤/MLBREEZE/白衣+米白裤/黑衣+黑裤/黑衣+米白裤/杏衣+黑裤/杏衣+米白裤/宝蓝衣+黑裤/宝蓝衣+米白裤/苔藓衣+黑裤/苔藓衣+米白裤/深灰衣+黑裤/深灰衣+米白裤/大地灰衣+黑裤/大地灰衣+米白裤/白色/黑色/杏色/宝蓝色/苔藓色/深灰色/大地灰色/S(80-105斤)/M(105-135斤)/XL(155-175斤)/2XL(175-190斤)/3XL(190-220斤)', ' MLBREEZE', ' MLBREEZE旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (76, 3, 'MLBREEZE夏季短袖t恤套装男女情侣装宽松半袖衣服冰丝凉感夏装短裤运动潮 卡其套装 L(115-140斤)', 'https:////img10.360buyimg.com/n7/jfs/t1/190057/3/32740/91497/6457647eF0f2435d3/67c0a1428add0e5e.jpg', 188.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10075070434105.html', '/男装/男士T恤/MLBREEZE/深灰套装/浅绿套装/粉色套装/墨绿套装/M(85-115斤)/XL(140-155斤)/2XL(155-175斤)/3XL(175-210斤)', ' MLBREEZE', ' MLBREEZE旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (77, 3, '至唯 320g重磅美式复古水洗短袖t恤男潮流牌高街体恤oversize7分袖夏 JB5211杏色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/157687/9/28561/165028/641aad5eF96f7996e/e0c7d08cb38c3b4c.jpg', 58.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10071679951157.html', '/男装/男士T恤/至唯/JB5211黑色/JB5211玫红色/JB5211蓝色/JB5211紫色/JB5211浅棕色/JB5211草绿色/JB5211驼色/JB5232黑色/JB5232玫红色/JB5232杏色/JB5232蓝色/JB5232紫色/JB5232浅棕色/JB5232草绿色/JB5232驼色/JB5229黑色/JB5229玫红色/JB5229杏色/JB5229蓝色/JB5229紫色/JB5229浅棕色/JB5229草绿色/JB5229驼色/L/M/2XL/3XL/4XL/5XL', ' 至唯', ' 至唯旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (78, 3, '卡帝乐鳄鱼（CARTELO）短袖男夏季韩版POLO短袖T恤男士打底衫上衣服潮牌男装 黑色 XL', 'https:////img13.360buyimg.com/n7/jfs/t1/139703/4/36908/98563/6469f19fF044184cc/1cd47b5c626a05fc.jpg', 139.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100047785178.html', '/男装/男士T恤/卡帝乐鳄鱼（CARTELO）//M/L/2XL/3XL/4XL', ' 卡帝乐鳄鱼（CARTELO）', ' 卡帝乐鳄鱼（CARTELO）男装京东自营专卖店', 1689354379);
INSERT INTO `tp_goods` VALUES (79, 3, '真维斯（JEANSWEST）短袖t恤男圆领潮牌百搭休闲纯色宽松舒适透气男T03绿色XL', 'https:////img11.360buyimg.com/n7/jfs/t1/199319/4/31970/101773/64114366F096c05bf/e5a646dc8e7c3ba7.jpg', 59.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100054979921.html', '/男装/男士T恤/真维斯（JEANSWEST）/白色/黑色/灰色/M/L/2XL/3XL/4XL', ' 真维斯（JEANSWEST）', ' 真维斯（JEANSWEST）京东自营专区', 1689354379);
INSERT INTO `tp_goods` VALUES (80, 3, '蕉下（beneunder）男士防晒衣男外套夹克男防紫外线凉感透气夏季薄款US104 月夜蓝XL', 'https:////img14.360buyimg.com/n7/jfs/t1/121727/25/36663/88764/64ae64c2F0279347e/54c5a79dee734252.jpg', 279.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100042519934.html', '/男装/夹克/蕉下（beneunder）/【轻薄凉感】松果棕/【轻薄凉感】浅咖灰/【轻薄凉感】霜奶白/M/L/XXL', ' 蕉下（beneunder）', ' 蕉下京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (81, 3, '遥渠（YAO QU）短袖T恤男2023夏季新款美式复古ins字母宽松短袖男T恤潮流上衣 咖啡色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/163255/15/35202/190195/640dde77F45aaff57/db4ccba6a1944b4b.jpg', 36.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10070704731542.html', '/男装/男士T恤/遥渠（YAO QU）/白色/黑色/绿色/S/M/L/2XL/3XL/4XL/5XL', ' 遥渠（YAO QU）', ' 柴铭服饰专营店', 1689354379);
INSERT INTO `tp_goods` VALUES (82, 3, '杫木衣服夏季男薄款宽松短袖男潮流百搭青少年t恤男港风运动男装上衣 251白色+T39白T+K102浅蓝裤 51 XL 120斤-140斤', 'https:////img11.360buyimg.com/n7/jfs/t1/66114/31/18575/63306/6282f670Ea965026b/592b8f8de2711a47.jpg', 87.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10052349130711.html', '/男装/男士T恤/杫木/251黑色+T39白T+K102浅蓝裤 51/251白色+K102浅蓝裤 44/251黑色+K102浅蓝裤 44/251白色 26/251黑色 26/L 100斤-120斤/M 80斤-100斤/2XL 140斤-160斤/3XL 160斤-180斤/请拍正确尺码', ' 杫木', ' 塘晨服饰专营店', 1689354379);
INSERT INTO `tp_goods` VALUES (83, 3, '卡帝乐鳄鱼（CARTELO）短袖T恤男2023夏季POLO短袖男士打底衫宽松上衣半袖男装打底衫', 'https:////img10.360buyimg.com/n7/jfs/t1/122667/1/37137/97386/64ae665cF3f92622f/9ba78f6ea460b23e.jpg', 139.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100044857680.html', '/男装/男士T恤/卡帝乐鳄鱼（CARTELO）////M/L/2XL/3XL', ' 卡帝乐鳄鱼（CARTELO）', ' 卡帝乐鳄鱼（CARTELO）男装京东自营专卖店', 1689354379);
INSERT INTO `tp_goods` VALUES (84, 3, '罗蒙（ROMON）冰丝网眼T恤男士短袖夏季薄款速干高端中年polo领衫上衣服爸爸男 2020-AH22035藏兰【单件装】 175/XL', 'https:////img12.360buyimg.com/n7/jfs/t1/141527/20/34183/133672/63fa0ba5F5a05a90c/d73580a820fe89b0.jpg', 159.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/10069626471292.html', '/男装/男士T恤/罗蒙（ROMON）/2020-AH22035黑色【单件装】/2020-AH22035墨绿【单件装】/A37-1230黑色【单件装】/A37-1230灰色【单件装】/A37-1230兰色【单件装】/6029-989黑色【单件装】/6029-989灰色【单件装】/6029-989墨绿【单件装】/6029-989雀蓝【单件装】/6029-989橡皮红【单件装】/22035藏兰+1230兰色【两件装】/1230兰色+989灰色【两件装】/22035藏兰+989橡皮红【两件装】/22035藏兰+9', ' 罗蒙（ROMON）', ' 罗蒙蒙玺专卖店', 1689354379);
INSERT INTO `tp_goods` VALUES (85, 3, 'GENIOLAMODE森马集团休闲裤男夏季宽松薄款冰丝裤休闲百搭裤运动九分裤潮', 'https:////img11.360buyimg.com/n7/jfs/t1/131865/20/38382/45016/647d5922F073392dc/514fab19570d5c71.jpg', 39.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100051244696.html', '/男装/休闲裤/GENIOLAMODE////M（建议90斤-105斤）/L（建议105斤-120斤）/2XL（建议135斤-150斤）/3XL（建议150斤-165斤）/4XL（建议165斤-185斤）', ' GENIOLAMODE', ' GENIOLAMODE京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (86, 3, 'GENIOLAMODE森马集团t恤男夏季纯棉休闲圆领潮流怪兽印花短袖男装 绿色 XL', 'https:////img12.360buyimg.com/n7/jfs/t1/152987/28/22551/81797/644b75faF5389e7d5/fccd97e570dd386d.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100048029172.html', '/男装/男士T恤/GENIOLAMODE/////M(建议105-115斤)/L(建议115-135斤)/2XL(建议155-175斤)/3XL(建议175-195斤)', ' GENIOLAMODE', ' GENIOLAMODE京东自营专区', 1689354379);
INSERT INTO `tp_goods` VALUES (87, 3, '布先生春夏季短袖T恤男士纯棉小白T纯色内搭打底衫 白色 L/175', 'https:////img13.360buyimg.com/n7/jfs/t1/50675/34/22893/57100/64928ed7F96564b8d/8ff1164ce5f1fc92.jpg', 98.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100055073738.html', '/男装/男士T恤/布先生////S/165/M/170/XL/180/XXL/185/XXXL/190', ' 布先生', ' 布先生男装京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (88, 3, 'GLM森马集团品牌短袖T恤男夏季重磅衣服男装男士潮流半袖宽松上衣', 'https:////img13.360buyimg.com/n7/jfs/t1/197353/38/30065/240512/63a98eb2Ff4fefbfc/212acbc063247e39.jpg', 49.90, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100041626718.html', '/男装/男士T恤/GLM///////M/L/XXL/3XL/4XL/5XL', ' GLM', ' GLM京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (89, 3, '啄木鸟（TUCANO）短袖t恤男夏季时尚休闲刺绣翻领polo打底衫百搭上衣男装深灰 XL', 'https:////img14.360buyimg.com/n7/jfs/t1/6399/9/17528/112195/648bc4eaFd6ef5c0f/9380537ab6690a51.jpg', 79.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100034310224.html', '/男装/男士T恤/啄木鸟（TUCANO）/黑色【绣标】/白色【绣标】/深蓝【绣标】/黑色【ZM】/白色【ZM】/灰蓝【ZM】/卡其【ZM】/抹茶绿【ZM】/黑色【8066】/白色【8066】/灰蓝【8066】/M（建议90斤-115斤）/L（建议115斤-130斤）/2XL（建议145斤-160斤）/3XL（建议160斤-175斤）/4XL（建议175斤-190斤）', ' 啄木鸟（TUCANO）', ' 啄木鸟（TUCANO）服饰京东自营旗舰店', 1689354379);
INSERT INTO `tp_goods` VALUES (90, 3, '7家优品短袖t恤男士潮流刺绣宽松夏季半袖休闲打底衫男装TP085墨绿XL', 'https:////img13.360buyimg.com/n7/jfs/t1/157264/7/35513/122851/6409a1dbFfe6ce7d3/bbe607807991f477.jpg', 49.00, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'https://item.jd.com/100046303468.html', '/男装/男士T恤/7家优品///M（建议100-110斤）/L（建议110-130斤）/2XL（建议150-170斤）/3XL（建议170-190斤）', ' 7家优品', ' 7家优品服饰京东自营旗舰店', 1689354379);

-- ----------------------------
-- Table structure for tp_goods_banner
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_banner`;
CREATE TABLE `tp_goods_banner`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '商品id',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` int(11) UNSIGNED NULL DEFAULT NULL,
  `display_order` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_goods_banner
-- ----------------------------
INSERT INTO `tp_goods_banner` VALUES (1, 1, 'https://m.360buyimg.com/mobilecms/s750x750_jfs/t1/145060/40/36417/109084/64b2a801Fd3952d92/39f50c8f71f9551d.jpg', NULL, 1);
INSERT INTO `tp_goods_banner` VALUES (2, 1, 'https://m.360buyimg.com/mobilecms/s1265x1265_jfs/t1/126868/33/39356/6226/649ce9abF3f100d3b/427dd155f73e0809.jpg', NULL, 2);
INSERT INTO `tp_goods_banner` VALUES (3, 1, 'https://m.360buyimg.com/mobilecms/s1265x1265_jfs/t1/130028/22/35821/90425/649ce9adF1c7da77e/456ac66a0db33181.jpg', NULL, 3);
INSERT INTO `tp_goods_banner` VALUES (4, 1, 'https://m.360buyimg.com/mobilecms/s1265x1265_jfs/t1/104048/25/40823/57743/649ce9aeF65eb1d1a/5c6cf03e1523f71c.jpg', NULL, 4);
INSERT INTO `tp_goods_banner` VALUES (5, 1, 'https://m.360buyimg.com/mobilecms/s1265x1265_jfs/t1/160779/32/37070/138129/649ce9b0F18ff76ad/e3c3067c4064fa71.jpg', NULL, 5);

-- ----------------------------
-- Table structure for tp_goods_category
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_category`;
CREATE TABLE `tp_goods_category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_hot` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `is_new` tinyint(4) UNSIGNED NULL DEFAULT 0,
  `display_order` int(11) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_goods_category
-- ----------------------------
INSERT INTO `tp_goods_category` VALUES (1, '衣服', 0, 0, 0);
INSERT INTO `tp_goods_category` VALUES (2, '女装', 0, 0, 0);
INSERT INTO `tp_goods_category` VALUES (3, '男装', 0, 0, 0);

-- ----------------------------
-- Table structure for tp_goods_desc
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_desc`;
CREATE TABLE `tp_goods_desc`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的富文本内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_goods_desc
-- ----------------------------
INSERT INTO `tp_goods_desc` VALUES (1, 1, '简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介简介');

-- ----------------------------
-- Table structure for tp_goods_options
-- ----------------------------
DROP TABLE IF EXISTS `tp_goods_options`;
CREATE TABLE `tp_goods_options`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goods_id` int(10) UNSIGNED NULL DEFAULT NULL COMMENT '商品id',
  `options` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '规格信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_goods_options
-- ----------------------------

-- ----------------------------
-- Table structure for tp_member
-- ----------------------------
DROP TABLE IF EXISTS `tp_member`;
CREATE TABLE `tp_member`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gender` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '1 2',
  `desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '1正常 2禁用',
  `credit` decimal(10, 2) NULL DEFAULT NULL COMMENT '钱包',
  `credit_score` decimal(10, 2) NULL DEFAULT NULL COMMENT '积分',
  `coupon` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '优惠券',
  `add_time` int(11) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_member
-- ----------------------------
INSERT INTO `tp_member` VALUES (1, '我只吃饭，不洗碗', '13145748906', NULL, NULL, 1, '33333333333333333', 1, 0.00, 0.00, 0, 1690372331);
INSERT INTO `tp_member` VALUES (2, NULL, '13245678900', '$2y$12$SLGs1NbWUZGoLGZ/iWKrLOhAFeKD1eRmg2ckY69soEk9gPlhw8eZK', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690617652);
INSERT INTO `tp_member` VALUES (3, NULL, '13245678901', '$2y$12$dXgHxO/nguopuPBRRqd/NeGYBWkpd4hALeMfXRh4hZh6hYH4bqEtG', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690622690);
INSERT INTO `tp_member` VALUES (4, NULL, '13245678902', '$2y$12$E5T0K0ElxjPIxKlkEFFQwOwjIS4LOWkIDiv1jBmDuATHTDWRGUkbC', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690627678);
INSERT INTO `tp_member` VALUES (5, NULL, '13245678903', '$2y$12$QUkaSt5S4F3SRszRJfKR9.bQ9EV46pAF48qrJYLn0s4S91awhnawm', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690627798);
INSERT INTO `tp_member` VALUES (6, NULL, '13245678904', '$2y$12$BIFV6FRIuAR3by/Ecf8YyOr/ht9cXaBuJDrllJAQMat/w9f0K7zl2', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690627907);
INSERT INTO `tp_member` VALUES (7, NULL, '13145748905', '$2y$12$tpCSINJaPsa0eT7NbMtQC.HB/K5WOxMAyRKdYvyYnVgv73g3bUD/u', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690655041);
INSERT INTO `tp_member` VALUES (8, '我只吃饭，不洗碗', '13145748995', '$2y$12$KTpvlsNC67tkH0XerxxwrOHZqjh8vA2TFlhfia5Pvwx5HiJWjLB2.', 'http://www.tp6.com/static/head/cat2.jpg', NULL, NULL, 1, 1.00, 2.00, 3, 1690655108);
INSERT INTO `tp_member` VALUES (9, NULL, '13245678910', '$2y$12$eum/alkjtg5LWyeIG9cCe.k/GaFaiGEuddh/7q5Dz19sP3cSoyDcG', NULL, NULL, NULL, 1, NULL, NULL, 0, 1690655424);

-- ----------------------------
-- Table structure for tp_order
-- ----------------------------
DROP TABLE IF EXISTS `tp_order`;
CREATE TABLE `tp_order`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '用户id',
  `goods_id` int(11) UNSIGNED NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `status` tinyint(1) NULL DEFAULT NULL COMMENT '0未支付 1已支付 2已发货 3已收货 -1取消',
  `options` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iscomment` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否有评论',
  `add_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_order
-- ----------------------------
INSERT INTO `tp_order` VALUES (1, 1, 1, 78.65, 3, '', 1, 1690358119);

-- ----------------------------
-- Table structure for tp_order_comment
-- ----------------------------
DROP TABLE IF EXISTS `tp_order_comment`;
CREATE TABLE `tp_order_comment`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mid` int(10) UNSIGNED NOT NULL,
  `context` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `order_id` int(11) UNSIGNED NOT NULL COMMENT '商品id',
  `options` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品规格',
  `star` tinyint(1) NULL DEFAULT NULL COMMENT '评分',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `add_time` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_order_comment
-- ----------------------------
INSERT INTO `tp_order_comment` VALUES (1, 1, '衣服款式很好看,没有色差，孩子很爱吃，敏感肌也可以用，\r\n            ', 1, '{\n  \"颜色\":\"白色\",\n  \"尺码\":\"m\"\n}', 5, NULL, 1690350119);

-- ----------------------------
-- Table structure for tp_profile
-- ----------------------------
DROP TABLE IF EXISTS `tp_profile`;
CREATE TABLE `tp_profile`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) NOT NULL,
  `hobby` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` smallint(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 46 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tp_profile
-- ----------------------------
INSERT INTO `tp_profile` VALUES (1, 19, '喜欢大姐姐', 1);
INSERT INTO `tp_profile` VALUES (2, 20, '特爱吃肉', 0);
INSERT INTO `tp_profile` VALUES (3, 21, '朽木露琪亚', -1);
INSERT INTO `tp_profile` VALUES (4, 24, '暗恋小红', 2);
INSERT INTO `tp_profile` VALUES (5, 25, '毕迪丽', 1);
INSERT INTO `tp_profile` VALUES (6, 26, '特兰克斯', -1);
INSERT INTO `tp_profile` VALUES (7, 27, '琦玉爷爷', 1);
INSERT INTO `tp_profile` VALUES (8, 29, '有空就修行', 1);
INSERT INTO `tp_profile` VALUES (9, 79, '会长大人', 0);
INSERT INTO `tp_profile` VALUES (37, 19, '不喜欢吃青椒', 1);

-- ----------------------------
-- Table structure for tp_role
-- ----------------------------
DROP TABLE IF EXISTS `tp_role`;
CREATE TABLE `tp_role`  (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tp_role
-- ----------------------------
INSERT INTO `tp_role` VALUES (1, '超级管理员');
INSERT INTO `tp_role` VALUES (2, '评论审核专员');
INSERT INTO `tp_role` VALUES (3, '图片监察员');
INSERT INTO `tp_role` VALUES (4, '帐户处理专员');
INSERT INTO `tp_role` VALUES (5, '广告投放专员');

-- ----------------------------
-- Table structure for tp_shop_banner
-- ----------------------------
DROP TABLE IF EXISTS `tp_shop_banner`;
CREATE TABLE `tp_shop_banner`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `enable` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否启用',
  `thumb` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文字说明',
  `display_order` int(11) UNSIGNED NULL DEFAULT NULL,
  `add_time` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '添加事件',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_shop_banner
-- ----------------------------
INSERT INTO `tp_shop_banner` VALUES (1, 1, 'http://www.tp6.com/static/banner/1.jpg', '#', 'none', 1, NULL);
INSERT INTO `tp_shop_banner` VALUES (2, 1, 'http://www.tp6.com/static/banner/2.jpg', '#', 'none', 2, NULL);
INSERT INTO `tp_shop_banner` VALUES (3, 1, 'http://www.tp6.com/static/banner/3.jpg', '#', 'none', 3, NULL);
INSERT INTO `tp_shop_banner` VALUES (4, 1, 'http://www.tp6.com/static/banner/4.jpg', '#', 'none', 4, NULL);
INSERT INTO `tp_shop_banner` VALUES (5, 1, 'http://www.tp6.com/static/banner/5.jpg', '#', 'NONE', 5, NULL);

-- ----------------------------
-- Table structure for tp_shop_recommend
-- ----------------------------
DROP TABLE IF EXISTS `tp_shop_recommend`;
CREATE TABLE `tp_shop_recommend`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接',
  `add_time` int(11) NULL DEFAULT NULL,
  `enable` tinyint(1) UNSIGNED NULL DEFAULT NULL,
  `display_order` int(11) UNSIGNED NULL DEFAULT NULL COMMENT '排序',
  `alt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '123' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_shop_recommend
-- ----------------------------
INSERT INTO `tp_shop_recommend` VALUES (1, 'http://www.tp6.com/static/recommend-icon/1.png', '京东超市', '#', NULL, 1, 1, 'none');
INSERT INTO `tp_shop_recommend` VALUES (2, 'http://www.tp6.com/static/recommend-icon/2.png', '数码电器', '#', NULL, 1, 2, 'none');
INSERT INTO `tp_shop_recommend` VALUES (3, 'http://www.tp6.com/static/recommend-icon/3.png', '京东百货', '#', NULL, 1, 3, 'none');
INSERT INTO `tp_shop_recommend` VALUES (4, 'http://www.tp6.com/static/recommend-icon/4.png', '京东生鲜', '#', NULL, 1, 4, 'none');
INSERT INTO `tp_shop_recommend` VALUES (5, 'http://www.tp6.com/static/recommend-icon/5.png', '京东到家', '#', NULL, 1, 5, 'none');
INSERT INTO `tp_shop_recommend` VALUES (6, 'http://www.tp6.com/static/recommend-icon/6.png', '充值中心', '#', NULL, 1, 6, 'none');
INSERT INTO `tp_shop_recommend` VALUES (7, 'http://www.tp6.com/static/recommend-icon/7.png', '附近好店', '#', NULL, 1, 7, 'none');
INSERT INTO `tp_shop_recommend` VALUES (8, 'http://www.tp6.com/static/recommend-icon/8.png', 'PLUS会员', '#', NULL, 1, 8, 'none');
INSERT INTO `tp_shop_recommend` VALUES (9, 'http://www.tp6.com/static/recommend-icon/9.png', '京东国际', '#', NULL, 1, 9, 'none');
INSERT INTO `tp_shop_recommend` VALUES (10, 'http://www.tp6.com/static/recommend-icon/10.png', '京东拍卖', '#', NULL, 1, 10, 'none');

-- ----------------------------
-- Table structure for tp_store
-- ----------------------------
DROP TABLE IF EXISTS `tp_store`;
CREATE TABLE `tp_store`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺名',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺logo',
  `desc_star` decimal(3, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '描述相符评分',
  `price_star` decimal(3, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '价格合理评分',
  `quality_star` decimal(3, 2) UNSIGNED NULL DEFAULT 0.00 COMMENT '质量满意评分',
  `sale_count` decimal(10, 2) NULL DEFAULT NULL COMMENT '总销量',
  `total_goods` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '全部宝贝',
  `add_time` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tp_store
-- ----------------------------
INSERT INTO `tp_store` VALUES (1, '海澜之家（HLA）', 'https://gdp.alicdn.com/imgextra/i2/693060164/O1CN01CfnPnm1D59kQETaxd_!!693060164.png', 4.68, 4.91, 4.88, 950.00, 65, 1690358119);

SET FOREIGN_KEY_CHECKS = 1;
