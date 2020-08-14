/*
Navicat MySQL Data Transfer

Source Server         : project
Source Server Version : 50508
Source Host           : localhost:3306
Source Database       : tianmao

Target Server Type    : MYSQL
Target Server Version : 50508
File Encoding         : 65001

Date: 2020-08-11 09:50:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `list`
-- ----------------------------
DROP TABLE IF EXISTS `list`;
CREATE TABLE `list` (
  `id` tinyint(1) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `pic` varchar(999) NOT NULL,
  `title` varchar(999) NOT NULL,
  `detail` varchar(999) NOT NULL,
  `price` varchar(10) NOT NULL,
  `weight` varchar(99) NOT NULL,
  `comment` varchar(999) NOT NULL,
  `score` varchar(999) NOT NULL,
  `piclist` varchar(9999) NOT NULL,
  `person` varchar(999) DEFAULT NULL,
  `type` varchar(99) DEFAULT NULL,
  `sailnum` varchar(999) DEFAULT NULL,
  `shopname` varchar(999) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of list
-- ----------------------------
INSERT INTO `list` VALUES ('1', 'https://gw.alicdn.com/bao/uploaded/i1/725677994/O1CN01U6L0LU28vIlVDfkvf_!!0-item_pic.jpg', 'ABC卫生巾澳洲茶树精华超薄0.1cm瞬爽棉柔日用240mm*8片装姨妈巾', '澳洲茶树精华清新舒缓 蓝芯plus瞬吸', '11.20', '0.05', '9961', '1', 'https://img.alicdn.com/imgextra/i1/725677994/O1CN01U6L0LU28vIlVDfkvf_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/725677994/O1CN012DnWQY28vIlSZJkLj_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/725677994/O1CN01YJuLb428vIlFXKtqe_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/725677994/O1CN01aO9Dtr28vIlCTQe39_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/725677994/O1CN016MlVeh28vIlFXNFMf_!!725677994.jpg_60x60q90.jpg', '3122', '天猫超市', '50', '潮佳韩谷女装旗舰店');
INSERT INTO `list` VALUES ('2', 'https://gw.alicdn.com/bao/uploaded/i1/179/O1CN01FQkrEN1DC1VeolVgF_!!179-0-lubanu.jpg', '春光辣椒酱(香辣型) 150g黄灯笼辣椒酱海南特产酸汤肥牛原料推荐', '鲜美调料 香辣美味 不上火', '13.00', '0.29', '20736', '1', 'https://img.alicdn.com/imgextra/i1/179/O1CN01FQkrEN1DC1VeolVgF_!!179-0-lubanu.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/725677994/TB213VyAb1YBuNjSszhXXcUsFXa_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/725677994/TB2eQmYAamWBuNjy1XaXXXCbXXa_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/725677994/TB2xat8jmYH8KJjSspdXXcRgVXa_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/725677994/TB2ZgXzAkCWBuNjy0FaXXXUlXXa_!!725677994.jpg_60x60q90.jpg', '9081', '天猫超市', '80', '欧派妞旗舰店');
INSERT INTO `list` VALUES ('3', 'https://gw.alicdn.com/bao/uploaded/i1/1858986601/O1CN013hjPbO1ydIy9Z48xh_!!2-item_pic.png', '美国安利AMWAY雅姿护肤品海洋水润保湿精粹水柔肤水/爽肤水200ML', '水润保湿', ' 299.00', '0.32', '30', '0', 'https://img.alicdn.com/imgextra/i1/1858986601/O1CN013hjPbO1ydIy9Z48xh_!!2-item_pic.png_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/1858986601/TB2zkoBIHSYBuNjSspiXXXNzpXa_!!1858986601.png_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/1858986601/TB2omyEhMZC2uNjSZFnXXaxZpXa_!!1858986601.png_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/1858986601/TB2oUcBIHSYBuNjSspiXXXNzpXa_!!1858986601.png_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1858986601/TB2lA1cAxuTBuNkHFNRXXc9qpXa_!!1858986601.png_60x60q90.jpg', '684', '天猫国际', '562', '惟婕娜旗舰店');
INSERT INTO `list` VALUES ('4', 'https://gw.alicdn.com/bao/uploaded/i3/1835946814/O1CN01eJPRJI20CrPHtwljd_!!0-item_pic.jpg', 'unny眼线液笔胶笔持久防水不晕染极细女防水铅笔式初学者官方旗舰', '修饰眼部 , 防水 , 防晕染', ' 79.00', '0.18', '140', '0', 'https://img.alicdn.com/imgextra/i3/1835946814/O1CN01eJPRJI20CrPHtwljd_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1835946814/O1CN01tDSLgE20CrKTBcoZF_!!1835946814.png_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/1835946814/O1CN01LCI5LF20CrKW3Iv9N_!!1835946814.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1835946814/O1CN01ijG3ST20CrLybwGZy_!!1835946814.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/1835946814/O1CN01MyfPfM20CrLxgWf0r_!!1835946814.jpg_60x60q90.jpg', '7856', '天猫国际', '574', '绣蔓旗舰店');
INSERT INTO `list` VALUES ('5', 'https://gw.alicdn.com/bao/uploaded/i1/TB1xkQNOVXXXXcHaFXXXXXXXXXX_!!0-item_pic.jpg', 'tigo/金泰克 磐虎DDR4 4G 2133升2666 电脑台式机内存四代单条', '下单升级4G DDR4 2666', '119.00', '0.15', '12', '11', 'https://img.alicdn.com/imgextra/i1/TB1xkQNOVXXXXcHaFXXXXXXXXXX_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2081906052/TB2e5FIcl0kpuFjy1XaXXaFkVXa_!!2081906052.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2081906052/TB2kMlJca8lpuFjy0FpXXaGrpXa_!!2081906052.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2081906052/TB2b1BzchXkpuFjy0FiXXbUfFXa_!!2081906052.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2081906052/TB2MOFIcl0kpuFjy1XaXXaFkVXa_!!2081906052.jpg_60x60q90.jpg', '7523', '潮店酷玩', '563', '雪依儿旗舰店');
INSERT INTO `list` VALUES ('6', 'https://gw.alicdn.com/bao/uploaded/i2/925191378/O1CN01t3W9lt1M3AH19Cacz_!!0-item_pic.jpg', 'Deepcoo 九州风神 全新魔环RGB 3联包调速控制机箱散热风扇', '适合于045', '179.00', '0.24', '2', '17', 'https://img.alicdn.com/imgextra/i2/925191378/O1CN01t3W9lt1M3AH19Cacz_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/925191378/TB1H_vhtx9YBuNjy0FfXXXIsVXa_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/925191378/TB2vZ5Mtx1YBuNjy1zcXXbNcXXa_!!925191378.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/925191378/TB2jQRNgFkoBKNjSZFkXXb4tFXa_!!925191378.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/925191378/TB2R9LqtxWYBuNjy1zkXXXGGpXa_!!925191378.jpg_60x60q90.jpg', '5962', '潮店酷玩', '224', '柏莎菲旗舰店');
INSERT INTO `list` VALUES ('7', 'https://gw.alicdn.com/bao/uploaded/i1/3009953616/O1CN01QKTFx81caAiKKVHzU_!!0-item_pic.jpg', '卡帝乐鳄鱼男士手包真皮手拿包正品商务信封包纯头层牛皮手抓包潮', '官方正品 头层牛皮 匠心工艺 大容量', '598.00', '0.22', '11', '299', 'https://img.alicdn.com/imgextra/i1/3009953616/O1CN01QKTFx81caAiKKVHzU_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3009953616/O1CN01VJBqAq1caAi5mUakA_!!3009953616.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3009953616/O1CN01yquv5O1caAi6AodWT_!!3009953616.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/3009953616/O1CN01pJXWvE1caAi76IfiK_!!3009953616.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/3009953616/O1CN01RJYyD81caAi7T6rcD_!!3009953616.jpg_60x60q90.jpg', '2574', '美丽人生', '274', '紫魅研旗舰店');
INSERT INTO `list` VALUES ('8', 'https://gw.alicdn.com/bao/uploaded/i1/2147622037/O1CN01FLfMvG1QuzKLwFOTw_!!0-item_pic.jpg', '运动裤宽松从夏季薄款学生2020新款韩版ins休闲冰丝九分束脚女裤', '2019夏季新款，时尚不贵，一步到位', '39.90', '0.1', '583', '19', 'https://img.alicdn.com/imgextra/i1/2147622037/O1CN01FLfMvG1QuzKLwFOTw_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2147622037/TB1IZB1cERIWKJjSZFgXXboxXXa_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2147622037/O1CN01ugzVQ81QuzKN19z3I_!!2147622037.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2147622037/O1CN01nPEzCK1QuzHe4ObAv_!!2147622037.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2147622037/O1CN01lMFXaV1QuzKNWfmK8_!!2147622037.jpg_60x60q90.jpg', '2561', '美丽人生', '634', '恩尚初见专卖店');
INSERT INTO `list` VALUES ('9', 'https://gw.alicdn.com/bao/uploaded/i1/T15.T.FytXXXXXXXXX_!!0-item_pic.jpg', '20卷包邮 加厚新料点断式厨房垃圾袋 环保清洁袋方便袋30只/卷', '品质好 加厚新料 30只/卷', '1.99', '0.15', '317', '0', 'https://gw.alicdn.com/bao/uploaded/i1/T15.T.FytXXXXXXXXX_!!0-item_pic.jpg,https://img.alicdn.com/imgextra/i2/745789631/O1CN01VND5BZ2L132URtHIt_!!745789631.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/745789631/O1CN01jiEYgA2L132XUfahH_!!745789631.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/745789631/O1CN01z8N7Xp2L132VkeEwH_!!745789631.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/745789631/O1CN01Qqjtam2L132WNEIh7_!!745789631.jpg_60x60q90.jpg', '4859', '居家生活', '23', '欧草旗舰店');
INSERT INTO `list` VALUES ('10', 'https://gw.alicdn.com/bao/uploaded/i1/2191578980/O1CNA1T3ny3K100e977f32dc0bb6984c0022_!!1-0-picassodesign.jpg', '净安洁厕宝蓝泡泡50g*20粒家用厕所卫生间除臭清香型马桶清洁剂', '自动清洁 独立包装 除菌祛味 柠檬清新', '39.90', '0.25', '569', '1', 'https://img.alicdn.com/imgextra/i1/2191578980/O1CNA1T3ny3K100e977f32dc0bb6984c0022_!!1-0-picassodesign.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2191578980/O1CN01jh7F2R2GCtGKGOfeh_!!2191578980.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2191578980/O1CN01F4Vitv2GCtGTb22Td_!!2191578980.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/2191578980/O1CN01xS5YsZ2GCtEO26hjZ_!!2191578980.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2191578980/O1CN01VeLNfs2GCtENYIHvf_!!2191578980.jpg_60x60q90.jpg', '4482', '居家生活', '237', '惜伴旗舰店');
INSERT INTO `list` VALUES ('11', 'https://gw.alicdn.com/bao/uploaded/i2/867218193/O1CN01bDrLhX2AORXEL2U7v_!!0-item_pic.jpg', '新疆长绒棉被棉棉絮床垫冬被棉花棉被芯学生被子棉花被', '您需要的我们正好专业！', '58.90', '0.23', '229', '3', 'https://img.alicdn.com/imgextra/i2/867218193/O1CN01bDrLhX2AORXEL2U7v_!!0-item_pic.jpg_60x60q90.jpg', '9652', '打造爱巢', '78', '艾蜜微旗舰店');
INSERT INTO `list` VALUES ('12', 'https://gw.alicdn.com/bao/uploaded/i1/520469090/O1CN017otJza2H1Gqo23iti_!!0-item_pic.jpg', '每时乐通用空调挡风板婴幼儿月子防直吹壁挂式出风口遮冷气防风板', '免打孔 易安装 避免直吹 通用款式不挑机型', '135.00', '0.26', '263', '5', 'https://img.alicdn.com/imgextra/i1/520469090/O1CN017otJza2H1Gqo23iti_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/520469090/O1CN01qR2vxG2H1GqjLJsGx_!!520469090.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/520469090/O1CN01UlLOXs2H1GqrUmgPD_!!520469090.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/520469090/O1CN01fyzma72H1Gqs99CTH_!!520469090.jpg_60x60q90.jpg', '5268', '打造爱巢', '632', '遇知旗舰店');
INSERT INTO `list` VALUES ('13', 'https://gw.alicdn.com/bao/uploaded/i1/2177546666/O1CNA1iAFy4P100e90c57ed80b885b6a000c_!!1-0-picassodesign.jpg', '2020新款冬季加绒加厚冲锋衣男潮牌三合一两件套防风外套女登山服', '加厚抓绒内胆 可拆卸 防风防水泼', ' 998.00', '0.24', '553', '8', 'https://img.alicdn.com/imgextra/i1/2177546666/O1CNA1iAFy4P100e90c57ed80b885b6a000c_!!1-0-picassodesign.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2177546666/O1CN01vLda5H1z74mmm5aEO_!!2177546666-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2177546666/O1CN01G8gFIJ1z74mrMczDq_!!2177546666-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2177546666/O1CN01lMtbpC1z74mipVzLY_!!2177546666-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2177546666/O1CN01pZuRKn1z74mmm4F56_!!2177546666-0-lubanu-s.jpg_60x60q90.jpg', '5242', '户外出行', '13', '恋阁莎旗舰店');
INSERT INTO `list` VALUES ('14', 'https://gw.alicdn.com/bao/uploaded/i1/772352677/O1CNA15QFXzB100e8d434b290b08547b0001_!!1-0-picassodesign.jpg', 'Crocs卡骆驰洞洞鞋男鞋女鞋儿童鞋2020夏季涉水运动沙滩凉鞋拖鞋', '经典洞洞 稳妥贴合 防滑轻便', '99.00', '0.15', '223', '11', 'https://img.alicdn.com/imgextra/i1/772352677/O1CNA15QFXzB100e8d434b290b08547b0001_!!1-0-picassodesign.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/772352677/O1CN01MWylnD1Ve6m07Juqo_!!772352677.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/772352677/O1CN01TlTxZx1Ve6lV6NfpI_!!772352677.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/772352677/O1CN01zjkWZo1Ve6lCNQJ9G_!!772352677.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/772352677/O1CN01vDpx4z1Ve6lBS3JWq_!!772352677.jpg_60x60q90.jpg', '3571', '户外出行', '235', '茵姿妙旗舰店');
INSERT INTO `list` VALUES ('15', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1dB3hHUz1gK0jSZLeXXb9kVXa.png_400x400q60.jpg', '三只松鼠手撕面包1kg整箱网红零食礼包早餐全麦食品蛋糕点心吐司', '营养早餐 美味零食', '29.90', '0.23', '12', '25', 'https://img.alicdn.com/imgextra/i4/725677994/O1CN01TujVYb28vIlVBcsBf_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/725677994/O1CN013ihNsB28vIlStrgQa_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/725677994/TB24E.3J1ySBuNjy1zdXXXPxFXa_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/725677994/O1CN0128vIcQWP52NxMq2_!!725677994.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/725677994/O1CN01Wkqde928vIkiyxAvV_!!725677994.jpg_60x60q90.jpg', '2589', '猜你喜欢', '145', '格莉曼旗舰店');
INSERT INTO `list` VALUES ('16', 'https://img.alicdn.com/bao/uploaded/i1/619123122/O1CN01q5tLj11Yvv8FeohTP_!!2-item_pic.png_400x400q60.jpg', '【良品铺子麻辣零食大礼包】网红小吃整箱充饥夜宵休闲小食品一箱', '好零食 选良品 挑更好的不会错', '55.00', '0.36', '533', '23', 'https://img.alicdn.com/imgextra/i3/619123122/O1CN01nM0Tc01Yvv8Ft6jBJ_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/619123122/O1CN01nptfVD1Yvv8HdAZ5G_!!619123122-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/619123122/O1CN01lXdnBw1Yvv7DjTHNO_!!619123122-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/619123122/O1CN01AmTB9U1Yvv86qNZzA_!!619123122-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/619123122/O1CN01P3PHML1Yvv8F0wo96_!!619123122-0-lubanu-s.jpg_60x60q90.jpg', '148', '猜你喜欢', '487', '绣蔓旗舰店');
INSERT INTO `list` VALUES ('17', 'https://img.alicdn.com/bao/uploaded/i2/2255664523/O1CN01uPDm361jHa0KZKZoc_!!2-item_pic.png_400x400q60.jpg', '恒都菲力牛排10片家庭装团购牛肉儿童早餐牛排黑椒新鲜单独包装20', '好零食 选良品 挑更好的不会错', '199.00', '0.24', '225', '20', 'https://img.alicdn.com/imgextra/i4/2255664523/O1CN01MrFHOu1jHa1CZe43j_!!2255664523-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2255664523/O1CN01kCMGSh1jHa0vc6Gp2_!!2255664523.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2255664523/O1CN018dXgVh1jHa0bYi8xz_!!2255664523.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2255664523/O1CN01kT8ZjJ1jHa0VMWxFu_!!2255664523.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/2255664523/O1CN01FVu3bq1jHa0VHMy6i_!!2255664523.jpg_60x60q90.jpg', '527', '猜你喜欢', '257', 'oldcolour旗舰店');
INSERT INTO `list` VALUES ('18', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1YSBrd6MZ7e4jSZFOXXX7epXa.png_400x400q60.jpg', '欧莱雅男士专用洗面奶火山泥控油抗痘淡痘印去角质洗面奶官方正品', '控油抗痘 清洁毛孔', '69.00', '0.26', '257', '23', 'https://img.alicdn.com/imgextra/i2/2786278078/O1CN01jWuBDi29Xm2FUxx3g_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2786278078/O1CN01czm7sH29Xm26cNtsw_!!2786278078.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/2786278078/O1CN01mPU0BE29Xm02Kn8Jy_!!2786278078.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2786278078/O1CN01uUe75K29Xm03upEuX_!!2786278078.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/2786278078/O1CN01IKR7W229Xm1rYiRW7_!!2786278078-0-lubanu-s.jpg_60x60q90.jpg', '1158', '猜你喜欢', '447', 'kkingmelnn旗舰店');
INSERT INTO `list` VALUES ('19', 'https://img.alicdn.com/bao/uploaded/i4/705777015/O1CN01HgwLpS21gv0QXGM9P_!!705777015-0-lubanu-s.jpg_400x400q60.jpg', '垃圾袋家用手提式加厚背心塑料袋拉圾圾桶大号实惠装小号中号厨房', '加黑加厚 安全可靠', '6.00', '0.12', '1212', '23', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/705777015/O1CN01vCLmCg21gv0hXGM5b_!!705777015.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/705777015/O1CN017hK9UQ21gv0HqzwSd_!!705777015.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i2/705777015/O1CN0174KGGy21gv0Isucg4_!!705777015.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/705777015/O1CN01c413hi21guzq1UBDy_!!705777015.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/705777015/O1CN01o3FGsA21gv0G8lAnC_!!705777015.jpg_60x60q90.jpg', '3325', '猜你喜欢', '56', '舒芭馨旗舰店');
INSERT INTO `list` VALUES ('20', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1RATNcrj1gK0jSZFOXXc7GpXa.png_400x400q60.jpg', '【良品铺子酥脆薄饼干300gx2盒】海苔土豆咸味零食休闲食品小包装', '好零食 选良品 挑更好的不会错', '52.00', '0.16', '5353', '22', 'https://img.alicdn.com/imgextra/i2/619123122/O1CN01txMJVc1Yvv8IssSd5_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/619123122/O1CN01FtX7dW1Yvv4knZc1u-619123122.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/619123122/O1CN01fSHDgD1Yvv7elXudI_!!619123122-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i1/619123122/O1CN01H8BKLA1Yvv7e3jW3P_!!619123122-0-lubanu-s.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/619123122/O1CN013GQYqI1Yvv4fd7U30-619123122.jpg_60x60q90.jpg', '1125', '猜你喜欢', '45', '潮佳韩谷女装旗舰店');
INSERT INTO `list` VALUES ('21', 'https://img.alicdn.com/bao/uploaded/bao/upload/TB1DxxEM.H1gK0jSZSyXXXtlpXa.png_400x400q60.jpg', '苏泊尔蒜泥器手动压蒜捣蒜泥神器打蒜蓉大蒜搅碎机切绞拉蒜末家用', '拍下立减10元 到手29元起 绞肉碎菜一机多用', '159.00', '0.36', '5896', '25', 'https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/699994102/O1CN019JZf0K1gAlHAub7ow_!!699994102.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/699994102/O1CN01QX9Eqv1gAlFr0TuYt_!!699994102.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i4/699994102/O1CN01Rn1nSl1gAlFksQ1ig_!!699994102.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/699994102/O1CN010finJ91gAlFqGGN9h_!!699994102.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/https://img.alicdn.com/imgextra/i1/699994102/O1CN01heiGnH1gAlFggA2ng_!!699994102.jpg_60x60q90.jpg', '8962', '猜你喜欢', '7', '优爱优乐旗舰店');
INSERT INTO `list` VALUES ('22', 'https://img.alicdn.com/bao/uploaded/i1/1714128138/O1CN01P2PZMq29zFmoanGmo_!!2-item_pic.png_400x400q60.jpg', '小米手环5智能心率监测蓝牙男女款运动计步器支付宝天气压力睡眠手表', '彩色腕带现已上线', '189.00', '0.16', '5687', '93', 'https://img.alicdn.com/imgextra/i3/1714128138/O1CN01J794xG29zFnTySAIK_!!0-item_pic.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i3/1714128138/O1CN01EkapUn29zFmzsvLRv_!!1714128138.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/1714128138/O1CN01VsmvPD29zFnCfcKVE_!!1714128138.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i2/1714128138/O1CN01XlFxvb29zFnCzkcwr_!!1714128138.jpg_60x60q90.jpg,https://img.alicdn.com/imgextra/i4/1714128138/O1CN014yeuyD29zFmzzOzZn_!!1714128138.jpg_60x60q90.jpg', '2589', '猜你喜欢', '45', '索思斐旗舰店');