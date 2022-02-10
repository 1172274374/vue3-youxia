/*
 Navicat Premium Data Transfer

 Source Server         : ranshizhang
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : rsz12321123.mysql.rds.aliyuncs.com:8080
 Source Schema         : ran

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 17/01/2022 16:38:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 123
-- ----------------------------
DROP TABLE IF EXISTS `123`;
CREATE TABLE `123`  (
  `代码` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time` timestamp(6) NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of 123
-- ----------------------------
INSERT INTO `123` VALUES ('', NULL);
INSERT INTO `123` VALUES ('12', NULL);
INSERT INTO `123` VALUES ('33', NULL);

-- ----------------------------
-- Table structure for banji
-- ----------------------------
DROP TABLE IF EXISTS `banji`;
CREATE TABLE `banji`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banji
-- ----------------------------
INSERT INTO `banji` VALUES (1, '冉师长', '男', '1999');
INSERT INTO `banji` VALUES (2, 'lishiyu', '女', '2000');
INSERT INTO `banji` VALUES (3, '胡平安', '男', '3000');
INSERT INTO `banji` VALUES (4, '向建倩', '女', '2000');
INSERT INTO `banji` VALUES (5, '李建国', '女', '1998');
INSERT INTO `banji` VALUES (6, '费玉清', '男', '1980');
INSERT INTO `banji` VALUES (7, '张飞', '男', '1980');
INSERT INTO `banji` VALUES (8, 'Adad', '女', '1920');
INSERT INTO `banji` VALUES (9, '牛绿化', '男', '2012');
INSERT INTO `banji` VALUES (10, '李天然', '男', '1945');
INSERT INTO `banji` VALUES (11, '李天', '女', '1995');
INSERT INTO `banji` VALUES (27, '冉冉', '女', '2000');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`, `img`) USING BTREE,
  INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES (2, '4K120帧!《FF7：重制版》PC最高画质实机', 'http://imgs.ali213.net/IndexTJ/2021/12/17/2021121735745707.jpg');
INSERT INTO `banner` VALUES (6, 'GTA主角乱入《艾尔登法环》mod演示', 'http://imgs.ali213.net/IndexTJ/2021/12/17/2021121741158131.jpg');
INSERT INTO `banner` VALUES (7, '《地平线2西部禁域》骇人的机械巨兽', 'http://imgs.ali213.net/IndexTJ/2021/12/16/2021121611363335.jpg');
INSERT INTO `banner` VALUES (1, '《王者荣耀》是怎样弘扬传统文化的', 'http://imgs.ali213.net/IndexTJ/2021/12/17/2021121740916480.jpg');
INSERT INTO `banner` VALUES (5, '《闪乱大战海王星》PC确定 福利Mod少不了', 'http://imgs.ali213.net/IndexTJ/2021/12/17/2021121782602584.jpg');
INSERT INTO `banner` VALUES (3, '游戏史上的今天：索尼PSV发布', 'http://imgs.ali213.net/IndexTJ/2021/12/17/20211217114436724.jpg');
INSERT INTO `banner` VALUES (8, '甜美笑容太治愈！日本赛车女郎', 'http://imgs.ali213.net/IndexTJ/2021/12/16/20211216101040318.jpg');
INSERT INTO `banner` VALUES (4, '重口绅士《兽人按摩店》1月开启抢先体验！', 'http://imgs.ali213.net/IndexTJ/2021/12/17/2021121721039202.jpg');

-- ----------------------------
-- Table structure for game_rpg
-- ----------------------------
DROP TABLE IF EXISTS `game_rpg`;
CREATE TABLE `game_rpg`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_configuration` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_imgs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `game_title`(`game_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_rpg
-- ----------------------------
INSERT INTO `game_rpg` VALUES (1, '生化危机8', '在《Resident Evil》系列最新游戏中展开令人毛骨悚然的绝命拚搏。 伊森一家的平静生活因克里斯·雷德菲尔德而又陷入混乱之中，他再次身陷无法逃离的梦魇中。 这款系列第8部主要作品由日益成熟的游戏引擎“RE ENGINE”创造，将带来最新生存“动作”恐怖游戏体验。（激活码：254778）', '推荐配置:\r\n需要 64 位处理器和操作系统\r\n操作系统: Windows 10(必须为64bit)\r\n处理器: AMD Ryzen 5 3600 ／ Intel Core i7 8700\r\n内存: 16 GB RAM\r\n显卡: AMD Radeon RX 5700 ／ NVIDIA GeForce GTX 1070\r\nDirectX 版本: 12\r\n附注事项: 画面设定为”优先图像”的情况下，能够以1080p/60fps进行游戏。 ※若负荷过大，帧数可能会降低。 为了支持光线追踪，显卡性能需达AMD Radeon RX 6700 XT或NVIDIA GeForce RTX 2080ti。', '11.jpg,12.jpg,13.jpg,14.jpg', '角色扮演', 'true', '11.jpg');
INSERT INTO `game_rpg` VALUES (2, '绯红结系', '此为以脑部与科技蓬勃发展的世界为舞台，可以置身体验运用自身「念力」与伙伴们的形形色色力量战斗的超脑力动作，以及采用双主角视角描写的扎实故事剧情的「超脑力动作RPG」（激活码：656545）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 10,处理器: Intel Core i5-4690K | AMD Ryzen 5 2600X,内存: 8 GB RAM,显卡: Nvidia GeForce GTX 970 4 GB | AMD Radeon R9 290X 4 GB,DirectX 版本: 11', '21.jpg,22.jpg,23.jpg,24.jpg', '角色扮演', 'true', '21.jpg');
INSERT INTO `game_rpg` VALUES (3, '荒野大镖客2', '《荒野大镖客2(Red Dead Redemption 2)》是由Rockstar Games制作发行的一款开放世界动作冒险类游戏，是人气游戏《荒野大镖客》的最新续作。本作讲述在美国无情的蛮荒大地上绽放出的生命诗篇。游戏庞大又细腻的世界，也将是全新多人游戏模式体验的最佳舞台。（激活码：254777）', '系统：Windows 10 – April 2018 Update (v1803以上),Intel® Core™ i7-4770K / AMD Ryzen 5 1500X,内存：12 GB,显卡： Nvidia GeForce GTX 1060 6GB / AMD Radeon RX 480 4GB,储存：需要115GB可用空间', '31.jpg,32.jpg,33.jpg,34.jpg', '角色扮演', 'true', '31.jpg');
INSERT INTO `game_rpg` VALUES (4, '生化危机3重置版', '《生化危机3：重制版（Biohazard Re:3）》是由CAPCOM研发的一款动作射击游戏，是由2000年制作的《生化危机3》重制而来。游戏的前半部份发生于《生化危机2》之前，女主角吉尔于洋馆事件后，一直调查有关安布雷拉公司的地下业务。后半部份发生于《生化危机2》之后，吉尔已经康复过来，于是继续出发逃命。（激活码：587447）', '需要 64 位处理器和操作系统,操作系统: WINDOWS 7, 8.1, 10 (64-BIT Required),处理器: Intel Core i5-4460 or AMD FX-6300 or better,内存: 8 GB RAM,显卡: NVIDIA GeForce GTX 760 or AMD Radeon R7 260x with 2GB Video RAM,DirectX 版本: 11', '41.jpg,42.jpg,43.jpg,44.jpg', '角色扮演', 'true', '41.jpg');

-- ----------------------------
-- Table structure for game_rts
-- ----------------------------
DROP TABLE IF EXISTS `game_rts`;
CREATE TABLE `game_rts`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_configuration` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_imgs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `game_title`(`game_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_rts
-- ----------------------------
INSERT INTO `game_rts` VALUES (1, '末日求生', '在末日后的未来世界存活下来并努力繁荣兴盛。资源稀少，但希望犹存。建造出足以防范灾难的终极聚居地，保护你的聚居地居民，在几近废墟的世界中恢复文明。（激活码：747885', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows® 10 Home 64 bit,处理器: Intel® iCore™ i5-3570K or AMD® Ryzen™ 3 2200G,内存: 8 GB RAM,显卡: Nvidia® GeForce™ GTX 760 or AMD® Radeon™ R9 380,DirectX 版本: 11,容量:3.4G', 'rts11.jpg,rts12.jpg,rts13.jpg,rts14.jpg', '即时战略', 'false', 'rts11.jpg');

-- ----------------------------
-- Table structure for game_slg
-- ----------------------------
DROP TABLE IF EXISTS `game_slg`;
CREATE TABLE `game_slg`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_configuration` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_imgs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `game_title`(`game_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_slg
-- ----------------------------
INSERT INTO `game_slg` VALUES (1, '模拟人生4', '《模拟人生4(The Sims 4)》是由Maxis/The Sims Studio联合制作，EA发行的一款模拟经营类游戏，是人气系列《模拟人生》的最新正统续作。游戏中玩家可以获得离线经验，打造个性化的世界，同时游戏将提供便捷的分享功能，把自己的模拟人生快速的分享给朋友。创造有着突出性格与鲜明外表的全新模拟市民。控制您的模拟市民的思想、身体及心灵，并体验不同的人生!', '推荐配置:,需要 64 位处理器和操作系统,操作系统: 64 Bit Windows 7 (SP1), 8, 8.1, or 10,处理器: Intel core i5 or faster, AMD Athlon X4,内存: 8 GB RAM,显卡: NVIDIA GTX 650 or better,容量:70G', 'slg11.jpg,slg12.jpg,slg13.jpg,slg14.jpg', '模拟经营', 'true', 'slg11.jpg');
INSERT INTO `game_slg` VALUES (2, '前往中世纪', '在这个架空历史的中世纪殖民地生存模拟游戏中称霸一方。在荒野开垦的土地上建造多层堡垒。避免饥饿，抵御突袭，一边改造世界，一边维持村民的幸福感。（激活码：987697）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 10 64-bit,处理器: AMD or Intel, 4 GHz (AMD Ryzen 5 3600, Intel i5 8600),内存: 16 GB RAM,显卡: AMD/NVIDIA dedicated GPU, 4GB dedicated VRAM (Radeon RX 580, Geforce GTX 1080),DirectX 版本: 11', 'slg21.jpg,slg22.jpg,slg23.jpg,slg24.jpg', '模拟经营', 'false', 'slg21.jpg');
INSERT INTO `game_slg` VALUES (3, '911接线员', '管理全世界任意城市的紧急呼叫中心！应答求救电话，派遣救援力量，处理各种由天气、地形以及交通引起的棘手状况。快来帮助市民们渡过各种天灾人祸，每一天都让自己成为更好的紧急呼叫接线员吧！（激活码：254888）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 10 64-bit,处理器: AMD or Intel, 4 GHz (AMD Ryzen 5 3600, Intel i5 8600),内存: 16 GB RAM,显卡: AMD/NVIDIA dedicated GPU, 4GB dedicated VRAM (Radeon RX 580, Geforce GTX 1050),DirectX 版本: 10', 'slg31.jpg,slg32.jpg,slg33.jpg,slg34.jpg', '模拟经营', 'true', 'slg31.jpg');
INSERT INTO `game_slg` VALUES (4, '舒适森林', '欢迎来到《Cozy Grove》，在款生活模拟游戏中，游览瞬息万变的幽灵岛屿，并在这里扎营立足。身为一名灵童军，你每天都将在岛屿的森林中四处游历，找寻新的秘密，并帮助安抚当地的幽灵。（激活码：659998）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 10,处理器: Intel Core i7 3.0 GHz or equivalent,内存: 8 GB RAM,显卡: NVIDIA Geforce 10 Series or AMD Radeon RX 500 Series', 'slg41.jpg,slg42.jpg,slg43.jpg,slg44.jpg', '模拟经营', 'true', 'slg41.jpg');

-- ----------------------------
-- Table structure for game_spg
-- ----------------------------
DROP TABLE IF EXISTS `game_spg`;
CREATE TABLE `game_spg`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_configuration` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_imgs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `game_title`(`game_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_spg
-- ----------------------------
INSERT INTO `game_spg` VALUES (1, '极限竞速：地平线4', '在世界上最盛大的汽车嘉年华上，不断变化的赛季改变着一切。单枪匹马或者与其他人组队，在一个共享开放世界中探索美丽而富有历史气息的英国。收集、改装和驾驶超过 450 辆车辆。尽情竞速、表演特技、创造和探索：选择您专属的方式来成为地平线中的超级巨星。（激活码887459）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 10 version 15063.0 or higher,处理器: Intel i7-3820 @ 3.6Ghz,内存: 8 GB RAM,显卡: NVidia GTX 970 OR NVidia GTX 1060 3GB OR AMD R9 290x OR AMD RX 470,DirectX 版本: 12,容量:100G', 'spg11.jpg,spg12.jpg,spg13.jpg,spg14.jpg', '体育竞速', 'true', 'spg11.jpg');

-- ----------------------------
-- Table structure for game_stg
-- ----------------------------
DROP TABLE IF EXISTS `game_stg`;
CREATE TABLE `game_stg`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `game_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_introduction` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_configuration` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_imgs` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `game_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_hot` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `game_banner` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `game_title`(`game_title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of game_stg
-- ----------------------------
INSERT INTO `game_stg` VALUES (1, '幽灵行动:荒野', '《幽灵行动：荒野(Tom Clancy’s Ghost Recon: Wildlands)》，游戏背景设定在玻利维亚，这里是世界上最大的可卡因供应地，而大部分毒品都由一个叫做Santa Blanca的组织所垄断，并成为了一大威胁，这引起了美国政府的密切关注。于是美国陆军派遣了一支代号为幽灵(Ghosts)的特种部队前往玻利维亚，希望能揭发并摧毁当地政府与Santa Blanca的关系。', 'CPU：Intel Core i5-2400S 3.3 GHz或AMD FX-4320 4 GHz,显卡：GeForce GTX 660,显存：2GB,内存：6GB,系统：Windows 7 SP1, Windows 8.1, Windows 10 (64位)', 'stg11.jpg,stg12.jpg,stg13.jpg,stg14.jpg', '射击游戏', 'true', 'stg11.jpg');
INSERT INTO `game_stg` VALUES (2, '无主之地：年度加强版', '快来体验这款经过全新优化的合作式射击夺宝游戏鼻祖吧！扮演4位无法无天的佣兵之一体验RPG养成要素，装备无穷尽的枪械征服荒凉的行星Pandora。（激活码：235666）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 7 64-Bit,处理器: Intel Core i3 2105 @3.1GHz/AMD FX 4100 @3.6GHz,内存: 4 GB RAM,显卡: Geforce GTX 760, Radeon HD 7850,DirectX 版本: 11', 'stg21.jpg,stg22.jpg,stg23.jpg,stg24.jpg', '射击游戏', 'true', 'stg21.jpg');
INSERT INTO `game_stg` VALUES (3, '光环4', '作为光环系列的第四代，光环4背景将设定在光环3故事结束的4年7个月10天之后，士官长与科塔娜在被跃迁空间断开两半的“航向黎明号”护卫舰后半部分内，开始了四年多的太空漂流。\r\n\r\n科塔娜在士官长休眠的时候，改写了雷神锤-6 盔甲的韧体程序，升级作战界面、护甲能力还改变了外观。在“聪明”人工智能一般的七年寿命后，她开始变得癫狂。', '最低配置,操作系统: Windows 7,处理器: Intel Core i7-975 | AMD A12-9800 APU,内存: 2 GB RAM,显卡: GeForce GTS 450 | Radeon R7 Graphics,存储空间: 需要 150 GB 可用空间', 'stg31.jpg,stg32.jpg,stg33.jpg,stg34.jpg', '射击游戏', 'true', 'stg31.jpg');
INSERT INTO `game_stg` VALUES (4, '孤岛惊魂5', '《孤岛惊魂5(Far Cry 5)》是由育碧制作发行的一款第一人称射击游戏，是人气系列《孤岛惊魂》的最新正统续作。欢迎来到蒙大拿州希望郡，一个充满自由与勇士的土地，同时也是名为“伊甸之门”著名毁灭日邪教的所在地。挺身对抗邪教领袖约瑟夫．席德、他的兄弟与使者，藉此燃起反抗的烽火并解放受陷的人民。（激活码：562221）', '推荐配置:,需要 64 位处理器和操作系统,操作系统: Windows 7 SP1, Windows 8.1, Windows 10 (64-bit versions only),处理器: Intel Core i7-4770 @ 3.4 GHz or AMD Ryzen 5 1600 @ 3.2 GHz or equivalent,内存: 8 GB RAM,显卡: NVIDIA GeForce GTX 970 or AMD R9 290X (4GB VRAM with Shader Model 5.0 or better)', 'stg41.jpg,stg42.jpg,stg43.jpg,stg44.jpg', '射击游戏', 'true', 'stg41.jpg');

-- ----------------------------
-- Table structure for introduction
-- ----------------------------
DROP TABLE IF EXISTS `introduction`;
CREATE TABLE `introduction`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of introduction
-- ----------------------------
INSERT INTO `introduction` VALUES (1, '辐射4', 'https://gl.ali213.net/z/13469/', 'http://imgs.ali213.net/oday/uploadfile/2015/10/10/2015101043104462.jpg');
INSERT INTO `introduction` VALUES (2, '真三国无双7：猛将传', 'https://gl.ali213.net/z/10484/', 'http://imgs.ali213.net/oday/uploadfile/2013/11/28/mengjiang.jpg');
INSERT INTO `introduction` VALUES (3, '泰拉瑞亚', 'https://gl.ali213.net/z/6362/', 'http://imgs.ali213.net/oday/uploadfile/2021/05/17/2021051755639894.jpg');
INSERT INTO `introduction` VALUES (4, '求生之路2', 'https://gl.ali213.net/z/5744/', 'http://imgs.ali213.net/oday/uploadfile/test11/19/2014111992539402.jpg');
INSERT INTO `introduction` VALUES (5, '仁王2', 'https://gl.ali213.net/z/35125/', 'http://imgs.ali213.net/oday/uploadfile/2021/01/19/2021011961514167.jpg');
INSERT INTO `introduction` VALUES (6, '饥荒', 'https://gl.ali213.net/z/9312/', 'http://imgs.ali213.net/oday/uploadfile/2013/04/03/xu012.jpg');
INSERT INTO `introduction` VALUES (7, '光环：无限', 'https://gl.ali213.net/z/35077/', 'http://imgs.ali213.net/oday/uploadfile/2021/11/16/2021111664025331.jpg');
INSERT INTO `introduction` VALUES (8, '生化危机6', 'https://gl.ali213.net/z/6227/', 'http://imgs.ali213.net/oday/uploadfile/2012/08/06/xu008.jpg');
INSERT INTO `introduction` VALUES (9, '吸血鬼', 'https://gl.ali213.net/z/13795/', 'http://imgs.ali213.net/oday/uploadfile/2018/04/08/2018040895722125.jpg');
INSERT INTO `introduction` VALUES (10, '塞尔达传说：荒野之息', 'https://gl.ali213.net/z/26485/', 'http://imgs.ali213.net/oday/uploadfile/2017/03/01/2017030111111342.jpg');
INSERT INTO `introduction` VALUES (11, '零：濡鸦之巫女', 'https://gl.ali213.net/z/12569/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/28/202110289310331.jpg');
INSERT INTO `introduction` VALUES (12, '霓虹深渊', 'https://gl.ali213.net/z/40051/', 'http://imgs.ali213.net/oday/uploadfile/2020/06/30/20200630100533369.jpg');
INSERT INTO `introduction` VALUES (13, '战争传说', 'https://gl.ali213.net/z/55205/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/14/20210614103957497.jpg');
INSERT INTO `introduction` VALUES (14, '魔兽争霸3', 'https://gl.ali213.net/z/3118/', 'http://imgs.ali213.net/oday/uploadfile/2009/war3x.jpg');
INSERT INTO `introduction` VALUES (15, '神界：原罪2', 'https://gl.ali213.net/z/22911/', 'http://imgs.ali213.net/oday/uploadfile/2015/08/13/20150813100839832.jpg');
INSERT INTO `introduction` VALUES (16, '方舟：生存进化', 'https://gl.ali213.net/z/14981/', 'http://imgs.ali213.net/oday/uploadfile/2015/05/12/20150512102505624.jpg');
INSERT INTO `introduction` VALUES (17, '全面战争：三国', 'https://gl.ali213.net/z/32971/', 'http://imgs.ali213.net/oday/uploadfile/2018/12/11/2018121145616857.jpg');
INSERT INTO `introduction` VALUES (18, '消逝的光芒', 'https://gl.ali213.net/z/10066/', 'http://imgs.ali213.net/oday/uploadfile/2013/05/24/dye.jpg');
INSERT INTO `introduction` VALUES (19, '尼尔：机械纪元', 'https://gl.ali213.net/z/26399/', 'http://imgs.ali213.net/oday/uploadfile/2017/02/21/2017022120450136.jpg');
INSERT INTO `introduction` VALUES (20, '侠客风云传', 'https://gl.ali213.net/z/11477/', 'http://imgs.ali213.net/oday/uploadfile/2020/02/07/2020020762430140.jpg');
INSERT INTO `introduction` VALUES (21, '植物大战僵尸', 'https://gl.ali213.net/z/5792/', 'http://imgs.ali213.net/oday/uploadfile/Plants1.jpg');
INSERT INTO `introduction` VALUES (22, '侠盗猎车手三部曲：终极版', 'https://gl.ali213.net/z/58479/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/09/202110099190944.jpg');
INSERT INTO `introduction` VALUES (23, '城市：天际线', 'https://gl.ali213.net/z/12146/', 'http://imgs.ali213.net/oday/uploadfile/2014/08/19/201481911351687507581.jpg');
INSERT INTO `introduction` VALUES (24, '无主之地3', 'https://gl.ali213.net/z/28355/', 'http://imgs.ali213.net/oday/uploadfile/2019/04/03/2019040393415266.jpg');
INSERT INTO `introduction` VALUES (25, '逃离塔科夫', 'https://gl.ali213.net/z/24343/', 'http://imgs.ali213.net/oday/uploadfile/2015/12/15/20151215111231873.jpg');
INSERT INTO `introduction` VALUES (26, '战地2042', 'https://gl.ali213.net/z/52257/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/10/202106109484354.jpg');
INSERT INTO `introduction` VALUES (27, '天命奇御二', 'https://gl.ali213.net/z/41025/', 'http://imgs.ali213.net/oday/uploadfile/2021/11/22/2021112250301609.jpg');
INSERT INTO `introduction` VALUES (28, '使命召唤14：二战', 'https://gl.ali213.net/z/28771/', 'http://imgs.ali213.net/oday/uploadfile/2017/04/24/20170424114614470.jpg');
INSERT INTO `introduction` VALUES (29, '黑暗之魂3', 'https://gl.ali213.net/z/15341/', 'http://imgs.ali213.net/oday/uploadfile/2016/03/25/2016032514233966.jpg');
INSERT INTO `introduction` VALUES (30, '超级人类', 'https://gl.ali213.net/z/57399/', 'http://imgs.ali213.net/oday/uploadfile/2021/08/24/2021082442923471.jpg');
INSERT INTO `introduction` VALUES (31, '恐怖黎明', 'https://gl.ali213.net/z/6158/', 'http://imgs.ali213.net/oday/uploadfile/2016/03/02/2016030255832598.jpg');
INSERT INTO `introduction` VALUES (32, '孤岛惊魂6', 'https://gl.ali213.net/z/46861/', 'http://imgs.ali213.net/oday/uploadfile/2020/11/26/2020112621544396.jpg');
INSERT INTO `introduction` VALUES (33, '翼星求生', 'https://gl.ali213.net/z/46205/', 'http://imgs.ali213.net/oday/uploadfile/2021/07/08/2021070864248837.jpg');
INSERT INTO `introduction` VALUES (34, '剑士', 'https://gl.ali213.net/z/11148/', 'http://imgs.ali213.net/oday/uploadfile/2014/02/22/201422218232966475468.jpg');
INSERT INTO `introduction` VALUES (35, '刺客信条：英灵殿', 'https://gl.ali213.net/z/39653/', 'http://imgs.ali213.net/oday/uploadfile/2020/12/28/2020122892134925.jpg');
INSERT INTO `introduction` VALUES (36, '森林', 'https://gl.ali213.net/z/10024/', 'http://imgs.ali213.net/oday/uploadfile/2013/05/14/senlin.jpg');
INSERT INTO `introduction` VALUES (37, '古墓丽影：崛起', 'https://gl.ali213.net/z/11640/', 'http://imgs.ali213.net/oday/uploadfile/2015/10/12/2015101221237489.jpg');
INSERT INTO `introduction` VALUES (38, '魔镜', 'https://gl.ali213.net/z/31883/', 'http://imgs.ali213.net/oday/uploadfile/2017/10/19/2017101913252629.jpg');
INSERT INTO `introduction` VALUES (39, '英雄联盟', 'https://gl.ali213.net/z/9928/', 'http://imgs.ali213.net/oday/uploadfile/2021/01/08/2021010834637833.jpg');
INSERT INTO `introduction` VALUES (40, '暗黑地牢', 'https://gl.ali213.net/z/13567/', 'http://imgs.ali213.net/oday/uploadfile/2015/01/05/2015010530506624.jpg');
INSERT INTO `introduction` VALUES (41, '暗黑破坏神2', 'https://gl.ali213.net/z/153/', 'http://imgs.ali213.net/oday/uploadfile/20110915142359349.jpg');
INSERT INTO `introduction` VALUES (42, '银河破裂者', 'https://gl.ali213.net/z/38725/', 'http://imgs.ali213.net/oday/uploadfile/2019/03/11/2019031134157829.jpg');
INSERT INTO `introduction` VALUES (43, '死亡细胞', 'https://gl.ali213.net/z/29923/', 'http://imgs.ali213.net/oday/uploadfile/2020/11/12/2020111211754839.jpg');
INSERT INTO `introduction` VALUES (44, '侠盗猎车手4', 'https://gl.ali213.net/z/5416/', 'http://imgs.ali213.net/oday/uploadfile/2008/Grand.jpg');
INSERT INTO `introduction` VALUES (45, '火炬之光2', 'https://gl.ali213.net/z/5972/', 'http://imgs.ali213.net/oday/uploadfile/2012/05/25/xu001.jpg');
INSERT INTO `introduction` VALUES (46, '刺客信条：奥德赛', 'https://gl.ali213.net/z/34917/', 'http://imgs.ali213.net/oday/uploadfile/2018/06/20/201806202180316.jpg');
INSERT INTO `introduction` VALUES (47, '猎人：野性的呼唤', 'https://gl.ali213.net/z/28963/', 'http://imgs.ali213.net/oday/uploadfile/2017/02/17/2017021730341876.jpg');
INSERT INTO `introduction` VALUES (48, '超级机器人大战30', 'https://gl.ali213.net/z/55931/', 'http://imgs.ali213.net/oday/uploadfile/2021/07/12/2021071210383082.jpg');
INSERT INTO `introduction` VALUES (49, '文明6', 'https://gl.ali213.net/z/26057/', 'http://imgs.ali213.net/oday/uploadfile/2016/05/12/2016051293214405.jpg');
INSERT INTO `introduction` VALUES (50, '生化危机7', 'https://gl.ali213.net/z/11980/', 'http://imgs.ali213.net/oday/uploadfile/2016/12/19/2016121933300182.jpg');
INSERT INTO `introduction` VALUES (51, '血源诅咒', 'https://gl.ali213.net/z/12115/', 'http://imgs.ali213.net/oday/uploadfile/2014/08/16/201481612471876486470.jpg');
INSERT INTO `introduction` VALUES (52, '雷霆一号', 'https://gl.ali213.net/z/60147/', 'http://imgs.ali213.net/oday/uploadfile/2021/11/23/2021112394534386.jpg');
INSERT INTO `introduction` VALUES (53, '突变元年：伊甸园之路', 'https://gl.ali213.net/z/35239/', 'http://imgs.ali213.net/oday/uploadfile/2018/06/22/20180622103725800.jpg');
INSERT INTO `introduction` VALUES (54, '合金装备5：幻痛', 'https://gl.ali213.net/z/9427/', 'http://imgs.ali213.net/oday/uploadfile/test12/26/20141226100942219.jpg');
INSERT INTO `introduction` VALUES (55, '帝国时代4', 'https://gl.ali213.net/z/31189/', 'http://imgs.ali213.net/oday/uploadfile/2021/07/08/2021070851742210.jpg');
INSERT INTO `introduction` VALUES (56, 'SUBVERSE', 'https://gl.ali213.net/z/39625/', 'http://imgs.ali213.net/oday/uploadfile/2021/03/08/2021030824107725.jpg');
INSERT INTO `introduction` VALUES (57, '真三国无双8', 'https://gl.ali213.net/z/25231/', 'http://imgs.ali213.net/oday/uploadfile/2018/02/09/201802091123132.jpg');
INSERT INTO `introduction` VALUES (58, '最终幻想15', 'https://gl.ali213.net/z/9670/', 'http://imgs.ali213.net/oday/uploadfile/2016/08/10/20160810111235737.jpg');
INSERT INTO `introduction` VALUES (59, '上古卷轴5：天际周年纪念版', 'https://gl.ali213.net/z/57317/', 'http://imgs.ali213.net/oday/uploadfile/2021/08/20/20210820112644949.jpg');
INSERT INTO `introduction` VALUES (60, '地平线：零之曙光', 'https://gl.ali213.net/z/15491/', 'http://imgs.ali213.net/oday/uploadfile/2020/04/02/2020040221724936.jpg');
INSERT INTO `introduction` VALUES (61, '原神', 'https://gl.ali213.net/z/40387/', 'http://imgs.ali213.net/oday/uploadfile/2020/08/25/2020082514939692.jpg');
INSERT INTO `introduction` VALUES (62, '欧洲卡车模拟2', 'https://gl.ali213.net/z/9230/', 'http://imgs.ali213.net/oday/uploadfile/2012/10/16/xu092.jpg');
INSERT INTO `introduction` VALUES (63, '星露谷物语', 'https://gl.ali213.net/z/24359/', 'http://imgs.ali213.net/oday/uploadfile/2015/12/15/2015121550307281.jpg');
INSERT INTO `introduction` VALUES (64, '三国志13', 'https://gl.ali213.net/z/13267/', 'http://imgs.ali213.net/oday/uploadfile/2015/05/19/2015051920248253.jpg');
INSERT INTO `introduction` VALUES (65, '暗黑地牢2', 'https://gl.ali213.net/z/38431/', 'http://imgs.ali213.net/oday/uploadfile/2019/02/20/2019022042536284.jpg');
INSERT INTO `introduction` VALUES (66, '古墓丽影：暗影', 'https://gl.ali213.net/z/28403/', 'http://imgs.ali213.net/oday/uploadfile/2018/04/27/2018042795529158.jpg');
INSERT INTO `introduction` VALUES (67, '空洞骑士', 'https://gl.ali213.net/z/28895/', 'http://imgs.ali213.net/oday/uploadfile/2017/02/13/2017021393422193.jpg');
INSERT INTO `introduction` VALUES (68, '最后的战役：劫后余生', 'https://gl.ali213.net/z/51713/', 'http://imgs.ali213.net/oday/uploadfile/2021/02/06/2021020652123631.jpg');
INSERT INTO `introduction` VALUES (69, '王国风云3', 'https://gl.ali213.net/z/42415/', 'http://imgs.ali213.net/oday/uploadfile/2020/09/07/2020090712714363.png');
INSERT INTO `introduction` VALUES (70, '火焰纹章:风花雪月', 'https://gl.ali213.net/z/35105/', 'http://imgs.ali213.net/oday/uploadfile/2019/07/05/2019070525246767.jpg');
INSERT INTO `introduction` VALUES (71, '消逝的光芒2', 'https://gl.ali213.net/z/35057/', 'http://imgs.ali213.net/oday/uploadfile/2020/03/11/2020031144355226.jpg');
INSERT INTO `introduction` VALUES (72, '银河战士：Dread', 'https://gl.ali213.net/z/55277/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/16/2021061612804913.jpg');
INSERT INTO `introduction` VALUES (73, '命令与征服：红色警戒3', 'https://gl.ali213.net/z/5566/', 'http://imgs.ali213.net/oday/uploadfile/2008/RedAlert3.jpg');
INSERT INTO `introduction` VALUES (74, '双人成行', 'https://gl.ali213.net/z/46387/', 'http://imgs.ali213.net/oday/uploadfile/2021/01/25/2021012562224105.jpg');
INSERT INTO `introduction` VALUES (75, '了不起的修仙模拟器', 'https://gl.ali213.net/z/37691/', 'http://imgs.ali213.net/oday/uploadfile/2018/12/24/2018122460306847.jpg');
INSERT INTO `introduction` VALUES (76, '火影忍者：究极忍者风暴4', 'https://gl.ali213.net/z/13281/', 'http://imgs.ali213.net/oday/uploadfile/test12/15/2014121552905215.jpg');
INSERT INTO `introduction` VALUES (77, '使命召唤：先锋', 'https://gl.ali213.net/z/55093/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/10/2021061051141726.jpg');
INSERT INTO `introduction` VALUES (78, '使命召唤8：现代战争3', 'https://gl.ali213.net/z/6005/', 'http://imgs.ali213.net/oday/uploadfile/2011/20110602134348593.jpg');
INSERT INTO `introduction` VALUES (79, '缺氧', 'https://gl.ali213.net/z/28957/', 'http://imgs.ali213.net/oday/uploadfile/2017/02/28/2017022842324208.jpg');
INSERT INTO `introduction` VALUES (80, '极限竞速：地平线5', 'https://gl.ali213.net/z/55223/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/14/2021061410303507.jpg');
INSERT INTO `introduction` VALUES (81, '暗黑破坏神4', 'https://gl.ali213.net/z/42559/', 'http://imgs.ali213.net/oday/uploadfile/2019/10/30/2019103022253480.jpg');
INSERT INTO `introduction` VALUES (82, '侠盗猎车手圣安地列斯', 'https://gl.ali213.net/z/4255/', 'http://imgs.ali213.net/oday/uploadfile/20110915175115162.jpg');
INSERT INTO `introduction` VALUES (83, '蝙蝠侠：阿甘骑士', 'https://gl.ali213.net/z/11183/', 'http://imgs.ali213.net/oday/uploadfile/2014/03/05/2014359344787507681.jpg');
INSERT INTO `introduction` VALUES (84, '鬼泣5', 'https://gl.ali213.net/z/35119/', 'http://imgs.ali213.net/oday/uploadfile/2018/06/11/2018061115757586.jpg');
INSERT INTO `introduction` VALUES (85, '宝可梦：剑/盾', 'https://gl.ali213.net/z/38543/', 'http://imgs.ali213.net/oday/uploadfile/2019/02/28/20190228100210659.jpg');
INSERT INTO `introduction` VALUES (86, '帝国时代2高清版', 'https://gl.ali213.net/z/9730/', 'http://imgs.ali213.net/oday/uploadfile/2013/04/12/diguo.jpg');
INSERT INTO `introduction` VALUES (87, '虐杀原形2', 'https://gl.ali213.net/z/6104/', 'http://imgs.ali213.net/oday/uploadfile/2012/03/26/xu005.jpg');
INSERT INTO `introduction` VALUES (88, '英雄连2', 'https://gl.ali213.net/z/8654/', 'http://imgs.ali213.net/oday/uploadfile/2012/10/22/xu005.jpg');
INSERT INTO `introduction` VALUES (89, '云顶之弈', 'https://gl.ali213.net/z/40417/', 'http://imgs.ali213.net/oday/uploadfile/2019/06/19/2019061974755530.jpg');
INSERT INTO `introduction` VALUES (90, '掠食', 'https://gl.ali213.net/z/6141/', 'http://imgs.ali213.net/oday/uploadfile/2017/05/02/2017050223934185.jpg');
INSERT INTO `introduction` VALUES (91, '漫漫长夜', 'https://gl.ali213.net/z/10635/', 'http://imgs.ali213.net/oday/uploadfile/2013/10/11/manchang.jpg');
INSERT INTO `introduction` VALUES (92, '真三国无双7：帝国', 'https://gl.ali213.net/z/12017/', 'http://imgs.ali213.net/oday/uploadfile/2015/02/27/2015022794401814.jpg');
INSERT INTO `introduction` VALUES (93, '恶灵附身', 'https://gl.ali213.net/z/9478/', 'http://imgs.ali213.net/oday/uploadfile/test10/14/20141014101012215.jpg');
INSERT INTO `introduction` VALUES (94, '往日不再', 'https://gl.ali213.net/z/26459/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/07/202106073005910.jpg');
INSERT INTO `introduction` VALUES (95, '侠盗飞车罪恶都市', 'https://gl.ali213.net/z/7395/', 'http://imgs.ali213.net/oday/uploadfile/20110826173051536.jpg');
INSERT INTO `introduction` VALUES (96, '八方旅人', 'https://gl.ali213.net/z/33905/', 'http://imgs.ali213.net/oday/uploadfile/2019/05/30/2019053012529921.jpg');
INSERT INTO `introduction` VALUES (97, '甜心选择2', 'https://gl.ali213.net/z/44691/', 'http://imgs.ali213.net/oday/uploadfile/2020/04/27/2020042753532634.jpg');
INSERT INTO `introduction` VALUES (98, '开拓者：拥王者', 'https://gl.ali213.net/z/35631/', 'http://imgs.ali213.net/oday/uploadfile/2018/07/23/20180723100940932.jpg');
INSERT INTO `introduction` VALUES (99, '夏日狂想曲：乡间的难忘回忆', 'https://gl.ali213.net/z/45929/', 'http://imgs.ali213.net/oday/uploadfile/2013/08/19/201381916491143153146.jpg');
INSERT INTO `introduction` VALUES (100, '噬血代码', 'https://gl.ali213.net/z/29691/', 'http://imgs.ali213.net/oday/uploadfile/2020/06/03/2020060330428414.jpg');
INSERT INTO `introduction` VALUES (101, '三国志13威力加强版', 'https://gl.ali213.net/z/27199/', 'http://imgs.ali213.net/oday/uploadfile/2018/06/20/2018062023021494.jpg');
INSERT INTO `introduction` VALUES (102, '圣战群英传：解放', 'https://gl.ali213.net/z/55157/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/22/2021102291434244.jpg');
INSERT INTO `introduction` VALUES (103, '无主之地2', 'https://gl.ali213.net/z/6288/', 'http://imgs.ali213.net/oday/uploadfile/2012/05/18/xu002.jpg');
INSERT INTO `introduction` VALUES (104, '饥荒：联机版', 'https://gl.ali213.net/z/25803/', 'http://imgs.ali213.net/oday/uploadfile/2016/04/22/20160422100041659.jpg');
INSERT INTO `introduction` VALUES (105, '三国志14', 'https://gl.ali213.net/z/25221/', 'http://imgs.ali213.net/oday/uploadfile/2021/01/28/2021012815248550.jpg');
INSERT INTO `introduction` VALUES (106, '战神4', 'https://gl.ali213.net/z/8141/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/21/2021102191217104.jpg');
INSERT INTO `introduction` VALUES (107, '泰坦之旅之不朽王座', 'https://gl.ali213.net/z/5031/', 'http://imgs.ali213.net/oday/uploadfile/20110915142737734.jpg');
INSERT INTO `introduction` VALUES (108, '地铁离去', 'https://gl.ali213.net/z/30231/', 'http://imgs.ali213.net/oday/uploadfile/2019/02/13/20190213101300667.jpg');
INSERT INTO `introduction` VALUES (109, '使命召唤12：黑色行动3', 'https://gl.ali213.net/z/13253/', 'http://imgs.ali213.net/oday/uploadfile/2015/04/27/20150427100844711.jpg');
INSERT INTO `introduction` VALUES (110, '影子战术将军之刃：爱子的选择', 'https://gl.ali213.net/z/59585/', 'http://imgs.ali213.net/oday/uploadfile/2021/11/08/20211108114423969.jpg');
INSERT INTO `introduction` VALUES (111, '杀手3', 'https://gl.ali213.net/z/46141/', 'http://imgs.ali213.net/oday/uploadfile/2020/06/12/20200612115559468.jpg');
INSERT INTO `introduction` VALUES (112, '守望先锋', 'https://gl.ali213.net/z/12961/', 'http://imgs.ali213.net/oday/uploadfile/2016/04/22/2016042231934935.jpg');
INSERT INTO `introduction` VALUES (113, 'Wallpaper Engine', 'https://gl.ali213.net/z/28349/', 'http://imgs.ali213.net/oday/uploadfile/2020/11/04/20201104123043520.jpg');
INSERT INTO `introduction` VALUES (114, '牧场物语：再会矿石镇', 'https://gl.ali213.net/z/40589/', 'http://imgs.ali213.net/oday/uploadfile/2019/07/04/2019070414429527.jpg');
INSERT INTO `introduction` VALUES (115, '使命召唤13：无限战争', 'https://gl.ali213.net/z/13553/', 'http://imgs.ali213.net/oday/uploadfile/2016/05/13/2016051330848528.jpg');
INSERT INTO `introduction` VALUES (116, '黑暗之魂重制版', 'https://gl.ali213.net/z/34499/', 'http://imgs.ali213.net/oday/uploadfile/2018/05/02/2018050250538474.jpg');
INSERT INTO `introduction` VALUES (117, '三国群英传8', 'https://gl.ali213.net/z/41413/', 'http://imgs.ali213.net/oday/uploadfile/2021/01/11/2021011153315144.jpg');
INSERT INTO `introduction` VALUES (118, '伊森卡特失踪之谜', 'https://gl.ali213.net/z/9611/', 'http://imgs.ali213.net/oday/uploadfile/2013/02/07/xu001.jpg');
INSERT INTO `introduction` VALUES (119, '热血无赖', 'https://gl.ali213.net/z/8285/', 'http://imgs.ali213.net/oday/uploadfile/2012/08/14/xu010.jpg');
INSERT INTO `introduction` VALUES (120, '暗黑破坏神3', 'https://gl.ali213.net/z/5794/', 'http://imgs.ali213.net/oday/uploadfile/2009/Diablo3.jpg');
INSERT INTO `introduction` VALUES (121, '欧陆风云4', 'https://gl.ali213.net/z/9008/', 'http://imgs.ali213.net/oday/uploadfile/2012/08/14/xl-11.jpg');
INSERT INTO `introduction` VALUES (122, 'NBA 2K14', 'https://gl.ali213.net/z/9896/', 'http://imgs.ali213.net/oday/uploadfile/2013/06/08/NBA.jpg');
INSERT INTO `introduction` VALUES (123, '哈迪斯：杀出地狱', 'https://gl.ali213.net/z/37455/', 'http://imgs.ali213.net/oday/uploadfile/2020/12/25/202012255204319.jpg');
INSERT INTO `introduction` VALUES (124, '使命召唤6：现代战争2重制版', 'https://gl.ali213.net/z/44683/', 'http://imgs.ali213.net/oday/uploadfile/2021/01/14/20210114110709103.jpg');
INSERT INTO `introduction` VALUES (125, '僵尸毁灭工程', 'https://gl.ali213.net/z/10961/', 'http://imgs.ali213.net/oday/uploadfile/2013/12/28/2013122812044410720713.jpg');
INSERT INTO `introduction` VALUES (126, '朋克战争', 'https://gl.ali213.net/z/59011/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/26/2021102625748681.jpg');
INSERT INTO `introduction` VALUES (127, '天国：拯救', 'https://gl.ali213.net/z/10956/', 'http://imgs.ali213.net/oday/uploadfile/2017/11/29/2017112930809970.jpg');
INSERT INTO `introduction` VALUES (128, '孤岛惊魂5', 'https://gl.ali213.net/z/13371/', 'http://imgs.ali213.net/oday/uploadfile/2017/05/31/2017053153943484.jpg');
INSERT INTO `introduction` VALUES (129, '中世纪王朝', 'https://gl.ali213.net/z/45097/', 'http://imgs.ali213.net/oday/uploadfile/2020/04/21/2020042195330790.jpg');
INSERT INTO `introduction` VALUES (130, '超越人类：觉醒', 'https://gl.ali213.net/z/53947/', 'http://imgs.ali213.net/oday/uploadfile/2021/04/29/2021042915544843.jpg');
INSERT INTO `introduction` VALUES (131, '使命召唤11：高级战争', 'https://gl.ali213.net/z/11129/', 'http://imgs.ali213.net/oday/uploadfile/2014/05/03/20145310342165375468.jpg');
INSERT INTO `introduction` VALUES (132, '亿万僵尸', 'https://gl.ali213.net/z/32111/', 'http://imgs.ali213.net/oday/uploadfile/2017/11/08/2017110812501774.jpg');
INSERT INTO `introduction` VALUES (133, '腐烂国度2：主宰版', 'https://gl.ali213.net/z/44231/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/22/2021062251647381.jpg');
INSERT INTO `introduction` VALUES (134, '死亡搁浅', 'https://gl.ali213.net/z/26463/', 'http://imgs.ali213.net/oday/uploadfile/2017/12/08/2017120830508844.jpg');
INSERT INTO `introduction` VALUES (135, '战地1', 'https://gl.ali213.net/z/26005/', 'http://imgs.ali213.net/oday/uploadfile/2016/05/09/20160509100006476.jpg');
INSERT INTO `introduction` VALUES (136, '切尔诺贝利人', 'https://gl.ali213.net/z/38643/', 'http://imgs.ali213.net/oday/uploadfile/2019/03/06/20190306113642708.jpg');
INSERT INTO `introduction` VALUES (137, '侠客风云传前传', 'https://gl.ali213.net/z/25681/', 'http://imgs.ali213.net/oday/uploadfile/2016/07/25/2016072553515785.jpg');
INSERT INTO `introduction` VALUES (138, '仙剑奇侠传6', 'https://gl.ali213.net/z/12262/', 'http://imgs.ali213.net/oday/uploadfile/2015/07/08/20150708111316846.jpg');
INSERT INTO `introduction` VALUES (139, '看门狗2', 'https://gl.ali213.net/z/24625/', 'http://imgs.ali213.net/oday/uploadfile/2016/10/20/2016102053152753.jpg');
INSERT INTO `introduction` VALUES (140, '古墓丽影9', 'https://gl.ali213.net/z/6081/', 'http://imgs.ali213.net/oday/uploadfile/2012/10/24/xu001.jpg');
INSERT INTO `introduction` VALUES (141, '刺客信条：大革命', 'https://gl.ali213.net/z/11276/', 'http://imgs.ali213.net/oday/uploadfile/2014/08/22/201482213103965375368.jpg');
INSERT INTO `introduction` VALUES (142, '英雄传说：零之轨迹改', 'https://gl.ali213.net/z/59219/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/29/2021102941407295.jpg');
INSERT INTO `introduction` VALUES (143, '黑道圣徒3：复刻版', 'https://gl.ali213.net/z/45157/', 'http://imgs.ali213.net/oday/uploadfile/2020/04/22/202004221573254.jpg');
INSERT INTO `introduction` VALUES (144, '狙击精英4', 'https://gl.ali213.net/z/25205/', 'http://imgs.ali213.net/oday/uploadfile/2017/02/14/2017021495613304.jpg');
INSERT INTO `introduction` VALUES (145, '河洛群侠传', 'https://gl.ali213.net/z/34543/', 'http://imgs.ali213.net/oday/uploadfile/2018/05/07/2018050794826439.jpg');
INSERT INTO `introduction` VALUES (146, '荒岛求生', 'https://gl.ali213.net/z/13689/', 'http://imgs.ali213.net/oday/uploadfile/2015/01/13/2015011324253163.jpg');
INSERT INTO `introduction` VALUES (147, '杀戮尖塔', 'https://gl.ali213.net/z/32373/', 'http://imgs.ali213.net/oday/uploadfile/2017/11/29/20171129100727668.jpg');
INSERT INTO `introduction` VALUES (148, '泰坦陨落2', 'https://gl.ali213.net/z/14371/', 'http://imgs.ali213.net/oday/uploadfile/2016/10/20/20161020103644267.jpg');
INSERT INTO `introduction` VALUES (149, '全面战争：幕府将军2', 'https://gl.ali213.net/z/5917/', 'http://imgs.ali213.net/oday/uploadfile/2010/111111111111.jpg');
INSERT INTO `introduction` VALUES (150, '使命召唤9：黑色行动2', 'https://gl.ali213.net/z/7977/', 'http://imgs.ali213.net/oday/uploadfile/2012/05/03/xu001.jpg');
INSERT INTO `introduction` VALUES (151, '死或生6', 'https://gl.ali213.net/z/28429/', 'http://imgs.ali213.net/oday/uploadfile/2019/01/15/2019011521006932.jpg');
INSERT INTO `introduction` VALUES (152, '古剑奇谭三', 'https://gl.ali213.net/z/12637/', 'http://imgs.ali213.net/oday/uploadfile/2018/03/15/20180315112835859.jpg');
INSERT INTO `introduction` VALUES (153, '仙剑奇侠传4', 'https://gl.ali213.net/z/5819/', 'http://imgs.ali213.net/oday/uploadfile/15422V5Q0.jpg');
INSERT INTO `introduction` VALUES (154, '史莱姆牧场', 'https://gl.ali213.net/z/24567/', 'http://imgs.ali213.net/oday/uploadfile/2016/11/07/2016110753333410.jpg');
INSERT INTO `introduction` VALUES (155, 'GRIS', 'https://gl.ali213.net/z/36977/', 'http://imgs.ali213.net/oday/uploadfile/2018/10/31/2018103131950608.jpg');
INSERT INTO `introduction` VALUES (156, '我的世界', 'https://gl.ali213.net/z/9169/', 'http://imgs.ali213.net/oday/uploadfile/2016/04/18/2016041853752107.jpg');
INSERT INTO `introduction` VALUES (157, '战地5', 'https://gl.ali213.net/z/12867/', 'http://imgs.ali213.net/oday/uploadfile/2018/05/24/2018052414358220.jpg');
INSERT INTO `introduction` VALUES (158, '莎木3', 'https://gl.ali213.net/z/15553/', 'http://imgs.ali213.net/oday/uploadfile/2019/07/03/2019070330353808.jpg');
INSERT INTO `introduction` VALUES (159, '刺客信条：起源', 'https://gl.ali213.net/z/29919/', 'http://imgs.ali213.net/oday/uploadfile/2017/10/24/2017102423053729.jpg');
INSERT INTO `introduction` VALUES (160, '猎天使魔女', 'https://gl.ali213.net/z/19458/', 'http://imgs.ali213.net/oday/uploadfile/2017/04/12/2017041293827122.jpg');
INSERT INTO `introduction` VALUES (161, '全面战争：战锤2', 'https://gl.ali213.net/z/29489/', 'http://imgs.ali213.net/oday/uploadfile/2017/09/22/2017092253326320.jpg');
INSERT INTO `introduction` VALUES (162, '嗜血印', 'https://gl.ali213.net/z/35773/', 'http://imgs.ali213.net/oday/uploadfile/2021/07/22/2021072210232192.jpg');
INSERT INTO `introduction` VALUES (163, 'SD高达G世纪：火线纵横', 'https://gl.ali213.net/z/38083/', 'http://imgs.ali213.net/oday/uploadfile/2019/07/12/20190712102800570.jpg');
INSERT INTO `introduction` VALUES (164, '使命召唤4：现代战争重制版', 'https://gl.ali213.net/z/27793/', 'http://imgs.ali213.net/oday/uploadfile/2016/10/31/2016103160209129.jpg');
INSERT INTO `introduction` VALUES (165, 'NBA 2K17', 'https://gl.ali213.net/z/25633/', 'http://imgs.ali213.net/oday/uploadfile/2016/04/14/2016041415200760.jpg');
INSERT INTO `introduction` VALUES (166, '剑侠图', 'https://gl.ali213.net/z/54751/', 'http://imgs.ali213.net/oday/uploadfile/2021/05/31/2021053113225197.jpg');
INSERT INTO `introduction` VALUES (167, '真三国无双6：猛将传', 'https://gl.ali213.net/z/8278/', 'http://imgs.ali213.net/oday/uploadfile/2012/03/09/xu010.jpg');
INSERT INTO `introduction` VALUES (168, '虐杀原形', 'https://gl.ali213.net/z/5675/', 'http://imgs.ali213.net/oday/uploadfile/2009/prototype.jpg');
INSERT INTO `introduction` VALUES (169, '孤胆枪手2：传奇', 'https://gl.ali213.net/z/43893/', 'http://imgs.ali213.net/oday/uploadfile/2020/01/23/2020012392001300.jpg');
INSERT INTO `introduction` VALUES (170, '丛林地狱', 'https://gl.ali213.net/z/34709/', 'http://imgs.ali213.net/oday/uploadfile/2018/05/18/20180518102857747.jpg');
INSERT INTO `introduction` VALUES (171, '红色警戒2共和国之辉', 'https://gl.ali213.net/z/8128/', 'http://imgs.ali213.net/oday/uploadfile/2011/12/30/xu008.jpg');
INSERT INTO `introduction` VALUES (172, '血污：夜之仪式', 'https://gl.ali213.net/z/30261/', 'http://imgs.ali213.net/oday/uploadfile/2017/06/13/2017061324708612.jpg');
INSERT INTO `introduction` VALUES (173, '柯娜：精神之桥', 'https://gl.ali213.net/z/46163/', 'http://imgs.ali213.net/oday/uploadfile/2021/09/24/2021092443739650.jpg');
INSERT INTO `introduction` VALUES (174, '幻塔', 'https://gl.ali213.net/z/60945/', 'http://imgs.ali213.net/oday/uploadfile/2021/12/13/202112131294886.jpg');
INSERT INTO `introduction` VALUES (175, '三国志14威力加强版', 'https://gl.ali213.net/z/47611/', 'http://imgs.ali213.net/oday/uploadfile/2020/12/09/20201209100944169.jpg');
INSERT INTO `introduction` VALUES (176, '废土3', 'https://gl.ali213.net/z/34309/', 'http://imgs.ali213.net/oday/uploadfile/2018/04/18/2018041823729730.jpg');
INSERT INTO `introduction` VALUES (177, '使命召唤16：现代战争', 'https://gl.ali213.net/z/38333/', 'http://imgs.ali213.net/oday/uploadfile/2019/06/06/2019060621733795.jpg');
INSERT INTO `introduction` VALUES (178, '环世界', 'https://gl.ali213.net/z/10846/', 'http://imgs.ali213.net/oday/uploadfile/2016/07/18/2016071840350580.jpg');
INSERT INTO `introduction` VALUES (179, '无人深空', 'https://gl.ali213.net/z/12033/', 'http://imgs.ali213.net/oday/uploadfile/2014/08/06/20148610221544253246.jpg');
INSERT INTO `introduction` VALUES (180, '正当防卫3', 'https://gl.ali213.net/z/7950/', 'http://imgs.ali213.net/oday/uploadfile/2015/11/30/20151130115753387.jpg');
INSERT INTO `introduction` VALUES (181, '使命召唤10：幽灵', 'https://gl.ali213.net/z/9330/', 'http://imgs.ali213.net/oday/uploadfile/2013/04/29/youling.jpg');
INSERT INTO `introduction` VALUES (182, '使命召唤5世界战争', 'https://gl.ali213.net/z/5599/', 'http://imgs.ali213.net/oday/uploadfile/2008/cdww.jpg');
INSERT INTO `introduction` VALUES (183, '三国群英传7', 'https://gl.ali213.net/z/5850/', 'http://imgs.ali213.net/oday/uploadfile/20100505141657359.jpg');
INSERT INTO `introduction` VALUES (184, '尼尔：人工生命 升级版', 'https://gl.ali213.net/z/48417/', 'http://imgs.ali213.net/oday/uploadfile/2020/09/25/2020092552759937.jpg');
INSERT INTO `introduction` VALUES (185, '绝地求生大逃杀', 'https://gl.ali213.net/z/29339/', 'http://imgs.ali213.net/oday/uploadfile/2017/03/24/20170324110257283.jpg');
INSERT INTO `introduction` VALUES (186, '孤岛惊魂4', 'https://gl.ali213.net/z/11136/', 'http://imgs.ali213.net/oday/uploadfile/2014/05/16/201451615411677586570.jpg');
INSERT INTO `introduction` VALUES (187, '黑暗之刃', 'https://gl.ali213.net/z/1897/', 'http://imgs.ali213.net/oday/uploadfile/2021/10/08/2021100891920977.jpg');
INSERT INTO `introduction` VALUES (188, '以撒的结合：重生', 'https://gl.ali213.net/z/12519/', 'http://imgs.ali213.net/oday/uploadfile/test10/30/2014103092608467.jpg');
INSERT INTO `introduction` VALUES (189, '看门狗', 'https://gl.ali213.net/z/8785/', 'http://imgs.ali213.net/oday/uploadfile/2013/03/21/xu005.jpg');
INSERT INTO `introduction` VALUES (190, '无双大蛇3:终极版', 'https://gl.ali213.net/z/41803/', 'http://imgs.ali213.net/oday/uploadfile/2020/12/18/2020121835308625.jpg');
INSERT INTO `introduction` VALUES (191, '多娜多娜一起做坏事', 'https://gl.ali213.net/z/49207/', 'http://imgs.ali213.net/oday/uploadfile/2020/11/05/2020110532550582.jpg');
INSERT INTO `introduction` VALUES (192, '使命召唤17：黑色行动冷战', 'https://gl.ali213.net/z/44627/', 'http://imgs.ali213.net/oday/uploadfile/2020/08/27/20200827105018327.jpg');
INSERT INTO `introduction` VALUES (193, '兰斯10：决战', 'https://gl.ali213.net/z/46521/', 'http://imgs.ali213.net/oday/uploadfile/2020/06/25/2020062580555413.jpg');
INSERT INTO `introduction` VALUES (194, '奥日与鬼火意志', 'https://gl.ali213.net/z/30229/', 'http://imgs.ali213.net/oday/uploadfile/2020/03/11/2020031191141446.jpg');
INSERT INTO `introduction` VALUES (195, '实况足球2013', 'https://gl.ali213.net/z/8575/', 'http://imgs.ali213.net/oday/uploadfile/2012/09/17/xu001.jpg');
INSERT INTO `introduction` VALUES (196, '使命召唤7黑色行动', 'https://gl.ali213.net/z/5867/', 'http://imgs.ali213.net/oday/uploadfile/2010/20100719104238106.jpg');
INSERT INTO `introduction` VALUES (197, '地下蚁国', 'https://gl.ali213.net/z/32295/', 'http://imgs.ali213.net/oday/uploadfile/2017/11/22/201711225004858.jpg');
INSERT INTO `introduction` VALUES (198, '龙珠Z：卡卡罗特', 'https://gl.ali213.net/z/40185/', 'http://imgs.ali213.net/oday/uploadfile/2019/09/12/20190912104742539.jpg');
INSERT INTO `introduction` VALUES (199, '纪元1800', 'https://gl.ali213.net/z/31201/', 'http://imgs.ali213.net/oday/uploadfile/2017/08/23/2017082314425700.jpg');
INSERT INTO `introduction` VALUES (200, '刺客信条：枭雄', 'https://gl.ali213.net/z/13179/', 'http://imgs.ali213.net/oday/uploadfile/2015/10/20/2015102012129919.jpg');
INSERT INTO `introduction` VALUES (201, '古剑奇谭', 'https://gl.ali213.net/z/5767/', 'http://imgs.ali213.net/oday/uploadfile/2010/20100621131146580.jpg');
INSERT INTO `introduction` VALUES (202, '龙崖', 'https://gl.ali213.net/z/32825/', 'http://imgs.ali213.net/oday/uploadfile/2018/01/02/2018010210435528.jpg');
INSERT INTO `introduction` VALUES (203, '极限竞速：地平线4', 'https://gl.ali213.net/z/34223/', 'http://imgs.ali213.net/oday/uploadfile/2021/03/10/202103109382811.jpg');
INSERT INTO `introduction` VALUES (204, 'Jump大乱斗', 'https://gl.ali213.net/z/35061/', 'http://imgs.ali213.net/oday/uploadfile/2019/01/15/2019011512932918.jpg');
INSERT INTO `introduction` VALUES (205, '僵尸世界大战', 'https://gl.ali213.net/z/32553/', 'http://imgs.ali213.net/oday/uploadfile/2019/04/10/2019041041752907.jpg');
INSERT INTO `introduction` VALUES (206, '神奇蜘蛛侠2', 'https://gl.ali213.net/z/10650/', 'http://imgs.ali213.net/oday/uploadfile/2013/11/28/zhizhu2.jpg');
INSERT INTO `introduction` VALUES (207, '怪物猎人物语2：破灭之翼', 'https://gl.ali213.net/z/48179/', 'http://imgs.ali213.net/oday/uploadfile/2021/07/07/2021070722823209.jpg');
INSERT INTO `introduction` VALUES (208, '信长之野望14：创造威力加强版', 'https://gl.ali213.net/z/12068/', 'http://imgs.ali213.net/oday/uploadfile/test12/04/2014120495856683.jpg');
INSERT INTO `introduction` VALUES (209, '阿玛拉王国：惩罚重制版', 'https://gl.ali213.net/z/47583/', 'http://imgs.ali213.net/oday/uploadfile/2020/08/24/2020082412350832.jpg');
INSERT INTO `introduction` VALUES (210, '罗马2：全面战争', 'https://gl.ali213.net/z/8871/', 'http://imgs.ali213.net/oday/uploadfile/2013/05/10/luoma2.jpg');
INSERT INTO `introduction` VALUES (211, 'GTFO', 'https://gl.ali213.net/z/32529/', 'http://imgs.ali213.net/oday/uploadfile/2017/12/11/20171211100210681.jpg');
INSERT INTO `introduction` VALUES (212, '龙珠：超宇宙2', 'https://gl.ali213.net/z/26107/', 'http://imgs.ali213.net/oday/uploadfile/2016/11/01/2016110135245563.jpg');
INSERT INTO `introduction` VALUES (213, '没人拯救世界', 'https://gl.ali213.net/z/54913/', 'http://imgs.ali213.net/oday/uploadfile/2021/06/04/20210604101911505.jpg');
INSERT INTO `introduction` VALUES (214, '集合啦!动物森友会', 'https://gl.ali213.net/z/40251/', 'http://imgs.ali213.net/oday/uploadfile/2020/12/28/2020122892252905.jpg');
INSERT INTO `introduction` VALUES (215, '超级机器人大战V', 'https://gl.ali213.net/z/26511/', 'http://imgs.ali213.net/oday/uploadfile/2019/09/30/2019093054812525.jpg');
INSERT INTO `introduction` VALUES (216, '狙击手：幽灵战士3', 'https://gl.ali213.net/z/13343/', 'http://imgs.ali213.net/oday/uploadfile/2017/02/04/2017020494123251.jpg');
INSERT INTO `introduction` VALUES (217, '仁王', 'https://gl.ali213.net/z/24195/', 'http://imgs.ali213.net/oday/uploadfile/2015/12/07/2015120793255756.jpg');
INSERT INTO `introduction` VALUES (218, '真三国无双5', 'https://gl.ali213.net/z/5494/', 'http://imgs.ali213.net/oday/uploadfile/2008/6d14582cb3804be08b139950.jpg');
INSERT INTO `introduction` VALUES (219, '刺客信条4：黑旗', 'https://gl.ali213.net/z/9434/', 'http://imgs.ali213.net/oday/uploadfile/2013/03/06/xu008.jpg');
INSERT INTO `introduction` VALUES (220, '战地3', 'https://gl.ali213.net/z/6086/', 'http://imgs.ali213.net/oday/uploadfile/2011-10-27/20111027101811692.jpg');
INSERT INTO `introduction` VALUES (221, '实况足球2021', 'https://gl.ali213.net/z/46955/', 'http://imgs.ali213.net/oday/uploadfile/2020/07/17/2020071713722927.jpg');
INSERT INTO `introduction` VALUES (222, '丧尸围城3', 'https://gl.ali213.net/z/9526/', 'http://imgs.ali213.net/oday/uploadfile/2013/06/13/sangshi.jpg');
INSERT INTO `introduction` VALUES (223, '力量棋局', 'https://gl.ali213.net/z/61167/', 'http://imgs.ali213.net/oday/uploadfile/2021/12/18/2021121834604900.jpg');
INSERT INTO `introduction` VALUES (224, '生化危机4：终极高清版', 'https://gl.ali213.net/z/11092/', 'http://imgs.ali213.net/oday/uploadfile/2014/02/08/20142810003987507581.jpg');
INSERT INTO `introduction` VALUES (225, '你的剑太大了', 'https://gl.ali213.net/z/58135/', 'http://imgs.ali213.net/oday/uploadfile/2021/09/21/2021092150243882.jpg');
INSERT INTO `introduction` VALUES (226, '碧蓝幻想Versus', 'https://gl.ali213.net/z/41141/', 'http://imgs.ali213.net/oday/uploadfile/2020/02/19/2020021992237231.jpg');
INSERT INTO `introduction` VALUES (227, '命令与征服之红色警戒2资料片尤里的复仇', 'https://gl.ali213.net/z/6431/', 'http://imgs.ali213.net/oday/uploadfile/2011/20110812132215740.jpg');
INSERT INTO `introduction` VALUES (228, '极品飞车21：热度', 'https://gl.ali213.net/z/41263/', 'http://imgs.ali213.net/oday/uploadfile/2019/11/08/2019110830756246.jpg');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isvip` tinyint(1) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `email`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (1, '1172274374', 'rsz12321', 1, '1172274374@qq.com');

-- ----------------------------
-- Table structure for masterpiece
-- ----------------------------
DROP TABLE IF EXISTS `masterpiece`;
CREATE TABLE `masterpiece`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zhuanti_href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `luntan_href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `slogan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `strategy_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `strategy_href` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video_href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score_youxia` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score_player` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `youxia_comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `player_comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_steam_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_youxia_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shop_href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE,
  UNIQUE INDEX `title`(`title`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of masterpiece
-- ----------------------------
INSERT INTO `masterpiece` VALUES (0, ' 战神4', '动作游戏ACT01.15上市', 'https://imgs.ali213.net/oday/uploadfile/2021/10/21/2021102191217104.jpg', 'https://www.ali213.net/zt/godofwar4/', 'http://game.ali213.net/forum-2044-1.html', '业界3A级巨制战神系列的最新续作', '图文攻略,装备图鉴,素材大全,符文技能,视频攻略,乌鸦位置,全女武神,收集攻略', 'https://gl.ali213.net/html/2018-4/231971.html,https://gl.ali213.net/html/2018-4/233463.html,https://gl.ali213.net/html/2018-4/233785_43.html,https://gl.ali213.net/html/2018-4/232023.html,https://gl.ali213.net/html/2018-4/232627.html,https://gl.ali213.net/html/2018-4/232353.html,https://gl.ali213.net/html/2018-4/232169.html,https://gl.ali213.net/html/2018-4/231727.html', 'https://imgs.ali213.net/IndexTJ/2022/01/15/202201159583842.jpg,https://imgs.ali213.net/IndexTJ/2022/01/15/2022011595844418.jpg', 'https://v.ali213.net/video/220115/387295.html,https://v.ali213.net/video/220113/387157.html', '9.7', '9.3', '与前几作相比，新战神可以说是做出了颠覆的变革，但最终各方面的表现都几近完美。', '《战神4》由索尼第一方工作室圣莫妮卡研发，在这部《战神》新作中玩家将开启一段全新的旅程，主角奎托斯将来到其不曾熟悉的土地，遭遇未知...', 'https://img.fhyx.com/uploads/2021/10/21/2021102111056511.jpg', '¥279.00', '¥259.00', 'https://ali213.fhyx.hk/item/6590.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=12681');
INSERT INTO `masterpiece` VALUES (1, ' 怪物猎人：崛起', '动作游戏ACT01.13上市', 'https://imgs.ali213.net/oday/uploadfile/2021/10/19/202110196235973.jpg', 'https://www.ali213.net/zt/mhrise/', 'https://game.ali213.net/forum-2696-1.html', '怪物猎人系列新作', '图文攻略,人物介绍,武器大全,环境生物,怪物图鉴,装备技能,捏脸数据,黑屏报错', 'https://gl.ali213.net/html/2021-1/548071.html,https://gl.ali213.net/html/2021-1/550065.html,https://gl.ali213.net/html/2021-1/550757.html,https://gl.ali213.net/html/2021-1/552269.html,https://gl.ali213.net/html/2021-1/550385.html,https://gl.ali213.net/html/2021-3/590705.html,https://gl.ali213.net/html/2021-3/589551.html,https://gl.ali213.net/html/2022-1/769973.html', 'https://imgs.ali213.net/IndexTJ/2022/01/13/2022011355021570.jpg,https://imgs.ali213.net/IndexTJ/2022/01/13/2022011355029596.jpg', 'https://v.ali213.net/video/220111/387093.html,https://v.ali213.net/video/220107/386927.html', '9.1', '8.9', '战斗节奏更加紧凑 替换技丰富了武器玩法 百龙夜玩法有趣 但怪物种类较少 难度曲线不够平滑', '蓬勃跃动的狩猎本能！ 为狩猎掀起全新风潮、无拘无束尽情跃动的动作；可随心所欲四下驰骋的全新原野；以及能带来未知的兴奋与惊喜的全新怪...', 'https://img.fhyx.com/uploads/2022/01/12/2022011294423605.jpg', '¥396.00', '¥356.00', 'https://ali213.fhyx.hk/item/6727.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=12999');
INSERT INTO `masterpiece` VALUES (2, ' 真三国无双8：帝国', '动作游戏ACT12.23上市', 'https://imgs.ali213.net/oday/uploadfile/2021/12/23/20211223100230244.jpg', 'https://www.ali213.net/zt/358empires/', 'https://game.ali213.net/forum-270-1.html', '一款“战术动作”游戏', '图文攻略,决战模式,名马获得,新增内容,视频攻略,兵种效果,结婚生子,捏脸教学', 'https://gl.ali213.net/html/2021-12/746957.html,https://gl.ali213.net/html/2021-7/646937.html,https://gl.ali213.net/html/2021-12/757959.html,https://gl.ali213.net/html/2021-11/733073.html,https://gl.ali213.net/html/2021-12/756525.html,https://gl.ali213.net/html/2021-12/757939.html,https://gl.ali213.net/html/2021-12/758257.html,https://gl.ali213.net/html/2021-12/756231.html', 'https://imgs.ali213.net/IndexTJ/2021/12/29/20211229103037910.jpg,https://imgs.ali213.net/IndexTJ/2021/12/29/20211229103045158.jpg', 'https://v.ali213.net/video/211227/386501.html,https://v.ali213.net/video/211227/386479.html', '7.2', '8.8', '内政增添了游戏的可玩性 比前作更角色自定义 以不同的方式攻略城池 但战场单一 秘技重复度高', '《真三国无双8：帝国》是一款单人动作历史策略模拟游戏，融合爽快战斗与攻城略地的策略博弈，帝国系列最新作品登场。帝国独具的“三国...', 'https://img.fhyx.com/uploads/2021/12/21/2021122142722646.jpg', '¥329.00', '¥312.00', 'https://ali213.fhyx.hk/item/6696.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=12909');
INSERT INTO `masterpiece` VALUES (3, ' 最终幻想7重制版', '角色扮演RPG12.16上市', 'https://imgs.ali213.net/oday/uploadfile/2021/12/16/2021121645430671.jpg', 'https://www.ali213.net/zt/diablo2re/', 'http://game.ali213.net/forum-1316-1.html', '由日本SE制作发行的角色扮演类电子游戏', '图文攻略,人物介绍,武器图鉴,boss打法,视频攻略,装备选择,蒂法礼服,技能升级', 'https://gl.ali213.net/html/2020-4/424117.html,https://gl.ali213.net/html/2020-4/423569.html,https://gl.ali213.net/html/2020-4/424519.html,https://gl.ali213.net/html/2020-4/423857.html,https://gl.ali213.net/html/2020-4/424203.html,https://gl.ali213.net/html/2020-4/424353.html,https://gl.ali213.net/html/2020-4/425071.html,https://gl.ali213.net/html/2020-4/427593.html', 'https://imgs.ali213.net/IndexTJ/2021/12/17/2021121742424365.jpg,https://imgs.ali213.net/IndexTJ/2021/12/17/2021121742430333.jpg', 'https://v.ali213.net/video/210618/374545.html,https://v.ali213.net/video/210611/373777.html', '9.0', '9.1', '与时俱进的画面表现，动静结合的战斗系统，风格多样化的培养体系相信也不会让新老玩家失望。', '《最终幻想7：重制版》是由Square Enix基于经典的《最终幻想7》所进行的的完全重制版。除了次世代主机带来的画面革新外，游戏战斗风格也更...', 'https://img.fhyx.com/uploads/2021/06/08/2021060822817945.jpg', '¥536.00', '¥529.00', 'https://ali213.fhyx.hk/item/4327.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=11490');
INSERT INTO `masterpiece` VALUES (4, ' 光环：无限', '第一人称射击FPS12.08上市', 'https://imgs.ali213.net/oday/uploadfile/2021/11/16/2021111664025331.jpg', 'https://www.ali213.net/zt/haloinfinite/', 'https://game.ali213.net/forum-2786-1.html', '微软扛鼎大作《光环》系列新作', '图文攻略,武器图鉴,闪退修复,新手技巧,视频攻略,多人模式,剧情分析,战役模式', 'https://gl.ali213.net/html/2021-11/733763.html,https://gl.ali213.net/html/2020-7/465161.html,https://gl.ali213.net/html/2021-11/729627.html,https://gl.ali213.net/html/2021-11/730357.html,https://gl.ali213.net/html/2021-11/730851.html,https://gl.ali213.net/html/2021-11/732641.html,https://gl.ali213.net/html/2021-11/729515.html,https://gl.ali213.net/html/2021-12/745563.html', 'https://imgs.ali213.net/IndexTJ/2021/12/09/2021120960352764.jpg,https://imgs.ali213.net/IndexTJ/2021/12/09/2021120960406938.jpg', 'https://v.ali213.net/video/211209/385525.html,https://v.ali213.net/video/211209/385523.html', '8.8', '9.4', '战斗射击体验优秀 抓钩带来了更为机动、灵活的战斗表现 但开放地图中对雷同的战斗模式在后期感到疲劳', '微软扛鼎大作《光环》系列新作《光环：无限》正式揭晓！本作依旧由343工作室着手开发，使用 Slipspace引擎制作，快来一起加入士官长拯救人...', 'https://img.fhyx.com/uploads/2021/08/26/2021082691859609.jpg', '¥248.00', '¥248.00', 'https://ali213.fhyx.hk/item/5140.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=9587');
INSERT INTO `masterpiece` VALUES (5, ' 天命奇御二', '角色扮演RPG11.22上市', 'https://imgs.ali213.net/oday/uploadfile/2021/11/22/2021112250301609.jpg', 'https://www.ali213.net/zt/fateseeker2/', 'https://game.ali213.net/forum-2773-1.html', '甲山林娱乐开发的原创武侠单机游戏《天命奇御》续作', '图文攻略,八卦天赋,围棋玩法,黑屏跳出,视频攻略,解密任务,序章支线,体验评测', 'https://gl.ali213.net/html/2021-11/733687.html,https://gl.ali213.net/html/2021-11/732421.html,https://gl.ali213.net/html/2021-11/733893.html,https://gl.ali213.net/html/2021-11/733815.html,https://gl.ali213.net/html/2021-11/733757.html,https://gl.ali213.net/html/2021-11/733919.html,https://gl.ali213.net/html/2021-11/733929.html,https://gl.ali213.net/html/2021-11/733447.html', 'https://imgs.ali213.net/IndexTJ/2021/11/23/20211123104024910.jpg,https://imgs.ali213.net/IndexTJ/2021/11/23/2021112310403148.jpg', 'https://v.ali213.net/video/211123/384307.html,https://v.ali213.net/video/211123/384303.html', '8.6', '9.1', '精彩的游戏剧情 爽快的战斗 推理内容惊艳 但不够开放的武侠世界 UI和立绘略显粗糙', '《天命奇御二》由甲山林娱乐开发的原创武侠单机游戏，接续前作非单一故事线、角色养成、思考探索等要素外，此次结合无接缝地图，创造出高自...', 'https://img.fhyx.com/uploads/2021/11/05/2021110523928396.jpg', '¥88.00', '¥88.00', 'https://ali213.fhyx.hk/item/6384.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=12152');
INSERT INTO `masterpiece` VALUES (6, ' 战地2042', '第一人称射击FPS11.19上市', 'https://imgs.ali213.net/oday/uploadfile/2021/06/10/202106109484354.jpg', 'https://www.ali213.net/zt/bf6/', 'https://game.ali213.net/forum-2747-1.html', '史无前例的全球规模广袤战场', '武器大全,专家设定,游戏机制,图文评测,地图汇总,弹窗错误,组队教学,刷枪代码', 'https://gl.ali213.net/html/2021-8/673575.html,https://gl.ali213.net/html/2021-11/730051.html,https://gl.ali213.net/html/2021-6/634123.html,https://gl.ali213.net/html/2021-10/704305.html,https://gl.ali213.net/html/2021-9/700515.html,https://gl.ali213.net/html/2021-10/704091.html,https://gl.ali213.net/html/2021-10/704369.html,https://gl.ali213.net/html/2021-11/727527.html', 'https://imgs.ali213.net/IndexTJ/2021/11/19/2021111955523821.jpg,https://imgs.ali213.net/IndexTJ/2021/11/19/202111195553385.jpg', 'https://v.ali213.net/video/211117/383949.html,https://v.ali213.net/video/211115/383839.html', '8.0', '9.3', '战场的规模陡然增大一倍，所带来的烈度提升，也的确让战场氛围更强，对核心玩法的体验提升是相当实在的', '《战地风云2042》是一款第一人称射击游戏，本作将带领玩家重返该系列标志性的全面战争。走进因失序而面目全非的近未来世界，在小队队友和尖...', 'https://img.fhyx.com/uploads/2021/06/10/2021061095348496.jpg', '¥373.00', '¥339.00', 'https://ali213.fhyx.hk/item/6185.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=11509');
INSERT INTO `masterpiece` VALUES (7, ' 极限竞速：地平线5', '赛车竞速RAC11.09上市', 'https://imgs.ali213.net/oday/uploadfile/2021/06/14/2021061410303507.jpg', 'https://www.ali213.net/zt/mhs2mor/', 'https://game.ali213.net/forum-2748-1.html', '在不断变化的开放世界中享受无拘无束的驾驶乐趣。', '车辆汇总,购买指南,地图介绍,黑屏解决,视频攻略,媒体评分,新手攻略,刷点方法', 'https://gl.ali213.net/html/2021-9/687387.html,https://gl.ali213.net/html/2021-11/720937.html,https://gl.ali213.net/html/2021-11/720237.html,https://gl.ali213.net/html/2021-11/720225.html,https://gl.ali213.net/html/2021-11/723731.html,https://gl.ali213.net/html/2021-11/721841.html,https://gl.ali213.net/html/2021-11/723781.html,https://gl.ali213.net/html/2021-11/723763.html', 'https://imgs.ali213.net/IndexTJ/2021/11/09/2021110994105569.jpg,https://imgs.ali213.net/IndexTJ/2021/11/09/2021110994112481.jpg', 'https://v.ali213.net/video/211108/383391.html,https://v.ali213.net/video/211108/383389.html', '9.5', '9.4', '极出色的驾驶手感和车辆细节 丰富的娱乐项目 各式赛道满足不同玩家需求 但娱乐性质改装较少', '《极限竞速：地平线5（Forza Horizon 5）》是一款趣味十足、操作自由、画面精美的赛车竞速游戏，而今年的地平线嘉年华将来到美丽多元的墨西...', 'https://img.fhyx.com/uploads/2021/09/10/20210910111543776.jpg', '¥248.00', '¥248.00', 'https://ali213.fhyx.hk/item/6472.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=12435');
INSERT INTO `masterpiece` VALUES (8, ' 使命召唤：先锋', '第一人称射击FPS11.05上市', 'https://imgs.ali213.net/oday/uploadfile/2021/06/10/2021061051141726.jpg', 'https://www.ali213.net/zt/cod18/', 'https://game.ali213.net/forum-2784-1.html', 'cod新作', '图文攻略,武器图鉴,战役模式,地图大全,视频攻略,枪匠系统,皮肤解锁,老兵难度', 'https://gl.ali213.net/html/2021-11/722903.html,https://gl.ali213.net/html/2021-9/687629.html,https://gl.ali213.net/html/2021-10/712721.html,https://gl.ali213.net/html/2021-10/707159.html,https://gl.ali213.net/html/2021-11/721919.html,https://gl.ali213.net/html/2021-10/705043.html,https://gl.ali213.net/html/2021-11/722321.html,https://gl.ali213.net/html/2021-11/723523.html', 'https://imgs.ali213.net/IndexTJ/2021/11/08/2021110852425304.jpg,https://imgs.ali213.net/IndexTJ/2021/11/08/2021110852432268.jpg', 'https://v.ali213.net/video/211108/383431.html,https://v.ali213.net/video/211108/383425.html', '7.3', '8.8', '单人剧情就像是一场爆米花电影，混乱的故事线插入甚至会让玩家在剧情过半时都会产生我是谁?我在哪?的疑问', '使命召唤先锋(Call of Duty: Vanguard)是一款非常热血的第一人称射击枪战竞技游戏。以第二次世界大战太平洋和...', 'https://img.fhyx.com/uploads/2021/08/20/2021082092425638.jpeg', '¥455.00', '¥439.00', 'https://ali213.fhyx.hk/item/6340.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=12035');
INSERT INTO `masterpiece` VALUES (9, ' 帝国时代4', '策略战棋SLG10.28上市', 'https://imgs.ali213.net/oday/uploadfile/2021/07/08/2021070851742210.jpg', 'https://www.ali213.net/zt/aoe4/', 'http://game.ali213.net/forum-1891-1.html', '经典策略游戏《帝国时代》的最新续作', '中国兵种,民族种类,新增机制,新手玩法,战役试玩,英国文明,罗马帝国,评测心得', 'https://gl.ali213.net/html/2021-10/717547.html,https://gl.ali213.net/html/2021-10/716727.html,https://gl.ali213.net/html/2021-10/716039.html,https://gl.ali213.net/html/2021-10/716535.html,https://gl.ali213.net/html/2021-10/716705.html,https://gl.ali213.net/html/2021-10/715983.html,https://gl.ali213.net/html/2021-10/715785.html,https://gl.ali213.net/html/2021-9/695559.html', 'https://imgs.ali213.net/IndexTJ/2021/10/29/2021102912125999.jpg,https://imgs.ali213.net/IndexTJ/2021/10/29/2021102912154405.jpg', 'https://v.ali213.net/video/211027/382789.html,https://v.ali213.net/video/211027/382783.html', '8.2', '9.2', '系列的经典设计传承 石墙 地标等机制的革新 更好的画面表现 更多的动作细节 但细节还需优化', '《帝国时代4》作为经典策略游戏《帝国时代》的最新续作，由曾经开发了《战争黎明》系列的开发商Relic Entertainment制作。在预告中，可以看...', 'https://img.fhyx.com/uploads/2021/06/17/2021061763931220.jpg', '¥248.00', '¥219.00', 'https://ali213.fhyx.hk/item/1820.html?uf=fhyx&amp;ukey=b44d8lUhmx7K9dvuSLljpbX2zT53tIgxCqYInTZjhKqBa%2B40Kiy9#attrone=3560');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 141 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '战术型第一人称射击游戏《严阵以待》汉化补丁发布！', 'https://www.ali213.net/news/html/2021-12/643885.html', '12-20');
INSERT INTO `news` VALUES (2, '《怪物猎人：崛起》今年后续每周免费活动任务公布', 'https://www.ali213.net/news/html/2021-12/643781.html', '12-20');
INSERT INTO `news` VALUES (3, '《时代》周刊评选年度十佳游戏！《双人成行》垫底', 'https://www.ali213.net/news/html/2021-12/643713.html', '12-20');
INSERT INTO `news` VALUES (4, 'Steam周销榜《光环：无限》连冠 《GTFO》热销', 'https://www.ali213.net/news/html/2021-12/643697.html', '12-20');
INSERT INTO `news` VALUES (5, '自给自足！粉丝自制《巫师3》次世代HD重制项目展示', 'https://www.ali213.net/news/html/2021-12/643665.html', '12-19');
INSERT INTO `news` VALUES (6, '无聊看看新剧！盘点10部近期新开播多题材英美剧集', 'https://www.ali213.net/news/html/2021-12/643891.html', '08:33');
INSERT INTO `news` VALUES (7, '《哈利波特》特别节目《回到霍格沃茨》正式预告', '//www.ali213.net/news/html/2021-12/643929.html', '08:31');
INSERT INTO `news` VALUES (8, '薇娅因逃税遭全网封禁 李佳琦当晚状态良好直播火爆', '//www.ali213.net/news/html/2021-12/643951.html', '12-20');
INSERT INTO `news` VALUES (9, '北欧史诗大片《北欧人》曝首支预告 2022年4月上映', '//www.ali213.net/news/html/2021-12/643923.html', '12-20');
INSERT INTO `news` VALUES (10, 'Queen Studios钢铁蜘蛛侠1/1全身雕像 售价45800元', '//www.ali213.net/news/html/2021-12/643897.html', '12-20');
INSERT INTO `news` VALUES (11, '粉毛最可爱了！动漫中最可爱的粉色头发的角色TOP10', 'https://www.ali213.net/news/html/2021-12/642743.html', '12-20');
INSERT INTO `news` VALUES (12, '网飞《猎魔人》前传《猎魔人：血源》公开前导预告', '//www.ali213.net/news/html/2021-12/643911.html', '12-20');
INSERT INTO `news` VALUES (13, '性感女星林明祯出演Xbox Series S广告 随时快乐游戏', '//www.ali213.net/news/html/2021-12/643907.html', '12-20');
INSERT INTO `news` VALUES (14, '元宇宙也不安全？女玩家称在元宇宙游戏中遭遇性骚扰', '//www.ali213.net/news/html/2021-12/643905.html', '12-20');
INSERT INTO `news` VALUES (15, '《新蝙蝠侠》全新剧照曝光：猫女一身黑衣神秘莫测', '//www.ali213.net/news/html/2021-12/643903.html', '12-20');
INSERT INTO `news` VALUES (16, '打FPS怎能少了好鼠标？7款2021年最佳游戏鼠标推荐', 'https://www.ali213.net/news/html/2021-12/643815.html', '12-20');
INSERT INTO `news` VALUES (17, '北京网信办约谈知乎：立即整改 严肃处理相关责任人', '//www.ali213.net/news/html/2021-12/643899.html', '12-20');
INSERT INTO `news` VALUES (18, 'PlayStation官方分享圣诞贺卡 50余家厂商圣诞贺图赏', '//www.ali213.net/news/html/2021-12/643895.html', '12-20');
INSERT INTO `news` VALUES (19, '国行NS OLED要来了？腾讯注册NS OLED版商品条码', '//www.ali213.net/news/html/2021-12/643901.html', '12-20');
INSERT INTO `news` VALUES (20, '知名网红主播薇娅偷漏税被查 发布致歉称：深感愧疚', '//www.ali213.net/news/html/2021-12/643893.html', '12-20');
INSERT INTO `news` VALUES (21, '找到这样的女友很令人羡慕 囧图 俄罗斯运飞机的方法', 'https://www.ali213.net/news/html/2021-12/643753.html', '12-20');
INSERT INTO `news` VALUES (22, '英国实体游戏销量榜:《GTA三部曲》不敌《Among Us》', '//www.ali213.net/news/html/2021-12/643887.html', '12-20');
INSERT INTO `news` VALUES (23, '反派太可爱怎么办！浅仓唯个人写真集发售 更多美图赏', '//www.ali213.net/news/html/2021-12/643875.html', '12-20');
INSERT INTO `news` VALUES (24, 'OnexPlayer壹号掌机mini版正式发布，重量仅589g', '//www.ali213.net/news/html/2021-12/643883.html', '12-20');
INSERT INTO `news` VALUES (25, '常远 马丽主演！《李茂扮太子》曝终极预告 爆笑开年', '//www.ali213.net/news/html/2021-12/643871.html', '12-20');
INSERT INTO `news` VALUES (26, '寂静岭制作人新游《野狗子》首批情报！采用第三人称', 'https://www.ali213.net/news/html/2021-12/643763.html', '12-20');
INSERT INTO `news` VALUES (27, '精灵王子扮演者曝花絮照 纪念《指环王》上映20周年 ', '//www.ali213.net/news/html/2021-12/643853.html', '12-20');
INSERT INTO `news` VALUES (28, '育碧', '//www.ali213.net/news/html/2021-12/643869.html', '12-20');
INSERT INTO `news` VALUES (29, 'Steam塔防战斗新作《天空舰队》现已发售！支持简中', '//www.ali213.net/news/html/2021-12/643783.html', '12-20');
INSERT INTO `news` VALUES (30, '都说了让熊猫少玩黑魂 动图 2042实属是给你们玩明白了', '//www.ali213.net/news/html/2021-12/643865.html', '12-20');
INSERT INTO `news` VALUES (31, '《最终幻想：起源》四职业演示 赤魔华丽连招爽快至极', 'https://www.ali213.net/news/html/2021-12/643701.html', '12-20');
INSERT INTO `news` VALUES (32, '女子戴耳机助眠致耳聋 医生建议连续使用不超60分钟', '//www.ali213.net/news/html/2021-12/643855.html', '12-20');
INSERT INTO `news` VALUES (33, '《最终幻想》系列名作TOP10评选！部部经典不容错过', '//www.ali213.net/news/html/2021-12/643843.html', '12-20');
INSERT INTO `news` VALUES (34, '荷兰弟或将告别蜘蛛侠角色：该找个蜘蛛女侠当主角了', '//www.ali213.net/news/html/2021-12/643851.html', '12-20');
INSERT INTO `news` VALUES (35, '499美元 《黑色沙漠》黑暗骑士官方1/4雕像 火辣性感', '//www.ali213.net/news/html/2021-12/643859.html', '12-20');
INSERT INTO `news` VALUES (36, '美国男子红色丁字裤挂脸上当口罩！最后被机组劝下飞机', 'https://www.ali213.net/news/html/2021-12/643687.html', '12-20');
INSERT INTO `news` VALUES (37, 'PC版《FF7》蒂法清凉福利mod在做了！老婆多姿多彩', '//www.ali213.net/news/html/2021-12/643807.html', '12-20');
INSERT INTO `news` VALUES (38, '第二届国风国创好游戏评选大赛投票 万元奖金等你瓜分', 'https://m.ali213.net/news/yejie/175451.html', '12-20');
INSERT INTO `news` VALUES (39, '《堡垒之夜》也将加入天气？第三章或将添加龙卷风', '//www.ali213.net/news/html/2021-12/643813.html', '12-20');
INSERT INTO `news` VALUES (40, '网络知名带货主播薇娅偷漏税被查：将被罚款13.41亿', '//www.ali213.net/news/html/2021-12/643857.html', '12-20');
INSERT INTO `news` VALUES (41, '漫画家真岛浩宣布《伊甸星原》游戏2022年初免费推出', '//www.ali213.net/news/html/2021-12/643849.html', '12-20');
INSERT INTO `news` VALUES (42, '一点都不辣的小恶魔！俄罗斯Coser“Alice”美照赏', '//www.ali213.net/news/html/2021-12/643825.html', '12-20');
INSERT INTO `news` VALUES (43, '望不到头 英特尔CEO认为芯片短缺或将持续到2023年', '//www.ali213.net/news/html/2021-12/643847.html', '12-20');
INSERT INTO `news` VALUES (44, '《消逝的光芒2：人与仁之战》游戏机制快速上手指南', '//www.ali213.net/news/html/2021-12/643801.html', '12-20');
INSERT INTO `news` VALUES (45, '科学家训练混合芯片中脑细胞打乒乓 学习速度远胜过AI', '//www.ali213.net/news/html/2021-12/643837.html', '12-20');
INSERT INTO `news` VALUES (46, '无聊看看新剧！盘点10部近期新开播多题材英美剧集', 'https://www.ali213.net/news/html/2021-12/643891.html', '12-20');
INSERT INTO `news` VALUES (47, '在DirectX11模式下运行《FF7RE》可改善卡顿现象！', '//www.ali213.net/news/html/2021-12/643821.html', '12-20');
INSERT INTO `news` VALUES (48, '日本漫画家铃木健也涉嫌从德国进口儿童色情写真被捕', '//www.ali213.net/news/html/2021-12/643793.html', '12-20');
INSERT INTO `news` VALUES (49, '或因宗教问题 《DNF：决斗》未在德国开启Beta测试', '//www.ali213.net/news/html/2021-12/643805.html', '12-20');
INSERT INTO `news` VALUES (50, '有这功夫不如买个U盘！极品网友建数个QQ群当网盘用', '//www.ali213.net/news/html/2021-12/643823.html', '12-20');
INSERT INTO `news` VALUES (51, '粉毛最可爱了！动漫中最可爱的粉色头发的角色TOP10', 'https://www.ali213.net/news/html/2021-12/642743.html', '12-20');
INSERT INTO `news` VALUES (52, '光荣新作《大航海时代：起源》第二次封闭B测1月举行', '//www.ali213.net/news/html/2021-12/643787.html', '12-20');
INSERT INTO `news` VALUES (53, '12.13-19Switch一周热点新闻Top10回顾 怪猎神秘联动', '//www.ali213.net/news/html/2021-12/643819.html', '12-20');
INSERT INTO `news` VALUES (54, '捆绑Play！《地下城与勇士：决斗》', '//www.ali213.net/news/html/2021-12/643803.html', '12-20');
INSERT INTO `news` VALUES (55, '我们该如何在《幻塔》里提升实力，玩得更爽？', '//www.ali213.net/news/html/2021-12/643809.html', '12-20');
INSERT INTO `news` VALUES (56, '打FPS怎能少了好鼠标？7款2021年最佳游戏鼠标推荐', 'https://www.ali213.net/news/html/2021-12/643815.html', '12-20');
INSERT INTO `news` VALUES (57, '2022年冬！PS官方新贴文透露《小恶魔附体》发售日', '//www.ali213.net/news/html/2021-12/643791.html', '12-20');
INSERT INTO `news` VALUES (58, '《怪猎：崛起》全球出货量破750w 日服开启史低特惠！', '//www.ali213.net/news/html/2021-12/643789.html', '12-20');
INSERT INTO `news` VALUES (59, '大妈摊3个煎饼才成功被怀疑身份！网友：不是便衣吧', '//www.ali213.net/news/html/2021-12/643779.html', '12-20');
INSERT INTO `news` VALUES (60, '国产好评游戏《戴森球计划》周年版更新将添加蓝图！', '//www.ali213.net/news/html/2021-12/643747.html', '12-20');
INSERT INTO `news` VALUES (61, '找到这样的女友很令人羡慕 囧图 俄罗斯运飞机的方法', 'https://www.ali213.net/news/html/2021-12/643753.html', '12-20');
INSERT INTO `news` VALUES (62, '一条路走到黑？育碧老板坚称NFT将在育碧游戏中推行', '//www.ali213.net/news/html/2021-12/643719.html', '12-20');
INSERT INTO `news` VALUES (63, '日本TSUTAYA游戏周销榜:《宝可梦晶灿钻石》连五冠', '//www.ali213.net/news/html/2021-12/643741.html', '12-20');
INSERT INTO `news` VALUES (64, '《星期一的丰满》:妹妹为圣诞做准备 哪件内衣好看呢', '//www.ali213.net/news/html/2021-12/643775.html', '12-20');
INSERT INTO `news` VALUES (65, '期盼与否？由Horizon Worlds体验引出的元宇宙二三事', '//www.ali213.net/news/html/2021-12/643773.html', '12-20');
INSERT INTO `news` VALUES (66, '寂静岭制作人新游《野狗子》首批情报！采用第三人称', 'https://www.ali213.net/news/html/2021-12/643763.html', '12-20');
INSERT INTO `news` VALUES (67, '《咒术回战》手游PV第一弹公开！2022年正式公开', '//www.ali213.net/news/html/2021-12/643757.html', '12-20');
INSERT INTO `news` VALUES (68, 'Steam大奖提名公布 《光明记忆》喜提', '//www.ali213.net/news/html/2021-12/643521.html', '12-20');
INSERT INTO `news` VALUES (69, '玩家自制《赛博朋克2077》地铁Mod！乘地铁穿梭夜之城', '//www.ali213.net/news/html/2021-12/643715.html', '12-20');
INSERT INTO `news` VALUES (70, '育碧玩家六个月不活跃：账户被删,丢失数百英镑游戏！', '//www.ali213.net/news/html/2021-12/643765.html', '12-20');
INSERT INTO `news` VALUES (71, '《最终幻想：起源》四职业演示 赤魔华丽连招爽快至极', 'https://www.ali213.net/news/html/2021-12/643701.html', '12-20');
INSERT INTO `news` VALUES (72, '曝《战地2042》第一赛季推迟 明年3月前没有新内容！', '//www.ali213.net/news/html/2021-12/643755.html', '12-20');
INSERT INTO `news` VALUES (73, 'SE或将重启老IP！90年代游戏《Gex》已申请新商标', '//www.ali213.net/news/html/2021-12/643751.html', '12-20');
INSERT INTO `news` VALUES (74, '电竞玩家的超神秘籍 显示器首选战术带鱼屏技嘉M34WQ', '//www.ali213.net/news/html/2021-12/643761.html', '12-20');
INSERT INTO `news` VALUES (75, '网友票选一言不合就动手的极致典型：傲娇+超高战力！', '//www.ali213.net/news/html/2021-12/643733.html', '12-20');
INSERT INTO `news` VALUES (76, '美国男子红色丁字裤挂脸上当口罩！最后被机组劝下飞机', 'https://www.ali213.net/news/html/2021-12/643687.html', '12-20');
INSERT INTO `news` VALUES (77, '卖爆！较上一代主机 Xbox Series X|S同期销量多146万', '//www.ali213.net/news/html/2021-12/643745.html', '12-20');
INSERT INTO `news` VALUES (78, '国产动画《时光代理人》日语配音版正式预告 海报', '//www.ali213.net/news/html/2021-12/643739.html', '12-20');
INSERT INTO `news` VALUES (79, '日本性感甜妹桃乃木香奈：卡哇伊的外表下身材暴躁！', '//www.ali213.net/news/html/2021-12/643749.html', '12-19');
INSERT INTO `news` VALUES (80, '神罗抓捕失败《最终幻想7》赤红13逃到日本街头！', '//www.ali213.net/news/html/2021-12/643729.html', '12-19');
INSERT INTO `news` VALUES (81, '《龙珠格斗Z》新DLC“人造人21号（白衣）”预告赏！', '//www.ali213.net/news/html/2021-12/643703.html', '12-19');
INSERT INTO `news` VALUES (82, 'Epic明天送什么？21日及之后的Epic免费游戏最新爆料', '//www.ali213.net/news/html/2021-12/643731.html', '12-19');
INSERT INTO `news` VALUES (83, '《意航员2》开发商开发多款游戏中！将在Xbox主机独占', '//www.ali213.net/news/html/2021-12/643723.html', '12-19');
INSERT INTO `news` VALUES (84, '《游戏王：大师决斗》收费模式公开 全平台存档互通！', '//www.ali213.net/news/html/2021-12/643735.html', '12-19');
INSERT INTO `news` VALUES (85, 'Meta内部分析：TikTok比Facebook ins更吸引年轻人', '//www.ali213.net/news/html/2021-12/643711.html', '12-19');
INSERT INTO `news` VALUES (86, '无聊看看新剧！盘点10部近期新开播多题材英美剧集', 'https://www.ali213.net/news/html/2021-12/643891.html', '12-19');
INSERT INTO `news` VALUES (87, '《黑客帝国4》美国首映式：全城亮绿灯！变“矩阵绿”', '//www.ali213.net/news/html/2021-12/643727.html', '12-19');
INSERT INTO `news` VALUES (88, '22日起PS plus会员可免费升级《最终幻想7：重制版》', '//www.ali213.net/news/html/2021-12/643717.html', '12-19');
INSERT INTO `news` VALUES (89, '腾讯天美 美国工作室正开发4A级多人FPS 概念图曝光', '//www.ali213.net/news/html/2021-12/643709.html', '12-19');
INSERT INTO `news` VALUES (90, '武术回合策略新作《力量棋局》正式登陆Steam！', '//www.ali213.net/news/html/2021-12/643707.html', '12-19');
INSERT INTO `news` VALUES (91, '粉毛最可爱了！动漫中最可爱的粉色头发的角色TOP10', 'https://www.ali213.net/news/html/2021-12/642743.html', '12-19');
INSERT INTO `news` VALUES (92, '《蜘蛛侠3》首周票房5.872亿美元 创索尼国际票房纪录', '//www.ali213.net/news/html/2021-12/643699.html', '12-19');
INSERT INTO `news` VALUES (93, 'TV动画《测不准的阿波连同学》PV公开，2022年4月播出', '//www.ali213.net/news/html/2021-12/643659.html', '12-19');
INSERT INTO `news` VALUES (94, '2022年1月新番《怪人开发部的黒井津》第1弹PV公开', '//www.ali213.net/news/html/2021-12/643657.html', '12-19');
INSERT INTO `news` VALUES (95, '梁朝伟 王一博主演！电影《无名》正式杀青 22年上映', '//www.ali213.net/news/html/2021-12/643695.html', '12-19');
INSERT INTO `news` VALUES (96, '打FPS怎能少了好鼠标？7款2021年最佳游戏鼠标推荐', 'https://www.ali213.net/news/html/2021-12/643815.html', '12-19');
INSERT INTO `news` VALUES (97, '中纪委网站点评明星艺人人设崩塌：立艺先要立德！', '//www.ali213.net/news/html/2021-12/643691.html', '12-19');
INSERT INTO `news` VALUES (98, '《天书奇谭》4K纪念版将于12月20日下午登陆B站', '//www.ali213.net/news/html/2021-12/643689.html', '12-19');
INSERT INTO `news` VALUES (99, '网友分享意想不到的DIY手工制品 创意就这样说来就来', '//www.ali213.net/news/html/2021-12/643683.html', '12-19');
INSERT INTO `news` VALUES (100, '申通快递站随意抛扔快件 回应称：不差钱建议发顺丰', '//www.ali213.net/news/html/2021-12/643685.html', '161.3K');
INSERT INTO `news` VALUES (101, '找到这样的女友很令人羡慕 囧图 俄罗斯运飞机的方法', 'https://www.ali213.net/news/html/2021-12/643753.html', '131.4K');
INSERT INTO `news` VALUES (102, '此抢非彼抢！四川男子持刀抢劫50余张显卡 价值10万', '//www.ali213.net/news/html/2021-12/643681.html', '111.4K');
INSERT INTO `news` VALUES (103, '网友票选一言不合就动手动漫女TOP20 小心拳头飞过来', '//www.ali213.net/news/html/2021-12/643673.html', '102.4K');
INSERT INTO `news` VALUES (104, '《地下城与勇士：决斗》官方预告赏 2022年夏季推出', '//www.ali213.net/news/html/2021-12/643669.html', '89.9K');
INSERT INTO `news` VALUES (105, '蔬菜跟水果拼凑！蔬果动物大制作 异常可爱毫无违和', '//www.ali213.net/news/html/2021-12/643667.html', '450');
INSERT INTO `news` VALUES (106, '寂静岭制作人新游《野狗子》首批情报！采用第三人称', 'https://www.ali213.net/news/html/2021-12/643763.html', '112');
INSERT INTO `news` VALUES (107, '央视科普：每天4400步可降低死亡率 三类人不宜多走', '//www.ali213.net/news/html/2021-12/643649.html', '99');
INSERT INTO `news` VALUES (108, '2021十款值得一玩的优秀免费游戏推荐！快来白嫖！', '//www.ali213.net/news/html/2021-12/643639.html', '336');
INSERT INTO `news` VALUES (109, '剧场版《海贼王FILM RED》原画公开 明年8月6日上映', '//www.ali213.net/news/html/2021-12/643655.html', '101');
INSERT INTO `news` VALUES (110, '这还需要什么女朋友？ 动图 台球选手转职足球运动员', '//www.ali213.net/news/html/2021-12/643595.html', '12-21');
INSERT INTO `news` VALUES (111, '《最终幻想：起源》四职业演示 赤魔华丽连招爽快至极', 'https://www.ali213.net/news/html/2021-12/643701.html', '12-21');
INSERT INTO `news` VALUES (112, '本不该存在！天文学家在半人马座发现一颗超大巨行星', '//www.ali213.net/news/html/2021-12/643635.html', '12-21');
INSERT INTO `news` VALUES (113, '《战争与玫瑰》发布新演示 为不锁国区推迟发售时间', '//www.ali213.net/news/html/2021-12/643603.html', '12-21');
INSERT INTO `news` VALUES (114, '肖央＆任达华《误杀2》破3亿！网友：误杀谁？谁误杀?', '//www.ali213.net/news/html/2021-12/643653.html', '12-21');
INSERT INTO `news` VALUES (115, '1980元！HotToys《蜘蛛侠英雄无归》1/6奇异博士人偶', '//www.ali213.net/news/html/2021-12/643651.html', '12-21');
INSERT INTO `news` VALUES (116, '美国男子红色丁字裤挂脸上当口罩！最后被机组劝下飞机', 'https://www.ali213.net/news/html/2021-12/643687.html', '12-20');
INSERT INTO `news` VALUES (117, '日本经销商将中国鳗鱼伪装成日产 造假五年才被发现', '//www.ali213.net/news/html/2021-12/643637.html', '12-20');
INSERT INTO `news` VALUES (118, '《蜘蛛侠》制片人曾两次劝主演不要谈恋爱：未能如愿', '//www.ali213.net/news/html/2021-12/643629.html', '12-20');
INSERT INTO `news` VALUES (119, '童颜H杯！日本混血偶像正妹“大岛みく”美照赏', '//www.ali213.net/news/html/2021-12/641775.html', '12-20');
INSERT INTO `news` VALUES (120, '索尼也想分手游这张大饼！近日宣布收购《FGO》开发商', '//www.ali213.net/news/html/2021-12/643623.html', '12-20');
INSERT INTO `news` VALUES (121, '战术型第一人称射击游戏《严阵以待》汉化补丁发布！', '//www.ali213.net/news/html/2021-12/643885.html', '12-20');
INSERT INTO `news` VALUES (122, '《翼星求生》1.1汉化补丁已发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-12/642387.html', '12-20');
INSERT INTO `news` VALUES (123, ' 《幽港迷城》1.1汉化补丁发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-12/642127.html', '12-20');
INSERT INTO `news` VALUES (124, '开放世界RPG游戏《战争传说》2.0完整汉化补丁发布！', '//www.ali213.net/news/html/2021-12/641555.html', '12-20');
INSERT INTO `news` VALUES (125, '开放世界角色扮演游戏《战争传说》1.2汉化补丁发布！', '//www.ali213.net/news/html/2021-12/641013.html', '12-20');
INSERT INTO `news` VALUES (126, '开放世界生存游戏《翼星求生》1.0汉化补丁发布！', '//www.ali213.net/news/html/2021-12/640519.html', '12-20');
INSERT INTO `news` VALUES (127, '《战争传说》1.1汉化补丁发布！内核汉化支持正版！', '//www.ali213.net/news/html/2021-12/639871.html', '12-20');
INSERT INTO `news` VALUES (128, '开放世界角色扮演游戏《战争传说》1.0汉化补丁发布！', '//www.ali213.net/news/html/2021-12/639613.html', '12-20');
INSERT INTO `news` VALUES (129, ' 《英雄连2》1.9中文汉化补丁发布！更新支持最新版本', '//www.ali213.net/news/html/2021-11/638059.html', '12-20');
INSERT INTO `news` VALUES (130, '《世代飞船》1.0汉化补丁发布！内核汉化支持正版！', '//www.ali213.net/news/html/2021-11/637569.html', '12-20');
INSERT INTO `news` VALUES (131, '《通灵塔2》1.0完整汉化补丁发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-11/636091.html', '12-20');
INSERT INTO `news` VALUES (132, '《老滚5周年版》新增Mod不含汉化？大神连夜来自制！', '//www.ali213.net/news/html/2021-11/636059.html', '12-20');
INSERT INTO `news` VALUES (133, 'NS日常新闻 龙珠战五渣vs沙鲁 呕吐妹两款乙游汉化', '//www.ali213.net/news/html/2021-11/635955.html', '12-20');
INSERT INTO `news` VALUES (134, '玩家制作《刺客信条：英灵殿》1.4.0版本汉化CT表', '//www.ali213.net/news/html/2021-11/634865.html', '12-20');
INSERT INTO `news` VALUES (135, '经典永存！《上古卷轴5：天际周年纪念版》汉化补丁 ', '//www.ali213.net/news/html/2021-11/634753.html', '12-20');
INSERT INTO `news` VALUES (136, '《螃蟹游戏》1.2汉化补丁发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-11/634379.html', '12-20');
INSERT INTO `news` VALUES (137, '《暗黑地牢2》2.2完整汉化补丁发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-11/633965.html', '12-20');
INSERT INTO `news` VALUES (138, '《废土3》4.0完整汉化补丁发布！内核汉化支持正版！', '//www.ali213.net/news/html/2021-11/633477.html', '12-20');
INSERT INTO `news` VALUES (139, '《螃蟹游戏》1.1汉化补丁发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-11/632981.html', '12-20');
INSERT INTO `news` VALUES (140, '《暗黑地牢2》2.1完整汉化补丁发布！内核汉化支持正版', '//www.ali213.net/news/html/2021-11/632781.html', '12-20');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(22) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `xijie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (1, '天命奇御二', '墨染江湖，剑写奇缘', '8', 'https://www.ali213.net/news/html/2021-11/636661.html', 'http://imgs.ali213.net/IndexTJ/2021/11/19/2021111945922246.jpg');
INSERT INTO `test` VALUES (2, '光环：无限', '士官长重临', '7', 'https://www.ali213.net/news/html/2021-11/636661.html', 'http://imgs.ali213.net/IndexTJ/2021/12/06/2021120640720521.jpg');
INSERT INTO `test` VALUES (3, '真女神转生5', '被恶魔包围', '2', 'https://www.ali213.net/news/html/2021-12/640477.html', 'http://imgs.ali213.net/IndexTJ/2021/11/24/2021112491305496.jpg');
INSERT INTO `test` VALUES (4, '破败之王:英雄联盟外传', '且随疾风前行', '9', 'https://www.ali213.net/news/html/2021-12/640477.html', 'http://imgs.ali213.net/IndexTJ/2021/11/23/2021112360547332.jpg');
INSERT INTO `test` VALUES (5, '战地2042', '有爽点，也有遗憾', '9', 'https://www.ali213.net/news/html/2021-11/637821.html', 'http://imgs.ali213.net/IndexTJ/2021/11/15/2021111561540580.jpg');

-- ----------------------------
-- Table structure for youxi
-- ----------------------------
DROP TABLE IF EXISTS `youxi`;
CREATE TABLE `youxi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 523 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youxi
-- ----------------------------
INSERT INTO `youxi` VALUES (461, '7723游戏盒');
INSERT INTO `youxi` VALUES (62, 'ANVIL');
INSERT INTO `youxi` VALUES (66, 'Apocalich');
INSERT INTO `youxi` VALUES (486, 'DataDefense');
INSERT INTO `youxi` VALUES (115, 'Dinoland');
INSERT INTO `youxi` VALUES (98, 'DYSMANTLE');
INSERT INTO `youxi` VALUES (122, 'Eggy');
INSERT INTO `youxi` VALUES (118, 'ELYON');
INSERT INTO `youxi` VALUES (123, 'Erophone');
INSERT INTO `youxi` VALUES (125, 'Firegirl');
INSERT INTO `youxi` VALUES (517, 'Garbage');
INSERT INTO `youxi` VALUES (142, 'GRAVEN');
INSERT INTO `youxi` VALUES (147, 'GRIT');
INSERT INTO `youxi` VALUES (6, 'GTA三部曲重制版');
INSERT INTO `youxi` VALUES (132, 'GTFO');
INSERT INTO `youxi` VALUES (158, 'Himno沉默的旋律');
INSERT INTO `youxi` VALUES (173, 'Ikenfell');
INSERT INTO `youxi` VALUES (170, 'INDUSTRIA');
INSERT INTO `youxi` VALUES (174, 'INMOST');
INSERT INTO `youxi` VALUES (175, 'ITTA');
INSERT INTO `youxi` VALUES (184, 'JETT：遥远彼岸');
INSERT INTO `youxi` VALUES (196, 'KeyWe');
INSERT INTO `youxi` VALUES (221, 'Lake');
INSERT INTO `youxi` VALUES (53, 'LOL手游');
INSERT INTO `youxi` VALUES (229, 'Mechajammer');
INSERT INTO `youxi` VALUES (500, 'NBA2K22');
INSERT INTO `youxi` VALUES (235, 'Nerf：传奇');
INSERT INTO `youxi` VALUES (237, 'NOeSIS02羽化');
INSERT INTO `youxi` VALUES (249, 'Oddity');
INSERT INTO `youxi` VALUES (248, 'OMORI');
INSERT INTO `youxi` VALUES (246, 'OPUS：龙脉常歌');
INSERT INTO `youxi` VALUES (250, 'Ostriv');
INSERT INTO `youxi` VALUES (251, 'OVERPASS');
INSERT INTO `youxi` VALUES (266, 'PARQUET');
INSERT INTO `youxi` VALUES (261, 'Pioner');
INSERT INTO `youxi` VALUES (270, 'PixKeeper');
INSERT INTO `youxi` VALUES (269, 'PropHunter');
INSERT INTO `youxi` VALUES (256, 'Propnight');
INSERT INTO `youxi` VALUES (320, 'TOEM');
INSERT INTO `youxi` VALUES (331, 'UBOAT');
INSERT INTO `youxi` VALUES (333, 'UBOOT');
INSERT INTO `youxi` VALUES (328, 'Unlanded');
INSERT INTO `youxi` VALUES (325, 'Unpacking');
INSERT INTO `youxi` VALUES (334, 'Unworthy');
INSERT INTO `youxi` VALUES (327, 'URG');
INSERT INTO `youxi` VALUES (337, 'Vesper');
INSERT INTO `youxi` VALUES (339, 'VOENKOMAT');
INSERT INTO `youxi` VALUES (330, '一起开火车!');
INSERT INTO `youxi` VALUES (313, '一路疾驰');
INSERT INTO `youxi` VALUES (273, '七雄纷争');
INSERT INTO `youxi` VALUES (58, '三国志战略版');
INSERT INTO `youxi` VALUES (41, '三国志系列');
INSERT INTO `youxi` VALUES (300, '上古卷轴5：天际周年纪念版');
INSERT INTO `youxi` VALUES (29, '上古卷轴6');
INSERT INTO `youxi` VALUES (508, '上行战场');
INSERT INTO `youxi` VALUES (405, '与狐妖的同居生活');
INSERT INTO `youxi` VALUES (47, '世代飞船');
INSERT INTO `youxi` VALUES (295, '世界尽头俱乐部');
INSERT INTO `youxi` VALUES (444, '世界弹射物语');
INSERT INTO `youxi` VALUES (358, '世界汽车拉力锦标赛10');
INSERT INTO `youxi` VALUES (18, '世纪灰烬时代');
INSERT INTO `youxi` VALUES (79, '世纪：灰烬时代');
INSERT INTO `youxi` VALUES (86, '丛林之中');
INSERT INTO `youxi` VALUES (103, '东方刚欲异闻：被水淹没的沉愁地狱');
INSERT INTO `youxi` VALUES (101, '东方夜光幻梦');
INSERT INTO `youxi` VALUES (108, '东方夜雀食堂');
INSERT INTO `youxi` VALUES (428, '中世纪王朝');
INSERT INTO `youxi` VALUES (413, '中国建筑师');
INSERT INTO `youxi` VALUES (119, '二战地堡模拟器');
INSERT INTO `youxi` VALUES (399, '云端花园');
INSERT INTO `youxi` VALUES (280, '亲爱的，我加入了异教');
INSERT INTO `youxi` VALUES (285, '人气声优的养成方式');
INSERT INTO `youxi` VALUES (287, '人生重开模拟器');
INSERT INTO `youxi` VALUES (284, '人类的崛起');
INSERT INTO `youxi` VALUES (289, '人间地狱');
INSERT INTO `youxi` VALUES (9, '仙剑奇侠传7');
INSERT INTO `youxi` VALUES (36, '仙剑奇侠传系列');
INSERT INTO `youxi` VALUES (453, '代号驾驶游侠汉化版');
INSERT INTO `youxi` VALUES (240, '你的剑太大了');
INSERT INTO `youxi` VALUES (448, '使命召唤手游');
INSERT INTO `youxi` VALUES (38, '使命召唤系列');
INSERT INTO `youxi` VALUES (301, '使命召唤：先锋');
INSERT INTO `youxi` VALUES (421, '侏罗纪世界：进化2');
INSERT INTO `youxi` VALUES (497, '侏罗纪进化2');
INSERT INTO `youxi` VALUES (370, '侠盗猎车手3重制版');
INSERT INTO `youxi` VALUES (371, '侠盗猎车手三部曲：终极版');
INSERT INTO `youxi` VALUES (369, '侠盗猎车手：圣安地列斯重制版');
INSERT INTO `youxi` VALUES (372, '侠盗猎车手：罪恶都市重制版');
INSERT INTO `youxi` VALUES (117, '俄罗斯2055');
INSERT INTO `youxi` VALUES (120, '俄罗斯方块效应：连接');
INSERT INTO `youxi` VALUES (244, '偶像大师：璀璨之季');
INSERT INTO `youxi` VALUES (247, '偶像经纪人');
INSERT INTO `youxi` VALUES (87, '催眠学习：秘密的欲望');
INSERT INTO `youxi` VALUES (451, '像素男友汉化版');
INSERT INTO `youxi` VALUES (141, '光明使者');
INSERT INTO `youxi` VALUES (136, '光明记忆：无限');
INSERT INTO `youxi` VALUES (12, '光环无限');
INSERT INTO `youxi` VALUES (134, '光环：无限');
INSERT INTO `youxi` VALUES (281, '全能模拟器');
INSERT INTO `youxi` VALUES (23, '全面战争战锤3');
INSERT INTO `youxi` VALUES (456, '公路大碰撞汉化版');
INSERT INTO `youxi` VALUES (491, '关于我转生变成史莱姆这档事');
INSERT INTO `youxi` VALUES (436, '关于我转生变成史莱姆这档事魔物之王');
INSERT INTO `youxi` VALUES (338, '内脏狂欢');
INSERT INTO `youxi` VALUES (145, '冈希尔德');
INSERT INTO `youxi` VALUES (469, '农场城市建设');
INSERT INTO `youxi` VALUES (238, '农场生活');
INSERT INTO `youxi` VALUES (22, '冰汽时代2');
INSERT INTO `youxi` VALUES (198, '凯尔文');
INSERT INTO `youxi` VALUES (222, '列车人生：铁路模拟器');
INSERT INTO `youxi` VALUES (467, '刷刷刷');
INSERT INTO `youxi` VALUES (34, '刺客信条系列');
INSERT INTO `youxi` VALUES (440, '剑网1归来');
INSERT INTO `youxi` VALUES (503, '加油站大亨');
INSERT INTO `youxi` VALUES (116, '动物世界生存');
INSERT INTO `youxi` VALUES (100, '动物庇护所');
INSERT INTO `youxi` VALUES (109, '动物救援');
INSERT INTO `youxi` VALUES (264, '勇攀高塔');
INSERT INTO `youxi` VALUES (398, '勇气默示录2');
INSERT INTO `youxi` VALUES (396, '勇网直前');
INSERT INTO `youxi` VALUES (353, '午夜协议');
INSERT INTO `youxi` VALUES (348, '午夜地铁');
INSERT INTO `youxi` VALUES (354, '午夜幻想曲');
INSERT INTO `youxi` VALUES (203, '卡普空街机馆');
INSERT INTO `youxi` VALUES (188, '卡牌之声：龙之岛');
INSERT INTO `youxi` VALUES (191, '卡迪恩防线');
INSERT INTO `youxi` VALUES (201, '卡里古拉2');
INSERT INTO `youxi` VALUES (7, '原始传奇');
INSERT INTO `youxi` VALUES (51, '原神');
INSERT INTO `youxi` VALUES (447, '原神手游');
INSERT INTO `youxi` VALUES (385, '原谅我，父亲');
INSERT INTO `youxi` VALUES (172, '双人成行');
INSERT INTO `youxi` VALUES (294, '双子幻境');
INSERT INTO `youxi` VALUES (286, '反叛公司');
INSERT INTO `youxi` VALUES (135, '古墓大厦豪华弹球');
INSERT INTO `youxi` VALUES (468, '古风手游');
INSERT INTO `youxi` VALUES (224, '另一个地牢');
INSERT INTO `youxi` VALUES (205, '可爱女友的获取方法');
INSERT INTO `youxi` VALUES (202, '可爱的女巫');
INSERT INTO `youxi` VALUES (186, '可爱的宝贝：兔女郎');
INSERT INTO `youxi` VALUES (189, '可爱的巫女2');
INSERT INTO `youxi` VALUES (83, '吃南瓜的人');
INSERT INTO `youxi` VALUES (319, '听风者也');
INSERT INTO `youxi` VALUES (335, '吸血鬼：避世血族-血猎');
INSERT INTO `youxi` VALUES (360, '吸血鬼：避世血族2');
INSERT INTO `youxi` VALUES (375, '吸血鬼：避世血族绝唱');
INSERT INTO `youxi` VALUES (16, '和声');
INSERT INTO `youxi` VALUES (54, '哈利波特手游');
INSERT INTO `youxi` VALUES (443, '哈利波特魔法觉醒');
INSERT INTO `youxi` VALUES (278, '喋血复仇');
INSERT INTO `youxi` VALUES (345, '围攻日');
INSERT INTO `youxi` VALUES (150, '国王的恩赐2');
INSERT INTO `youxi` VALUES (397, '圆顶');
INSERT INTO `youxi` VALUES (293, '圣堂萨迦：序幕');
INSERT INTO `youxi` VALUES (304, '圣战群英传：解放');
INSERT INTO `youxi` VALUES (292, '圣歌德嘉的晚钟');
INSERT INTO `youxi` VALUES (307, '圣火');
INSERT INTO `youxi` VALUES (107, '地下城遭遇战');
INSERT INTO `youxi` VALUES (105, '地形创造者：火星上的第一步');
INSERT INTO `youxi` VALUES (156, '坏结局剧院');
INSERT INTO `youxi` VALUES (131, '坟墓高中');
INSERT INTO `youxi` VALUES (326, '城市特技摩托豪华版');
INSERT INTO `youxi` VALUES (169, '基建空间');
INSERT INTO `youxi` VALUES (99, '堕落玩偶：爱欲行动');
INSERT INTO `youxi` VALUES (25, '塞伯利亚之谜');
INSERT INTO `youxi` VALUES (82, '处女鬼');
INSERT INTO `youxi` VALUES (496, '夏洛克福尔摩斯');
INSERT INTO `youxi` VALUES (128, '夏洛克福尔摩斯：第一章');
INSERT INTO `youxi` VALUES (352, '外星立方');
INSERT INTO `youxi` VALUES (106, '大救特救');
INSERT INTO `youxi` VALUES (97, '大明湖畔荷花钓鱼');
INSERT INTO `youxi` VALUES (488, '天之禁诸界破碎');
INSERT INTO `youxi` VALUES (308, '天体');
INSERT INTO `youxi` VALUES (2, '天命奇御二');
INSERT INTO `youxi` VALUES (470, '天命少女');
INSERT INTO `youxi` VALUES (314, '天命玄鸦');
INSERT INTO `youxi` VALUES (321, '天虹书店');
INSERT INTO `youxi` VALUES (309, '太阳灰国');
INSERT INTO `youxi` VALUES (298, '失魂者');
INSERT INTO `youxi` VALUES (245, '奇妙逃亡');
INSERT INTO `youxi` VALUES (275, '奇迹防御：地球篇');
INSERT INTO `youxi` VALUES (276, '契约唤灵师');
INSERT INTO `youxi` VALUES (64, '奥拉之沙');
INSERT INTO `youxi` VALUES (243, '女装创世记');
INSERT INTO `youxi` VALUES (450, '她的眼泪曾是我的光芒汉化版');
INSERT INTO `youxi` VALUES (171, '孤山难越');
INSERT INTO `youxi` VALUES (139, '孤岛危机3重制版');
INSERT INTO `youxi` VALUES (140, '孤岛危机：三部曲');
INSERT INTO `youxi` VALUES (5, '孤岛惊魂6');
INSERT INTO `youxi` VALUES (72, '宝可梦：晶灿钻石/明亮珍珠');
INSERT INTO `youxi` VALUES (305, '实况！救援大作战');
INSERT INTO `youxi` VALUES (490, '家有小店');
INSERT INTO `youxi` VALUES (311, '密林传奇');
INSERT INTO `youxi` VALUES (365, '小王子的星球：口袋星球版');
INSERT INTO `youxi` VALUES (366, '小白兔电商');
INSERT INTO `youxi` VALUES (463, '小米游戏');
INSERT INTO `youxi` VALUES (445, '少前云图计划');
INSERT INTO `youxi` VALUES (441, '少女前线云图计划');
INSERT INTO `youxi` VALUES (303, '尸体大厦');
INSERT INTO `youxi` VALUES (241, '尼克儿童频道全明星大乱斗');
INSERT INTO `youxi` VALUES (242, '尼克拉');
INSERT INTO `youxi` VALUES (521, '尼尔人工生命升级版');
INSERT INTO `youxi` VALUES (296, '山下的国王');
INSERT INTO `youxi` VALUES (290, '山姆和麦克斯：超越时空');
INSERT INTO `youxi` VALUES (504, '山海旅人');
INSERT INTO `youxi` VALUES (76, '崩坏3');
INSERT INTO `youxi` VALUES (137, '工人物语');
INSERT INTO `youxi` VALUES (181, '巨人起义');
INSERT INTO `youxi` VALUES (104, '帝国时代4');
INSERT INTO `youxi` VALUES (20, '帝国神话');
INSERT INTO `youxi` VALUES (263, '平面效应');
INSERT INTO `youxi` VALUES (151, '幻塔');
INSERT INTO `youxi` VALUES (487, '幻塔手游');
INSERT INTO `youxi` VALUES (42, '幽港迷城');
INSERT INTO `youxi` VALUES (380, '幽灵主义2：阴谋集团');
INSERT INTO `youxi` VALUES (384, '幽铃热线');
INSERT INTO `youxi` VALUES (197, '库莱布拉与灵薄狱之魂');
INSERT INTO `youxi` VALUES (44, '废土3');
INSERT INTO `youxi` VALUES (187, '康威：大丽花街失踪事件');
INSERT INTO `youxi` VALUES (194, '康考迪亚：数字版');
INSERT INTO `youxi` VALUES (312, '廖添丁：绝代凶贼之末日');
INSERT INTO `youxi` VALUES (478, '开心搭建');
INSERT INTO `youxi` VALUES (507, '开拓者正义之怒');
INSERT INTO `youxi` VALUES (431, '开拓者：正义之怒');
INSERT INTO `youxi` VALUES (401, '异形：火力小队');
INSERT INTO `youxi` VALUES (383, '异星前哨');
INSERT INTO `youxi` VALUES (438, '异界事务所');
INSERT INTO `youxi` VALUES (274, '弃海：波弟大冒险');
INSERT INTO `youxi` VALUES (226, '弥漫');
INSERT INTO `youxi` VALUES (113, '当火车鸣笛三秒');
INSERT INTO `youxi` VALUES (392, '影子工厂');
INSERT INTO `youxi` VALUES (291, '影子战术将军之刃：爱子的选择');
INSERT INTO `youxi` VALUES (57, '御兽少年');
INSERT INTO `youxi` VALUES (283, '忍者一闪');
INSERT INTO `youxi` VALUES (514, '忍龙大师合集');
INSERT INTO `youxi` VALUES (155, '快乐游戏');
INSERT INTO `youxi` VALUES (4, '怒斩八方');
INSERT INTO `youxi` VALUES (133, '怪物农场1+2豪华版');
INSERT INTO `youxi` VALUES (37, '怪物猎人系列');
INSERT INTO `youxi` VALUES (430, '总督');
INSERT INTO `youxi` VALUES (223, '恋活Sunshine');
INSERT INTO `youxi` VALUES (218, '恋爱关系');
INSERT INTO `youxi` VALUES (199, '恐怖故事：葡萄酒');
INSERT INTO `youxi` VALUES (190, '恐惧代码');
INSERT INTO `youxi` VALUES (121, '恶魔反击战');
INSERT INTO `youxi` VALUES (460, '悟饭游戏厅');
INSERT INTO `youxi` VALUES (277, '情绪失控');
INSERT INTO `youxi` VALUES (49, '意航员2');
INSERT INTO `youxi` VALUES (84, '成长物语：永恒树之歌');
INSERT INTO `youxi` VALUES (481, '我去仙界当大佬');
INSERT INTO `youxi` VALUES (359, '我希望你死2');
INSERT INTO `youxi` VALUES (355, '我是小鱼儿');
INSERT INTO `youxi` VALUES (356, '我是鱼');
INSERT INTO `youxi` VALUES (343, '我的手指');
INSERT INTO `youxi` VALUES (411, '战争与玫瑰');
INSERT INTO `youxi` VALUES (19, '战争传说');
INSERT INTO `youxi` VALUES (485, '战争日记');
INSERT INTO `youxi` VALUES (415, '战地2042');
INSERT INTO `youxi` VALUES (416, '战锤西格玛时代：暴风雨');
INSERT INTO `youxi` VALUES (129, '房屋建造者');
INSERT INTO `youxi` VALUES (464, '手游助手');
INSERT INTO `youxi` VALUES (316, '投资模拟器：打工人');
INSERT INTO `youxi` VALUES (89, '拆弹模拟器');
INSERT INTO `youxi` VALUES (93, '拆船模拟器');
INSERT INTO `youxi` VALUES (178, '拣爱');
INSERT INTO `youxi` VALUES (61, '拱谷世界');
INSERT INTO `youxi` VALUES (30, '拳皇15');
INSERT INTO `youxi` VALUES (466, '推理破案');
INSERT INTO `youxi` VALUES (70, '搏击骑士');
INSERT INTO `youxi` VALUES (130, '放置大魔王');
INSERT INTO `youxi` VALUES (458, '放置王国游侠汉化版');
INSERT INTO `youxi` VALUES (56, '数码宝贝手游');
INSERT INTO `youxi` VALUES (347, '文明7');
INSERT INTO `youxi` VALUES (442, '新盗墓笔记');
INSERT INTO `youxi` VALUES (215, '旅行游记');
INSERT INTO `youxi` VALUES (452, '无人岛日记安卓汉化版');
INSERT INTO `youxi` VALUES (357, '无尽的饼干');
INSERT INTO `youxi` VALUES (351, '无限饥饿');
INSERT INTO `youxi` VALUES (302, '时间加载器');
INSERT INTO `youxi` VALUES (200, '昆虫世界');
INSERT INTO `youxi` VALUES (361, '星咏之诗');
INSERT INTO `youxi` VALUES (362, '星河战队：人族指挥部');
INSERT INTO `youxi` VALUES (50, '暗区突围');
INSERT INTO `youxi` VALUES (67, '暗影火炬城');
INSERT INTO `youxi` VALUES (3, '暗黑2重制版');
INSERT INTO `youxi` VALUES (43, '暗黑地牢2');
INSERT INTO `youxi` VALUES (522, '暗黑破坏神2重制版');
INSERT INTO `youxi` VALUES (40, '暗黑破坏神系列');
INSERT INTO `youxi` VALUES (518, '暴走大鹅');
INSERT INTO `youxi` VALUES (512, '最后的咒语');
INSERT INTO `youxi` VALUES (457, '最后的城堡成长汉化版');
INSERT INTO `youxi` VALUES (417, '最后的战役：劫后余生');
INSERT INTO `youxi` VALUES (426, '最后的篝火');
INSERT INTO `youxi` VALUES (408, '最终幻想14：晓月的终焉');
INSERT INTO `youxi` VALUES (429, '最终幻想4像素复刻版');
INSERT INTO `youxi` VALUES (419, '最终幻想5：像素重制版');
INSERT INTO `youxi` VALUES (407, '最终幻想7：重制版');
INSERT INTO `youxi` VALUES (388, '月球农场');
INSERT INTO `youxi` VALUES (259, '朋克战争');
INSERT INTO `youxi` VALUES (342, '未来守护者');
INSERT INTO `youxi` VALUES (493, '末日来袭');
INSERT INTO `youxi` VALUES (48, '杀手3');
INSERT INTO `youxi` VALUES (211, '来建一家动物园');
INSERT INTO `youxi` VALUES (39, '极品飞车系列');
INSERT INTO `youxi` VALUES (182, '极限国度');
INSERT INTO `youxi` VALUES (33, '极限竞速系列');
INSERT INTO `youxi` VALUES (179, '极限竞速：地平线5');
INSERT INTO `youxi` VALUES (195, '柯娜：精神之桥');
INSERT INTO `youxi` VALUES (332, '校园惊魂');
INSERT INTO `youxi` VALUES (239, '核烈焰');
INSERT INTO `youxi` VALUES (167, '核爆RPG：特鲁多格勒');
INSERT INTO `youxi` VALUES (231, '棉花小魔女：重启版');
INSERT INTO `youxi` VALUES (149, '植兽物语');
INSERT INTO `youxi` VALUES (21, '模拟农场22');
INSERT INTO `youxi` VALUES (364, '橡胶强盗');
INSERT INTO `youxi` VALUES (253, '欧卡锦标赛');
INSERT INTO `youxi` VALUES (252, '欧米伽迷宫：人生');
INSERT INTO `youxi` VALUES (387, '欲望之梦最终版');
INSERT INTO `youxi` VALUES (501, '死亡循环');
INSERT INTO `youxi` VALUES (78, '残秽的我们');
INSERT INTO `youxi` VALUES (435, '比得兔隐藏的世界');
INSERT INTO `youxi` VALUES (74, '毕业生模拟器');
INSERT INTO `youxi` VALUES (484, '氪金之王');
INSERT INTO `youxi` VALUES (389, '永世必死');
INSERT INTO `youxi` VALUES (10, '永劫无间');
INSERT INTO `youxi` VALUES (390, '永恒之金');
INSERT INTO `youxi` VALUES (394, '永恒滚筒');
INSERT INTO `youxi` VALUES (480, '江湖小掌柜');
INSERT INTO `youxi` VALUES (475, '汽车专业模拟器');
INSERT INTO `youxi` VALUES (272, '汽车美容模拟器');
INSERT INTO `youxi` VALUES (95, '沉浮');
INSERT INTO `youxi` VALUES (479, '沙盒模拟器');
INSERT INTO `youxi` VALUES (230, '没有B计划');
INSERT INTO `youxi` VALUES (262, '泡泡的人');
INSERT INTO `youxi` VALUES (153, '海克斯炸欢天：英雄联盟外传');
INSERT INTO `youxi` VALUES (168, '海怪学院');
INSERT INTO `youxi` VALUES (519, '涅克罗蒙达');
INSERT INTO `youxi` VALUES (28, '消逝的光芒2');
INSERT INTO `youxi` VALUES (71, '深埋之星');
INSERT INTO `youxi` VALUES (32, '游戏杯全民赛');
INSERT INTO `youxi` VALUES (432, '湛蓝牢笼');
INSERT INTO `youxi` VALUES (165, '滑板鸟');
INSERT INTO `youxi` VALUES (24, '潜行者2');
INSERT INTO `youxi` VALUES (483, '火柴人大侠');
INSERT INTO `youxi` VALUES (225, '灭亡之后');
INSERT INTO `youxi` VALUES (206, '烂漫向导蕾莉');
INSERT INTO `youxi` VALUES (288, '熔铁少女');
INSERT INTO `youxi` VALUES (382, '熠熠星光魔物娘');
INSERT INTO `youxi` VALUES (439, '爆裂魔女');
INSERT INTO `youxi` VALUES (271, '爬行动物：猎杀');
INSERT INTO `youxi` VALUES (63, '爱丽丝：庇护');
INSERT INTO `youxi` VALUES (15, '爱子的选择');
INSERT INTO `youxi` VALUES (310, '特级厨师');
INSERT INTO `youxi` VALUES (192, '狂暴之徒：联合计划');
INSERT INTO `youxi` VALUES (513, '狙击手2');
INSERT INTO `youxi` VALUES (126, '狭间格斗');
INSERT INTO `youxi` VALUES (233, '猫不语');
INSERT INTO `youxi` VALUES (159, '猴王模拟器之花果山篇');
INSERT INTO `youxi` VALUES (406, '玉言·离光');
INSERT INTO `youxi` VALUES (52, '王者荣耀');
INSERT INTO `youxi` VALUES (344, '玩具修补匠模拟器');
INSERT INTO `youxi` VALUES (350, '玩具士兵：高清版');
INSERT INTO `youxi` VALUES (368, '现代水面作战');
INSERT INTO `youxi` VALUES (506, '瓦里奥制造');
INSERT INTO `youxi` VALUES (520, '生化危机8村庄');
INSERT INTO `youxi` VALUES (35, '生化危机系列');
INSERT INTO `youxi` VALUES (511, '生化变种');
INSERT INTO `youxi` VALUES (471, '生物进化模拟');
INSERT INTO `youxi` VALUES (220, '留离虚空');
INSERT INTO `youxi` VALUES (124, '疯狂宠物秀');
INSERT INTO `youxi` VALUES (322, '痛苦的灵魂');
INSERT INTO `youxi` VALUES (349, '瘟疫：王国战争');
INSERT INTO `youxi` VALUES (69, '白色阴影');
INSERT INTO `youxi` VALUES (75, '百万吨级武藏');
INSERT INTO `youxi` VALUES (73, '百炼成钢');
INSERT INTO `youxi` VALUES (454, '监狱365汉化版');
INSERT INTO `youxi` VALUES (180, '监狱模拟器');
INSERT INTO `youxi` VALUES (257, '盘古大陆');
INSERT INTO `youxi` VALUES (31, '真三8帝国');
INSERT INTO `youxi` VALUES (26, '真女神转生5');
INSERT INTO `youxi` VALUES (162, '矮人海姆');
INSERT INTO `youxi` VALUES (329, '破妄');
INSERT INTO `youxi` VALUES (265, '破晓传说');
INSERT INTO `youxi` VALUES (267, '破败地球');
INSERT INTO `youxi` VALUES (258, '破败王者：英雄联盟传奇');
INSERT INTO `youxi` VALUES (412, '祝福恶魔木偶');
INSERT INTO `youxi` VALUES (494, '神曲手游');
INSERT INTO `youxi` VALUES (204, '空中骑士从不屈服');
INSERT INTO `youxi` VALUES (455, '站上高塔汉化版');
INSERT INTO `youxi` VALUES (11, '笑傲江湖');
INSERT INTO `youxi` VALUES (14, '符文工房4特别版');
INSERT INTO `youxi` VALUES (209, '笼中窥梦');
INSERT INTO `youxi` VALUES (324, '米德加德部落');
INSERT INTO `youxi` VALUES (85, '糖果灾难：机关塔防');
INSERT INTO `youxi` VALUES (161, '红魔城蕾米莉亚：绯色交响曲');
INSERT INTO `youxi` VALUES (236, '纳迪亚之宝');
INSERT INTO `youxi` VALUES (410, '纸嫁衣');
INSERT INTO `youxi` VALUES (88, '细胞奇点：进化永无止境');
INSERT INTO `youxi` VALUES (434, '终极拉扯');
INSERT INTO `youxi` VALUES (433, '终极神秘古域：混沌洞穴');
INSERT INTO `youxi` VALUES (515, '绯红结系');
INSERT INTO `youxi` VALUES (340, '维京复仇');
INSERT INTO `youxi` VALUES (336, '维尔塞特');
INSERT INTO `youxi` VALUES (341, '维特伍德');
INSERT INTO `youxi` VALUES (219, '罗斯威尔特工');
INSERT INTO `youxi` VALUES (424, '罪恶王权');
INSERT INTO `youxi` VALUES (476, '美国火枪手2');
INSERT INTO `youxi` VALUES (404, '翌日');
INSERT INTO `youxi` VALUES (127, '翻越那座山');
INSERT INTO `youxi` VALUES (17, '翼星求生');
INSERT INTO `youxi` VALUES (282, '肉体锻造');
INSERT INTO `youxi` VALUES (114, '胆怯之屋');
INSERT INTO `youxi` VALUES (465, '腾讯');
INSERT INTO `youxi` VALUES (315, '舔狗模拟器');
INSERT INTO `youxi` VALUES (346, '舞力全开2022');
INSERT INTO `youxi` VALUES (27, '艾尔登法环');
INSERT INTO `youxi` VALUES (65, '艾玛和泰迪熊：影子历险记');
INSERT INTO `youxi` VALUES (166, '花妖物语');
INSERT INTO `youxi` VALUES (437, '苍之骑士团2');
INSERT INTO `youxi` VALUES (306, '苏醒之路');
INSERT INTO `youxi` VALUES (402, '英雄不再3');
INSERT INTO `youxi` VALUES (400, '英雄传说：创之轨迹');
INSERT INTO `youxi` VALUES (393, '英雄传说：黎之轨迹');
INSERT INTO `youxi` VALUES (446, '英雄联盟手游');
INSERT INTO `youxi` VALUES (45, '英雄连2');
INSERT INTO `youxi` VALUES (163, '荒神2');
INSERT INTO `youxi` VALUES (154, '荒野西部Z');
INSERT INTO `youxi` VALUES (395, '药剂工艺：炼金术士模拟器');
INSERT INTO `youxi` VALUES (473, '莫比迪克狂野狩猎');
INSERT INTO `youxi` VALUES (208, '莱恩的岛');
INSERT INTO `youxi` VALUES (472, '萌猫矿工');
INSERT INTO `youxi` VALUES (423, '葬花暗黑桃花源');
INSERT INTO `youxi` VALUES (213, '蓝精灵：毒叶大作战');
INSERT INTO `youxi` VALUES (498, '蓝色反射帝');
INSERT INTO `youxi` VALUES (210, '蓝色反射：帝');
INSERT INTO `youxi` VALUES (367, '虚实之间2');
INSERT INTO `youxi` VALUES (373, '虚空之蚀');
INSERT INTO `youxi` VALUES (462, '虫虫助手');
INSERT INTO `youxi` VALUES (297, '蛇行武装');
INSERT INTO `youxi` VALUES (427, '蛛丝诡迹');
INSERT INTO `youxi` VALUES (110, '蜻蜓点水');
INSERT INTO `youxi` VALUES (260, '螃蟹游戏');
INSERT INTO `youxi` VALUES (374, '血岸岛');
INSERT INTO `youxi` VALUES (414, '装甲速递');
INSERT INTO `youxi` VALUES (482, '觉醒大陆');
INSERT INTO `youxi` VALUES (183, '角斗士公会经理');
INSERT INTO `youxi` VALUES (510, '警察模拟器');
INSERT INTO `youxi` VALUES (299, '设施');
INSERT INTO `youxi` VALUES (268, '赞助者');
INSERT INTO `youxi` VALUES (80, '超市管理员');
INSERT INTO `youxi` VALUES (509, '超激斗梦境');
INSERT INTO `youxi` VALUES (92, '超级世界盒子');
INSERT INTO `youxi` VALUES (91, '超级机器人大战30');
INSERT INTO `youxi` VALUES (81, '超级英雄');
INSERT INTO `youxi` VALUES (90, '超级马里奥聚会：超级巨星');
INSERT INTO `youxi` VALUES (474, '超能救援队');
INSERT INTO `youxi` VALUES (381, '越野摩托2021');
INSERT INTO `youxi` VALUES (420, '足球经理2022');
INSERT INTO `youxi` VALUES (102, '躲避球学院');
INSERT INTO `youxi` VALUES (96, '车祸现场模拟器');
INSERT INTO `youxi` VALUES (378, '轩辕剑仙：正统东方修仙传说');
INSERT INTO `youxi` VALUES (112, '达贡：致洛夫克拉夫特');
INSERT INTO `youxi` VALUES (363, '迅狼疾步');
INSERT INTO `youxi` VALUES (377, '迅风的米斯特汀');
INSERT INTO `youxi` VALUES (409, '这就是总统');
INSERT INTO `youxi` VALUES (422, '这里，来自母星');
INSERT INTO `youxi` VALUES (379, '远古地下城VR');
INSERT INTO `youxi` VALUES (227, '迷失：寻找');
INSERT INTO `youxi` VALUES (323, '逃离那落迦');
INSERT INTO `youxi` VALUES (318, '逃离：生存系列');
INSERT INTO `youxi` VALUES (425, '逐光之旅');
INSERT INTO `youxi` VALUES (111, '遗迹之森与梦魔之药');
INSERT INTO `youxi` VALUES (234, '那由多之轨迹改');
INSERT INTO `youxi` VALUES (376, '邪恶冥刻');
INSERT INTO `youxi` VALUES (68, '部落与弯刀');
INSERT INTO `youxi` VALUES (185, '酒店大亨');
INSERT INTO `youxi` VALUES (177, '酒馆带师');
INSERT INTO `youxi` VALUES (94, '重生之老王馋我身子');
INSERT INTO `youxi` VALUES (477, '重生岛');
INSERT INTO `youxi` VALUES (418, '重装集结：二战');
INSERT INTO `youxi` VALUES (403, '野心：权力的小步舞曲');
INSERT INTO `youxi` VALUES (502, '金属之子');
INSERT INTO `youxi` VALUES (176, '金并：重新加载');
INSERT INTO `youxi` VALUES (55, '金铲铲之战');
INSERT INTO `youxi` VALUES (148, '钢之铸歌');
INSERT INTO `youxi` VALUES (144, '钢铁之尾');
INSERT INTO `youxi` VALUES (143, '钢铁突击');
INSERT INTO `youxi` VALUES (495, '铁血攻沙之热血屠龙');
INSERT INTO `youxi` VALUES (317, '铁路建造模拟器');
INSERT INTO `youxi` VALUES (77, '铲子骑士口袋地牢');
INSERT INTO `youxi` VALUES (391, '银河战士：Dread');
INSERT INTO `youxi` VALUES (214, '银河破裂者');
INSERT INTO `youxi` VALUES (449, '银河经理汉化版');
INSERT INTO `youxi` VALUES (492, '长安百万贯');
INSERT INTO `youxi` VALUES (59, '问道飞仙');
INSERT INTO `youxi` VALUES (60, '阿斯泰利克斯历险记：全拍飞！');
INSERT INTO `youxi` VALUES (505, '随机消失');
INSERT INTO `youxi` VALUES (386, '隐藏办公室');
INSERT INTO `youxi` VALUES (212, '零：濡鸦之巫女');
INSERT INTO `youxi` VALUES (216, '雷能思之门');
INSERT INTO `youxi` VALUES (217, '雷莎出击复兴版');
INSERT INTO `youxi` VALUES (13, '雷霆一号');
INSERT INTO `youxi` VALUES (232, '面包业大亨');
INSERT INTO `youxi` VALUES (499, '风来之国');
INSERT INTO `youxi` VALUES (254, '飘移：羽毛的重量');
INSERT INTO `youxi` VALUES (255, '飘雪国任务');
INSERT INTO `youxi` VALUES (164, '骇游侠探');
INSERT INTO `youxi` VALUES (516, '骑士精神2');
INSERT INTO `youxi` VALUES (279, '骑士镇魂曲');
INSERT INTO `youxi` VALUES (146, '骰子遗产');
INSERT INTO `youxi` VALUES (193, '骷髅复仇者');
INSERT INTO `youxi` VALUES (138, '鬼灭之刃：火神血风谭');
INSERT INTO `youxi` VALUES (8, '鬼谷八荒');
INSERT INTO `youxi` VALUES (459, '魔玩助手');
INSERT INTO `youxi` VALUES (228, '魔镜派对');
INSERT INTO `youxi` VALUES (207, '黎明之战');
INSERT INTO `youxi` VALUES (152, '黑客帝国：觉醒');
INSERT INTO `youxi` VALUES (489, '黑暗城堡');
INSERT INTO `youxi` VALUES (46, '黑暗时代');
INSERT INTO `youxi` VALUES (160, '黑暗时代：背水一战');
INSERT INTO `youxi` VALUES (157, '黑相集：灰冥界');

-- ----------------------------
-- Table structure for zhixun
-- ----------------------------
DROP TABLE IF EXISTS `zhixun`;
CREATE TABLE `zhixun`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `simple_into` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `href` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 177 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zhixun
-- ----------------------------
INSERT INTO `zhixun` VALUES (1, '节庆感满满的《圣诞猪猪》开趴体：会被做成培根吗？', '在欧美网友眼中，猪好不好吃是其次（大概是欧美猪肉都不太好吃？），猪猪们很可爱才是重点！', 'https://www.ali213.net/news/html/2021-12/645087.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/2021122514049112.jpg');
INSERT INTO `zhixun` VALUES (2, '《幻塔》的SSR武器还能从哪儿获得？别忽略这些方式', '大家在《幻塔》里都有几个SSR武器了？相信这段时间也都发现了，SSR武器确实更好用一些，但是获取也难不少。', 'https://www.ali213.net/news/html/2021-12/645099.html', '12-25', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122469997981.jpg');
INSERT INTO `zhixun` VALUES (3, '《幻塔》联合作战过不去？做好3点 萌新也能轻松通关', '随着《幻塔》正式上线一周有余，玩家们对游戏的讨论也逐渐深入到方方面面，而其中关于联合作战玩法的讨论，成为了近期的热点。', 'https://www.ali213.net/news/html/2021-12/645097.html', '12-25', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122413790645.jpg');
INSERT INTO `zhixun` VALUES (4, '养一只猫狗到底要花多少钱？日本调查称约154万日元', '近日据媒体报道，根据一项调查显示，日本宠物猫狗终生所需费用，猫约154万日元（约合人民币8.6万元），狗为245万日元（约合人民币14万元）。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645079.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/2021122513506907.jpg');
INSERT INTO `zhixun` VALUES (5, '《幻塔》必学探索技巧 能省一半时间 老玩家也值得看', '地图上各类能互动的植物、宝箱、补给舱、密码箱和浮空道具等等，能开出大量装备相关或者是抽卡的道具，从而让真正意义上的“白嫖”在《幻塔》中成为了现实。', 'https://www.ali213.net/news/html/2021-12/645093.html', '12-25', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122416094330.jpg');
INSERT INTO `zhixun` VALUES (6, '亨利·卡维尔《猎魔人》第二季曝新海报：主演亮相！', '《猎魔人》根据波兰奇幻小说家安杰·萨普科夫斯基的同名小说改编，由亨利·卡维尔、安亚·查洛特拉、弗蕾娅·艾伦等主演，猎魔人杰洛特继续踏上危机旅途，', 'https://www.ali213.net/news/html/2021-12/645089.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/2021122511238745.jpg');
INSERT INTO `zhixun` VALUES (7, '福原爱新恋情曝光！男友前妻接受采访时竟这样表态？', '日媒近日对于福原爱的新恋情进行了报道，对象是此前报道过的商界人士。两人目前处于“半同居”状态。', 'https://www.ali213.net/news/html/2021-12/645061.html', '12-25', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/25/2021122511712292.jpg');
INSERT INTO `zhixun` VALUES (8, '《咒术回战0》乙骨&amp;里香手办：左手抱妹！法力加倍', '《咒术回战0》中乙骨忧太&amp;祈本里香手办完美再现了原画的感觉，手办预计将于2022年11月发售。', 'https://www.ali213.net/news/html/2021-12/645077.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/20211225120426334.jpg');
INSERT INTO `zhixun` VALUES (9, '樱井政博晒《FF7》反派公司神罗任命书：离职率有点高', '知名游戏制作人樱井政博在今早晒出了一份来自神罗公司的任命书，并直言：“这家公司的薪水不错，但离职率似乎很高.....”，不过网友纷纷表示高的或许并不是离职率。', 'https://www.ali213.net/news/html/2021-12/645075.html', '12-25', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/25/20211225115908593.jpg');
INSERT INTO `zhixun` VALUES (10, '天文学家发现至今最大流氓行星群：随意自由飘荡！', '近日，天文学家们发现了迄今为止最大流氓行星群，数量在70到170颗之间。流浪行星也被称为流氓行星，不围绕任何恒星，自由飘荡在宇宙空间中。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645069.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/20211225114717518.jpg');
INSERT INTO `zhixun` VALUES (11, '乐高Ideas系列《刺猬索尼克》主题玩具套装图片泄露', '《刺猬索尼克》所玩家非常喜爱的游戏之一，今天，Mercado Libre泄露出了乐高即将推出的《刺猬索尼克》玩具套装的图片，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645049.html', '12-25', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/25/20211225113733263.jpg');
INSERT INTO `zhixun` VALUES (12, '拔得“头丑”！淘宝丑东西评选第一名：究竟有多丑？', '丑东西背后体现的是一个越来越丰富的淘宝购物平台，这里不仅有富有创造力的原创商家，还有新一代愿意为创造力埋单的年轻人。', 'https://www.ali213.net/news/html/2021-12/645063.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/20211225113329726.jpg');
INSERT INTO `zhixun` VALUES (13, '圣诞老人劝你少管闲事 囧图 防止被零元购的究极措施', '这是熊大熊二吧！不然你觉得为啥收新学员？下水道也要Merry Christmas。“司机师傅你再不来我就被水冲走了。”狗：你是真的狗……就不怕边上人枪歪尿你一身？你这圣诞树味挺大。别人练腿你练嘴……', 'https://www.ali213.net/news/html/2021-12/645065.html', '12-25', '小编：周一', 'https://imgs.ali213.net/news/2021/12/25/20211225113323361.jpg');
INSERT INTO `zhixun` VALUES (14, 'B站宣布开展专项整治 打击流量造假 黑公关 网络水军', '12月24日，Bilibili官方发布《清朗・打击流量造假、黑公关、网络水军专项整治公告》，即日起开展专项整治行动，深入清理违规乱象。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645071.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/20211225113017626.jpg');
INSERT INTO `zhixun` VALUES (15, 'AMD NVIDIA显卡价格翻倍 售价直追今年5月价格巅峰', '近日据外媒报道，高昂的显卡价格已经持续了一整年，然而在圣诞节前夕，显卡价格不但没有回落，反而再次攀升，直达今年5月份的价格巅峰。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645053.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/20211225112105751.jpg');
INSERT INTO `zhixun` VALUES (16, 'NS日常新闻 福尔摩斯暗示将移植 同人款塞尔达创作家', '​​一张图，一句话，你简阅NS游戏每日新闻~', 'https://www.ali213.net/news/html/2021-12/645067.html', '12-25', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/25/20211225110247491.jpg');
INSERT INTO `zhixun` VALUES (17, '美国网红豪掷350万美元购买绝版《宝可梦》初代卡', '美国摔跤手洛根·保罗（Logan Paul）不仅是个拥有2320万粉丝的油管网红，还是个《宝可梦》超级发烧友。', 'https://www.ali213.net/news/html/2021-12/645055.html', '12-25', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/25/2021122510581739.jpg');
INSERT INTO `zhixun` VALUES (18, '林草局：全国已捕猎野猪1982头 补偿群众损失近400万', '近年来野猪种群数量快速增长，全国多地出现野猪毁坏庄稼和伤人事件。国家林草局消息，截至10月31日，全国完成猎捕野猪1982头，累计为群众补偿损失376.23万元。', 'https://www.ali213.net/news/html/2021-12/645029.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/20211225105822246.jpg');
INSERT INTO `zhixun` VALUES (19, '3D平台冒险新游《红围巾》Steam正式发售！支持简中', '一款将拼图和3D平台结合在一起的冒险游戏《红围巾（Scarf）》现已在Steam平台正式发售。', 'https://www.ali213.net/news/html/2021-12/645057.html', '12-25', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/25/20211225105406433.jpg');
INSERT INTO `zhixun` VALUES (20, '制作人：如果玩家呼声强烈 《新美妙世界》会有续作', '此前游侠网报道了ARPG游戏《新美妙世界》销量不及预期的新闻，那么这个系列未来将会如何呢？是否还会推出新作呢？一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/645045.html', '12-25', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/25/20211225103027652.jpg');
INSERT INTO `zhixun` VALUES (21, '从FC传奇游戏大赛车到全新电竞体验 F1游戏进化之路', '世界上最烧钱的运动，是如何被做成游戏的', 'https://www.ali213.net/news/html/2021-12/645059.html', '12-25', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/25/20211225102835280.jpg');
INSERT INTO `zhixun` VALUES (22, '郭京飞 谭卓现代谍战剧《对手》豆瓣8.1分：节奏紧凑', '由郭京飞、谭卓、颜丙燕等主演的现代谍战剧《对手》豆瓣评分已出炉，获得了8.1分的评分。质量不错，剧情节奏紧凑，演员阵容强大，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645033.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/20211225102633728.jpg');
INSERT INTO `zhixun` VALUES (23, '微肉美腿性感度大增！ 加拿大白皙正妹Meggii Kohai！', '今天和大家分享的是来自加拿大的COSER——Meggii Kohai，小伙伴们一起来欣赏吧！', 'https://www.ali213.net/news/html/2021-12/644749.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/20211225101303771.jpg');
INSERT INTO `zhixun` VALUES (24, '《严阵以待》好评如潮！将出校园枪击案关卡却惹争议', '特警主题的战术射击游戏《严阵以待（Ready or Not）》自12月18日发布以来，在Steam上广受好评。截止发稿时，9647条评论中95%为好评，目前评价为好评如潮。但据Kotaku报道称，《严阵以待》开发商Void Interactive正与其发行商Team17分道扬镳。', 'https://www.ali213.net/news/html/2021-12/645041.html', '12-25', '小编：周一', 'https://imgs.ali213.net/news/2021/12/25/20211225101342324.jpg');
INSERT INTO `zhixun` VALUES (25, 'Steam好评如潮模拟游戏《幸福工厂》销量突破300万!', '发商Coffee Stain Studios宣布旗下模拟经营游戏《幸福工厂（Satisfactory）》的销量现已突破300万份。', 'https://www.ali213.net/news/html/2021-12/645023.html', '12-25', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/25/20211225100513549.jpg');
INSERT INTO `zhixun` VALUES (26, '轻松调视角！《最终幻想7：重制版》FOV视角MOD发布', 'MOD制作者“Tohru Adachi”发布了一个超酷的《最终幻想7：重制版》的MOD，这个MOD允许玩家调整游戏内的视角。玩家可以调整游戏视角的远近距离数值，非常的方便。一起来看看MOD的演示吧！', 'https://www.ali213.net/news/html/2021-12/645043.html', '12-25', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/25/2021122594337151.jpg');
INSERT INTO `zhixun` VALUES (27, '《黑道圣徒：重启版》新演示 武器 皮肤 战斗全展示', '系列重启作《黑道圣徒：重启版（Saints Row: Reboot）》日前其公开了最新演示，展示了武器、皮肤、战斗场景等内容，将于2022年8月23日推出。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645025.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/2021122594623435.jpg');
INSERT INTO `zhixun` VALUES (28, '官方晒《古墓丽影：暗影》新视频 两个未使用机制公开', '水晶动力和EIDOS蒙特利尔今日公开了一则新视频，展示了《古墓丽影：暗影》两个未曾在正式游戏中使用的机制。', 'https://www.ali213.net/news/html/2021-12/645031.html', '12-25', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/25/2021122593455941.jpg');
INSERT INTO `zhixun` VALUES (29, 'Netflix太空科幻悬疑《寂静之海》新预告 已正式开播', '日前，Netflix太空科幻悬疑惊悚剧《寂静之海》已正式于Netflix流媒体平台开播。同时发布了中字版最新预告，剧集由裴斗娜、孔刘等主演，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645027.html', '12-25', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/25/2021122593243167.jpg');
INSERT INTO `zhixun` VALUES (30, '太空狼人杀游戏《among us》推出粘土人手办 预购开放', '太空狼人杀游戏《在我们之中（Among Us）》推出船员粘土人手办，目前正在接受预定中，每个粘土人全高100mm，目前推出了三款颜色：红色、黑色和青色。每个售价3900日元（约合人民币217元）。', 'https://www.ali213.net/news/html/2021-12/645039.html', '12-25', '小编：周一', 'https://imgs.ali213.net/news/2021/12/25/2021122592730390.jpg');
INSERT INTO `zhixun` VALUES (31, '圣诞树中国造！义乌支撑了全球数十亿人的圣诞梦想！', '中国是世界圣诞用品生产大国，每年有超过半数的圣诞订单在浙江省义乌市生产。今年国外的圣诞树已经供不应求。', 'https://www.ali213.net/news/html/2021-12/564161.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/2021122590541120.jpg');
INSERT INTO `zhixun` VALUES (32, '《FF14：晓月之终焉》新职业贤者/钐镰客新视觉图赏!', '《最终幻想14》官方推特近日公布了《最终幻想14：晓月之终焉（FINAL FANTASY XIV: ENDWALKER）》新职业“贤者”、“钐镰客”的新艺术图。这两个职业前者属于能打能奶的角色，后者则定位为强悍的近战输出。', 'https://www.ali213.net/news/html/2021-12/645021.html', '12-25', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/25/2021122590620893.jpg');
INSERT INTO `zhixun` VALUES (33, '严禁啃娃！靠娃月入15万：孩子沦为父母“赚钱工具” ', '“啃老族”已经被抨击好几多了，如今这批人长大了，开始做“啃娃族”了？', 'https://www.ali213.net/news/html/2021-12/645037.html', '12-25', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/25/2021122584255649.jpg');
INSERT INTO `zhixun` VALUES (34, '玩家流失惨重!《战地2042》在线人数被《战地5》反超', 'EA最新作《战地2042》现在才刚上线2个多月，按理说本应处于首发热门期。然而其糟糕的游戏设计、大量的bug导致玩家迅速流失。据悉在12月24日晚，《战地2042》的同时在线人数已经被《战地5》反超！', 'https://www.ali213.net/news/html/2021-12/645019.html', '12-25', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/25/20211225123216863.jpg');
INSERT INTO `zhixun` VALUES (35, 'Epic冬促喜加一第9弹：好评crpg《开拓者:拥王者》！', 'Epic游戏商城“假日特卖”目前正在进行中，除了超值特价和无限优惠券外，连续15天、每天限时24小时还有一款免费游戏。此前已经送出了8款免费游戏，而今天（12月25日）的喜加一游戏现在也解锁了——奇幻CRPG游戏《开拓者：拥王者》增强Plus版。', 'https://www.ali213.net/news/html/2021-12/644919.html', '12-25', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/20211224114856232.jpg');
INSERT INTO `zhixun` VALUES (36, '《鬼灭之刃：火神血风谭》第3弹免费更新 追加新鬼！', '由动漫改编的游戏《鬼灭之刃 火之神血风谭》最近推出了第三弹免费更新，魇梦、愈史郎珠世，这两只鬼将会作为可使用角色追加至VS模式。', 'https://www.ali213.net/news/html/2021-12/645015.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/20211224112516597.jpg');
INSERT INTO `zhixun` VALUES (37, '超美的“政委”陪你过圣诞！美女声优 上坂堇美照赏', '又到了本周分享“政委”上坂堇的美照时间！这一周政委的生活可太丰富了，除了分享了夏天的美照存货之外，还分享了自己30岁的生日照，最后还有圣诞节的影业！一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/645017.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/20211224110239972.jpg');
INSERT INTO `zhixun` VALUES (38, '第一名太意外！最想一起过圣诞节的动漫男角色TOP13', '今天给大家分享的是一年一度的“圣诞节”榜单，日媒发布了今年的“你最想和动漫中的那位男性角色过圣诞节呢？”的榜单，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644891.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/20211224103828566.jpg');
INSERT INTO `zhixun` VALUES (39, '黑暗视觉小说《水仙》真人电影化决定 中国公司制作', '水仙《narcissu》（ナルキッソス）及其续作《narcissu SIDE 2nd》是片岡とも（片岡智晴）老师分别于 2005 年及 2007 年以个人名义发布的视觉小说。', 'https://www.ali213.net/news/html/2021-12/645013.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122494438839.jpg');
INSERT INTO `zhixun` VALUES (40, '《远征军：罗马》发布新预告片 展示高卢、非洲景观！', 'THQ Nordic今日发布了《远征军：罗马》的最新预告视频，这是一款回合策略RPG新游戏、预计2022年1月21日推出。一起来看看吧~', 'https://www.ali213.net/news/html/2021-12/645011.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/2021122495434612.jpg');
INSERT INTO `zhixun` VALUES (41, '世嘉《如龙》0、极、极2即将退出GamePass订阅服务', '微软Game Pass订阅服务中常常会添加一些新的游戏供订阅者游玩，不过这不是永久性的，在一段时间后，有的游戏就会推出Game Pass服务。最近，世嘉旗下《如龙》系列的0、极1和极2三款游戏就即将离开Game Pass。', 'https://www.ali213.net/news/html/2021-12/645009.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/202112249442083.jpg');
INSERT INTO `zhixun` VALUES (42, '《消逝的光芒2》16分钟实机演示 steam预购特典公开', '开放世界游戏《消逝的光芒》的续作带来了在现代黑暗时代中一段特殊的末世体验，玩家需要利用跑酷能力和硬朗的战斗技能在黑暗中求生，在道德和本能间做出选择，从而改造城市并决定其最终的命运。', 'https://www.ali213.net/news/html/2021-12/645007.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122491118427.jpg');
INSERT INTO `zhixun` VALUES (43, '讨伐三头霸主！《怪物猎人崛起》“挑战任务7”发布', '《怪物猎人：崛起》官方公开了新的“挑战任务07”，邀请玩家在游戏中挑战讨伐雷狼龙、泡狐龙和角龙三头霸主，官方还发布了游戏开发人员的无NG演示，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644959.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/202112249290933.jpg');
INSERT INTO `zhixun` VALUES (44, '无辜笑容+G罩杯太勾人！岛国美少女 樱田爱音 美照赏', '今天跟大家分享的是岛国美少女“樱田爱音”的美照，因为有当明星的梦想，所以樱田爱音开始在日本写真界发展，出道一年也颇有人气，一起来欣赏她的美照吧', 'https://www.ali213.net/news/html/2021-12/645003.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122492035138.jpg');
INSERT INTO `zhixun` VALUES (45, '日本一新作《冒险饭》新宣传片公布 明年1月27日发售', '玩家在《啃食尸体的冒险饭》中扮演探索迷宫的冒险者，冒险者可以自定义发型、面孔、声音、职业等。冒险者有职业有“剑士”、“女巫”、“厨师”、“无业”等各种可供选择。可组成最多4人的小队挑战迷宫。', 'https://www.ali213.net/news/html/2021-12/645005.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122484116621.jpg');
INSERT INTO `zhixun` VALUES (46, '脱出ADV+射击《冤罪执行游戏》中文日本版同步上市', '《冤罪执行游戏》这款游戏是一款脱出类角色扮演剧情射击游戏，《狂赌之渊》原作者河本ほむら担当原作·剧本。', 'https://www.ali213.net/news/html/2021-12/645001.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/20211224809288.jpg');
INSERT INTO `zhixun` VALUES (47, '不舍得吃！日本和菓子大神制作“宝可梦”和菓子', '今天跟大家分享的是日本和菓子创作师“ぽん次郎@こねる系ポケモン”创作的《宝可梦》和菓子，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644329.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122483317290.jpg');
INSERT INTO `zhixun` VALUES (48, '正版受害者？玩家吐槽《最终幻想7》Epic版无法启动', '此前PS独占的《最终幻想7：重制过渡版》最近登陆了PC，不过仅限Epic平台，而Epic平台在功能性上比Steam差不少。最近就有玩家反映：明明花了钱买了游戏，结果却启动不了。', 'https://www.ali213.net/news/html/2021-12/644973.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/202112248585819.jpg');
INSERT INTO `zhixun` VALUES (49, '海洋堂公布《怪物猎人》男猎人火龙套装可动手办！', '「海洋堂」是日本著名的模型厂商，近日，这家模型厂商推出了卡普空人气狩猎游戏《怪物猎人》的可动手办新品，非常的帅气无敌，一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/644999.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122473659721.jpg');
INSERT INTO `zhixun` VALUES (50, '生存建造新游《流亡云端》介绍：在高空中重建家园！', '《流亡云端》是一款以灾后高空生存为背景的末日生存、模拟建设RPG游戏，幸存者建造高耸入云的建筑，远离地面危险的丧尸。最近本作已上架Steam平台、预计2022年开始“抢先体验”。今天小编就为大家详细介绍一下这款全新游戏。', 'https://www.ali213.net/news/html/2021-12/644997.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/2021122473305433.jpg');
INSERT INTO `zhixun` VALUES (51, 'ATLUS公布《真女神转生5》原声带  明年3月30日发售', '真·女神转生V（Shin Megami Tensei V）是Atlus游戏公司出版发行的角色扮演游戏，登陆任天堂新主机NS。', 'https://www.ali213.net/news/html/2021-12/644991.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122465803231.jpg');
INSERT INTO `zhixun` VALUES (52, ' 马丽&amp;魏翔《这个杀手不太冷静》新预告：爆笑搭档！', '魏翔饰演的龙套演员用自己的一段台词“倒背如流”脱颖而出，获得了和马丽饰演的女明星米兰搭戏的机会！', 'https://www.ali213.net/news/html/2021-12/644819.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122465646666.jpg');
INSERT INTO `zhixun` VALUES (53, '国产像素解谜游戏《水银疗养院》新预告！明年开众筹', '国产像素风解谜游戏《水银疗养院》发布了新的宣传片，并宣布将于2022年1月开始众筹，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644955.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122470118615.jpg');
INSERT INTO `zhixun` VALUES (54, '《梦魇骑士：重制版》宣布跳票至2022年春季发售！', '本作是开发了《约束之地 利维艾拉》、《公主同盟》等S·RPG作品的日本STING公司制作的NDS新作，游戏世界观与《约束之地 利维艾拉》、《公主同盟》的世界观共通。', 'https://www.ali213.net/news/html/2021-12/644983.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122462840110.jpg');
INSERT INTO `zhixun` VALUES (55, '日系角色扮演RPG游戏《梅里娅与恶鬼之岛》游侠专题站上线', '《梅里娅与恶鬼之岛》是一款非常经典的日系rpg。和平的乡下镇子突然出现了一群奥克、对村民们无恶不作。从乡下镇子的镇长接受了讨伐奥克的委托、见习魔法师少女梅里娅决定拯救镇子把他们从奥克的威胁中拯救出来。', 'https://www.ali213.net/news/html/2021-12/644989.html', '12-24', '小编：渣渣辉', 'https://imgs.ali213.net/news/2021/12/24/2021122464847538.jpg');
INSERT INTO `zhixun` VALUES (56, '动漫《一拳超人》角色真人AI：埼玉老师相当还原！', '现在很多网友似乎对将动漫角色AI真人化非常感兴趣，埼玉老师、杰诺斯、龙卷，闪光等人的形象可谓是很不错！', 'https://www.ali213.net/news/html/2021-12/644967.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122462856671.jpg');
INSERT INTO `zhixun` VALUES (57, '冒险游戏AVG《阴影隔离》游侠专题站上线', '《阴影隔离》是一款第一人称恐怖冒险游戏。 游戏的灵感来自于Stanley Kubrick独具艺术性的叙事风格和视觉效果。这里没有老套的鬼屋游戏情节，所有的恐怖元素都完美的侵入了每一个细节之中。', 'https://www.ali213.net/news/html/2021-12/644987.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122463832141.jpg');
INSERT INTO `zhixun` VALUES (58, '《蜘蛛侠：英雄无归》豆瓣评分8.1 三代同框情怀拉满', '《蜘蛛侠：英雄无归》日前全球票房达到8.14亿美元，同时创烂番茄最高观众口碑纪录，今日，豆瓣开分，目前已有19040人评价，实时评分8.1分，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644961.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122462320531.jpg');
INSERT INTO `zhixun` VALUES (59, '动作ACT游戏《西部牛仔的一生》游侠专题站上线', '在《西部牛仔的一生》里你是一个 19 世纪在蛮荒西部艰难求生的贫穷农夫：你需要冒险。骑在马背上成为一名牛仔，遗憾的是，事情并不这么轻松，因为这条道路上潜藏着许多危险，并且你还不是英雄。', 'https://www.ali213.net/news/html/2021-12/644981.html', '12-24', '小编：游方', 'https://imgs.ali213.net/news/2021/12/24/2021122462111859.jpg');
INSERT INTO `zhixun` VALUES (60, '益智游戏《Satama Puzzle》上架steam 支持简体中文', 'Satama Puzzle是一款轻松的建筑和益智游戏，您将在其中优化卸货港的布局。每个级别都会有三个随机变量评分条件，所以每次都会有新的体验。尝试击败你的分数！', 'https://www.ali213.net/news/html/2021-12/644971.html', '12-24', '小编：GWL', 'https://imgs.ali213.net/news/2021/12/24/2021122453930866.jpg');
INSERT INTO `zhixun` VALUES (61, '《纸嫁衣》系列新作《纸嫁衣3鸳鸯债》新预告公开！', '中式悬疑解谜游戏《纸嫁衣》系列《纸嫁衣3鸳鸯债》今天（12月24日）公开了新的预告，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644953.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122461409834.jpg');
INSERT INTO `zhixun` VALUES (62, '今年10部奥斯卡大热谁将登顶？一键加入待看清单！', '今日，为玩家们整理了10部颁奖季热门影片，还没来得及关注的话，可以一键加入待看清单啦。', 'https://www.ali213.net/news/html/2021-12/644857.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122460759986.jpg');
INSERT INTO `zhixun` VALUES (63, '当《王者荣耀》来到苏州园林', '落地苏州的KPL总决赛，拙政园时间长河中新的盛景。', 'https://www.ali213.net/news/html/2021-12/644977.html', '12-24', '小编：Naglfar', 'https://imgs.ali213.net/news/2021/12/24/2021122461722927.png');
INSERT INTO `zhixun` VALUES (64, 'Xbox独占动作冒险游戏《粘液The Gunk》游侠专题站上线', '《粘液》是一款动作冒险游戏，游戏中，玩家将要在一个广阔奇异的新世界展开冒险，面对恐怖的敌人，挑战不同的谜题，并最终在拯救失落星球的同时揭开谜团。', 'https://www.ali213.net/news/html/2021-12/644975.html', '12-24', '小编：别离我', 'https://imgs.ali213.net/news/2021/12/24/2021122461504254.jpg');
INSERT INTO `zhixun` VALUES (65, '俄妹COS《哈利波特》赫敏 魔法少女另显成熟性感！', '哈利波特》重聚特别节目《回到霍格沃茨》将于明年1月1日正式上映。近日，来自俄罗斯的COSER：KalinkaFox更新了自己的赫敏COS照，相比于原版郝敏风格更加成熟。', 'https://www.ali213.net/news/html/2021-12/644739.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122455657926.jpg');
INSERT INTO `zhixun` VALUES (66, '这个冬促不一般！好评佳作《月影之塔》领衔新史低', '游戏冬季促销如期而至！今年也有大量游戏参与了打折，“特别好评”佳作《月影之塔》更是领衔新史低，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644969.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122455825396.jpg');
INSERT INTO `zhixun` VALUES (67, '赚了200亿的蓝洞，和它“特别好评”的新游戏', '有战术射击的硬核拟真，也有伙伴互坑的乐趣，就像是一个彩虹六号版的“地狱老司机”，如果它不是蓝洞做的，那就更好了。', 'https://www.ali213.net/news/html/2021-12/644963.html', '12-24', '小编：三明', 'https://imgs.ali213.net/news/2021/12/24/2021122452539979.jpg');
INSERT INTO `zhixun` VALUES (68, '奇巧计程车将推剧场版《奇巧计程车 In The Woods》', '《奇巧计程车》官方最近一直在进行神秘倒计时，不过在倒计时终结之前，就有了爆料，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644909.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122453907512.jpg');
INSERT INTO `zhixun` VALUES (69, '前《COD》开发者与索尼合作 将于明年开发全新3A大作', '今年6月，前《使命召唤》开发者组建的新工作室Deviation Games宣布与索尼达成合作协议，将为其打造一款新3A作品，而现在其工作室高管透露，这个新项目将于2022年正式投入开发。', 'https://www.ali213.net/news/html/2021-12/644957.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/2021122451400371.jpg');
INSERT INTO `zhixun` VALUES (70, '《超能一家人》曝推广曲MV 沈腾腾格尔组合魔性舞蹈', '今日，由宋阳执导，艾伦、沈腾主演的开心麻花喜剧电影《超能一家人》公布推广曲MV，由腾格尔、艾伦、沈腾献唱，甚至加上了舞蹈，十分魔性，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644917.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122451639882.jpg');
INSERT INTO `zhixun` VALUES (71, '2021流媒体调查 《新世界》为Twitch最受欢迎游戏', '2021年流媒体调查报告已由Rainmaker.gg和StreamElements发布，根据报告结果显示，直播平台Twitch今年最受欢迎的游戏是《新世界》，不过《新世界》的观众观看时长仅为2.59亿小时，排在Twitch观看次数最多的游戏第18名。', 'https://www.ali213.net/news/html/2021-12/644949.html', '12-24', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/24/2021122451115996.jpg');
INSERT INTO `zhixun` VALUES (72, '日媒揭女生收男友圣诞礼物真心話 节后卖掉的近2成！', '一到圣诞节无论是朋友还是同事，都必定会有交换礼物的头痛环节，但据日媒表示原来史上最坑的礼物竟然大部分都是由伴侣送出！', 'https://www.ali213.net/news/html/2021-12/644945.html', '12-24', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/24/2021122445907793.jpg');
INSERT INTO `zhixun` VALUES (73, 'DC《新蝙蝠侠》制片人：重新定义蝙蝠侠 想超越诺兰', 'DC新片《新蝙蝠侠》将于2022年3月4日正式上映，制片人最近接受了外媒的采访，并在采访中称想重新定义“蝙蝠侠”。', 'https://www.ali213.net/news/html/2021-12/644901.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122450358853.jpg');
INSERT INTO `zhixun` VALUES (74, '山西一对情侣因父母反对婚事而跳楼！不料竟砸到路人', '12月20日，山西长治潞州区金德利摩登时代大楼，事发当晚五点左右，一男一女殉情跳楼，他们从高楼上坠落，由于冲击力太大，两人坠落到地面当场死亡。', 'https://www.ali213.net/news/html/2021-12/644937.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/2021122450034408.jpg');
INSERT INTO `zhixun` VALUES (75, '重口动作游戏《魅魔》新DLC现已推出！圣诞更新将至', '开发商Madmind Studio旗下以地狱为舞台的重口成人游戏《魅魔（SUCCUBUS）》的追加DLC“Demons Of The Past（昔日恶魔）”现已推出。（锁国区）', 'https://www.ali213.net/news/html/2021-12/644855.html', '12-24', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/24/2021122445559180.jpg');
INSERT INTO `zhixun` VALUES (76, '零下47.1度！呼伦贝尔温度再创新低 居民单元门被冰封', '今日（12月24日），内蒙古伦贝尔现极寒天气，有住宅单元门被冰封，居民需要奋力才能推开。', 'https://www.ali213.net/news/html/2021-12/644941.html', '12-24', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/24/2021122445246373.jpg');
INSERT INTO `zhixun` VALUES (77, '这就是传说中的脑垫波吗 动图 到底谁才是卖肉的？', '这个好放屁不会鼓包，这就是传说中的脑垫波吗，3秒内捡起来还能用，再牛的车回来也要拉猪草，食材情绪稳定', 'https://www.ali213.net/news/html/2021-12/644943.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/24/2021122445129558.jpg');
INSERT INTO `zhixun` VALUES (78, '《天命奇御二》更新！加速对话功能上线 修复多个问题', '今天（12月24号），《天命奇御二》官方公布游戏迎来更新，加速对话功能上线，并且修复了多个问题，一起来看下。', 'https://www.ali213.net/news/html/2021-12/644933.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/24/2021122445115819.jpg');
INSERT INTO `zhixun` VALUES (79, '全国最新冰冻线进程图出炉：年末寒潮局地降温超14℃！', '26日我国中东部大部迎来大风降温天气，局地降温超14℃。寒潮过后，冰冻线将推进到入冬以来最南端，上海、杭州、长沙、南昌、贵阳等城市气温将首次跌至冰点。', 'https://www.ali213.net/news/html/2021-12/644931.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122444408572.jpg');
INSERT INTO `zhixun` VALUES (80, '越南造价1500万大桥突然倒塌 网友：还没剪彩就没了', '据媒体报道，越南金瓯省富丹区，当地政府花费540亿越南盾（折合1500万人民币）造的一座桥，还没等到完工剪彩就突然断裂倒塌，无人员伤亡，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644859.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122444509907.jpg');
INSERT INTO `zhixun` VALUES (81, '网飞豪华阵容喜剧《不要抬头》新正片片段公开！', '网飞超豪华阵容喜剧《不要抬头》已经于12月10日在影院上映，官方公开了新的正片片段，该片将于12月24日上线网飞。', 'https://www.ali213.net/news/html/2021-12/644883.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122444207262.jpg');
INSERT INTO `zhixun` VALUES (82, '《无畏契约》官方发布新的更新公告 提前预告新特工', '《无畏契约》官方发布了新的更新公告，公开了2022年的更新计划，还预告了新的特工，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644899.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122442554730.jpg');
INSERT INTO `zhixun` VALUES (83, '爆料苹果将在2022年推出平价iPhoneSE 2500元以内', '今日有外媒报道，称苹果计划在2022年上半年新推出一款廉价版iPhone SE手机。该款iPhone SE可能会搭载苹果A15芯片，且支持5G网络，外观上的设计与之前的iPhone SE保持一致。', 'https://www.ali213.net/news/html/2021-12/644927.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122442610148.png');
INSERT INTO `zhixun` VALUES (84, '在屏幕中逛世界！盘点10部有故事亦有美景的经典电影', '画面与故事，是一部高评价电影不可缺少的，当一部电影二者展现的十分精彩，会是一种完美的享受。本次将盘点10部有故事亦有美景的经典电影，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644841.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122434056661.jpg');
INSERT INTO `zhixun` VALUES (85, '艺术的品味 天野喜孝［PANSA］超限定红酒 清酒开售', '次元摩玩官方宣布，将于日本知名艺术家天野喜孝合作，推出联名限定的四款天野喜孝［PANSA］封绘酒标红酒和清酒，一起来了解一下。', 'https://www.ali213.net/news/html/2021-12/644925.html', '12-24', '小编：何者', 'https://imgs.ali213.net/news/2021/12/24/2021122442330166.jpg');
INSERT INTO `zhixun` VALUES (86, '《花雨旋律》官方公开发售日！2022年1月免费上线', '《花雨旋律》官方宣布，该作将于2022年1月正式发售，并发布了新的宣传片，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644833.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122441501454.jpg');
INSERT INTO `zhixun` VALUES (87, '爆米花99%！《蜘蛛侠3》创烂番茄最高观众口碑纪录！', '　圣诞假期将至，《蜘蛛侠：英雄无归》无疑会在这个节日拿下更多票房，敬请期待！', 'https://www.ali213.net/news/html/2021-12/644915.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/24/2021122441010307.jpg');
INSERT INTO `zhixun` VALUES (88, '100篇文章带你读懂元宇宙：元宇宙的到来让哪些产业火了起来？', '元宇宙可以说是2021年最火的概念，覆盖了各行各业，那么到底什么才是元宇宙，元宇宙又会带来什么呢？第99篇我们来了解一下，元宇宙的到来让哪些产业火了起来？', 'https://www.ali213.net/news/html/2021-12/644863.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/202112244073682.jpg');
INSERT INTO `zhixun` VALUES (89, '男子放风筝不松手被带到10米高空！网友：你想上天？', '年底了各种奇葩事件频出。近日，据外媒报道，位于斯里兰卡的一名男子在和朋友放巨型风筝时，因为没松开手，被风筝带到十米多的高空中。这次真的玩大了。', 'https://www.ali213.net/news/html/2021-12/644887.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122434919875.jpg');
INSERT INTO `zhixun` VALUES (90, '怎么区分机械硬盘是空气盘还是氦气盘？看完你就懂了', '机械硬盘的内部有着非常精密的零件，但是你知道它们有多精密吗？磁头在工作时和盘片之间的距离在0.3μm以内。', 'https://www.ali213.net/news/html/2021-12/644913.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122419223456.jpg');
INSERT INTO `zhixun` VALUES (91, '玩《幻塔》必去的地方 能玩过山车与摩天轮 头像框', '自从《幻塔》正式公测之后，关于这款游戏的讨论也是一天比一天热，如今过去快一周时间，讨论焦点也从开服当天的热度，延伸到了游戏中有哪些值得观光打卡的地方。而这其中，漂浮在天空之中的“白鲸岛”，绝对是第一选择。', 'https://www.ali213.net/news/html/2021-12/644885.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122435100394.jpg');
INSERT INTO `zhixun` VALUES (92, '360推出全新“无追”搜索引擎：广告少 不追踪用户隐私', '相信经常在互联网冲浪的你一定会经常使用，那你知道国内常用的搜索引擎都有哪些吗？近日，360又推出了全新的无追搜索引擎。目前来看干净简洁，广告不多，而且承诺不追踪用户隐私。', 'https://www.ali213.net/news/html/2021-12/644907.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/202112243454038.png');
INSERT INTO `zhixun` VALUES (93, '军装御姐却怕猫?《幻塔》“初代CP”高冷的梅丽尔', '小伙伴们看到《幻塔》最新的拟态角色克劳迪娅了没？这波儿项目组真的是牛啊，不愧是第一个UP池，单单说军装、御姐的外形，有几个人能不心动的！', 'https://www.ali213.net/news/html/2021-12/644895.html', '12-24', '小编：刹那·F·赛耶', 'https://imgs.ali213.net/news/2021/12/23/2021122322176400.jpg');
INSERT INTO `zhixun` VALUES (94, '2021年你玩过的新游戏里，有让你直呼“神作”的吗？', '2021年眼看着就要过去了，在这个平安夜，和我们聊聊你的“年度神作”吧！', 'https://www.ali213.net/news/html/2021-12/644903.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122433320854.png');
INSERT INTO `zhixun` VALUES (95, '合法但别做的几件事引热议：穿婚纱去参加别人婚礼？', 'Reddit上热议话题“什么事情是合法的，但如果你这样做，就会看起来像个变态？”', 'https://www.ali213.net/news/html/2021-12/644893.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/23/2021122321709914.jpg');
INSERT INTO `zhixun` VALUES (96, '《大镖客2》细节有多震撼？燃烧瓶碎片能够折射火光！', 'Reddit上一位叫做Veporyzer的玩家发布了一小段视频，展示了他投掷出燃烧瓶，在爆炸的一瞬间，迅速切换到照相模式的冻结时间下，对燃烧瓶移动视角近距离观察。', 'https://www.ali213.net/news/html/2021-12/644847.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/23/2021122335695653.jpg');
INSERT INTO `zhixun` VALUES (97, '《死亡循环》PS限时独占将在明年9.14结束！或登XGP', '《死亡循环》在2020年的E3索尼展台上公布，最初是一款索尼独占游戏，但随着B社被微软收购，它成为了最后一款索尼独占的游戏作品，而最新的消息显示它在或将在明年9月14号结束独占，并登陆XBOX平台。', 'https://www.ali213.net/news/html/2021-12/644867.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122432635388.jpg');
INSERT INTO `zhixun` VALUES (98, '《幻塔》执行者 曾是首席身份 能和斯嘉丽打平手？', '这几天玩《幻塔》，大家有没有眼馋过艾达之子的几个“赦免天使”？最早是拿着紫红色长刀的斯嘉丽，后来是半机甲装备出场的伊希斯，都给人一种很强的感觉。', 'https://www.ali213.net/news/html/2021-12/644879.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122432021703.jpg');
INSERT INTO `zhixun` VALUES (99, '原神外服玩家自创5星盾牌 造型以假乱真 老玩家都看岔眼了', '原神海外二创有多强？自制盾牌与动画，都达到了以假乱真的地步', 'https://www.ali213.net/news/html/2021-12/644873.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122431222559.jpg');
INSERT INTO `zhixun` VALUES (100, '育碧《舞力全开》国行版一周年 登录领取纪念限定头像', '今天，育碧中国宣布《舞力全开》国行版迎来了自己的一周年生日。育碧开启了丰富的一周年活动，感谢广大玩家的支持与喜爱。即日起至1月20日，只需登录游戏，即可领取1周年限定头像！', 'https://www.ali213.net/news/html/2021-12/644869.html', '12-24', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/24/2021122431244930.jpg');
INSERT INTO `zhixun` VALUES (103, '《刀剑神域》亚丝娜水晶礼服手办 红色深V性感美丽', '日本厂商eStream将推出剧场版《刀剑神域-进击篇-无星之夜的咏叹调》中的亚丝娜水晶礼服1/7手办，亚丝娜身穿红色深V水晶礼服格外性感美丽。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644853.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/2021122424924838.jpg');
INSERT INTO `zhixun` VALUES (104, '最卖座好莱坞大片！《蜘蛛侠3》全球票房年度第三！', 'Fami通是日本非常权威的游戏媒体，而现在，2021年Fami通电击游戏大奖的投票已经正式开启了！让我们一起来了解下详情吧！', 'https://www.ali213.net/news/html/2021-12/644835.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122425037748.jpg');
INSERT INTO `zhixun` VALUES (105, '凤凰游戏双旦特惠 惊喜秒杀《仙剑7》仅需85元', '《蜘蛛侠：英雄无归》全球票房超8亿，超过了《007无暇赴死》成为今年最卖座的好莱坞电影。', 'https://www.ali213.net/news/html/2021-12/644865.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/20211224111956491.jpg');
INSERT INTO `zhixun` VALUES (106, '卡普空曾拒绝《洛克人ZX 3》计划 部分设计用于后续作品', '凤凰游戏双旦特惠正在火热进行中，快来一起看看今日凤凰游戏又为各位玩家带来什么样的劲爆厚礼吧!', 'https://www.ali213.net/news/html/2021-12/644845.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/24/2021122423337137.jpg');
INSERT INTO `zhixun` VALUES (107, '《艾尔登法环》新老婆来啦！旁白小姐姐 同人画赏！', '开发了《洛克人》系列多部游戏的Inti Creates工作室近日透露，他们曾经也试图开发《洛克人ZX》的第三部作品，但该项目最终被卡普空内部取消了。', 'https://www.ali213.net/news/html/2021-12/644843.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/24/2021122422911359.jpg');
INSERT INTO `zhixun` VALUES (108, '英特尔确认正在开发挖矿显卡 但挖矿不是首要目标', '距离《艾尔登法环》发售正好还有2个月了，随着《艾尔登法环》在2021TGA上公布的新预告，玩家们早已急不可耐，而这只预告中的“新老婆”——旁白小姐姐，最受瞩目，现在有很多粉丝开始创作 旁白小姐姐 的同人画，一起来欣赏下吧', 'https://www.ali213.net/news/html/2021-12/644827.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122421949301.jpg');
INSERT INTO `zhixun` VALUES (109, '《蜘蛛侠：英雄无归》曝三代蜘蛛侠同框图 齐射蛛丝', 'Intel DG2 Alchemist游戏独立显卡的脚步越来越近，不仅有许多第三方爆料，连英特尔官方都等不及了。Intel显卡业务主管Raja Koduri在接受采访时，就一次性爆出大量猛料！', 'https://www.ali213.net/news/html/2021-12/644839.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122422240173.jpg');
INSERT INTO `zhixun` VALUES (110, 'NS日常新闻 Deemo曲包更新 闪轨4浪漫沙加2中文发售', '《蜘蛛侠：英雄无归》全球票房已超8亿，最大爆点三虫同框已经不再是秘密了，如今官方周边也已经将三代蜘蛛侠同框印在了商品上，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644849.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122421458475.jpg');
INSERT INTO `zhixun` VALUES (111, 'AMD展示FSR技术：《战神》4K可57帧很流畅运行！', 'AMD官方于今日公布了FSR技术全新展示视频，该次演示是在Radeon RX 6800 XT上运行的！', 'https://www.ali213.net/news/html/2021-12/644829.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122420358554.jpg');
INSERT INTO `zhixun` VALUES (112, '机甲策略新作《Relayer》跳票！第二弹中文宣传片赏', '云豹娱乐公布了由角川游戏制作的PS5/PS4平台机甲SRPG新作《Relayer（传承者）》的第二弹中文宣传片，让我们一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/644831.html', '12-24', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/24/2021122420034203.png');
INSERT INTO `zhixun` VALUES (113, '圣诞漫威之旅《漫威复仇者》MCU装束重温经典', '此时聚焦于漫威复仇者联盟，并在不久前刚刚迎来蜘蛛侠加入的游戏《漫威复仇者》也开启了圣诞狂欢活动，多款超级英雄经典皮肤登场，助力玩家畅游漫威宇宙，即刻前往Steam加入体验！', 'https://www.ali213.net/news/html/2021-12/644837.html', '12-24', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/24/2021122415311640.jpg');
INSERT INTO `zhixun` VALUES (114, 'Kotaku盘点2021角色扮演游戏：超四分之一都是重制版', '在2021年的尾声，外媒Kotaku盘点了2021年度优秀的17款角色扮演游戏。在这份榜单中，有超过四分之一的游戏是重制版本，比如2019年年度游戏《极乐迪斯科》，但也有一些非常令人喜悦与惊叹的原创作品的首次登场。', 'https://www.ali213.net/news/html/2021-12/644767.html', '12-24', '小编：lynn', 'https://imgs.ali213.net/news/2021/12/24/2021122413835500.jpg');
INSERT INTO `zhixun` VALUES (115, '肖央 任达华《误杀2》票房破5亿元 连获单日票房冠军', '近日据媒体报道，已于12月17日正式上映的由肖央主演的电影《误杀2》票房突破5亿。影片另有任达华、文咏珊、陈雨锶、宋洋、李治廷出演。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644815.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/20211224113910364.jpg');
INSERT INTO `zhixun` VALUES (116, 'MIUI13新功能曝光：新增妙享中心让全局设备互联互通', '小米社区APP更新了MIUI13妙享中心的内测，不过暂时无法使用。根据内测页面的介绍，MIUI 13的妙享中心实现了全局设备的互联互通，用户可以在多台小米的设备之间相互联通，从而体验影音、应用的跨设备使用。', 'https://www.ali213.net/news/html/2021-12/644773.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122412327838.jpg');
INSERT INTO `zhixun` VALUES (117, '和风恐怖游戏新作《闭店事件》上架Steam！明年发售', 'Chilla\'s Art发表了和风恐怖游戏新作《闭店事件（The Closing Shift）》，现已上架Steam。', 'https://www.ali213.net/news/html/2021-12/644751.html', '12-24', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/24/2021122412121167.jpg');
INSERT INTO `zhixun` VALUES (118, '日本商店出现《GT赛车7》宣传册！透露本作部分细节', '近日在日本的一家商店中，发现了《GT赛车7》的宣传手册，推特用户bookkyamp在网上分享了这本小册子的一些照片，其中揭示了这款新作的一些细节。', 'https://www.ali213.net/news/html/2021-12/644787.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/24/20211224120532780.jpg');
INSERT INTO `zhixun` VALUES (119, '百度起诉“百度烤肉”涉不正当竞争：终获赔230万元', '近日据媒体报道，百度公司诉“百度烤肉”不正当竞争、侵害商标权一案，法院判决北京京百度餐饮公司等五公司赔偿百度公司经济损失及合理支出230余万元。', 'https://www.ali213.net/news/html/2021-12/644813.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/20211224115201960.jpg');
INSERT INTO `zhixun` VALUES (120, '圣诞老人也要预约抢购PS5？囧图 白丝小姐姐美腿修长', '每日的爆笑囧图又和大家见面啦！圣诞节大家都想要PS5，看起来圣诞老人也要预约抢购PS5了！另外，白丝小姐姐的美腿真是修长啊。', 'https://www.ali213.net/news/html/2021-12/644783.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/20211224114404413.png');
INSERT INTO `zhixun` VALUES (121, '国产恐怖游戏《迷禁》Steam冬促五折 揭开古老谜团！', '国产恐怖游戏正在打折，赶紧来看一看吧', 'https://www.ali213.net/news/html/2021-12/644825.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/20211224113335972.jpg');
INSERT INTO `zhixun` VALUES (122, '《最后生还者2》西雅图的街机厅已在现实世界里关闭', '玩过《最后生还者2》（美国末日2）的玩家可能会记得，在西雅图有一家街机厅。其实它是根据现实里的店面设计的，而这家街机厅已经关闭。这个街机厅叫Gameworks，是美国比较知名的连锁游戏店。', 'https://www.ali213.net/news/html/2021-12/644817.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/20211224111101415.png');
INSERT INTO `zhixun` VALUES (123, '最高2.5折！Switch美日服开启独立游戏假日特卖活动', '日前，Switch日服开启独立游戏假日特卖活动，最高5折，优惠截止到12月26日；同时，美服也开启同样的活动，最高2.5折，截止到12月31日。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644795.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/20211224110931430.jpg');
INSERT INTO `zhixun` VALUES (124, '《GTFO》热销！盘点10款百玩不厌的恐怖/射击游戏', '《GTFO》的再度热销引起广泛讨论。那么恐怖/射击类游戏是怎样吸引玩家，又有哪些经典的恐怖游戏值得推荐呢？让我们从《GTFO》开始，回忆那些恐怖游戏佳作吧!', 'https://www.ali213.net/news/html/2021-12/644823.html', '12-24', '小编：小蛙', 'https://imgs.ali213.net/news/2021/12/24/20211224100447430.jpg');
INSERT INTO `zhixun` VALUES (125, '2021Twitch观时最高游戏公布！竟是R星已发售8年辣款！', '都2021年了，我们还是没能等到R星官宣《GTA6》发布的消息，直到今天R星那款已经发售了8年的游戏还一直在创造着记录。据统计，2021年Twitch直播游戏区时长最多的就是“R星辣款游戏”', 'https://www.ali213.net/news/html/2021-12/644809.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/24/20211224110316556.jpg');
INSERT INTO `zhixun` VALUES (126, '国产游戏稳步向前！2021年最值得游玩的15款国产游戏', '由杉果出品的2021年系列游戏盘点已经来到了第七期，不知道屏幕前的各位对于前六期是否满意呢?本期将给各位带来由编辑部同事们共同评选出来的2021年15款国产佳作。', 'https://www.ali213.net/news/html/2021-12/644811.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122410324949.jpg');
INSERT INTO `zhixun` VALUES (127, '剑走偏锋！赛马奇葩名和难念名：猫咪拳？鼓起的钱包？', '　如今，因为手游《赛马娘 PrettyDerby》的爆红，日本的赛马领域又受到了关注。', 'https://www.ali213.net/news/html/2021-12/644803.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122410405447.jpg');
INSERT INTO `zhixun` VALUES (128, '安卓13爆料：音频功能升级:音质更好延迟更少功耗更低', '今天（12月24日）知名爆料人@Mishaal Rahman在推特透露，安卓13将会完全支持LE Audio（低功耗音频）。据悉，LE Audio与现有的Classic Audio相比，音质更好、延迟更低和功耗更少。', 'https://www.ali213.net/news/html/2021-12/644801.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/20211224104425825.png');
INSERT INTO `zhixun` VALUES (129, '凛冬已至！2K热门游戏促销活动 各大平台火热进行中', '2021年即将过去，但游戏促销的脚步却不会停止，现在2KGames在各大游戏平台开启了冬季游戏促销，以及相关的福利活动。', 'https://www.ali213.net/news/html/2021-12/644805.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/20211224103133434.png');
INSERT INTO `zhixun` VALUES (130, '谢霆锋凭《怒火·重案》获最佳男主角 现场感谢导演', '日前，据媒体报道，12月23日，第13届澳门国际电影节颁奖礼，谢霆锋凭《怒火·重案》获最佳男主角。现场感谢最佳导演陈木胜，让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644793.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/20211224103748927.jpg');
INSERT INTO `zhixun` VALUES (131, '艺术家虚幻引擎5重制《半条命2》！超逼真演示公布', '两位艺术家（游戏开发者）目前正在使用虚幻5引擎制作一款《半条命2》的粉丝重制游戏，这个重制项目名为「Freeman」，项目的目标是让《半条命2》这款经典FPS游戏的画面符合现代游戏的标准。让我们一起来看看游戏的预告片吧！', 'https://www.ali213.net/news/html/2021-12/644757.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/20211224102256912.jpg');
INSERT INTO `zhixun` VALUES (132, '交换挑战！美国女子用发夹换到房子：28次以物换物！', '旧金山的30岁女性DemiSkipper用一根1美分的发卡以物换物最后换到了80000美元的房子。', 'https://www.ali213.net/news/html/2021-12/644807.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/20211224102520630.jpg');
INSERT INTO `zhixun` VALUES (133, '玩家展示虚幻5引擎下的雪漫城！粉丝请求B社官方重制', 'Reddit用户Battlefront_Captures分享了一张来自《上古卷轴5天际》中雪漫城在虚幻引擎5中的样子。这张图片引起了《天际》粉丝的极大关注，自发布以来获得了超过23000人的点赞。\r\n\r\n', 'https://www.ali213.net/news/html/2021-12/644781.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/24/20211224102409746.jpg');
INSERT INTO `zhixun` VALUES (134, '咒怨导演新片《牛首村》海报 木村拓哉女儿大秀美背', '日前，由《咒怨》导演清水崇执导的恐怖电影新作《牛首村》公布最新海报。18岁的木村光希身穿露背长裙伫立窗前，影片将于2022年2月18日在日本上映。', 'https://www.ali213.net/news/html/2021-12/644779.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/20211224102354379.jpg');
INSERT INTO `zhixun` VALUES (135, 'PS4和PS5好玩的独占游戏 这25款游戏“装机必备”', 'PS独占游戏能上PC的确是一件好事，那么本期就让我们来看一下，索尼手上还有哪些独占游戏吧！', 'https://www.ali213.net/news/html/2021-12/644799.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/20211224100106769.jpg');
INSERT INTO `zhixun` VALUES (136, '中国青年结婚年龄不断推迟：30岁以上占比大幅提升', '近日，媒体统计并从人口年龄角度分析2005年以来历年结婚年龄结构的变化。数据显示，2010年以来，30岁以上年龄段呈现大幅增长趋势。让我们一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644745.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122495945471.jpg');
INSERT INTO `zhixun` VALUES (137, '全国“冻哭”预警地图来了！东北地区直接冻“裂开”！', '据中国天气气象台报道，入冬以来最冷寒潮来袭，预计五天内（24~28），我国八成地区迎来大降温，27个省市区陆续会刷新下半年来的最低气温纪录，中国天气网还贴心的制作了一张“冻哭”预警GIF图，随着“冻哭线”的变化，来看下你哪天会被冻哭吧。', 'https://www.ali213.net/news/html/2021-12/644791.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/24/20211224100250128.jpg');
INSERT INTO `zhixun` VALUES (138, '和《王者荣耀》去亚运', '即将到来的亚运与新时代的竞技精神。', 'https://www.ali213.net/news/html/2021-12/644797.html', '12-24', '小编：Naglfar', 'https://imgs.ali213.net/news/2021/12/24/2021122495202625.jpg');
INSERT INTO `zhixun` VALUES (139, '《海贼王》1034话：路飞的新技能怪鸟铳击倒凯多！', '凯多与路飞激战中：路飞被凯多的狼牙棒击中，凯多被路飞的橡皮橡皮怪鸟枪击中，两人倒下，然后笑着站起身。', 'https://www.ali213.net/news/html/2021-12/644789.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122492841659.jpg');
INSERT INTO `zhixun` VALUES (140, '夜晚不想睡早晨不想起？你可能有睡眠时相延迟综合征', '12月底全国各地都变得有些寒冷，有些地区还早早地下起了鹅毛大雪。冷风刺骨，作为打工人的你在起床时有没有感到心累乏力？有谁不想赖个床在温暖的被窝里多待上十几分钟呢？', 'https://www.ali213.net/news/html/2021-12/644771.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122494737456.png');
INSERT INTO `zhixun` VALUES (141, '真有学校教人打电竞？日本涩谷电竞高中明年春季开学', '今年四月，随着日本各地初中生进入高中阶段，一所名为“Esport Koutou Gakuin”（电竞高中）的学校即将开始招生。这所学校得到日本电信巨头NTT的电子竞技队伍以及日本职业足球队Tokyo Verdy拥有的电子竞技队伍的支持。', 'https://www.ali213.net/news/html/2021-12/644777.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/24/2021122494830634.jpg');
INSERT INTO `zhixun` VALUES (142, '《星际公民》Alpha 3.16更新上线：加入全新PvP活动', 'Cloud Imperium宣布《星际公民》Alpha 3.16更新「回到Jumptown」现已上线，这个更新补丁为游戏加入了最新的动态活动「Jumptown 2.0」。一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/644765.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/2021122493800959.jpg');
INSERT INTO `zhixun` VALUES (143, '特斯拉被调查后妥协！司机开车时不能用中控屏玩游戏！', '　正在特斯拉想以在开车时玩游戏为宣传手段时，美国汽车安全监管机构（NHTSA）介入了调查，迫于压力，特斯拉同意停止在车辆行驶时允许司机在中央触摸屏玩游戏。', 'https://www.ali213.net/news/html/2021-12/644785.html', '12-24', '小编：每天都好困', 'https://imgs.ali213.net/news/2021/12/24/2021122492832266.jpg');
INSERT INTO `zhixun` VALUES (144, '取消限速后8家网盘实测对比 百度网盘青春版太敷衍', '工信部在上个月发布了通知，要求各大网盘必须保证免费用户的基本下载和上传速率。随后没过几天，工信部又组织了包括百度网盘、阿里云盘、天翼云盘、迅雷云盘在内的 8 家网盘企业共同签署自律公约，以此来确保网盘的服务质量。', 'https://www.ali213.net/news/html/2021-12/644761.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122492601446.png');
INSERT INTO `zhixun` VALUES (145, '《艾尔登法环》新影像赏！扭曲的土地升起失意的低语', '《艾尔登法环（Elden Ring）》官方推特公布了一段新影像，让我们一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/644743.html', '12-24', '小编：Kanon', 'https://imgs.ali213.net/news/2021/12/24/2021122492324379.jpg');
INSERT INTO `zhixun` VALUES (146, '广电总局：要求外籍演员或工作人员应添加国籍标注', '22日，广电总局在官网公示《电视剧母版制作规范》广播电视和网络视听行业标准报批稿。其中要求外籍演员或工作人员应添加国籍标注，港澳台添加相应区域标注。', 'https://www.ali213.net/news/html/2021-12/644741.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/202112249204293.jpg');
INSERT INTO `zhixun` VALUES (147, '前后两作《地平线》埃洛伊截图对比！新作细节更加突出', '《地平线：西部禁域》正在成为PS4和PS5上最好看的游戏之一，凭借着更好的技术和全新的方向，开发商在《地平线：西部禁域》中对主角埃洛伊的设计进行了一些修改。', 'https://www.ali213.net/news/html/2021-12/644769.html', '12-24', '小编：阿归', 'https://imgs.ali213.net/news/2021/12/24/2021122491455711.jpg');
INSERT INTO `zhixun` VALUES (148, 'Fami一周销量榜：《宝可梦:钻石/珍珠》连续5周第一！', '日本Famitsu发布了日本最新一周的实体游戏软硬件销量榜单（2021年12月13日至2021年12月19日）。一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/644775.html', '12-24', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/24/2021122490640155.jpg');
INSERT INTO `zhixun` VALUES (149, '广电对电视剧时长做出要求 严禁过多重复无意义片段', '刻意拖时长的电视剧你看过吗？小编第一个想到的就是《西游记后传》，将某个打斗片段镜像之后三重循环，直接做出了鬼畜的效果。更有甚者，每集的结尾部分和下一集的开头部分完全重合达数分钟，妥妥的浪费时间。', 'https://www.ali213.net/news/html/2021-12/644763.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122485723616.png');
INSERT INTO `zhixun` VALUES (150, '《真三国无双8帝国》Steam褒贬不一 售价高 内容不足', '《真三国无双8：帝国（Shin Sangokumusou 8: Empires）》已于昨日在Steam正式开售，目前Steam玩家评价褒贬不一，大多认为本游戏内容不足，画质太差，售价高。', 'https://www.ali213.net/news/html/2021-12/644747.html', '12-24', '小编：第三卫', 'https://imgs.ali213.net/news/2021/12/24/2021122485353184.jpg');
INSERT INTO `zhixun` VALUES (151, '2022年1月Xbox金会员免费游戏 三款射击和一款生存', '微软于今日公布了Xbox金会员1月份免费游戏《神经空》、《搁浅》、《闪亮银枪》和《太空侵略者：无限基因》。根据它们在Xbox商店的原价计算，1月份送出的游戏总价值为53.96美元。', 'https://www.ali213.net/news/html/2021-12/644755.html', '12-24', '小编：浮梦', 'https://imgs.ali213.net/news/2021/12/24/2021122484307806.png');
INSERT INTO `zhixun` VALUES (152, '网友分享章子怡17岁vs42岁：今昔对比美人未迟暮！', '章子怡在微博晒出证件照，42岁的她被网友大赞，相比于年轻时的清新动人，42岁的她气质成熟，魅力十足。', 'https://www.ali213.net/news/html/2021-12/644505.html', '12-24', '小编：叶裕司', 'https://imgs.ali213.net/news/2021/12/24/2021122481300725.jpg');
INSERT INTO `zhixun` VALUES (153, 'SE将于2022年3月推出《巴比伦的陨落》的游戏原声碟', 'SE公司将在明年推出《巴比伦的陨落》的游戏内容，如今史克威尔还宣布将于2022年3月9日推出游戏《巴比伦的陨落》的原声碟。这款CD预计售价47.99美元目前已经在北美史克威尔艾尼克斯商店预售。', 'https://www.ali213.net/news/html/2021-12/644733.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122440303438.jpg');
INSERT INTO `zhixun` VALUES (154, '《完美的一天》官方消息：游戏将于明年2月25日发布', '由Perfect Day Studio开发发行的游戏《完美的一天》最近发布了正式公告。游戏官博宣布《完美的一天》将于2022年2月25日正式发售。该游戏目前在Steam上有试玩版，感兴趣的小伙伴千万不要错过。', 'https://www.ali213.net/news/html/2021-12/644731.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/2021122435246486.jpg');
INSERT INTO `zhixun` VALUES (155, '腾讯游戏安全活动月开启 用户可免费改《英雄联盟》ID', '不少《英雄联盟》选手在新赛季转会后都改了自己在韩服的ID。如今腾讯推出了2021年游戏安全月活动，该活动从12月23日起持续到2022年1月23日晚上11:59，参与活动的玩家可以在活动页面，进行一次免费的游戏ID更改，其中包括《英雄联盟》游戏。', 'https://www.ali213.net/news/html/2021-12/644737.html', '12-24', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/24/202112243355198.jpg');
INSERT INTO `zhixun` VALUES (156, '索尼《神秘海域》电影最新预告片！环球寻宝大冒险', '索尼影业《神秘海域》电影即将在2022年2月18日正式上映，今日官方发布了它的第二段正式预告片，为了伟大宝藏而展开的竞争就要来了…前提是他们得先在对方手里活下来。一起来看看吧~', 'https://www.ali213.net/news/html/2021-12/644735.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/24/20211224123001710.jpg');
INSERT INTO `zhixun` VALUES (157, 'Epic冬促喜加一第8弹：动作RPG《吸血鬼》免费领！', 'Epic游戏商城“假日特卖”目前正在进行中，除了超值特价和无限优惠券外，连续15天、每天限时24小时还有一款免费游戏。此前已经送出了7款免费游戏，而今天（12月24日）的喜加一游戏现在也解锁了——动作RPG《吸血鬼》免费领！', 'https://www.ali213.net/news/html/2021-12/644651.html', '12-24', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/20211223111152901.jpg');
INSERT INTO `zhixun` VALUES (158, '宣传有误!小米被罚2万元 因Redmi K30 5G违反广告法', '前不久被用户追究“HDMI虚标”问题的小米，如今因为另一个标识被罚款。据悉，小米通讯技术有限公司近日因违反《中华人民共和国广告法》而增添一则行政处罚信息。', 'https://www.ali213.net/news/html/2021-12/644715.html', '12-23', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/23/20211223103340331.jpg');
INSERT INTO `zhixun` VALUES (159, 'GOG“喜加五”第3弹：免费领点击游戏《无声狂啸》！', 'GOG冬季促销目前正在进行中。此前他们已经送出了《影子战术：将军之刃》和《巫师好礼合集》，而今天（12月23日），GOG“喜加五”第3弹正式解锁——免费领取《无声狂啸》，限时48小时。', 'https://www.ali213.net/news/html/2021-12/644649.html', '12-23', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/20211223102920311.jpg');
INSERT INTO `zhixun` VALUES (160, '横尾太郎宣布《尼尔》系列完结：', '近日，《尼尔》官方发布了一段节日问候视频，系列制作人齐藤阳介、横尾太郎等人在其中亮相，横尾太郎表示：“我们今天在此宣布：《尼尔》系列已经完结了！”', 'https://www.ali213.net/news/html/2021-12/644727.html', '12-23', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/2021122310054828.jpg');
INSERT INTO `zhixun` VALUES (161, '美照尺度太大被封号！俄罗斯超辣正妹Renata美照赏', '今天跟大家分享的是俄罗斯正妹模特“Renata Valliulina”的美照，她曾因为分享的美照太辣而被官方封号，一起来欣赏吧。', 'https://www.ali213.net/news/html/2021-12/641595.html', '12-23', '小编：何者', 'https://imgs.ali213.net/news/2021/12/23/2021122394539495.jpg');
INSERT INTO `zhixun` VALUES (162, '万代推出《海贼王》和之国第一美女 光月日和景品手办 ', '随着《海贼王》和之国篇接近尾声，万代方面也是积极的推出和之国系列的手办，此次推出的便是”和之国第一美女“光月日和的景品手办，日和身穿非常日常的装扮，浅粉色的和服搭配紫色头花和同色调的花纹，即使没有盛装也显得的明艳动人。', 'https://www.ali213.net/news/html/2021-12/644717.html', '12-23', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/23/2021122393245432.jpg');
INSERT INTO `zhixun` VALUES (163, '新游戏《幻想三国志-天元异事录》已上架Steam页面！', '近日，宇峻奥丁在Steam平台上架了最新游戏《幻想三国志-天元异事录》，这是“幻想三国志”系列的全新篇章，将带领玩家再次体验人神仙妖魔共存，虚实交织的世界。目前它尚未确定发售时间，而根据Steam显示，它似乎是一款免费游戏。', 'https://www.ali213.net/news/html/2021-12/644725.html', '12-23', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/202112239243256.jpg');
INSERT INTO `zhixun` VALUES (164, '不黑的黑暗角色！说到“影”就想到的动漫角色TOP10', '日媒最近发起了新的投票榜单，票选说到“黑暗、黑影、阴暗”的时候会想到的角色，一起来看看都有谁上榜了吧。', 'https://www.ali213.net/news/html/2021-12/644373.html', '12-23', '小编：何者', 'https://imgs.ali213.net/news/2021/12/23/2021122385359916.jpg');
INSERT INTO `zhixun` VALUES (165, '《光环：士官长合集》纪念饰品上线 皮肤,背包应有尽有', '随着《光环：无限》新活动的开启，《光环：士官长合集》周年纪念饰品也在今天正式上线了，此次纪念品将包括一个 Xbox 主题的背包、一个经典黑绿配色的马格南皮肤，和一个可装备的咕噜兽毛绒玩具。', 'https://www.ali213.net/news/html/2021-12/644713.html', '12-23', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/23/2021122384452460.jpg');
INSERT INTO `zhixun` VALUES (166, '李佳琦被浙江消保委点名！双十一多位带货主播涉违规', '根据报道，浙江省消保委近日约谈了淘宝、拼多多、京东、快手、抖音五个平台和17位带货主播，多位主播在今年双十一期间涉嫌违规。', 'https://www.ali213.net/news/html/2021-12/644719.html', '12-23', '小编：何者', 'https://imgs.ali213.net/news/2021/12/23/2021122380922133.jpg');
INSERT INTO `zhixun` VALUES (167, '《廖添丁》发行商冬促跳楼大甩卖 参与活动还送key！', '一年一度的Steam冬促即将开始，除了能以史低价买到心仪的游戏外，各家发行商也开始做活动。发行过《失落城堡》、《廖添丁：绝代凶贼之末日》的游戏发行商Neon Doctrine趁着冬促做了一波大的，除了全线游戏史低促销外，还未发售的新游戏也趁机开启试玩。', 'https://www.ali213.net/news/html/2021-12/644723.html', '12-23', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/2021122381151197.jpg');
INSERT INTO `zhixun` VALUES (168, '动画《地球外少年少女》预发布告 预计明年1月28日上线', 'Netflix原创并由矶光雄担任原作·监督·编剧的动画《地球外少年少女》，近日正式发布了预告和视频，该动画将于2022年1月28日在Netflix平台独家上线，共6集。', 'https://www.ali213.net/news/html/2021-12/644711.html', '12-23', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/23/2021122380641992.jpg');
INSERT INTO `zhixun` VALUES (169, '《真三国无双8:帝国》二十九项修改器发布！畅爽无双', '《真三国无双8：帝国》近日已正式发售。本作既有动作战斗要素，也有策略经营要素，玩起来还是有点复杂的，所以今天为大家带来《真三国无双8：帝国》二十九项修改器，让你的游戏体验更加爽快！', 'https://www.ali213.net/news/html/2021-12/644721.html', '12-23', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/2021122375435230.jpg');
INSERT INTO `zhixun` VALUES (170, '姑姑啊过儿找得你好苦！动图 静静和左轮山猫合体了？', '无法拒绝的黄色，我看不懂但大受震撼，静静跟左轮山猫合体了，小狐狸来报恩了吗，我的钢门竟被猪拱了，阿姨洗奥特曼。', 'https://www.ali213.net/news/html/2021-12/644653.html', '12-23', '小编：笛音', 'https://imgs.ali213.net/news/2021/12/23/2021122372434286.jpg');
INSERT INTO `zhixun` VALUES (171, '陈露被抓！霍尊前女友涉嫌敲诈被采取刑事强制措施', '根据报道，歌手霍尊的前女友陈露近日因为涉嫌勒索敲诈被上海警方采取强制措施，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644709.html', '12-23', '小编：何者', 'https://imgs.ali213.net/news/2021/12/23/2021122371139476.jpg');
INSERT INTO `zhixun` VALUES (172, '模拟经营新作《Power to the People》上架Steam！', '模拟建造新作《Power to the People》近日已经上架Steam，并将于2022年2月正式发售，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644685.html', '12-23', '小编：何者', 'https://imgs.ali213.net/news/2021/12/23/202112236502170.jpg');
INSERT INTO `zhixun` VALUES (173, '冒险游戏AVG《克劳沃特失落的殖民地》游侠专题站上线', '在《克劳沃特：失落的殖民地》游戏中，年轻的冒险家休·雷德克里夫正在探寻世界上最伟大的谜团之一：失落的殖民地。跟海盗们打交道，深入当地的仪式，揭露惊天阴谋，在探寻真相的艰难旅途之后做出抉择！', 'https://www.ali213.net/news/html/2021-12/644707.html', '12-23', '小编：游侠新闻组', 'https://imgs.ali213.net/news/2021/12/23/2021122364805432.jpg');
INSERT INTO `zhixun` VALUES (174, '山东宝妈趁娃上课与人开房：穿情趣内衣被丈夫捉奸在床', '近日，山东省淄博市，发生了一件让人震惊却又十分奇葩的事情。山东宝妈趁娃上课与人开房，穿情趣内衣被丈夫捉奸在床。一起来看看吧！', 'https://www.ali213.net/news/html/2021-12/644695.html', '12-23', '小编：cloud', 'https://imgs.ali213.net/news/2021/12/23/2021122362315609.jpg');
INSERT INTO `zhixun` VALUES (175, '特别好评冒险解谜游戏《Lacuna》正式登陆Switch！', 'Steam“特别好评”的冒险解密游戏《Lacuna》已经于今天（12月23日）正式登陆Switch，官方同时开启了折扣活动，一起来看看吧。', 'https://www.ali213.net/news/html/2021-12/644703.html', '12-23', '小编：何者', 'https://imgs.ali213.net/news/2021/12/23/2021122361742336.jpg');
INSERT INTO `zhixun` VALUES (176, '冒险解谜游戏《Lacuna黑暗科幻冒险》游侠专题站上线', '《Lacuna黑暗科幻冒险》是一款由对话驱动的现代化冒险解谜游戏，以美轮美奂的2D画面，为你呈现善恶难辨，光怪陆离的科幻宇宙。向驻国防情报中心的探员尼尔·康纳德伸出援手，帮他做出一系列愈加严苛的抉择吧。', 'https://www.ali213.net/news/html/2021-12/644701.html', '12-23', '小编：别离我', 'https://imgs.ali213.net/news/2021/12/23/2021122362105883.jpg');

SET FOREIGN_KEY_CHECKS = 1;
