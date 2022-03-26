-- ----------------------------------------
-- EyouCms MySQL Data Transfer 
-- 
-- Server         : 127.0.0.1_3306
-- Server Version : 5.7.26
-- Host           : 127.0.0.1:3306
-- Database       : dd10
-- 
-- Part : #1
-- Version : #v1.5.5
-- Date : 2021-12-02 08:40:27
-- -----------------------------------------

SET FOREIGN_KEY_CHECKS = 0;


-- -----------------------------
-- Table structure for `ey_ad`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ad`;
CREATE TABLE `ey_ad` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '广告id',
  `pid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '广告位置ID',
  `media_type` tinyint(1) DEFAULT '0' COMMENT '广告类型',
  `title` varchar(60) DEFAULT '' COMMENT '广告名称',
  `links` varchar(255) DEFAULT '' COMMENT '广告链接',
  `litpic` varchar(255) DEFAULT '' COMMENT '图片地址',
  `start_time` int(11) DEFAULT '0' COMMENT '投放时间',
  `end_time` int(11) DEFAULT '0' COMMENT '结束时间',
  `intro` text COMMENT '描述',
  `link_man` varchar(60) DEFAULT '' COMMENT '添加人',
  `link_email` varchar(60) DEFAULT '' COMMENT '添加人邮箱',
  `link_phone` varchar(60) DEFAULT '' COMMENT '添加人联系电话',
  `click` int(11) DEFAULT '0' COMMENT '点击量',
  `bgcolor` varchar(30) DEFAULT '' COMMENT '背景颜色',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '1=显示，0=屏蔽',
  `sort_order` int(11) DEFAULT '0' COMMENT '排序',
  `target` varchar(50) DEFAULT '' COMMENT '是否开启浏览器新窗口',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '多语言',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `position_id` (`pid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_ad`
-- -----------------------------
INSERT INTO `ey_ad` VALUES ('1', '1', '1', '幻灯一', '', '/public/upload/other/2018/09/05/ceb0137b314bb21b9a20e5da0986abed.jpg', '0', '0', '', '', '', '', '0', '', '1', '100', '1', '0', '0', 'cn', '1536050593', '1536130748');
INSERT INTO `ey_ad` VALUES ('2', '1', '1', '幻灯二', '', '/public/upload/other/2018/09/05/cae08201ebf999288fab00bf6b2e54ba.jpg', '0', '0', '', '', '', '', '0', '', '1', '100', '1', '0', '0', 'cn', '1536050605', '1536130757');
INSERT INTO `ey_ad` VALUES ('3', '2', '1', '栏目banner图', '', '/public/upload/other/2018/09/05/e56d840fa0d8849001f275a5ddab0ec5.jpg', '0', '0', '', '', '', '', '0', '', '1', '100', '1', '0', '0', 'cn', '1536050622', '1536130768');
INSERT INTO `ey_ad` VALUES ('4', '3', '1', 'en幻灯一', '', '/public/upload/other/2018/09/05/ceb0137b314bb21b9a20e5da0986abed.jpg', '0', '0', '', '', '', '', '0', '', '1', '100', '1', '0', '0', 'en', '1536050593', '1536130748');
INSERT INTO `ey_ad` VALUES ('5', '3', '1', 'en幻灯二', '', '/public/upload/other/2018/09/05/cae08201ebf999288fab00bf6b2e54ba.jpg', '0', '0', '', '', '', '', '0', '', '1', '100', '1', '0', '0', 'en', '1536050605', '1536130757');
INSERT INTO `ey_ad` VALUES ('6', '4', '1', 'en栏目banner图', '', '/public/upload/other/2018/09/05/e56d840fa0d8849001f275a5ddab0ec5.jpg', '0', '0', '', '', '', '', '0', '', '1', '100', '1', '0', '0', 'en', '1536050622', '1536130768');

-- -----------------------------
-- Table structure for `ey_ad_position`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ad_position`;
CREATE TABLE `ey_ad_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(60) NOT NULL DEFAULT '' COMMENT '广告位置名称',
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '广告展示类型，1图片类型，2媒体类型，3HTML代码',
  `width` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位宽度',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '广告位高度',
  `intro` text NOT NULL COMMENT '广告描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0关闭1开启',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '多语言',
  `admin_id` int(10) NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='广告位置表';

-- -----------------------------
-- Records of `ey_ad_position`
-- -----------------------------
INSERT INTO `ey_ad_position` VALUES ('1', '首页头部大幻灯', '1', '1903', '576', '', '1', 'cn', '0', '0', '1536050554', '1536130734');
INSERT INTO `ey_ad_position` VALUES ('2', '栏目页banner图', '1', '1578', '161', '前端只调用一张', '1', 'cn', '0', '0', '1536050576', '1536130712');
INSERT INTO `ey_ad_position` VALUES ('3', 'en首页头部大幻灯', '1', '1903', '576', '', '1', 'en', '0', '0', '1536050554', '1536130734');
INSERT INTO `ey_ad_position` VALUES ('4', 'en栏目页banner图', '1', '1578', '161', '前端只调用一张', '1', 'en', '0', '0', '1536050576', '1536130712');

-- -----------------------------
-- Table structure for `ey_admin`
-- -----------------------------
DROP TABLE IF EXISTS `ey_admin`;
CREATE TABLE `ey_admin` (
  `admin_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `user_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `pen_name` varchar(50) DEFAULT '' COMMENT '笔名（发布文章后显示责任编辑的名字）',
  `true_name` varchar(20) DEFAULT '' COMMENT '真实姓名',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机号码',
  `email` varchar(60) DEFAULT '' COMMENT 'email',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `head_pic` varchar(255) DEFAULT '' COMMENT '头像',
  `last_login` int(11) DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) DEFAULT '' COMMENT '最后登录ip',
  `login_cnt` int(11) DEFAULT '0' COMMENT '登录次数',
  `session_id` varchar(50) DEFAULT '' COMMENT 'session_id',
  `parent_id` int(10) DEFAULT '0' COMMENT '父管理员ID',
  `role_id` int(10) NOT NULL DEFAULT '-1' COMMENT '角色组ID（-1表示超级管理员）',
  `mark_lang` varchar(50) DEFAULT 'cn' COMMENT '当前语言标识',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(0=屏蔽，1=正常)',
  `syn_users_id` int(10) DEFAULT '0' COMMENT '同步注册到会员表',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`admin_id`),
  KEY `user_name` (`user_name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_admin`
-- -----------------------------
INSERT INTO `ey_admin` VALUES ('1', 'admin', '', 'admin', '', '', '50e536ab5089eddb05eb08b1dfba2af7', '', '1638405515', '127.0.0.1', '2', '704fo4pg60actfqlat1cdurheo', '0', '-1', 'cn', '1', '1', '1638405508', '1638405614');

-- -----------------------------
-- Table structure for `ey_admin_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_admin_log`;
CREATE TABLE `ey_admin_log` (
  `log_id` bigint(16) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `admin_id` int(10) NOT NULL DEFAULT '-1' COMMENT '管理员id',
  `log_info` text COMMENT '日志描述',
  `log_ip` varchar(30) DEFAULT '' COMMENT 'ip地址',
  `log_url` varchar(255) DEFAULT '' COMMENT 'url',
  `log_time` int(11) DEFAULT '0' COMMENT '日志时间',
  PRIMARY KEY (`log_id`),
  KEY `admin_id` (`admin_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=219 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_admin_log`
-- -----------------------------
INSERT INTO `ey_admin_log` VALUES ('217', '1', '编辑栏目：联系我们 ', '127.0.0.1', '/login.php', '1638405560');
INSERT INTO `ey_admin_log` VALUES ('215', '-1', '访问后台', '127.0.0.1', '/login.php', '1638405511');
INSERT INTO `ey_admin_log` VALUES ('216', '1', '后台登录', '127.0.0.1', '/login.php', '1638405515');
INSERT INTO `ey_admin_log` VALUES ('218', '1', '编辑栏目：CONTACT US', '127.0.0.1', '/login.php', '1638405586');

-- -----------------------------
-- Table structure for `ey_archives`
-- -----------------------------
DROP TABLE IF EXISTS `ey_archives`;
CREATE TABLE `ey_archives` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `typeid` int(10) NOT NULL DEFAULT '0' COMMENT '当前栏目',
  `channel` int(10) NOT NULL DEFAULT '0' COMMENT '模型ID',
  `is_b` tinyint(1) DEFAULT '0' COMMENT '加粗',
  `title` varchar(200) DEFAULT '' COMMENT '标题',
  `litpic` varchar(250) DEFAULT '' COMMENT '缩略图',
  `is_head` tinyint(1) DEFAULT '0' COMMENT '头条（0=否，1=是）',
  `is_special` tinyint(1) DEFAULT '0' COMMENT '特荐（0=否，1=是）',
  `is_top` tinyint(1) DEFAULT '0' COMMENT '置顶（0=否，1=是）',
  `is_recom` tinyint(1) DEFAULT '0' COMMENT '推荐（0=否，1=是）',
  `is_jump` tinyint(1) DEFAULT '0' COMMENT '跳转链接（0=否，1=是）',
  `is_litpic` tinyint(1) DEFAULT '0' COMMENT '图片（0=否，1=是）',
  `is_roll` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '滚动（0=否，1=是）',
  `is_slide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '幻灯（0=否，1=是）',
  `is_diyattr` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '自定义（0=否，1=是）',
  `author` varchar(200) DEFAULT '' COMMENT '作者',
  `click` int(10) DEFAULT '0' COMMENT '浏览量',
  `arcrank` int(10) DEFAULT '0' COMMENT '阅读权限：0=开放浏览，-1=待审核稿件',
  `jumplinks` varchar(255) DEFAULT '' COMMENT '外链跳转',
  `ismake` tinyint(1) DEFAULT '0' COMMENT '是否静态页面（0=动态，1=静态）',
  `seo_title` varchar(200) DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) DEFAULT '' COMMENT 'SEO关键词',
  `seo_description` text COMMENT 'SEO描述',
  `attrlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '参数列表ID',
  `users_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '会员价',
  `users_free` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否会员免费，默认0不免费，1为免费',
  `old_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '产品旧价',
  `sales_num` int(10) NOT NULL DEFAULT '0' COMMENT '销售量',
  `stock_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品库存量',
  `stock_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '商品库存在产品详情页是否显示，1为显示，0为不显示',
  `prom_type` tinyint(1) unsigned DEFAULT '0' COMMENT '产品类型：0=普通产品，1=虚拟(默认手动发货)，2=虚拟(网盘)，3=虚拟(自定义文本)',
  `tempview` varchar(200) DEFAULT '' COMMENT '文档模板文件名',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(0=屏蔽，1=正常)',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `users_id` int(10) DEFAULT '0' COMMENT '会员ID',
  `arc_level_id` int(10) DEFAULT '0' COMMENT '文档会员权限ID',
  `restric_type` tinyint(1) DEFAULT '0' COMMENT '限制模式，0=免费，1=付费，2=会员专享，3=会员付费',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `del_method` tinyint(1) DEFAULT '0' COMMENT '伪删除状态，1为主动删除，2为跟随上级栏目被动删除',
  `joinaid` int(10) DEFAULT '0' COMMENT '关联文档ID',
  `downcount` int(10) DEFAULT '0' COMMENT '下载次数',
  `appraise` int(10) DEFAULT '0' COMMENT '评价数',
  `collection` int(10) DEFAULT '0' COMMENT '收藏数',
  `htmlfilename` varchar(250) DEFAULT '' COMMENT '自定义文件名',
  `province_id` int(10) DEFAULT '0' COMMENT '省份',
  `city_id` int(10) DEFAULT '0' COMMENT '所在城市',
  `area_id` int(10) DEFAULT '0' COMMENT '所在区域',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`aid`),
  KEY `aid` (`typeid`,`channel`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='资讯表';

-- -----------------------------
-- Records of `ey_archives`
-- -----------------------------
INSERT INTO `ey_archives` VALUES ('1', '1', '6', '0', '关于我们 ', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '0', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536050912', '1536050912');
INSERT INTO `ey_archives` VALUES ('3', '7', '6', '0', '联系我们 ', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '0', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536051005', '1536051005');
INSERT INTO `ey_archives` VALUES ('8', '15', '1', '0', '旅游市场将迎来内容红利？河马旅居想做旅游界的“小红书”', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '208', '0', '', '0', '', '', '“内容为王”这句话在哪个时代都不会过时。随着消费升级，日益庞大的中国高端群体对高品质的生活方式与旅行体验的需求为高端出境旅游市场带来巨大市场机遇。现今的旅游产品也更向个性化、定制化、品质化靠拢，对内容创新提出更高的要求。内地的旅游内容市场仍有5-10倍的增长空间。最近36氪接触了一家做移动端旅游社区电商的团队——河马旅居指南。河马旅居定位中等收入人群18-34岁的年轻群体，想通过碎片化的PGC或UGC内容培养用户粘性，由内容社区模式切入出境游市场。传统的旅游内容多是以长图文的游记形式呈现，河马旅居并不刻意强调旅游路线或整个游历过程的感受，在内容呈现上更加碎片化、个性化、移动化以及品质化，以小众或特色地点作为维度输出内容，建立内容社区，类似于旅游界的“小红书”或“什么值得买”。河马旅居在部分海外旅游城市有一个4到5人的自媒体小团队定期生产PGC内容，每月更新一次内容，以优质的内容导流。目前河马的获客成本低至2-3元/人。优质的内容利于培养高粘性度的用户，当累计到一定数量的优质内容生产者，达到一定的用户规模时，将由PGC内容带动UGC内容的自发产出，进而开始搭建旅游内容社区，最后完成向旅游', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111428', '1536116955');
INSERT INTO `ey_archives` VALUES ('9', '15', '1', '0', '无人便利店风口正当时，“便利家”获联创永宣冯涛数百万元天使投资', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '167', '0', '', '0', '', '', '36氪获悉，无人便利店“便利家”已获得数百万人民币天使轮投资，资方为联创永宣冯涛。无人便利店风口正当时，缤果盒子、F5未来商店、深兰科技、EasyGo等一众玩家云集，亚马逊、罗森、阿里巴巴、沃尔玛等巨头亦纷纷试水。&nbsp;“便利家”创立于2017年3月，位于上海。便利家有微型无人便利店和中型无人便利店两款产品，和一众玩家相比，便利家的差异化在于：灵活。&nbsp;便利家的“微型无人便利店”，最小单位占地面积不到1平方米（0.68平方米），投放地点更加灵活，包括地铁站、写字楼、高校等，一个最小单位便利店的成本约为1.3万元（批量化生产后可能更低）。最小单位的无人便利店，可以根据人流量的分布，“拼”起来更大单位面积的便利店。低于100人，可放置一个；100人左右，可以拼两个；大于500人，可以拼四个。便利家的“中型无人便利店”，是由6个微型便利店拼起来的，同时在空间里增设桌椅，为消费者提供休憩区间，可放置在地理位置相对开阔的小区、公园等。技术上，便利家在每一层货架中设置了RFID，并在各个角落缝隙做了密封屏蔽，让识别率更高。流程很简单，用支付宝扫码开门，拿完即走，支付宝自动扣款（微信正', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111501', '1536116955');
INSERT INTO `ey_archives` VALUES ('10', '15', '1', '0', '腾讯500万美元领投AI创企ObEN，进一步布局社交AI', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '283', '0', '', '0', '', '', '除了做基础技术的研究外，腾讯曾表示要通过业务驱动来推动各种应用场景的人工智能化。结合腾讯的主营业务，也不难猜到未来公司要在游戏、社交、内容和平台工具型四大应用方向发力。尤其是在社交领域，去年扎克伯格曾表示要推出VR版的Facebook，并展示了虚拟人物形象工具OculusAvatars；今年7月，Facebook表示FacebookAR工作室将与美图合作，向其提供三款AR相机特效。如今，腾讯也要有所行动了。7月18日晚间，人工智能初创公司ObEN宣布获得500万美元战略投资。该轮融资由腾讯领投，CMC董事长黎瑞刚及峰尚资本跟投。投融资信息平台crunchbase的数据显示，目前ObEN共完成四轮融资，总金额达到1370万美元。此前的投资人还包括S如山资本、软银韩国风险投资公司和HTCVIVEX等。公开资料介绍，ObEN创办于2014年，可以通过构建个性化的虚拟声音、形象和个性来创造用户的人工智能虚拟形象，并帮助用户在新兴的数字世界中存储、管理、运营他们的虚拟形象。也就是说，ObEN可以利用人工智能工具，根据用户的照片和声音创建虚拟形象，从而让用户有不同的AR、VR社交体验。以前ObEN', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111524', '1536116955');
INSERT INTO `ey_archives` VALUES ('11', '15', '1', '0', '美业信息化规模将现，门庭管店为他们提供了一套SaaS管理软件', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '206', '0', '', '0', '', '', '数据显示，2015年，我国服务业同比增长8.3%，分别高于国内生产总值和第二产业增加值增速1.4和2.3个百分点，占国内生产总值的比重达到50.5%，首次过半，而与发达国家相比，我国服务业仍有20%-30%的发展空间。美业属于实体服务业，整个市场有上千亿的规模，但是信息化程度和零售餐饮业相比着实比较低。其中的原因就是餐饮和零售客流量大，触达人群广，而美业客流量相对小，加上从业人员素质导致信息化程度低、管理效率低。美业现在的主要管理方式是纸质账本和简单的收银、结算软件，纸质管理约占行业客户的90%，功能简单只能用于管理会员卡的单机版管理软件约占9%。美业的客户与店面的粘性比较高，虽然是低频次消费，但是一旦用户选择一家店，在接收到较好服务之后很难再转向其它店，因此美业在预约管理、客户管理等需求上要高于餐饮和零售，应用的软件形态并不一定以结算收银为主，重点是CRM系统、收银、绩效考核、预约为一体的管理软件。36氪近日了解的门庭管店是一款美业SaaS产品，主要功能有&nbsp;SCRM会员管理、智能预约、绩效工资、营销卡券、全能收银等。门庭管店产品在客户方是微信公众号和小程序；美容师端是用于客', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111544', '1536116955');
INSERT INTO `ey_archives` VALUES ('12', '15', '1', '0', '点击在线求助，应答的却都是机器人，这样真的好吗？', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '158', '0', '', '0', '', '', '编者按：人工智能技术的发展正在不断地改变着人们的生活与工作方式，它在一定程度上推动了社会的发展与进步，这一点是毋庸置疑的。但人工智能并不是万能的，因为机器并不具备人类的思维与情绪。当你打开网站上的在线求助窗口，却发现回答你的只是冷冰冰的机器人的时候，恐怕应该会很失望吧。2016年4月，马克·扎克伯格在Facebook的F8会议上为Messenger上的开发者们描述了一个光明的未来，并宣布将进入“像和朋友一样与机器人聊天”的新时代。世界各地的开发人员，这些开发人员都拥有Facebook、Google和Microsoft等大公司的认证，都声称独立移动应用程序的时代结束了，并一起庆祝新的方式的到来——对话商务（ConversationalCommerce）和聊天机器人（Chatbots）。11个月前，Facebook宣布其官方开发的聊天机器人“M”的beta测试中AI失败率为70％，随后便更新了其平台，并建议开发人员在Messenger中开发更轻量级的应用程序，同时禁用会话输入。关于Wordhop.io，一直以来我们都知道两件事。第一件事就是，AI真的很难，要实现让机器人100％像朋友一样与', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111566', '1536116955');
INSERT INTO `ey_archives` VALUES ('13', '15', '1', '0', '传滴滴即将接入ofo，共享单车大战格局或生变', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '264', '0', '', '0', '', '', '36氪从ofo内部获得消息，可能在今年4月份，ofo将会接入到滴滴出行的App上，届时用户可以直接在滴滴上面使用ofo的服务。“这件事最近被频繁地提上日程，内部消息是下个月就有可能接入。”一名ofo内部员工说。36氪向滴滴官方、ofo官方求证了此消息，但截止发稿时，两家公司均未对此确认或否认。ofo创始人戴威曾在去年12月表示，何时接入滴滴APP，没有明确的时间表。“ofo的模式是没有GPS的，用户看到车就用，整个逻辑跟滴滴平台打车的逻辑不太一样，但近期我们会跟滴滴联合推出一些东西。”不过类似的接入并非没有先例。今年2月，微信联合摩拜单车宣布，用户通过微信“扫一扫”扫描摩拜单车车身上的二维码，就可直接进入摩拜单车微信小程序，点击开锁即可用车。这并不是第一次传出ofo会接入滴滴的消息，也不是两个平台的第一次深度绑定。此前，滴滴参与了ofo最近三轮的融资。根据腾讯科技的报道，一位共享单车投资人透露，ofo经过多轮融资以后，滴滴已经成为ofo最大股东，占股超过30%。“这意味着，滴滴在ofo的话语权更强了，同时，ofo的成与败，滴滴将是最大利息相关方。”这也不难理解，滴滴将ofo接入之后，将', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111577', '1536116955');
INSERT INTO `ey_archives` VALUES ('14', '15', '1', '0', '借网生大势赚了两年快钱后，考拉娱乐开始切入女性人群做点“慢”内容', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '172', '0', '', '0', '', '', '从2014年起，网络大电影这个词逐渐进入人们的眼球，当时满地都是几十万制作成本博得百万票房的故事，考拉娱乐便是在那个网生内容的蛮荒时代入的局。在接受36氪采访时，考拉娱乐创始人钱伟坦言借过去的势他们赚到了不少钱，“我们有个片子8万成本，最后回收了一百多万的票房。”在过去的两年间，他们平均一年能做20多部大电影，在各大视频网站上收益排名Top10中，你很容易就能发现考拉出品的好几部片子，也给他们积累了很多渠道资源。但当时间跨入今年后，网络大电影市场开始洗牌，去年整个市场上600多部片子突然激增到2000部以上，四两拨千斤的时代已经过去了，你会发现排名靠前的网大制作成本基本都在百万以上，已经达到了二三线院线水平。近期推出的黄金赌城系列市场红利期过去后，考拉娱乐在今年就开始了他们新的布局：瞄准女性市场，做精品网生内容。“这个其实是之前就规划好的，洗牌是肯定的。”钱伟说今年他们上半年基本没有怎么发片子，都在为今后的“慢”内容做准备。考拉娱乐首先改变的是IP孵化方式，他们组建了一支漫画团队，定位是连载时间在三年以上的长篇大世界观作品，当这些作品经过市场验证后，逐步推出相应的网络剧、大电影等衍生内', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111594', '1536116955');
INSERT INTO `ey_archives` VALUES ('15', '15', '1', '0', '获 3800 万元 A+ 轮投资，乐摇摇科技利用抓娃娃机做线下版的广点通', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '147', '0', '', '0', '', '', '36氪获悉，线下公众号推广公司乐摇摇科技已完成3800万元A+轮融资，投资方为广发信德。众所周知，如今线上流量昂贵，大家的目光开始聚焦线下。除了传统的地铁、电梯广告，线下也已经有一些新的广告模式，比如通过商业Wi-Fi获客，代表公司有迈外迪；比如现在餐饮店外常见的照片打印机，是专门服务公众号的效果广告。乐摇摇科技则选择利用抓娃娃机做流量分发。之所以从抓娃娃机切入，创始人陈耿豪认为主要原因有两点：首先，抓娃娃机国内存量有200万台，包括其在内的所有投币类设备存量约2000万台，这些机器无法进行移动支付，消费者和商家的痛点需要被解决；第二，抓娃娃机多在商场、KTV等地，用户群体是16到35岁女性，广告投放更精准。从广告受众的角度可以看出，乐摇摇比WI-FI获客更精准；而从乐摇摇的业务模式看，他们不像市面上的照片打印机那样自己生产机器，而是和机器生产厂家合作，只提供硬件盒子，因此业务模式更轻。具体看乐摇摇的业务模式，他们免费给机器提供硬件盒子和SaaS系统，由厂家安装好盒子后发货给商家，据统计，实现移动支付后的抓娃娃机能增加28%的收入。用户想抓娃娃时，先用微信扫码，这时有两种模式供选择，第', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111619', '1536116955');
INSERT INTO `ey_archives` VALUES ('16', '15', '1', '0', '腾讯游戏营收比重连续两个季度下降，支付、云计算等业务营收涨348%', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '175', '0', '', '0', '', '', '腾讯不仅在阿里怂恿大家花钱的双十一之际高调派钱，如今财报的高速增长业务也刚好跟支付宝和阿里云对标。今日晚间，腾讯发布今天公布未经审核的第三季度财报。报告显示，腾讯三季度总收入同比增长52%，增速与上季度持平；净利润增速有所下滑。值得注意的是，腾讯游戏营收比重已经连续两个季度下降，三季度网络游戏收入仅占总营收的45%；而支付和云计算等新兴业务的比重则继续上升，首次超过10%，达到12%。净利润增速下滑总体财务状况方面，腾讯三季度总收入为人民币403.88亿元（60.48亿美元），同比增长52%，增速与上季度持平。但是盈利增速却有所下滑，期内盈利为人民币107.76亿元（16.14亿美元），比去年同期增长42%；净利润率由去年同期的29%降至27%。游戏营收占比连续两个季度下滑分部业务方面，包括网络游戏和社交网络在内的增值业务依然是腾讯收入的大头，占比约八成。然而，一向被视为腾讯摇钱树的游戏业务，其收入占比却连续两季下降，如今占总营收比重仅有45%左右，该项业务在2015年一度占腾讯营收六成。而社交网络收入增速则在逐步增长，占比一直稳定在23-24%。再往细看，手游已经成了游戏业务的主力，', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536111635', '1536116955');
INSERT INTO `ey_archives` VALUES ('17', '19', '4', '0', '安装教程下载', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '287', '0', '', '0', '', '', '安装环境要求 服务器：Linux/Apache/IIS PHP版本：5.4及5.4以上，完美支持php7MYSQL版本：5.0以上PS：php版本推荐5.5~5.6，mysql推荐使用5.5+=============================================================================== 模板安装步骤1、请将安装包里面的所有文件和文件夹上传到你的网站根目录 (暂时不支持安装在二级目录)2、安装eyoucms系统。直接运行：http://您的域名/install 3、填写服务器及后台管理员信息1）填入数据库信息2）设置管理员账号及密码4、提示安装完成后即可进入后台管理网站统一后台登录地址：http://www.您的域名.com/login.php至此，模板安装结束', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536113043', '1536133609');
INSERT INTO `ey_archives` VALUES ('18', '9', '2', '0', '产品名称一', '/public/upload/product/2018/09/05/bc376eba6d2ee25bf20ff7ffa40e7d47.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '254', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116531', '1536134906');
INSERT INTO `ey_archives` VALUES ('19', '9', '2', '0', '产品名称二', '/public/upload/product/2018/09/05/913d9833dc2f95ca59b84b110e3ca32f.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '291', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116708', '1536134915');
INSERT INTO `ey_archives` VALUES ('20', '9', '2', '0', '产品名称三', '/public/upload/product/2018/09/05/003f001c1db816a826d47e7d4dcf2d60.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '270', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116736', '1536135606');
INSERT INTO `ey_archives` VALUES ('21', '9', '2', '0', '产品名称四', '/public/upload/product/2018/09/05/77371a065754209d866c1970c70731dc.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '161', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116758', '1536135611');
INSERT INTO `ey_archives` VALUES ('22', '9', '2', '0', '产品名称五', '/public/upload/product/2018/09/05/82b5c72f7763593e9f18915acf10b5cf.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '289', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116782', '1536135651');
INSERT INTO `ey_archives` VALUES ('23', '9', '2', '0', '产品名称六', '/public/upload/product/2018/09/05/79cedef7e5ef2ce90a4c32f996343cee.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '207', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116814', '1536135686');
INSERT INTO `ey_archives` VALUES ('24', '9', '2', '0', '产品名称七', '/public/upload/product/2018/09/05/c3d267c7eafd453be7a8dac9bfd78bff.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '166', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116835', '1536135721');
INSERT INTO `ey_archives` VALUES ('25', '9', '2', '0', '产品名称八', '/public/upload/product/2018/09/05/76e5c978b78764c30488270087fed69b.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '227', '0', '', '0', '', '', '轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536116859', '1536135756');
INSERT INTO `ey_archives` VALUES ('26', '17', '3', '0', '案例展示一', '/public/upload/images/2018/09/05/191ba93030dba88fb6476c31732118bf.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '166', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536117029', '1536136098');
INSERT INTO `ey_archives` VALUES ('27', '17', '3', '0', '案例展示二', '/public/upload/images/2018/09/05/564bded8dae04a0900c41b246036f542.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '241', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536117584', '1536136113');
INSERT INTO `ey_archives` VALUES ('28', '17', '3', '0', '案例展示三', '/public/upload/images/2018/09/05/0257d045c29531fb801d75ba3a2fa542.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '192', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536117611', '1536136129');
INSERT INTO `ey_archives` VALUES ('29', '17', '3', '0', '案例展示四', '/public/upload/images/2018/09/05/d5ecd08bfe9c08d3ccd5d0e5924de457.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '106', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536117638', '1536136164');
INSERT INTO `ey_archives` VALUES ('30', '19', '4', '0', '帮助文档一', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '113', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536138292', '1536138292');
INSERT INTO `ey_archives` VALUES ('31', '19', '4', '0', '帮助文档二', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '263', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536138348', '1536138348');
INSERT INTO `ey_archives` VALUES ('32', '19', '4', '0', '帮助文档三', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '215', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536138373', '1536138373');
INSERT INTO `ey_archives` VALUES ('33', '19', '4', '0', '帮助文档四', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '118', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'cn', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1536138397', '1536138397');
INSERT INTO `ey_archives` VALUES ('34', '21', '6', '0', 'About us', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '0', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552449886', '1552463937');
INSERT INTO `ey_archives` VALUES ('35', '37', '6', '0', 'CONTACT US', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '0', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552449886', '1552461598');
INSERT INTO `ey_archives` VALUES ('36', '35', '4', '0', 'Installation tutorial download', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '239', '0', '', '0', '', '', ' Installation environment requirements Server: Linux / Apache / IISPHP version: 5.4 and above, perfect support for php7MYSQL version: 5.0 or abovePS: php version recommended 5.5~5.6, mysql recommended 5.5+=========================================================== ==============================&nbsp; Template installation steps 1. Upload all the files and folders in the installation package to the root directory of your website (temporarily not supported in the secondary directory)2. Install the', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552461794', '1552461794');
INSERT INTO `ey_archives` VALUES ('37', '35', '4', '0', 'Help document one', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '246', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552461843', '1552461843');
INSERT INTO `ey_archives` VALUES ('38', '35', '4', '0', 'Help document two', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '207', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552461856', '1552461856');
INSERT INTO `ey_archives` VALUES ('39', '35', '4', '0', 'Help document three', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '241', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552461875', '1552461875');
INSERT INTO `ey_archives` VALUES ('40', '35', '4', '0', 'Help document four', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '129', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552461892', '1552461892');
INSERT INTO `ey_archives` VALUES ('41', '32', '3', '0', 'Case show one', '/uploads/allimg/20190313/2acd9584b52014ca1a58a2264c97d0e8.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '235', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552462883', '1552462912');
INSERT INTO `ey_archives` VALUES ('42', '32', '3', '0', 'Case show two', '/uploads/allimg/20190313/57df9b9054c6f364fa848a9345c10dc8.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '203', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552462916', '1552462945');
INSERT INTO `ey_archives` VALUES ('43', '32', '3', '0', 'Case show three', '/uploads/allimg/20190313/85cda7f753b4b5ee6a16c03df21746fb.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '180', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552462948', '1552462977');
INSERT INTO `ey_archives` VALUES ('44', '32', '3', '0', 'Case show four', '/uploads/allimg/20190313/4b1d558522f454b69fa2b9b8bcdb9b3c.jpg', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '283', '0', '', '0', '', '', '', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552462979', '1552463009');
INSERT INTO `ey_archives` VALUES ('45', '29', '1', '0', 'The tourism market will usher in a content bonus? Hippo Residence wants to be a &quot;Little Red Book&quot; in', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '102', '0', '', '0', '', '', 'The phrase &quot;content is king&quot; will not be outdated in any era. With the escalation of consumption, the growing demand for high-quality lifestyles and travel experiences by the high-end Chinese high-end groups has created huge market opportunities for the high-end outbound travel market. Today&#39;s tourism products are also more personalized, customized, and quality, and put forward higher requirements for content innovation. The tourism content market in the Mainland still has 5-10 tim', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463209', '1552463209');
INSERT INTO `ey_archives` VALUES ('46', '29', '1', '0', 'At the time when the unmanned convenience store was at the same time, the “Convenience Home” was awa', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '283', '0', '', '0', '', '', '36氪 was informed that the unmanned convenience store “Convenience Home” has received millions of RMB angel round investment, and the employer is Lianchuang Yongxuan Feng Tao.At the time of the unmanned convenience store, the players such as Binguo Box, F5 Future Store, Shenlan Technology, Easy Go, and so on, Amazon, Rosen, Alibaba, Wal-Mart and other giants also tried the water.“Convenience Home” was founded in March 2017 and is located in Shanghai. Convenience homes have two products: micro-unm', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463219', '1552463219');
INSERT INTO `ey_archives` VALUES ('47', '29', '1', '0', 'Tencent\'s $5 million lead to AI founder ObEN, further layout of social AI', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '289', '0', '', '0', '', '', 'In addition to doing basic technology research, Tencent has said that it will promote the artificial intelligence of various application scenarios through business drivers.Combined with Tencent&#39;s main business, it is not difficult to guess that the company will play in the four major applications of games, social, content and platform tools.Especially in the social field, Zuckerberg has said that he will launch the VR version of Facebook last year and showcase the virtual character image too', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463243', '1552463243');
INSERT INTO `ey_archives` VALUES ('48', '29', '1', '0', 'The scale of the US industry information will be available, and the door management store provides t', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '197', '0', '', '0', '', '', 'The data shows that in 2015, China&#39;s service industry grew by 8.3% year-on-year, which was higher than the GDP growth rate of the GDP and the growth rate of the secondary industry by 1.4 and 2.3 percentage points respectively, accounting for 50.5% of the GDP, which was more than half of the first time. Compared with developed countries, China&#39;s service industry still has 20%-30% development space. The beauty industry belongs to the physical service industry, and the entire market has a s', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463732', '1552463732');
INSERT INTO `ey_archives` VALUES ('49', '29', '1', '0', 'Click on the online help, the answer is all robots, is this really good?', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '186', '0', '', '0', '', '', 'Editor&#39;s note: The development of artificial intelligence technology is constantly changing the way people live and work. It promotes the development and progress of society to a certain extent. This is beyond doubt. But artificial intelligence is not omnipotent, because machines do not have human thinking and emotions. When you open the online help window on the website and find that you are only a cold robot, you should be disappointed.In April 2016, Mark Zuckerberg described a bright futu', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463744', '1552463744');
INSERT INTO `ey_archives` VALUES ('50', '29', '1', '0', 'Passing drops will soon be connected to ofo, sharing bicycle wars or changing', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '261', '0', '', '0', '', '', '36氪 Get information from the inside of ofo, maybe in April this year, ofo will be connected to the Drip travel app, then users can directly use the ofo service on the drop.&quot;This matter has recently been frequently put on the agenda, and internal news is likely to be accessible next month,&quot; said an internal staff member. 36氪 The official, ofo official verified the news, but at the time of publication, neither company confirmed or denied it.The founder of ofo, Dai Wei, said in December l', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463774', '1552463774');
INSERT INTO `ey_archives` VALUES ('51', '29', '1', '0', 'After earning two years of fast money with the netizen\'s general trend, Koala Entertainment began to', '', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '196', '0', '', '0', '', '', 'Since 2014, the word &quot;big movie&quot; has gradually entered the eyes of people. At that time, the story of hundreds of thousands of production costs won a million box office. The koala entertainment was entered in the wild age of the online content.In an interview with 36, the founder of the koala entertainment, Qian Wei, admitted that they had earned a lot of money by borrowing from the past. &quot;We have a film costing 80,000 yuan and finally recycling more than one million box office.&q', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463799', '1552463799');
INSERT INTO `ey_archives` VALUES ('52', '29', '1', '0', 'Received 38 million yuan of A+ round investment, Le Shake Technology uses the doll machine to make t', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '225', '0', '', '0', '', '', '36氪 was informed that the offline public number promotion company Le Shake Technology has completed a 38 million yuan A+ round of financing, the investor is Guangfa Shunde.As we all know, online traffic is now expensive, and everyone&#39;s eyes are beginning to focus on the offline. In addition to the traditional subway and elevator advertisements, there are already some new advertising modes under the line, such as getting customers through commercial Wi-Fi, representing the company with Maidid', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463821', '1552463821');
INSERT INTO `ey_archives` VALUES ('53', '29', '1', '0', 'Tencent\'s game revenue declined for two consecutive quarters, and payment, cloud computing and other', '', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '258', '0', '', '0', '', '', 'Tencent not only sent high-profile money on the occasion of the double eleven that Ali has spent money, but now the high-speed growth business of the financial report just coincides with Alipay and Aliyun.Tonight, Tencent released today unannounced third-quarter earnings. The report shows that Tencent&#39;s total revenue in the third quarter increased by 52% year-on-year, and the growth rate was the same as that of the previous quarter; the growth rate of net profit declined.It is worth noting t', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552463839', '1552463839');
INSERT INTO `ey_archives` VALUES ('54', '23', '2', '0', 'Product name one', '/uploads/allimg/20190313/59746a7f2b1d6e400745bf207022b1c5.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '159', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552464127', '1552464214');
INSERT INTO `ey_archives` VALUES ('55', '23', '2', '0', 'Product name two', '/uploads/allimg/20190313/2589a6c75313ea7d5cfb9fa3aba5909b.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '215', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552464295', '1552464382');
INSERT INTO `ey_archives` VALUES ('56', '23', '2', '0', 'Product name three', '/uploads/allimg/20190313/f0516609bf8416558f4d9dc4a4b91003.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '161', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552464390', '1552464430');
INSERT INTO `ey_archives` VALUES ('57', '23', '2', '0', 'Product name four', '/uploads/allimg/20190313/ca8cab8fe7e69b44473715b41e55980b.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '158', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552464432', '1552464478');
INSERT INTO `ey_archives` VALUES ('58', '23', '2', '0', 'Product name five', '/uploads/allimg/20190313/39afa332a15a7f919765071c2d3fbbef.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '284', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552464500', '1552464549');
INSERT INTO `ey_archives` VALUES ('59', '23', '2', '0', 'Product name six', '/uploads/allimg/20190313/4327b29bd05bd14fbb6fae853a9491d6.png', '0', '0', '0', '1', '0', '1', '0', '0', '0', '', '298', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552465139', '1552465438');
INSERT INTO `ey_archives` VALUES ('60', '23', '2', '0', 'Product name seven', '/uploads/allimg/20190313/9499d4f00166889ed2fe4c3f9f6d7af1.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '197', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552465467', '1552465487');
INSERT INTO `ey_archives` VALUES ('61', '23', '2', '0', 'Product name eight', '/uploads/allimg/20190313/ad93bd031fed92baac90137c0a5e161a.png', '0', '0', '0', '0', '0', '1', '0', '0', '0', '', '131', '0', '', '0', '', '', 'Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing proper', '0', '0.00', '0', '0.00', '0', '99999', '1', '0', '', '1', '100', 'en', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '', '0', '0', '0', '1552465491', '1552465686');

-- -----------------------------
-- Table structure for `ey_archives_flag`
-- -----------------------------
DROP TABLE IF EXISTS `ey_archives_flag`;
CREATE TABLE `ey_archives_flag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `flag_name` varchar(255) NOT NULL DEFAULT '' COMMENT '文档属性名称',
  `flag_attr` varchar(10) NOT NULL DEFAULT '' COMMENT '属性值',
  `flag_fieldname` varchar(255) NOT NULL DEFAULT '' COMMENT '字段名',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态， 1---显示， 0---隐藏',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `flag_attr` (`flag_attr`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='文档属性配置表';

-- -----------------------------
-- Records of `ey_archives_flag`
-- -----------------------------
INSERT INTO `ey_archives_flag` VALUES ('1', '头条', 'h', 'is_head', '1', '1', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('2', '推荐', 'c', 'is_recom', '1', '2', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('3', '特荐', 'a', 'is_special', '1', '3', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('4', '加粗', 'b', 'is_b', '1', '4', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('5', '图片', 'p', 'is_litpic', '1', '5', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('6', '跳转', 'j', 'is_jump', '1', '6', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('7', '幻灯', 's', 'is_slide', '0', '7', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('8', '滚动', 'r', 'is_roll', '0', '8', 'cn', '1606272350', '1606272350');
INSERT INTO `ey_archives_flag` VALUES ('9', '最热', 'd', 'is_diyattr', '0', '9', 'cn', '1606272350', '1606272350');

-- -----------------------------
-- Table structure for `ey_arcmulti`
-- -----------------------------
DROP TABLE IF EXISTS `ey_arcmulti`;
CREATE TABLE `ey_arcmulti` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tagid` varchar(60) NOT NULL DEFAULT '' COMMENT '标签ID',
  `tagname` varchar(60) NOT NULL DEFAULT '' COMMENT '标签名',
  `innertext` text NOT NULL COMMENT '标签模板代码',
  `pagesize` int(10) NOT NULL DEFAULT '0' COMMENT '分页列表',
  `querysql` text NOT NULL COMMENT '完整SQL',
  `ordersql` varchar(200) DEFAULT '' COMMENT '排序SQL',
  `addfieldsSql` varchar(255) DEFAULT '' COMMENT '附加字段SQL',
  `addtableName` varchar(50) DEFAULT '' COMMENT '附加字段的数据表，不包含表前缀',
  `attstr` text COMMENT '属性字符串',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='多页标记存储数据表';

-- -----------------------------
-- Records of `ey_arcmulti`
-- -----------------------------
INSERT INTO `ey_arcmulti` VALUES ('1', 'arclist8615d22c4af467f190ee938d63d35bd9', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (3,15,16,3) AND a.channel IN (1) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY a.sort_order asc, a.aid desc LIMIT 4', 'a.sort_order asc, a.aid desc', '', '', 'a:3:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";s:7:\\\"infolen\\\";s:2:\\\"65\\\";}', '1552450158', '1552528568');
INSERT INTO `ey_arcmulti` VALUES ('2', 'arclistf91663265ea19773484c2d8e96b064bc', 'arclist', '', '8', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (2,9,10,11,12,13,2) AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY a.sort_order asc, a.aid desc LIMIT 8', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"8\\\";}', '1552450158', '1552464170');
INSERT INTO `ey_arcmulti` VALUES ('3', 'arcliste1d2763b7f7ad18dc8b777764bb5cf59', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (4,17,18,4) AND a.channel IN (3) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY a.sort_order asc, a.aid desc LIMIT 4', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";}', '1552450158', '1552528568');
INSERT INTO `ey_arcmulti` VALUES ('4', 'arclistc81be1fa5ba451c6937f64f5aaa6639b', 'arclist', '', '5', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (6,19,20,6) AND a.channel IN (4) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY a.sort_order asc, a.aid desc LIMIT 5', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"40\\\";s:3:\\\"row\\\";s:1:\\\"5\\\";}', '1552450158', '1552528568');
INSERT INTO `ey_arcmulti` VALUES ('5', 'arclist47d5bf37ab01f2b1813fc9e2461a16b0', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (28,29,30,28) AND a.channel IN (1) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY a.sort_order asc, a.aid desc LIMIT 4', 'a.sort_order asc, a.aid desc', '', '', 'a:3:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";s:7:\\\"infolen\\\";s:2:\\\"65\\\";}', '1552450475', '1552528571');
INSERT INTO `ey_arcmulti` VALUES ('6', 'arclist6fa0ab06f30b445606c1845a4ba5e6c0', 'arclist', '', '8', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (22,23,24,25,26,27,22) AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY a.sort_order asc, a.aid desc LIMIT 8', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"8\\\";}', '1552450475', '1552464366');
INSERT INTO `ey_arcmulti` VALUES ('7', 'arclist61e809241b4a7deee78af200fdcb3e9d', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (31,32,33,31) AND a.channel IN (3) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY a.sort_order asc, a.aid desc LIMIT 4', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";}', '1552450475', '1552528571');
INSERT INTO `ey_arcmulti` VALUES ('8', 'arclist362b8fb7c0e970c593d32af36a9182f0', 'arclist', '', '5', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (34,35,36,34) AND a.channel IN (4) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY a.sort_order asc, a.aid desc LIMIT 5', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"40\\\";s:3:\\\"row\\\";s:1:\\\"5\\\";}', '1552450475', '1552528571');
INSERT INTO `ey_arcmulti` VALUES ('9', 'arclist054947daf2248b62ac7ace7def27e3a1', 'arclist', '', '5', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (3,15,16,3) AND  (a.is_recom = 1)  AND a.channel IN (1) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY a.sort_order asc, a.aid desc LIMIT 5', 'a.sort_order asc, a.aid desc', '', '', 'a:3:{s:8:\\\"titlelen\\\";s:2:\\\"40\\\";s:3:\\\"row\\\";s:1:\\\"5\\\";s:4:\\\"flag\\\";s:1:\\\"c\\\";}', '1552459202', '1552528568');
INSERT INTO `ey_arcmulti` VALUES ('10', 'arclistb341f6012f048d94f69f2ff2e2479c43', 'arclist', '', '5', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (28,29,30,28) AND  (a.is_recom = 1)  AND a.channel IN (1) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY a.sort_order asc, a.aid desc LIMIT 5', 'a.sort_order asc, a.aid desc', '', '', 'a:3:{s:8:\\\"titlelen\\\";s:2:\\\"40\\\";s:3:\\\"row\\\";s:1:\\\"5\\\";s:4:\\\"flag\\\";s:1:\\\"c\\\";}', '1552459208', '1552528688');
INSERT INTO `ey_arcmulti` VALUES ('11', 'arclistf26fc6199111948e5ab21373c48a3c66', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (2,9,10,11,12,13,2) AND  (a.is_recom = 1)  AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY rand() LIMIT 4', 'rand()', '', '', 'a:5:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:7:\\\"orderby\\\";s:4:\\\"rand\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";s:4:\\\"flag\\\";s:1:\\\"c\\\";s:6:\\\"typeid\\\";s:1:\\\"2\\\";}', '1552464111', '1552465508');
INSERT INTO `ey_arcmulti` VALUES ('12', 'arclist10c793877c9536b910b4714346f54df4', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (22,23,24,25,26,27,22) AND  (a.is_recom = 1)  AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY rand() LIMIT 4', 'rand()', '', '', 'a:5:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:7:\\\"orderby\\\";s:4:\\\"rand\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";s:4:\\\"flag\\\";s:1:\\\"c\\\";s:6:\\\"typeid\\\";s:1:\\\"2\\\";}', '1552464368', '1552464368');
INSERT INTO `ey_arcmulti` VALUES ('13', 'arclist0b6c6c94f715807f5d7e0da7fc8b4275', 'arclist', '', '8', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (22,23,40,24,25,26,27,22) AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY a.sort_order asc, a.aid desc LIMIT 8', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"8\\\";}', '1552465794', '1552528571');
INSERT INTO `ey_arcmulti` VALUES ('14', 'arclist970a99213502c68acffd931a3db2476a', 'arclist', '', '4', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (22,23,40,24,25,26,27,22) AND  (a.is_recom = 1)  AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'en\' ORDER BY rand() LIMIT 4', 'rand()', '', '', 'a:5:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:7:\\\"orderby\\\";s:4:\\\"rand\\\";s:3:\\\"row\\\";s:1:\\\"4\\\";s:4:\\\"flag\\\";s:1:\\\"c\\\";s:6:\\\"typeid\\\";s:1:\\\"2\\\";}', '1552465838', '1552465841');
INSERT INTO `ey_arcmulti` VALUES ('15', 'arclist1089f64112849751d211df4ed43c33da', 'arclist', '', '8', 'SELECT `b`.*,`a`.* FROM `ey_archives` `a` LEFT JOIN `ey_arctype` `b` ON `b`.`id`=`a`.`typeid` WHERE  (  a.typeid IN (2,9,39,10,11,12,13,2) AND a.channel IN (2) AND a.arcrank > -1 AND a.status = 1 AND a.is_del = 0 )  AND `a`.`lang` = \'cn\' ORDER BY a.sort_order asc, a.aid desc LIMIT 8', 'a.sort_order asc, a.aid desc', '', '', 'a:2:{s:8:\\\"titlelen\\\";s:2:\\\"20\\\";s:3:\\\"row\\\";s:1:\\\"8\\\";}', '1552468554', '1552528568');

-- -----------------------------
-- Table structure for `ey_arcrank`
-- -----------------------------
DROP TABLE IF EXISTS `ey_arcrank`;
CREATE TABLE `ey_arcrank` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限ID',
  `rank` smallint(6) DEFAULT '0' COMMENT '权限值',
  `name` char(20) DEFAULT '' COMMENT '会员名称',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文档阅读权限表';

-- -----------------------------
-- Records of `ey_arcrank`
-- -----------------------------
INSERT INTO `ey_arcrank` VALUES ('1', '0', '开放浏览', 'cn', '0', '1552376880');
INSERT INTO `ey_arcrank` VALUES ('2', '-1', '待审核稿件', 'cn', '0', '1552376880');
INSERT INTO `ey_arcrank` VALUES ('3', '0', '开放浏览', 'en', '0', '1552376880');
INSERT INTO `ey_arcrank` VALUES ('4', '-1', '待审核稿件', 'en', '0', '1552376880');

-- -----------------------------
-- Table structure for `ey_arctype`
-- -----------------------------
DROP TABLE IF EXISTS `ey_arctype`;
CREATE TABLE `ey_arctype` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '栏目ID',
  `channeltype` int(10) DEFAULT '0' COMMENT '栏目顶级模型ID',
  `current_channel` int(10) DEFAULT '0' COMMENT '栏目当前模型ID',
  `parent_id` int(10) DEFAULT '0' COMMENT '栏目上级ID',
  `topid` int(10) DEFAULT '0' COMMENT '顶级栏目ID',
  `typename` varchar(200) DEFAULT '' COMMENT '栏目名称',
  `dirname` varchar(200) DEFAULT '' COMMENT '目录英文名',
  `dirpath` varchar(200) DEFAULT '' COMMENT '目录存放HTML路径',
  `diy_dirpath` varchar(200) DEFAULT '' COMMENT '列表静态文件存放规则',
  `rulelist` varchar(200) DEFAULT '' COMMENT '列表静态文件存放规则',
  `ruleview` varchar(200) DEFAULT '' COMMENT '文档静态文件存放规则',
  `englist_name` varchar(200) DEFAULT '' COMMENT '栏目英文名',
  `grade` tinyint(1) DEFAULT '0' COMMENT '栏目等级',
  `typelink` varchar(200) DEFAULT '' COMMENT '栏目链接',
  `litpic` varchar(250) DEFAULT '' COMMENT '栏目图片',
  `templist` varchar(200) DEFAULT '' COMMENT '列表模板文件名',
  `tempview` varchar(200) DEFAULT '' COMMENT '文档模板文件名',
  `seo_title` varchar(200) DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `is_hidden` tinyint(1) DEFAULT '0' COMMENT '是否隐藏栏目：0=显示，1=隐藏',
  `is_part` tinyint(1) DEFAULT '0' COMMENT '栏目属性：0=内容栏目，1=外部链接',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `del_method` tinyint(1) DEFAULT '0' COMMENT '伪删除状态，1为主动删除，2为跟随上级栏目被动删除',
  `status` tinyint(1) DEFAULT '1' COMMENT '启用 (1=正常，0=屏蔽)',
  `is_release` tinyint(1) DEFAULT '0' COMMENT '栏目是否应用于会员投稿发布，1是，0否',
  `weapp_code` varchar(50) DEFAULT '' COMMENT '插件栏目唯一标识',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dirname` (`dirname`,`lang`) USING BTREE,
  KEY `parent_id` (`channeltype`,`parent_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_arctype`
-- -----------------------------
INSERT INTO `ey_arctype` VALUES ('1', '6', '6', '0', '0', '关于我们 ', 'guanyuwomen', '/guanyuwomen', '/guanyuwomen', '', '', 'ABOUT US', '0', '', '/public/upload/arctype/2018/09/05/aad7f6894ee4cebe439ef9d35879bb0a.png', 'lists_single.htm', '', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536050912', '1552463937');
INSERT INTO `ey_arctype` VALUES ('2', '2', '2', '0', '0', '产品中心 ', 'chanpinzhongxin', '/chanpinzhongxin', '/chanpinzhongxin', '', '', 'PRODUCT', '0', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536050920', '1552464065');
INSERT INTO `ey_arctype` VALUES ('3', '1', '1', '0', '0', '新闻资讯 ', 'xinwenzixun', '/xinwenzixun', '/xinwenzixun', '', '', 'NEWS', '0', '', '', 'lists_article.htm', 'view_article.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '1', '', 'cn', '1536050928', '1552463045');
INSERT INTO `ey_arctype` VALUES ('4', '3', '3', '0', '0', '成功案例 ', 'chenggonganli', '/chenggonganli', '/chenggonganli', '', '', 'CASE', '0', '', '', 'lists_images.htm', 'view_images.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536050984', '1552462833');
INSERT INTO `ey_arctype` VALUES ('6', '4', '4', '0', '0', '下载中心 ', 'xiazaizhongxin', '/xiazaizhongxin', '/xiazaizhongxin', '', '', '', '0', '', '', 'lists_download.htm', 'view_download.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536050998', '1552461762');
INSERT INTO `ey_arctype` VALUES ('7', '6', '6', '0', '0', '联系我们 ', 'lianxiwomen', '/lianxiwomen', '/lianxiwomen', '', '', '', '0', '', '', 'lists_single.htm', '', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536051005', '1552461598');
INSERT INTO `ey_arctype` VALUES ('8', '8', '8', '0', '0', '客户留言', 'kehuliuyan', '/kehuliuyan', '/kehuliuyan', '', '', '', '0', '', '', 'lists_guestbook.htm', '', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536051011', '1552461500');
INSERT INTO `ey_arctype` VALUES ('9', '2', '2', '2', '2', '第一系列 ', 'diyixilie', '/chanpinzhongxin/diyixilie', '/chanpinzhongxin/diyixilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536055827', '1552464041');
INSERT INTO `ey_arctype` VALUES ('10', '2', '2', '2', '2', '第二系列', 'dierxilie', '/chanpinzhongxin/dierxilie', '/chanpinzhongxin/dierxilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536055838', '1552464033');
INSERT INTO `ey_arctype` VALUES ('11', '2', '2', '2', '2', '第三系列', 'disanxilie', '/chanpinzhongxin/disanxilie', '/chanpinzhongxin/disanxilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536055852', '1552464027');
INSERT INTO `ey_arctype` VALUES ('12', '2', '2', '2', '2', '第四系列', 'disixilie', '/chanpinzhongxin/disixilie', '/chanpinzhongxin/disixilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536055864', '1552464020');
INSERT INTO `ey_arctype` VALUES ('13', '2', '2', '2', '2', '第五系列', 'diwuxilie', '/chanpinzhongxin/diwuxilie', '/chanpinzhongxin/diwuxilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536055872', '1552464014');
INSERT INTO `ey_arctype` VALUES ('15', '1', '1', '3', '3', '公司动态', 'gongsidongtai', '/xinwenzixun/gongsidongtai', '/xinwenzixun/gongsidongtai', '', '', '', '1', '', '', 'lists_article.htm', 'view_article.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '1', '', 'cn', '1536116936', '1552463032');
INSERT INTO `ey_arctype` VALUES ('16', '1', '1', '3', '3', '行业资讯', 'xingyezixun', '/xinwenzixun/xingyezixun', '/xinwenzixun/xingyezixun', '', '', '', '1', '', '', 'lists_article.htm', 'view_article.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '1', '', 'cn', '1536116948', '1552463025');
INSERT INTO `ey_arctype` VALUES ('17', '3', '3', '4', '4', '最新案例', 'zuixinanli', '/chenggonganli/zuixinanli', '/chenggonganli/zuixinanli', '', '', '', '1', '', '', 'lists_images.htm', 'view_images.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536116970', '1552462825');
INSERT INTO `ey_arctype` VALUES ('18', '3', '3', '4', '4', '经典案例', 'jingdiananli', '/chenggonganli/jingdiananli', '/chenggonganli/jingdiananli', '', '', '', '1', '', '', 'lists_images.htm', 'view_images.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536116980', '1552462814');
INSERT INTO `ey_arctype` VALUES ('19', '4', '4', '6', '6', '帮助文档', 'bangzhuwendang', '/xiazaizhongxin/bangzhuwendang', '/xiazaizhongxin/bangzhuwendang', '', '', '', '1', '', '', 'lists_download.htm', 'view_download.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536117007', '1552461754');
INSERT INTO `ey_arctype` VALUES ('20', '4', '4', '6', '6', '档案下载', 'danganxiazai', '/xiazaizhongxin/danganxiazai', '/xiazaizhongxin/danganxiazai', '', '', '', '1', '', '', 'lists_download.htm', 'view_download.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'cn', '1536117016', '1552461745');
INSERT INTO `ey_arctype` VALUES ('21', '6', '6', '0', '0', 'About us', 'guanyuwomen', '/guanyuwomen', '/guanyuwomen', '', '', 'ABOUT US', '0', '', '/public/upload/arctype/2018/09/05/aad7f6894ee4cebe439ef9d35879bb0a.png', 'lists_single.htm', '', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536050912', '1552463937');
INSERT INTO `ey_arctype` VALUES ('22', '2', '2', '0', '0', 'Product', 'chanpinzhongxin', '/chanpinzhongxin', '/chanpinzhongxin', '', '', 'PRODUCT', '0', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536050920', '1552464065');
INSERT INTO `ey_arctype` VALUES ('23', '2', '2', '22', '22', 'First series', 'diyixilie', '/chanpinzhongxin/diyixilie', '/chanpinzhongxin/diyixilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536055827', '1552464065');
INSERT INTO `ey_arctype` VALUES ('24', '2', '2', '22', '22', 'Second series', 'dierxilie', '/chanpinzhongxin/dierxilie', '/chanpinzhongxin/dierxilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536055838', '1552464065');
INSERT INTO `ey_arctype` VALUES ('25', '2', '2', '22', '22', 'Third series', 'disanxilie', '/chanpinzhongxin/disanxilie', '/chanpinzhongxin/disanxilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536055852', '1552464065');
INSERT INTO `ey_arctype` VALUES ('26', '2', '2', '22', '22', 'Fourth series', 'disixilie', '/chanpinzhongxin/disixilie', '/chanpinzhongxin/disixilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536055864', '1552464065');
INSERT INTO `ey_arctype` VALUES ('27', '2', '2', '22', '22', 'Fifth series', 'diwuxilie', '/chanpinzhongxin/diwuxilie', '/chanpinzhongxin/diwuxilie', '', '', '', '1', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536055872', '1552464065');
INSERT INTO `ey_arctype` VALUES ('28', '1', '1', '0', '0', 'News', 'xinwenzixun', '/xinwenzixun', '/xinwenzixun', '', '', 'NEWS', '0', '', '', 'lists_article.htm', 'view_article.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '1', '', 'en', '1536050928', '1552463045');
INSERT INTO `ey_arctype` VALUES ('29', '1', '1', '28', '28', 'Company News', 'gongsidongtai', '/xinwenzixun/gongsidongtai', '/xinwenzixun/gongsidongtai', '', '', '', '1', '', '', 'lists_article.htm', 'view_article.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '1', '', 'en', '1536116936', '1552463045');
INSERT INTO `ey_arctype` VALUES ('30', '1', '1', '28', '28', 'Industry information', 'xingyezixun', '/xinwenzixun/xingyezixun', '/xinwenzixun/xingyezixun', '', '', '', '1', '', '', 'lists_article.htm', 'view_article.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '1', '', 'en', '1536116948', '1552463045');
INSERT INTO `ey_arctype` VALUES ('31', '3', '3', '0', '0', 'Case', 'chenggonganli', '/chenggonganli', '/chenggonganli', '', '', 'CASE', '0', '', '', 'lists_images.htm', 'view_images.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536050984', '1552462833');
INSERT INTO `ey_arctype` VALUES ('32', '3', '3', '31', '31', 'Latest case', 'zuixinanli', '/chenggonganli/zuixinanli', '/chenggonganli/zuixinanli', '', '', '', '1', '', '', 'lists_images.htm', 'view_images.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536116970', '1552462833');
INSERT INTO `ey_arctype` VALUES ('33', '3', '3', '31', '31', 'Classic Case', 'jingdiananli', '/chenggonganli/jingdiananli', '/chenggonganli/jingdiananli', '', '', '', '1', '', '', 'lists_images.htm', 'view_images.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536116980', '1552462833');
INSERT INTO `ey_arctype` VALUES ('34', '4', '4', '0', '0', 'Download', 'xiazaizhongxin', '/xiazaizhongxin', '/xiazaizhongxin', '', '', '', '0', '', '', 'lists_download.htm', 'view_download.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536050998', '1552461762');
INSERT INTO `ey_arctype` VALUES ('35', '4', '4', '34', '34', 'Help document', 'bangzhuwendang', '/xiazaizhongxin/bangzhuwendang', '/xiazaizhongxin/bangzhuwendang', '', '', '', '1', '', '', 'lists_download.htm', 'view_download.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536117007', '1552461762');
INSERT INTO `ey_arctype` VALUES ('36', '4', '4', '34', '34', 'File download', 'danganxiazai', '/xiazaizhongxin/danganxiazai', '/xiazaizhongxin/danganxiazai', '', '', '', '1', '', '', 'lists_download.htm', 'view_download.htm', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536117016', '1552461762');
INSERT INTO `ey_arctype` VALUES ('37', '6', '6', '0', '0', 'CONTACT US', 'lianxiwomen', '/lianxiwomen', '/lianxiwomen', '', '', '', '0', '', '', 'lists_single.htm', '', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536051005', '1552461598');
INSERT INTO `ey_arctype` VALUES ('38', '8', '8', '0', '0', 'FEEDBACK', 'kehuliuyan', '/kehuliuyan', '/kehuliuyan', '', '', '', '0', '', '', 'lists_guestbook.htm', '', '', '', '', '100', '0', '0', '0', '0', '0', '1', '0', '', 'en', '1536051011', '1552461500');
INSERT INTO `ey_arctype` VALUES ('39', '2', '2', '9', '2', '三级分类', 'sanjifenlei', '/chanpinzhongxin/diyixilie/sanjifenlei', '/chanpinzhongxin/diyixilie/sanjifenlei', '', '', '', '2', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '1', '0', '0', '1', '0', '', 'cn', '1552465722', '1613989591');
INSERT INTO `ey_arctype` VALUES ('40', '2', '2', '23', '22', 'Three-level classification', 'sanjifenlei', '/chanpinzhongxin/diyixilie/sanjifenlei', '/chanpinzhongxin/diyixilie/sanjifenlei', '', '', '', '2', '', '', 'lists_product.htm', 'view_product.htm', '', '', '', '100', '0', '0', '1', '0', '0', '1', '0', '', 'en', '1552465722', '1613989591');

-- -----------------------------
-- Table structure for `ey_article_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_article_content`;
CREATE TABLE `ey_article_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `content` longtext COMMENT '内容详情',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `news_id` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='资讯内容表_存储正常内容';

-- -----------------------------
-- Records of `ey_article_content`
-- -----------------------------
INSERT INTO `ey_article_content` VALUES ('5', '8', '&lt;p&gt;“内容为王”这句话在哪个时代都不会过时。随着消费升级，日益庞大的中国高端群体对高品质的生活方式与旅行体验的需求为高端出境旅游市场带来巨大市场机遇。现今的旅游产品也更向个性化、定制化、品质化靠拢，对内容创新提出更高的要求。内地的旅游内容市场仍有5-10倍的增长空间。最近36氪接触了一家做移动端旅游社区电商的团队——河马旅居指南。&lt;/p&gt;&lt;p&gt;河马旅居定位中等收入人群18-34岁的年轻群体，想通过碎片化的PGC或UGC内容培养用户粘性，由内容社区模式切入出境游市场。传统的旅游内容多是以长图文的游记形式呈现，河马旅居并不刻意强调旅游路线或整个游历过程的感受，在内容呈现上更加碎片化、个性化、移动化以及品质化，以小众或特色地点作为维度输出内容，建立内容社区，类似于旅游界的“小红书”或“什么值得买”。&lt;/p&gt;&lt;p&gt;河马旅居在部分海外旅游城市有一个4到5人的自媒体小团队定期生产PGC内容，每月更新一次内容，以优质的内容导流。目前河马的获客成本低至2-3元/人。&lt;/p&gt;&lt;p&gt;优质的内容利于培养高粘性度的用户，当累计到一定数量的优质内容生产者，达到一定的用户规模时，将由PGC内容带动UGC内容的自发产出，进而开始搭建旅游内容社区，最后完成向旅游社区电商的转型，形成交易闭环。&lt;/p&gt;&lt;p&gt;目前河马旅居的流量较为分散，微信公众号累计粉丝3万，MONO 5万，豆瓣 1万，C端获客主要来自微博、豆瓣，上周刚上线微信小程序。后期需考虑转化用户集中流量，现阶段团队正尝试跟移动WiFi租赁和签证业务团队资源置换，互相增加入口。&lt;/p&gt;&lt;p&gt;商业模式上，河马旅居打算分两步走，第一阶段，先帮助用户解决去哪里玩的问题。河马打算与当地的旅游局或航空公司合作，帮助他们做中国市场的整体营销，宣传当地旅游资源。第二阶段，解决用户怎么玩的问题。平台可通过用户的行为数据分析社区调性从而推荐相应的特色化旅游产品，例如在京都的寺院坐禅、学习茶道、参观日本酒的蒸馏厂等等。&lt;/p&gt;&lt;p&gt;此外，河马旅居也在尝试开拓知识付费的营收渠道。从体验、艺术、咖啡、酒吧、餐厅、酒店等六个维度切入，做成各旅游城市的PDF版官方性质PGC攻略。3月份售出800多本，每本单价15元。&lt;/p&gt;&lt;p&gt;河马旅居创始人余晓盼表示，河马旅居的核心竞争力还是个性化的内容表达。“传统旅游社区把内容做的太死气沉沉了。人美、景美但流水账似的内容很无趣。好的内容本身就是门槛。原创的有趣的才有生命力。”&lt;/p&gt;&lt;p&gt;内容+电商并不是一个新概念，如今传统OTA、头部电商平台以及媒体型电商都在加码内容，但要持续产出有价值的内容并非易事，需要足够规模的内容生产团队长时间的内容积累，而具有极强传播力的爆款内容更是可遇而不可求，营造内容社区所花费的精力也许正是其门槛所在。&lt;/p&gt;&lt;p&gt;河马旅居目前的管理团队为4人，内容产出团队20人。创始人余晓盼任河马主编兼运营，曾任职于私募、资管、律师事务所，为《美食侦探系列》旅行畅销书作者。团队目前正在寻求天使轮融资。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111499', '1536111499');
INSERT INTO `ey_article_content` VALUES ('6', '9', '&lt;p&gt;36氪获悉，无人便利店“便利家”已获得数百万人民币天使轮投资，资方为联创永宣冯涛。&lt;/p&gt;&lt;p&gt;无人便利店风口正当时，缤果盒子、F5未来商店、深兰科技、Easy Go等一众玩家云集，亚马逊、罗森、阿里巴巴、沃尔玛等巨头亦纷纷试水。&amp;nbsp;&lt;/p&gt;&lt;p&gt;“便利家”创立于2017年3月，位于上海。便利家有微型无人便利店和中型无人便利店两款产品，和一众玩家相比，便利家的差异化在于：灵活。&amp;nbsp;&lt;/p&gt;&lt;p&gt;便利家的“微型无人便利店”，最小单位占地面积不到1平方米（0.68平方米），投放地点更加灵活，包括地铁站、写字楼、高校等，一个最小单位便利店的成本约为1.3万元（批量化生产后可能更低）。最小单位的无人便利店，可以根据人流量的分布，“拼”起来更大单位面积的便利店。低于100人，可放置一个；100人左右，可以拼两个；大于500人，可以拼四个。便利家的“中型无人便利店”，是由6个微型便利店拼起来的，同时在空间里增设桌椅，为消费者提供休憩区间，可放置在地理位置相对开阔的小区、公园等。&lt;/p&gt;&lt;p&gt;技术上，便利家在每一层货架中设置了RFID，并在各个角落缝隙做了密封屏蔽，让识别率更高。流程很简单，用支付宝扫码开门，拿完即走，支付宝自动扣款（微信正在洽谈中）。未来，便利家希望在门把手上做掌纹识别，当消费者进行“拉开门”这个动作的时候，就能够进行识别。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;概念上，便利家其实更接近于售货机，创始人范韶伟认为，便利家是对传统售货机的一个改进。一方面，传统售货机的经营品类大多以饮料和固定包装零食为主，而便利家将以符合健康趋势的“鲜食类”为主；另一方面，传统售货机的出货流程是先付款、再出货，管道的陈列方式使得空间利用率低，如果是鲜食类商品，还有可能在掉下来的过程中发生变形。而便利家为先拿货、再扣款，可以叠放、密集排列，使得空间利用率更高。“同等面积下，我们的放货率比传统售货机多一倍。”&lt;/p&gt;&lt;p&gt;便利家的选品逻辑是，根据不同的场地，选择不同的商品，比如在写字楼满足白领的早午餐需求，提供便当、三明治、沙拉等等；在高校提供零食、卤味、面包等等。比照全家的平均客单价（14元），便利家将平均客单价设定在10元左右。此外，通过小程序，消费者可以反馈自己想吃的食物，根据数据反向指导品类的选择。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;微型、中型便利店之外，便利家还有第三个方面的业务——对于传统夫妻店的改造。线下夫妻店的特点在于大小不一、面积不一，便利家提供的无人便利店改造方案，一是夫妻店共享场地资源，进行销售分成；二是加盟方式，收益比例更高。一方面，小店店主不需要一天十几个小时守着门店，另一方面，在无人售卖之外，还可以延展其它的生意获得更多利润，比如奶茶、咖啡等。&lt;/p&gt;&lt;p&gt;“不管是无人零售还是有人零售，本质上还是零售的生意。”范韶伟说。既然是零售的生意，在网点的布局上，需要站在全局的角度，“最怕东一榔头、西一棒子。”&lt;/p&gt;&lt;p&gt;点、线、面的合理布局，才能最大程度的降低运营成本和物流成本。这其中需要考虑两个重要因素：人流量以及铺设点位的协同。便利家的思路是，在人流量密集的地方布一个中型无人便利店，再在周围100米的范围内，去布局10个微型无人便利店，形成“最小补货单元”， 1个人可以负责20台设备的补货。&lt;/p&gt;&lt;p&gt;至于RFID贴标签的成本问题，范韶伟持有乐观的态度，目前标签成本在0.5-0.6元，但随着RFID在零售市场的普及，RFID标签的价格一定会降低。&lt;/p&gt;&lt;p&gt;本轮融资后，便利家将在上海建立试运营点，中型+微型无人便利店，预期铺设20个网点。目前，便利家正在寻求Pre-A轮融资，用于扩大量产和投放运营。&lt;/p&gt;&lt;p&gt;团队方面，CEO范韶伟毕业于哈尔滨工业大学，曾任商派软件渠道部北部大区经理，是一位连续创业者。COO吴威为上海交通大学硕士，在快消品领域连续创业；CTO彭庚庚毕业于上海大学计算机工程专业，曾任腾讯OMG事业群广告平台部高级工程师。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111522', '1536111522');
INSERT INTO `ey_article_content` VALUES ('7', '10', '&lt;p&gt;除了做基础技术的研究外，腾讯曾表示要通过业务驱动来推动各种应用场景的人工智能化。&lt;/p&gt;&lt;p&gt;结合腾讯的主营业务，也不难猜到未来公司要在游戏、社交、内容和平台工具型四大应用方向发力。&lt;/p&gt;&lt;p&gt;尤其是在社交领域，去年扎克伯格曾表示要推出VR版的Facebook，并展示了虚拟人物形象工具Oculus Avatars；今年7月，Facebook表示Facebook AR工作室将与美图合作，向其提供三款AR相机特效。如今，腾讯也要有所行动了。&lt;/p&gt;&lt;p&gt;7月18日晚间，人工智能初创公司ObEN宣布获得500万美元战略投资。该轮融资由腾讯领投，CMC董事长黎瑞刚及峰尚资本跟投。投融资信息平台crunchbase的数据显示，目前ObEN共完成四轮融资，总金额达到1370万美元。此前的投资人还包括S如山资本、软银韩国风险投资公司和HTC VIVE X等。&lt;/p&gt;&lt;p&gt;公开资料介绍，ObEN创办于2014年，可以通过构建个性化的虚拟声音、形象和个性来创造用户的人工智能虚拟形象，并帮助用户在新兴的数字世界中存储、管理、运营他们的虚拟形象。也就是说，ObEN可以利用人工智能工具，根据用户的照片和声音创建虚拟形象，从而让用户有不同的AR、VR社交体验。&lt;/p&gt;&lt;p&gt;以前ObEN主要帮助游戏玩家创建虚拟形象，如今公司将重点转向于帮助明星打造虚拟形象。通过该虚拟形象，明星可以与粉丝进行实时互动。未来某一天，也许粉丝还可以向明星寻求建议并得到相应的反馈。另外，这一虚拟形象不仅与明星长的非常像，而且说话的方式也是一样的。总的来说，这样一个虚拟形象总好过于一个聊天机器人。&lt;/p&gt;&lt;p&gt;据介绍，ObEN还首次融合了语音、计算视觉以及自然语言处理技术，研发了全栈式虚拟明星所需要的虚拟声音、三维形象及个性化技术。如今ObEN正在打造一个全新的商业平台。在这里，明星和粉丝可以通过个性化的人工智能在移动端、增强现实、虚拟现实以及智能设备、物联网等平台上直接互动。ObEN的个性化的人工智能产品预计将在今年晚些时候发布。&lt;/p&gt;&lt;p&gt;而最新一轮融资，将被用于加速ObEN的产品开发，并帮助推动其明星人工智能版权平台广泛应用到各类数字平台上。对于这次合作，腾讯投资的执行董事姚磊文说道，ObEN将带来由明星人工智能驱动的全新娱乐方式和内容。&lt;/p&gt;&lt;p&gt;早前，ObEN就曾表示要做“每个人的人工智能社交平台”。在这方面，公司已经先后进行过多次布局。&lt;/p&gt;&lt;p&gt;在今年3月的HTC Vive生态圈大会上，ObEN宣布与HTC Vive合作，开发了一个让用户一起VR游玩、VR“K歌”的微信小程序。在这一程序中，VR用户可以向好友发送邀请；接到邀请的好友可以上传自拍和音频，最终使用建成的形象与邀请者一起漫步海滩，或者参观景点。&lt;/p&gt;&lt;p&gt;随后的4月底，ObEN推出了一个整合有VR社交体验的微信聊天服务短片，当然用户需要戴上HTC Vive头显。在短片中，用户需要先拍一张自拍，上传到微信制作虚拟形象，然后带上HTC Vive，就可以接收微信好友发来的信息，并可以用语音直接进行回复。未来，拥有VR、AR功能的微信或许又可以收割大量亚洲用户。&lt;/p&gt;&lt;p&gt;6月底，ObEN又宣布与韩国SM娱乐成立合资公司幻星有限公司（AI Stars）。据悉，ObEN要利用人工智能技术为SM娱乐旗下的知名艺人制作AI虚拟形象，而幻星有限公司正是管理这些”AI明星“的经纪公司。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;这次腾讯领投ObEN，是否可以进一步推动公司社交业务的人工智能化。如今，各大公司不仅在忙于建立人工智能实验室，而且像Facebook这样的公司已经成立了更具象的Facebook AR实验室。另外，据说苹果很快就会推出ARKit平台。未来，腾讯是否还会成立单独的AR实验室，进一步布局社交AI业务？&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111542', '1536111542');
INSERT INTO `ey_article_content` VALUES ('8', '11', '&lt;p&gt;数据显示，2015年，我国服务业同比增长8.3%，分别高于国内生产总值和第二产业增加值增速1.4和2.3个百分点，占国内生产总值的比重达到50.5%，首次过半，而与发达国家相比，我国服务业仍有20%-30%的发展空间。美业属于实体服务业，整个市场有上千亿的规模，但是信息化程度和零售餐饮业相比着实比较低。其中的原因就是餐饮和零售客流量大，触达人群广，而美业客流量相对小，加上从业人员素质导致信息化程度低、管理效率低。&lt;/p&gt;&lt;p&gt;美业现在的主要管理方式是纸质账本和简单的收银、结算软件，纸质管理约占行业客户的90%，功能简单只能用于管理会员卡的单机版管理软件约占9%。美业的客户与店面的粘性比较高，虽然是低频次消费，但是一旦用户选择一家店，在接收到较好服务之后很难再转向其它店，因此美业在预约管理、客户管理等需求上要高于餐饮和零售，应用的软件形态并不一定以结算收银为主，重点是CRM系统、收银、绩效考核、预约为一体的管理软件。&lt;/p&gt;&lt;p&gt;36氪近日了解的门庭管店是一款美业 SaaS 产品，主要功能有&amp;nbsp;SCRM 会员管理、智能预约、绩效工资、 营销卡券、全能收银等。门庭管店产品在客户方是微信公众号和小程序；美容师端是用于客户关系维系、工资查询和预约的移动端；前台端是 Upad，主要是收银和预约；还有一个店长用的总后台，主要是 PC 或者一体化智能机，做整体的数据管理。&lt;/p&gt;&lt;p&gt;其实管理的过程也是沉淀数据的过程，也是开发闭环和生态的过程，CEO 孟凡刚告知记者，门庭管店现在先用营销工具+SaaS 系统，切入线下美业门店，建立强关系，然后通过收银系统嵌入微信、支付宝支付，将门店的线上流水导入平台沉垫大量资金，最后在基于 SaaS 交易数据、消费行为数据进行大数据分析延伸美业产品、项目供应链。比如门庭管店最近正在做韩国的皮肤检测仪，检测完之后放在客户档案里，综合到智能管理平台，这样顾客再来的时候就可以针对个人特点进行服务。&lt;/p&gt;&lt;p&gt;美业的变革形成了两个阵营，一个阵营是大型会所，积累了很多老顾客，老顾客随着年龄的增长对养生的需求越来越强烈，一旦切入了养生，就和80、90这些互联网主力军有些脱离；还有一类是近两年新开的店，新开的店没有老会员的资源，那么如何针对80、90人群做服务就变成了主要任务 ，年轻人属于互联网使用场景人群，因此新店更容易植入 SaaS 软件。门庭管店更偏向于年轻化的店，在积累了一段时间的经验和资金之后再做老店。&lt;/p&gt;&lt;p&gt;对于没有信息化的店，前期的数据录入是最麻烦的，门庭管店会派客服帮助整理数据，时间大概是2-3天。其次就是软件使用的普及，关于这一点，门庭管店有专门的培训，包括音视频的远程培训。收费模式上分为私有云部署和公有云，公有云不过万元，之后每年有1000元维护费用。整个软件的安装大概能为门店省下一个人的成本。&lt;/p&gt;&lt;p&gt;门庭管店的客户包括克丽缇娜、丝域养发、庆熙美学、千禧鸟、自然美等。&lt;/p&gt;&lt;p&gt;行业竞品方面，美业 SaaS 提供商还包括博卡、喔噻、美约汇、美丽加、点美、美业邦等。&lt;/p&gt;&lt;p&gt;孟凡刚认为做美业 SaaS 的一个门槛就是软件研发能力，只有有比较强的研发能力才能开发出页面简洁、功能齐全、适用于管理的产品，客户与公司粘性才会提高，所以门庭管店来的想法是以做出更智能化的产品；其次一点就是销售能力，门庭管店现在采用合伙人方式，代理渠道可以发展自己的客户，目前门庭合伙人有100多个。&lt;/p&gt;&lt;p&gt;团队现在30人，一半以上为技术人员，CEO 孟凡刚曾任会友科技 CEO、随车记 CEO，有8年的互联网及移动互联网运营管理经验。公司已经完成了天使轮融资，计划进行下一轮融资。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111560', '1536111560');
INSERT INTO `ey_article_content` VALUES ('9', '12', '&lt;p&gt;编者按：人工智能技术的发展正在不断地改变着人们的生活与工作方式，它在一定程度上推动了社会的发展与进步，这一点是毋庸置疑的。但人工智能并不是万能的，因为机器并不具备人类的思维与情绪。当你打开网站上的在线求助窗口，却发现回答你的只是冷冰冰的机器人的时候，恐怕应该会很失望吧。&lt;/p&gt;&lt;p&gt;2016年4月，马克·扎克伯格在Facebook的F8会议上为Messenger上的开发者们描述了一个光明的未来，并宣布将进入“像和朋友一样与机器人聊天”的新时代。世界各地的开发人员，这些开发人员都拥有Facebook、Google和Microsoft等大公司的认证，都声称独立移动应用程序的时代结束了，并一起庆祝新的方式的到来——对话商务（Conversational Commerce）和聊天机器人（Chatbots）。11个月前，Facebook宣布其官方开发的聊天机器人“M”的beta测试中AI失败率为70％，随后便更新了其平台，并建议开发人员在Messenger中开发更轻量级的应用程序，同时禁用会话输入。&lt;/p&gt;&lt;p&gt;关于Wordhop.io，一直以来我们都知道两件事。第一件事就是，AI真的很难，要实现让机器人100％像朋友一样与人类交流还需要很多年。毕竟，机器人不能像人一样产生共鸣。第二，Facebook消费者不会因为他们想购物或对天气感兴趣而给一个企业发送消息。这些体验是以具备聊天机器人为前提条件的，并且还需要已从信息传递领域拓展到社交网络领域的行业数据的支撑。&lt;/p&gt;&lt;p&gt;Facebook用户真正想要的就是，在有问题的时候可以迅速得到商家的回复。&lt;/p&gt;&lt;p&gt;消费者在Facebook上给商家发送消息的主要原因是想要获得服务。其他的一切都是浮云。这样的交互式预售可能从客户的发问开始，及时的答复可以推进交易的进行。如果客户联系销售客服，通常是因为他们真的有问题需要请教客服。一些答案可以由机器人回答，而更复杂的问题可以交给人来解决，在有得力工具的情况下，人类的回复速度可以媲美机器人。&lt;/p&gt;&lt;p&gt;然而许多机器人开发者没有将注意力集中在最有需求的那部分上，而是寻求创造新的用户体验，或重新开发升级旧的关于chatbot的概念。如果机器人开发者觉得参与率低，这可能不是因为AI失败了，而是因为他们把消费者往一条最开始就不想走的路上引。没有利用已存在的消费者行为模式，也没有训练机器人回应客户的需求，AI的作用只是，实现机器人开发商想象中的创造性体验并指导消费者通过该体验来进行交互。&lt;/p&gt;&lt;p&gt;Facebook现在建议机器人开发人员完全禁用会话输入。&lt;/p&gt;&lt;p&gt;我个人并不认为，像Facebook建议的那样禁用聊天输入是针对AI和NLP的技术限制的正确解决方案。无对话能力的通信机器人对于新闻机器人是可以接受的，这其中的体验由通知和内容消费驱动。但是，如果是以服务为基础的业务的话，则需要为用户提供一个可以与你友好互动的平台。如果文字输入是Messenger的主要方式，那么就会限制客户的沟通意愿和能动性，并迫使他们寻求你能想象到的其他方式的客户服务，又或者只是延迟回复都会让客户更加失望。想一想IVR吧，每次听完菜单选项后，你要按几下“0”。&lt;/p&gt;&lt;p&gt;商界应该采用自动和人工相结合的方式，这样才能满足Facebook用户的需求。&lt;/p&gt;&lt;p&gt;中国的微信的小程序是整合于消息互动的，这满足了开发者对聊天机器人的期待，但是这是东方的文化现象，而西方企业则应该首先利用已有的消费者行为，并且要更好地利用这样的行为数据。如果你不是“聊天机器人会取代人工服务”这一概念的拥趸，只是坚守开业之初对顾客的承诺，那么引入这样的科技就可以帮助你加强与客户间的交流。如果你能够实现现在Facebook消费者们的期望，那么随着时间的推移，你也可以增加新的功能，并将消费者往你所期待的方向引领。最终你很可能会满足他们的需求。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111575', '1536111575');
INSERT INTO `ey_article_content` VALUES ('10', '13', '&lt;p&gt;36氪从ofo内部获得消息，可能在今年4月份，ofo将会接入到滴滴出行的App上，届时用户可以直接在滴滴上面使用ofo的服务。&lt;/p&gt;&lt;p&gt;“这件事最近被频繁地提上日程，内部消息是下个月就有可能接入。”一名ofo内部员工说。36氪向滴滴官方、ofo官方求证了此消息，但截止发稿时，两家公司均未对此确认或否认。&lt;/p&gt;&lt;p&gt;ofo创始人戴威曾在去年12月表示，何时接入滴滴APP，没有明确的时间表。“ofo的模式是没有GPS的，用户看到车就用，整个逻辑跟滴滴平台打车的逻辑不太一样，但近期我们会跟滴滴联合推出一些东西。”&lt;/p&gt;&lt;p&gt;不过类似的接入并非没有先例。今年2月，微信联合摩拜单车宣布，用户通过微信“扫一扫”扫描摩拜单车车身上的二维码，就可直接进入摩拜单车微信小程序，点击开锁即可用车。&lt;/p&gt;&lt;p&gt;这并不是第一次传出ofo会接入滴滴的消息，也不是两个平台的第一次深度绑定。此前，滴滴参与了ofo最近三轮的融资。根据腾讯科技的报道，一位共享单车投资人透露，ofo经过多轮融资以后，滴滴已经成为ofo最大股东，占股超过30%。“这意味着，滴滴在ofo的话语权更强了，同时，ofo的成与败，滴滴将是最大利息相关方。”&lt;/p&gt;&lt;p&gt;这也不难理解，滴滴将ofo接入之后，将作为巨大的用户流量入口为其导流，而ofo则进一步巩固生意体量，在滴滴的加持下提高行业地位和想象空间。&lt;/p&gt;&lt;p&gt;而且，如果真的将ofo接入进来，也意味着滴滴及其背后的资本在进一步弥补自己在出行领域的缺口。&lt;/p&gt;&lt;p&gt;有知情人向36氪透露，曾经滴滴也想做共享单车，但是出于某些原因没能实现，最终只能作为ofo的投资方。不过这并不意味着滴滴不会更进一步涉足这个市场。&lt;/p&gt;&lt;p&gt;滴滴投资ofo，无非是瞄准了“最后三公里”的机会。&lt;/p&gt;&lt;p&gt;当前国内在“最后三公里”领域仍是一个非常初级的阶段，也没有系统性服务商。而在北上广的一线城市，交通的繁复令各大出行平台对“最后三公里”争夺日趋激烈。&lt;/p&gt;&lt;p&gt;“从出发地到目的地3公里，到底是打车还是骑车，这对于用户来说是可以选择的，选哪一个都说得过去。”一名ofo内部员工说，而滴滴的做法就是自己要把不同的选项全部覆盖。&lt;/p&gt;&lt;p&gt;在滴滴和ofo及其投资人看来，共享单车领域已经迎来了一个快速增长期。Ofo的一名公关曾对媒体表示，以专车和快车为例，2012 年之后的这几年，发展速度是非常快的。ofo 则是在 1 年的时间里，把日订单量从 200 单做到了50万单，“过去的专车快车，现在的 ofo 都是经历着高速的增长，这个势头是类似的”。上述公关人员说。&lt;/p&gt;&lt;p&gt;去年12月末，ofo联合滴滴推出红包活动，这是ofo被滴滴战略投资后双方首次进行大规模合作。而活动采取的红包策略，也被认为是滴滴历来进行市场推广的利器之一。&lt;/p&gt;&lt;p&gt;按照滴滴方的说法，2017年仍旧会将主要精力放在出行领域，希望能够打通每个人的出行。这意味着所有的出行方式都将会被覆盖到，共享单车也会是滴滴发力的方向之一。&lt;/p&gt;&lt;p&gt;36氪认为，滴滴进一步接入共享单车还有一个重要的原因在于，与“苛刻”的互联网专车规定相比，共享单车发展初期便受到了政策鼓励，约束条件也颇为合理。而去年至今一直受网约车新政影响的滴滴出行无论是从政策角度，还是从新的业务增长角度来看，都有可能会更进一步从共享单车的风口上分得一杯羹。&lt;/p&gt;&lt;p&gt;不过，36氪还有疑问，没有导航的ofo要怎么接入滴滴，以及接入之后到底会给用户带来哪些影响？&lt;/p&gt;&lt;p&gt;“据我了解到的情况是，滴滴可能会把技术和导航这快的事情承包给第三方公司。”上述ofo内部员工说，接入滴滴之后的ofo可能依旧没有导航，用户在页面上主要行使扫码开锁和支付功能。&lt;/p&gt;&lt;p&gt;至于用户体验方面，上述内部员工表示，“本来ofo的主体功能就比较单一，操作起来非常的简单，相信可以无缝对接到滴滴平台上，”他强调，“毕竟未来的趋势是，人们手机上装载的app数量将会越来越少”。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111591', '1536111591');
INSERT INTO `ey_article_content` VALUES ('11', '14', '&lt;p&gt;从2014年起，网络大电影这个词逐渐进入人们的眼球，当时满地都是几十万制作成本博得百万票房的故事，考拉娱乐便是在那个网生内容的蛮荒时代入的局。&lt;/p&gt;&lt;p&gt;在接受36氪采访时，考拉娱乐创始人钱伟坦言借过去的势他们赚到了不少钱，“我们有个片子8万成本，最后回收了一百多万的票房。”在过去的两年间，他们平均一年能做20多部大电影，在各大视频网站上收益排名Top10中，你很容易就能发现考拉出品的好几部片子，也给他们积累了很多渠道资源。&lt;/p&gt;&lt;p&gt;但当时间跨入今年后，网络大电影市场开始洗牌，去年整个市场上600多部片子突然激增到2000部以上，四两拨千斤的时代已经过去了，你会发现排名靠前的网大制作成本基本都在百万以上，已经达到了二三线院线水平。&lt;/p&gt;&lt;p&gt;近期推出的黄金赌城系列&lt;br/&gt;&lt;/p&gt;&lt;p&gt;市场红利期过去后，考拉娱乐在今年就开始了他们新的布局：瞄准女性市场，做精品网生内容。“这个其实是之前就规划好的，洗牌是肯定的。”钱伟说今年他们上半年基本没有怎么发片子，都在为今后的“慢”内容做准备。&lt;/p&gt;&lt;p&gt;考拉娱乐首先改变的是IP孵化方式，他们组建了一支漫画团队，定位是连载时间在三年以上的长篇大世界观作品，当这些作品经过市场验证后，逐步推出相应的网络剧、大电影等衍生内容。&lt;/p&gt;&lt;p&gt;其上半年验证这个模式的作品《极品修真少年》目前连载52话就超过3.5亿人气，同名大电影也已经开拍，“根粉丝对于这种做法反馈非常良好。”钱伟说未来自家头部的女性向作品都会以这种模式推出，做IP放大，然后去做游戏等方面的衍生，他们也已经跟一些游戏、影视公司达成了合作。&lt;/p&gt;&lt;p&gt;在开始规划长线IP的同时，考拉娱乐还在构建自己的渠道，“跟当年手游潮一样，开始洗牌后渠道会越来越强势，CP的话语权会下降。”钱伟说这也是在为未来做打算，不让自己完全受制于平台，现在考拉的做法是做女性向的PGC直播内容。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;目前他们已经接入微信小程序，自主开发了一个PGC直播频道，跟一些女性向大号联合推出定制的直播内容，满足这些大号图文内容向视频内容升级需求同时积攒垂直领域的流量，为今后自家女性向的漫画、网生内容做准备。现在这个频道仍在测试中，只在每晚8点进行直播，平均在线人数在几千左右。&lt;/p&gt;&lt;p&gt;“合作过的公众号反馈都还OK，未来希望把它变成一个全天直播的女性频道。”钱伟表示这个平台并不需要很大，目的是形成IP孵化、渠道推广、变现的内部循环。当然，构建自家渠道并不意味着考拉要放弃平台渠道，接下来他们出品的几部作品都跟平台有深度的合作。&lt;/p&gt;&lt;p&gt;在确定新的内容孵化和渠道推广模式后，钱伟表示他们在核心的网生内容生产上也完成了升级，现在考拉在制作上也采用了编剧和制片人核心制，过去推出的大量作品其实是在做人才筛选，“比如不能适应这种模式的导演被我们淘汰掉了。”钱伟说在合作的几十位导演中，他们只留下了两位。&lt;/p&gt;&lt;p&gt;未来考拉娱乐会以每年10部左右网络大电影的节奏推进，一部分是以漫画为源头的女性向慢内容，做长线的IP变现，另一部分则为保证考拉品牌活跃度以及创造流水的市场向内容。&lt;/p&gt;&lt;p&gt;团队方面，钱伟是投资人出身，曾担任创东方投资总监，环宇互动传媒创始人。负责公司整体布局和影视原创内容的规划，在漫画和直播方面则有另外两位合伙人负责，漫画合伙人付韬曾担任西山居游戏制作人。&lt;/p&gt;&lt;p&gt;此前他们已经获得由合一资本和创东方投资的数千万A轮融资，目前正在准备A+轮。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111612', '1536111612');
INSERT INTO `ey_article_content` VALUES ('12', '15', '&lt;p&gt;36氪获悉，线下公众号推广公司乐摇摇科技已完成 3800 万元 A+ 轮融资，投资方为广发信德。&lt;/p&gt;&lt;p&gt;众所周知，如今线上流量昂贵，大家的目光开始聚焦线下。除了传统的地铁、电梯广告，线下也已经有一些新的广告模式，比如通过商业 Wi-Fi 获客，代表公司有迈外迪；比如现在餐饮店外常见的照片打印机，是专门服务公众号的效果广告。乐摇摇科技则选择利用抓娃娃机做流量分发。&lt;/p&gt;&lt;p&gt;之所以从抓娃娃机切入，创始人陈耿豪认为主要原因有两点：首先，抓娃娃机国内存量有 200 万台，包括其在内的所有投币类设备存量约 2000 万台，这些机器无法进行移动支付，消费者和商家的痛点需要被解决；第二，抓娃娃机多在商场、KTV 等地，用户群体是 16 到 35 岁女性，广告投放更精准。&lt;/p&gt;&lt;p&gt;从广告受众的角度可以看出，乐摇摇比 WI-FI 获客更精准；而从乐摇摇的业务模式看，他们不像市面上的照片打印机那样自己生产机器，而是和机器生产厂家合作，只提供硬件盒子，因此业务模式更轻。&lt;/p&gt;&lt;p&gt;具体看乐摇摇的业务模式，他们免费给机器提供硬件盒子和 SaaS 系统，由厂家安装好盒子后发货给商家，据统计，实现移动支付后的抓娃娃机能增加 28% 的收入。用户想抓娃娃时，先用微信扫码，这时有两种模式供选择，第一种是充值使用，用户充值后即可花 1 元抓娃娃；第二种是免费使用，用户选择此模式后，关注一个广告主的微信公众号，即可免费抓一次娃娃，通常用户会看到三、四个广告主的公众号。&lt;/p&gt;&lt;p&gt;通过这种方式，乐摇摇（目前安装了 30000 台机器）每台机器平均每天分发广告 10 次，整个平台每天能为公众号涨粉约 30 万个，平均每个号 7、8 万个，一周的平均留存率为 65%。通常使用广点通的获客成本是接近 3 元一个，使用乐摇摇则是 1 元多一个。除了价格便宜，陈耿豪认为线下互动产生的流量会比线上更真实，更具有场景化，不过他也介绍说，乐摇摇和广点通并非替代关系，公众号一般会结合不同的方式获取用户。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;据陈耿豪介绍，全国大部分抓娃娃机的厂家都在广州番禺，他们已合作了 300 多家，基本覆盖所有厂家，前面提到他们已安装 3 万台机器，覆盖中国 291 个城市，他们计划在 2017 年达到 10 万台。在此之后，他们会扩展到其他游戏类投币机。&lt;/p&gt;&lt;p&gt;目前乐摇摇已经合作的公众号超过 100 个，客户包括广州潮生活、同道大叔、新榜等内容创业者，以及碧桂园、蜜芽等品牌公众号。广告订单为几千万元，乐摇摇按一定比例抽取利润。陈耿豪认为，目前公众号需求量最大，今后小程序也可以成为他们的客户。&lt;/p&gt;&lt;p&gt;除了广告分发变现之外，乐摇摇还希望在未来尝试更多变现方式。在沉淀用户数足够多时，计划通过用户运营变现，可能会尝试游戏、电商等方式；目前月流水为 4000 万元，未来计划开展支付金融和产业链整合业务。&lt;/p&gt;&lt;p&gt;团队方面，创始人陈耿豪曾在联合利华和惠普有 3 年营销工作经验，2011 年曾创立营销互动公司微电互动，2015 年被某上公司并购。CMO徐德强曾是搜狐焦点威海站南通站总经理；CTO杨凯然曾任职于甲骨文；业务VP张杰波是平安保险高管。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111632', '1536111632');
INSERT INTO `ey_article_content` VALUES ('13', '16', '&lt;p&gt;腾讯不仅在阿里怂恿大家花钱的双十一之际高调派钱，如今财报的高速增长业务也刚好跟支付宝和阿里云对标。&lt;/p&gt;&lt;p&gt;今日晚间，腾讯发布今天公布未经审核的第三季度财报。报告显示，腾讯三季度总收入同比增长52%，增速与上季度持平；净利润增速有所下滑。&lt;/p&gt;&lt;p&gt;值得注意的是，腾讯游戏营收比重已经连续两个季度下降，三季度网络游戏收入仅占总营收的45%；而支付和云计算等新兴业务的比重则继续上升，首次超过10%，达到12%。&lt;/p&gt;&lt;h3&gt;净利润增速下滑&lt;/h3&gt;&lt;p&gt;总体财务状况方面，腾讯三季度总收入为人民币403.88亿元（60.48亿美元），同比增长52%，增速与上季度持平。但是盈利增速却有所下滑，期内盈利为人民币107.76亿元（16.14亿美元），比去年同期增长42%；净利润率由去年同期的29%降至27%。&lt;/p&gt;&lt;p&gt;游戏营收占比连续两个季度下滑&lt;br/&gt;&lt;/p&gt;&lt;p&gt;分部业务方面，包括网络游戏和社交网络在内的增值业务依然是腾讯收入的大头，占比约八成。然而，一向被视为腾讯摇钱树的游戏业务，其收入占比却连续两季下降，如今占总营收比重仅有45%左右，该项业务在2015年一度占腾讯营收六成。而社交网络收入增速则在逐步增长，占比一直稳定在23-24%。&lt;/p&gt;&lt;p&gt;再往细看，手游已经成了游戏业务的主力，在181亿元的游戏业务收入中，手游为99亿元，同比增长87%；端游收入同比增长仅有10%，而且据财报显示，端游的平均同时在线用户还有下降，因此，腾讯正将工作重点从增加用户在游戏内的时长转至扩展用户互动方式。&lt;br/&gt;&lt;/p&gt;&lt;p&gt;网络广告收入的占比同样较稳定，约占集团收入17%。其中，效果广告收入增长明显，增速达83%，主要由于来自微信朋友圈、移动端新闻应用及微信公众账号广告收入的贡献。微信也不断在探索朋友圈变现的方式，包括其最近上线的朋友圈的LBS本地推广广告和原生推广页广告。&lt;/p&gt;&lt;p&gt;此外，在QQ月活跃用户（8.77亿，比去年同期增长2%）见顶的背景下，微信和WeChat的合并月活跃账户数依然在继续增长，达到8.46亿，比去年同期增长30%。然而，与QQ的月活用户数相比，如果微信未能进一步国际化，其用户见顶之日显然已经不远了，因此，微信目前的工作重心已经不再是增加微信的用户，而是想办法如何让用户们留在微信上，将所有时间都花在这个应用里。因此，微信正在测试“小程序”，让用户无需离开微信界面便可进行低频次互动。&lt;/p&gt;&lt;h3&gt;其他业务收入增长348%&lt;/h3&gt;&lt;p&gt;增长最亮眼的是包括支付及云服务在内的其他业务，同比增长348%，至人民币49.64亿元。至此，其他业务占集团收入的比重已经达到12%，首次超过10%。&lt;/p&gt;&lt;p&gt;阿里和腾讯本来在国内已是两大支付巨头，前者依靠电商，后者依靠社交，展开了多次支付减免大战。支付宝最近更是出海动作频频，腾讯也已经继支付宝之后，开始布局东南亚的支付市场。&lt;/p&gt;&lt;p&gt;同时，虽然其中云服务的具体收入没有披露，但即便是在国内公有云市场一家独大的阿里云，其占阿里总营收也不过只有4%，加上这个市场才刚刚开始，坐拥强大资本的腾讯在游戏这个垂直领域上有着自身的优势，又有布局人工智能领域的意思，要奋起直追也并非难事。&lt;/p&gt;&lt;p&gt;如此看来，尽管腾讯曾在电商领域受挫，影业方面也未有阿里的大动作，但在支付和云计算两个阿里的明星业务上，与腾讯可能还得迎来几场血战。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536111655', '1536111655');
INSERT INTO `ey_article_content` VALUES ('14', '45', '&lt;p&gt;The phrase &amp;quot;content is king&amp;quot; will not be outdated in any era. With the \r\nescalation of consumption, the growing demand for high-quality \r\nlifestyles and travel experiences by the high-end Chinese high-end \r\ngroups has created huge market opportunities for the high-end outbound \r\ntravel market. Today&amp;#39;s tourism products are also more personalized, \r\ncustomized, and quality, and put forward higher requirements for content\r\n innovation. The tourism content market in the Mainland still has 5-10 \r\ntimes of room for growth. Recently, 36 people contacted a team of \r\ne-commerce partners in the mobile tourism community - the Hema Travel \r\nGuide.&lt;br/&gt;&lt;br/&gt;Hippo travels to locate young people in the middle-aged \r\npopulation aged 18-34. They want to cultivate user stickiness through \r\nfragmented PGC or UGC content, and the content community model cuts into\r\n the outbound travel market. The traditional tourism content is mostly \r\npresented in the form of long graphic travels. The hippo travels do not \r\ndeliberately emphasize the travel route or the experience of the entire \r\ntravel process, and the content presentation is more fragmented, \r\npersonalized, mobile and quality. Or a featured location as a dimension \r\nto output content, build a content community, similar to the &amp;quot;small red \r\nbook&amp;quot; or &amp;quot;what is worth buying&amp;quot; in the tourism industry.&lt;br/&gt;&lt;br/&gt;Hippo \r\nResidences In some overseas tourist cities, there is a 4 to 5 person \r\nself-media small team that regularly produces PGC content, and updates \r\nthe content once a month to guide the quality content. At present, the \r\ncost of obtaining a horse is as low as 2-3 yuan/person.&lt;br/&gt;&lt;br/&gt;High-quality\r\n content is conducive to the cultivation of high-viscosity users. When a\r\n certain number of high-quality content producers are accumulated and \r\nreach a certain user scale, the self-produced content of UGC content \r\nwill be driven by PGC content, and then the tourism content community \r\nwill be built. The transformation of e-commerce in the tourism community\r\n has formed a closed loop of transactions.&lt;br/&gt;&lt;br/&gt;At present, the flow \r\nof hippo brigade is relatively scattered. The WeChat public account has a\r\n total of 30,000 fans, MONO 50,000, and 10,000 petal lobes. The C-end \r\ncustomers mainly come from Weibo and Douban, and they just launched the \r\nWeChat program last week. In the later stage, it is necessary to \r\nconsider converting user centralized traffic. At this stage, the team is\r\n trying to replace the mobile WiFi lease and visa business team \r\nresources and increase the entrance.&lt;br/&gt;&lt;br/&gt;In the business model, the \r\nHippo Residence intends to go in two steps. In the first stage, the user\r\n is first asked to solve the problem of where to play. Hippo intends to \r\nwork with local tourism bureaus or airlines to help them do the overall \r\nmarketing of the Chinese market and promote local tourism resources. The\r\n second stage is to solve the problem of how users play. The platform \r\ncan analyze the community tones through the user&amp;#39;s behavior data to \r\nrecommend corresponding special tourism products, such as meditation in \r\ntemples in Kyoto, study tea ceremony, visit the distillery of Japanese \r\nsake and so on.&lt;br/&gt;&lt;br/&gt;In addition, Hippo Residence is also trying to \r\ndevelop revenue-generating revenue channels. From the six dimensions of \r\nexperience, art, coffee, bars, restaurants, hotels, etc., the PDF \r\nversion of the official nature of each tourist city PGC Raiders. More \r\nthan 800 copies were sold in March, and the price per unit was 15 yuan.&lt;br/&gt;&lt;br/&gt;Yu\r\n Xiaopan, founder of Hippo Residence, said that the core competitiveness\r\n of Hippo Residence is still a personalized expression. “Traditional \r\ntourism communities have made the content too dead. The content of \r\npeople’s beauty, Jingmei but the flow of accounts is very boring. Good \r\ncontent is the threshold itself. The original and interesting is vital.”&lt;br/&gt;&lt;br/&gt;Content\r\n + e-commerce is not a new concept. Today, traditional OTA, head \r\ne-commerce platform and media e-commerce are all overweight content, but\r\n it is not easy to continue to produce valuable content. It requires a \r\nlarge-scale content production team for a long time. The content of the \r\naccumulation, and the explosive content of the strong communication is \r\neven more difficult to meet, the energy spent creating the content \r\ncommunity may be the threshold.&lt;br/&gt;&lt;br/&gt;The current management team of \r\nHippo Residences is 4 people and the content production team is 20 \r\npeople. Founder Yu Xiaopan is the editor and operator of Hema. He has \r\nworked in private equity, asset management, and law firms, and is the \r\nbest-selling author of the Food Detective Series. The team is currently \r\nseeking angel round financing.&lt;/p&gt;', '1552463217', '1552463217');
INSERT INTO `ey_article_content` VALUES ('15', '46', '&lt;p&gt;36氪 was informed that the unmanned convenience store “Convenience Home” \r\nhas received millions of RMB angel round investment, and the employer is\r\n Lianchuang Yongxuan Feng Tao.&lt;br/&gt;&lt;br/&gt;At the time of the unmanned \r\nconvenience store, the players such as Binguo Box, F5 Future Store, \r\nShenlan Technology, Easy Go, and so on, Amazon, Rosen, Alibaba, Wal-Mart\r\n and other giants also tried the water.&lt;br/&gt;&lt;br/&gt;“Convenience Home” was \r\nfounded in March 2017 and is located in Shanghai. Convenience homes have\r\n two products: micro-unmanned convenience stores and medium-sized \r\nunmanned convenience stores. Compared with a lot of players, the \r\nconvenience of convenience is: flexible.&lt;br/&gt;&lt;br/&gt;The convenience of the \r\n&amp;quot;micro-unmanned convenience store&amp;quot;, the smallest unit covers less than 1\r\n square meter (0.68 square meters), the placement is more flexible, \r\nincluding subway stations, office buildings, colleges, etc., the cost of\r\n a minimum unit convenience store is about 13,000 yuan (may be lower \r\nafter mass production). The smallest unit of unmanned convenience store,\r\n according to the distribution of people&amp;#39;s traffic, &amp;quot;spelling&amp;quot; a \r\nconvenience store with a larger unit area. Less than 100 people can be \r\nplaced; about 100 people can be spelled two; more than 500 people can be\r\n spelled four. The convenience store&amp;#39;s &amp;quot;medium-sized unmanned \r\nconvenience store&amp;quot; is made up of six micro-convenience stores. At the \r\nsame time, tables and chairs are added in the space to provide consumers\r\n with a rest area, which can be placed in relatively open communities \r\nand parks.&lt;br/&gt;&lt;br/&gt;Technically, the convenience home has set up RFID in \r\neach shelf, and seals the gap in each corner to make the recognition \r\nrate higher. The process is very simple, use Alipay scan code to open \r\nthe door, take it away, Alipay automatic deduction (WeChat is \r\nnegotiating). In the future, convenienceists hope to make palmprint \r\nrecognition on the door handle, and when the consumer performs the \r\naction of “opening the door”, it can be identified.&lt;br/&gt;&lt;br/&gt;Conceptually,\r\n the convenience home is actually closer to the vending machine. The \r\nfounder Fan Weiwei believes that the convenience home is an improvement \r\non the traditional vending machine. On the one hand, most of the \r\ntraditional vending machines are mainly beverages and fixed-package \r\nsnacks, while convenience stores will mainly focus on the “fresh food” \r\nthat conforms to the health trend; on the other hand, the traditional \r\nvending machine is shipped first. , re-shipment, the way the pipeline is\r\n displayed makes the space utilization low, if it is a fresh food, it \r\nmay be deformed in the process of falling. Convenience homes can take \r\nthe goods first and then deduct the money, which can be stacked and \r\narranged in a dense manner, which makes the space utilization higher. \r\n“Under the same area, our delivery rate is twice as high as that of \r\ntraditional vending machines.”&lt;br/&gt;&lt;br/&gt;Convenience house selection logic \r\nis to choose different products according to different venues, such as \r\nmeeting the white-collar brunch demand in office buildings, providing \r\nlunch, sandwiches, salads, etc.; providing snacks, lo mei, bread and so \r\non in colleges and universities. Comparing the average customer price \r\n(14 yuan) of the whole family, the convenience store sets the average \r\ncustomer price to about 10 yuan. In addition, through small programs, \r\nconsumers can feed back the food they want to eat and reverse the \r\nselection of categories based on the data.&lt;br/&gt;&lt;br/&gt;In addition to micro \r\nand medium-sized convenience stores, convenience homes also have a third\r\n aspect of business – the transformation of traditional mom and pop \r\nstores. The offline husband-and-wife shop is characterized by different \r\nsizes and different sizes. The convenience store provides the unmanned \r\nconvenience store renovation plan. First, the husband and wife store \r\nshares the site resources and divides the sales. Second, the joining \r\nmethod has a higher proportion of income. On the one hand, store owners \r\ndo not need to guard the store for more than ten hours a day. On the \r\nother hand, in addition to no sales, they can extend other businesses to\r\n obtain more profits, such as milk tea and coffee.&lt;br/&gt;&lt;br/&gt;“Whether it’s \r\nunmanned retail or retail, it’s essentially a retail business,” Fan \r\nsaid. Since it is a retail business, in the layout of outlets, it is \r\nnecessary to stand on the overall perspective. &amp;quot;The most fear is \r\nDongyitou and Xiyi stick.&amp;quot;&lt;br/&gt;&lt;br/&gt;The reasonable layout of points, lines\r\n and surfaces can minimize operating costs and logistics costs. There \r\nare two important factors to consider: the flow of people and the \r\ncoordination of the placement points. The idea of the convenience home \r\nis to arrange a medium-sized unmanned convenience store in a crowded \r\nplace, and then arrange 10 micro-unmanned convenience stores within a \r\nrange of 100 meters to form a “minimum replenishment unit”. One person \r\ncan Responsible for the replenishment of 20 equipment.&lt;br/&gt;&lt;br/&gt;As for the\r\n cost of RFID labeling, Fan Weiwei is optimistic that the current label \r\ncost is 0.5-0.6 yuan, but with the popularity of RFID in the retail \r\nmarket, the price of RFID tags will definitely decrease.&lt;br/&gt;&lt;br/&gt;After \r\nthis round of financing, the convenience home will establish a trial \r\noperation point in Shanghai, a medium-sized + micro-unmanned convenience\r\n store, and it is expected to lay 20 outlets. Currently, convenience \r\nstores are seeking Pre-A rounds of financing to expand production and \r\nlaunch operations.&lt;br/&gt;&lt;br/&gt;On the team side, CEO Fan Weiwei graduated \r\nfrom Harbin Institute of Technology. He was the manager of the Northern \r\nRegion of the Commercial Software Channel Department and was a serial \r\nentrepreneur. COO Wu Wei is a master of Shanghai Jiaotong University and\r\n has been continuously pioneering in the field of FMCG. CTO Peng \r\nGenggeng graduated from Shanghai University with a major in computer \r\nengineering and served as a senior engineer in the advertising platform \r\ndepartment of Tencent OMG Business Group.&lt;/p&gt;', '1552463235', '1552463235');
INSERT INTO `ey_article_content` VALUES ('16', '47', '&lt;p&gt;In addition to doing basic technology research, Tencent has said that it\r\n will promote the artificial intelligence of various application \r\nscenarios through business drivers.&lt;br/&gt;&lt;br/&gt;Combined with Tencent&amp;#39;s main \r\nbusiness, it is not difficult to guess that the company will play in the\r\n four major applications of games, social, content and platform tools.&lt;br/&gt;&lt;br/&gt;Especially\r\n in the social field, Zuckerberg has said that he will launch the VR \r\nversion of Facebook last year and showcase the virtual character image \r\ntool Oculus Avatars; in July this year, Facebook said that Facebook AR \r\nstudio will cooperate with Mito to provide it with three AR camera \r\nspecial effects. Today, Tencent has to act.&lt;br/&gt;&lt;br/&gt;On the evening of \r\nJuly 18, artificial intelligence startup ObEN announced a $5 million \r\nstrategic investment. The round of financing was led by Tencent, CMC \r\nchairman Li Ruigang and Feng Shang Capital. According to the data of the\r\n investment and financing information platform crunchbase, ObEN has \r\ncompleted four rounds of financing, with a total amount of $13.7 \r\nmillion. Previous investors also included S Rushan Capital, Softbank \r\nKorea Ventures and HTC VIVE X.&lt;br/&gt;&lt;br/&gt;According to public information, \r\nObEN was founded in 2014 to create a virtual voice, image and \r\npersonality to create a user&amp;#39;s artificial intelligence avatar, and to \r\nhelp users store, manage and operate their avatar in the emerging \r\ndigital world. In other words, ObEN can use artificial intelligence \r\ntools to create avatars based on users&amp;#39; photos and sounds, giving users \r\ndifferent AR and VR social experiences.&lt;br/&gt;&lt;br/&gt;In the past, ObEN mainly \r\nhelped gamers create avatars, and now the company is turning its focus \r\nto helping stars create avatars. Through this avatar, stars can interact\r\n with fans in real time. One day in the future, fans may also seek \r\nadvice from the stars and get feedback. In addition, this avatar is not \r\nonly very similar to the star, but also the way of speaking. In general,\r\n such an avatar is always better than a chat bot.&lt;br/&gt;&lt;br/&gt;According to \r\nreports, ObEN also combines voice, computational vision and natural \r\nlanguage processing technology for the first time, and developed the \r\nvirtual sound, three-dimensional image and personalized technology \r\nrequired by the full-stack virtual star. Today, ObEN is building a new \r\nbusiness platform. Here, celebrities and fans can interact directly on \r\nmobile, augmented reality, virtual reality, and smart devices, the \r\nInternet of Things and other platforms through personalized artificial \r\nintelligence. ObEN&amp;#39;s personalized artificial intelligence products are \r\nexpected to be released later this year.&lt;br/&gt;&lt;br/&gt;The latest round of \r\nfinancing will be used to accelerate Oben&amp;#39;s product development and help\r\n drive its star artificial intelligence copyright platform to a wide \r\nrange of digital platforms. For this cooperation, Yao Leiwen, executive \r\ndirector of Tencent Investment, said that ObEN will bring new \r\nentertainment methods and content driven by star artificial \r\nintelligence.&lt;br/&gt;&lt;br/&gt;Earlier, ObEN had said to be &amp;quot;everyone&amp;#39;s artificial\r\n intelligence social platform.&amp;quot; In this regard, the company has made \r\nseveral layouts.&lt;br/&gt;&lt;br/&gt;At the HTC Vive Ecosphere Conference in March \r\nthis year, ObEN announced a partnership with HTC Vive to develop a \r\nWeChat applet that allows users to play VR and VR &amp;quot;K songs&amp;quot;. In this \r\nprocess, VR users can send invitations to friends; friends who receive \r\ninvitations can upload self-timer and audio, and finally use the \r\nbuilt-in image to walk along the beach with the inviter or visit the \r\nattraction.&lt;br/&gt;&lt;br/&gt;At the end of April, ObEN launched a WeChat chat \r\nservice video that integrates the VR social experience. Of course, users\r\n need to wear the HTC Vive headset. In the short film, the user needs to\r\n take a self-timer, upload it to WeChat to create an avatar, and then \r\nbring HTC Vive, you can receive the information sent by WeChat friends, \r\nand can directly reply with voice. In the future, WeChat with VR and AR \r\nfunctions may be able to harvest a large number of Asian users.&lt;br/&gt;&lt;br/&gt;At\r\n the end of June, ObEN announced the establishment of a joint venture \r\ncompany, AI Stars, with SM Entertainment Korea. It is reported that ObEN\r\n wants to use artificial intelligence technology to make AI virtual \r\nimages for the famous artists of SM Entertainment, and Magic Star Co., \r\nLtd. is the brokerage company that manages these &amp;quot;AI stars&amp;quot;.&lt;br/&gt;&lt;br/&gt;This\r\n time, Tencent led the investment in ObEN, whether it can further \r\npromote the artificial intelligence of the company&amp;#39;s social business. \r\nToday, companies are not only busy building artificial intelligence \r\nlabs, but companies like Facebook have set up more like Facebook AR \r\nlabs. In addition, it is said that Apple will soon launch the ARKit \r\nplatform. In the future, will Tencent still set up a separate AR lab to \r\nfurther develop the social AI business?&lt;/p&gt;', '1552463256', '1552463256');
INSERT INTO `ey_article_content` VALUES ('17', '48', '&lt;p&gt;The data shows that in 2015, China&amp;#39;s service industry grew by 8.3% \r\nyear-on-year, which was higher than the GDP growth rate of the GDP and \r\nthe growth rate of the secondary industry by 1.4 and 2.3 percentage \r\npoints respectively, accounting for 50.5% of the GDP, which was more \r\nthan half of the first time. Compared with developed countries, China&amp;#39;s \r\nservice industry still has 20%-30% development space. The beauty \r\nindustry belongs to the physical service industry, and the entire market\r\n has a scale of hundreds of billions, but the degree of informatization \r\nis relatively low compared with the retail catering industry. The reason\r\n is that the catering and retail traffic is large, reaching a wide range\r\n of people, while the US passenger traffic is relatively small, coupled \r\nwith the quality of the employees leading to low information and low \r\nmanagement efficiency.&lt;br/&gt;&lt;br/&gt;The main management methods of the company\r\n are paper account book and simple cash register and settlement \r\nsoftware. Paper management accounts for about 90% of the industry&amp;#39;s \r\ncustomers. The function is simple and can only be used to manage the \r\nmembership card. Meiye&amp;#39;s customers and storefronts are more sticky. \r\nAlthough they are low-frequency consumption, once users choose a store, \r\nit is difficult to switch to other stores after receiving good service. \r\nTherefore, Meiye has reservations management and customer management \r\nrequirements. To be higher than catering and retail, the software form \r\nof the application is not necessarily based on settlement of cashiers, \r\nand the focus is on CRM system, cashier, performance appraisal, and \r\nappointment management software.&lt;br/&gt;&lt;br/&gt;The 36-year-old door-to-door \r\nstore is a beautiful SaaS product with SCRM membership management, smart\r\n appointments, performance pay, marketing card coupons, and all-round \r\ncashier. The door-to-door store products are WeChat public number and \r\nsmall program on the client side; the beautician is the mobile terminal \r\nfor customer relationship maintenance, salary inquiry and reservation; \r\nthe front end is Upad, mainly for cash register and reservation; there \r\nis also a store manager The overall background, mainly PC or integrated \r\nintelligent machine, to do the overall data management.&lt;br/&gt;&lt;br/&gt;In fact, \r\nthe process of management is also the process of depositing data, and \r\nthe process of developing closed-loop and ecological. CEO Meng Fangang \r\ntold reporters that the door-to-door store now uses the marketing tool +\r\n SaaS system to cut into the offline Meiye store, establish a strong \r\nrelationship, and then pass the cash register system. Embedded WeChat \r\nand Alipay payment, the store&amp;#39;s online water is introduced into the \r\nplatform to deposit a large amount of funds, and finally, the big data \r\nanalysis based on SaaS transaction data and consumer behavior data \r\nextends the US products and project supply chain. For example, the \r\nMenting Tube Store is currently working on a Korean skin tester. After \r\nthe test, it is placed in the customer file and integrated into the \r\nintelligent management platform, so that customers can serve their \r\npersonal characteristics when they come back.&lt;br/&gt;&lt;br/&gt;The transformation \r\nof the beauty industry has formed two camps. One camp is a large \r\nclubhouse, which has accumulated a lot of old customers. The old \r\ncustomers have more and more demand for health care as they grow older. \r\nOnce they have entered the health care, they will be connected to the \r\nInternet at 80 and 90. The main force is somewhat detached; there is \r\nalso a newly opened store in the past two years. The newly opened store \r\ndoes not have the resources of the old members. How to serve the 80 and \r\n90 people becomes the main task, and the young people belong to the \r\nInternet use scene. Therefore, the new store is easier to implant SaaS \r\nsoftware. The door-to-door store is more inclined to the younger store, \r\nand after a period of experience and funds, it will be the old store.&lt;br/&gt;&lt;br/&gt;For\r\n shops that are not informatized, the data entry in the early stage is \r\nthe most troublesome. The door management store will send customer \r\nservice to help organize the data. The time is about 2-3 days. The \r\nsecond is the popularity of software use. In this regard, the door \r\nmanagement store has specialized training, including remote training of \r\naudio and video. The charging model is divided into private cloud \r\ndeployment and public cloud. The public cloud is only 10,000 yuan, and \r\nthen there is a maintenance fee of 1,000 yuan per year. The installation\r\n of the entire software can save the cost of the next person for the \r\nstore.&lt;br/&gt;&lt;br/&gt;The clients of the Menting Tube Store include Kristina, \r\nSilk Field Hair Care, Qingxi Aesthetics, Millennium Birds, and Natural \r\nBeauty.&lt;br/&gt;&lt;br/&gt;In terms of industry competing products, the SaiS \r\nProviders of the US industry also include Boca, 喔 、, Mei Yuehui, Meijia,\r\n Meimei, Meiyebang and so on.&lt;br/&gt;&lt;br/&gt;Meng Fangang believes that the \r\nthreshold for doing SaiS in the US industry is software development \r\ncapability. Only with strong R&amp;amp;D capability can a product with \r\nsimple page, full-featured and suitable management be developed, and the\r\n customer and company stickiness will be improved, so the door-to-door \r\nmanagement shop The idea is to make smarter products; the second is \r\nsales ability, the door management store now uses a partner approach, \r\nthe agent channel can develop its own customers, currently there are \r\nmore than 100 door partners.&lt;br/&gt;&lt;br/&gt;The team is now 30 people, more than\r\n half of whom are technicians. CEO Meng Fangang has served as CEO of the\r\n Friends of Technology and CEO of the car, and has 8 years of experience\r\n in Internet and mobile Internet operations management. The company has \r\ncompleted the angel round of financing and plans to carry out the next \r\nround of financing.&lt;/p&gt;', '1552463741', '1552463741');
INSERT INTO `ey_article_content` VALUES ('18', '49', '&lt;p&gt;Editor&amp;#39;s note: The development of artificial intelligence technology is \r\nconstantly changing the way people live and work. It promotes the \r\ndevelopment and progress of society to a certain extent. This is beyond \r\ndoubt. But artificial intelligence is not omnipotent, because machines \r\ndo not have human thinking and emotions. When you open the online help \r\nwindow on the website and find that you are only a cold robot, you \r\nshould be disappointed.&lt;br/&gt;&lt;br/&gt;In April 2016, Mark Zuckerberg described a\r\n bright future for developers on Messenger at Facebook&amp;#39;s F8 conference \r\nand announced that it would enter a new era of “talking to robots like \r\nfriends”. Developers around the world, all of whom have certifications \r\nfrom big companies like Facebook, Google, and Microsoft, all claim that \r\nthe era of independent mobile apps is over, and together celebrate new \r\nways of coming - Conversational Commerce and Chatbots. 11 months ago, \r\nFacebook announced that its officially developed chat robot &amp;quot;M&amp;quot; beta \r\ntest AI failure rate of 70%, then updated its platform, and recommended \r\ndevelopers to develop more lightweight applications in Messenger, Also \r\ndisable session input.&lt;br/&gt;&lt;br/&gt;Regarding Wordhop.io, we have always known\r\n two things. The first thing is that AI is really hard, and it takes \r\nmany years for the robot to communicate with humans 100% like a friend. \r\nAfter all, robots don&amp;#39;t resonate like people. Second, Facebook consumers\r\n don&amp;#39;t send messages to a business because they want to shop or be \r\ninterested in the weather. These experiences are premised on having a \r\nchat bot, and they also need to support industry data that has expanded \r\nfrom information delivery to social networking.&lt;br/&gt;&lt;br/&gt;What Facebook users really want is to get a quick response from a business when there is a problem.&lt;br/&gt;&lt;br/&gt;The\r\n main reason consumers send messages to businesses on Facebook is to get\r\n services. Everything else is a cloud. Such interactive pre-sales may \r\nbegin with the customer&amp;#39;s questioning, and timely responses can advance \r\nthe transaction. If the customer contacts the sales customer service, it\r\n is usually because they really have problems to ask customer service. \r\nSome answers can be answered by the robot, and more complex problems can\r\n be solved by people. In the case of powerful tools, the speed of human \r\nrecovery can be comparable to that of robots.&lt;br/&gt;&lt;br/&gt;However, many bot \r\ndevelopers don&amp;#39;t focus on the most demanding part, but seek to create \r\nnew user experiences or re-develop old concepts about chatbot. If robot \r\ndevelopers feel that the participation rate is low, this may not be \r\nbecause AI has failed, but because they lead consumers to the road that \r\nthey don&amp;#39;t want to go at the beginning. Instead of leveraging existing \r\nconsumer behavior patterns and not training robots to respond to \r\ncustomer needs, AI&amp;#39;s role is simply to realize the creative experience \r\nthat robot developers imagine and to guide consumers through the \r\nexperience.&lt;br/&gt;&lt;br/&gt;Facebook now recommends that robot developers completely disable session input.&lt;br/&gt;&lt;br/&gt;I\r\n personally don&amp;#39;t think that disabling chat input as suggested by \r\nFacebook is the right solution for the technical limitations of AI and \r\nNLP. Communication robots without dialogue capabilities are acceptable \r\nfor news robots, where the experience is driven by notifications and \r\ncontent consumption. However, if it is a service-based business, you \r\nneed to provide a platform for users to interact with you. If text input\r\n is the main way of Messenger, it will limit the customer&amp;#39;s willingness \r\nand initiative to communicate, and force them to seek other ways of \r\ncustomer service that you can imagine, or just delay the response will \r\nmake customers more disappointed. Think about IVR, every time you listen\r\n to the menu options, you have to press &amp;quot;0&amp;quot;.&lt;br/&gt;&lt;br/&gt;The business community should adopt a combination of automatic and manual, in order to meet the needs of Facebook users.&lt;br/&gt;&lt;br/&gt;China&amp;#39;s\r\n WeChat small program is integrated into the message interaction, which \r\nsatisfies the developer&amp;#39;s expectation of the chat bot, but this is a \r\ncultural phenomenon in the East, and Western companies should first use \r\nthe existing consumer behavior and be better. Use such behavior data. If\r\n you are not a fan of the concept of &amp;quot;chasing robots will replace manual\r\n services&amp;quot;, just stick to the promise of customers at the beginning of \r\nthe opening, then the introduction of such technology can help you \r\nstrengthen communication with customers. If you can meet the \r\nexpectations of today&amp;#39;s Facebook consumers, then over time, you can add \r\nnew features and lead consumers in the direction you are looking for. In\r\n the end you are likely to meet their needs.&lt;/p&gt;', '1552463759', '1552463759');
INSERT INTO `ey_article_content` VALUES ('19', '50', '&lt;p&gt;36氪 Get information from the inside of ofo, maybe in April this year, \r\nofo will be connected to the Drip travel app, then users can directly \r\nuse the ofo service on the drop.&lt;br/&gt;&lt;br/&gt;&amp;quot;This matter has recently been \r\nfrequently put on the agenda, and internal news is likely to be \r\naccessible next month,&amp;quot; said an internal staff member. 36氪 The official,\r\n ofo official verified the news, but at the time of publication, neither\r\n company confirmed or denied it.&lt;br/&gt;&lt;br/&gt;The founder of ofo, Dai Wei, \r\nsaid in December last year that there was no clear timetable for when to\r\n access the Drip APP. &amp;quot;The mode of ofo is that there is no GPS. The user\r\n sees the car and the logic is not the same as the logic of the drip \r\nplatform. But in the near future, we will launch something in \r\nconjunction with Didi.&amp;quot;&lt;br/&gt;&lt;br/&gt;However, similar access is not without \r\nprecedent. In February of this year, WeChat and Mobike announced that \r\nthe user scanned the QR code on the Mobike body by WeChat “sweeping”, \r\nand then directly entered the Mobike Bike WeChat applet and clicked the \r\nlock to use the car.&lt;br/&gt;&lt;br/&gt;This is not the first time that the ofO will\r\n access the drop, nor the first deep binding of the two platforms. \r\nPreviously, Didi participated in the latest three rounds of ofo \r\nfinancing. According to a report by Tencent Technology, a shared bicycle\r\n investor revealed that after many rounds of financing, the company has \r\nbecome the largest shareholder of ofo, accounting for more than 30%. \r\n&amp;quot;This means that the right to speak in the ofo is stronger, and at the \r\nsame time, the success of the ofo, the drop will be the largest interest\r\n related party.&amp;quot;&lt;br/&gt;&lt;br/&gt;It is not difficult to understand that after the\r\n drop of theo, it will be used as a huge user traffic portal to guide \r\nits flow, while ofo further consolidates the business volume and \r\nenhances the status and imagination of the industry under the blessing \r\nof Didi.&lt;br/&gt;&lt;br/&gt;Moreover, if you really put the ofo in, it means that \r\nDidi and the capital behind it are further making up for the gap in the \r\nfield of travel.&lt;br/&gt;&lt;br/&gt;An insider revealed to 36 that he once wanted to\r\n share a bicycle, but for some reason he could not achieve it, and he \r\ncould only be the investor of ofo. However, this does not mean that Didi\r\n will not further enter the market.&lt;br/&gt;&lt;br/&gt;Didi investment ofo is nothing more than an opportunity to target the &amp;quot;last three kilometers.&amp;quot;&lt;br/&gt;&lt;br/&gt;At\r\n present, the domestic “last three kilometers” field is still a very \r\njunior stage, and there is no systematic service provider. In the \r\nfirst-tier cities of Beishangguang, the complicated traffic has made the\r\n major travel platforms increasingly fierce for the “last three \r\nkilometers”.&lt;br/&gt;&lt;br/&gt;“From the starting point to the destination of 3 \r\nkilometers, whether it is a taxi or a bicycle, this is a choice for the \r\nuser. Which one to choose is justified.” An ofo internal staff said that\r\n the trick is to Different options are covered.&lt;br/&gt;&lt;br/&gt;In the view of \r\nDidi and ofo and its investors, the shared bicycle field has already \r\nushered in a period of rapid growth. A public relations at Ofo once told\r\n the media that in the past few years after 2012, the speed of the car \r\nand the express train was very fast. Ofo is in the past one year, the \r\ndaily order volume from 200 to 500,000 single, &amp;quot;the past car express, \r\nthe current ofo are experiencing high-speed growth, this momentum is \r\nsimilar.&amp;quot; The above public relations staff said.&lt;br/&gt;&lt;br/&gt;At the end of \r\nDecember last year, ofo jointly launched the red envelope activity, \r\nwhich was the first time for the two sides to cooperate on a large scale\r\n after the investment of the company. The red envelope strategy adopted \r\nby the event is also considered to be one of the tools that Didi has \r\nalways used for marketing.&lt;br/&gt;&lt;br/&gt;According to the Drip side, 2017 will \r\nstill focus on the field of travel, hoping to get everyone&amp;#39;s travel. \r\nThis means that all modes of travel will be covered, and sharing a \r\nbicycle will be one of the directions of the drip.&lt;br/&gt;&lt;br/&gt;36氪 believes \r\nthat another important reason for Drip to further access shared bicycles\r\n is that compared with the “harsh” Internet special vehicle regulations,\r\n the development of shared bicycles has been encouraged by the policy at\r\n the beginning, and the constraints are quite reasonable. However, from \r\nthe perspective of policy and new business growth, it has been possible \r\nto take a step further from the sharing of bicycles.&lt;br/&gt;&lt;br/&gt;However, \r\nthere are still questions about 36. How can I access the drip without \r\nnavigation and what impact will it have on the user after the access?&lt;br/&gt;&lt;br/&gt;&amp;quot;As\r\n far as I know, Didi may contract technology and navigation to \r\nthird-party companies.&amp;quot; The above-mentioned internal staff said that the\r\n oro after accessing the drop may still have no navigation, the user is \r\non the page. Mainly perform scan code unlocking and payment functions.&lt;br/&gt;&lt;br/&gt;As\r\n for the user experience, the above-mentioned internal staff said, “The \r\nmain function of the original ofo is relatively simple, and the \r\noperation is very simple. I believe it can be seamlessly connected to \r\nthe Drip platform,” he stressed. “After all, the future trend is that \r\npeople’s mobile phones The number of apps loaded on it will be less and \r\nless.&amp;quot;&lt;/p&gt;', '1552463784', '1552463784');
INSERT INTO `ey_article_content` VALUES ('20', '51', '&lt;p&gt;Since 2014, the word &amp;quot;big movie&amp;quot; has gradually entered the eyes of \r\npeople. At that time, the story of hundreds of thousands of production \r\ncosts won a million box office. The koala entertainment was entered in \r\nthe wild age of the online content.&lt;br/&gt;&lt;br/&gt;In an interview with 36, the \r\nfounder of the koala entertainment, Qian Wei, admitted that they had \r\nearned a lot of money by borrowing from the past. &amp;quot;We have a film \r\ncosting 80,000 yuan and finally recycling more than one million box \r\noffice.&amp;quot; During the year, they can do more than 20 big movies on average\r\n every year. In the top 10 of the major video websites, you can easily \r\nfind several films produced by koala and also accumulate a lot of \r\nchannel resources.&lt;br/&gt;&lt;br/&gt;But when the time entered this year, the \r\nonline big movie market began to shuffle. Last year, more than 600 films\r\n in the entire market suddenly surged to more than 2,000. The era of \r\nfour or two has passed, and you will find that the top-ranking network \r\nproduction costs are basically More than one million, has reached the \r\nsecond and third line cinema level.&lt;br/&gt;&lt;br/&gt;Recently launched the Golden Casino Series&lt;br/&gt;&lt;br/&gt;After\r\n the market dividend period passed, Koala Entertainment began their new \r\nlayout this year: targeting the women&amp;#39;s market and making quality online\r\n content. &amp;quot;This is actually planned before, and the shuffling is \r\naffirmative.&amp;quot; Qian Wei said that they did not make any film in the first\r\n half of this year, and they are preparing for the &amp;quot;slow&amp;quot; content in the\r\n future.&lt;br/&gt;&lt;br/&gt;Koala Entertainment first changed the IP incubation \r\nmethod. They set up a comic team. The positioning is a long-form \r\nlarge-scale world-viewing work with a serialization time of more than \r\nthree years. When these works are verified by the market, they gradually\r\n launch corresponding online dramas and big movies. And other derivative\r\n content.&lt;br/&gt;&lt;br/&gt;In the first half of the year, the work of verifying \r\nthis model, &amp;quot;The Best of the Youth&amp;quot;, has more than 350 million people in\r\n the series of 52 words. The big movie of the same name has already \r\nstarted shooting. &amp;quot;The root fans have very good feedback on this \r\npractice.&amp;quot; Qian Wei said that he did not come from the head of the \r\nfamily. Women will use this model to launch, to do IP amplification, and\r\n then to play games and other aspects, they have also reached \r\ncooperation with some games, film and television companies.&lt;br/&gt;&lt;br/&gt;At \r\nthe same time of planning long-term IP, Koala Entertainment is still \r\nbuilding its own channel. “Like the mobile game of the year, the channel\r\n will become stronger and stronger after the shuffle, and CP’s voice \r\nwill decline.” Qian Wei said that In the future, I don’t want to be \r\ncompletely controlled by the platform. Now the koala’s practice is to do\r\n the female-oriented PGC live content.&lt;br/&gt;&lt;br/&gt;At present, they have \r\nalready connected to the WeChat applet, independently developed a PGC \r\nlive channel, and launched a customized live content with some women to \r\nthe large size, to meet the needs of these large graphic content \r\nupgrades to video content and accumulate vertical traffic. In the \r\nfuture, we prepare for the contents of comics and online students. Now \r\nthis channel is still in the test, only live at 8 o&amp;#39;clock every night, \r\nthe average number of online users is about several thousand.&lt;br/&gt;&lt;br/&gt;“The\r\n feedback of the public number that has been cooperated is still OK. In \r\nthe future, I hope to turn it into a female channel that is broadcast \r\nlive all day.” Qian Wei said that this platform does not need to be \r\nlarge, and the purpose is to form an internal cycle of IP incubation, \r\nchannel promotion and realization. . Of course, building your own \r\nchannel does not mean that the koala will abandon the platform channel, \r\nand then several of the works they produce have deep cooperation with \r\nthe platform.&lt;br/&gt;&lt;br/&gt;After identifying new content incubation and \r\nchannel promotion models, Qian Wei said that they have also upgraded \r\ntheir core online content production. Now the koala has also adopted the\r\n scriptwriter and producer core system in the production. The work is \r\nactually doing talent screening. &amp;quot;For example, the director who can&amp;#39;t \r\nadapt to this model has been eliminated by us.&amp;quot; Qian Wei said that among\r\n the dozens of directors who cooperated, they only left two.&lt;br/&gt;&lt;br/&gt;In \r\nthe future, the koala entertainment will be promoted at the rhythm of \r\nabout 10 major online movies every year. Some of them will use the \r\ncomics as the source of the slow-moving content to make long-term IP \r\nrealization, and the other part will ensure the koala brand activity and\r\n create a flowing market. To the content.&lt;br/&gt;&lt;br/&gt;On the team side, Qian \r\nWei is an investor and has served as the director of Chuangdong \r\nInvestment and the founder of Huanyu Interactive Media. Responsible for \r\nthe company&amp;#39;s overall layout and film and television original content \r\nplanning, in the comics and live broadcasts, there are two other \r\npartners responsible for the comics partner Fu Yi once served as the \r\nXishanju game producer.&lt;br/&gt;&lt;br/&gt;They have already received tens of \r\nmillions of A rounds of financing from Heyi Capital and Chuangdong \r\nInvestment, and are currently preparing for the A+ round.&lt;/p&gt;', '1552463807', '1552463807');
INSERT INTO `ey_article_content` VALUES ('21', '52', '&lt;p&gt;36氪 was informed that the offline public number promotion company Le \r\nShake Technology has completed a 38 million yuan A+ round of financing, \r\nthe investor is Guangfa Shunde.&lt;br/&gt;&lt;br/&gt;As we all know, online traffic is\r\n now expensive, and everyone&amp;#39;s eyes are beginning to focus on the \r\noffline. In addition to the traditional subway and elevator \r\nadvertisements, there are already some new advertising modes under the \r\nline, such as getting customers through commercial Wi-Fi, representing \r\nthe company with Maididi; for example, the photo printers that are \r\ncommon outside the food and beverage outlets are dedicated to the public\r\n number. Performance ads. Le Shake Technology chose to use the doll \r\nmachine for traffic distribution.&lt;br/&gt;&lt;br/&gt;The reason why the founder Chen\r\n Haohao thinks that there are two main reasons: First, the amount of \r\nmemory in the doll machine is 2 million, and the stock of all \r\ncoin-operated equipment including it is about 20 million. These machines\r\n cannot be used. Mobile payment, the pain points of consumers and \r\nbusinesses need to be solved; second, the doll machine is mostly in \r\nshopping malls, KTV and other places, the user group is 16 to 35 years \r\nold women, the advertising is more accurate.&lt;br/&gt;&lt;br/&gt;From the perspective\r\n of the advertising audience, it can be seen that the music shake is \r\nmore accurate than the WI-FI, and from the business model of the shake, \r\nthey do not produce their own machines like the photo printers on the \r\nmarket, but with the machine manufacturers. Cooperation, only the \r\nhardware box is provided, so the business model is lighter.&lt;br/&gt;&lt;br/&gt;Specifically,\r\n they look at the business model of music shake. They provide hardware \r\nboxes and SaaS systems to the machines for free. The manufacturers \r\ninstall the boxes and ship them to the merchants. According to \r\nstatistics, the mobile phone payment can increase the income of 28%. \r\nWhen the user wants to catch the doll, first use WeChat to scan the \r\ncode. At this time, there are two modes to choose from. The first one is\r\n recharge, and the user can spend 1 yuan to catch the doll after \r\nrecharging; the second is free to use, the user chooses this mode. After\r\n that, pay attention to an advertiser&amp;#39;s WeChat public number, you can \r\ngrab the doll for free, usually the user will see the public number of \r\nthree or four advertisers.&lt;br/&gt;&lt;br/&gt;In this way, Le Shake (currently \r\ninstalled 30,000 machines), each machine distributes advertisements 10 \r\ntimes a day on average, and the entire platform can increase the number \r\nof the public number by about 300,000 per day, with an average of 70,000\r\n per number. The average retention rate for the week is 65%. Usually, \r\nthe cost of using the wide-point pass is close to $3, and the use of \r\nmusic shake is one more than one. In addition to the low price, Chen \r\nHaohao believes that the traffic generated by offline interaction will \r\nbe more real and more realistic than online. However, he also said that \r\nmusic shake and wide-point communication are not substitutes. The public\r\n number will generally be acquired in different ways. user.&lt;br/&gt;&lt;br/&gt;According\r\n to Chen Haohao, most of the manufacturers of dolls in the country are \r\nin Panyu, Guangzhou. They have cooperated with more than 300 companies \r\nand basically covered all the manufacturers. As mentioned earlier, they \r\nhave installed 30,000 machines covering 291 cities in China. They plan \r\nto In 2017, it reached 100,000 units. After that, they will expand to \r\nother game class slot machines.&lt;br/&gt;&lt;br/&gt;At present, there are more than \r\n100 public numbers that have been cooperating with the company. The \r\nclients include content entrepreneurs such as Guangzhou Chao Life, \r\nTongdao Uncle, and New List, as well as the public number of Country \r\nGarden and Honey Bud. The advertising order is tens of millions of yuan,\r\n and the music shakes a certain percentage to extract profits. Chen \r\nHaohao believes that the current public demand is the largest, and small\r\n programs can become their customers in the future.&lt;br/&gt;&lt;br/&gt;In addition \r\nto the realization of advertising distribution, Le Shake also hopes to \r\ntry more ways to cash in the future. When the number of users is enough,\r\n the plan is realized through user operations, and games, e-commerce, \r\netc. may be tried. At present, the monthly flow is 40 million yuan, and \r\nthe payment finance and industrial chain integration business is planned\r\n in the future.&lt;br/&gt;&lt;br/&gt;On the team side, founder Chen Haohao has 3 years\r\n of marketing experience in Unilever and Hewlett-Packard. In 2011, he \r\nfounded the marketing interaction company Micro-Electronics. In 2015, he\r\n was acquired by a certain company. CMO Xu Deqiang was the general \r\nmanager of Sohu&amp;#39;s focus on Weihai Station Nantong Station; CTO Yang \r\nKairan worked in Oracle; business VP Zhang Jiebo is Ping An Insurance \r\nexecutive.&lt;/p&gt;', '1552463836', '1552463836');
INSERT INTO `ey_article_content` VALUES ('22', '53', '&lt;p&gt;Tencent not only sent high-profile money on the occasion of the double \r\neleven that Ali has spent money, but now the high-speed growth business \r\nof the financial report just coincides with Alipay and Aliyun.&lt;br/&gt;&lt;br/&gt;Tonight,\r\n Tencent released today unannounced third-quarter earnings. The report \r\nshows that Tencent&amp;#39;s total revenue in the third quarter increased by 52%\r\n year-on-year, and the growth rate was the same as that of the previous \r\nquarter; the growth rate of net profit declined.&lt;br/&gt;&lt;br/&gt;It is worth \r\nnoting that the proportion of Tencent&amp;#39;s game revenue has dropped for two\r\n consecutive quarters. In the third quarter, online game revenue \r\naccounted for only 45% of total revenue; while the proportion of \r\nemerging businesses such as payment and cloud computing continued to \r\nrise, exceeding 10% for the first time. Reached 12%.&lt;br/&gt;&lt;br/&gt;Net profit growth rate decline&lt;br/&gt;In\r\n terms of overall financial situation, Tencent&amp;#39;s total revenue in the \r\nthird quarter was RMB 40.388 billion (US$6,048 million), a year-on-year \r\nincrease of 52%, and the growth rate was unchanged from the previous \r\nquarter. However, the profit growth rate declined. The profit for the \r\nperiod was RMB 10.776 billion (US$1.614 billion), a 42% increase over \r\nthe same period last year; the net profit margin decreased to 27% from \r\n29% in the same period last year.&lt;br/&gt;&lt;br/&gt;Game revenue accounted for two consecutive quarters of decline&lt;br/&gt;&lt;br/&gt;In\r\n terms of segment business, value-added services, including online games\r\n and social networks, are still the bulk of Tencent&amp;#39;s revenue, \r\naccounting for about 80%. However, the game business, which has always \r\nbeen regarded as Tencent&amp;#39;s cash cow, has seen its revenue share decline \r\nfor two consecutive quarters. Today, it accounts for only about 45% of \r\ntotal revenue. This business once accounted for 60% of Tencent&amp;#39;s revenue\r\n in 2015. The growth rate of social network revenue is gradually \r\nincreasing, and the proportion has been stable at 23-24%.&lt;br/&gt;&lt;br/&gt;Looking\r\n further, mobile games have become the main force of the game business. \r\nIn the game business income of 18.1 billion yuan, mobile games were 9.9 \r\nbillion yuan, an increase of 87%; end-end revenue increased by only 10%,\r\n and according to the financial report It shows that the average \r\nsimultaneous online users of the end-games are still declining. \r\nTherefore, Tencent is shifting its focus from increasing the user&amp;#39;s time\r\n in the game to expanding the user interaction.&lt;br/&gt;&lt;br/&gt;The proportion of\r\n online advertising revenue is also relatively stable, accounting for \r\nabout 17% of the group&amp;#39;s revenue. Among them, the effect advertising \r\nrevenue increased significantly, the growth rate reached 83%, mainly due\r\n to the contribution from WeChat friends circle, mobile news \r\napplications and WeChat public account advertising revenue. WeChat is \r\nalso constantly exploring ways to monetize its circle of friends, \r\nincluding LBS local promotion ads and native promotion page ads for its \r\nrecently launched circle of friends.&lt;br/&gt;&lt;br/&gt;In addition, in the context \r\nof QQ monthly active users (8.77 billion, 2% increase over the same \r\nperiod last year), the number of monthly active accounts of WeChat and \r\nWeChat continued to grow, reaching 864 million, an increase of 30% over \r\nthe same period last year. However, compared with QQ&amp;#39;s monthly users, if\r\n WeChat fails to further internationalize, the date of its users&amp;#39; peak \r\nis obviously not far away. Therefore, the current focus of WeChat is no \r\nlonger to increase the users of WeChat, but Find out how to get users to\r\n stay on WeChat and spend all their time in this app. Therefore, WeChat \r\nis testing &amp;quot;small programs&amp;quot;, allowing users to perform low-frequency \r\ninteractions without leaving the WeChat interface.&lt;br/&gt;&lt;br/&gt;Other business income increased by 348%&lt;br/&gt;The\r\n most eye-catching growth was in other businesses, including payments \r\nand cloud services, which grew by 348% year-on-year to RMB 4.964 \r\nbillion. At this point, other businesses accounted for 12% of the \r\nGroup&amp;#39;s revenue, exceeding 10% for the first time.&lt;br/&gt;&lt;br/&gt;Ali and \r\nTencent had already been the two major payment giants in China. The \r\nformer relied on e-commerce, and the latter relied on social interaction\r\n to launch multiple payment and relief wars. Alipay has recently made \r\nfrequent moves to the sea. Tencent has also begun to deploy the payment \r\nmarket in Southeast Asia after Alipay.&lt;br/&gt;&lt;br/&gt;At the same time, although\r\n the specific income of cloud services is not disclosed, even in the \r\ndomestic public cloud market, a large Alibaba Cloud accounted for only \r\n4% of Ali&amp;#39;s total revenue, plus this market has just begun, sitting \r\nstrong Tencent, the capital, has its own advantages in the vertical \r\nfield of games, and has the meaning of laying out artificial \r\nintelligence. It is not difficult to catch up.&lt;br/&gt;&lt;br/&gt;It seems that \r\nalthough Tencent has suffered setbacks in the e-commerce field, there is\r\n no big move in the film industry. However, in the star business of Ali \r\nand the two cloud-based businesses, Tencent may have to face several \r\nbloody battles.&lt;/p&gt;', '1552463860', '1552463860');

-- -----------------------------
-- Table structure for `ey_article_order`
-- -----------------------------
DROP TABLE IF EXISTS `ey_article_order`;
CREATE TABLE `ey_article_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章订单ID',
  `order_code` varchar(50) NOT NULL DEFAULT '' COMMENT '媒体订单编号',
  `users_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态：0未付款，1已付款',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单应付总金额',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `pay_name` varchar(20) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `wechat_pay_type` varchar(20) NOT NULL DEFAULT '' COMMENT '微信支付时，标记使用的支付类型（扫码支付，微信内部，微信H5页面）',
  `pay_details` text COMMENT '支付时返回的数据，以serialize序列化后存入，用于后续查询。',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '视频文档ID',
  `product_name` varchar(100) DEFAULT '' COMMENT '视频文档名称',
  `product_litpic` varchar(500) DEFAULT '' COMMENT '视频文档封面图片',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '下单时间',
  `update_time` int(11) unsigned DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_code` (`order_code`) USING BTREE,
  KEY `users_id` (`users_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章订单表';


-- -----------------------------
-- Table structure for `ey_article_pay`
-- -----------------------------
DROP TABLE IF EXISTS `ey_article_pay`;
CREATE TABLE `ey_article_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(11) DEFAULT '0',
  `part_free` tinyint(1) DEFAULT '0' COMMENT '是否试看 0-否 1-是',
  `size` int(11) DEFAULT '1' COMMENT 'KB',
  `free_content` longtext COMMENT '试看内容',
  `add_time` int(11) DEFAULT '0',
  `update_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章付费预览表';


-- -----------------------------
-- Table structure for `ey_ask`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ask`;
CREATE TABLE `ey_ask` (
  `ask_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题栏目ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `ask_title` varchar(80) NOT NULL DEFAULT '' COMMENT '问题标题',
  `is_recom` tinyint(1) NOT NULL DEFAULT '0' COMMENT '问题是否推荐',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '问题状态：0未解决，1已解决，2已关闭',
  `click` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览点击量',
  `replies` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题回复量',
  `content` text NOT NULL COMMENT '问题内容',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '问题网址',
  `users_ip` varchar(50) NOT NULL DEFAULT '' COMMENT '问题发布时IP地址',
  `is_review` tinyint(1) NOT NULL DEFAULT '1' COMMENT '问题是否审核，1是，0否',
  `follow` tinyint(1) NOT NULL DEFAULT '0' COMMENT '关注问题则表示有回复时发送邮件通知到问题发布人',
  `solve_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '解决时间(这个问题存在最佳答案则表示已解决)',
  `bestanswer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最佳答案',
  `sort_order` int(10) NOT NULL DEFAULT '100' COMMENT '排序号',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '悬赏金额',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '1-删除',
  PRIMARY KEY (`ask_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='问题表';


-- -----------------------------
-- Table structure for `ey_ask_answer`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ask_answer`;
CREATE TABLE `ey_ask_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `ask_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题ID',
  `is_bestanswer` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否最佳答案，0否，1是',
  `is_review` tinyint(1) NOT NULL DEFAULT '1' COMMENT '问题是否审核，1是，0否',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题栏目ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `click_like` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞量',
  `users_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '用户IP地址',
  `content` text NOT NULL COMMENT '内容',
  `ifcheck` tinyint(1) NOT NULL DEFAULT '1',
  `answer_pid` int(10) NOT NULL DEFAULT '0' COMMENT '子答案的父答案',
  `at_users_id` int(10) NOT NULL DEFAULT '0' COMMENT '被@的用户ID',
  `at_answer_id` int(10) NOT NULL DEFAULT '0' COMMENT '@答案ID',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-删除',
  PRIMARY KEY (`answer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='答案表';


-- -----------------------------
-- Table structure for `ey_ask_answer_like`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ask_answer_like`;
CREATE TABLE `ey_ask_answer_like` (
  `like_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `ask_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '问题ID',
  `answer_id` int(10) NOT NULL DEFAULT '0' COMMENT '答案ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `click_like` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '点赞',
  `like_source` tinyint(1) unsigned NOT NULL DEFAULT '2' COMMENT '点赞来源，1=点赞提问(ask_id)，2=点赞评论(answer_id)，3=点赞回复(answer_id)，默认值为2，兼容以前的那些评论数据',
  `users_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '用户IP地址',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`like_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='答案点赞表';


-- -----------------------------
-- Table structure for `ey_ask_score_level`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ask_score_level`;
CREATE TABLE `ey_ask_score_level` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT '',
  `min` mediumint(8) DEFAULT '0',
  `max` mediumint(8) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='积分等级表';

-- -----------------------------
-- Records of `ey_ask_score_level`
-- -----------------------------
INSERT INTO `ey_ask_score_level` VALUES ('1', '青铜', '0', '1000');
INSERT INTO `ey_ask_score_level` VALUES ('2', '白银', '1001', '5000');
INSERT INTO `ey_ask_score_level` VALUES ('3', '黄金', '5001', '20000');
INSERT INTO `ey_ask_score_level` VALUES ('4', '王者', '20001', '0');

-- -----------------------------
-- Table structure for `ey_ask_type`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ask_type`;
CREATE TABLE `ey_ask_type` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '栏目自增',
  `type_name` varchar(100) NOT NULL DEFAULT '' COMMENT '栏目名称',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级ID',
  `seo_title` varchar(200) DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) DEFAULT '' COMMENT 'seo关键字',
  `seo_description` text COMMENT 'seo描述',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序号',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='问题栏目分类表';

-- -----------------------------
-- Records of `ey_ask_type`
-- -----------------------------
INSERT INTO `ey_ask_type` VALUES ('1', '问题求助', '0', '', '', '', '100', '1565770890', '1611910466');
INSERT INTO `ey_ask_type` VALUES ('2', '功能建议', '0', '', '', '', '100', '1565770890', '1611910466');
INSERT INTO `ey_ask_type` VALUES ('3', 'BUG反馈', '1', '', '', '', '100', '1565771021', '1611910466');
INSERT INTO `ey_ask_type` VALUES ('4', '其他问题', '1', '', '', '', '100', '1565771021', '1611910466');
INSERT INTO `ey_ask_type` VALUES ('5', '业务咨询', '0', '', '', '', '100', '1611910466', '1611910466');

-- -----------------------------
-- Table structure for `ey_auth_role`
-- -----------------------------
DROP TABLE IF EXISTS `ey_auth_role`;
CREATE TABLE `ey_auth_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '' COMMENT '角色名',
  `pid` int(10) DEFAULT '0' COMMENT '父角色ID',
  `remark` text COMMENT '备注信息',
  `grade` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '级别',
  `language` text COMMENT '多语言权限',
  `online_update` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '在线升级',
  `only_oneself` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '只看自己发布',
  `check_oneself` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '发布文档自动通过审核，1--是，0--否',
  `cud` varchar(255) DEFAULT '' COMMENT '增改删',
  `permission` text COMMENT '已允许的权限',
  `built_in` tinyint(1) DEFAULT '0' COMMENT '内置用户组，1表示内置',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(1=正常，0=屏蔽)',
  `admin_id` int(10) DEFAULT '0' COMMENT '操作管理员ID',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='管理员角色表';

-- -----------------------------
-- Records of `ey_auth_role`
-- -----------------------------
INSERT INTO `ey_auth_role` VALUES ('1', '优化推广员', '0', '', '0', 'a:1:{i:0;s:2:\"cn\";}', '0', '1', '1', 'a:3:{i:0;s:3:\"add\";i:1;s:4:\"edit\";i:2;s:3:\"del\";}', 'a:2:{s:5:\"rules\";a:8:{i:0;s:1:\"1\";i:1;s:1:\"3\";i:2;s:1:\"4\";i:3;s:1:\"8\";i:4;s:1:\"9\";i:5;s:2:\"10\";i:6;s:2:\"14\";i:7;i:2;}s:7:\"arctype\";a:60:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:2:\"33\";i:7;s:2:\"34\";i:8;s:2:\"35\";i:9;s:2:\"36\";i:10;s:2:\"37\";i:11;s:2:\"38\";i:12;s:2:\"39\";i:13;s:2:\"40\";i:14;s:2:\"41\";i:15;s:2:\"42\";i:16;s:2:\"43\";i:17;s:2:\"44\";i:18;s:2:\"45\";i:19;s:2:\"46\";i:20;s:2:\"47\";i:21;s:2:\"48\";i:22;s:1:\"8\";i:23;s:2:\"32\";i:24;s:1:\"9\";i:25;s:2:\"30\";i:26;s:2:\"31\";i:27;s:2:\"11\";i:28;s:2:\"12\";i:29;s:2:\"13\";i:30;s:2:\"23\";i:31;s:2:\"20\";i:32;s:2:\"24\";i:33;s:2:\"25\";i:34;s:2:\"21\";i:35;s:2:\"26\";i:36;s:2:\"22\";i:37;s:2:\"27\";i:38;s:2:\"28\";i:39;s:2:\"29\";i:40;s:2:\"21\";i:41;s:2:\"22\";i:42;s:2:\"23\";i:43;s:2:\"24\";i:44;s:2:\"25\";i:45;s:2:\"26\";i:46;s:2:\"27\";i:47;s:2:\"28\";i:48;s:2:\"29\";i:49;s:2:\"30\";i:50;s:2:\"31\";i:51;s:2:\"32\";i:52;s:2:\"33\";i:53;s:2:\"34\";i:54;s:2:\"35\";i:55;s:2:\"36\";i:56;s:2:\"37\";i:57;s:2:\"38\";i:58;s:2:\"39\";i:59;s:2:\"40\";}}', '1', '100', '1', '0', '1541207843', '0');
INSERT INTO `ey_auth_role` VALUES ('2', '内容管理员', '0', '', '0', 'a:1:{i:0;s:2:\"cn\";}', '0', '1', '1', 'a:3:{i:0;s:3:\"add\";i:1;s:4:\"edit\";i:2;s:3:\"del\";}', 'a:2:{s:5:\"rules\";a:4:{i:0;s:1:\"1\";i:1;s:2:\"10\";i:2;s:2:\"14\";i:3;i:2;}s:7:\"arctype\";a:60:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";i:3;s:1:\"4\";i:4;s:1:\"5\";i:5;s:1:\"6\";i:6;s:2:\"33\";i:7;s:2:\"34\";i:8;s:2:\"35\";i:9;s:2:\"36\";i:10;s:2:\"37\";i:11;s:2:\"38\";i:12;s:2:\"39\";i:13;s:2:\"40\";i:14;s:2:\"41\";i:15;s:2:\"42\";i:16;s:2:\"43\";i:17;s:2:\"44\";i:18;s:2:\"45\";i:19;s:2:\"46\";i:20;s:2:\"47\";i:21;s:2:\"48\";i:22;s:1:\"8\";i:23;s:2:\"32\";i:24;s:1:\"9\";i:25;s:2:\"30\";i:26;s:2:\"31\";i:27;s:2:\"11\";i:28;s:2:\"12\";i:29;s:2:\"13\";i:30;s:2:\"23\";i:31;s:2:\"20\";i:32;s:2:\"24\";i:33;s:2:\"25\";i:34;s:2:\"21\";i:35;s:2:\"26\";i:36;s:2:\"22\";i:37;s:2:\"27\";i:38;s:2:\"28\";i:39;s:2:\"29\";i:40;s:2:\"21\";i:41;s:2:\"22\";i:42;s:2:\"23\";i:43;s:2:\"24\";i:44;s:2:\"25\";i:45;s:2:\"26\";i:46;s:2:\"27\";i:47;s:2:\"28\";i:48;s:2:\"29\";i:49;s:2:\"30\";i:50;s:2:\"31\";i:51;s:2:\"32\";i:52;s:2:\"33\";i:53;s:2:\"34\";i:54;s:2:\"35\";i:55;s:2:\"36\";i:56;s:2:\"37\";i:57;s:2:\"38\";i:58;s:2:\"39\";i:59;s:2:\"40\";}}', '1', '100', '1', '0', '1541207846', '0');

-- -----------------------------
-- Table structure for `ey_channelfield`
-- -----------------------------
DROP TABLE IF EXISTS `ey_channelfield`;
CREATE TABLE `ey_channelfield` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '字段名称',
  `channel_id` int(10) NOT NULL DEFAULT '0' COMMENT '所属文档模型id',
  `title` varchar(250) NOT NULL DEFAULT '' COMMENT '字段标题',
  `dtype` varchar(32) NOT NULL DEFAULT '' COMMENT '字段类型',
  `define` text NOT NULL COMMENT '字段定义',
  `maxlength` int(10) NOT NULL DEFAULT '0' COMMENT '最大长度，文本数据必须填写，大于255为text类型',
  `dfvalue` text NOT NULL COMMENT '默认值',
  `dfvalue_unit` varchar(50) NOT NULL DEFAULT '' COMMENT '数值单位',
  `remark` varchar(256) NOT NULL DEFAULT '' COMMENT '提示说明',
  `is_screening` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否应用于条件筛选',
  `is_release` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否应用于会员投稿发布',
  `ifeditable` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否在编辑页显示',
  `ifrequire` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否必填',
  `ifsystem` tinyint(1) NOT NULL DEFAULT '0' COMMENT '字段分类，1=系统(不可修改)，0=自定义',
  `ifmain` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否主表字段',
  `ifcontrol` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态，控制该条数据是否允许被控制，1为不允许控制，0为允许控制',
  `sort_order` int(5) NOT NULL DEFAULT '100' COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=187 DEFAULT CHARSET=utf8 COMMENT='自定义字段表';

-- -----------------------------
-- Records of `ey_channelfield`
-- -----------------------------
INSERT INTO `ey_channelfield` VALUES ('1', 'add_time', '0', '新增时间', 'datetime', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091575', '1533091575');
INSERT INTO `ey_channelfield` VALUES ('2', 'update_time', '0', '更新时间', 'datetime', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091601', '1533091601');
INSERT INTO `ey_channelfield` VALUES ('3', 'aid', '0', '文档ID', 'int', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091624', '1533091624');
INSERT INTO `ey_channelfield` VALUES ('4', 'typeid', '0', '当前栏目ID', 'int', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091930', '1533091930');
INSERT INTO `ey_channelfield` VALUES ('5', 'channel', '0', '模型ID', 'int', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092214', '1533092214');
INSERT INTO `ey_channelfield` VALUES ('6', 'is_b', '0', '是否加粗', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092246', '1533092246');
INSERT INTO `ey_channelfield` VALUES ('7', 'title', '0', '文档标题', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092381', '1533092381');
INSERT INTO `ey_channelfield` VALUES ('8', 'litpic', '0', '缩略图', 'img', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092398', '1533092398');
INSERT INTO `ey_channelfield` VALUES ('9', 'is_head', '0', '是否头条', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092420', '1533092420');
INSERT INTO `ey_channelfield` VALUES ('10', 'is_special', '0', '是否特荐', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092439', '1533092439');
INSERT INTO `ey_channelfield` VALUES ('11', 'is_top', '0', '是否置顶', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092454', '1533092454');
INSERT INTO `ey_channelfield` VALUES ('12', 'is_recom', '0', '是否推荐', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092468', '1533092468');
INSERT INTO `ey_channelfield` VALUES ('13', 'is_jump', '0', '是否跳转', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092484', '1533092484');
INSERT INTO `ey_channelfield` VALUES ('14', 'author', '0', '作者', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092498', '1533092498');
INSERT INTO `ey_channelfield` VALUES ('15', 'click', '0', '浏览量', 'int', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092512', '1533092512');
INSERT INTO `ey_channelfield` VALUES ('16', 'arcrank', '0', '阅读权限', 'select', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092534', '1533092534');
INSERT INTO `ey_channelfield` VALUES ('17', 'jumplinks', '0', '跳转链接', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092553', '1533092553');
INSERT INTO `ey_channelfield` VALUES ('18', 'ismake', '0', '是否静态页面', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092698', '1533092698');
INSERT INTO `ey_channelfield` VALUES ('19', 'seo_title', '0', 'SEO标题', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092713', '1533092713');
INSERT INTO `ey_channelfield` VALUES ('20', 'seo_keywords', '0', 'SEO关键词', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092725', '1533092725');
INSERT INTO `ey_channelfield` VALUES ('21', 'seo_description', '0', 'SEO描述', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092739', '1533092739');
INSERT INTO `ey_channelfield` VALUES ('22', 'status', '0', '状态', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092753', '1533092753');
INSERT INTO `ey_channelfield` VALUES ('23', 'sort_order', '0', '排序号', 'int', 'int(11)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092766', '1533092766');
INSERT INTO `ey_channelfield` VALUES ('24', 'content', '2', '内容详情', 'htmltext', 'longtext', '250', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1533359739', '1533359739');
INSERT INTO `ey_channelfield` VALUES ('25', 'content', '3', '内容详情', 'htmltext', 'longtext', '250', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1533359588', '1533359588');
INSERT INTO `ey_channelfield` VALUES ('26', 'content', '4', '内容详情', 'htmltext', 'longtext', '250', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1533359752', '1533359752');
INSERT INTO `ey_channelfield` VALUES ('27', 'content', '6', '内容详情', 'htmltext', 'longtext', '250', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1533464715', '1533464715');
INSERT INTO `ey_channelfield` VALUES ('29', 'content', '1', '内容详情', 'htmltext', 'longtext', '250', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1533464713', '1533464713');
INSERT INTO `ey_channelfield` VALUES ('30', 'update_time', '-99', '更新时间', 'datetime', 'int(11)', '11', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('31', 'add_time', '-99', '新增时间', 'datetime', 'int(11)', '11', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('32', 'status', '-99', '启用 (1=正常，0=屏蔽)', 'switch', 'tinyint(1)', '1', '1', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('33', 'is_part', '-99', '栏目属性：0=内容栏目，1=外部链接', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('34', 'is_hidden', '-99', '是否隐藏栏目：0=显示，1=隐藏', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('35', 'sort_order', '-99', '排序号', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('36', 'seo_description', '-99', 'seo描述', 'multitext', 'text', '0', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('37', 'seo_keywords', '-99', 'seo关键字', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('38', 'seo_title', '-99', 'SEO标题', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('39', 'tempview', '-99', '文档模板文件名', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('40', 'templist', '-99', '列表模板文件名', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('41', 'litpic', '-99', '栏目图片', 'img', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('42', 'typelink', '-99', '栏目链接', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('43', 'grade', '-99', '栏目等级', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('44', 'englist_name', '-99', '栏目英文名', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('45', 'dirpath', '-99', '目录存放HTML路径', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('46', 'dirname', '-99', '目录英文名', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('47', 'typename', '-99', '栏目名称', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('48', 'parent_id', '-99', '栏目上级ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('49', 'current_channel', '-99', '栏目当前模型ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('50', 'channeltype', '-99', '栏目顶级模型ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('51', 'id', '-99', '栏目ID', 'int', 'int(10)', '10', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('52', 'del_method', '-99', '伪删除状态，1为主动删除，2为跟随上级栏目被动删除', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1547890773', '1547890773');
INSERT INTO `ey_channelfield` VALUES ('53', 'is_del', '0', '伪删除，1=是，0=否', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1547890773', '1547890773');
INSERT INTO `ey_channelfield` VALUES ('54', 'del_method', '0', '伪删除状态，1为主动删除，2为跟随上级栏目被动删除', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1547890773', '1547890773');
INSERT INTO `ey_channelfield` VALUES ('55', 'admin_id', '0', '管理员ID', 'int', 'int(10)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1547890773', '1547890773');
INSERT INTO `ey_channelfield` VALUES ('56', 'lang', '0', '语言标识', 'text', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1547890773', '1547890773');
INSERT INTO `ey_channelfield` VALUES ('57', 'prom_type', '0', '产品类型：0普通产品，1虚拟产品', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('58', 'users_price', '0', '价格', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '0', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('59', 'prom_type', '2', '产品类型：0普通产品，1虚拟产品', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('60', 'users_price', '2', '价格', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '0', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('61', 'users_id', '0', '会员ID', 'int', 'int(11)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('62', 'arc_level_id', '0', '文档会员权限ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('63', 'arc_level_id', '4', '文档会员权限ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('64', 'weapp_code', '-99', '插件栏目唯一标识', 'text', 'varchar(200)', '200', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('65', 'is_release', '-99', '栏目是否应用于会员投稿发布，1是，0否', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('66', 'old_price', '0', '产品旧价', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('67', 'stock_count', '0', '商品库存量', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('68', 'stock_show', '0', '商品库存在产品详情页是否显示，1为显示，0为不显示', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('69', 'joinaid', '0', '关联文档ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('70', 'downcount', '0', '下载次数', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('71', 'downcount', '4', '下载次数', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('72', 'htmlfilename', '0', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('73', 'htmlfilename', '1', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('74', 'htmlfilename', '2', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('75', 'htmlfilename', '3', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('76', 'htmlfilename', '4', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('77', 'htmlfilename', '6', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1557042574');
INSERT INTO `ey_channelfield` VALUES ('78', 'attrlist_id', '0', '参数列表ID', 'int', 'int(10) unsigned', '10', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091930', '1533091930');
INSERT INTO `ey_channelfield` VALUES ('79', 'sales_num', '0', '销售量', 'int', 'int(10) unsigned', '10', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091930', '1533091930');
INSERT INTO `ey_channelfield` VALUES ('81', 'topid', '-99', '顶级栏目ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1557042574', '1613989591');
INSERT INTO `ey_channelfield` VALUES ('82', 'is_slide', '0', '是否幻灯', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092420', '1533092420');
INSERT INTO `ey_channelfield` VALUES ('83', 'is_roll', '0', '是否幻灯', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092420', '1533092420');
INSERT INTO `ey_channelfield` VALUES ('84', 'is_diyattr', '0', '是否自定义', 'switch', 'tinyint(1)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533092420', '1533092420');
INSERT INTO `ey_channelfield` VALUES ('85', 'update_time', '5', '更新时间', 'datetime', 'int(11)', '11', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('86', 'add_time', '5', '新增时间', 'datetime', 'int(11)', '11', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('87', 'htmlfilename', '5', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('88', 'downcount', '5', '下载次数', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('89', 'joinaid', '5', '关联文档ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('90', 'del_method', '5', '伪删除状态，1为主动删除，2为跟随上级栏目被动删除', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('91', 'is_del', '5', '伪删除，1=是，0=否', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('92', 'arc_level_id', '5', '文档会员权限ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('93', 'users_id', '5', '会员ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('94', 'admin_id', '5', '管理员ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('95', 'lang', '5', '语言标识', 'text', 'varchar(50)', '50', 'cn', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('96', 'sort_order', '5', '排序号', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('97', 'status', '5', '状态(0=屏蔽，1=正常)', 'switch', 'tinyint(1)', '1', '1', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('98', 'tempview', '5', '文档模板文件名', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('99', 'prom_type', '5', '产品类型：0=普通产品，1=虚拟(默认手动发货)，2=虚拟(网盘', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('100', 'stock_show', '5', '商品库存在产品详情页是否显示，1为显示，0为不显示', 'switch', 'tinyint(1) unsigned', '1', '1', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('101', 'stock_count', '5', '商品库存量', 'int', 'int(10) unsigned', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('102', 'sales_num', '5', '销售量', 'int', 'int(10) unsigned', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('103', 'old_price', '5', '产品旧价', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('104', 'users_free', '5', '是否会员免费，默认0不免费，1为免费', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('105', 'users_price', '5', '会员价', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('106', 'attrlist_id', '5', '参数列表ID', 'int', 'int(10) unsigned', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('107', 'seo_description', '5', 'SEO描述', 'multitext', 'text', '0', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('108', 'seo_keywords', '5', 'SEO关键词', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('109', 'seo_title', '5', 'SEO标题', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('110', 'ismake', '5', '是否静态页面（0=动态，1=静态）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('111', 'jumplinks', '5', '外链跳转', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('112', 'arcrank', '5', '阅读权限：0=开放浏览，-1=待审核稿件', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('113', 'click', '5', '浏览量', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('114', 'author', '5', '作者', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('115', 'is_diyattr', '5', '自定义（0=否，1=是）', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('116', 'is_slide', '5', '幻灯（0=否，1=是）', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('117', 'is_roll', '5', '滚动（0=否，1=是）', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('118', 'is_litpic', '5', '图片（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('119', 'is_jump', '5', '跳转链接（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('120', 'is_recom', '5', '推荐（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('121', 'is_top', '5', '置顶（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('122', 'is_special', '5', '特荐（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('123', 'is_head', '5', '头条（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('124', 'litpic', '5', '缩略图', 'img', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('125', 'title', '5', '标题', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('126', 'is_b', '5', '加粗', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('127', 'channel', '5', '模型ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('128', 'typeid', '5', '当前栏目', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('129', 'aid', '5', 'aid', 'int', 'int(10)', '10', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('130', 'content', '5', '内容详情', 'htmltext', 'longtext', '0', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('131', 'courseware', '5', '课件地址', 'text', 'varchar(200)', '200', '', '', '', '0', '1', '0', '0', '1', '0', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('132', 'courseware_free', '5', '课件收费', 'select', 'enum(\'免费\',\'收费\')', '0', '免费,收费', '', '', '0', '1', '0', '0', '1', '0', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('133', 'total_duration', '5', '视频总时长', 'int', 'int(10)', '10', '0', '', '', '0', '1', '0', '0', '1', '0', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('134', 'total_video', '5', '视频数', 'int', 'int(10)', '10', '0', '', '', '0', '1', '0', '0', '1', '0', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('135', 'update_time', '7', '更新时间', 'datetime', 'int(11)', '11', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('136', 'add_time', '7', '新增时间', 'datetime', 'int(11)', '11', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('137', 'htmlfilename', '7', '自定义文件名', 'text', 'varchar(50)', '50', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('138', 'downcount', '7', '下载次数', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('139', 'joinaid', '7', '关联文档ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('140', 'del_method', '7', '伪删除状态，1为主动删除，2为跟随上级栏目被动删除', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('141', 'is_del', '7', '伪删除，1=是，0=否', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('142', 'arc_level_id', '7', '文档会员权限ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('143', 'users_id', '7', '会员ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('144', 'admin_id', '7', '管理员ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('145', 'lang', '7', '语言标识', 'text', 'varchar(50)', '50', 'cn', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('146', 'sort_order', '7', '排序号', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('147', 'status', '7', '状态(0=屏蔽，1=正常)', 'switch', 'tinyint(1)', '1', '1', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('148', 'tempview', '7', '文档模板文件名', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('149', 'prom_type', '7', '产品类型：0=普通产品，1=虚拟(默认手动发货)，2=虚拟(网盘', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('150', 'stock_show', '7', '商品库存在产品详情页是否显示，1为显示，0为不显示', 'switch', 'tinyint(1) unsigned', '1', '1', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('151', 'stock_count', '7', '商品库存量', 'int', 'int(10) unsigned', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('152', 'sales_num', '7', '销售量', 'int', 'int(10) unsigned', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('153', 'old_price', '7', '产品旧价', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('154', 'users_free', '7', '是否会员免费，默认0不免费，1为免费', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('155', 'users_price', '7', '会员价', 'decimal', 'decimal(10,2)', '10', '0.00', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('156', 'attrlist_id', '7', '参数列表ID', 'int', 'int(10) unsigned', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('157', 'seo_description', '7', 'SEO描述', 'multitext', 'text', '0', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('158', 'seo_keywords', '7', 'SEO关键词', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('159', 'seo_title', '7', 'SEO标题', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('160', 'ismake', '7', '是否静态页面（0=动态，1=静态）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('161', 'jumplinks', '7', '外链跳转', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('162', 'arcrank', '7', '阅读权限：0=开放浏览，-1=待审核稿件', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('163', 'click', '7', '浏览量', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('164', 'author', '7', '作者', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('165', 'is_diyattr', '7', '自定义（0=否，1=是）', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('166', 'is_slide', '7', '幻灯（0=否，1=是）', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('167', 'is_roll', '7', '滚动（0=否，1=是）', 'switch', 'tinyint(1) unsigned', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('168', 'is_litpic', '7', '图片（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('169', 'is_jump', '7', '跳转链接（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('170', 'is_recom', '7', '推荐（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('171', 'is_top', '7', '置顶（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('172', 'is_special', '7', '特荐（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('173', 'is_head', '7', '头条（0=否，1=是）', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('174', 'litpic', '7', '缩略图', 'img', 'varchar(250)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('175', 'title', '7', '标题', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('176', 'is_b', '7', '加粗', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('177', 'channel', '7', '模型ID', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('178', 'typeid', '7', '当前栏目', 'int', 'int(10)', '10', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('179', 'aid', '7', 'aid', 'int', 'int(10)', '10', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('180', 'content', '7', '内容详情', 'htmltext', 'longtext', '0', '', '', '', '0', '1', '1', '0', '1', '0', '0', '100', '1', '1638405515', '1638405515');
INSERT INTO `ey_channelfield` VALUES ('181', 'appraise', '0', '评价数', 'int', 'int(10)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091930', '1533091930');
INSERT INTO `ey_channelfield` VALUES ('182', 'collection', '0', '收藏数', 'int', 'int(10)', '250', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533091930', '1533091930');
INSERT INTO `ey_channelfield` VALUES ('183', 'restric_type', '0', '限制模式，0=免费，1=付费，2=会员专享，3=会员付费', 'switch', 'tinyint(1)', '1', '0', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1616293251', '1616293251');
INSERT INTO `ey_channelfield` VALUES ('184', 'diy_dirpath', '-99', '自定义HTML保存路径', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('185', 'rulelist', '-99', '列表静态文件存放规则', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');
INSERT INTO `ey_channelfield` VALUES ('186', 'ruleview', '-99', '文档静态文件存放规则', 'text', 'varchar(200)', '200', '', '', '', '0', '0', '1', '0', '1', '1', '1', '100', '1', '1533524780', '1533524780');

-- -----------------------------
-- Table structure for `ey_channelfield_bind`
-- -----------------------------
DROP TABLE IF EXISTS `ey_channelfield_bind`;
CREATE TABLE `ey_channelfield_bind` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `typeid` int(10) DEFAULT '0' COMMENT '栏目ID',
  `field_id` int(10) DEFAULT '0' COMMENT '自定义字段ID',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='栏目与自定义字段绑定表';


-- -----------------------------
-- Table structure for `ey_channelfield_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_channelfield_log`;
CREATE TABLE `ey_channelfield_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '字段名称',
  `channel_id` int(10) DEFAULT '0' COMMENT '模型ID',
  `dtype` varchar(32) DEFAULT '' COMMENT '字段类型',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='自定义字段日志表';


-- -----------------------------
-- Table structure for `ey_channeltype`
-- -----------------------------
DROP TABLE IF EXISTS `ey_channeltype`;
CREATE TABLE `ey_channeltype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nid` varchar(50) NOT NULL DEFAULT '' COMMENT '识别id',
  `title` varchar(30) DEFAULT '' COMMENT '名称',
  `ntitle` varchar(30) DEFAULT '' COMMENT '左侧菜单名称',
  `table` varchar(50) DEFAULT '' COMMENT '表名',
  `ctl_name` varchar(50) DEFAULT '' COMMENT '控制器名称（区分大小写）',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(1=启用，0=屏蔽)',
  `ifsystem` tinyint(1) DEFAULT '0' COMMENT '字段分类，1=系统(不可修改)，0=自定义',
  `is_repeat_title` tinyint(1) DEFAULT '1' COMMENT '文档标题重复，1=允许，0=不允许',
  `is_release` tinyint(1) DEFAULT '0' COMMENT '模型是否允许应用于会员投稿发布，1是，0否',
  `is_litpic_users_release` tinyint(1) DEFAULT '1' COMMENT '缩略图是否应用于会员投稿，1=允许，0=不允许',
  `data` text COMMENT '额外序列化存储数据',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `sort_order` smallint(6) DEFAULT '50' COMMENT '排序',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idention` (`nid`) USING BTREE,
  UNIQUE KEY `ctl_name` (`ctl_name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_channeltype`
-- -----------------------------
INSERT INTO `ey_channeltype` VALUES ('1', 'article', '文章模型', '文章', 'article', 'Article', '1', '1', '1', '1', '1', '', '0', '1', '0', '1600759544');
INSERT INTO `ey_channeltype` VALUES ('4', 'download', '下载模型', '下载', 'download', 'Download', '1', '1', '1', '1', '1', '', '0', '4', '0', '1600759544');
INSERT INTO `ey_channeltype` VALUES ('2', 'product', '产品模型', '产品', 'product', 'Product', '1', '1', '1', '1', '1', '', '0', '2', '0', '1600759544');
INSERT INTO `ey_channeltype` VALUES ('8', 'guestbook', '留言模型', '留言', 'guestbook', 'Guestbook', '1', '1', '1', '1', '1', '', '0', '8', '1509197711', '1600759544');
INSERT INTO `ey_channeltype` VALUES ('6', 'single', '单页模型', '单页', 'single', 'Single', '1', '1', '1', '1', '1', '', '0', '6', '1523091961', '1600759544');
INSERT INTO `ey_channeltype` VALUES ('3', 'images', '图集模型', '图集', 'images', 'Images', '1', '1', '1', '1', '1', '', '0', '3', '1523929121', '1600759544');
INSERT INTO `ey_channeltype` VALUES ('5', 'media', '视频模型', '视频', 'media', 'Media', '0', '1', '1', '1', '1', '', '0', '5', '1509197711', '1564532747');
INSERT INTO `ey_channeltype` VALUES ('7', 'special', '专题模型', '专题', 'special', 'Special', '0', '1', '1', '1', '1', '', '0', '7', '1509197711', '1564532747');
INSERT INTO `ey_channeltype` VALUES ('51', 'ask', '问答模型', '问答', 'ask', 'Ask', '0', '1', '1', '1', '1', '', '0', '9', '1509197711', '1564532747');

-- -----------------------------
-- Table structure for `ey_citysite`
-- -----------------------------
DROP TABLE IF EXISTS `ey_citysite`;
CREATE TABLE `ey_citysite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(32) DEFAULT '' COMMENT '地区名称',
  `level` tinyint(4) DEFAULT '0' COMMENT '地区等级 分省市县区',
  `parent_id` int(10) DEFAULT '0' COMMENT '父id',
  `topid` int(10) DEFAULT '0' COMMENT '顶级ID',
  `initial` varchar(5) DEFAULT '' COMMENT '首字母',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态（1：开启，0：隐藏）',
  `is_hot` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否热门',
  `domain` varchar(50) NOT NULL DEFAULT '' COMMENT '二级域名',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '二级域名开启状态，0=否，1=是',
  `seoset` tinyint(1) DEFAULT '0' COMMENT 'SEO设置，0=使用主站，1=自定义',
  `seo_title` varchar(200) DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) DEFAULT '' COMMENT 'SEO关键词',
  `seo_description` text COMMENT 'SEO描述',
  `sort_order` int(6) unsigned NOT NULL DEFAULT '100' COMMENT '排序',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`) USING BTREE,
  KEY `level` (`level`,`status`) USING BTREE,
  KEY `initial` (`initial`,`sort_order`,`id`) USING BTREE,
  KEY `parent_id` (`parent_id`,`status`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='城市分站表';


-- -----------------------------
-- Table structure for `ey_common_pic`
-- -----------------------------
DROP TABLE IF EXISTS `ey_common_pic`;
CREATE TABLE `ey_common_pic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '常用图片ID',
  `pic_path` varchar(255) NOT NULL DEFAULT '' COMMENT '图片地址',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '多语言',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='常用图片';


-- -----------------------------
-- Table structure for `ey_config`
-- -----------------------------
DROP TABLE IF EXISTS `ey_config`;
CREATE TABLE `ey_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '配置的key键名',
  `value` text,
  `inc_type` varchar(64) DEFAULT '' COMMENT '配置分组',
  `desc` varchar(50) DEFAULT '' COMMENT '描述',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否已删除，0=否，1=是',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_config`
-- -----------------------------
INSERT INTO `ey_config` VALUES ('1', 'is_mark', '0', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('2', 'mark_txt', '易优Cms', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('3', 'mark_img', '/public/upload/water/2018/05/08/93806077e5a4c4e12ceed30df5cde761.png', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('4', 'mark_width', '200', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('5', 'mark_height', '50', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('6', 'mark_degree', '54', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('7', 'mark_quality', '56', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('8', 'mark_sel', '9', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('9', 'sms_time_out', '120', 'sms', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('10', 'theme_style', '1', 'basic', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('11', 'file_size', '100', 'basic', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('12', 'image_type', 'jpg|gif|png|bmp|jpeg|ico', 'basic', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('13', 'file_type', 'zip|gz|rar|iso|doc|xls|ppt|wps', 'basic', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('14', 'media_type', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|mp4', 'basic', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('15', 'web_keywords', '', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('17', 'sms_platform', '1', 'sms', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('18', 'seo_viewtitle_format', '2', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('19', 'smtp_server', 'smtp.qq.com', 'smtp', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('20', 'smtp_port', '465', 'smtp', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('21', 'smtp_user', 'xxxxxxxxx@qq.com', 'smtp', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('22', 'smtp_pwd', 'xxxxxxxxxxx', 'smtp', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('23', 'inc_type', 'smtp', 'smtp', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('24', 'mark_type', 'img', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('25', 'mark_txt_size', '30', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('26', 'mark_txt_color', '#000000', 'water', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('27', 'oss_switch', '0', 'oss', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('28', 'web_name', '易优Cms-演示站', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('29', 'web_logo', '/public/upload/system/2018/09/05/3330b2e5e3f2fbaacc33abee33e67eec.png', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('30', 'web_ico', '/favicon.ico', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('31', 'web_basehost', 'http://127.0.0.10', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('32', 'web_description', '', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('79', 'web_recordnum', '琼ICP备xxxxxxxx号', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('33', 'web_copyright', 'Copyright © 2012-2018 某某网站 版权所有', 'web', '', 'cn', '0', '1552461160');
INSERT INTO `ey_config` VALUES ('34', 'web_thirdcode_pc', '', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('35', 'web_thirdcode_wap', '', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('39', 'seo_arcdir', '/html', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('40', 'seo_pseudo', '1', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('41', 'list_symbol', '&gt;', 'basic', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('42', 'sitemap_auto', '1', 'sitemap', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('43', 'sitemap_not1', '0', 'sitemap', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('44', 'sitemap_not2', '1', 'sitemap', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('45', 'sitemap_xml', '1', 'sitemap', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('46', 'sitemap_txt', '0', 'sitemap', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('47', 'sitemap_zzbaidutoken', '', 'sitemap', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('48', 'seo_expires_in', '7200', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('55', 'web_title', '响应式轮胎橡胶制品企业网站模板', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('56', 'smtp_test_eamil', 'xxxxxxxx@qq.com', 'smtp', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('57', 'web_authortoken', '6e27af8a47788c33317c98fd9b0d8e03', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('58', 'web_attr_3', '13800000000', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('59', 'web_attr_2', '400-123-4567', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('60', 'web_attr_1', '诚信为本，市场在变，诚信永远不变...', 'web', '', 'cn', '0', '1552461129');
INSERT INTO `ey_config` VALUES ('61', 'web_attr_4', '+86-123-4567', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('81', 'web_attr_5', '广东省广州市天河区88号', 'web', '', 'cn', '0', '1552461129');
INSERT INTO `ey_config` VALUES ('62', 'seo_inlet', '1', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('63', 'web_cmspath', '', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('64', 'web_sqldatapath', '/data/sqldata', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('65', 'web_cmsurl', '', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('66', 'web_templets_dir', '/template', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('67', 'web_templeturl', '/template', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('68', 'web_templets_pc', '/template/pc', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('69', 'web_templets_m', '/template/mobile', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('70', 'web_eyoucms', 'http://www.eyoucms.com', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('78', '_cmscopyright', 'dfn8o7Hk23i7ytQwPNSky3SL', 'php', '', 'cn', '0', '1552528571');
INSERT INTO `ey_config` VALUES ('76', 'seo_liststitle_format', '2', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('77', 'web_status', '0', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('80', 'web_is_authortoken', '-1', 'web', '', 'cn', '0', '1638405625');
INSERT INTO `ey_config` VALUES ('82', 'web_attr_6', 'admin@eyoucms.com', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('83', 'web_cmsmode', '2', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('84', 'web_htmlcache_expires_in', '0', 'web', '', 'cn', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('85', 'web_show_popup_upgrade', '-1', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('86', 'web_weapp_switch', '-1', 'web', '', 'cn', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('87', 'web_attr_7', '1234567890', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('88', 'web_adminbasefile', '/login.php', 'web', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('89', 'seo_rewrite_format', '2', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('90', 'seo_dynamic_format', '1', 'seo', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('91', 'system_sql_mode', 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION', 'system', '', 'cn', '0', '1638405510');
INSERT INTO `ey_config` VALUES ('92', 'system_home_default_lang', 'cn', 'system', '', 'cn', '0', '0');
INSERT INTO `ey_config` VALUES ('93', 'system_langnum', '2', 'system', '', 'cn', '0', '1552449886');
INSERT INTO `ey_config` VALUES ('94', 'system_version', 'v1.5.5', 'system', '', 'cn', '0', '1638405537');
INSERT INTO `ey_config` VALUES ('95', 'web_exception', '0', 'web', '', 'cn', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('96', 'web_language_switch', '1', 'web', '', 'cn', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('97', 'web_is_https', '0', 'web', '', 'cn', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('98', 'is_mark', '0', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('99', 'mark_txt', '易优Cms', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('100', 'mark_img', '/public/upload/water/2018/05/08/93806077e5a4c4e12ceed30df5cde761.png', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('101', 'mark_width', '200', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('102', 'mark_height', '50', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('103', 'mark_degree', '54', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('104', 'mark_quality', '56', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('105', 'mark_sel', '9', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('106', 'sms_time_out', '120', 'sms', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('107', 'theme_style', '1', 'basic', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('108', 'file_size', '100', 'basic', '', 'en', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('109', 'image_type', 'jpg|gif|png|bmp|jpeg|ico', 'basic', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('110', 'file_type', 'zip|gz|rar|iso|doc|xls|ppt|wps', 'basic', '', 'en', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('111', 'media_type', 'swf|mpg|mp3|rm|rmvb|wmv|wma|wav|mid|mov|mp4', 'basic', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('112', 'web_keywords', '', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('113', 'sms_platform', '1', 'sms', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('114', 'seo_viewtitle_format', '2', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('115', 'smtp_server', 'smtp.qq.com', 'smtp', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('116', 'smtp_port', '465', 'smtp', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('117', 'smtp_user', 'xxxxxxxxx@qq.com', 'smtp', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('118', 'smtp_pwd', 'xxxxxxxxxxx', 'smtp', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('119', 'inc_type', 'smtp', 'smtp', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('120', 'mark_type', 'img', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('121', 'mark_txt_size', '30', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('122', 'mark_txt_color', '#000000', 'water', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('123', 'oss_switch', '0', 'oss', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('124', 'web_name', 'en易优Cms-演示站', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('125', 'web_logo', '/public/upload/system/2018/09/05/3330b2e5e3f2fbaacc33abee33e67eec.png', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('126', 'web_ico', '/favicon.ico', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('127', 'web_basehost', 'http://127.0.0.10', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('128', 'web_description', '', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('129', 'web_copyright', 'Copyright © 2012-2018 Certain website', 'web', '', 'en', '0', '1552461192');
INSERT INTO `ey_config` VALUES ('130', 'web_thirdcode_pc', '', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('131', 'web_thirdcode_wap', '', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('132', 'seo_arcdir', '/html', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('133', 'seo_pseudo', '1', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('134', 'list_symbol', '&gt;', 'basic', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('135', 'sitemap_auto', '1', 'sitemap', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('136', 'sitemap_not1', '0', 'sitemap', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('137', 'sitemap_not2', '1', 'sitemap', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('138', 'sitemap_xml', '1', 'sitemap', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('139', 'sitemap_txt', '0', 'sitemap', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('140', 'sitemap_zzbaidutoken', '', 'sitemap', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('141', 'seo_expires_in', '7200', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('142', 'web_title', '响应式轮胎橡胶制品企业网站模板', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('143', 'smtp_test_eamil', 'xxxxxxxx@qq.com', 'smtp', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('144', 'web_authortoken', '6e27af8a47788c33317c98fd9b0d8e03', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('145', 'web_attr_3', '13800000000', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('146', 'web_attr_2', '400-123-4567', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('147', 'web_attr_1', 'Integrity-based, the market is changing, and integrity will never change...', 'web', '', 'en', '0', '1552461192');
INSERT INTO `ey_config` VALUES ('148', 'web_attr_4', '+86-123-4567', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('149', 'seo_inlet', '1', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('150', 'web_cmspath', '', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('151', 'web_sqldatapath', '/data/sqldata', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('152', 'web_cmsurl', '', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('153', 'web_templets_dir', '/template', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('154', 'web_templeturl', '/template', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('155', 'web_templets_pc', '/template/pc', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('156', 'web_templets_m', '/template/mobile', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('157', 'web_eyoucms', 'http://www.eyoucms.com', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('158', 'seo_liststitle_format', '2', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('159', 'web_status', '0', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('160', '_cmscopyright', 'gNkwhubCGAehsTm4mCwBEErH', 'php', '', 'en', '0', '1552528571');
INSERT INTO `ey_config` VALUES ('161', 'web_recordnum', '琼ICP备xxxxxxxx号', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('162', 'web_is_authortoken', '-1', 'web', '', 'en', '0', '1638405625');
INSERT INTO `ey_config` VALUES ('163', 'web_attr_5', 'No. 88, Tianhe District, Guangzhou, Guangdong, China', 'web', '', 'en', '0', '1552461192');
INSERT INTO `ey_config` VALUES ('164', 'web_attr_6', 'admin@eyoucms.com', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('165', 'web_cmsmode', '2', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('166', 'web_htmlcache_expires_in', '0', 'web', '', 'en', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('167', 'web_show_popup_upgrade', '-1', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('168', 'web_weapp_switch', '-1', 'web', '', 'en', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('169', 'web_attr_7', '1234567890', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('170', 'web_adminbasefile', '/login.php', 'web', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('171', 'seo_rewrite_format', '2', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('172', 'seo_dynamic_format', '1', 'seo', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('173', 'system_sql_mode', 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION', 'system', '', 'en', '0', '1638405510');
INSERT INTO `ey_config` VALUES ('174', 'system_home_default_lang', 'cn', 'system', '', 'en', '0', '0');
INSERT INTO `ey_config` VALUES ('175', 'system_langnum', '2', 'system', '', 'en', '0', '1552449886');
INSERT INTO `ey_config` VALUES ('176', 'system_version', 'v1.5.5', 'system', '', 'en', '0', '1638405537');
INSERT INTO `ey_config` VALUES ('177', 'web_exception', '0', 'web', '', 'en', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('178', 'web_language_switch', '1', 'web', '', 'en', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('179', 'web_is_https', '0', 'web', '', 'en', '0', '1552449875');
INSERT INTO `ey_config` VALUES ('180', 'system_upgrade_filelist', 'YXBwbGljYXRpb24vY29tbW9uL2xvZ2ljL1Ntc0xvZ2ljLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24vbG9naWMvRnVuY3Rpb25Mb2dpYy5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL2xvZ2ljL1Nob3BDb21tb25Mb2dpYy5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL21vZGVsL1dlYXBwLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24vbW9kZWwvQXNrU2NvcmVMZXZlbC5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL21vZGVsL0FyY3R5cGUucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9tb2RlbC9SZWdpb24ucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9tb2RlbC9Bc2tUeXBlLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24vbW9kZWwvVGFnbGlzdC5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL21vZGVsL0xhbmd1YWdlLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24vdXRpbC9GaWxlLmNsYXNzLnBocDxicj5hcHBsaWNhdGlvbi9yb3V0ZS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb250cm9sbGVyL1BheUFwaS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb250cm9sbGVyL1BheS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb250cm9sbGVyL01lZGlhLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvTGV2ZWwucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvY29udHJvbGxlci9CYXNlLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvU2hvcENvbW1lbnQucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvY29udHJvbGxlci9TaG9wLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvQXNrLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvVXNlcnNOb3RpY2UucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvY29udHJvbGxlci9Vc2Vycy5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb250cm9sbGVyL1VwbG9hZGlmeS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9sb2dpYy9GdW5jdGlvbkxvZ2ljLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2xvZ2ljL1BheUxvZ2ljLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2xvZ2ljL1BheUFwaUxvZ2ljLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2xvZ2ljL1NtdHBtYWlsTG9naWMucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvbW9kZWwvUGF5QXBpLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL21vZGVsL1BheS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9tb2RlbC9Vc2Vyc1JlbGVhc2UucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvbW9kZWwvUHJvZHVjdFNwZWNWYWx1ZS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9tb2RlbC9TaG9wLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL21vZGVsL1VzZXJzLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24ucGhwPGJyPmFwcGxpY2F0aW9uL2Z1bmN0aW9uLnBocDxicj5hcHBsaWNhdGlvbi9oZWxwZXIucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9jb250cm9sbGVyL1Vpc2V0LnBocDxicj5hcHBsaWNhdGlvbi9hcGkvY29udHJvbGxlci9PdGhlci5waHA8YnI+YXBwbGljYXRpb24vYXBpL2NvbnRyb2xsZXIvQWpheC5waHA8YnI+YXBwbGljYXRpb24vYXBpL3RlbXBsYXRlL290aGVyL290aGVyX3Nob3cuaHRtPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbW1vbi5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vYmVoYXZpb3IvTW9kdWxlSW5pdEJlaGF2aW9yLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9iZWhhdmlvci9BcHBFbmRCZWhhdmlvci5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vYmVoYXZpb3IvVmlld0ZpbHRlckJlaGF2aW9yLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0ZpZWxkLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0ltYWdlcy5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9GaWxlbWFuYWdlci5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9XZWFwcC5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9TdGF0aXN0aWNzLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0FkbWluLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0FyY3R5cGUucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvTWVkaWEucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQXJjaGl2ZXMucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQXJ0aWNsZS5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9VZWRpdG9yLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL1NoYXJwLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0xldmVsLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL1RhZ3MucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQ291cG9uLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL1Byb2R1Y3QucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvUmVnaW9uLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0Jhc2UucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvRW5jb2Rlcy5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9TcGVjaWFsLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0d1ZXN0Ym9vay5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9Eb3dubG9hZC5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9TZW8ucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQWRQb3NpdGlvbi5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9JbmRleC5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9BdXRoUm9sZS5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9SZWN5Y2xlQmluLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL0NoYW5uZWx0eXBlLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL01lbWJlci5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9TeXN0ZW0ucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvU2hvcFNlcnZpY2UucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvU2hvcFByb2R1Y3QucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvU2hvcENvbW1lbnQucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQ3VzdG9tLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL1Rvb2xzLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL1Nob3AucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQXNrLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9jb250cm9sbGVyL05vdGlmeS5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9Vc2Vyc05vdGljZS5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vY29udHJvbGxlci9VcGxvYWRpZnkucGhwPGJyPmFwcGxpY2F0aW9uL2FkbWluL2NvbnRyb2xsZXIvQWpheC5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vbG9naWMvQWpheExvZ2ljLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9sb2dpYy9GaWxlbWFuYWdlckxvZ2ljLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi9tb2RlbC9GaWVsZC5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vbW9kZWwvUHJvZHVjdC5waHA8YnI+YXBwbGljYXRpb24vYWRtaW4vbW9kZWwvTWVkaWFGaWxlLnBocDxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS9hcmN0eXBlL2VkaXQuaHRtPGJyPmFwcGxpY2F0aW9uL2FkbWluL3RlbXBsYXRlL2FyY3R5cGUvYWRkLmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS9hcmN0eXBlL2JhdGNoX2FkZC5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvaW5kZXgvaW5kZXguaHRtPGJyPmFwcGxpY2F0aW9uL2FkbWluL3RlbXBsYXRlL2luZGV4L3N3aXRjaF9tYXAuaHRtPGJyPmFwcGxpY2F0aW9uL2FkbWluL3RlbXBsYXRlL2luZGV4L3dlbGNvbWUuaHRtPGJyPmFwcGxpY2F0aW9uL2FkbWluL3RlbXBsYXRlL3Nob3AvbGVmdC5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvc2hvcC9pbmRleC5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvc2hvcC9zaG9wX2Jhci5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvc2hvcC9jb25mLmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS9sYW5ndWFnZS9pbmRleC5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvYWRfcG9zaXRpb24vZWRpdC5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvYWRfcG9zaXRpb24vYWRkLmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS9hZG1pbi9sb2dpbi5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvc3lzdGVtL25vdGlmeS5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvbGV2ZWwvdXBncmFkZV9pbmRleC5odG08YnI+YXBwbGljYXRpb24vYWRtaW4vdGVtcGxhdGUvbWVtYmVyL21lZGlhX2luZGV4Lmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS9tZW1iZXIvbW9uZXlfaW5kZXguaHRtPGJyPmFwcGxpY2F0aW9uL2FkbWluL3RlbXBsYXRlL21lbWJlci91c2Vyc19lZGl0Lmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS9tZW1iZXIvb3JkZXJfYmFyLmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS91c2Vyc19ub3RpY2UvYWRtaW5fbm90aWNlX2luZGV4Lmh0bTxicj5hcHBsaWNhdGlvbi9hZG1pbi90ZW1wbGF0ZS91c2Vyc19ub3RpY2UvaW5kZXguaHRtPGJyPmFwcGxpY2F0aW9uL2V4dHJhL2Vycm9yX2NvZGUucGhwPGJyPmFwcGxpY2F0aW9uL2hvbWUvY29udHJvbGxlci9WaWV3LnBocDxicj5jb3JlL2xpYnJhcnkvdGhpbmsvZGIvZHJpdmVyL0RyaXZlci5waHA8YnI+Y29yZS9saWJyYXJ5L3RoaW5rL3Byb2Nlc3MvYmh2Y29yZS9CaHZhZG1pbkFCZWdpbi5waHA8YnI+Y29yZS9saWJyYXJ5L3RoaW5rL3Byb2Nlc3MvYmh2Y29yZS9CaHZ1c2VyQUJlZ2luLnBocDxicj5jb3JlL2xpYnJhcnkvdGhpbmsvdGVtcGxhdGUvdGFnbGliL2V5b3UvVGFnTGlrZWFydGljbGUucGhwPGJyPmNvcmUvbGlicmFyeS90aGluay90ZW1wbGF0ZS90YWdsaWIvZXlvdS9UYWdMaXN0LnBocDxicj5jb3JlL2xpYnJhcnkvdGhpbmsvdGVtcGxhdGUvdGFnbGliL2V5b3UvVGFnQ2hhbm5lbC5waHA8YnI+Y29yZS9saWJyYXJ5L3RoaW5rL3RlbXBsYXRlL3RhZ2xpYi9leW91L1RhZ1ZpZGVvbGlzdC5waHA8YnI+Y29yZS9saWJyYXJ5L3RoaW5rL3RlbXBsYXRlL3RhZ2xpYi9leW91L1RhZ1ZpZGVvcGxheS5waHA8YnI+ZGF0YS9jb25mL3ZlcnNpb24udHh0PGJyPnB1YmxpYy9zdGF0aWMvY29tbW9uL2pzL3ZpZXdfYXJjcmFuay5qczxicj5wdWJsaWMvc3RhdGljL2NvbW1vbi9qcy90YWdfdmlkZW9saXN0LmpzPGJyPnB1YmxpYy9zdGF0aWMvYWRtaW4vanMvZ2xvYmFsLmpzPGJyPmFwcGxpY2F0aW9uL3BsdWdpbnMvaHRtbC5waHA8YnI+YXBwbGljYXRpb24vcGx1Z2lucy9jb25maWcucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9iZWhhdmlvci9BcHBJbml0QmVoYXZpb3IucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9iZWhhdmlvci9Jbml0SG9va0JlaGF2aW9yLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24vY29udHJvbGxlci9Db21tb24ucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9sb2dpYy9Pc3NMb2dpYy5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL2xvZ2ljL0FyY3R5cGVMb2dpYy5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL21vZGVsL0xhbmd1YWdlQXR0ci5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL21vZGVsL1NxbENhY2hlVGFibGUucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9tb2RlbC9DaGFubmVsdHlwZS5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL21vZGVsL0V5b3VVc2Vycy5waHA8YnI+YXBwbGljYXRpb24vdXNlci9odG1sLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL2NvbnRyb2xsZXIvQXJ0aWNsZS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb250cm9sbGVyL1VzZXJzUmVsZWFzZS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb250cm9sbGVyL0Rvd25sb2FkLnBocDxicj5hcHBsaWNhdGlvbi91c2VyL21vZGVsL0Rvd25sb2FkRmlsZS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9jb25maWcucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvdGVtcGxhdGUvdXBsb2FkaWZ5L3VwbG9hZC5odG08YnI+YXBwbGljYXRpb24vYXBpL2h0bWwucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9jb250cm9sbGVyL3YxL0FwaS5waHA8YnI+YXBwbGljYXRpb24vYXBpL2NvbnRyb2xsZXIvdjEvQmFzZS5waHA8YnI+YXBwbGljYXRpb24vYXBpL2NvbnRyb2xsZXIvdjEvVXNlcnMucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9jb250cm9sbGVyL0RpeWFqYXgucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9sb2dpYy92MS9BcGlMb2dpYy5waHA8YnI+YXBwbGljYXRpb24vYXBpL21vZGVsL3YxL0FwaS5waHA8YnI+YXBwbGljYXRpb24vYXBpL21vZGVsL3YxL1VzZXIucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9tb2RlbC92MS9CYXNlLnBocDxicj5hcHBsaWNhdGlvbi9hcGkvbW9kZWwvdjEvQ2F0ZWdvcnkucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9tb2RlbC92MS9Vc2VyQmFzZS5waHA8YnI+YXBwbGljYXRpb24vYXBpL21vZGVsL3YxL1Nob3AucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS9jb25maWcucGhwPGJyPmFwcGxpY2F0aW9uL2FwaS90ZW1wbGF0ZS91aXNldC9hcmNsaXN0X20uaHRtPGJyPmFwcGxpY2F0aW9uL2FwaS90ZW1wbGF0ZS91aXNldC9jb2RlLmh0bTxicj5hcHBsaWNhdGlvbi9hcGkvdGVtcGxhdGUvdWlzZXQvY29kZV9tLmh0bTxicj5hcHBsaWNhdGlvbi9hcGkvdGVtcGxhdGUvdWlzZXQvYmFja2dyb3VuZF9tLmh0bTxicj5hcHBsaWNhdGlvbi9hcGkvdGVtcGxhdGUvdWlzZXQvbWFwLmh0bTxicj5hcHBsaWNhdGlvbi9hcGkvdGVtcGxhdGUvdWlzZXQvYXJjbGlzdC5odG08YnI+YXBwbGljYXRpb24vYXBpL3RlbXBsYXRlL3Vpc2V0L21vYmlsZV90cGwuaHRtPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9jb250cm9sbGVyL1dlYXBwLnBocDxicj5hcHBsaWNhdGlvbi9jb21tb24vbG9naWMvRW1haWxMb2dpYy5waHA8YnI+YXBwbGljYXRpb24vY29tbW9uL2xvZ2ljL0NpdHlzaXRlTG9naWMucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9sb2dpYy9OYXZpZ2F0aW9uTG9naWMucGhwPGJyPmFwcGxpY2F0aW9uL2NvbW1vbi9tb2RlbC9DaXR5c2l0ZS5waHA8YnI+YXBwbGljYXRpb24vdXNlci9iZWhhdmlvci9WaWV3RmlsdGVyQmVoYXZpb3IucGhwPGJyPmFwcGxpY2F0aW9uL3VzZXIvdGFncy5waHA8YnI+YXBwbGljYXRpb24vYXBpL2NvbW1vbi5waHA8YnI+YXBwbGljYXRpb24vYXBpL3RlbXBsYXRlL3Vpc2V0L2h0bWxfbS5odG08YnI+YXBwbGljYXRpb24vYXBpL3RlbXBsYXRlL3Vpc2V0L2h0bWwuaHRt', 'system', '', 'cn', '0', '1638405516');
INSERT INTO `ey_config` VALUES ('233', 'php_servicemeal', '0', 'php', '', 'cn', '0', '1638405539');
INSERT INTO `ey_config` VALUES ('234', 'php_servicemeal', '0', 'php', '', 'en', '0', '1638405539');
INSERT INTO `ey_config` VALUES ('235', 'web_adminlogo', '', 'web', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('236', 'web_loginlogo', '', 'web', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('237', 'syn_admin_logic_1608884981', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('238', 'syn_admin_logic_balance_pay', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('239', 'basic_img_style_wh', '0', 'basic', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('240', 'syn_admin_logic_1610086648', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('241', 'syn_admin_logic_1614829120', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('242', 'syn_admin_logic_1614829121', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('243', 'syn_admin_logic_1616123192', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('244', 'syn_admin_logic_ask_answer_like', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('245', 'syn_admin_logic_archives_1618279798', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('246', 'syn_admin_logic_1623036205', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('247', 'admin_logic_1623055490', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('248', 'system_use_language', '1', 'system', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('249', 'admin_logic_1623133485', '1', 'syn', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('250', 'other_pcwapjs', '0', 'other', '', 'cn', '0', '1638405554');
INSERT INTO `ey_config` VALUES ('251', 'other_pcwapjs', '0', 'other', '', 'en', '0', '1638405554');
INSERT INTO `ey_config` VALUES ('252', 'system_auth_code', '!*&^eyoucms<>|?', 'system', '', 'en', '0', '1638405577');
INSERT INTO `ey_config` VALUES ('204', 'php_serviceinfo', '6404BwIDVQQFAgRSBgsMBwAPVgcBB1MCUFRSUARCE1ENAgAVCBFHGBdFUQNGQmdCCExUD19uDEEADRZYVxUTUxcSDVhAVQxYUF9HBRQIGm4RAVEABm0WBFdQBD4TDFMLWjoQAFQGVGhABlFSVG5NCgIOVzpEBQYAVj9BVgMIUG4XUVcDCm8QAgYKDD5DBA8GV2VGUAQJVG0QV1EEUGVEVARWVBUeEQRBQVpbEFtBXwNGAxE6RAkBVFA/QVdUAFduF15VUVZvEABQUQE+QwsOB1RlRlMEBVVtEFdRUwdlRARRXl1rRwVSAAZuQVcBVl5uEQwHVlVtFlcDUwVAShtQRxYOCkVfQAIGFwgWPkMKWldRZUZTAwgFbRBbBAQCZUQGBwVQa0cKUwEFbkFWUwMLbhENVldQbRYGV1cMPhMPAgpaOhABBQdWaEAHAwZQbk0HUAlXOkRXBQFUQRhAB0xFWg0UCERVAksBFwgWPkMKWldRZUZTAwgFbRBbBAQCZUQGBwVQa0cKUwEFbkFWUwMLbhENVldQbRYGV1cMPhMPAgpaOhABBQdWaEAHAwZQbk0HUAlXOkRXBQFUQUk', 'php', '', 'cn', '0', '1638405625');
INSERT INTO `ey_config` VALUES ('205', 'php_servicecode', '', 'php', '', 'cn', '0', '1613989590');
INSERT INTO `ey_config` VALUES ('206', 'php_serviceinfo', '6404BwIDVQQFAgRSBgsMBwAPVgcBB1MCUFRSUARCE1ENAgAVCBFHGBdFUQNGQmdCCExUD19uDEEADRZYVxUTUxcSDVhAVQxYUF9HBRQIGm4RAVEABm0WBFdQBD4TDFMLWjoQAFQGVGhABlFSVG5NCgIOVzpEBQYAVj9BVgMIUG4XUVcDCm8QAgYKDD5DBA8GV2VGUAQJVG0QV1EEUGVEVARWVBUeEQRBQVpbEFtBXwNGAxE6RAkBVFA/QVdUAFduF15VUVZvEABQUQE+QwsOB1RlRlMEBVVtEFdRUwdlRARRXl1rRwVSAAZuQVcBVl5uEQwHVlVtFlcDUwVAShtQRxYOCkVfQAIGFwgWPkMKWldRZUZTAwgFbRBbBAQCZUQGBwVQa0cKUwEFbkFWUwMLbhENVldQbRYGV1cMPhMPAgpaOhABBQdWaEAHAwZQbk0HUAlXOkRXBQFUQRhAB0xFWg0UCERVAksBFwgWPkMKWldRZUZTAwgFbRBbBAQCZUQGBwVQa0cKUwEFbkFWUwMLbhENVldQbRYGV1cMPhMPAgpaOhABBQdWaEAHAwZQbk0HUAlXOkRXBQFUQUk', 'php', '', 'en', '0', '1638405625');
INSERT INTO `ey_config` VALUES ('207', 'php_servicecode', '', 'php', '', 'en', '0', '1613989590');
INSERT INTO `ey_config` VALUES ('208', 'syn_admin_logic_special_addfields', '5', 'syn', '', 'cn', '0', '1638405515');
INSERT INTO `ey_config` VALUES ('209', 'syn_admin_logic_session_conf', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('210', 'syn_admin_logic_arctype_topid', '2', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('211', 'syn_admin_logic_arctype_topid2', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('212', 'syn_admin_logic_check_oneself', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('213', 'syn_admin_logic_links_group', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('214', 'sms_type', '1', 'sms', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('215', 'sms_type', '1', 'sms', '', 'en', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('216', 'syn_admin_logic_1608189503', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('217', 'download_select_servername', 'a:6:{i:0;s:12:\"立即下载\";i:1;s:15:\"本地服务器\";i:2;s:15:\"远程服务器\";i:3;s:12:\"百度网盘\";i:4;s:15:\"七牛云存储\";i:5;s:12:\"腾讯网盘\";}', 'download', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('218', 'download_select_servername', 'a:6:{i:0;s:12:\"立即下载\";i:1;s:15:\"本地服务器\";i:2;s:15:\"远程服务器\";i:3;s:12:\"百度网盘\";i:4;s:15:\"七牛云存储\";i:5;s:12:\"腾讯网盘\";}', 'download', '', 'en', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('219', 'syn_admin_logic_1608191377', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('220', 'system_paginate_pagesize', '20', 'system', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('221', 'web_theme_color', '#3398cc', 'web', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('222', 'web_assist_color', '#2189be', 'web', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('223', 'web_loginbgimg', '', 'web', '', 'cn', '0', '1638405553');
INSERT INTO `ey_config` VALUES ('224', 'system_paginate_pagesize', '20', 'system', '', 'en', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('225', 'web_theme_color', '#3398cc', 'web', '', 'en', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('226', 'web_assist_color', '#2189be', 'web', '', 'en', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('227', 'web_loginbgimg', '/public/static/admin/images/login-bg.jpg', 'web', '', 'en', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('228', 'syn_admin_logic_1609039608', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('229', 'syn_admin_logic_1609291091', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('230', 'admin_logic_1610086647', '1', 'syn', '', 'cn', '0', '1613989591');
INSERT INTO `ey_config` VALUES ('181', 'smtp_syn_weapp', '1', 'smtp', '', 'cn', '0', '1559201133');
INSERT INTO `ey_config` VALUES ('182', 'smtp_syn_weapp', '1', 'smtp', '', 'en', '0', '1559201133');
INSERT INTO `ey_config` VALUES ('183', 'system_auth_code', '!*&^eyoucms<>|?', 'system', '', 'cn', '0', '1638405577');
INSERT INTO `ey_config` VALUES ('184', 'php_eyou_blacklist', '', 'php', '', 'cn', '0', '1600759525');
INSERT INTO `ey_config` VALUES ('185', 'php_eyou_blacklist', '', 'php', '', 'en', '0', '1600759525');
INSERT INTO `ey_config` VALUES ('186', 'system_robots_edit', '1', 'system', '', 'cn', '0', '1600759564');
INSERT INTO `ey_config` VALUES ('187', 'system_robots_edit', '1', 'system', '', 'en', '0', '1600759564');
INSERT INTO `ey_config` VALUES ('188', 'system_synleveldata', '1', 'system', '', 'cn', '0', '1600759564');
INSERT INTO `ey_config` VALUES ('189', 'system_synleveldata', '1', 'system', '', 'en', '0', '1600759564');
INSERT INTO `ey_config` VALUES ('190', 'php_weapp_plugin_open', '1', 'php', '', 'cn', '0', '1638405625');
INSERT INTO `ey_config` VALUES ('191', 'php_weapp_plugin_open', '1', 'php', '', 'en', '0', '1638405625');
INSERT INTO `ey_config` VALUES ('192', 'system_smtp_tpl_5', '1', 'system', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('193', 'system_smtp_tpl_5', '1', 'system', '', 'en', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('194', 'syn_gb_attribute_showlist', '1', 'syn', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('195', 'syn_admin_logic_sms_template', '1', 'syn', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('196', 'syn_admin_logic_unlink', '1', 'syn', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('197', 'syn_admin_logic_update_basic', '1', 'syn', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('198', 'syn_admin_logic_update_tag', '1', 'syn', '', 'cn', '0', '1613989576');
INSERT INTO `ey_config` VALUES ('199', 'syn_admin_logic_update_arctype', '1', 'syn', '', 'cn', '0', '1613989577');
INSERT INTO `ey_config` VALUES ('200', 'syn_admin_logic_video_addfields', '5', 'syn', '', 'cn', '0', '1638405515');
INSERT INTO `ey_config` VALUES ('201', 'syn_admin_logic_add_tag', '1', 'syn', '', 'cn', '0', '1613989577');
INSERT INTO `ey_config` VALUES ('202', 'syn_admin_logic_users_parameter', '1', 'syn', '', 'cn', '0', '1613989577');
INSERT INTO `ey_config` VALUES ('203', 'syn_admin_logic_users_download', '1', 'syn', '', 'cn', '0', '1613989577');
INSERT INTO `ey_config` VALUES ('231', 'syn_admin_logic_video_addfields_2', '1', 'syn', '', 'cn', '0', '1638405515');
INSERT INTO `ey_config` VALUES ('232', 'syn_admin_logic_1608884981_2', '1', 'syn', '', 'cn', '0', '1638405515');

-- -----------------------------
-- Table structure for `ey_config_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `ey_config_attribute`;
CREATE TABLE `ey_config_attribute` (
  `attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表单id',
  `inc_type` varchar(20) DEFAULT '' COMMENT '变量分组',
  `attr_name` varchar(60) DEFAULT '' COMMENT '变量标题',
  `attr_var_name` varchar(50) DEFAULT '' COMMENT '变量名',
  `attr_input_type` tinyint(1) unsigned DEFAULT '0' COMMENT ' 0=文本框，1=下拉框，2=多行文本框，3=上传图片',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='留言表单属性';

-- -----------------------------
-- Records of `ey_config_attribute`
-- -----------------------------
INSERT INTO `ey_config_attribute` VALUES ('1', 'web', '网站顶部公告', 'web_attr_1', '0', 'cn', '1536051678', '1536051678');
INSERT INTO `ey_config_attribute` VALUES ('2', 'web', '电话', 'web_attr_2', '0', 'cn', '1536109217', '1536109217');
INSERT INTO `ey_config_attribute` VALUES ('3', 'web', '手机', 'web_attr_3', '0', 'cn', '1536109229', '1536109229');
INSERT INTO `ey_config_attribute` VALUES ('4', 'web', '传真', 'web_attr_4', '0', 'cn', '1536109240', '1536109240');
INSERT INTO `ey_config_attribute` VALUES ('5', 'web', '地址', 'web_attr_5', '0', 'cn', '1536109264', '1536109264');
INSERT INTO `ey_config_attribute` VALUES ('6', 'web', '邮箱', 'web_attr_6', '0', 'cn', '1536109666', '1536109666');
INSERT INTO `ey_config_attribute` VALUES ('7', 'web', '客服QQ', 'web_attr_7', '0', 'cn', '1536114448', '1536114448');
INSERT INTO `ey_config_attribute` VALUES ('8', 'web', '网站顶部公告', 'web_attr_1', '0', 'en', '1536051678', '1536051678');
INSERT INTO `ey_config_attribute` VALUES ('9', 'web', '电话', 'web_attr_2', '0', 'en', '1536109217', '1536109217');
INSERT INTO `ey_config_attribute` VALUES ('10', 'web', '手机', 'web_attr_3', '0', 'en', '1536109229', '1536109229');
INSERT INTO `ey_config_attribute` VALUES ('11', 'web', '传真', 'web_attr_4', '0', 'en', '1536109240', '1536109240');
INSERT INTO `ey_config_attribute` VALUES ('12', 'web', '地址', 'web_attr_5', '0', 'en', '1536109264', '1536109264');
INSERT INTO `ey_config_attribute` VALUES ('13', 'web', '邮箱', 'web_attr_6', '0', 'en', '1536109666', '1536109666');
INSERT INTO `ey_config_attribute` VALUES ('14', 'web', '客服QQ', 'web_attr_7', '0', 'en', '1536114448', '1536114448');

-- -----------------------------
-- Table structure for `ey_diyminipro`
-- -----------------------------
DROP TABLE IF EXISTS `ey_diyminipro`;
CREATE TABLE `ey_diyminipro` (
  `mini_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `categoryid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '模板标题',
  `litpic` varchar(250) NOT NULL DEFAULT '' COMMENT '封面图',
  `component` text NOT NULL COMMENT '组件库',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：4=审核中，5=发布',
  `cloud_id` int(10) NOT NULL DEFAULT '0' COMMENT '云ID',
  `config` text NOT NULL COMMENT '相关序列化信息',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `lang` varchar(10) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`mini_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信小程序记录表';


-- -----------------------------
-- Table structure for `ey_diyminipro_page`
-- -----------------------------
DROP TABLE IF EXISTS `ey_diyminipro_page`;
CREATE TABLE `ey_diyminipro_page` (
  `page_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '页面id',
  `page_type` tinyint(3) NOT NULL DEFAULT '-1' COMMENT '页面类型(1首页 -1自定义页)',
  `page_name` varchar(255) NOT NULL DEFAULT '' COMMENT '页面名称',
  `page_data` longtext NOT NULL COMMENT '页面数据',
  `mini_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '微信小程序id',
  `is_home` tinyint(1) NOT NULL DEFAULT '0' COMMENT '设为首页：0=否，1=是',
  `is_system` tinyint(1) NOT NULL DEFAULT '0' COMMENT '系统内置',
  `is_show` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否显示：1=显示，0=隐藏',
  `is_del` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `lang` varchar(10) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`page_id`),
  KEY `mini_id` (`mini_id`,`lang`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信小程序diy页面表';


-- -----------------------------
-- Table structure for `ey_diyminipro_setting`
-- -----------------------------
DROP TABLE IF EXISTS `ey_diyminipro_setting`;
CREATE TABLE `ey_diyminipro_setting` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '页面组',
  `value` text NOT NULL COMMENT '组装之后的值',
  `mini_id` int(11) NOT NULL DEFAULT '0' COMMENT '小程序ID',
  `lang` varchar(10) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `type` (`name`) USING BTREE,
  KEY `mini_id` (`mini_id`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信小程序多功能配置表';


-- -----------------------------
-- Table structure for `ey_download_attr_field`
-- -----------------------------
DROP TABLE IF EXISTS `ey_download_attr_field`;
CREATE TABLE `ey_download_attr_field` (
  `field_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `field_name` varchar(32) DEFAULT '' COMMENT '字段名称',
  `field_title` varchar(32) DEFAULT '' COMMENT '字段标题',
  `field_use` tinyint(1) DEFAULT '0' COMMENT '字段是否使用，0未使用，1为使用',
  `sort_order` smallint(5) DEFAULT '0' COMMENT '排序',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='上传文件属性表';

-- -----------------------------
-- Records of `ey_download_attr_field`
-- -----------------------------
INSERT INTO `ey_download_attr_field` VALUES ('1', 'extract_code', '提取码', '1', '1', 'cn', '1561001807', '1561024954');
INSERT INTO `ey_download_attr_field` VALUES ('2', 'server_name', '服务器名称', '1', '2', 'cn', '1561001807', '1561078673');

-- -----------------------------
-- Table structure for `ey_download_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_download_content`;
CREATE TABLE `ey_download_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `content` longtext COMMENT '内容详情',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `news_id` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='资讯内容表_存储正常内容';

-- -----------------------------
-- Records of `ey_download_content`
-- -----------------------------
INSERT INTO `ey_download_content` VALUES ('1', '17', '&lt;div&gt;★安装环境要求★&amp;nbsp;&lt;br style=&quot;box-sizing: border-box;&quot;/&gt;服务器：Linux / Apache / IIS&amp;nbsp;&lt;/div&gt;&lt;div&gt;PHP版本：5.4及5.4以上，完美支持php7&lt;/div&gt;&lt;div&gt;&lt;div&gt;MYSQL版本：5.0以上&lt;/div&gt;&lt;div&gt;PS：php版本推荐5.5~5.6，mysql推荐使用5.5+&lt;/div&gt;&lt;/div&gt;&lt;div&gt;===============================================================================&lt;/div&gt;&lt;div&gt;&amp;nbsp;&lt;/div&gt;&lt;div&gt;★模板安装步骤★&lt;/div&gt;&lt;div&gt;1、请将安装包里面的所有文件和文件夹上传到你的网站根目录&amp;nbsp;(暂时不支持安装在二级目录)&lt;/div&gt;&lt;div&gt;2、安装eyoucms系统。&lt;/div&gt;&lt;div&gt;直接运行：http://您的域名/install&amp;nbsp;&lt;/div&gt;&lt;div&gt;3、填写服务器及后台管理员信息&lt;/div&gt;&lt;div&gt;1）填入数据库信息&lt;/div&gt;&lt;div&gt;2）设置管理员账号及密码&lt;/div&gt;&lt;div&gt;4、提示安装完成后即可进入后台管理网站&lt;/div&gt;&lt;div&gt;统一后台登录地址：http://www.您的域名.com/login.php&lt;/div&gt;&lt;div&gt;至此，模板安装结束&lt;/div&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536133589', '1536133589');
INSERT INTO `ey_download_content` VALUES ('2', '30', '', '1536138338', '1536138338');
INSERT INTO `ey_download_content` VALUES ('3', '31', '', '1536138369', '1536138369');
INSERT INTO `ey_download_content` VALUES ('4', '32', '', '1536138389', '1536138389');
INSERT INTO `ey_download_content` VALUES ('5', '33', '', '1536138411', '1536138411');
INSERT INTO `ey_download_content` VALUES ('6', '36', '&lt;p&gt;★ Installation environment requirements ★&lt;br/&gt;Server: Linux / Apache / IIS&lt;br/&gt;PHP version: 5.4 and above, perfect support for php7&lt;br/&gt;MYSQL version: 5.0 or above&lt;br/&gt;PS: php version recommended 5.5~5.6, mysql recommended 5.5+&lt;br/&gt;=========================================================== ==============================&lt;br/&gt;&amp;nbsp;&lt;br/&gt;★ Template installation steps ★&lt;br/&gt;1. Upload all the files and folders in the installation package to the root directory of your website (temporarily not supported in the secondary directory)&lt;br/&gt;2. Install the eyoucms system.&lt;br/&gt;Run directly: http://your domain/install&lt;br/&gt;3, fill in the server and background administrator information&lt;br/&gt;1) Fill in the database information&lt;br/&gt;2) Set the administrator account and password&lt;br/&gt;4. After the installation is complete, you can enter the background management website.&lt;br/&gt;Unified background login address: http://www.yourdomain.com/login.php&lt;br/&gt;At this point, the template installation ends.&lt;/p&gt;', '1552461814', '1552461814');
INSERT INTO `ey_download_content` VALUES ('7', '37', '', '1552461853', '1552461853');
INSERT INTO `ey_download_content` VALUES ('8', '38', '', '1552461867', '1552461867');
INSERT INTO `ey_download_content` VALUES ('9', '39', '', '1552461881', '1552461881');
INSERT INTO `ey_download_content` VALUES ('10', '40', '', '1552461898', '1552461898');

-- -----------------------------
-- Table structure for `ey_download_file`
-- -----------------------------
DROP TABLE IF EXISTS `ey_download_file`;
CREATE TABLE `ey_download_file` (
  `file_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '产品ID',
  `title` varchar(200) DEFAULT '' COMMENT '产品标题',
  `file_url` varchar(255) DEFAULT '' COMMENT '文件存储路径',
  `extract_code` varchar(20) DEFAULT '' COMMENT '文件提取码',
  `file_size` varchar(255) DEFAULT '' COMMENT '文件大小',
  `file_ext` varchar(50) DEFAULT '' COMMENT '文件后缀名',
  `file_name` varchar(200) DEFAULT '' COMMENT '文件名',
  `server_name` varchar(200) DEFAULT '' COMMENT '服务器名称',
  `file_mime` varchar(200) DEFAULT '' COMMENT '文件类型',
  `uhash` varchar(200) DEFAULT '' COMMENT '自定义的一种加密方式，用于文件下载权限验证',
  `md5file` varchar(200) DEFAULT '' COMMENT 'md5_file加密，可以检测上传/下载的文件包是否损坏',
  `is_remote` tinyint(1) DEFAULT '0' COMMENT '是否远程',
  `downcount` int(10) DEFAULT '0' COMMENT '下载次数',
  `sort_order` smallint(5) DEFAULT '0' COMMENT '排序',
  `add_time` int(10) unsigned DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`file_id`),
  KEY `arcid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_download_file`
-- -----------------------------
INSERT INTO `ey_download_file` VALUES ('2', '17', '安装教程下载', '/public/upload/download/2018/09/05/2a6daa4ab70305853275fce7e1412b67.zip', '', '605', 'zip', '2a6daa4ab70305853275fce7e1412b67.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1536133589', '0');
INSERT INTO `ey_download_file` VALUES ('3', '30', '帮助文档一', '/public/upload/download/2018/09/05/644f5505cecd8ee06df847de65b89066.zip', '', '605', 'zip', '644f5505cecd8ee06df847de65b89066.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1536138338', '0');
INSERT INTO `ey_download_file` VALUES ('4', '31', '帮助文档二', '/public/upload/download/2018/09/05/2295e215f58a864ca5d5160d4bef6807.zip', '', '605', 'zip', '2295e215f58a864ca5d5160d4bef6807.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1536138369', '0');
INSERT INTO `ey_download_file` VALUES ('5', '32', '帮助文档三', '/public/upload/download/2018/09/05/eb360e34c813a05acc60fd144396b2f0.zip', '', '605', 'zip', 'eb360e34c813a05acc60fd144396b2f0.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1536138389', '0');
INSERT INTO `ey_download_file` VALUES ('6', '33', '帮助文档四', '/public/upload/download/2018/09/05/9d2f3c3eb40cd394a14b25ea1e2b71a6.zip', '', '605', 'zip', '9d2f3c3eb40cd394a14b25ea1e2b71a6.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1536138411', '0');
INSERT INTO `ey_download_file` VALUES ('7', '36', 'Installation tutorial download', '/uploads/soft/20190313/2a6daa4ab70305853275fce7e1412b67.zip', '', '605', 'zip', '2a6daa4ab70305853275fce7e1412b67.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1552461814', '0');
INSERT INTO `ey_download_file` VALUES ('8', '37', 'Help document one', '/uploads/soft/20190313/2a6daa4ab70305853275fce7e1412b67.zip', '', '605', 'zip', '2a6daa4ab70305853275fce7e1412b67.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1552461853', '0');
INSERT INTO `ey_download_file` VALUES ('9', '38', 'Help document two', '/uploads/soft/20190313/2a6daa4ab70305853275fce7e1412b67.zip', '', '605', 'zip', '2a6daa4ab70305853275fce7e1412b67.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1552461867', '0');
INSERT INTO `ey_download_file` VALUES ('10', '39', 'Help document three', '/uploads/soft/20190313/2a6daa4ab70305853275fce7e1412b67.zip', '', '605', 'zip', '2a6daa4ab70305853275fce7e1412b67.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1552461881', '0');
INSERT INTO `ey_download_file` VALUES ('11', '40', 'Help document four', '/uploads/soft/20190313/2a6daa4ab70305853275fce7e1412b67.zip', '', '605', 'zip', '2a6daa4ab70305853275fce7e1412b67.zip', '', 'application/x-zip-compressed', 'b05575434011959b5fbb3df4b7281e93', 'b05575434011959b5fbb3df4b7281e93', '0', '0', '1', '1552461898', '0');

-- -----------------------------
-- Table structure for `ey_download_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_download_log`;
CREATE TABLE `ey_download_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `users_id` int(10) DEFAULT '0' COMMENT '用户ID',
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `file_id` int(10) DEFAULT '0' COMMENT '附件ID',
  `ip` varchar(20) DEFAULT '' COMMENT 'ip',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '编辑时间',
  PRIMARY KEY (`log_id`),
  KEY `file_id` (`file_id`,`aid`,`users_id`) USING BTREE,
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='下载记录表';


-- -----------------------------
-- Table structure for `ey_field_type`
-- -----------------------------
DROP TABLE IF EXISTS `ey_field_type`;
CREATE TABLE `ey_field_type` (
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '字段类型',
  `title` varchar(64) NOT NULL DEFAULT '' COMMENT '中文类型名',
  `ifoption` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要设置选项',
  `sort_order` int(10) NOT NULL DEFAULT '0' COMMENT '排序',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='字段类型表';

-- -----------------------------
-- Records of `ey_field_type`
-- -----------------------------
INSERT INTO `ey_field_type` VALUES ('text', '单行文本', '0', '1', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('checkbox', '多选项', '1', '5', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('multitext', '多行文本', '0', '2', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('radio', '单选项', '1', '4', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('switch', '开关', '0', '13', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('select', '下拉框', '1', '6', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('img', '单张图', '0', '10', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('int', '整数类型', '0', '7', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('datetime', '日期和时间', '0', '12', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('htmltext', 'HTML文本', '0', '3', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('imgs', '多张图', '0', '11', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('decimal', '金额类型', '0', '9', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('float', '小数类型', '0', '8', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('region', '区域类型', '1', '6', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('file', '附件类型', '0', '11', '1532485708', '1532485708');
INSERT INTO `ey_field_type` VALUES ('media', '多媒体类型', '0', '11', '1532485708', '1532485708');

-- -----------------------------
-- Table structure for `ey_guestbook`
-- -----------------------------
DROP TABLE IF EXISTS `ey_guestbook`;
CREATE TABLE `ey_guestbook` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) DEFAULT '0' COMMENT '栏目ID',
  `channel` smallint(5) DEFAULT '0' COMMENT '模型ID',
  `md5data` varchar(50) DEFAULT '' COMMENT '数据序列化之后的MD5加密，提交内容的唯一性',
  `ip` varchar(255) DEFAULT '' COMMENT 'ip地址',
  `is_read` tinyint(1) DEFAULT '0' COMMENT '0=未读，1=已读',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `ey_guestbook_attr`
-- -----------------------------
DROP TABLE IF EXISTS `ey_guestbook_attr`;
CREATE TABLE `ey_guestbook_attr` (
  `guest_attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '留言表单id自增',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '留言id',
  `attr_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '表单id',
  `attr_value` text COMMENT '表单值',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`guest_attr_id`),
  KEY `attr_id` (`attr_id`) USING BTREE,
  KEY `guest_id` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='留言表单属性值';


-- -----------------------------
-- Table structure for `ey_guestbook_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `ey_guestbook_attribute`;
CREATE TABLE `ey_guestbook_attribute` (
  `attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表单id',
  `attr_name` varchar(60) DEFAULT '' COMMENT '表单名称',
  `typeid` int(11) unsigned DEFAULT '0' COMMENT '栏目ID',
  `attr_input_type` tinyint(1) unsigned DEFAULT '0' COMMENT ' 0=文本框，1=下拉框，2=多行文本框',
  `attr_values` text COMMENT '可选值列表',
  `is_showlist` tinyint(1) DEFAULT '0' COMMENT '在列表显示 0=隐藏，1=显示',
  `required` tinyint(1) DEFAULT '0' COMMENT '必填 0=否，1=是',
  `validate_type` smallint(5) DEFAULT '0' COMMENT '验证格式，0=不验证，1=手机，2=Email',
  `sort_order` int(11) unsigned DEFAULT '0' COMMENT '表单排序',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否已删除，0=否，1=是',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`attr_id`),
  KEY `guest_id` (`typeid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='留言表单属性';

-- -----------------------------
-- Records of `ey_guestbook_attribute`
-- -----------------------------
INSERT INTO `ey_guestbook_attribute` VALUES ('1', '姓名', '8', '0', '', '1', '0', '0', '100', 'cn', '0', '1536112529', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('2', '电话', '8', '0', '', '1', '0', '0', '100', 'cn', '0', '1536112534', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('3', '邮箱', '8', '0', '', '1', '0', '0', '100', 'cn', '0', '1536112539', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('4', '备注', '8', '2', '', '1', '0', '0', '100', 'cn', '0', '1536112548', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('5', 'Name', '38', '0', '', '1', '0', '0', '100', 'en', '0', '1536112529', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('6', 'Phone', '38', '0', '', '1', '0', '0', '100', 'en', '0', '1536112534', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('7', 'E-mail', '38', '0', '', '1', '0', '0', '100', 'en', '0', '1536112539', '1613989576');
INSERT INTO `ey_guestbook_attribute` VALUES ('8', 'Message', '38', '2', '', '1', '0', '0', '100', 'en', '0', '1536112548', '1613989576');

-- -----------------------------
-- Table structure for `ey_hooks`
-- -----------------------------
DROP TABLE IF EXISTS `ey_hooks`;
CREATE TABLE `ey_hooks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '钩子名称',
  `description` text COMMENT '描述',
  `module` varchar(50) DEFAULT '' COMMENT '钩子挂载的插件',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态：0=无效，1=有效',
  `add_time` int(10) DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件钩子表';


-- -----------------------------
-- Table structure for `ey_images_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_images_content`;
CREATE TABLE `ey_images_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `content` longtext COMMENT '内容详情',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `news_id` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='资讯内容表_存储正常内容';

-- -----------------------------
-- Records of `ey_images_content`
-- -----------------------------
INSERT INTO `ey_images_content` VALUES ('1', '26', '', '1536136098', '1536136098');
INSERT INTO `ey_images_content` VALUES ('2', '27', '', '1536136113', '1536136113');
INSERT INTO `ey_images_content` VALUES ('3', '28', '', '1536136129', '1536136129');
INSERT INTO `ey_images_content` VALUES ('4', '29', '', '1536136164', '1536136164');
INSERT INTO `ey_images_content` VALUES ('5', '41', '', '1552462912', '1552462912');
INSERT INTO `ey_images_content` VALUES ('6', '42', '', '1552462945', '1552462945');
INSERT INTO `ey_images_content` VALUES ('7', '43', '', '1552462977', '1552462977');
INSERT INTO `ey_images_content` VALUES ('8', '44', '', '1552463009', '1552463009');

-- -----------------------------
-- Table structure for `ey_images_upload`
-- -----------------------------
DROP TABLE IF EXISTS `ey_images_upload`;
CREATE TABLE `ey_images_upload` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '图集ID',
  `title` varchar(200) DEFAULT '' COMMENT '产品标题',
  `image_url` varchar(255) DEFAULT '' COMMENT '文件存储路径',
  `intro` varchar(2000) DEFAULT '' COMMENT '图集描述',
  `width` int(11) DEFAULT '0' COMMENT '图片宽度',
  `height` int(11) DEFAULT '0' COMMENT '图片高度',
  `filesize` mediumint(8) unsigned DEFAULT '0' COMMENT '文件大小',
  `mime` varchar(50) DEFAULT '' COMMENT '图片类型',
  `sort_order` smallint(5) DEFAULT '0' COMMENT '排序',
  `add_time` int(10) unsigned DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`img_id`),
  KEY `arcid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_images_upload`
-- -----------------------------
INSERT INTO `ey_images_upload` VALUES ('10', '26', '案例展示一', '/public/upload/images/2018/09/05/815581ca8c5828b21ea844b008dbd35d.jpg', '', '400', '300', '0', 'image/jpeg', '2', '1536136098', '0');
INSERT INTO `ey_images_upload` VALUES ('9', '26', '案例展示一', '/public/upload/images/2018/09/05/438456c0b4f9e67d6d79ce3d2532b8bc.jpg', '', '400', '300', '0', 'image/jpeg', '1', '1536136098', '0');
INSERT INTO `ey_images_upload` VALUES ('11', '27', '案例展示二', '/public/upload/images/2018/09/05/dbd72b87959bc3d333c920d3072919d4.jpg', '', '400', '300', '0', 'image/jpeg', '1', '1536136113', '0');
INSERT INTO `ey_images_upload` VALUES ('12', '27', '案例展示二', '/public/upload/images/2018/09/05/33d5e16c519b69dad5014ae8202f11c1.jpg', '', '400', '300', '0', 'image/jpeg', '2', '1536136113', '0');
INSERT INTO `ey_images_upload` VALUES ('14', '28', '案例展示三', '/public/upload/images/2018/09/05/2b78f61f937e9ee8d11edd0865c017cd.jpg', '', '400', '300', '0', 'image/jpeg', '2', '1536136129', '0');
INSERT INTO `ey_images_upload` VALUES ('13', '28', '案例展示三', '/public/upload/images/2018/09/05/9d36c0b6940c4b0c93d667ee151a9785.jpg', '', '400', '300', '0', 'image/jpeg', '1', '1536136129', '0');
INSERT INTO `ey_images_upload` VALUES ('15', '29', '案例展示四', '/public/upload/images/2018/09/05/260c84fce69ccd3597b1d7c3cea3f9c8.jpg', '', '400', '300', '0', 'image/jpeg', '1', '1536136164', '0');
INSERT INTO `ey_images_upload` VALUES ('16', '29', '案例展示四', '/public/upload/images/2018/09/05/5b6b0794f600df6e86a0f2d2862d6ba9.jpg', '', '400', '300', '0', 'image/jpeg', '2', '1536136164', '0');
INSERT INTO `ey_images_upload` VALUES ('17', '41', 'Case show one', '/uploads/allimg/20190313/d20c76b3cf0d2f3796e4e5195d1fbeb0.jpg', '', '535', '401', '0', 'image/jpeg', '1', '1552462912', '0');
INSERT INTO `ey_images_upload` VALUES ('18', '41', 'Case show one', '/uploads/allimg/20190313/519bbb55da5d86e4590bac1a96f1b304.jpg', '', '535', '401', '0', 'image/jpeg', '2', '1552462912', '0');
INSERT INTO `ey_images_upload` VALUES ('19', '42', 'Case show two', '/uploads/allimg/20190313/4ddfba1506e9124068e753cafbebd7d2.jpg', '', '535', '401', '0', 'image/jpeg', '1', '1552462945', '0');
INSERT INTO `ey_images_upload` VALUES ('20', '42', 'Case show two', '/uploads/allimg/20190313/6215318ae0d965bddf21de2bab8f9a0a.jpg', '', '535', '401', '0', 'image/jpeg', '2', '1552462945', '0');
INSERT INTO `ey_images_upload` VALUES ('21', '43', 'Case show three', '/uploads/allimg/20190313/2fdc5caa145f92ac8fb3b9a8bf788b4e.jpg', '', '535', '401', '0', 'image/jpeg', '1', '1552462977', '0');
INSERT INTO `ey_images_upload` VALUES ('22', '43', 'Case show three', '/uploads/allimg/20190313/ba17b1a38f16b63c1cc8adf1c2f64007.jpg', '', '535', '401', '0', 'image/jpeg', '2', '1552462977', '0');
INSERT INTO `ey_images_upload` VALUES ('23', '44', 'Case show four', '/uploads/allimg/20190313/4ddae495754b2d54cae6e171cab4b654.jpg', '', '535', '401', '0', 'image/jpeg', '1', '1552463009', '0');
INSERT INTO `ey_images_upload` VALUES ('24', '44', 'Case show four', '/uploads/allimg/20190313/0f827aa8eecae02e5b6dc3512ffa2da5.jpg', '', '535', '401', '0', 'image/jpeg', '2', '1552463009', '0');

-- -----------------------------
-- Table structure for `ey_language`
-- -----------------------------
DROP TABLE IF EXISTS `ey_language`;
CREATE TABLE `ey_language` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '信息ID，自增',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '语言名称',
  `mark` varchar(50) NOT NULL DEFAULT '' COMMENT '语言标识（唯一）',
  `url` varchar(200) NOT NULL DEFAULT '' COMMENT '单独域名(外部链接)',
  `target` tinyint(1) NOT NULL DEFAULT '0' COMMENT '新窗口打开，0=否，1=是',
  `is_home_default` tinyint(1) DEFAULT '0' COMMENT '默认前台语言，1=是，0=否',
  `is_admin_default` tinyint(1) DEFAULT '0' COMMENT '默认后台语言，1=是，0=否',
  `syn_pack_id` int(10) DEFAULT '0' COMMENT '最后一次同步官方语言包ID',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '语言状态，0=关闭，1=开启',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='多语言主表';

-- -----------------------------
-- Records of `ey_language`
-- -----------------------------
INSERT INTO `ey_language` VALUES ('1', '简体中文', 'cn', '', '0', '1', '1', '24', '1', '100', '1541583096', '1543890743');
INSERT INTO `ey_language` VALUES ('2', 'English', 'en', '', '0', '0', '0', '24', '1', '100', '1552449886', '1552449888');

-- -----------------------------
-- Table structure for `ey_language_attr`
-- -----------------------------
DROP TABLE IF EXISTS `ey_language_attr`;
CREATE TABLE `ey_language_attr` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '信息ID，自增',
  `attr_name` varchar(200) NOT NULL DEFAULT '' COMMENT '来自ey_weapp_language_attr表的attr_name',
  `attr_value` text NOT NULL COMMENT '变量值',
  `attr_group` varchar(50) DEFAULT '' COMMENT '分组，以表名划分（不含表前缀）',
  `lang` varchar(50) NOT NULL DEFAULT '' COMMENT '所属语言',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `attr_value` (`attr_name`,`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='多语言模板变量关联绑定表';

-- -----------------------------
-- Records of `ey_language_attr`
-- -----------------------------
INSERT INTO `ey_language_attr` VALUES ('1', 'tid1', '1', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('2', 'tid2', '2', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('3', 'tid3', '3', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('4', 'tid4', '4', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('5', 'tid6', '6', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('6', 'tid7', '7', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('7', 'tid8', '8', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('8', 'tid9', '9', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('9', 'tid10', '10', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('10', 'tid11', '11', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('11', 'tid12', '12', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('12', 'tid13', '13', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('13', 'tid15', '15', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('14', 'tid16', '16', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('15', 'tid17', '17', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('16', 'tid18', '18', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('17', 'tid19', '19', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('18', 'tid20', '20', 'arctype', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('19', 'attr_1', '1', 'guestbook_attribute', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('20', 'attr_2', '2', 'guestbook_attribute', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('21', 'attr_3', '3', 'guestbook_attribute', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('22', 'attr_4', '4', 'guestbook_attribute', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('23', 'attr_1', '1', 'product_attribute', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('24', 'attr_2', '2', 'product_attribute', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('25', 'ad1', '1', 'ad', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('26', 'ad2', '2', 'ad', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('27', 'ad3', '3', 'ad', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('28', 'adp1', '1', 'ad_position', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('29', 'adp2', '2', 'ad_position', 'cn', '1552449879', '1552449879');
INSERT INTO `ey_language_attr` VALUES ('30', 'tid1', '21', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('31', 'tid2', '22', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('32', 'tid9', '23', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('33', 'tid10', '24', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('34', 'tid11', '25', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('35', 'tid12', '26', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('36', 'tid13', '27', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('37', 'tid3', '28', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('38', 'tid15', '29', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('39', 'tid16', '30', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('40', 'tid4', '31', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('41', 'tid17', '32', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('42', 'tid18', '33', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('43', 'tid6', '34', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('44', 'tid19', '35', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('45', 'tid20', '36', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('46', 'tid7', '37', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('47', 'tid8', '38', 'arctype', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('48', 'attr_1', '3', 'product_attribute', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('49', 'attr_2', '4', 'product_attribute', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('50', 'attr_1', '5', 'guestbook_attribute', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('51', 'attr_2', '6', 'guestbook_attribute', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('52', 'attr_3', '7', 'guestbook_attribute', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('53', 'attr_4', '8', 'guestbook_attribute', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('54', 'adp1', '3', 'ad_position', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('55', 'adp2', '4', 'ad_position', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('56', 'ad1', '4', 'ad', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('57', 'ad2', '5', 'ad', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('58', 'ad3', '6', 'ad', 'en', '1552449886', '1552449886');
INSERT INTO `ey_language_attr` VALUES ('59', 'tid39', '39', 'arctype', 'cn', '1552465722', '1552465722');
INSERT INTO `ey_language_attr` VALUES ('60', 'tid39', '40', 'arctype', 'en', '1552465722', '1552465722');
INSERT INTO `ey_language_attr` VALUES ('61', 'linksgroup1', '1', 'links_group', 'cn', '1638405553', '1638405553');
INSERT INTO `ey_language_attr` VALUES ('62', 'linksgroup1', '3', 'links_group', 'en', '1638405553', '1638405553');

-- -----------------------------
-- Table structure for `ey_language_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `ey_language_attribute`;
CREATE TABLE `ey_language_attribute` (
  `attr_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '信息ID，自增',
  `attr_title` varchar(200) NOT NULL DEFAULT '' COMMENT '变量标题',
  `attr_name` varchar(200) NOT NULL DEFAULT '' COMMENT '变量名称',
  `attr_group` varchar(50) DEFAULT '' COMMENT '分组，以表名划分（不含表前缀）',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，0=否，1=是',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`attr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='多语言模板变量表';

-- -----------------------------
-- Records of `ey_language_attribute`
-- -----------------------------
INSERT INTO `ey_language_attribute` VALUES ('1', '关于我们 ', 'tid1', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('2', '产品中心 ', 'tid2', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('3', '新闻资讯 ', 'tid3', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('4', '成功案例 ', 'tid4', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('5', '下载中心 ', 'tid6', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('6', '联系我们 ', 'tid7', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('7', '客户留言', 'tid8', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('8', '第一系列 ', 'tid9', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('9', '第二系列', 'tid10', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('10', '第三系列', 'tid11', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('11', '第四系列', 'tid12', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('12', '第五系列', 'tid13', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('13', '公司动态', 'tid15', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('14', '行业资讯', 'tid16', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('15', '最新案例', 'tid17', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('16', '经典案例', 'tid18', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('17', '帮助文档', 'tid19', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('18', '档案下载', 'tid20', 'arctype', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('19', '姓名', 'attr_1', 'guestbook_attribute', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('20', '电话', 'attr_2', 'guestbook_attribute', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('21', '邮箱', 'attr_3', 'guestbook_attribute', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('22', '备注', 'attr_4', 'guestbook_attribute', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('23', '样式', 'attr_1', 'product_attribute', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('24', '规格', 'attr_2', 'product_attribute', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('25', '幻灯一', 'ad1', 'ad', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('26', '幻灯二', 'ad2', 'ad', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('27', '栏目banner图', 'ad3', 'ad', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('28', '首页头部大幻灯', 'adp1', 'ad_position', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('29', '栏目页banner图', 'adp2', 'ad_position', '0', '1552449879', '1552449879');
INSERT INTO `ey_language_attribute` VALUES ('30', '三级分类', 'tid39', 'arctype', '0', '1552465722', '1552465722');
INSERT INTO `ey_language_attribute` VALUES ('31', '默认分组', 'linksgroup1', 'links_group', '0', '1638405553', '1638405553');

-- -----------------------------
-- Table structure for `ey_language_mark`
-- -----------------------------
DROP TABLE IF EXISTS `ey_language_mark`;
CREATE TABLE `ey_language_mark` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '国家语言名称',
  `cn_title` varchar(50) NOT NULL DEFAULT '' COMMENT '中文名称',
  `mark` varchar(50) DEFAULT '' COMMENT '多语言标识',
  `pinyin` varchar(100) DEFAULT '' COMMENT '拼音',
  `sort_order` int(10) NOT NULL DEFAULT '0' COMMENT '排序号',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='国家语言表';

-- -----------------------------
-- Records of `ey_language_mark`
-- -----------------------------
INSERT INTO `ey_language_mark` VALUES ('1', '简体中文', '简体中文', 'cn', 'zhongwenjianti', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('2', 'Vietnamese', '越南语', 'vi', 'yuenanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('3', '繁体中文', '繁体中文', 'zh', 'zhongwenfanti', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('4', 'English', '英语', 'en', 'yingyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('5', 'Indonesian', '印尼语', 'id', 'yinniyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('6', 'Urdu', '乌尔都语', 'ur', 'wuerduyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('7', 'Yiddish', '意第绪语', 'yi', 'yidixuyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('8', 'Italian', '意大利语', 'it', 'yidaliyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('9', 'Greek', '希腊语', 'el', 'xilayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('10', 'Spanish Basque', '西班牙的巴斯克语', 'eu', 'xibanyadebasikeyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('11', 'Spanish', '西班牙语', 'es', 'xibanyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('12', 'Hungarian', '匈牙利语', 'hu', 'xiongyaliyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('13', 'Hebrew', '希伯来语', 'iw', 'xibolaiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('14', 'Ukrainian', '乌克兰语', 'uk', 'wukelanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('15', 'Welsh', '威尔士语', 'cy', 'weiershiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('16', 'Thai', '泰语', 'th', 'taiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('17', 'Turkish', '土耳其语', 'tr', 'tuerqiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('18', 'Swahili', '斯瓦希里语', 'sw', 'siwaxiliyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('19', 'Japanese', '日语', 'ja', 'riyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('20', 'Swedish', '瑞典语', 'sv', 'ruidianyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('21', 'Serbian', '塞尔维亚语', 'sr', 'saierweiyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('22', 'Slovak', '斯洛伐克语', 'sk', 'siluofakeyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('23', 'Slovenian', '斯洛文尼亚语', 'sl', 'siluowenniyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('24', 'Portuguese', '葡萄牙语', 'pt', 'putaoyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('25', 'Norwegian', '挪威语', 'no', 'nuoweiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('26', 'Macedonian', '马其顿语', 'mk', 'maqidunyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('27', 'Malay', '马来语', 'ms', 'malaiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('28', 'Maltese', '马耳他语', 'mt', 'maertayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('29', 'Romanian', '罗马尼亚语', 'ro', 'luomaniyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('30', 'Lithuanian', '立陶宛语', 'lt', 'litaowanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('31', 'Latvian', '拉脱维亚语', 'lv', 'latuoweiyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('32', 'Latin', '拉丁语', 'la', 'ladingyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('33', 'Croatian', '克罗地亚语', 'hr', 'keluodiyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('34', 'Czech', '捷克语', 'cs', 'jiekeyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('35', 'Catalan', '加泰罗尼亚语', 'ca', 'jiatailuoniyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('36', 'Galician', '加利西亚语', 'gl', 'jialixiyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('37', 'Dutch', '荷兰语', 'nl', 'helanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('38', 'Korean', '韩语', 'ko', 'hanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('39', 'Haitian Creole', '海地克里奥尔语', 'ht', 'haidikeliaoeryu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('40', 'Finnish', '芬兰语', 'fi', 'fenlanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('41', 'Filipino', '菲律宾语', 'tl', 'feilvbinyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('42', 'Russian', '俄语', 'ru', 'eyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('43', 'Boolean (Afrikaans)', '布尔语(南非荷兰语)', 'af', 'bueryunanfeihelanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('44', 'French', '法语', 'fr', 'fayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('45', 'Danish', '丹麦语', 'da', 'danmaiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('46', 'German', '德语', 'de', 'deyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('47', 'Azerbaijani', '阿塞拜疆语', 'az', 'asaibaijiangyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('48', 'Irish', '爱尔兰语', 'ga', 'aierlanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('49', 'Estonian', '爱沙尼亚语', 'et', 'aishaniyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('50', 'Belarusian', '白俄罗斯语', 'be', 'baieluosiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('51', 'Bulgarian', '保加利亚语', 'bg', 'baojialiyayu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('52', 'Icelandic', '冰岛语', 'is', 'bingdaoyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('53', 'Polish', '波兰语', 'pl', 'bolanyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('54', 'Persian', '波斯语', 'fa', 'bosiyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('55', 'Arabic', '阿拉伯语', 'ar', 'alaboyu', '100', '0', '1541583096');
INSERT INTO `ey_language_mark` VALUES ('56', 'Albanian', '阿尔巴尼亚语', 'sq', 'aerbaniyayu', '100', '0', '1541583096');

-- -----------------------------
-- Table structure for `ey_language_pack`
-- -----------------------------
DROP TABLE IF EXISTS `ey_language_pack`;
CREATE TABLE `ey_language_pack` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '变量名',
  `value` text NOT NULL COMMENT '变量值',
  `is_syn` tinyint(1) DEFAULT '0' COMMENT '同步官方语言包：0=否，1=是',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='模板语言包变量';

-- -----------------------------
-- Records of `ey_language_pack`
-- -----------------------------
INSERT INTO `ey_language_pack` VALUES ('1', 'sys1', '首页', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('2', 'sys2', '上一页', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('3', 'sys3', '下一页', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('4', 'sys4', '末页', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('5', 'sys5', '共<strong>%s</strong>页 <strong>%s</strong>条', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('6', 'sys6', '全部', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('7', 'sys7', '搜索', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('8', 'sys8', '查看详情', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('9', 'sys9', '网站首页', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('10', 'sys10', '暂无', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('11', 'sys11', '上一篇', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('12', 'sys12', '下一篇', '1', 'cn', '100', '1543890216', '1543890216');
INSERT INTO `ey_language_pack` VALUES ('13', 'sys1', 'Home', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('14', 'sys2', 'Previous', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('15', 'sys3', 'Next', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('16', 'sys4', 'Last', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('17', 'sys5', 'Road <strong>%s</strong> page <strong>%s</strong> strip', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('18', 'sys6', 'All', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('19', 'sys7', 'Search', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('20', 'sys8', 'View details', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('21', 'sys9', 'Home', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('22', 'sys10', 'No time', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('23', 'sys11', 'Previous', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('24', 'sys12', 'Next', '1', 'en', '100', '1552449888', '1552449888');
INSERT INTO `ey_language_pack` VALUES ('25', 'lang25', '语言选择', '0', 'cn', '100', '1552450247', '1552450247');
INSERT INTO `ey_language_pack` VALUES ('26', 'lang25', 'Language', '0', 'en', '100', '1552450247', '1552450247');
INSERT INTO `ey_language_pack` VALUES ('27', 'lang27', '联系我们', '0', 'cn', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('28', 'lang27', 'Contact Us', '0', 'en', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('29', 'lang29', '电 话', '0', 'cn', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('30', 'lang29', 'Tel', '0', 'en', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('31', 'lang31', '传 真', '0', 'cn', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('32', 'lang31', 'Fax', '0', 'en', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('33', 'lang33', '手 机', '0', 'cn', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('34', 'lang33', 'Phone', '0', 'en', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('35', 'lang35', '邮 箱', '0', 'cn', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('36', 'lang35', 'Email', '0', 'en', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('37', 'lang37', '地 址', '0', 'cn', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('38', 'lang37', 'Add', '0', 'en', '100', '1552458892', '1552458892');
INSERT INTO `ey_language_pack` VALUES ('39', 'lang39', '友情链接', '0', 'cn', '100', '1552458940', '1552458940');
INSERT INTO `ey_language_pack` VALUES ('40', 'lang39', 'Link', '0', 'en', '100', '1552458940', '1552458940');
INSERT INTO `ey_language_pack` VALUES ('41', 'lang41', '分享', '0', 'cn', '100', '1552458978', '1552458978');
INSERT INTO `ey_language_pack` VALUES ('42', 'lang41', 'Share', '0', 'en', '100', '1552458978', '1552458978');
INSERT INTO `ey_language_pack` VALUES ('43', 'lang43', '分类', '0', 'cn', '100', '1552459028', '1552459028');
INSERT INTO `ey_language_pack` VALUES ('44', 'lang43', 'Menu', '0', 'en', '100', '1552459028', '1552459028');
INSERT INTO `ey_language_pack` VALUES ('45', 'lang45', '顶部', '0', 'cn', '100', '1552459028', '1552459028');
INSERT INTO `ey_language_pack` VALUES ('46', 'lang45', 'Top', '0', 'en', '100', '1552459028', '1552459028');
INSERT INTO `ey_language_pack` VALUES ('47', 'lang47', '栏目导航', '0', 'cn', '100', '1552459146', '1552459146');
INSERT INTO `ey_language_pack` VALUES ('48', 'lang47', 'CATEGORIES', '0', 'en', '100', '1552459146', '1552459146');
INSERT INTO `ey_language_pack` VALUES ('49', 'lang49', '必填', '0', 'cn', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('50', 'lang49', 'Required', '0', 'en', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('51', 'lang51', '提交留言', '0', 'cn', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('52', 'lang51', 'Send', '0', 'en', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('53', 'lang53', '重新填写', '0', 'cn', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('54', 'lang53', 'Reset', '0', 'en', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('55', 'lang55', '请输入您的', '0', 'cn', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('56', 'lang55', 'Please enter your', '0', 'en', '100', '1552459968', '1552459968');
INSERT INTO `ey_language_pack` VALUES ('57', 'lang57', '的结果', '0', 'cn', '100', '1552460501', '1552460501');
INSERT INTO `ey_language_pack` VALUES ('58', 'lang57', 'result', '0', 'en', '100', '1552460501', '1552460501');
INSERT INTO `ey_language_pack` VALUES ('59', 'lang59', '相关新闻', '0', 'cn', '100', '1552460631', '1552460631');
INSERT INTO `ey_language_pack` VALUES ('60', 'lang59', 'Related News', '0', 'en', '100', '1552460631', '1552460631');
INSERT INTO `ey_language_pack` VALUES ('61', 'lang61', '点击下载', '0', 'cn', '100', '1552460678', '1552460678');
INSERT INTO `ey_language_pack` VALUES ('62', 'lang61', 'DOWNLOAD', '0', 'en', '100', '1552460678', '1552460678');
INSERT INTO `ey_language_pack` VALUES ('63', 'lang63', '在线订购', '0', 'cn', '100', '1552460833', '1552460833');
INSERT INTO `ey_language_pack` VALUES ('64', 'lang63', 'INQUIRY', '0', 'en', '100', '1552460833', '1552460834');
INSERT INTO `ey_language_pack` VALUES ('65', 'lang65', '推荐产品', '0', 'cn', '100', '1552460833', '1552460834');
INSERT INTO `ey_language_pack` VALUES ('66', 'lang65', 'RELATED PRODUCTS', '0', 'en', '100', '1552460833', '1552460834');

-- -----------------------------
-- Table structure for `ey_links`
-- -----------------------------
DROP TABLE IF EXISTS `ey_links`;
CREATE TABLE `ey_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) DEFAULT '1' COMMENT '类型：1=文字链接，2=图片链接',
  `groupid` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '分组id， 默认分组值为1',
  `title` varchar(50) DEFAULT '' COMMENT '网站标题',
  `url` varchar(100) DEFAULT '' COMMENT '网站地址',
  `logo` varchar(255) DEFAULT '' COMMENT '网站LOGO',
  `sort_order` int(11) DEFAULT '0' COMMENT '排序号',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `nofollow` tinyint(1) DEFAULT '0',
  `email` varchar(50) DEFAULT NULL,
  `intro` text COMMENT '网站简况',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(1=显示，0=屏蔽)',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `delete_time` int(11) DEFAULT '0' COMMENT '软删除时间',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_links`
-- -----------------------------
INSERT INTO `ey_links` VALUES ('1', '1', '1', '易优CMS', 'http://www.eyoucms.com/', '', '100', '1', '0', '', '', '1', 'cn', '0', '1536050452', '1613989591');
INSERT INTO `ey_links` VALUES ('2', '1', '1', '微信小程序开发教程 ', 'http://www.yiyongtong.com/', '', '100', '1', '0', '', '', '1', 'cn', '0', '1536050478', '1613989591');
INSERT INTO `ey_links` VALUES ('3', '1', '1', '织梦58源码 ', 'http://www.dede58.com/', '', '100', '1', '0', '', '', '1', 'cn', '0', '1536050488', '1613989591');
INSERT INTO `ey_links` VALUES ('4', '1', '1', '素材58 ', 'http://www.sucai58.com/', '', '100', '1', '0', '', '', '1', 'cn', '0', '1536050497', '1613989591');
INSERT INTO `ey_links` VALUES ('5', '1', '1', '搜海口 ', 'http://www.souhaikou.com/', '', '100', '1', '0', '', '', '1', 'cn', '0', '1536050506', '1613989591');
INSERT INTO `ey_links` VALUES ('6', '1', '2', 'en易优CMS', 'http://www.eyoucms.com/', '', '100', '1', '0', '', '', '1', 'en', '0', '1536050452', '1613989591');
INSERT INTO `ey_links` VALUES ('7', '1', '2', 'en微信小程序开发教程 ', 'http://www.yiyongtong.com/', '', '100', '1', '0', '', '', '1', 'en', '0', '1536050478', '1613989591');
INSERT INTO `ey_links` VALUES ('8', '1', '2', 'en织梦58源码 ', 'http://www.dede58.com/', '', '100', '1', '0', '', '', '1', 'en', '0', '1536050488', '1613989591');
INSERT INTO `ey_links` VALUES ('9', '1', '2', 'en素材58 ', 'http://www.sucai58.com/', '', '100', '1', '0', '', '', '1', 'en', '0', '1536050497', '1613989591');
INSERT INTO `ey_links` VALUES ('10', '1', '2', 'en搜海口 ', 'http://www.souhaikou.com/', '', '100', '1', '0', '', '', '1', 'en', '0', '1536050506', '1613989591');

-- -----------------------------
-- Table structure for `ey_links_group`
-- -----------------------------
DROP TABLE IF EXISTS `ey_links_group`;
CREATE TABLE `ey_links_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) NOT NULL DEFAULT '' COMMENT '分组名称',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1' COMMENT '状态(1=显示，0=屏蔽)',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '排序号',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='友情链接分组';

-- -----------------------------
-- Records of `ey_links_group`
-- -----------------------------
INSERT INTO `ey_links_group` VALUES ('1', '默认分组', '1', '100', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_links_group` VALUES ('3', 'en默认分组', '1', '100', 'en', '1613989591', '1613989591');

-- -----------------------------
-- Table structure for `ey_media_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_media_content`;
CREATE TABLE `ey_media_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0' COMMENT '文档ID',
  `content` longtext COMMENT '内容详情',
  `courseware` varchar(200) NOT NULL DEFAULT '' COMMENT '课件地址',
  `courseware_free` enum('免费','收费') NOT NULL DEFAULT '免费' COMMENT '课件收费',
  `total_duration` int(10) NOT NULL DEFAULT '0' COMMENT '视频总时长',
  `total_video` int(10) NOT NULL DEFAULT '0' COMMENT '视频数',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频附加表';


-- -----------------------------
-- Table structure for `ey_media_file`
-- -----------------------------
DROP TABLE IF EXISTS `ey_media_file`;
CREATE TABLE `ey_media_file` (
  `file_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '视频模型文件表',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '文档标题',
  `file_name` varchar(200) NOT NULL DEFAULT '' COMMENT '文件名称',
  `file_title` varchar(200) NOT NULL DEFAULT '' COMMENT '选集标题',
  `file_url` text NOT NULL COMMENT '存储路径',
  `file_time` int(8) NOT NULL DEFAULT '0' COMMENT '文件时长',
  `file_ext` varchar(50) NOT NULL DEFAULT '' COMMENT '文件后缀名',
  `file_size` varchar(255) NOT NULL DEFAULT '' COMMENT '文件大小',
  `file_mime` varchar(200) NOT NULL DEFAULT '' COMMENT '文件类型',
  `uhash` varchar(200) NOT NULL DEFAULT '' COMMENT '自定义的一种加密方式，用于视频播放的权限验证',
  `md5file` varchar(200) NOT NULL DEFAULT '' COMMENT 'md5_file加密，可以检测上传/播放的视频文件是否损坏',
  `is_remote` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否远程 1-远程',
  `playcount` int(10) NOT NULL DEFAULT '0' COMMENT '播放次数',
  `gratis` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否试看，0不试看，1试看',
  `sort_order` smallint(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`file_id`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频附件表';


-- -----------------------------
-- Table structure for `ey_media_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_media_log`;
CREATE TABLE `ey_media_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `users_id` int(10) DEFAULT '0' COMMENT '用户ID',
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `file_id` int(10) DEFAULT '0' COMMENT '视频ID',
  `ip` varchar(20) DEFAULT '' COMMENT 'ip',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '编辑时间',
  PRIMARY KEY (`log_id`),
  KEY `file_id` (`file_id`,`aid`,`users_id`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频日志表';


-- -----------------------------
-- Table structure for `ey_media_order`
-- -----------------------------
DROP TABLE IF EXISTS `ey_media_order`;
CREATE TABLE `ey_media_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '媒体订单ID',
  `order_code` varchar(50) NOT NULL DEFAULT '' COMMENT '媒体订单编号',
  `users_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态：0未付款，1已付款',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '订单应付总金额',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `pay_name` varchar(20) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `wechat_pay_type` varchar(20) NOT NULL DEFAULT '' COMMENT '微信支付时，标记使用的支付类型（扫码支付，微信内部，微信H5页面）',
  `pay_details` text COMMENT '支付时返回的数据，以serialize序列化后存入，用于后续查询。',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '视频文档ID',
  `product_name` varchar(100) DEFAULT '' COMMENT '视频文档名称',
  `product_litpic` varchar(500) DEFAULT '' COMMENT '视频文档封面图片',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '下单时间',
  `update_time` int(11) unsigned DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_code` (`order_code`) USING BTREE,
  KEY `users_id` (`users_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频订单表';


-- -----------------------------
-- Table structure for `ey_media_play_record`
-- -----------------------------
DROP TABLE IF EXISTS `ey_media_play_record`;
CREATE TABLE `ey_media_play_record` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `users_id` int(10) DEFAULT '0' COMMENT '用户id',
  `aid` int(10) DEFAULT '0' COMMENT '课程id',
  `file_id` int(10) DEFAULT '0' COMMENT '文件id',
  `play_time` int(10) DEFAULT '0' COMMENT '播放时间',
  `add_time` int(10) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(10) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='视频播放时长表';


-- -----------------------------
-- Table structure for `ey_nav_list`
-- -----------------------------
DROP TABLE IF EXISTS `ey_nav_list`;
CREATE TABLE `ey_nav_list` (
  `nav_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '导航ID',
  `nav_name` varchar(200) NOT NULL DEFAULT '' COMMENT '导航名称',
  `parent_id` int(10) NOT NULL DEFAULT '0' COMMENT '上级菜单id',
  `topid` int(10) NOT NULL DEFAULT '0' COMMENT '顶级菜单id',
  `en_name` varchar(200) NOT NULL DEFAULT '' COMMENT '英文名称',
  `nav_url` varchar(200) NOT NULL DEFAULT '' COMMENT '导航链接',
  `position_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '导航位置',
  `arctype_sync` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否与栏目同步',
  `type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '同步栏目的ID',
  `nav_pic` varchar(255) NOT NULL DEFAULT '' COMMENT '导航图片',
  `is_remote` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否远程图片',
  `target` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否打开新窗口，1=是，0=否',
  `nofollow` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否使用nofollow，1=是，0=否',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '启用 (1=正常，0=停用)',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '100' COMMENT '排序号',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`nav_id`) USING BTREE,
  KEY `position_id` (`position_id`) USING BTREE,
  KEY `type_id` (`type_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航列表';


-- -----------------------------
-- Table structure for `ey_nav_position`
-- -----------------------------
DROP TABLE IF EXISTS `ey_nav_position`;
CREATE TABLE `ey_nav_position` (
  `position_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '导航列表ID',
  `position_name` varchar(200) DEFAULT '' COMMENT '导航列表名称',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`position_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='导航位置表';

-- -----------------------------
-- Records of `ey_nav_position`
-- -----------------------------
INSERT INTO `ey_nav_position` VALUES ('1', 'PC端主导航', '100', '0', '0', '1624861478');
INSERT INTO `ey_nav_position` VALUES ('2', 'PC端顶部导航', '100', '0', '0', '1624861478');
INSERT INTO `ey_nav_position` VALUES ('3', 'PC端中部导航', '100', '0', '0', '1624861478');
INSERT INTO `ey_nav_position` VALUES ('4', 'PC端底部导航', '100', '0', '0', '1624861478');
INSERT INTO `ey_nav_position` VALUES ('5', '移动端中部导航', '100', '0', '0', '1624861478');
INSERT INTO `ey_nav_position` VALUES ('6', '移动端底部导航', '100', '0', '0', '1624861478');

-- -----------------------------
-- Table structure for `ey_pay_api_config`
-- -----------------------------
DROP TABLE IF EXISTS `ey_pay_api_config`;
CREATE TABLE `ey_pay_api_config` (
  `pay_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '支付接口配置ID，自增',
  `pay_name` varchar(64) NOT NULL DEFAULT '' COMMENT '支付接口配置名称，微信支付，支付宝支付...',
  `pay_mark` varchar(64) NOT NULL DEFAULT '' COMMENT '支付接口配置标识，wechat，alipay...',
  `pay_info` text NOT NULL COMMENT '支付接口配置信息，数组以序列化存储',
  `pay_terminal` varchar(100) NOT NULL DEFAULT '' COMMENT '支付时的终端，暂时预留',
  `system_built` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否属于系统内置，0否，1是',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0=关闭，1=开启)',
  `lang` varchar(30) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`pay_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='支付接口配置表';

-- -----------------------------
-- Records of `ey_pay_api_config`
-- -----------------------------
INSERT INTO `ey_pay_api_config` VALUES ('1', '微信支付', 'wechat', '', 'a:3:{i:0;s:1:\"1\";i:1;s:1:\"2\";i:2;s:1:\"3\";}', '1', '1', 'cn', '1590111253', '1590661409');
INSERT INTO `ey_pay_api_config` VALUES ('2', '支付宝支付', 'alipay', '', 'a:4:{s:8:\"computer\";i:0;s:6:\"c_mark\";i:0;s:6:\"mobile\";i:0;s:6:\"m_mark\";i:0;}', '1', '1', 'cn', '1590111253', '1638405553');

-- -----------------------------
-- Table structure for `ey_product_attr`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_attr`;
CREATE TABLE `ey_product_attr` (
  `product_attr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品属性id自增',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '产品id',
  `attr_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '属性id',
  `attr_value` text COMMENT '属性值',
  `attr_price` varchar(255) DEFAULT '' COMMENT '属性价格',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`product_attr_id`),
  KEY `aid` (`aid`) USING BTREE,
  KEY `attr_id` (`attr_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_product_attr`
-- -----------------------------
INSERT INTO `ey_product_attr` VALUES ('20', '19', '1', '尽享驾控之道，拥有卓越湿地抓地力的豪华性能轮胎', '', '1536134896', '1536134896');
INSERT INTO `ey_product_attr` VALUES ('22', '20', '1', '弯道之王 采用“自控弯道抓地科技”', '', '1536135550', '1536135550');
INSERT INTO `ey_product_attr` VALUES ('24', '21', '1', '静音舒适的SUV轮胎', '', '1536135601', '1536135601');
INSERT INTO `ey_product_attr` VALUES ('26', '22', '1', '全天候路面感应技术宽深的沟槽和胎肩开口设计静音花纹块设计', '', '1536135651', '1536135651');
INSERT INTO `ey_product_attr` VALUES ('28', '23', '1', '采用湿地抓地科技', '', '1536135686', '1536135686');
INSERT INTO `ey_product_attr` VALUES ('30', '24', '1', '坚韧耐用 安静舒适', '', '1536135721', '1536135721');
INSERT INTO `ey_product_attr` VALUES ('32', '25', '1', '出色的冰雪路面抓地力', '', '1536135756', '1536135756');
INSERT INTO `ey_product_attr` VALUES ('18', '18', '1', '静音舒适 适用于高档/豪华SUV车型', '', '1536134844', '1536134844');
INSERT INTO `ey_product_attr` VALUES ('19', '18', '2', '215/65R16', '', '1536134844', '1536134844');
INSERT INTO `ey_product_attr` VALUES ('21', '19', '2', '215/65R16', '', '1536134896', '1536134896');
INSERT INTO `ey_product_attr` VALUES ('23', '20', '2', '215/65R16', '', '1536135550', '1536135550');
INSERT INTO `ey_product_attr` VALUES ('25', '21', '2', '215/65R16', '', '1536135601', '1536135601');
INSERT INTO `ey_product_attr` VALUES ('27', '22', '2', '215/65R16', '', '1536135651', '1536135651');
INSERT INTO `ey_product_attr` VALUES ('29', '23', '2', '215/65R16', '', '1536135686', '1536135686');
INSERT INTO `ey_product_attr` VALUES ('31', '24', '2', '215/65R16', '', '1536135721', '1536135721');
INSERT INTO `ey_product_attr` VALUES ('33', '25', '2', '215/65R16', '', '1536135756', '1536135756');
INSERT INTO `ey_product_attr` VALUES ('34', '54', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552464214', '1552464214');
INSERT INTO `ey_product_attr` VALUES ('35', '54', '4', '215/65R16', '', '1552464214', '1552464214');
INSERT INTO `ey_product_attr` VALUES ('36', '55', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552464382', '1552464382');
INSERT INTO `ey_product_attr` VALUES ('37', '55', '4', '215/65R16', '', '1552464382', '1552464382');
INSERT INTO `ey_product_attr` VALUES ('38', '56', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552464430', '1552464430');
INSERT INTO `ey_product_attr` VALUES ('39', '56', '4', '215/65R16', '', '1552464430', '1552464430');
INSERT INTO `ey_product_attr` VALUES ('40', '57', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552464478', '1552464478');
INSERT INTO `ey_product_attr` VALUES ('41', '57', '4', '215/65R16', '', '1552464478', '1552464478');
INSERT INTO `ey_product_attr` VALUES ('42', '58', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552464549', '1552464549');
INSERT INTO `ey_product_attr` VALUES ('43', '58', '4', '215/65R16', '', '1552464549', '1552464549');
INSERT INTO `ey_product_attr` VALUES ('44', '59', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552465438', '1552465438');
INSERT INTO `ey_product_attr` VALUES ('45', '59', '4', '215/65R16', '', '1552465438', '1552465438');
INSERT INTO `ey_product_attr` VALUES ('46', '60', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552465487', '1552465487');
INSERT INTO `ey_product_attr` VALUES ('47', '60', '4', '215/65R16', '', '1552465487', '1552465487');
INSERT INTO `ey_product_attr` VALUES ('48', '61', '3', 'Quiet and comfortable for high-end/luxury SUV models', '', '1552465686', '1552465686');
INSERT INTO `ey_product_attr` VALUES ('49', '61', '4', '215/65R16', '', '1552465686', '1552465686');

-- -----------------------------
-- Table structure for `ey_product_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_attribute`;
CREATE TABLE `ey_product_attribute` (
  `attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(60) DEFAULT '' COMMENT '属性名称',
  `typeid` int(11) unsigned DEFAULT '0' COMMENT '栏目id',
  `attr_index` tinyint(1) unsigned DEFAULT '0' COMMENT '0不需要检索 1关键字检索 2范围检索',
  `attr_input_type` tinyint(1) unsigned DEFAULT '0' COMMENT ' 0=文本框，1=下拉框，2=多行文本框',
  `attr_values` text COMMENT '可选值列表',
  `sort_order` int(11) unsigned DEFAULT '0' COMMENT '属性排序',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '是否已删除，0=否，1=是',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`typeid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_product_attribute`
-- -----------------------------
INSERT INTO `ey_product_attribute` VALUES ('1', '样式', '9', '0', '0', '', '100', 'cn', '0', '1536116524', '1536116524');
INSERT INTO `ey_product_attribute` VALUES ('2', '规格', '9', '0', '0', '', '100', 'cn', '0', '1536116529', '1536116529');
INSERT INTO `ey_product_attribute` VALUES ('3', 'Style', '23', '0', '0', '', '100', 'en', '0', '1536116524', '1552464256');
INSERT INTO `ey_product_attribute` VALUES ('4', 'Specification', '23', '0', '0', '', '100', 'en', '0', '1536116529', '1552464253');

-- -----------------------------
-- Table structure for `ey_product_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_content`;
CREATE TABLE `ey_product_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `content` longtext COMMENT '内容详情',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `news_id` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='资讯内容表_存储正常内容';

-- -----------------------------
-- Records of `ey_product_content`
-- -----------------------------
INSERT INTO `ey_product_content` VALUES ('1', '18', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536134906', '1536134906');
INSERT INTO `ey_product_content` VALUES ('2', '19', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536134915', '1536134915');
INSERT INTO `ey_product_content` VALUES ('3', '20', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536135606', '1536135606');
INSERT INTO `ey_product_content` VALUES ('4', '21', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536135612', '1536135612');
INSERT INTO `ey_product_content` VALUES ('5', '22', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536135651', '1536135651');
INSERT INTO `ey_product_content` VALUES ('6', '23', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536135686', '1536135686');
INSERT INTO `ey_product_content` VALUES ('7', '24', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536135721', '1536135721');
INSERT INTO `ey_product_content` VALUES ('8', '25', '&lt;p&gt;轮胎是在各种车辆或机械上装配的接地滚动的圆环形弹性橡胶制品。通常安装在金属轮辋上，能支承车身，缓冲外界冲击，实现与路面的接触并保证车辆的行驶性能。轮胎常在复杂和苛刻的条件下使用，它在行驶时承受着各种变形、负荷、力以及高低温作用，因此必须具有较高的承载性能、牵引性能、缓冲性能。同时，还要求具备高耐磨性和耐屈挠性，以及低的滚动阻力与生热性。世界耗用橡胶量的一半用于轮胎生产，可见轮胎耗用橡胶的能力。&lt;/p&gt;', '1536135756', '1536135756');
INSERT INTO `ey_product_content` VALUES ('9', '54', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing properties, traction properties and cushioning properties. At the same time, it is required to have high wear resistance and flex resistance, as well as low rolling resistance and heat build-up. Half of the world&amp;#39;s rubber consumption is used in tire production, showing the ability of tires to consume rubber.&lt;/p&gt;', '1552464214', '1552464214');
INSERT INTO `ey_product_content` VALUES ('10', '55', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing properties, traction properties and cushioning properties. At the same time, it is required to have high wear resistance and flex resistance, as well as low rolling resistance and heat build-up. Half of the world&amp;#39;s rubber consumption is used in tire production, showing the ability of tires to consume rubber.&lt;/p&gt;', '1552464382', '1552464382');
INSERT INTO `ey_product_content` VALUES ('11', '56', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing properties, traction properties and cushioning properties. At the same time, it is required to have high wear resistance and flex resistance, as well as low rolling resistance and heat build-up. Half of the world&amp;#39;s rubber consumption is used in tire production, showing the ability of tires to consume rubber.&lt;br/&gt;&lt;/p&gt;', '1552464430', '1552464430');
INSERT INTO `ey_product_content` VALUES ('12', '57', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are assembled on a variety of vehicles or machinery. Usually mounted on a metal rim, it can support the body, cushion external impact, achieve contact with the road surface and ensure the driving performance of the vehicle. Tires are often used under complex and demanding conditions. They are subjected to various deformations, loads, forces and high and low temperatures during driving, and therefore must have high load bearing properties, traction properties and cushioning properties. At the same time, it is required to have high wear resistance and flex resistance, as well as low rolling resistance and heat build-up. Half of the world&amp;#39;s rubber consumption is used in tire production, showing the ability of tires to consume rubber.&lt;/p&gt;', '1552464478', '1552464478');
INSERT INTO `ey_product_content` VALUES ('13', '58', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are \r\nassembled on a variety of vehicles or machinery. Usually mounted on a \r\nmetal rim, it can support the body, cushion external impact, achieve \r\ncontact with the road surface and ensure the driving performance of the \r\nvehicle. Tires are often used under complex and demanding conditions. \r\nThey are subjected to various deformations, loads, forces and high and \r\nlow temperatures during driving, and therefore must have high load \r\nbearing properties, traction properties and cushioning properties. At \r\nthe same time, it is required to have high wear resistance and flex \r\nresistance, as well as low rolling resistance and heat build-up. Half of\r\n the world&amp;#39;s rubber consumption is used in tire production, showing the \r\nability of tires to consume rubber.&lt;/p&gt;', '1552464549', '1552464549');
INSERT INTO `ey_product_content` VALUES ('14', '59', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are \r\nassembled on a variety of vehicles or machinery. Usually mounted on a \r\nmetal rim, it can support the body, cushion external impact, achieve \r\ncontact with the road surface and ensure the driving performance of the \r\nvehicle. Tires are often used under complex and demanding conditions. \r\nThey are subjected to various deformations, loads, forces and high and \r\nlow temperatures during driving, and therefore must have high load \r\nbearing properties, traction properties and cushioning properties. At \r\nthe same time, it is required to have high wear resistance and flex \r\nresistance, as well as low rolling resistance and heat build-up. Half of\r\n the world&amp;#39;s rubber consumption is used in tire production, showing the \r\nability of tires to consume rubber.&lt;/p&gt;', '1552465438', '1552465438');
INSERT INTO `ey_product_content` VALUES ('15', '60', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are \r\nassembled on a variety of vehicles or machinery. Usually mounted on a \r\nmetal rim, it can support the body, cushion external impact, achieve \r\ncontact with the road surface and ensure the driving performance of the \r\nvehicle. Tires are often used under complex and demanding conditions. \r\nThey are subjected to various deformations, loads, forces and high and \r\nlow temperatures during driving, and therefore must have high load \r\nbearing properties, traction properties and cushioning properties. At \r\nthe same time, it is required to have high wear resistance and flex \r\nresistance, as well as low rolling resistance and heat build-up. Half of\r\n the world&amp;#39;s rubber consumption is used in tire production, showing the \r\nability of tires to consume rubber.&lt;br/&gt;&lt;/p&gt;', '1552465487', '1552465487');
INSERT INTO `ey_product_content` VALUES ('16', '61', '&lt;p&gt;Tires are ground-rolled, circular elastic rubber articles that are \r\nassembled on a variety of vehicles or machinery. Usually mounted on a \r\nmetal rim, it can support the body, cushion external impact, achieve \r\ncontact with the road surface and ensure the driving performance of the \r\nvehicle. Tires are often used under complex and demanding conditions. \r\nThey are subjected to various deformations, loads, forces and high and \r\nlow temperatures during driving, and therefore must have high load \r\nbearing properties, traction properties and cushioning properties. At \r\nthe same time, it is required to have high wear resistance and flex \r\nresistance, as well as low rolling resistance and heat build-up. Half of\r\n the world&amp;#39;s rubber consumption is used in tire production, showing the \r\nability of tires to consume rubber.&lt;/p&gt;', '1552465686', '1552465686');

-- -----------------------------
-- Table structure for `ey_product_img`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_img`;
CREATE TABLE `ey_product_img` (
  `img_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '产品ID',
  `title` varchar(200) DEFAULT '' COMMENT '产品标题',
  `image_url` varchar(255) DEFAULT '' COMMENT '文件存储路径',
  `intro` varchar(2000) DEFAULT '' COMMENT '图集描述',
  `width` int(11) DEFAULT '0' COMMENT '图片宽度',
  `height` int(11) DEFAULT '0' COMMENT '图片高度',
  `filesize` varchar(255) DEFAULT '' COMMENT '文件大小',
  `mime` varchar(50) DEFAULT '' COMMENT '图片类型',
  `sort_order` smallint(5) DEFAULT '0' COMMENT '排序',
  `add_time` int(10) unsigned DEFAULT '0' COMMENT '上传时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`img_id`),
  KEY `arcid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_product_img`
-- -----------------------------
INSERT INTO `ey_product_img` VALUES ('26', '18', '产品名称一', '/public/upload/product/2018/09/05/b61ff6c8507a1254e7fabff47ff011c8.png', '', '300', '300', '0', 'image/png', '2', '1536134906', '0');
INSERT INTO `ey_product_img` VALUES ('28', '19', '产品名称二', '/public/upload/product/2018/09/05/449b75bbb81c010b0f7d0ca63bb585eb.png', '', '300', '300', '0', 'image/png', '2', '1536134915', '0');
INSERT INTO `ey_product_img` VALUES ('34', '20', '产品名称三', '/public/upload/product/2018/09/05/05b1ccd274bdf9578aec0197c24e6b00.png', '', '300', '300', '0', 'image/png', '2', '1536135606', '0');
INSERT INTO `ey_product_img` VALUES ('33', '20', '产品名称三', '/public/upload/product/2018/09/05/9182fd34d1164674c8353c05e51b5e67.png', '', '300', '300', '0', 'image/png', '1', '1536135606', '0');
INSERT INTO `ey_product_img` VALUES ('36', '21', '产品名称四', '/public/upload/product/2018/09/05/11e7991a69391de4c09f4cea029bde30.png', '', '300', '300', '0', 'image/png', '2', '1536135612', '0');
INSERT INTO `ey_product_img` VALUES ('37', '22', '产品名称五', '/public/upload/product/2018/09/05/59d8eb13737ad0971f14aa588b7534cf.png', '', '300', '300', '0', 'image/png', '1', '1536135651', '0');
INSERT INTO `ey_product_img` VALUES ('38', '22', '产品名称五', '/public/upload/product/2018/09/05/3f14000fa402f016f023edfdce6c46d5.png', '', '300', '300', '0', 'image/png', '2', '1536135651', '0');
INSERT INTO `ey_product_img` VALUES ('39', '23', '产品名称六', '/public/upload/product/2018/09/05/79b45b2eb5f086be08005c699622398a.png', '', '300', '300', '0', 'image/png', '1', '1536135686', '0');
INSERT INTO `ey_product_img` VALUES ('40', '23', '产品名称六', '/public/upload/product/2018/09/05/c3cea2467da539f50c935364be834d45.png', '', '300', '300', '0', 'image/png', '2', '1536135686', '0');
INSERT INTO `ey_product_img` VALUES ('41', '24', '产品名称七', '/public/upload/product/2018/09/05/87089b2f4b39938abfb05fbe53f8f0b1.png', '', '300', '300', '0', 'image/png', '1', '1536135721', '0');
INSERT INTO `ey_product_img` VALUES ('42', '24', '产品名称七', '/public/upload/product/2018/09/05/02580943755f95b3f93235437e0f6dd4.png', '', '300', '300', '0', 'image/png', '2', '1536135721', '0');
INSERT INTO `ey_product_img` VALUES ('44', '25', '产品名称八', '/public/upload/product/2018/09/05/35905df134b6824b6d5dabd6b0683f4b.png', '', '300', '300', '0', 'image/png', '2', '1536135756', '0');
INSERT INTO `ey_product_img` VALUES ('43', '25', '产品名称八', '/public/upload/product/2018/09/05/f269b83ab8b4fb5b7d76f8255ae410ac.png', '', '300', '300', '0', 'image/png', '1', '1536135756', '0');
INSERT INTO `ey_product_img` VALUES ('25', '18', '产品名称一', '/public/upload/product/2018/09/05/849a63cfb486a68471bde91c0e89fa7b.png', '', '300', '300', '0', 'image/png', '1', '1536134906', '0');
INSERT INTO `ey_product_img` VALUES ('27', '19', '产品名称二', '/public/upload/product/2018/09/05/68a6ec9955041b422bf2074208cc4392.png', '', '300', '300', '0', 'image/png', '1', '1536134915', '0');
INSERT INTO `ey_product_img` VALUES ('35', '21', '产品名称四', '/public/upload/product/2018/09/05/a30772342dabe5efcfe3c483386c8513.png', '', '300', '300', '0', 'image/png', '1', '1536135612', '0');
INSERT INTO `ey_product_img` VALUES ('45', '54', 'Product name one', '/uploads/allimg/20190313/ad1162e2d61bbf2821bb759092221494.png', '', '400', '400', '0', 'image/png', '1', '1552464214', '0');
INSERT INTO `ey_product_img` VALUES ('46', '54', 'Product name one', '/uploads/allimg/20190313/1d310e507b122a60b8cbf52f6dc68d76.png', '', '400', '400', '0', 'image/png', '2', '1552464214', '0');
INSERT INTO `ey_product_img` VALUES ('47', '55', 'Product name two', '/uploads/allimg/20190313/b40647ee108456f9c1a456b787c4b0cf.png', '', '400', '400', '0', 'image/png', '1', '1552464382', '0');
INSERT INTO `ey_product_img` VALUES ('48', '55', 'Product name two', '/uploads/allimg/20190313/96630b83320df0c78c02a0736e368816.png', '', '400', '400', '0', 'image/png', '2', '1552464382', '0');
INSERT INTO `ey_product_img` VALUES ('49', '56', 'Product name three', '/uploads/allimg/20190313/561a22fdd3c64edc035ab6c3d4415769.png', '', '400', '400', '0', 'image/png', '1', '1552464430', '0');
INSERT INTO `ey_product_img` VALUES ('50', '56', 'Product name three', '/uploads/allimg/20190313/bc2be1446ccc6daec1369abb9d1ae820.png', '', '400', '400', '0', 'image/png', '2', '1552464430', '0');
INSERT INTO `ey_product_img` VALUES ('51', '57', 'Product name four', '/uploads/allimg/20190313/b47ad143a7ad88fe9f52ac2bbfa2cbaa.png', '', '400', '400', '0', 'image/png', '1', '1552464478', '0');
INSERT INTO `ey_product_img` VALUES ('52', '57', 'Product name four', '/uploads/allimg/20190313/1e13ea6ce010b5f8fbb68558459ace0a.png', '', '400', '400', '0', 'image/png', '2', '1552464478', '0');
INSERT INTO `ey_product_img` VALUES ('53', '58', 'Product name five', '/uploads/allimg/20190313/bedc63547602575d60c1444bd2343375.png', '', '400', '400', '0', 'image/png', '1', '1552464549', '0');
INSERT INTO `ey_product_img` VALUES ('54', '58', 'Product name five', '/uploads/allimg/20190313/63d58def6d9dbfe7f0d054f7bf2c3496.png', '', '400', '400', '0', 'image/png', '2', '1552464549', '0');
INSERT INTO `ey_product_img` VALUES ('55', '59', 'Product name six', '/uploads/allimg/20190313/989d45db73cb822a511697011461efc5.png', '', '400', '400', '0', 'image/png', '1', '1552465438', '0');
INSERT INTO `ey_product_img` VALUES ('56', '59', 'Product name six', '/uploads/allimg/20190313/f0348e58034aa1b5ef648a821af98431.png', '', '400', '400', '0', 'image/png', '2', '1552465438', '0');
INSERT INTO `ey_product_img` VALUES ('57', '60', 'Product name seven', '/uploads/allimg/20190313/5798631f70879a31571c3d7679ce29c0.png', '', '400', '400', '0', 'image/png', '1', '1552465487', '0');
INSERT INTO `ey_product_img` VALUES ('58', '60', 'Product name seven', '/uploads/allimg/20190313/ef6b3e289d72929a7be9f3293e5a31f4.png', '', '400', '400', '0', 'image/png', '2', '1552465487', '0');
INSERT INTO `ey_product_img` VALUES ('59', '61', 'Product name eight', '/uploads/allimg/20190313/8d40fcd2e1e2381510634da39b329bdf.png', '', '400', '400', '0', 'image/png', '1', '1552465686', '0');
INSERT INTO `ey_product_img` VALUES ('60', '61', 'Product name eight', '/uploads/allimg/20190313/b8d80b0b9404f57ff1d8ca732e2bdb51.png', '', '400', '400', '0', 'image/png', '2', '1552465686', '0');

-- -----------------------------
-- Table structure for `ey_product_netdisk`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_netdisk`;
CREATE TABLE `ey_product_netdisk` (
  `nd_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '网盘商品id',
  `aid` int(10) DEFAULT '0' COMMENT '产品ID',
  `netdisk_url` varchar(255) NOT NULL DEFAULT '' COMMENT '网盘地址',
  `netdisk_pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '提取码',
  `unzip_pwd` varchar(50) NOT NULL DEFAULT '' COMMENT '解压密码',
  `text_content` text NOT NULL COMMENT '文本内容',
  `lang` varchar(10) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`nd_id`) USING BTREE,
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品虚拟表';


-- -----------------------------
-- Table structure for `ey_product_spec_data`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_spec_data`;
CREATE TABLE `ey_product_spec_data` (
  `spec_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `aid` int(10) DEFAULT '0' COMMENT '产品ID',
  `spec_mark_id` int(10) DEFAULT '0' COMMENT '规格标记ID',
  `spec_name` varchar(100) DEFAULT '' COMMENT '规格名称',
  `spec_value_id` int(10) DEFAULT '0' COMMENT '规格值ID',
  `spec_value` varchar(100) DEFAULT '' COMMENT '规格值',
  `spec_is_select` tinyint(1) DEFAULT '0' COMMENT '是否选中（0=否，1=是）',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`spec_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品规格数据表';


-- -----------------------------
-- Table structure for `ey_product_spec_preset`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_spec_preset`;
CREATE TABLE `ey_product_spec_preset` (
  `preset_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `preset_mark_id` int(10) DEFAULT '0' COMMENT '预设参数标记ID',
  `preset_name` varchar(100) DEFAULT '' COMMENT '规格名称',
  `preset_value` varchar(100) DEFAULT '' COMMENT '规格值',
  `spec_sync` tinyint(1) unsigned DEFAULT '0' COMMENT '是否同步到已发布的商品规格：0否，1是。',
  `sort_order` int(10) DEFAULT '100' COMMENT '排序号',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`preset_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='产品规格预设表';

-- -----------------------------
-- Records of `ey_product_spec_preset`
-- -----------------------------
INSERT INTO `ey_product_spec_preset` VALUES ('1', '1', '产品颜色', '红', '0', '100', 'cn', '1565752372', '1565752623');
INSERT INTO `ey_product_spec_preset` VALUES ('2', '1', '产品颜色', '蓝', '0', '100', 'cn', '1565752372', '1565752623');
INSERT INTO `ey_product_spec_preset` VALUES ('3', '1', '产品颜色', '黄', '0', '100', 'cn', '1565752372', '1565752623');

-- -----------------------------
-- Table structure for `ey_product_spec_value`
-- -----------------------------
DROP TABLE IF EXISTS `ey_product_spec_value`;
CREATE TABLE `ey_product_spec_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `aid` int(10) NOT NULL DEFAULT '0' COMMENT '产品ID',
  `spec_value_id` varchar(100) NOT NULL DEFAULT '' COMMENT '规格值ID',
  `spec_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '规格价格',
  `spec_stock` int(10) NOT NULL DEFAULT '0' COMMENT '规格库存',
  `spec_sales_num` int(10) NOT NULL DEFAULT '0' COMMENT '销售量',
  `seckill_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '秒杀价格',
  `seckill_stock` int(10) NOT NULL DEFAULT '0' COMMENT '秒杀库存(独立库存，与spec_stock库存不同步)',
  `seckill_sales_num` int(10) NOT NULL DEFAULT '0' COMMENT '秒杀销售量',
  `is_seckill` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-普通 1-秒杀',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品多规格组装表';


-- -----------------------------
-- Table structure for `ey_quickentry`
-- -----------------------------
DROP TABLE IF EXISTS `ey_quickentry`;
CREATE TABLE `ey_quickentry` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT '' COMMENT '名称',
  `laytext` varchar(50) DEFAULT '' COMMENT '完整标题',
  `type` smallint(5) DEFAULT '0' COMMENT '归类，1=快捷入口，2=内容统计',
  `controller` varchar(20) DEFAULT '' COMMENT '控制器名',
  `action` varchar(20) DEFAULT '' COMMENT '操作名',
  `vars` varchar(100) DEFAULT '' COMMENT 'URL参数字符串',
  `groups` smallint(5) DEFAULT '0' COMMENT '分组，1=模型',
  `checked` tinyint(4) DEFAULT '0' COMMENT '选中，0=否，1=是',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1=有效，0=无效',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `type` (`type`,`status`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='快捷入口表';

-- -----------------------------
-- Records of `ey_quickentry`
-- -----------------------------
INSERT INTO `ey_quickentry` VALUES ('1', '产品', '产品列表', '1', 'Product', 'index', 'channel=2', '1', '0', '1', '3', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('2', '下载', '下载列表', '1', 'Download', 'index', 'channel=4', '1', '0', '1', '4', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('3', '文章', '文章列表', '1', 'Article', 'index', 'channel=1', '1', '0', '1', '6', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('4', '图集', '图集列表', '1', 'Images', 'index', 'channel=3', '1', '0', '1', '7', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('5', '内容管理', '内容列表', '1', 'Archives', 'index', '', '0', '0', '1', '13', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('7', '回收站', '回收站', '1', 'RecycleBin', 'archives_index', '', '0', '1', '1', '4', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('8', '栏目管理', '栏目管理', '1', 'Arctype', 'index', '', '0', '0', '1', '5', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('9', '留言', '留言列表', '1', 'Guestbook', 'index', 'channel=8', '1', '0', '1', '6', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('10', '网站信息', '网站信息', '1', 'System', 'web', '', '0', '0', '1', '7', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('11', '水印配置', '水印配置', '1', 'System', 'water', '', '0', '1', '1', '8', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('12', '缩略图配置', '缩略图配置', '1', 'System', 'thumb', '', '0', '1', '1', '9', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('13', '数据备份', '数据备份', '1', 'Tools', 'index', '', '0', '0', '1', '11', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('14', 'URL配置', 'URL配置', '1', 'Seo', 'seo', '', '0', '1', '1', '1', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('15', '模板管理', '模板管理', '1', 'Filemanager', 'index', '', '0', '1', '1', '6', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('16', 'SiteMap', 'SiteMap', '1', 'Sitemap', 'index', '', '0', '1', '1', '12', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('17', '频道模型', '频道模型', '1', 'Channeltype', 'index', '', '0', '1', '1', '2', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('18', '广告管理', '广告管理', '1', 'AdPosition', 'index', '', '0', '0', '1', '3', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('19', '友情链接', '友情链接', '1', 'Links', 'index', '', '0', '0', '1', '10', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('20', 'Tags管理', 'Tags管理', '1', 'Tags', 'index', '', '0', '1', '1', '14', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('21', '管理员管理', '管理员管理', '1', 'Admin', 'index', '', '0', '0', '1', '15', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('22', '接口配置', '接口配置', '1', 'System', 'api_conf', '', '0', '1', '1', '16', '1569232484', '1571893529');
INSERT INTO `ey_quickentry` VALUES ('23', '文章', '文章列表', '2', 'Article', 'index', 'channel=1', '1', '1', '1', '1', '1569310798', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('24', '产品', '产品列表', '2', 'Product', 'index', 'channel=2', '1', '0', '1', '2', '1569310798', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('25', '下载', '下载列表', '2', 'Download', 'index', 'channel=4', '1', '0', '1', '4', '1569310798', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('26', '图集', '图集列表', '2', 'Images', 'index', 'channel=3', '1', '0', '1', '3', '1569310798', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('27', '留言', '留言列表', '2', 'Guestbook', 'index', 'channel=8', '1', '0', '1', '5', '1569310798', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('28', '广告', '广告管理', '2', 'AdPosition', 'index', '', '0', '1', '1', '8', '1569232484', '1571898872');
INSERT INTO `ey_quickentry` VALUES ('29', '友情链接', '友情链接', '2', 'Links', 'index', '', '0', '1', '1', '9', '1569232484', '1571898872');
INSERT INTO `ey_quickentry` VALUES ('30', 'Tags标签', 'Tags管理', '2', 'Tags', 'index', '', '0', '1', '1', '10', '1569232484', '1571898872');
INSERT INTO `ey_quickentry` VALUES ('31', '会员', '会员管理', '2', 'Member', 'users_index', '', '0', '0', '0', '7', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('32', '插件应用', '插件应用', '1', 'Weapp', 'index', '', '0', '0', '0', '17', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('33', '会员中心', '会员中心', '1', 'Member', 'users_index', '', '0', '0', '0', '18', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('34', '商城中心', '商城中心', '1', 'Shop', 'index', '', '0', '0', '0', '19', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('35', '订单', '订单管理', '2', 'Shop', 'index', '', '0', '0', '0', '6', '1569232484', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('37', '专题', '专题列表', '2', 'Special', 'index', 'channel=7', '1', '0', '0', '7', '1600078966', '1638405620');
INSERT INTO `ey_quickentry` VALUES ('39', '视频', '视频列表', '2', 'Media', 'index', 'channel=5', '1', '0', '0', '4', '1569310798', '1638405620');

-- -----------------------------
-- Table structure for `ey_recruit_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_recruit_content`;
CREATE TABLE `ey_recruit_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  `gzdd` varchar(200) NOT NULL DEFAULT '' COMMENT '工作地点',
  `xlyq` varchar(200) NOT NULL DEFAULT '' COMMENT '学历要求',
  `xzdy` varchar(200) NOT NULL DEFAULT '' COMMENT '薪资待遇',
  `gzxz` varchar(200) NOT NULL DEFAULT '' COMMENT '工作性质',
  `gznx` varchar(200) NOT NULL DEFAULT '' COMMENT '工作年限',
  `zprs` varchar(200) NOT NULL DEFAULT '' COMMENT '招聘人数',
  `nnxq` longtext COMMENT '内容详情',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='附加表';

-- -----------------------------
-- Records of `ey_recruit_content`
-- -----------------------------
INSERT INTO `ey_recruit_content` VALUES ('1', '82', '1563528211', '1563528211', '广州市', '中专以上学历', '5000-10000元', '全职', '1年以上', '若干', '&lt;p&gt;工作内容：&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;1、负责公司手机游戏产品的在线推广；&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;2、做好每天的推广统计，定制有效的投放策略并执行；&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;3、完成每天的业绩要求，只要你努力，月入过万不是梦&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;职位要求：&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;1学历不限，欢迎优秀应届生（优秀者可放宽）；男女不限，19~24岁&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;2.亲和力强、沟通流畅、重点突出；&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;3.个性开朗、反应敏捷，有较强的服务意识和责任心；&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;4.能熟练运用QQ及微信聊天软件，懂得电脑的基本操作，打字速度不限&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;我们期待怀揣梦想的你加入我们！&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;5、有经验者优先考虑！！！！！&lt;/p&gt;');
INSERT INTO `ey_recruit_content` VALUES ('2', '83', '1563528292', '1563528292', '广州市', '中专以上学历', '5000-8000元', '全职', '2年以上', '2位', '&lt;p&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;岗位职责：&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;1、负责网站相关栏目、信息的搜集、编辑、发布等工作。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2、完成信息内容的策划和日常信息的更新与维护。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;3、编写网站宣传资料及相关产品信息。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;4、配合部门编辑策划推广活动。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;5、部门总监下发的其他任务。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;任职资格：&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;1、编辑、新闻、中文等相关专业优先，大专及以上学历。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;2、有编辑或从事相关工作经验优先。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;3、熟练使用网页制作软件和网络搜索工具，了解网站运行、维护相关知识。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;4、良好的文字功底，信息采编能力。&lt;/span&gt;&lt;br style=&quot;outline: 0px; text-size-adjust: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0.05); color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);&quot;/&gt;&lt;span style=&quot;color: rgb(46, 52, 59); font-family: &amp;quot;Microsoft YaHei&amp;quot;, &amp;quot;Hiragino Sans GB&amp;quot;, 微软雅黑, arial, Tahoma, SimSun, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;5、欢迎应届毕业生来应聘。&lt;/span&gt;&lt;/p&gt;');
INSERT INTO `ey_recruit_content` VALUES ('3', '94', '1565225547', '1565225547', '广州市', '专科以上学历', '5000-8000元', '全职', '2年以上', '若干', '&lt;p&gt;1、负责客户开发、提供客户服务、公司服务的推广、建立与维护客户关系；&lt;/p&gt;&lt;p&gt;2、根据市场营销计划和个人销售目标，完成各阶段销售目标；&lt;/p&gt;&lt;p&gt;3、进行市场调研，确定目标市场，收集分析竞争对象信息，制订、执行销售对策；&lt;/p&gt;&lt;p&gt;4、与内部相关部门建立并维持良好的协作关系，以客户和市场为导向，协调各方面关系，确保合同的顺利执行。&lt;/p&gt;&lt;p&gt;【岗位要求】&lt;/p&gt;&lt;p&gt;1、专科学历，有一定客户服务工作经验或销售经验，有一定的客户服务知识和能力。&lt;/p&gt;&lt;p&gt;2、计算机操作熟练，office办公软件使用熟练，有一定的网络基础知识，熟练使用Photoshop等制图工具着优先考虑。&lt;/p&gt;&lt;p&gt;3、要求一定要有“客户优先”的服务精神，一切从帮助客户、满足客户角度出发。&lt;/p&gt;&lt;p&gt;4、性格要求沉稳、隐忍，善于倾听，有同理心，乐观、积极。普通话标准、流利，反应灵敏。&lt;/p&gt;&lt;p&gt;5、热爱工作，敬业、勤恳、乐于思考，具有自我发展的主观的主题愿望和自我学习能力。可适当加班者优先。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ey_recruit_content` VALUES ('4', '95', '1565225608', '1565225608', '广州市', '专科以上学历', '5000-10000元', '全职', '2年以上', '若干', '&lt;p&gt;岗位职责：1、利用网络进行公司产品的销售及推广2、了解网络销售，有信心和良好的学习能力3、完成团队目标4、通过网络进行渠道开发和业务拓展5、熟悉互联网络，熟练使用网络交流工具和各种办公软件6、有较强的沟通能力&lt;/p&gt;&lt;p&gt;任职要求：1、年龄18～25之间，有空杯心态者优先2、性格开朗，喜欢与人沟通，表达流畅，普通话标准3、具备一定的客户服务精神，准确把握客户需求4、认真细致，能接受挑战性任务5、有无销售经验均可，欢迎应届毕业生应聘&lt;/p&gt;&lt;p&gt;薪资待遇：底薪+高抽成+奖金+年底双薪+生日聚餐，不定期的聚会和旅游等&lt;/p&gt;&lt;p&gt;晋升空间：业务基础—精英业务员—销售组长—销售主管—核心主管&lt;/p&gt;&lt;p&gt;销售激励：礼品奖励、现金奖金、出单奖励、周业绩奖励、月销售前三奖励。依法享受法定节假日（带薪旅游、带薪年假、婚假。、产假、员工生日庆祝）&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `ey_recruit_content` VALUES ('5', '96', '1565225638', '1565225638', '广州市', '专科以上学历', '5000-10000元', '全职', '2年以上', '若干', '&lt;p&gt;任职要求： 1、年龄25-35岁，本科及以上学历，网络安全相关专业，持网络安全证书，2年以上同岗位工作经验； 2、熟知防火墙、入侵检测、网络流量识别控制等信息安全产品相关技术；熟悉网络协议、网络编程及相关网络产品开发技术； 3、具备良好的安全意识能力、语言表达能力、逻辑思维能力、执行力、责任心、团队协作能力。 岗位职责： 1、安全设备的日常监控与维护，及时进行安全设备策略的变更与调整；安全运维的结果文档、技术资料、设备日志，配置信息等相关资料的管理及维护； 2、定期关注安全设备系统的升级补丁，合适准确性后及时更新补丁，完成安全设备系统升级； 3、安全设备的健康检查、健康检查表、基线统计、流量统计、特殊事件报告、日报、周报等日常工作； 4、参与信息安全事件的分析工作和应急处理工作；定期安全评估、扫描和加固，协助进行安全加固； 5、协助制定网络安全规范与方案，优化现有网络安全架构，定期评估网络安全风险，负责针对运行故障、安全事件开展分析和总结，定期开展运行维护、故障处理及安全事件分析； 6、完成上级领导交办的其他任务，并做好与其他部门的协调配合工作。&lt;/p&gt;');
INSERT INTO `ey_recruit_content` VALUES ('6', '97', '1565225697', '1565225697', '广州市', '专科以上学历', '5000-8000元', '全职', '1年以上', '2位', '&lt;p&gt;岗位职责1、组织参与重要项目的创意构思、文案及客户提案, 给予前期提案、设计创意说明及后期结案报告等服务；2、执行并监督所负责项目的创意构思和文案；3、稿件思路清晰，能够完成稿件写作思路规划；4、协助领导进行创意提案，保证工作的顺利推进；5、独立撰写各类稿件（新闻稿、综述稿、评论稿、专访稿等）、策划方案、报告等任职资格1、大专及以上学历；2、一年以上市场策划及文案工作经验；3、能够准确捕捉产品亮点，具备恰如其分的文字表现能力；4、熟悉专业创意方法，思维敏捷，洞察力强，文字功底扎实，语言表达能力强；福利待遇：1.公司为员工提供以市场标杆，以能力、绩效为标准，具有市场竞争力的薪资待遇；2.为员工缴纳社会保险和办理住房公积金、带薪年假、法定节假日、小暑假；3.员工享有专业持续的提升培训机制、不定期的拓展福利、稳健的晋升机制；4.生日福利、传统节日福利、年终奖、年终分红等多种特色福利；试用期工资3500职能类别：网站&lt;/p&gt;');

-- -----------------------------
-- Table structure for `ey_region`
-- -----------------------------
DROP TABLE IF EXISTS `ey_region`;
CREATE TABLE `ey_region` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `name` varchar(32) DEFAULT '' COMMENT '地区名称',
  `level` tinyint(4) DEFAULT '0' COMMENT '地区等级 分省市县区',
  `parent_id` int(10) DEFAULT '0' COMMENT '父id',
  `initial` varchar(5) DEFAULT '' COMMENT '首字母',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `level` (`level`) USING BTREE,
  KEY `initial` (`initial`)
) ENGINE=MyISAM AUTO_INCREMENT=47964 DEFAULT CHARSET=utf8 COMMENT='区域表';

-- -----------------------------
-- Records of `ey_region`
-- -----------------------------
INSERT INTO `ey_region` VALUES ('1', '北京市', '1', '0', 'B');
INSERT INTO `ey_region` VALUES ('2', '北京市', '2', '1', 'B');
INSERT INTO `ey_region` VALUES ('3', '东城区', '3', '2', 'D');
INSERT INTO `ey_region` VALUES ('14', '西城区', '3', '2', 'X');
INSERT INTO `ey_region` VALUES ('22', '崇文区', '3', '2', 'C');
INSERT INTO `ey_region` VALUES ('30', '宣武区', '3', '2', 'X');
INSERT INTO `ey_region` VALUES ('39', '朝阳区', '3', '2', 'C');
INSERT INTO `ey_region` VALUES ('83', '丰台区', '3', '2', 'F');
INSERT INTO `ey_region` VALUES ('105', '石景山区', '3', '2', 'S');
INSERT INTO `ey_region` VALUES ('115', '海淀区', '3', '2', 'H');
INSERT INTO `ey_region` VALUES ('145', '门头沟区', '3', '2', 'M');
INSERT INTO `ey_region` VALUES ('159', '房山区', '3', '2', 'F');
INSERT INTO `ey_region` VALUES ('188', '通州区', '3', '2', 'T');
INSERT INTO `ey_region` VALUES ('204', '顺义区', '3', '2', 'S');
INSERT INTO `ey_region` VALUES ('227', '昌平区', '3', '2', 'C');
INSERT INTO `ey_region` VALUES ('245', '大兴区', '3', '2', 'D');
INSERT INTO `ey_region` VALUES ('264', '怀柔区', '3', '2', 'H');
INSERT INTO `ey_region` VALUES ('281', '平谷区', '3', '2', 'P');
INSERT INTO `ey_region` VALUES ('301', '密云区', '3', '2', 'M');
INSERT INTO `ey_region` VALUES ('322', '延庆区', '3', '2', 'Y');
INSERT INTO `ey_region` VALUES ('338', '天津市', '1', '0', 'T');
INSERT INTO `ey_region` VALUES ('339', '天津市', '2', '338', 'T');
INSERT INTO `ey_region` VALUES ('340', '和平区', '3', '339', 'H');
INSERT INTO `ey_region` VALUES ('347', '河东区', '3', '339', 'H');
INSERT INTO `ey_region` VALUES ('361', '河西区', '3', '339', 'H');
INSERT INTO `ey_region` VALUES ('375', '南开区', '3', '339', 'N');
INSERT INTO `ey_region` VALUES ('388', '河北区', '3', '339', 'H');
INSERT INTO `ey_region` VALUES ('399', '红桥区', '3', '339', 'H');
INSERT INTO `ey_region` VALUES ('410', '塘沽区', '3', '339', 'T');
INSERT INTO `ey_region` VALUES ('425', '汉沽区', '3', '339', 'H');
INSERT INTO `ey_region` VALUES ('435', '大港区', '3', '339', 'D');
INSERT INTO `ey_region` VALUES ('445', '东丽区', '3', '339', 'D');
INSERT INTO `ey_region` VALUES ('460', '西青区', '3', '339', 'X');
INSERT INTO `ey_region` VALUES ('473', '津南区', '3', '339', 'J');
INSERT INTO `ey_region` VALUES ('488', '北辰区', '3', '339', 'B');
INSERT INTO `ey_region` VALUES ('504', '武清区', '3', '339', 'W');
INSERT INTO `ey_region` VALUES ('538', '宝坻区', '3', '339', 'B');
INSERT INTO `ey_region` VALUES ('570', '宁河区', '3', '339', 'N');
INSERT INTO `ey_region` VALUES ('586', '静海区', '3', '339', 'J');
INSERT INTO `ey_region` VALUES ('608', '蓟州区', '3', '339', 'J');
INSERT INTO `ey_region` VALUES ('636', '河北省', '1', '0', 'H');
INSERT INTO `ey_region` VALUES ('637', '石家庄市', '2', '636', 'S');
INSERT INTO `ey_region` VALUES ('638', '市辖区', '3', '637', 'S');
INSERT INTO `ey_region` VALUES ('639', '长安区', '3', '637', 'C');
INSERT INTO `ey_region` VALUES ('651', '桥东区', '3', '637', 'Q');
INSERT INTO `ey_region` VALUES ('662', '桥西区', '3', '637', 'Q');
INSERT INTO `ey_region` VALUES ('675', '新华区', '3', '637', 'X');
INSERT INTO `ey_region` VALUES ('691', '井陉矿区', '3', '637', 'J');
INSERT INTO `ey_region` VALUES ('697', '裕华区', '3', '637', 'Y');
INSERT INTO `ey_region` VALUES ('708', '井陉县', '3', '637', 'J');
INSERT INTO `ey_region` VALUES ('726', '正定县', '3', '637', 'Z');
INSERT INTO `ey_region` VALUES ('736', '栾城县', '3', '637', 'L');
INSERT INTO `ey_region` VALUES ('745', '行唐县', '3', '637', 'X');
INSERT INTO `ey_region` VALUES ('761', '灵寿县', '3', '637', 'L');
INSERT INTO `ey_region` VALUES ('777', '高邑县', '3', '637', 'G');
INSERT INTO `ey_region` VALUES ('783', '深泽县', '3', '637', 'S');
INSERT INTO `ey_region` VALUES ('790', '赞皇县', '3', '637', 'Z');
INSERT INTO `ey_region` VALUES ('802', '无极县', '3', '637', 'W');
INSERT INTO `ey_region` VALUES ('814', '平山县', '3', '637', 'P');
INSERT INTO `ey_region` VALUES ('838', '元氏县', '3', '637', 'Y');
INSERT INTO `ey_region` VALUES ('854', '赵县', '3', '637', 'Z');
INSERT INTO `ey_region` VALUES ('866', '辛集市', '3', '637', 'X');
INSERT INTO `ey_region` VALUES ('882', '藁城市', '3', '637', 'G');
INSERT INTO `ey_region` VALUES ('898', '晋州市', '3', '637', 'J');
INSERT INTO `ey_region` VALUES ('909', '新乐市', '3', '637', 'X');
INSERT INTO `ey_region` VALUES ('922', '鹿泉市', '3', '637', 'L');
INSERT INTO `ey_region` VALUES ('936', '唐山市', '2', '636', 'T');
INSERT INTO `ey_region` VALUES ('937', '市辖区', '3', '936', 'S');
INSERT INTO `ey_region` VALUES ('938', '路南区', '3', '936', 'L');
INSERT INTO `ey_region` VALUES ('952', '路北区', '3', '936', 'L');
INSERT INTO `ey_region` VALUES ('965', '古冶区', '3', '936', 'G');
INSERT INTO `ey_region` VALUES ('977', '开平区', '3', '936', 'K');
INSERT INTO `ey_region` VALUES ('989', '丰南区', '3', '936', 'F');
INSERT INTO `ey_region` VALUES ('1007', '丰润区', '3', '936', 'F');
INSERT INTO `ey_region` VALUES ('1034', '滦县', '3', '936', 'L');
INSERT INTO `ey_region` VALUES ('1048', '滦南县', '3', '936', 'L');
INSERT INTO `ey_region` VALUES ('1067', '乐亭县', '3', '936', 'L');
INSERT INTO `ey_region` VALUES ('1085', '迁西县', '3', '936', 'Q');
INSERT INTO `ey_region` VALUES ('1104', '玉田县', '3', '936', 'Y');
INSERT INTO `ey_region` VALUES ('1125', '唐海县', '3', '936', 'T');
INSERT INTO `ey_region` VALUES ('1140', '遵化市', '3', '936', 'Z');
INSERT INTO `ey_region` VALUES ('1168', '迁安市', '3', '936', 'Q');
INSERT INTO `ey_region` VALUES ('1188', '秦皇岛市', '2', '636', 'Q');
INSERT INTO `ey_region` VALUES ('1189', '市辖区', '3', '1188', 'S');
INSERT INTO `ey_region` VALUES ('1190', '海港区', '3', '1188', 'H');
INSERT INTO `ey_region` VALUES ('1208', '山海关区', '3', '1188', 'S');
INSERT INTO `ey_region` VALUES ('1218', '北戴河区', '3', '1188', 'B');
INSERT INTO `ey_region` VALUES ('1223', '青龙县', '3', '1188', 'Q');
INSERT INTO `ey_region` VALUES ('1249', '昌黎县', '3', '1188', 'C');
INSERT INTO `ey_region` VALUES ('1266', '抚宁县', '3', '1188', 'F');
INSERT INTO `ey_region` VALUES ('1278', '卢龙县', '3', '1188', 'L');
INSERT INTO `ey_region` VALUES ('1291', '邯郸市', '2', '636', 'H');
INSERT INTO `ey_region` VALUES ('1292', '市辖区', '3', '1291', 'S');
INSERT INTO `ey_region` VALUES ('1293', '邯山区', '3', '1291', 'H');
INSERT INTO `ey_region` VALUES ('1307', '丛台区', '3', '1291', 'C');
INSERT INTO `ey_region` VALUES ('1319', '复兴区', '3', '1291', 'F');
INSERT INTO `ey_region` VALUES ('1329', '峰峰矿区', '3', '1291', 'F');
INSERT INTO `ey_region` VALUES ('1339', '邯郸县', '3', '1291', 'H');
INSERT INTO `ey_region` VALUES ('1350', '临漳县', '3', '1291', 'L');
INSERT INTO `ey_region` VALUES ('1365', '成安县', '3', '1291', 'C');
INSERT INTO `ey_region` VALUES ('1375', '大名县', '3', '1291', 'D');
INSERT INTO `ey_region` VALUES ('1396', '涉县', '3', '1291', 'S');
INSERT INTO `ey_region` VALUES ('1414', '磁县', '3', '1291', 'C');
INSERT INTO `ey_region` VALUES ('1434', '肥乡县', '3', '1291', 'F');
INSERT INTO `ey_region` VALUES ('1444', '永年县', '3', '1291', 'Y');
INSERT INTO `ey_region` VALUES ('1465', '邱县', '3', '1291', 'Q');
INSERT INTO `ey_region` VALUES ('1473', '鸡泽县', '3', '1291', 'J');
INSERT INTO `ey_region` VALUES ('1481', '广平县', '3', '1291', 'G');
INSERT INTO `ey_region` VALUES ('1489', '馆陶县', '3', '1291', 'G');
INSERT INTO `ey_region` VALUES ('1498', '魏县', '3', '1291', 'W');
INSERT INTO `ey_region` VALUES ('1520', '曲周县', '3', '1291', 'Q');
INSERT INTO `ey_region` VALUES ('1531', '武安市', '3', '1291', 'W');
INSERT INTO `ey_region` VALUES ('1554', '邢台市', '2', '636', 'X');
INSERT INTO `ey_region` VALUES ('1555', '市辖区', '3', '1554', 'S');
INSERT INTO `ey_region` VALUES ('1556', '桥东区', '3', '1554', 'Q');
INSERT INTO `ey_region` VALUES ('1564', '桥西区', '3', '1554', 'Q');
INSERT INTO `ey_region` VALUES ('1572', '邢台县', '3', '1554', 'X');
INSERT INTO `ey_region` VALUES ('1593', '临城县', '3', '1554', 'L');
INSERT INTO `ey_region` VALUES ('1602', '内邱县', '3', '1554', 'N');
INSERT INTO `ey_region` VALUES ('1612', '柏乡县', '3', '1554', 'B');
INSERT INTO `ey_region` VALUES ('1619', '隆尧县', '3', '1554', 'L');
INSERT INTO `ey_region` VALUES ('1633', '任县', '3', '1554', 'R');
INSERT INTO `ey_region` VALUES ('1642', '南和县', '3', '1554', 'N');
INSERT INTO `ey_region` VALUES ('1651', '宁晋县', '3', '1554', 'N');
INSERT INTO `ey_region` VALUES ('1669', '巨鹿县', '3', '1554', 'J');
INSERT INTO `ey_region` VALUES ('1680', '新河县', '3', '1554', 'X');
INSERT INTO `ey_region` VALUES ('1687', '广宗县', '3', '1554', 'G');
INSERT INTO `ey_region` VALUES ('1696', '平乡县', '3', '1554', 'P');
INSERT INTO `ey_region` VALUES ('1704', '威县', '3', '1554', 'W');
INSERT INTO `ey_region` VALUES ('1721', '清河县', '3', '1554', 'Q');
INSERT INTO `ey_region` VALUES ('1728', '临西县', '3', '1554', 'L');
INSERT INTO `ey_region` VALUES ('1738', '南宫市', '3', '1554', 'N');
INSERT INTO `ey_region` VALUES ('1754', '沙河市', '3', '1554', 'S');
INSERT INTO `ey_region` VALUES ('1772', '保定市', '2', '636', 'B');
INSERT INTO `ey_region` VALUES ('1773', '市辖区', '3', '1772', 'S');
INSERT INTO `ey_region` VALUES ('1774', '新市区', '3', '1772', 'X');
INSERT INTO `ey_region` VALUES ('1787', '北市区', '3', '1772', 'B');
INSERT INTO `ey_region` VALUES ('1796', '南市区', '3', '1772', 'N');
INSERT INTO `ey_region` VALUES ('1806', '满城区', '3', '1772', 'M');
INSERT INTO `ey_region` VALUES ('1820', '清苑区', '3', '1772', 'Q');
INSERT INTO `ey_region` VALUES ('1839', '涞水县', '3', '1772', 'L');
INSERT INTO `ey_region` VALUES ('1856', '阜平县', '3', '1772', 'F');
INSERT INTO `ey_region` VALUES ('1870', '徐水区', '3', '1772', 'X');
INSERT INTO `ey_region` VALUES ('1885', '定兴县', '3', '1772', 'D');
INSERT INTO `ey_region` VALUES ('1902', '唐县', '3', '1772', 'T');
INSERT INTO `ey_region` VALUES ('1923', '高阳县', '3', '1772', 'G');
INSERT INTO `ey_region` VALUES ('1933', '容城县', '3', '1772', 'R');
INSERT INTO `ey_region` VALUES ('1942', '涞源县', '3', '1772', 'L');
INSERT INTO `ey_region` VALUES ('1960', '望都县', '3', '1772', 'W');
INSERT INTO `ey_region` VALUES ('1969', '安新县', '3', '1772', 'A');
INSERT INTO `ey_region` VALUES ('1982', '易县', '3', '1772', 'Y');
INSERT INTO `ey_region` VALUES ('2010', '曲阳县', '3', '1772', 'Q');
INSERT INTO `ey_region` VALUES ('2029', '蠡县', '3', '1772', 'L');
INSERT INTO `ey_region` VALUES ('2043', '顺平县', '3', '1772', 'S');
INSERT INTO `ey_region` VALUES ('2054', '博野县', '3', '1772', 'B');
INSERT INTO `ey_region` VALUES ('2062', '雄县', '3', '1772', 'X');
INSERT INTO `ey_region` VALUES ('2072', '涿州市', '3', '1772', 'Z');
INSERT INTO `ey_region` VALUES ('2088', '定州市', '3', '1772', 'D');
INSERT INTO `ey_region` VALUES ('2114', '安国市', '3', '1772', 'A');
INSERT INTO `ey_region` VALUES ('2126', '高碑店市', '3', '1772', 'G');
INSERT INTO `ey_region` VALUES ('2142', '张家口市', '2', '636', 'Z');
INSERT INTO `ey_region` VALUES ('2143', '市辖区', '3', '2142', 'S');
INSERT INTO `ey_region` VALUES ('2144', '桥东区', '3', '2142', 'Q');
INSERT INTO `ey_region` VALUES ('2154', '桥西区', '3', '2142', 'Q');
INSERT INTO `ey_region` VALUES ('2164', '宣化区', '3', '2142', 'X');
INSERT INTO `ey_region` VALUES ('2176', '下花园区', '3', '2142', 'X');
INSERT INTO `ey_region` VALUES ('2183', '宣化县', '3', '2142', 'X');
INSERT INTO `ey_region` VALUES ('2198', '张北县', '3', '2142', 'Z');
INSERT INTO `ey_region` VALUES ('2220', '康保县', '3', '2142', 'K');
INSERT INTO `ey_region` VALUES ('2237', '沽源县', '3', '2142', 'G');
INSERT INTO `ey_region` VALUES ('2256', '尚义县', '3', '2142', 'S');
INSERT INTO `ey_region` VALUES ('2271', '蔚县', '3', '2142', 'W');
INSERT INTO `ey_region` VALUES ('2294', '阳原县', '3', '2142', 'Y');
INSERT INTO `ey_region` VALUES ('2309', '怀安县', '3', '2142', 'H');
INSERT INTO `ey_region` VALUES ('2321', '万全县', '3', '2142', 'W');
INSERT INTO `ey_region` VALUES ('2333', '怀来县', '3', '2142', 'H');
INSERT INTO `ey_region` VALUES ('2351', '涿鹿县', '3', '2142', 'Z');
INSERT INTO `ey_region` VALUES ('2369', '赤城县', '3', '2142', 'C');
INSERT INTO `ey_region` VALUES ('2388', '崇礼县', '3', '2142', 'C');
INSERT INTO `ey_region` VALUES ('2400', '承德市', '2', '636', 'C');
INSERT INTO `ey_region` VALUES ('2401', '市辖区', '3', '2400', 'S');
INSERT INTO `ey_region` VALUES ('2402', '双桥区', '3', '2400', 'S');
INSERT INTO `ey_region` VALUES ('2415', '双滦区', '3', '2400', 'S');
INSERT INTO `ey_region` VALUES ('2422', '鹰手营子矿区', '3', '2400', 'Y');
INSERT INTO `ey_region` VALUES ('2427', '承德县', '3', '2400', 'C');
INSERT INTO `ey_region` VALUES ('2453', '兴隆县', '3', '2400', 'X');
INSERT INTO `ey_region` VALUES ('2474', '平泉县', '3', '2400', 'P');
INSERT INTO `ey_region` VALUES ('2494', '滦平县', '3', '2400', 'L');
INSERT INTO `ey_region` VALUES ('2517', '隆化县', '3', '2400', 'L');
INSERT INTO `ey_region` VALUES ('2543', '丰宁县', '3', '2400', 'F');
INSERT INTO `ey_region` VALUES ('2570', '宽城县', '3', '2400', 'K');
INSERT INTO `ey_region` VALUES ('2589', '围场县', '3', '2400', 'W');
INSERT INTO `ey_region` VALUES ('2629', '沧州市', '2', '636', 'C');
INSERT INTO `ey_region` VALUES ('2630', '市辖区', '3', '2629', 'S');
INSERT INTO `ey_region` VALUES ('2631', '新华区', '3', '2629', 'X');
INSERT INTO `ey_region` VALUES ('2639', '运河区', '3', '2629', 'Y');
INSERT INTO `ey_region` VALUES ('2648', '沧县', '3', '2629', 'C');
INSERT INTO `ey_region` VALUES ('2668', '青县', '3', '2629', 'Q');
INSERT INTO `ey_region` VALUES ('2680', '东光县', '3', '2629', 'D');
INSERT INTO `ey_region` VALUES ('2690', '海兴县', '3', '2629', 'H');
INSERT INTO `ey_region` VALUES ('2701', '盐山县', '3', '2629', 'Y');
INSERT INTO `ey_region` VALUES ('2714', '肃宁县', '3', '2629', 'S');
INSERT INTO `ey_region` VALUES ('2724', '南皮县', '3', '2629', 'N');
INSERT INTO `ey_region` VALUES ('2734', '吴桥县', '3', '2629', 'W');
INSERT INTO `ey_region` VALUES ('2745', '献县', '3', '2629', 'X');
INSERT INTO `ey_region` VALUES ('2765', '孟村县', '3', '2629', 'M');
INSERT INTO `ey_region` VALUES ('2772', '泊头市', '3', '2629', 'B');
INSERT INTO `ey_region` VALUES ('2788', '任邱市', '3', '2629', 'R');
INSERT INTO `ey_region` VALUES ('2809', '黄骅市', '3', '2629', 'H');
INSERT INTO `ey_region` VALUES ('2828', '河间市', '3', '2629', 'H');
INSERT INTO `ey_region` VALUES ('2849', '廊坊市', '2', '636', 'L');
INSERT INTO `ey_region` VALUES ('2850', '市辖区', '3', '2849', 'S');
INSERT INTO `ey_region` VALUES ('2851', '安次区', '3', '2849', 'A');
INSERT INTO `ey_region` VALUES ('2862', '广阳区', '3', '2849', 'G');
INSERT INTO `ey_region` VALUES ('2873', '固安县', '3', '2849', 'G');
INSERT INTO `ey_region` VALUES ('2883', '永清县', '3', '2849', 'Y');
INSERT INTO `ey_region` VALUES ('2895', '香河县', '3', '2849', 'X');
INSERT INTO `ey_region` VALUES ('2906', '大城县', '3', '2849', 'D');
INSERT INTO `ey_region` VALUES ('2918', '文安县', '3', '2849', 'W');
INSERT INTO `ey_region` VALUES ('2932', '大厂县', '3', '2849', 'D');
INSERT INTO `ey_region` VALUES ('2939', '霸州市', '3', '2849', 'B');
INSERT INTO `ey_region` VALUES ('2953', '三河市', '3', '2849', 'S');
INSERT INTO `ey_region` VALUES ('2968', '衡水市', '2', '636', 'H');
INSERT INTO `ey_region` VALUES ('2969', '市辖区', '3', '2968', 'S');
INSERT INTO `ey_region` VALUES ('2970', '桃城区', '3', '2968', 'T');
INSERT INTO `ey_region` VALUES ('2983', '枣强县', '3', '2968', 'Z');
INSERT INTO `ey_region` VALUES ('2995', '武邑县', '3', '2968', 'W');
INSERT INTO `ey_region` VALUES ('3005', '武强县', '3', '2968', 'W');
INSERT INTO `ey_region` VALUES ('3012', '饶阳县', '3', '2968', 'R');
INSERT INTO `ey_region` VALUES ('3020', '安平县', '3', '2968', 'A');
INSERT INTO `ey_region` VALUES ('3029', '故城县', '3', '2968', 'G');
INSERT INTO `ey_region` VALUES ('3043', '景县', '3', '2968', 'J');
INSERT INTO `ey_region` VALUES ('3060', '阜城县', '3', '2968', 'F');
INSERT INTO `ey_region` VALUES ('3071', '冀州市', '3', '2968', 'J');
INSERT INTO `ey_region` VALUES ('3083', '深州市', '3', '2968', 'S');
INSERT INTO `ey_region` VALUES ('3102', '山西', '1', '0', 'S');
INSERT INTO `ey_region` VALUES ('3103', '太原市', '2', '3102', 'T');
INSERT INTO `ey_region` VALUES ('3104', '市辖区', '3', '3103', 'S');
INSERT INTO `ey_region` VALUES ('3105', '小店区(人口含高新经济区)', '3', '3103', 'X');
INSERT INTO `ey_region` VALUES ('3117', '迎泽区', '3', '3103', 'Y');
INSERT INTO `ey_region` VALUES ('3126', '杏花岭区', '3', '3103', 'X');
INSERT INTO `ey_region` VALUES ('3140', '尖草坪区', '3', '3103', 'J');
INSERT INTO `ey_region` VALUES ('3155', '万柏林区', '3', '3103', 'W');
INSERT INTO `ey_region` VALUES ('3171', '晋源区', '3', '3103', 'J');
INSERT INTO `ey_region` VALUES ('3178', '清徐县', '3', '3103', 'Q');
INSERT INTO `ey_region` VALUES ('3188', '阳曲县', '3', '3103', 'Y');
INSERT INTO `ey_region` VALUES ('3200', '娄烦县', '3', '3103', 'L');
INSERT INTO `ey_region` VALUES ('3209', '古交市', '3', '3103', 'G');
INSERT INTO `ey_region` VALUES ('3224', '大同市', '2', '3102', 'D');
INSERT INTO `ey_region` VALUES ('3225', '市辖区', '3', '3224', 'S');
INSERT INTO `ey_region` VALUES ('3226', '大同市城区', '3', '3224', 'D');
INSERT INTO `ey_region` VALUES ('3241', '矿区', '3', '3224', 'K');
INSERT INTO `ey_region` VALUES ('3266', '南郊区', '3', '3224', 'N');
INSERT INTO `ey_region` VALUES ('3277', '新荣区', '3', '3224', 'X');
INSERT INTO `ey_region` VALUES ('3286', '阳高县', '3', '3224', 'Y');
INSERT INTO `ey_region` VALUES ('3300', '天镇县', '3', '3224', 'T');
INSERT INTO `ey_region` VALUES ('3312', '广灵县', '3', '3224', 'G');
INSERT INTO `ey_region` VALUES ('3322', '灵丘县', '3', '3224', 'L');
INSERT INTO `ey_region` VALUES ('3335', '浑源县', '3', '3224', 'H');
INSERT INTO `ey_region` VALUES ('3354', '左云县', '3', '3224', 'Z');
INSERT INTO `ey_region` VALUES ('3364', '大同县', '3', '3224', 'D');
INSERT INTO `ey_region` VALUES ('3379', '阳泉市', '2', '3102', 'Y');
INSERT INTO `ey_region` VALUES ('3380', '市辖区', '3', '3379', 'S');
INSERT INTO `ey_region` VALUES ('3381', '城区', '3', '3379', 'C');
INSERT INTO `ey_region` VALUES ('3388', '矿区', '3', '3379', 'K');
INSERT INTO `ey_region` VALUES ('3395', '郊区', '3', '3379', 'J');
INSERT INTO `ey_region` VALUES ('3405', '平定县', '3', '3379', 'P');
INSERT INTO `ey_region` VALUES ('3416', '盂县', '3', '3379', 'Y');
INSERT INTO `ey_region` VALUES ('3431', '长治市', '2', '3102', 'C');
INSERT INTO `ey_region` VALUES ('3432', '市辖区', '3', '3431', 'S');
INSERT INTO `ey_region` VALUES ('3433', '长治市城区', '3', '3431', 'C');
INSERT INTO `ey_region` VALUES ('3445', '长治市郊区', '3', '3431', 'C');
INSERT INTO `ey_region` VALUES ('3454', '长治县', '3', '3431', 'C');
INSERT INTO `ey_region` VALUES ('3466', '襄垣县', '3', '3431', 'X');
INSERT INTO `ey_region` VALUES ('3478', '屯留县', '3', '3431', 'T');
INSERT INTO `ey_region` VALUES ('3493', '平顺县', '3', '3431', 'P');
INSERT INTO `ey_region` VALUES ('3506', '黎城县', '3', '3431', 'L');
INSERT INTO `ey_region` VALUES ('3516', '壶关县', '3', '3431', 'H');
INSERT INTO `ey_region` VALUES ('3530', '长子县', '3', '3431', 'C');
INSERT INTO `ey_region` VALUES ('3543', '武乡县', '3', '3431', 'W');
INSERT INTO `ey_region` VALUES ('3558', '沁县', '3', '3431', 'Q');
INSERT INTO `ey_region` VALUES ('3572', '沁源县', '3', '3431', 'Q');
INSERT INTO `ey_region` VALUES ('3587', '潞城市', '3', '3431', 'L');
INSERT INTO `ey_region` VALUES ('3597', '晋城市', '2', '3102', 'J');
INSERT INTO `ey_region` VALUES ('3598', '市辖区', '3', '3597', 'S');
INSERT INTO `ey_region` VALUES ('3599', '晋城市城区', '3', '3597', 'J');
INSERT INTO `ey_region` VALUES ('3608', '沁水县', '3', '3597', 'Q');
INSERT INTO `ey_region` VALUES ('3623', '阳城县', '3', '3597', 'Y');
INSERT INTO `ey_region` VALUES ('3642', '陵川县', '3', '3597', 'L');
INSERT INTO `ey_region` VALUES ('3655', '泽州县', '3', '3597', 'Z');
INSERT INTO `ey_region` VALUES ('3673', '高平市', '3', '3597', 'G');
INSERT INTO `ey_region` VALUES ('3690', '朔州市', '2', '3102', 'S');
INSERT INTO `ey_region` VALUES ('3691', '市辖区', '3', '3690', 'S');
INSERT INTO `ey_region` VALUES ('3692', '朔城区', '3', '3690', 'S');
INSERT INTO `ey_region` VALUES ('3709', '平鲁区', '3', '3690', 'P');
INSERT INTO `ey_region` VALUES ('3723', '山阴县', '3', '3690', 'S');
INSERT INTO `ey_region` VALUES ('3739', '应县', '3', '3690', 'Y');
INSERT INTO `ey_region` VALUES ('3752', '右玉县', '3', '3690', 'Y');
INSERT INTO `ey_region` VALUES ('3763', '怀仁县', '3', '3690', 'H');
INSERT INTO `ey_region` VALUES ('3776', '晋中市', '2', '3102', 'J');
INSERT INTO `ey_region` VALUES ('3777', '市辖区', '3', '3776', 'S');
INSERT INTO `ey_region` VALUES ('3778', '榆次区', '3', '3776', 'Y');
INSERT INTO `ey_region` VALUES ('3799', '榆社县', '3', '3776', 'Y');
INSERT INTO `ey_region` VALUES ('3810', '左权县', '3', '3776', 'Z');
INSERT INTO `ey_region` VALUES ('3822', '和顺县', '3', '3776', 'H');
INSERT INTO `ey_region` VALUES ('3833', '昔阳县', '3', '3776', 'X');
INSERT INTO `ey_region` VALUES ('3846', '寿阳县', '3', '3776', 'S');
INSERT INTO `ey_region` VALUES ('3861', '太谷县', '3', '3776', 'T');
INSERT INTO `ey_region` VALUES ('3871', '祁县', '3', '3776', 'Q');
INSERT INTO `ey_region` VALUES ('3880', '平遥县', '3', '3776', 'P');
INSERT INTO `ey_region` VALUES ('3895', '灵石县', '3', '3776', 'L');
INSERT INTO `ey_region` VALUES ('3908', '介休市', '3', '3776', 'J');
INSERT INTO `ey_region` VALUES ('3925', '运城市', '2', '3102', 'Y');
INSERT INTO `ey_region` VALUES ('3926', '市辖区', '3', '3925', 'S');
INSERT INTO `ey_region` VALUES ('3927', '盐湖区', '3', '3925', 'Y');
INSERT INTO `ey_region` VALUES ('3950', '临猗县', '3', '3925', 'L');
INSERT INTO `ey_region` VALUES ('3967', '万荣县', '3', '3925', 'W');
INSERT INTO `ey_region` VALUES ('3982', '闻喜县', '3', '3925', 'W');
INSERT INTO `ey_region` VALUES ('3996', '稷山县', '3', '3925', 'J');
INSERT INTO `ey_region` VALUES ('4004', '新绛县', '3', '3925', 'X');
INSERT INTO `ey_region` VALUES ('4013', '绛县', '3', '3925', 'J');
INSERT INTO `ey_region` VALUES ('4024', '垣曲县', '3', '3925', 'Y');
INSERT INTO `ey_region` VALUES ('4036', '夏县', '3', '3925', 'X');
INSERT INTO `ey_region` VALUES ('4048', '平陆县', '3', '3925', 'P');
INSERT INTO `ey_region` VALUES ('4059', '芮城县', '3', '3925', 'R');
INSERT INTO `ey_region` VALUES ('4070', '永济市', '3', '3925', 'Y');
INSERT INTO `ey_region` VALUES ('4082', '河津市', '3', '3925', 'H');
INSERT INTO `ey_region` VALUES ('4093', '忻州市', '2', '3102', 'X');
INSERT INTO `ey_region` VALUES ('4094', '市辖区', '3', '4093', 'S');
INSERT INTO `ey_region` VALUES ('4095', '忻府区', '3', '4093', 'X');
INSERT INTO `ey_region` VALUES ('4116', '定襄县', '3', '4093', 'D');
INSERT INTO `ey_region` VALUES ('4126', '五台县', '3', '4093', 'W');
INSERT INTO `ey_region` VALUES ('4146', '代县', '3', '4093', 'D');
INSERT INTO `ey_region` VALUES ('4158', '繁峙县', '3', '4093', 'F');
INSERT INTO `ey_region` VALUES ('4172', '宁武县', '3', '4093', 'N');
INSERT INTO `ey_region` VALUES ('4189', '静乐县', '3', '4093', 'J');
INSERT INTO `ey_region` VALUES ('4204', '神池县', '3', '4093', 'S');
INSERT INTO `ey_region` VALUES ('4215', '五寨县', '3', '4093', 'W');
INSERT INTO `ey_region` VALUES ('4228', '岢岚县', '3', '4093', 'K');
INSERT INTO `ey_region` VALUES ('4241', '河曲县', '3', '4093', 'H');
INSERT INTO `ey_region` VALUES ('4255', '保德县', '3', '4093', 'B');
INSERT INTO `ey_region` VALUES ('4269', '偏关县', '3', '4093', 'P');
INSERT INTO `ey_region` VALUES ('4280', '原平市', '3', '4093', 'Y');
INSERT INTO `ey_region` VALUES ('4304', '临汾市', '2', '3102', 'L');
INSERT INTO `ey_region` VALUES ('4305', '市辖区', '3', '4304', 'S');
INSERT INTO `ey_region` VALUES ('4306', '尧都区', '3', '4304', 'Y');
INSERT INTO `ey_region` VALUES ('4333', '曲沃县', '3', '4304', 'Q');
INSERT INTO `ey_region` VALUES ('4341', '翼城县', '3', '4304', 'Y');
INSERT INTO `ey_region` VALUES ('4352', '襄汾县', '3', '4304', 'X');
INSERT INTO `ey_region` VALUES ('4366', '洪洞县', '3', '4304', 'H');
INSERT INTO `ey_region` VALUES ('4383', '古县', '3', '4304', 'G');
INSERT INTO `ey_region` VALUES ('4391', '安泽县', '3', '4304', 'A');
INSERT INTO `ey_region` VALUES ('4399', '浮山县', '3', '4304', 'F');
INSERT INTO `ey_region` VALUES ('4409', '吉县', '3', '4304', 'J');
INSERT INTO `ey_region` VALUES ('4418', '乡宁县', '3', '4304', 'X');
INSERT INTO `ey_region` VALUES ('4429', '大宁县', '3', '4304', 'D');
INSERT INTO `ey_region` VALUES ('4436', '隰县', '3', '4304', 'X');
INSERT INTO `ey_region` VALUES ('4445', '永和县', '3', '4304', 'Y');
INSERT INTO `ey_region` VALUES ('4453', '蒲县', '3', '4304', 'P');
INSERT INTO `ey_region` VALUES ('4463', '汾西县', '3', '4304', 'F');
INSERT INTO `ey_region` VALUES ('4472', '侯马市', '3', '4304', 'H');
INSERT INTO `ey_region` VALUES ('4481', '霍州市', '3', '4304', 'H');
INSERT INTO `ey_region` VALUES ('4494', '吕梁市', '2', '3102', 'L');
INSERT INTO `ey_region` VALUES ('4495', '市辖区', '3', '4494', 'S');
INSERT INTO `ey_region` VALUES ('4496', '离石区', '3', '4494', 'L');
INSERT INTO `ey_region` VALUES ('4509', '文水县', '3', '4494', 'W');
INSERT INTO `ey_region` VALUES ('4522', '交城县', '3', '4494', 'J');
INSERT INTO `ey_region` VALUES ('4533', '兴县', '3', '4494', 'X');
INSERT INTO `ey_region` VALUES ('4551', '临县', '3', '4494', 'L');
INSERT INTO `ey_region` VALUES ('4575', '柳林县', '3', '4494', 'L');
INSERT INTO `ey_region` VALUES ('4591', '石楼县', '3', '4494', 'S');
INSERT INTO `ey_region` VALUES ('4601', '岚县', '3', '4494', 'L');
INSERT INTO `ey_region` VALUES ('4614', '方山县', '3', '4494', 'F');
INSERT INTO `ey_region` VALUES ('4622', '中阳县', '3', '4494', 'Z');
INSERT INTO `ey_region` VALUES ('4630', '交口县', '3', '4494', 'J');
INSERT INTO `ey_region` VALUES ('4638', '孝义市', '3', '4494', 'X');
INSERT INTO `ey_region` VALUES ('4655', '汾阳市', '3', '4494', 'F');
INSERT INTO `ey_region` VALUES ('4670', '内蒙古', '1', '0', 'N');
INSERT INTO `ey_region` VALUES ('4671', '呼和浩特市', '2', '4670', 'H');
INSERT INTO `ey_region` VALUES ('4672', '市辖区', '3', '4671', 'S');
INSERT INTO `ey_region` VALUES ('4673', '新城区', '3', '4671', 'X');
INSERT INTO `ey_region` VALUES ('4684', '回民区', '3', '4671', 'H');
INSERT INTO `ey_region` VALUES ('4693', '玉泉区', '3', '4671', 'Y');
INSERT INTO `ey_region` VALUES ('4702', '赛罕区', '3', '4671', 'S');
INSERT INTO `ey_region` VALUES ('4715', '土左旗', '3', '4671', 'T');
INSERT INTO `ey_region` VALUES ('4727', '托克托县', '3', '4671', 'T');
INSERT INTO `ey_region` VALUES ('4733', '和林格尔县', '3', '4671', 'H');
INSERT INTO `ey_region` VALUES ('4742', '清水河县', '3', '4671', 'Q');
INSERT INTO `ey_region` VALUES ('4749', '武川县', '3', '4671', 'W');
INSERT INTO `ey_region` VALUES ('4759', '包头市', '2', '4670', 'B');
INSERT INTO `ey_region` VALUES ('4760', '市辖区', '3', '4759', 'S');
INSERT INTO `ey_region` VALUES ('4761', '东河区', '3', '4759', 'D');
INSERT INTO `ey_region` VALUES ('4775', '昆都仑区', '3', '4759', 'K');
INSERT INTO `ey_region` VALUES ('4791', '青山区', '3', '4759', 'Q');
INSERT INTO `ey_region` VALUES ('4803', '石拐区', '3', '4759', 'S');
INSERT INTO `ey_region` VALUES ('4810', '白云鄂博矿区', '3', '4759', 'B');
INSERT INTO `ey_region` VALUES ('4813', '九原区', '3', '4759', 'J');
INSERT INTO `ey_region` VALUES ('4823', '土默特右旗', '3', '4759', 'T');
INSERT INTO `ey_region` VALUES ('4833', '固阳县', '3', '4759', 'G');
INSERT INTO `ey_region` VALUES ('4840', '达茂联合旗', '3', '4759', 'D');
INSERT INTO `ey_region` VALUES ('4849', '乌海市', '2', '4670', 'W');
INSERT INTO `ey_region` VALUES ('4850', '乌海市辖区', '3', '4849', 'W');
INSERT INTO `ey_region` VALUES ('4851', '海勃湾区', '3', '4849', 'H');
INSERT INTO `ey_region` VALUES ('4859', '海南区', '3', '4849', 'H');
INSERT INTO `ey_region` VALUES ('4865', '乌达区', '3', '4849', 'W');
INSERT INTO `ey_region` VALUES ('4874', '赤峰市', '2', '4670', 'C');
INSERT INTO `ey_region` VALUES ('4875', '市辖区', '3', '4874', 'S');
INSERT INTO `ey_region` VALUES ('4876', '红山区', '3', '4874', 'H');
INSERT INTO `ey_region` VALUES ('4888', '元宝山区', '3', '4874', 'Y');
INSERT INTO `ey_region` VALUES ('4896', '松山区', '3', '4874', 'S');
INSERT INTO `ey_region` VALUES ('4919', '阿鲁科尔沁旗', '3', '4874', 'A');
INSERT INTO `ey_region` VALUES ('4932', '巴林左旗', '3', '4874', 'B');
INSERT INTO `ey_region` VALUES ('4944', '巴林右旗', '3', '4874', 'B');
INSERT INTO `ey_region` VALUES ('4953', '林西县', '3', '4874', 'L');
INSERT INTO `ey_region` VALUES ('4963', '克什克腾旗', '3', '4874', 'K');
INSERT INTO `ey_region` VALUES ('4975', '翁牛特旗', '3', '4874', 'W');
INSERT INTO `ey_region` VALUES ('4988', '喀喇沁旗', '3', '4874', 'K');
INSERT INTO `ey_region` VALUES ('4999', '宁城县', '3', '4874', 'N');
INSERT INTO `ey_region` VALUES ('5013', '敖汉旗', '3', '4874', 'A');
INSERT INTO `ey_region` VALUES ('5029', '通辽市', '2', '4670', 'T');
INSERT INTO `ey_region` VALUES ('5030', '市辖区', '3', '5029', 'S');
INSERT INTO `ey_region` VALUES ('5031', '科尔沁区', '3', '5029', 'K');
INSERT INTO `ey_region` VALUES ('5062', '科尔沁左翼中旗', '3', '5029', 'K');
INSERT INTO `ey_region` VALUES ('5079', '科左后旗', '3', '5029', 'K');
INSERT INTO `ey_region` VALUES ('5104', '开鲁县', '3', '5029', 'K');
INSERT INTO `ey_region` VALUES ('5118', '库伦旗', '3', '5029', 'K');
INSERT INTO `ey_region` VALUES ('5125', '奈曼旗', '3', '5029', 'N');
INSERT INTO `ey_region` VALUES ('5139', '扎鲁特旗', '3', '5029', 'Z');
INSERT INTO `ey_region` VALUES ('5155', '霍林郭勒市', '3', '5029', 'H');
INSERT INTO `ey_region` VALUES ('5162', '鄂尔多斯市', '2', '4670', 'E');
INSERT INTO `ey_region` VALUES ('5163', '东胜区', '3', '5162', 'D');
INSERT INTO `ey_region` VALUES ('5176', '达拉特旗', '3', '5162', 'D');
INSERT INTO `ey_region` VALUES ('5185', '准格尔旗', '3', '5162', 'Z');
INSERT INTO `ey_region` VALUES ('5195', '鄂托克前旗', '3', '5162', 'E');
INSERT INTO `ey_region` VALUES ('5201', '鄂托克旗', '3', '5162', 'E');
INSERT INTO `ey_region` VALUES ('5210', '杭锦旗', '3', '5162', 'H');
INSERT INTO `ey_region` VALUES ('5219', '乌审旗', '3', '5162', 'W');
INSERT INTO `ey_region` VALUES ('5228', '伊金霍洛旗', '3', '5162', 'Y');
INSERT INTO `ey_region` VALUES ('5236', '呼伦贝尔市', '2', '4670', 'H');
INSERT INTO `ey_region` VALUES ('5237', '市辖区', '3', '5236', 'S');
INSERT INTO `ey_region` VALUES ('5238', '海拉尔区', '3', '5236', 'H');
INSERT INTO `ey_region` VALUES ('5249', '阿荣旗', '3', '5236', 'A');
INSERT INTO `ey_region` VALUES ('5262', '莫力达瓦旗', '3', '5236', 'M');
INSERT INTO `ey_region` VALUES ('5277', '鄂伦春旗', '3', '5236', 'E');
INSERT INTO `ey_region` VALUES ('5303', '鄂温旗', '3', '5236', 'E');
INSERT INTO `ey_region` VALUES ('5314', '陈巴尔虎旗镇', '3', '5236', 'C');
INSERT INTO `ey_region` VALUES ('5323', '新巴尔虎左旗', '3', '5236', 'X');
INSERT INTO `ey_region` VALUES ('5330', '新巴尔虎右旗', '3', '5236', 'X');
INSERT INTO `ey_region` VALUES ('5337', '满洲里市', '3', '5236', 'M');
INSERT INTO `ey_region` VALUES ('5354', '牙克石市', '3', '5236', 'Y');
INSERT INTO `ey_region` VALUES ('5371', '扎兰屯市', '3', '5236', 'Z');
INSERT INTO `ey_region` VALUES ('5397', '额尔古纳市', '3', '5236', 'E');
INSERT INTO `ey_region` VALUES ('5410', '根河市', '3', '5236', 'G');
INSERT INTO `ey_region` VALUES ('5418', '巴彦淖尔市', '2', '4670', 'B');
INSERT INTO `ey_region` VALUES ('5419', '市辖区', '3', '5418', 'S');
INSERT INTO `ey_region` VALUES ('5420', '临河区', '3', '5418', 'L');
INSERT INTO `ey_region` VALUES ('5440', '五原县', '3', '5418', 'W');
INSERT INTO `ey_region` VALUES ('5450', '磴口县', '3', '5418', 'D');
INSERT INTO `ey_region` VALUES ('5461', '乌拉特前旗', '3', '5418', 'W');
INSERT INTO `ey_region` VALUES ('5477', '乌拉特中旗', '3', '5418', 'W');
INSERT INTO `ey_region` VALUES ('5489', '乌拉特后旗', '3', '5418', 'W');
INSERT INTO `ey_region` VALUES ('5495', '杭锦后旗', '3', '5418', 'H');
INSERT INTO `ey_region` VALUES ('5505', '乌兰察布市', '2', '4670', 'W');
INSERT INTO `ey_region` VALUES ('5506', '市辖区', '3', '5505', 'S');
INSERT INTO `ey_region` VALUES ('5507', '集宁区', '3', '5505', 'J');
INSERT INTO `ey_region` VALUES ('5518', '卓资县', '3', '5505', 'Z');
INSERT INTO `ey_region` VALUES ('5526', '化德县', '3', '5505', 'H');
INSERT INTO `ey_region` VALUES ('5532', '商都县', '3', '5505', 'S');
INSERT INTO `ey_region` VALUES ('5542', '兴和县', '3', '5505', 'X');
INSERT INTO `ey_region` VALUES ('5551', '凉城县', '3', '5505', 'L');
INSERT INTO `ey_region` VALUES ('5562', '察哈尔右翼前旗', '3', '5505', 'C');
INSERT INTO `ey_region` VALUES ('5571', '察右中旗', '3', '5505', 'C');
INSERT INTO `ey_region` VALUES ('5582', '察哈尔右翼后旗', '3', '5505', 'C');
INSERT INTO `ey_region` VALUES ('5590', '四子王旗', '3', '5505', 'S');
INSERT INTO `ey_region` VALUES ('5603', '丰镇市', '3', '5505', 'F');
INSERT INTO `ey_region` VALUES ('5616', '兴安盟', '2', '4670', 'X');
INSERT INTO `ey_region` VALUES ('5617', '乌兰浩特市', '3', '5616', 'W');
INSERT INTO `ey_region` VALUES ('5629', '阿尔山市', '3', '5616', 'A');
INSERT INTO `ey_region` VALUES ('5636', '科右前旗', '3', '5616', 'K');
INSERT INTO `ey_region` VALUES ('5655', '科右中旗', '3', '5616', 'K');
INSERT INTO `ey_region` VALUES ('5677', '扎赉特旗', '3', '5616', 'Z');
INSERT INTO `ey_region` VALUES ('5692', '突泉县', '3', '5616', 'T');
INSERT INTO `ey_region` VALUES ('5702', '锡林郭勒盟', '2', '4670', 'X');
INSERT INTO `ey_region` VALUES ('5703', '二连浩特市', '3', '5702', 'E');
INSERT INTO `ey_region` VALUES ('5709', '锡林浩特市', '3', '5702', 'X');
INSERT INTO `ey_region` VALUES ('5723', '阿巴嘎旗', '3', '5702', 'A');
INSERT INTO `ey_region` VALUES ('5731', '苏尼特左旗', '3', '5702', 'S');
INSERT INTO `ey_region` VALUES ('5738', '苏尼特右旗', '3', '5702', 'S');
INSERT INTO `ey_region` VALUES ('5745', '东乌珠穆沁旗', '3', '5702', 'D');
INSERT INTO `ey_region` VALUES ('5758', '西乌珠穆沁旗', '3', '5702', 'X');
INSERT INTO `ey_region` VALUES ('5766', '太仆寺旗', '3', '5702', 'T');
INSERT INTO `ey_region` VALUES ('5774', '镶黄旗', '3', '5702', 'X');
INSERT INTO `ey_region` VALUES ('5778', '正镶白旗', '3', '5702', 'Z');
INSERT INTO `ey_region` VALUES ('5785', '正蓝旗', '3', '5702', 'Z');
INSERT INTO `ey_region` VALUES ('5794', '多伦县', '3', '5702', 'D');
INSERT INTO `ey_region` VALUES ('5799', '阿拉善盟', '2', '4670', 'A');
INSERT INTO `ey_region` VALUES ('5800', '阿拉善左旗', '3', '5799', 'A');
INSERT INTO `ey_region` VALUES ('5814', '阿拉善右旗', '3', '5799', 'A');
INSERT INTO `ey_region` VALUES ('5820', '额济纳旗', '3', '5799', 'E');
INSERT INTO `ey_region` VALUES ('5827', '辽宁省', '1', '0', 'L');
INSERT INTO `ey_region` VALUES ('5828', '沈阳市', '2', '5827', 'S');
INSERT INTO `ey_region` VALUES ('5829', '市辖区', '3', '5828', 'S');
INSERT INTO `ey_region` VALUES ('5830', '和平区', '3', '5828', 'H');
INSERT INTO `ey_region` VALUES ('5848', '沈河区', '3', '5828', 'S');
INSERT INTO `ey_region` VALUES ('5859', '大东区', '3', '5828', 'D');
INSERT INTO `ey_region` VALUES ('5873', '皇姑区', '3', '5828', 'H');
INSERT INTO `ey_region` VALUES ('5894', '铁西区', '3', '5828', 'T');
INSERT INTO `ey_region` VALUES ('5909', '苏家屯区', '3', '5828', 'S');
INSERT INTO `ey_region` VALUES ('5934', '东陵区', '3', '5828', 'D');
INSERT INTO `ey_region` VALUES ('5954', '新城子区', '3', '5828', 'X');
INSERT INTO `ey_region` VALUES ('5975', '于洪区', '3', '5828', 'Y');
INSERT INTO `ey_region` VALUES ('5998', '辽中县', '3', '5828', 'L');
INSERT INTO `ey_region` VALUES ('6020', '康平县', '3', '5828', 'K');
INSERT INTO `ey_region` VALUES ('6038', '法库县', '3', '5828', 'F');
INSERT INTO `ey_region` VALUES ('6058', '新民市', '3', '5828', 'X');
INSERT INTO `ey_region` VALUES ('6088', '大连市', '2', '5827', 'D');
INSERT INTO `ey_region` VALUES ('6089', '市辖区', '3', '6088', 'S');
INSERT INTO `ey_region` VALUES ('6090', '中山区', '3', '6088', 'Z');
INSERT INTO `ey_region` VALUES ('6099', '西岗区', '3', '6088', 'X');
INSERT INTO `ey_region` VALUES ('6107', '沙河口区', '3', '6088', 'S');
INSERT INTO `ey_region` VALUES ('6117', '甘井子区', '3', '6088', 'G');
INSERT INTO `ey_region` VALUES ('6137', '旅顺口区', '3', '6088', 'L');
INSERT INTO `ey_region` VALUES ('6153', '金州区', '3', '6088', 'J');
INSERT INTO `ey_region` VALUES ('6178', '长海县', '3', '6088', 'C');
INSERT INTO `ey_region` VALUES ('6184', '瓦房店市', '3', '6088', 'W');
INSERT INTO `ey_region` VALUES ('6217', '普兰店市', '3', '6088', 'P');
INSERT INTO `ey_region` VALUES ('6239', '庄河市', '3', '6088', 'Z');
INSERT INTO `ey_region` VALUES ('6266', '鞍山市', '2', '5827', 'A');
INSERT INTO `ey_region` VALUES ('6267', '市辖区', '3', '6266', 'S');
INSERT INTO `ey_region` VALUES ('6268', '铁东区', '3', '6266', 'T');
INSERT INTO `ey_region` VALUES ('6282', '铁西区', '3', '6266', 'T');
INSERT INTO `ey_region` VALUES ('6293', '立山区', '3', '6266', 'L');
INSERT INTO `ey_region` VALUES ('6303', '千山区', '3', '6266', 'Q');
INSERT INTO `ey_region` VALUES ('6316', '台安县', '3', '6266', 'T');
INSERT INTO `ey_region` VALUES ('6331', '岫岩县', '3', '6266', 'X');
INSERT INTO `ey_region` VALUES ('6354', '海城市', '3', '6266', 'H');
INSERT INTO `ey_region` VALUES ('6384', '抚顺市', '2', '5827', 'F');
INSERT INTO `ey_region` VALUES ('6385', '市辖区', '3', '6384', 'S');
INSERT INTO `ey_region` VALUES ('6386', '新抚区', '3', '6384', 'X');
INSERT INTO `ey_region` VALUES ('6395', '东洲区', '3', '6384', 'D');
INSERT INTO `ey_region` VALUES ('6409', '望花区', '3', '6384', 'W');
INSERT INTO `ey_region` VALUES ('6422', '顺城区', '3', '6384', 'S');
INSERT INTO `ey_region` VALUES ('6432', '抚顺县', '3', '6384', 'F');
INSERT INTO `ey_region` VALUES ('6445', '新宾县', '3', '6384', 'X');
INSERT INTO `ey_region` VALUES ('6461', '清原县', '3', '6384', 'Q');
INSERT INTO `ey_region` VALUES ('6476', '本溪市', '2', '5827', 'B');
INSERT INTO `ey_region` VALUES ('6477', '市辖区', '3', '6476', 'S');
INSERT INTO `ey_region` VALUES ('6478', '平山区', '3', '6476', 'P');
INSERT INTO `ey_region` VALUES ('6488', '溪湖区', '3', '6476', 'X');
INSERT INTO `ey_region` VALUES ('6499', '明山区', '3', '6476', 'M');
INSERT INTO `ey_region` VALUES ('6509', '南芬区', '3', '6476', 'N');
INSERT INTO `ey_region` VALUES ('6515', '本溪县', '3', '6476', 'B');
INSERT INTO `ey_region` VALUES ('6528', '桓仁县', '3', '6476', 'H');
INSERT INTO `ey_region` VALUES ('6542', '丹东市', '2', '5827', 'D');
INSERT INTO `ey_region` VALUES ('6543', '市辖区', '3', '6542', 'S');
INSERT INTO `ey_region` VALUES ('6544', '元宝区', '3', '6542', 'Y');
INSERT INTO `ey_region` VALUES ('6552', '振兴区', '3', '6542', 'Z');
INSERT INTO `ey_region` VALUES ('6563', '振安区', '3', '6542', 'Z');
INSERT INTO `ey_region` VALUES ('6573', '宽甸县', '3', '6542', 'K');
INSERT INTO `ey_region` VALUES ('6596', '东港市', '3', '6542', 'D');
INSERT INTO `ey_region` VALUES ('6621', '凤城市', '3', '6542', 'F');
INSERT INTO `ey_region` VALUES ('6643', '锦州市', '2', '5827', 'J');
INSERT INTO `ey_region` VALUES ('6644', '市辖区', '3', '6643', 'S');
INSERT INTO `ey_region` VALUES ('6645', '古塔区', '3', '6643', 'G');
INSERT INTO `ey_region` VALUES ('6655', '凌河区', '3', '6643', 'L');
INSERT INTO `ey_region` VALUES ('6668', '太和区', '3', '6643', 'T');
INSERT INTO `ey_region` VALUES ('6683', '黑山县', '3', '6643', 'H');
INSERT INTO `ey_region` VALUES ('6706', '义县', '3', '6643', 'Y');
INSERT INTO `ey_region` VALUES ('6725', '凌海市', '3', '6643', 'L');
INSERT INTO `ey_region` VALUES ('6750', '北镇市', '3', '6643', 'B');
INSERT INTO `ey_region` VALUES ('6771', '营口市', '2', '5827', 'Y');
INSERT INTO `ey_region` VALUES ('6772', '市辖区', '3', '6771', 'S');
INSERT INTO `ey_region` VALUES ('6773', '站前区', '3', '6771', 'Z');
INSERT INTO `ey_region` VALUES ('6781', '西市区', '3', '6771', 'X');
INSERT INTO `ey_region` VALUES ('6789', '鲅鱼圈区', '3', '6771', 'B');
INSERT INTO `ey_region` VALUES ('6797', '老边区', '3', '6771', 'L');
INSERT INTO `ey_region` VALUES ('6804', '盖州市', '3', '6771', 'G');
INSERT INTO `ey_region` VALUES ('6832', '大石桥市', '3', '6771', 'D');
INSERT INTO `ey_region` VALUES ('6851', '阜新市', '2', '5827', 'F');
INSERT INTO `ey_region` VALUES ('6852', '市辖区', '3', '6851', 'S');
INSERT INTO `ey_region` VALUES ('6853', '海州区', '3', '6851', 'H');
INSERT INTO `ey_region` VALUES ('6865', '新邱区', '3', '6851', 'X');
INSERT INTO `ey_region` VALUES ('6871', '太平区', '3', '6851', 'T');
INSERT INTO `ey_region` VALUES ('6878', '清河门区', '3', '6851', 'Q');
INSERT INTO `ey_region` VALUES ('6885', '细河区', '3', '6851', 'X');
INSERT INTO `ey_region` VALUES ('6893', '阜新县', '3', '6851', 'F');
INSERT INTO `ey_region` VALUES ('6930', '彰武县', '3', '6851', 'Z');
INSERT INTO `ey_region` VALUES ('6955', '辽阳市', '2', '5827', 'L');
INSERT INTO `ey_region` VALUES ('6956', '市辖区', '3', '6955', 'S');
INSERT INTO `ey_region` VALUES ('6957', '白塔区', '3', '6955', 'B');
INSERT INTO `ey_region` VALUES ('6964', '文圣区', '3', '6955', 'W');
INSERT INTO `ey_region` VALUES ('6971', '宏伟区', '3', '6955', 'H');
INSERT INTO `ey_region` VALUES ('6977', '弓长岭区', '3', '6955', 'G');
INSERT INTO `ey_region` VALUES ('6983', '太子河区', '3', '6955', 'T');
INSERT INTO `ey_region` VALUES ('6989', '辽阳县', '3', '6955', 'L');
INSERT INTO `ey_region` VALUES ('7007', '灯塔市', '3', '6955', 'D');
INSERT INTO `ey_region` VALUES ('7024', '盘锦市', '2', '5827', 'P');
INSERT INTO `ey_region` VALUES ('7025', '市辖区', '3', '7024', 'S');
INSERT INTO `ey_region` VALUES ('7026', '双台子区', '3', '7024', 'S');
INSERT INTO `ey_region` VALUES ('7036', '兴隆台区', '3', '7024', 'X');
INSERT INTO `ey_region` VALUES ('7055', '大洼县', '3', '7024', 'D');
INSERT INTO `ey_region` VALUES ('7072', '盘山县', '3', '7024', 'P');
INSERT INTO `ey_region` VALUES ('7088', '铁岭市', '2', '5827', 'T');
INSERT INTO `ey_region` VALUES ('7089', '市辖区', '3', '7088', 'S');
INSERT INTO `ey_region` VALUES ('7090', '银州区', '3', '7088', 'Y');
INSERT INTO `ey_region` VALUES ('7099', '清河区', '3', '7088', 'Q');
INSERT INTO `ey_region` VALUES ('7105', '铁岭县', '3', '7088', 'T');
INSERT INTO `ey_region` VALUES ('7121', '西丰县', '3', '7088', 'X');
INSERT INTO `ey_region` VALUES ('7140', '昌图县', '3', '7088', 'C');
INSERT INTO `ey_region` VALUES ('7180', '调兵山市', '3', '7088', 'D');
INSERT INTO `ey_region` VALUES ('7186', '开原市', '3', '7088', 'K');
INSERT INTO `ey_region` VALUES ('7208', '朝阳市', '2', '5827', 'C');
INSERT INTO `ey_region` VALUES ('7209', '市辖区', '3', '7208', 'S');
INSERT INTO `ey_region` VALUES ('7210', '双塔区', '3', '7208', 'S');
INSERT INTO `ey_region` VALUES ('7225', '龙城区', '3', '7208', 'L');
INSERT INTO `ey_region` VALUES ('7238', '朝阳县', '3', '7208', 'C');
INSERT INTO `ey_region` VALUES ('7267', '建平县', '3', '7208', 'J');
INSERT INTO `ey_region` VALUES ('7299', '喀喇沁左翼县', '3', '7208', 'K');
INSERT INTO `ey_region` VALUES ('7322', '北票市', '3', '7208', 'B');
INSERT INTO `ey_region` VALUES ('7360', '凌源市', '3', '7208', 'L');
INSERT INTO `ey_region` VALUES ('7391', '葫芦岛市', '2', '5827', 'H');
INSERT INTO `ey_region` VALUES ('7392', '市辖区', '3', '7391', 'S');
INSERT INTO `ey_region` VALUES ('7393', '连山区', '3', '7391', 'L');
INSERT INTO `ey_region` VALUES ('7419', '龙港区', '3', '7391', 'L');
INSERT INTO `ey_region` VALUES ('7433', '南票区', '3', '7391', 'N');
INSERT INTO `ey_region` VALUES ('7446', '绥中县', '3', '7391', 'S');
INSERT INTO `ey_region` VALUES ('7474', '建昌县', '3', '7391', 'J');
INSERT INTO `ey_region` VALUES ('7503', '兴城市', '3', '7391', 'X');
INSERT INTO `ey_region` VALUES ('7531', '吉林省', '1', '0', 'J');
INSERT INTO `ey_region` VALUES ('7532', '长春市', '2', '7531', 'C');
INSERT INTO `ey_region` VALUES ('7533', '长春市辖区', '3', '7532', 'C');
INSERT INTO `ey_region` VALUES ('7534', '南关区', '3', '7532', 'N');
INSERT INTO `ey_region` VALUES ('7552', '宽城区', '3', '7532', 'K');
INSERT INTO `ey_region` VALUES ('7569', '朝阳区', '3', '7532', 'C');
INSERT INTO `ey_region` VALUES ('7582', '二道区', '3', '7532', 'E');
INSERT INTO `ey_region` VALUES ('7597', '绿园区', '3', '7532', 'L');
INSERT INTO `ey_region` VALUES ('7610', '双阳区', '3', '7532', 'S');
INSERT INTO `ey_region` VALUES ('7619', '农安县', '3', '7532', 'N');
INSERT INTO `ey_region` VALUES ('7642', '九台市', '3', '7532', 'J');
INSERT INTO `ey_region` VALUES ('7658', '榆树市', '3', '7532', 'Y');
INSERT INTO `ey_region` VALUES ('7687', '德惠市', '3', '7532', 'D');
INSERT INTO `ey_region` VALUES ('7706', '吉林市', '2', '7531', 'J');
INSERT INTO `ey_region` VALUES ('7707', '吉林市辖区', '3', '7706', 'J');
INSERT INTO `ey_region` VALUES ('7708', '昌邑区', '3', '7706', 'C');
INSERT INTO `ey_region` VALUES ('7731', '龙潭区', '3', '7706', 'L');
INSERT INTO `ey_region` VALUES ('7752', '船营区', '3', '7706', 'C');
INSERT INTO `ey_region` VALUES ('7768', '丰满区', '3', '7706', 'F');
INSERT INTO `ey_region` VALUES ('7781', '永吉县', '3', '7706', 'Y');
INSERT INTO `ey_region` VALUES ('7792', '蛟河市', '3', '7706', 'J');
INSERT INTO `ey_region` VALUES ('7810', '桦甸市', '3', '7706', 'H');
INSERT INTO `ey_region` VALUES ('7828', '舒兰市', '3', '7706', 'S');
INSERT INTO `ey_region` VALUES ('7849', '磐石市', '3', '7706', 'P');
INSERT INTO `ey_region` VALUES ('7868', '四平市', '2', '7531', 'S');
INSERT INTO `ey_region` VALUES ('7869', '四平市辖区', '3', '7868', 'S');
INSERT INTO `ey_region` VALUES ('7870', '铁西区', '3', '7868', 'T');
INSERT INTO `ey_region` VALUES ('7878', '铁东区', '3', '7868', 'T');
INSERT INTO `ey_region` VALUES ('7892', '梨树县', '3', '7868', 'L');
INSERT INTO `ey_region` VALUES ('7916', '伊通县', '3', '7868', 'Y');
INSERT INTO `ey_region` VALUES ('7933', '公主岭市', '3', '7868', 'G');
INSERT INTO `ey_region` VALUES ('7964', '双辽市', '3', '7868', 'S');
INSERT INTO `ey_region` VALUES ('7986', '辽源市', '2', '7531', 'L');
INSERT INTO `ey_region` VALUES ('7987', '辽源市辖区', '3', '7986', 'L');
INSERT INTO `ey_region` VALUES ('7988', '龙山区', '3', '7986', 'L');
INSERT INTO `ey_region` VALUES ('8000', '西安区', '3', '7986', 'X');
INSERT INTO `ey_region` VALUES ('8008', '东丰县', '3', '7986', 'D');
INSERT INTO `ey_region` VALUES ('8023', '东辽县', '3', '7986', 'D');
INSERT INTO `ey_region` VALUES ('8037', '通化市', '2', '7531', 'T');
INSERT INTO `ey_region` VALUES ('8038', '通化市辖区', '3', '8037', 'T');
INSERT INTO `ey_region` VALUES ('8039', '东昌区', '3', '8037', 'D');
INSERT INTO `ey_region` VALUES ('8051', '二道江区', '3', '8037', 'E');
INSERT INTO `ey_region` VALUES ('8058', '通化县', '3', '8037', 'T');
INSERT INTO `ey_region` VALUES ('8076', '辉南县', '3', '8037', 'H');
INSERT INTO `ey_region` VALUES ('8088', '柳河县', '3', '8037', 'L');
INSERT INTO `ey_region` VALUES ('8104', '梅河口市', '3', '8037', 'M');
INSERT INTO `ey_region` VALUES ('8129', '集安市', '3', '8037', 'J');
INSERT INTO `ey_region` VALUES ('8144', '白山市', '2', '7531', 'B');
INSERT INTO `ey_region` VALUES ('8145', '白山市辖区', '3', '8144', 'B');
INSERT INTO `ey_region` VALUES ('8146', '八道江区', '3', '8144', 'B');
INSERT INTO `ey_region` VALUES ('8159', '江源区', '3', '8144', 'J');
INSERT INTO `ey_region` VALUES ('8168', '抚松县', '3', '8144', 'F');
INSERT INTO `ey_region` VALUES ('8183', '靖宇县', '3', '8144', 'J');
INSERT INTO `ey_region` VALUES ('8192', '长白县', '3', '8144', 'C');
INSERT INTO `ey_region` VALUES ('8202', '临江市', '3', '8144', 'L');
INSERT INTO `ey_region` VALUES ('8216', '松原市', '2', '7531', 'S');
INSERT INTO `ey_region` VALUES ('8217', '松原市辖区', '3', '8216', 'S');
INSERT INTO `ey_region` VALUES ('8218', '宁江区', '3', '8216', 'N');
INSERT INTO `ey_region` VALUES ('8239', '前郭县', '3', '8216', 'Q');
INSERT INTO `ey_region` VALUES ('8266', '长岭县', '3', '8216', 'C');
INSERT INTO `ey_region` VALUES ('8300', '乾安县', '3', '8216', 'Q');
INSERT INTO `ey_region` VALUES ('8311', '扶余县', '3', '8216', 'F');
INSERT INTO `ey_region` VALUES ('8333', '白城市', '2', '7531', 'B');
INSERT INTO `ey_region` VALUES ('8334', '白城市辖区', '3', '8333', 'B');
INSERT INTO `ey_region` VALUES ('8335', '洮北区', '3', '8333', 'T');
INSERT INTO `ey_region` VALUES ('8362', '镇赉县', '3', '8333', 'Z');
INSERT INTO `ey_region` VALUES ('8375', '通榆县', '3', '8333', 'T');
INSERT INTO `ey_region` VALUES ('8393', '洮南市', '3', '8333', 'T');
INSERT INTO `ey_region` VALUES ('8420', '大安市', '3', '8333', 'D');
INSERT INTO `ey_region` VALUES ('8445', '延边州', '2', '7531', 'Y');
INSERT INTO `ey_region` VALUES ('8446', '延吉市', '3', '8445', 'Y');
INSERT INTO `ey_region` VALUES ('8456', '图们市', '3', '8445', 'T');
INSERT INTO `ey_region` VALUES ('8464', '敦化市', '3', '8445', 'D');
INSERT INTO `ey_region` VALUES ('8489', '珲春市', '3', '8445', 'H');
INSERT INTO `ey_region` VALUES ('8504', '龙井市', '3', '8445', 'L');
INSERT INTO `ey_region` VALUES ('8515', '和龙市', '3', '8445', 'H');
INSERT INTO `ey_region` VALUES ('8530', '汪清县', '3', '8445', 'W');
INSERT INTO `ey_region` VALUES ('8545', '安图县', '3', '8445', 'A');
INSERT INTO `ey_region` VALUES ('8558', '黑龙江省', '1', '0', 'H');
INSERT INTO `ey_region` VALUES ('8559', '哈尔滨市', '2', '8558', 'H');
INSERT INTO `ey_region` VALUES ('8560', '市辖区', '3', '8559', 'S');
INSERT INTO `ey_region` VALUES ('8561', '道里区', '3', '8559', 'D');
INSERT INTO `ey_region` VALUES ('8585', '南岗区', '3', '8559', 'N');
INSERT INTO `ey_region` VALUES ('8606', '道外区', '3', '8559', 'D');
INSERT INTO `ey_region` VALUES ('8633', '平房区', '3', '8559', 'P');
INSERT INTO `ey_region` VALUES ('8642', '松北区', '3', '8559', 'S');
INSERT INTO `ey_region` VALUES ('8650', '香坊区', '3', '8559', 'X');
INSERT INTO `ey_region` VALUES ('8676', '呼兰区', '3', '8559', 'H');
INSERT INTO `ey_region` VALUES ('8694', '阿城区', '3', '8559', 'A');
INSERT INTO `ey_region` VALUES ('8714', '依兰县', '3', '8559', 'Y');
INSERT INTO `ey_region` VALUES ('8729', '方正县', '3', '8559', 'F');
INSERT INTO `ey_region` VALUES ('8740', '宾县', '3', '8559', 'B');
INSERT INTO `ey_region` VALUES ('8758', '巴彦县', '3', '8559', 'B');
INSERT INTO `ey_region` VALUES ('8778', '木兰县', '3', '8559', 'M');
INSERT INTO `ey_region` VALUES ('8788', '通河县', '3', '8559', 'T');
INSERT INTO `ey_region` VALUES ('8800', '延寿县', '3', '8559', 'Y');
INSERT INTO `ey_region` VALUES ('8812', '双城市', '3', '8559', 'S');
INSERT INTO `ey_region` VALUES ('8838', '尚志市', '3', '8559', 'S');
INSERT INTO `ey_region` VALUES ('8858', '五常市', '3', '8559', 'W');
INSERT INTO `ey_region` VALUES ('8884', '齐齐哈尔市', '2', '8558', 'Q');
INSERT INTO `ey_region` VALUES ('8885', '市辖区', '3', '8884', 'S');
INSERT INTO `ey_region` VALUES ('8886', '龙沙区', '3', '8884', 'L');
INSERT INTO `ey_region` VALUES ('8894', '建华区', '3', '8884', 'J');
INSERT INTO `ey_region` VALUES ('8901', '铁锋区', '3', '8884', 'T');
INSERT INTO `ey_region` VALUES ('8911', '昂昂溪区', '3', '8884', 'A');
INSERT INTO `ey_region` VALUES ('8918', '富拉尔基区', '3', '8884', 'F');
INSERT INTO `ey_region` VALUES ('8928', '碾子山区', '3', '8884', 'N');
INSERT INTO `ey_region` VALUES ('8934', '梅里斯达斡尔族区', '3', '8884', 'M');
INSERT INTO `ey_region` VALUES ('8943', '龙江县', '3', '8884', 'L');
INSERT INTO `ey_region` VALUES ('8958', '依安县', '3', '8884', 'Y');
INSERT INTO `ey_region` VALUES ('8976', '泰来县', '3', '8884', 'T');
INSERT INTO `ey_region` VALUES ('8998', '甘南县', '3', '8884', 'G');
INSERT INTO `ey_region` VALUES ('9011', '富裕县', '3', '8884', 'F');
INSERT INTO `ey_region` VALUES ('9024', '克山县', '3', '8884', 'K');
INSERT INTO `ey_region` VALUES ('9048', '克东县', '3', '8884', 'K');
INSERT INTO `ey_region` VALUES ('9067', '拜泉县', '3', '8884', 'B');
INSERT INTO `ey_region` VALUES ('9084', '讷河市', '3', '8884', 'N');
INSERT INTO `ey_region` VALUES ('9117', '鸡西市', '2', '8558', 'J');
INSERT INTO `ey_region` VALUES ('9118', '市辖区', '3', '9117', 'S');
INSERT INTO `ey_region` VALUES ('9119', '鸡冠区', '3', '9117', 'J');
INSERT INTO `ey_region` VALUES ('9129', '恒山区', '3', '9117', 'H');
INSERT INTO `ey_region` VALUES ('9139', '滴道区', '3', '9117', 'D');
INSERT INTO `ey_region` VALUES ('9146', '梨树区', '3', '9117', 'L');
INSERT INTO `ey_region` VALUES ('9153', '城子河区', '3', '9117', 'C');
INSERT INTO `ey_region` VALUES ('9161', '麻山区', '3', '9117', 'M');
INSERT INTO `ey_region` VALUES ('9164', '鸡东县', '3', '9117', 'J');
INSERT INTO `ey_region` VALUES ('9178', '虎林市', '3', '9117', 'H');
INSERT INTO `ey_region` VALUES ('9199', '密山市', '3', '9117', 'M');
INSERT INTO `ey_region` VALUES ('9222', '鹤岗市', '2', '8558', 'H');
INSERT INTO `ey_region` VALUES ('9223', '市辖区', '3', '9222', 'S');
INSERT INTO `ey_region` VALUES ('9224', '向阳区', '3', '9222', 'X');
INSERT INTO `ey_region` VALUES ('9230', '工农区', '3', '9222', 'G');
INSERT INTO `ey_region` VALUES ('9237', '南山区', '3', '9222', 'N');
INSERT INTO `ey_region` VALUES ('9244', '兴安区', '3', '9222', 'X');
INSERT INTO `ey_region` VALUES ('9250', '东山区', '3', '9222', 'D');
INSERT INTO `ey_region` VALUES ('9261', '兴山区', '3', '9222', 'X');
INSERT INTO `ey_region` VALUES ('9266', '萝北县', '3', '9222', 'L');
INSERT INTO `ey_region` VALUES ('9283', '绥滨县', '3', '9222', 'S');
INSERT INTO `ey_region` VALUES ('9296', '双鸭山市', '2', '8558', 'S');
INSERT INTO `ey_region` VALUES ('9297', '市辖区', '3', '9296', 'S');
INSERT INTO `ey_region` VALUES ('9298', '尖山区', '3', '9296', 'J');
INSERT INTO `ey_region` VALUES ('9307', '岭东区', '3', '9296', 'L');
INSERT INTO `ey_region` VALUES ('9317', '四方台区', '3', '9296', 'S');
INSERT INTO `ey_region` VALUES ('9323', '宝山区', '3', '9296', 'B');
INSERT INTO `ey_region` VALUES ('9335', '集贤县', '3', '9296', 'J');
INSERT INTO `ey_region` VALUES ('9356', '友谊县', '3', '9296', 'Y');
INSERT INTO `ey_region` VALUES ('9370', '宝清县', '3', '9296', 'B');
INSERT INTO `ey_region` VALUES ('9393', '饶河县', '3', '9296', 'R');
INSERT INTO `ey_region` VALUES ('9419', '大庆市', '2', '8558', 'D');
INSERT INTO `ey_region` VALUES ('9420', '市辖区', '3', '9419', 'S');
INSERT INTO `ey_region` VALUES ('9421', '萨尔图区', '3', '9419', 'S');
INSERT INTO `ey_region` VALUES ('9431', '龙凤区', '3', '9419', 'L');
INSERT INTO `ey_region` VALUES ('9440', '让胡路区', '3', '9419', 'R');
INSERT INTO `ey_region` VALUES ('9451', '红岗区', '3', '9419', 'H');
INSERT INTO `ey_region` VALUES ('9458', '大同区', '3', '9419', 'D');
INSERT INTO `ey_region` VALUES ('9474', '肇州县', '3', '9419', 'Z');
INSERT INTO `ey_region` VALUES ('9489', '肇源县', '3', '9419', 'Z');
INSERT INTO `ey_region` VALUES ('9514', '林甸县', '3', '9419', 'L');
INSERT INTO `ey_region` VALUES ('9527', '杜尔伯特县', '3', '9419', 'D');
INSERT INTO `ey_region` VALUES ('9553', '伊春市', '2', '8558', 'Y');
INSERT INTO `ey_region` VALUES ('9554', '市辖区', '3', '9553', 'S');
INSERT INTO `ey_region` VALUES ('9555', '伊春区', '3', '9553', 'Y');
INSERT INTO `ey_region` VALUES ('9561', '南岔区', '3', '9553', 'N');
INSERT INTO `ey_region` VALUES ('9581', '友好区', '3', '9553', 'Y');
INSERT INTO `ey_region` VALUES ('9599', '西林区', '3', '9553', 'X');
INSERT INTO `ey_region` VALUES ('9603', '翠峦区', '3', '9553', 'C');
INSERT INTO `ey_region` VALUES ('9614', '新青区', '3', '9553', 'X');
INSERT INTO `ey_region` VALUES ('9631', '美溪区', '3', '9553', 'M');
INSERT INTO `ey_region` VALUES ('9647', '金山屯区', '3', '9553', 'J');
INSERT INTO `ey_region` VALUES ('9660', '五营区', '3', '9553', 'W');
INSERT INTO `ey_region` VALUES ('9671', '乌马河区', '3', '9553', 'W');
INSERT INTO `ey_region` VALUES ('9685', '汤旺河区', '3', '9553', 'T');
INSERT INTO `ey_region` VALUES ('9702', '带岭区', '3', '9553', 'D');
INSERT INTO `ey_region` VALUES ('9715', '乌伊岭区', '3', '9553', 'W');
INSERT INTO `ey_region` VALUES ('9729', '红星区', '3', '9553', 'H');
INSERT INTO `ey_region` VALUES ('9742', '上甘岭区', '3', '9553', 'S');
INSERT INTO `ey_region` VALUES ('9756', '嘉荫县', '3', '9553', 'J');
INSERT INTO `ey_region` VALUES ('9772', '铁力市', '3', '9553', 'T');
INSERT INTO `ey_region` VALUES ('9785', '佳木斯市', '2', '8558', 'J');
INSERT INTO `ey_region` VALUES ('9786', '市辖区', '3', '9785', 'S');
INSERT INTO `ey_region` VALUES ('9787', '向阳区', '3', '9785', 'X');
INSERT INTO `ey_region` VALUES ('9795', '前进区', '3', '9785', 'Q');
INSERT INTO `ey_region` VALUES ('9802', '东风区', '3', '9785', 'D');
INSERT INTO `ey_region` VALUES ('9810', '郊区', '3', '9785', 'J');
INSERT INTO `ey_region` VALUES ('9825', '桦南县', '3', '9785', 'H');
INSERT INTO `ey_region` VALUES ('9839', '桦川县', '3', '9785', 'H');
INSERT INTO `ey_region` VALUES ('9851', '汤原县', '3', '9785', 'T');
INSERT INTO `ey_region` VALUES ('9866', '抚远县', '3', '9785', 'F');
INSERT INTO `ey_region` VALUES ('9879', '同江市', '3', '9785', 'T');
INSERT INTO `ey_region` VALUES ('9907', '富锦市', '3', '9785', 'F');
INSERT INTO `ey_region` VALUES ('9930', '七台河市', '2', '8558', 'Q');
INSERT INTO `ey_region` VALUES ('9931', '市辖区', '3', '9930', 'S');
INSERT INTO `ey_region` VALUES ('9932', '新兴区', '3', '9930', 'X');
INSERT INTO `ey_region` VALUES ('9944', '桃山区', '3', '9930', 'T');
INSERT INTO `ey_region` VALUES ('9952', '茄子河区', '3', '9930', 'Q');
INSERT INTO `ey_region` VALUES ('9962', '勃利县', '3', '9930', 'B');
INSERT INTO `ey_region` VALUES ('9981', '牡丹江市', '2', '8558', 'M');
INSERT INTO `ey_region` VALUES ('9982', '市辖区', '3', '9981', 'S');
INSERT INTO `ey_region` VALUES ('9983', '东安区', '3', '9981', 'D');
INSERT INTO `ey_region` VALUES ('9989', '阳明区', '3', '9981', 'Y');
INSERT INTO `ey_region` VALUES ('9996', '爱民区', '3', '9981', 'A');
INSERT INTO `ey_region` VALUES ('10005', '西安区', '3', '9981', 'X');
INSERT INTO `ey_region` VALUES ('10014', '东宁县', '3', '9981', 'D');
INSERT INTO `ey_region` VALUES ('10022', '林口县', '3', '9981', 'L');
INSERT INTO `ey_region` VALUES ('10036', '绥芬河市', '3', '9981', 'S');
INSERT INTO `ey_region` VALUES ('10039', '海林市', '3', '9981', 'H');
INSERT INTO `ey_region` VALUES ('10056', '宁安市', '3', '9981', 'N');
INSERT INTO `ey_region` VALUES ('10072', '穆棱市', '3', '9981', 'M');
INSERT INTO `ey_region` VALUES ('10084', '黑河市', '2', '8558', 'H');
INSERT INTO `ey_region` VALUES ('10085', '市辖区', '3', '10084', 'S');
INSERT INTO `ey_region` VALUES ('10086', '爱辉区', '3', '10084', 'A');
INSERT INTO `ey_region` VALUES ('10122', '嫩江县', '3', '10084', 'N');
INSERT INTO `ey_region` VALUES ('10150', '逊克县', '3', '10084', 'X');
INSERT INTO `ey_region` VALUES ('10168', '孙吴县', '3', '10084', 'S');
INSERT INTO `ey_region` VALUES ('10192', '北安市', '3', '10084', 'B');
INSERT INTO `ey_region` VALUES ('10214', '五大连池市', '3', '10084', 'W');
INSERT INTO `ey_region` VALUES ('10252', '绥化市', '2', '8558', 'S');
INSERT INTO `ey_region` VALUES ('10253', '市辖区', '3', '10252', 'S');
INSERT INTO `ey_region` VALUES ('10254', '北林区', '3', '10252', 'B');
INSERT INTO `ey_region` VALUES ('10281', '望奎县', '3', '10252', 'W');
INSERT INTO `ey_region` VALUES ('10301', '兰西县', '3', '10252', 'L');
INSERT INTO `ey_region` VALUES ('10320', '青冈县', '3', '10252', 'Q');
INSERT INTO `ey_region` VALUES ('10342', '庆安县', '3', '10252', 'Q');
INSERT INTO `ey_region` VALUES ('10360', '明水县', '3', '10252', 'M');
INSERT INTO `ey_region` VALUES ('10380', '绥棱县', '3', '10252', 'S');
INSERT INTO `ey_region` VALUES ('10401', '安达市', '3', '10252', 'A');
INSERT INTO `ey_region` VALUES ('10425', '肇东市', '3', '10252', 'Z');
INSERT INTO `ey_region` VALUES ('10452', '海伦市', '3', '10252', 'H');
INSERT INTO `ey_region` VALUES ('10483', '大兴安岭地区', '2', '8558', 'D');
INSERT INTO `ey_region` VALUES ('10484', '加格达奇区', '3', '10483', 'J');
INSERT INTO `ey_region` VALUES ('10495', '松岭区', '3', '10483', 'S');
INSERT INTO `ey_region` VALUES ('10500', '新林区', '3', '10483', 'X');
INSERT INTO `ey_region` VALUES ('10509', '呼中区', '3', '10483', 'H');
INSERT INTO `ey_region` VALUES ('10515', '呼玛县', '3', '10483', 'H');
INSERT INTO `ey_region` VALUES ('10525', '塔河县', '3', '10483', 'T');
INSERT INTO `ey_region` VALUES ('10534', '漠河县', '3', '10483', 'M');
INSERT INTO `ey_region` VALUES ('10543', '上海市', '1', '0', 'S');
INSERT INTO `ey_region` VALUES ('10544', '上海市', '2', '10543', 'S');
INSERT INTO `ey_region` VALUES ('10545', '黄浦区', '3', '10544', 'H');
INSERT INTO `ey_region` VALUES ('10555', '卢湾区', '3', '10544', 'L');
INSERT INTO `ey_region` VALUES ('10560', '徐汇区', '3', '10544', 'X');
INSERT INTO `ey_region` VALUES ('10575', '长宁区', '3', '10544', 'C');
INSERT INTO `ey_region` VALUES ('10586', '静安区', '3', '10544', 'J');
INSERT INTO `ey_region` VALUES ('10592', '普陀区', '3', '10544', 'P');
INSERT INTO `ey_region` VALUES ('10602', '闸北区', '3', '10544', 'Z');
INSERT INTO `ey_region` VALUES ('10612', '虹口区', '3', '10544', 'H');
INSERT INTO `ey_region` VALUES ('10623', '杨浦区', '3', '10544', 'Y');
INSERT INTO `ey_region` VALUES ('10636', '闵行区', '3', '10544', 'M');
INSERT INTO `ey_region` VALUES ('10650', '宝山区', '3', '10544', 'B');
INSERT INTO `ey_region` VALUES ('10664', '嘉定区', '3', '10544', 'J');
INSERT INTO `ey_region` VALUES ('10678', '浦东新区', '3', '10544', 'P');
INSERT INTO `ey_region` VALUES ('10704', '金山区', '3', '10544', 'J');
INSERT INTO `ey_region` VALUES ('10715', '松江区', '3', '10544', 'S');
INSERT INTO `ey_region` VALUES ('10735', '青浦区', '3', '10544', 'Q');
INSERT INTO `ey_region` VALUES ('10747', '南汇区', '3', '10544', 'N');
INSERT INTO `ey_region` VALUES ('10765', '奉贤区', '3', '10544', 'F');
INSERT INTO `ey_region` VALUES ('10780', '崇明区', '3', '10544', 'C');
INSERT INTO `ey_region` VALUES ('10808', '江苏省', '1', '0', 'J');
INSERT INTO `ey_region` VALUES ('10809', '南京市', '2', '10808', 'N');
INSERT INTO `ey_region` VALUES ('10810', '市辖区', '3', '10809', 'S');
INSERT INTO `ey_region` VALUES ('10811', '玄武区', '3', '10809', 'X');
INSERT INTO `ey_region` VALUES ('10820', '白下区', '3', '10809', 'B');
INSERT INTO `ey_region` VALUES ('10831', '秦淮区', '3', '10809', 'Q');
INSERT INTO `ey_region` VALUES ('10837', '建邺区', '3', '10809', 'J');
INSERT INTO `ey_region` VALUES ('10845', '鼓楼区', '3', '10809', 'G');
INSERT INTO `ey_region` VALUES ('10853', '下关区', '3', '10809', 'X');
INSERT INTO `ey_region` VALUES ('10860', '浦口区', '3', '10809', 'P');
INSERT INTO `ey_region` VALUES ('10876', '栖霞区', '3', '10809', 'Q');
INSERT INTO `ey_region` VALUES ('10894', '雨花台区', '3', '10809', 'Y');
INSERT INTO `ey_region` VALUES ('10903', '江宁区', '3', '10809', 'J');
INSERT INTO `ey_region` VALUES ('10916', '六合区', '3', '10809', 'L');
INSERT INTO `ey_region` VALUES ('10937', '溧水县', '3', '10809', 'L');
INSERT INTO `ey_region` VALUES ('10947', '高淳县', '3', '10809', 'G');
INSERT INTO `ey_region` VALUES ('10960', '无锡市', '2', '10808', 'W');
INSERT INTO `ey_region` VALUES ('10961', '市辖区', '3', '10960', 'S');
INSERT INTO `ey_region` VALUES ('10962', '崇安区', '3', '10960', 'C');
INSERT INTO `ey_region` VALUES ('10969', '南长区', '3', '10960', 'N');
INSERT INTO `ey_region` VALUES ('10976', '北塘区', '3', '10960', 'B');
INSERT INTO `ey_region` VALUES ('10981', '锡山区', '3', '10960', 'X');
INSERT INTO `ey_region` VALUES ('10990', '惠山区', '3', '10960', 'H');
INSERT INTO `ey_region` VALUES ('10999', '滨湖区', '3', '10960', 'B');
INSERT INTO `ey_region` VALUES ('11018', '江阴市', '3', '10960', 'J');
INSERT INTO `ey_region` VALUES ('11039', '宜兴市', '3', '10960', 'Y');
INSERT INTO `ey_region` VALUES ('11067', '徐州市', '2', '10808', 'X');
INSERT INTO `ey_region` VALUES ('11068', '市辖区', '3', '11067', 'S');
INSERT INTO `ey_region` VALUES ('11069', '鼓楼区', '3', '11067', 'G');
INSERT INTO `ey_region` VALUES ('11081', '云龙区', '3', '11067', 'Y');
INSERT INTO `ey_region` VALUES ('11089', '九里区', '3', '11067', 'J');
INSERT INTO `ey_region` VALUES ('11103', '贾汪区', '3', '11067', 'J');
INSERT INTO `ey_region` VALUES ('11115', '泉山区', '3', '11067', 'Q');
INSERT INTO `ey_region` VALUES ('11126', '丰县', '3', '11067', 'F');
INSERT INTO `ey_region` VALUES ('11142', '沛县', '3', '11067', 'P');
INSERT INTO `ey_region` VALUES ('11160', '铜山县', '3', '11067', 'T');
INSERT INTO `ey_region` VALUES ('11182', '睢宁县', '3', '11067', 'S');
INSERT INTO `ey_region` VALUES ('11200', '新沂市', '3', '11067', 'X');
INSERT INTO `ey_region` VALUES ('11218', '邳州市', '3', '11067', 'P');
INSERT INTO `ey_region` VALUES ('11245', '常州市', '2', '10808', 'C');
INSERT INTO `ey_region` VALUES ('11246', '常州市区', '3', '11245', 'C');
INSERT INTO `ey_region` VALUES ('11247', '天宁区', '3', '11245', 'T');
INSERT INTO `ey_region` VALUES ('11254', '钟楼区', '3', '11245', 'Z');
INSERT INTO `ey_region` VALUES ('11262', '戚墅堰区', '3', '11245', 'Q');
INSERT INTO `ey_region` VALUES ('11266', '新北区', '3', '11245', 'X');
INSERT INTO `ey_region` VALUES ('11276', '武进区', '3', '11245', 'W');
INSERT INTO `ey_region` VALUES ('11311', '溧阳市', '3', '11245', 'L');
INSERT INTO `ey_region` VALUES ('11331', '金坛市', '3', '11245', 'J');
INSERT INTO `ey_region` VALUES ('11348', '苏州市', '2', '10808', 'S');
INSERT INTO `ey_region` VALUES ('11349', '市辖区', '3', '11348', 'S');
INSERT INTO `ey_region` VALUES ('11350', '沧浪区', '3', '11348', 'C');
INSERT INTO `ey_region` VALUES ('11357', '平江区', '3', '11348', 'P');
INSERT INTO `ey_region` VALUES ('11368', '金阊区', '3', '11348', 'J');
INSERT INTO `ey_region` VALUES ('11374', '苏州高新区虎丘区', '3', '11348', 'S');
INSERT INTO `ey_region` VALUES ('11387', '吴中区', '3', '11348', 'W');
INSERT INTO `ey_region` VALUES ('11409', '相城区', '3', '11348', 'X');
INSERT INTO `ey_region` VALUES ('11419', '常熟市', '3', '11348', 'C');
INSERT INTO `ey_region` VALUES ('11433', '张家港市', '3', '11348', 'Z');
INSERT INTO `ey_region` VALUES ('11448', '昆山市', '3', '11348', 'K');
INSERT INTO `ey_region` VALUES ('11460', '吴江市', '3', '11348', 'W');
INSERT INTO `ey_region` VALUES ('11472', '太仓市', '3', '11348', 'T');
INSERT INTO `ey_region` VALUES ('11482', '南通市', '2', '10808', 'N');
INSERT INTO `ey_region` VALUES ('11483', '市辖区', '3', '11482', 'S');
INSERT INTO `ey_region` VALUES ('11484', '崇川区', '3', '11482', 'C');
INSERT INTO `ey_region` VALUES ('11502', '港闸区', '3', '11482', 'G');
INSERT INTO `ey_region` VALUES ('11510', '海安县', '3', '11482', 'H');
INSERT INTO `ey_region` VALUES ('11526', '如东', '3', '11482', 'R');
INSERT INTO `ey_region` VALUES ('11542', '启东市', '3', '11482', 'Q');
INSERT INTO `ey_region` VALUES ('11568', '如皋市', '3', '11482', 'R');
INSERT INTO `ey_region` VALUES ('11600', '通州市', '3', '11482', 'T');
INSERT INTO `ey_region` VALUES ('11627', '海门市', '3', '11482', 'H');
INSERT INTO `ey_region` VALUES ('11663', '连云港市', '2', '10808', 'L');
INSERT INTO `ey_region` VALUES ('11664', '市辖区', '3', '11663', 'S');
INSERT INTO `ey_region` VALUES ('11665', '连云区', '3', '11663', 'L');
INSERT INTO `ey_region` VALUES ('11678', '新浦区', '3', '11663', 'X');
INSERT INTO `ey_region` VALUES ('11692', '海州区', '3', '11663', 'H');
INSERT INTO `ey_region` VALUES ('11699', '赣榆县', '3', '11663', 'G');
INSERT INTO `ey_region` VALUES ('11722', '东海县', '3', '11663', 'D');
INSERT INTO `ey_region` VALUES ('11747', '灌云县', '3', '11663', 'G');
INSERT INTO `ey_region` VALUES ('11771', '灌南县', '3', '11663', 'G');
INSERT INTO `ey_region` VALUES ('11786', '淮安市', '2', '10808', 'H');
INSERT INTO `ey_region` VALUES ('11787', '市辖区', '3', '11786', 'S');
INSERT INTO `ey_region` VALUES ('11788', '清河区', '3', '11786', 'Q');
INSERT INTO `ey_region` VALUES ('11801', '楚州区', '3', '11786', 'C');
INSERT INTO `ey_region` VALUES ('11830', '淮阴区', '3', '11786', 'H');
INSERT INTO `ey_region` VALUES ('11853', '清浦区', '3', '11786', 'Q');
INSERT INTO `ey_region` VALUES ('11863', '涟水县', '3', '11786', 'L');
INSERT INTO `ey_region` VALUES ('11896', '洪泽县', '3', '11786', 'H');
INSERT INTO `ey_region` VALUES ('11909', '盱眙县', '3', '11786', 'X');
INSERT INTO `ey_region` VALUES ('11931', '金湖县', '3', '11786', 'J');
INSERT INTO `ey_region` VALUES ('11947', '盐城市', '2', '10808', 'Y');
INSERT INTO `ey_region` VALUES ('11948', '市辖区', '3', '11947', 'S');
INSERT INTO `ey_region` VALUES ('11949', '亭湖区', '3', '11947', 'T');
INSERT INTO `ey_region` VALUES ('11967', '盐都区', '3', '11947', 'Y');
INSERT INTO `ey_region` VALUES ('11982', '响水县', '3', '11947', 'X');
INSERT INTO `ey_region` VALUES ('11998', '滨海县', '3', '11947', 'B');
INSERT INTO `ey_region` VALUES ('12017', '阜宁县', '3', '11947', 'F');
INSERT INTO `ey_region` VALUES ('12040', '射阳县', '3', '11947', 'S');
INSERT INTO `ey_region` VALUES ('12066', '建湖县', '3', '11947', 'J');
INSERT INTO `ey_region` VALUES ('12083', '东台市', '3', '11947', 'D');
INSERT INTO `ey_region` VALUES ('12117', '大丰市', '3', '11947', 'D');
INSERT INTO `ey_region` VALUES ('12135', '扬州市', '2', '10808', 'Y');
INSERT INTO `ey_region` VALUES ('12136', '市辖区', '3', '12135', 'S');
INSERT INTO `ey_region` VALUES ('12137', '广陵区', '3', '12135', 'G');
INSERT INTO `ey_region` VALUES ('12144', '邗江区', '3', '12135', 'H');
INSERT INTO `ey_region` VALUES ('12160', '维扬区', '3', '12135', 'W');
INSERT INTO `ey_region` VALUES ('12175', '宝应县', '3', '12135', 'B');
INSERT INTO `ey_region` VALUES ('12191', '仪征市', '3', '12135', 'Y');
INSERT INTO `ey_region` VALUES ('12212', '高邮市', '3', '12135', 'G');
INSERT INTO `ey_region` VALUES ('12235', '江都市', '3', '12135', 'J');
INSERT INTO `ey_region` VALUES ('12249', '镇江市', '2', '10808', 'Z');
INSERT INTO `ey_region` VALUES ('12250', '市区', '3', '12249', 'S');
INSERT INTO `ey_region` VALUES ('12251', '京口区', '3', '12249', 'J');
INSERT INTO `ey_region` VALUES ('12265', '润州区', '3', '12249', 'R');
INSERT INTO `ey_region` VALUES ('12273', '丹徒区', '3', '12249', 'D');
INSERT INTO `ey_region` VALUES ('12282', '丹阳市', '3', '12249', 'D');
INSERT INTO `ey_region` VALUES ('12300', '扬中市', '3', '12249', 'Y');
INSERT INTO `ey_region` VALUES ('12312', '句容市', '3', '12249', 'J');
INSERT INTO `ey_region` VALUES ('12343', '泰州市', '2', '10808', 'T');
INSERT INTO `ey_region` VALUES ('12344', '市辖区', '3', '12343', 'S');
INSERT INTO `ey_region` VALUES ('12345', '海陵区', '3', '12343', 'H');
INSERT INTO `ey_region` VALUES ('12362', '高港区', '3', '12343', 'G');
INSERT INTO `ey_region` VALUES ('12370', '兴化市', '3', '12343', 'X');
INSERT INTO `ey_region` VALUES ('12407', '靖江市', '3', '12343', 'J');
INSERT INTO `ey_region` VALUES ('12423', '泰兴市', '3', '12343', 'T');
INSERT INTO `ey_region` VALUES ('12450', '姜堰市', '3', '12343', 'J');
INSERT INTO `ey_region` VALUES ('12475', '宿迁市', '2', '10808', 'S');
INSERT INTO `ey_region` VALUES ('12476', '市辖区', '3', '12475', 'S');
INSERT INTO `ey_region` VALUES ('12477', '宿城区', '3', '12475', 'S');
INSERT INTO `ey_region` VALUES ('12496', '宿豫区', '3', '12475', 'S');
INSERT INTO `ey_region` VALUES ('12515', '沭阳县', '3', '12475', 'S');
INSERT INTO `ey_region` VALUES ('12551', '泗阳县', '3', '12475', 'S');
INSERT INTO `ey_region` VALUES ('12570', '泗洪县', '3', '12475', 'S');
INSERT INTO `ey_region` VALUES ('12596', '浙江省', '1', '0', 'Z');
INSERT INTO `ey_region` VALUES ('12597', '杭州市', '2', '12596', 'H');
INSERT INTO `ey_region` VALUES ('12598', '市辖区', '3', '12597', 'S');
INSERT INTO `ey_region` VALUES ('12599', '上城区', '3', '12597', 'S');
INSERT INTO `ey_region` VALUES ('12606', '下城区', '3', '12597', 'X');
INSERT INTO `ey_region` VALUES ('12615', '江干区', '3', '12597', 'J');
INSERT INTO `ey_region` VALUES ('12626', '拱墅区', '3', '12597', 'G');
INSERT INTO `ey_region` VALUES ('12637', '西湖区', '3', '12597', 'X');
INSERT INTO `ey_region` VALUES ('12652', '滨江区', '3', '12597', 'B');
INSERT INTO `ey_region` VALUES ('12656', '萧山区', '3', '12597', 'X');
INSERT INTO `ey_region` VALUES ('12685', '余杭区', '3', '12597', 'Y');
INSERT INTO `ey_region` VALUES ('12705', '桐庐县', '3', '12597', 'T');
INSERT INTO `ey_region` VALUES ('12719', '淳安县', '3', '12597', 'C');
INSERT INTO `ey_region` VALUES ('12743', '建德市', '3', '12597', 'J');
INSERT INTO `ey_region` VALUES ('12760', '富阳市', '3', '12597', 'F');
INSERT INTO `ey_region` VALUES ('12786', '临安市', '3', '12597', 'L');
INSERT INTO `ey_region` VALUES ('12813', '宁波市', '2', '12596', 'N');
INSERT INTO `ey_region` VALUES ('12814', '市辖区', '3', '12813', 'S');
INSERT INTO `ey_region` VALUES ('12815', '海曙区', '3', '12813', 'H');
INSERT INTO `ey_region` VALUES ('12824', '江东区', '3', '12813', 'J');
INSERT INTO `ey_region` VALUES ('12832', '江北区', '3', '12813', 'J');
INSERT INTO `ey_region` VALUES ('12841', '北仑区', '3', '12813', 'B');
INSERT INTO `ey_region` VALUES ('12851', '镇海区', '3', '12813', 'Z');
INSERT INTO `ey_region` VALUES ('12858', '鄞州区', '3', '12813', 'Y');
INSERT INTO `ey_region` VALUES ('12881', '象山县', '3', '12813', 'X');
INSERT INTO `ey_region` VALUES ('12900', '宁海县', '3', '12813', 'N');
INSERT INTO `ey_region` VALUES ('12919', '余姚市', '3', '12813', 'Y');
INSERT INTO `ey_region` VALUES ('12941', '慈溪市', '3', '12813', 'C');
INSERT INTO `ey_region` VALUES ('12962', '奉化市', '3', '12813', 'F');
INSERT INTO `ey_region` VALUES ('12974', '温州市', '2', '12596', 'W');
INSERT INTO `ey_region` VALUES ('12975', '市辖区', '3', '12974', 'S');
INSERT INTO `ey_region` VALUES ('12976', '鹿城区', '3', '12974', 'L');
INSERT INTO `ey_region` VALUES ('12998', '龙湾区', '3', '12974', 'L');
INSERT INTO `ey_region` VALUES ('13009', '瓯海区', '3', '12974', 'O');
INSERT INTO `ey_region` VALUES ('13023', '洞头县', '3', '12974', 'D');
INSERT INTO `ey_region` VALUES ('13030', '永嘉县', '3', '12974', 'Y');
INSERT INTO `ey_region` VALUES ('13069', '平阳县', '3', '12974', 'P');
INSERT INTO `ey_region` VALUES ('13101', '苍南县', '3', '12974', 'C');
INSERT INTO `ey_region` VALUES ('13138', '文成县', '3', '12974', 'W');
INSERT INTO `ey_region` VALUES ('13172', '泰顺县', '3', '12974', 'T');
INSERT INTO `ey_region` VALUES ('13209', '瑞安市', '3', '12974', 'R');
INSERT INTO `ey_region` VALUES ('13248', '乐清市', '3', '12974', 'L');
INSERT INTO `ey_region` VALUES ('13280', '嘉兴市', '2', '12596', 'J');
INSERT INTO `ey_region` VALUES ('13281', '市辖区', '3', '13280', 'S');
INSERT INTO `ey_region` VALUES ('13282', '南湖区', '3', '13280', 'N');
INSERT INTO `ey_region` VALUES ('13295', '秀洲区', '3', '13280', 'X');
INSERT INTO `ey_region` VALUES ('13304', '嘉善县', '3', '13280', 'J');
INSERT INTO `ey_region` VALUES ('13316', '海盐县', '3', '13280', 'H');
INSERT INTO `ey_region` VALUES ('13325', '海宁市', '3', '13280', 'H');
INSERT INTO `ey_region` VALUES ('13339', '平湖市', '3', '13280', 'P');
INSERT INTO `ey_region` VALUES ('13350', '桐乡市', '3', '13280', 'T');
INSERT INTO `ey_region` VALUES ('13364', '湖州市', '2', '12596', 'H');
INSERT INTO `ey_region` VALUES ('13365', '市辖区', '3', '13364', 'S');
INSERT INTO `ey_region` VALUES ('13366', '吴兴区', '3', '13364', 'W');
INSERT INTO `ey_region` VALUES ('13382', '南浔区', '3', '13364', 'N');
INSERT INTO `ey_region` VALUES ('13392', '德清县', '3', '13364', 'D');
INSERT INTO `ey_region` VALUES ('13404', '长兴县', '3', '13364', 'C');
INSERT INTO `ey_region` VALUES ('13421', '安吉县', '3', '13364', 'A');
INSERT INTO `ey_region` VALUES ('13437', '绍兴市', '2', '12596', 'S');
INSERT INTO `ey_region` VALUES ('13438', '市辖区', '3', '13437', 'S');
INSERT INTO `ey_region` VALUES ('13439', '越城区', '3', '13437', 'Y');
INSERT INTO `ey_region` VALUES ('13453', '绍兴县', '3', '13437', 'S');
INSERT INTO `ey_region` VALUES ('13473', '新昌县', '3', '13437', 'X');
INSERT INTO `ey_region` VALUES ('13490', '诸暨市', '3', '13437', 'Z');
INSERT INTO `ey_region` VALUES ('13518', '上虞市', '3', '13437', 'S');
INSERT INTO `ey_region` VALUES ('13542', '嵊州市', '3', '13437', 'S');
INSERT INTO `ey_region` VALUES ('13564', '金华市', '2', '12596', 'J');
INSERT INTO `ey_region` VALUES ('13565', '市辖区', '3', '13564', 'S');
INSERT INTO `ey_region` VALUES ('13566', '婺城区', '3', '13564', 'W');
INSERT INTO `ey_region` VALUES ('13594', '金东区', '3', '13564', 'J');
INSERT INTO `ey_region` VALUES ('13606', '武义县', '3', '13564', 'W');
INSERT INTO `ey_region` VALUES ('13625', '浦江县', '3', '13564', 'P');
INSERT INTO `ey_region` VALUES ('13641', '磐安县', '3', '13564', 'P');
INSERT INTO `ey_region` VALUES ('13662', '兰溪市', '3', '13564', 'L');
INSERT INTO `ey_region` VALUES ('13678', '义乌市', '3', '13564', 'Y');
INSERT INTO `ey_region` VALUES ('13692', '东阳市', '3', '13564', 'D');
INSERT INTO `ey_region` VALUES ('13711', '永康市', '3', '13564', 'Y');
INSERT INTO `ey_region` VALUES ('13726', '衢州市', '2', '12596', 'Q');
INSERT INTO `ey_region` VALUES ('13727', '市辖区', '3', '13726', 'S');
INSERT INTO `ey_region` VALUES ('13728', '柯城区', '3', '13726', 'K');
INSERT INTO `ey_region` VALUES ('13746', '衢江区', '3', '13726', 'Q');
INSERT INTO `ey_region` VALUES ('13768', '常山县', '3', '13726', 'C');
INSERT INTO `ey_region` VALUES ('13783', '开化县', '3', '13726', 'K');
INSERT INTO `ey_region` VALUES ('13802', '龙游县', '3', '13726', 'L');
INSERT INTO `ey_region` VALUES ('13818', '江山市', '3', '13726', 'J');
INSERT INTO `ey_region` VALUES ('13840', '舟山市', '2', '12596', 'Z');
INSERT INTO `ey_region` VALUES ('13841', '市辖区', '3', '13840', 'S');
INSERT INTO `ey_region` VALUES ('13842', '定海区', '3', '13840', 'D');
INSERT INTO `ey_region` VALUES ('13859', '普陀区', '3', '13840', 'P');
INSERT INTO `ey_region` VALUES ('13874', '岱山县', '3', '13840', 'D');
INSERT INTO `ey_region` VALUES ('13882', '嵊泗县', '3', '13840', 'S');
INSERT INTO `ey_region` VALUES ('13890', '台州市', '2', '12596', 'T');
INSERT INTO `ey_region` VALUES ('13891', '市辖区', '3', '13890', 'S');
INSERT INTO `ey_region` VALUES ('13892', '椒江区', '3', '13890', 'J');
INSERT INTO `ey_region` VALUES ('13903', '黄岩区', '3', '13890', 'H');
INSERT INTO `ey_region` VALUES ('13923', '路桥区', '3', '13890', 'L');
INSERT INTO `ey_region` VALUES ('13934', '玉环县', '3', '13890', 'Y');
INSERT INTO `ey_region` VALUES ('13944', '三门县', '3', '13890', 'S');
INSERT INTO `ey_region` VALUES ('13959', '天台县', '3', '13890', 'T');
INSERT INTO `ey_region` VALUES ('13975', '仙居县', '3', '13890', 'X');
INSERT INTO `ey_region` VALUES ('13996', '温岭市', '3', '13890', 'W');
INSERT INTO `ey_region` VALUES ('14013', '临海市', '3', '13890', 'L');
INSERT INTO `ey_region` VALUES ('14033', '丽水市', '2', '12596', 'L');
INSERT INTO `ey_region` VALUES ('14034', '市辖区', '3', '14033', 'S');
INSERT INTO `ey_region` VALUES ('14035', '莲都区', '3', '14033', 'L');
INSERT INTO `ey_region` VALUES ('14054', '青田县', '3', '14033', 'Q');
INSERT INTO `ey_region` VALUES ('14086', '缙云县', '3', '14033', 'J');
INSERT INTO `ey_region` VALUES ('14111', '遂昌县', '3', '14033', 'S');
INSERT INTO `ey_region` VALUES ('14132', '松阳县', '3', '14033', 'S');
INSERT INTO `ey_region` VALUES ('14153', '云和县', '3', '14033', 'Y');
INSERT INTO `ey_region` VALUES ('14168', '庆元县', '3', '14033', 'Q');
INSERT INTO `ey_region` VALUES ('14189', '景宁县', '3', '14033', 'J');
INSERT INTO `ey_region` VALUES ('14214', '龙泉市', '3', '14033', 'L');
INSERT INTO `ey_region` VALUES ('14234', '安徽省', '1', '0', 'A');
INSERT INTO `ey_region` VALUES ('14235', '合肥市', '2', '14234', 'H');
INSERT INTO `ey_region` VALUES ('14236', '市辖区', '3', '14235', 'S');
INSERT INTO `ey_region` VALUES ('14237', '瑶海区', '3', '14235', 'Y');
INSERT INTO `ey_region` VALUES ('14254', '庐阳区', '3', '14235', 'L');
INSERT INTO `ey_region` VALUES ('14269', '蜀山区', '3', '14235', 'S');
INSERT INTO `ey_region` VALUES ('14286', '包河区', '3', '14235', 'B');
INSERT INTO `ey_region` VALUES ('14297', '长丰县', '3', '14235', 'C');
INSERT INTO `ey_region` VALUES ('14314', '肥东县', '3', '14235', 'F');
INSERT INTO `ey_region` VALUES ('14334', '肥西县', '3', '14235', 'F');
INSERT INTO `ey_region` VALUES ('14351', '芜湖市', '2', '14234', 'W');
INSERT INTO `ey_region` VALUES ('14352', '市辖区', '3', '14351', 'S');
INSERT INTO `ey_region` VALUES ('14353', '镜湖区', '3', '14351', 'J');
INSERT INTO `ey_region` VALUES ('14366', '弋江区', '3', '14351', 'Y');
INSERT INTO `ey_region` VALUES ('14374', '鸠江区', '3', '14351', 'J');
INSERT INTO `ey_region` VALUES ('14382', '三山区', '3', '14351', 'S');
INSERT INTO `ey_region` VALUES ('14387', '芜湖县', '3', '14351', 'W');
INSERT INTO `ey_region` VALUES ('14394', '繁昌县', '3', '14351', 'F');
INSERT INTO `ey_region` VALUES ('14401', '南陵县', '3', '14351', 'N');
INSERT INTO `ey_region` VALUES ('14410', '蚌埠市', '2', '14234', 'B');
INSERT INTO `ey_region` VALUES ('14411', '市辖区', '3', '14410', 'S');
INSERT INTO `ey_region` VALUES ('14412', '龙子湖区', '3', '14410', 'L');
INSERT INTO `ey_region` VALUES ('14422', '蚌山区', '3', '14410', 'B');
INSERT INTO `ey_region` VALUES ('14434', '禹会区', '3', '14410', 'Y');
INSERT INTO `ey_region` VALUES ('14443', '淮上区', '3', '14410', 'H');
INSERT INTO `ey_region` VALUES ('14449', '怀远县', '3', '14410', 'H');
INSERT INTO `ey_region` VALUES ('14471', '五河县', '3', '14410', 'W');
INSERT INTO `ey_region` VALUES ('14487', '固镇县', '3', '14410', 'G');
INSERT INTO `ey_region` VALUES ('14500', '淮南市', '2', '14234', 'H');
INSERT INTO `ey_region` VALUES ('14501', '市辖区', '3', '14500', 'S');
INSERT INTO `ey_region` VALUES ('14502', '大通区', '3', '14500', 'D');
INSERT INTO `ey_region` VALUES ('14508', '田家庵区', '3', '14500', 'T');
INSERT INTO `ey_region` VALUES ('14523', '谢家集区', '3', '14500', 'X');
INSERT INTO `ey_region` VALUES ('14535', '八公山区', '3', '14500', 'B');
INSERT INTO `ey_region` VALUES ('14542', '潘集区', '3', '14500', 'P');
INSERT INTO `ey_region` VALUES ('14554', '凤台县', '3', '14500', 'F');
INSERT INTO `ey_region` VALUES ('14575', '马鞍山市', '2', '14234', 'M');
INSERT INTO `ey_region` VALUES ('14576', '市辖区', '3', '14575', 'S');
INSERT INTO `ey_region` VALUES ('14577', '金家庄区', '3', '14575', 'J');
INSERT INTO `ey_region` VALUES ('14583', '花山区', '3', '14575', 'H');
INSERT INTO `ey_region` VALUES ('14589', '雨山区', '3', '14575', 'Y');
INSERT INTO `ey_region` VALUES ('14597', '当涂县', '3', '14575', 'D');
INSERT INTO `ey_region` VALUES ('14612', '淮北市', '2', '14234', 'H');
INSERT INTO `ey_region` VALUES ('14613', '市辖区', '3', '14612', 'S');
INSERT INTO `ey_region` VALUES ('14614', '杜集区', '3', '14612', 'D');
INSERT INTO `ey_region` VALUES ('14620', '相山区', '3', '14612', 'X');
INSERT INTO `ey_region` VALUES ('14632', '烈山区', '3', '14612', 'L');
INSERT INTO `ey_region` VALUES ('14641', '濉溪县', '3', '14612', 'S');
INSERT INTO `ey_region` VALUES ('14653', '铜陵市', '2', '14234', 'T');
INSERT INTO `ey_region` VALUES ('14654', '市辖区', '3', '14653', 'S');
INSERT INTO `ey_region` VALUES ('14655', '铜官山区', '3', '14653', 'T');
INSERT INTO `ey_region` VALUES ('14663', '狮子山区', '3', '14653', 'S');
INSERT INTO `ey_region` VALUES ('14671', '铜陵市郊区', '3', '14653', 'T');
INSERT INTO `ey_region` VALUES ('14678', '铜陵县', '3', '14653', 'T');
INSERT INTO `ey_region` VALUES ('14687', '安庆市', '2', '14234', 'A');
INSERT INTO `ey_region` VALUES ('14688', '市辖区', '3', '14687', 'S');
INSERT INTO `ey_region` VALUES ('14689', '迎江区', '3', '14687', 'Y');
INSERT INTO `ey_region` VALUES ('14700', '大观区', '3', '14687', 'D');
INSERT INTO `ey_region` VALUES ('14712', '宜秀区', '3', '14687', 'Y');
INSERT INTO `ey_region` VALUES ('14720', '怀宁县', '3', '14687', 'H');
INSERT INTO `ey_region` VALUES ('14741', '枞阳县', '3', '14687', 'C');
INSERT INTO `ey_region` VALUES ('14764', '潜山县', '3', '14687', 'Q');
INSERT INTO `ey_region` VALUES ('14782', '太湖县', '3', '14687', 'T');
INSERT INTO `ey_region` VALUES ('14798', '宿松县', '3', '14687', 'S');
INSERT INTO `ey_region` VALUES ('14823', '望江县', '3', '14687', 'W');
INSERT INTO `ey_region` VALUES ('14834', '岳西县', '3', '14687', 'Y');
INSERT INTO `ey_region` VALUES ('14859', '桐城市', '3', '14687', 'T');
INSERT INTO `ey_region` VALUES ('14887', '黄山市', '2', '14234', 'H');
INSERT INTO `ey_region` VALUES ('14888', '市辖区', '3', '14887', 'S');
INSERT INTO `ey_region` VALUES ('14889', '屯溪区', '3', '14887', 'T');
INSERT INTO `ey_region` VALUES ('14900', '黄山区', '3', '14887', 'H');
INSERT INTO `ey_region` VALUES ('14917', '徽州区', '3', '14887', 'H');
INSERT INTO `ey_region` VALUES ('14926', '歙县', '3', '14887', 'S');
INSERT INTO `ey_region` VALUES ('14955', '休宁县', '3', '14887', 'X');
INSERT INTO `ey_region` VALUES ('14977', '黟县', '3', '14887', 'Y');
INSERT INTO `ey_region` VALUES ('14986', '祁门县', '3', '14887', 'Q');
INSERT INTO `ey_region` VALUES ('15005', '滁州市', '2', '14234', 'C');
INSERT INTO `ey_region` VALUES ('15006', '市辖区', '3', '15005', 'S');
INSERT INTO `ey_region` VALUES ('15007', '琅琊区', '3', '15005', 'L');
INSERT INTO `ey_region` VALUES ('15016', '南谯区', '3', '15005', 'N');
INSERT INTO `ey_region` VALUES ('15034', '来安县', '3', '15005', 'L');
INSERT INTO `ey_region` VALUES ('15053', '全椒县', '3', '15005', 'Q');
INSERT INTO `ey_region` VALUES ('15071', '定远县', '3', '15005', 'D');
INSERT INTO `ey_region` VALUES ('15109', '凤阳县', '3', '15005', 'F');
INSERT INTO `ey_region` VALUES ('15136', '天长市', '3', '15005', 'T');
INSERT INTO `ey_region` VALUES ('15166', '明光市', '3', '15005', 'M');
INSERT INTO `ey_region` VALUES ('15194', '阜阳市', '2', '14234', 'F');
INSERT INTO `ey_region` VALUES ('15195', '市辖区', '3', '15194', 'S');
INSERT INTO `ey_region` VALUES ('15196', '颍州区', '3', '15194', 'Y');
INSERT INTO `ey_region` VALUES ('15211', '颍东区', '3', '15194', 'Y');
INSERT INTO `ey_region` VALUES ('15224', '颍泉区', '3', '15194', 'Y');
INSERT INTO `ey_region` VALUES ('15231', '临泉县', '3', '15194', 'L');
INSERT INTO `ey_region` VALUES ('15264', '太和县', '3', '15194', 'T');
INSERT INTO `ey_region` VALUES ('15296', '阜南县', '3', '15194', 'F');
INSERT INTO `ey_region` VALUES ('15328', '颍上县', '3', '15194', 'Y');
INSERT INTO `ey_region` VALUES ('15359', '界首市', '3', '15194', 'J');
INSERT INTO `ey_region` VALUES ('15378', '宿州市', '2', '14234', 'S');
INSERT INTO `ey_region` VALUES ('15379', '市辖区', '3', '15378', 'S');
INSERT INTO `ey_region` VALUES ('15380', '墉桥区', '3', '15378', 'Y');
INSERT INTO `ey_region` VALUES ('15417', '砀山县', '3', '15378', 'D');
INSERT INTO `ey_region` VALUES ('15437', '萧县', '3', '15378', 'X');
INSERT INTO `ey_region` VALUES ('15461', '灵璧县', '3', '15378', 'L');
INSERT INTO `ey_region` VALUES ('15482', '泗县', '3', '15378', 'S');
INSERT INTO `ey_region` VALUES ('15499', '巢湖市', '2', '14234', 'C');
INSERT INTO `ey_region` VALUES ('15500', '市辖区', '3', '15499', 'S');
INSERT INTO `ey_region` VALUES ('15501', '居巢区', '3', '15499', 'J');
INSERT INTO `ey_region` VALUES ('15520', '庐江县', '3', '15499', 'L');
INSERT INTO `ey_region` VALUES ('15542', '无为县', '3', '15499', 'W');
INSERT INTO `ey_region` VALUES ('15566', '含山县', '3', '15499', 'H');
INSERT INTO `ey_region` VALUES ('15575', '和县', '3', '15499', 'H');
INSERT INTO `ey_region` VALUES ('15586', '六安市', '2', '14234', 'L');
INSERT INTO `ey_region` VALUES ('15587', '市辖区', '3', '15586', 'S');
INSERT INTO `ey_region` VALUES ('15588', '金安区', '3', '15586', 'J');
INSERT INTO `ey_region` VALUES ('15612', '裕安区', '3', '15586', 'Y');
INSERT INTO `ey_region` VALUES ('15635', '寿县', '3', '15586', 'S');
INSERT INTO `ey_region` VALUES ('15662', '霍邱县', '3', '15586', 'H');
INSERT INTO `ey_region` VALUES ('15698', '舒城县', '3', '15586', 'S');
INSERT INTO `ey_region` VALUES ('15720', '金寨县', '3', '15586', 'J');
INSERT INTO `ey_region` VALUES ('15747', '霍山县', '3', '15586', 'H');
INSERT INTO `ey_region` VALUES ('15764', '亳州市', '2', '14234', 'H');
INSERT INTO `ey_region` VALUES ('15765', '市辖区', '3', '15764', 'S');
INSERT INTO `ey_region` VALUES ('15766', '谯城区', '3', '15764', 'Q');
INSERT INTO `ey_region` VALUES ('15795', '涡阳县', '3', '15764', 'W');
INSERT INTO `ey_region` VALUES ('15823', '蒙城县', '3', '15764', 'M');
INSERT INTO `ey_region` VALUES ('15843', '利辛县', '3', '15764', 'L');
INSERT INTO `ey_region` VALUES ('15871', '池州市', '2', '14234', 'C');
INSERT INTO `ey_region` VALUES ('15872', '市辖区', '3', '15871', 'S');
INSERT INTO `ey_region` VALUES ('15873', '贵池区', '3', '15871', 'G');
INSERT INTO `ey_region` VALUES ('15900', '东至县', '3', '15871', 'D');
INSERT INTO `ey_region` VALUES ('15930', '石台县', '3', '15871', 'S');
INSERT INTO `ey_region` VALUES ('15944', '青阳县', '3', '15871', 'Q');
INSERT INTO `ey_region` VALUES ('15958', '宣城市', '2', '14234', 'X');
INSERT INTO `ey_region` VALUES ('15959', '市辖区', '3', '15958', 'S');
INSERT INTO `ey_region` VALUES ('15960', '宣州区', '3', '15958', 'X');
INSERT INTO `ey_region` VALUES ('15987', '郎溪县', '3', '15958', 'L');
INSERT INTO `ey_region` VALUES ('16001', '广德县', '3', '15958', 'G');
INSERT INTO `ey_region` VALUES ('16013', '泾县', '3', '15958', 'J');
INSERT INTO `ey_region` VALUES ('16025', '绩溪县', '3', '15958', 'J');
INSERT INTO `ey_region` VALUES ('16037', '旌德县', '3', '15958', 'J');
INSERT INTO `ey_region` VALUES ('16048', '宁国市', '3', '15958', 'N');
INSERT INTO `ey_region` VALUES ('16068', '福建省', '1', '0', 'F');
INSERT INTO `ey_region` VALUES ('16069', '福州市', '2', '16068', 'F');
INSERT INTO `ey_region` VALUES ('16070', '市辖区', '3', '16069', 'S');
INSERT INTO `ey_region` VALUES ('16071', '鼓楼区', '3', '16069', 'G');
INSERT INTO `ey_region` VALUES ('16082', '台江区', '3', '16069', 'T');
INSERT INTO `ey_region` VALUES ('16093', '仓山区', '3', '16069', 'C');
INSERT INTO `ey_region` VALUES ('16108', '马尾区', '3', '16069', 'M');
INSERT INTO `ey_region` VALUES ('16113', '晋安区', '3', '16069', 'J');
INSERT INTO `ey_region` VALUES ('16123', '闽侯县', '3', '16069', 'M');
INSERT INTO `ey_region` VALUES ('16140', '连江县', '3', '16069', 'L');
INSERT INTO `ey_region` VALUES ('16164', '罗源县', '3', '16069', 'L');
INSERT INTO `ey_region` VALUES ('16177', '闽清县', '3', '16069', 'M');
INSERT INTO `ey_region` VALUES ('16194', '永泰县', '3', '16069', 'Y');
INSERT INTO `ey_region` VALUES ('16216', '平潭县', '3', '16069', 'P');
INSERT INTO `ey_region` VALUES ('16232', '福清市', '3', '16069', 'F');
INSERT INTO `ey_region` VALUES ('16259', '长乐市', '3', '16069', 'C');
INSERT INTO `ey_region` VALUES ('16278', '厦门市', '2', '16068', 'X');
INSERT INTO `ey_region` VALUES ('16279', '市辖区', '3', '16278', 'S');
INSERT INTO `ey_region` VALUES ('16280', '思明区', '3', '16278', 'S');
INSERT INTO `ey_region` VALUES ('16294', '海沧区', '3', '16278', 'H');
INSERT INTO `ey_region` VALUES ('16303', '湖里区', '3', '16278', 'H');
INSERT INTO `ey_region` VALUES ('16315', '集美区', '3', '16278', 'J');
INSERT INTO `ey_region` VALUES ('16326', '同安区', '3', '16278', 'T');
INSERT INTO `ey_region` VALUES ('16341', '翔安区', '3', '16278', 'X');
INSERT INTO `ey_region` VALUES ('16348', '莆田市', '2', '16068', 'P');
INSERT INTO `ey_region` VALUES ('16349', '市辖区', '3', '16348', 'S');
INSERT INTO `ey_region` VALUES ('16350', '城厢区', '3', '16348', 'C');
INSERT INTO `ey_region` VALUES ('16358', '涵江区', '3', '16348', 'H');
INSERT INTO `ey_region` VALUES ('16372', '荔城区', '3', '16348', 'L');
INSERT INTO `ey_region` VALUES ('16379', '秀屿区', '3', '16348', 'X');
INSERT INTO `ey_region` VALUES ('16393', '仙游县', '3', '16348', 'X');
INSERT INTO `ey_region` VALUES ('16412', '三明市', '2', '16068', 'S');
INSERT INTO `ey_region` VALUES ('16413', '市辖区', '3', '16412', 'S');
INSERT INTO `ey_region` VALUES ('16414', '梅列区', '3', '16412', 'M');
INSERT INTO `ey_region` VALUES ('16421', '三元区', '3', '16412', 'S');
INSERT INTO `ey_region` VALUES ('16430', '明溪县', '3', '16412', 'M');
INSERT INTO `ey_region` VALUES ('16440', '清流县', '3', '16412', 'Q');
INSERT INTO `ey_region` VALUES ('16455', '宁化县', '3', '16412', 'N');
INSERT INTO `ey_region` VALUES ('16472', '大田县', '3', '16412', 'D');
INSERT INTO `ey_region` VALUES ('16492', '尤溪县', '3', '16412', 'Y');
INSERT INTO `ey_region` VALUES ('16508', '沙县', '3', '16412', 'S');
INSERT INTO `ey_region` VALUES ('16521', '将乐县', '3', '16412', 'J');
INSERT INTO `ey_region` VALUES ('16535', '泰宁县', '3', '16412', 'T');
INSERT INTO `ey_region` VALUES ('16545', '建宁县', '3', '16412', 'J');
INSERT INTO `ey_region` VALUES ('16556', '永安市', '3', '16412', 'Y');
INSERT INTO `ey_region` VALUES ('16572', '泉州市', '2', '16068', 'Q');
INSERT INTO `ey_region` VALUES ('16573', '市辖区', '3', '16572', 'S');
INSERT INTO `ey_region` VALUES ('16574', '鲤城区', '3', '16572', 'L');
INSERT INTO `ey_region` VALUES ('16584', '丰泽区', '3', '16572', 'F');
INSERT INTO `ey_region` VALUES ('16593', '洛江区', '3', '16572', 'L');
INSERT INTO `ey_region` VALUES ('16600', '泉港区', '3', '16572', 'Q');
INSERT INTO `ey_region` VALUES ('16608', '惠安县', '3', '16572', 'H');
INSERT INTO `ey_region` VALUES ('16625', '安溪县', '3', '16572', 'A');
INSERT INTO `ey_region` VALUES ('16650', '永春县', '3', '16572', 'Y');
INSERT INTO `ey_region` VALUES ('16673', '德化县', '3', '16572', 'D');
INSERT INTO `ey_region` VALUES ('16692', '金门县', '3', '16572', 'J');
INSERT INTO `ey_region` VALUES ('16693', '石狮市', '3', '16572', 'S');
INSERT INTO `ey_region` VALUES ('16703', '晋江市', '3', '16572', 'J');
INSERT INTO `ey_region` VALUES ('16726', '南安市', '3', '16572', 'N');
INSERT INTO `ey_region` VALUES ('16754', '漳州市', '2', '16068', 'Z');
INSERT INTO `ey_region` VALUES ('16755', '市辖区', '3', '16754', 'S');
INSERT INTO `ey_region` VALUES ('16756', '芗城区', '3', '16754', 'X');
INSERT INTO `ey_region` VALUES ('16772', '龙文区', '3', '16754', 'L');
INSERT INTO `ey_region` VALUES ('16778', '云霄县', '3', '16754', 'Y');
INSERT INTO `ey_region` VALUES ('16790', '漳浦县', '3', '16754', 'Z');
INSERT INTO `ey_region` VALUES ('16821', '诏安县', '3', '16754', 'Z');
INSERT INTO `ey_region` VALUES ('16842', '长泰县', '3', '16754', 'C');
INSERT INTO `ey_region` VALUES ('16852', '东山县', '3', '16754', 'D');
INSERT INTO `ey_region` VALUES ('16860', '南靖县', '3', '16754', 'N');
INSERT INTO `ey_region` VALUES ('16872', '平和县', '3', '16754', 'P');
INSERT INTO `ey_region` VALUES ('16889', '华安县', '3', '16754', 'H');
INSERT INTO `ey_region` VALUES ('16899', '龙海市', '3', '16754', 'L');
INSERT INTO `ey_region` VALUES ('16924', '南平市', '2', '16068', 'N');
INSERT INTO `ey_region` VALUES ('16925', '市辖区', '3', '16924', 'S');
INSERT INTO `ey_region` VALUES ('16926', '延平区', '3', '16924', 'Y');
INSERT INTO `ey_region` VALUES ('16948', '顺昌县', '3', '16924', 'S');
INSERT INTO `ey_region` VALUES ('16961', '浦城县', '3', '16924', 'P');
INSERT INTO `ey_region` VALUES ('16982', '光泽县', '3', '16924', 'G');
INSERT INTO `ey_region` VALUES ('16991', '松溪县', '3', '16924', 'S');
INSERT INTO `ey_region` VALUES ('17001', '政和县', '3', '16924', 'Z');
INSERT INTO `ey_region` VALUES ('17012', '邵武市', '3', '16924', 'S');
INSERT INTO `ey_region` VALUES ('17033', '武夷山市', '3', '16924', 'W');
INSERT INTO `ey_region` VALUES ('17044', '建瓯市', '3', '16924', 'J');
INSERT INTO `ey_region` VALUES ('17063', '建阳市', '3', '16924', 'J');
INSERT INTO `ey_region` VALUES ('17077', '龙岩市', '2', '16068', 'L');
INSERT INTO `ey_region` VALUES ('17078', '市辖区', '3', '17077', 'S');
INSERT INTO `ey_region` VALUES ('17079', '新罗区', '3', '17077', 'X');
INSERT INTO `ey_region` VALUES ('17099', '长汀县', '3', '17077', 'C');
INSERT INTO `ey_region` VALUES ('17118', '永定县', '3', '17077', 'Y');
INSERT INTO `ey_region` VALUES ('17143', '上杭县', '3', '17077', 'S');
INSERT INTO `ey_region` VALUES ('17166', '武平县', '3', '17077', 'W');
INSERT INTO `ey_region` VALUES ('17184', '连城县', '3', '17077', 'L');
INSERT INTO `ey_region` VALUES ('17202', '漳平市', '3', '17077', 'Z');
INSERT INTO `ey_region` VALUES ('17219', '宁德市　', '2', '16068', 'N');
INSERT INTO `ey_region` VALUES ('17220', '市辖区', '3', '17219', 'S');
INSERT INTO `ey_region` VALUES ('17221', '蕉城区', '3', '17219', 'J');
INSERT INTO `ey_region` VALUES ('17239', '霞浦县', '3', '17219', 'X');
INSERT INTO `ey_region` VALUES ('17254', '古田县', '3', '17219', 'G');
INSERT INTO `ey_region` VALUES ('17269', '屏南县', '3', '17219', 'P');
INSERT INTO `ey_region` VALUES ('17281', '寿宁县', '3', '17219', 'S');
INSERT INTO `ey_region` VALUES ('17296', '周宁县', '3', '17219', 'Z');
INSERT INTO `ey_region` VALUES ('17306', '柘荣县', '3', '17219', 'Z');
INSERT INTO `ey_region` VALUES ('17316', '福安市', '3', '17219', 'F');
INSERT INTO `ey_region` VALUES ('17341', '福鼎市', '3', '17219', 'F');
INSERT INTO `ey_region` VALUES ('17359', '江西省', '1', '0', 'J');
INSERT INTO `ey_region` VALUES ('17360', '南昌市', '2', '17359', 'N');
INSERT INTO `ey_region` VALUES ('17361', '市辖区', '3', '17360', 'S');
INSERT INTO `ey_region` VALUES ('17362', '东湖区', '3', '17360', 'D');
INSERT INTO `ey_region` VALUES ('17374', '西湖区', '3', '17360', 'X');
INSERT INTO `ey_region` VALUES ('17387', '青云谱区', '3', '17360', 'Q');
INSERT INTO `ey_region` VALUES ('17395', '湾里区', '3', '17360', 'W');
INSERT INTO `ey_region` VALUES ('17402', '青山湖区', '3', '17360', 'Q');
INSERT INTO `ey_region` VALUES ('17420', '南昌县', '3', '17360', 'N');
INSERT INTO `ey_region` VALUES ('17443', '新建县', '3', '17360', 'X');
INSERT INTO `ey_region` VALUES ('17471', '安义县', '3', '17360', 'A');
INSERT INTO `ey_region` VALUES ('17485', '进贤县', '3', '17360', 'J');
INSERT INTO `ey_region` VALUES ('17508', '景德镇市', '2', '17359', 'J');
INSERT INTO `ey_region` VALUES ('17509', '市辖区', '3', '17508', 'S');
INSERT INTO `ey_region` VALUES ('17510', '昌江区', '3', '17508', 'C');
INSERT INTO `ey_region` VALUES ('17534', '珠山区', '3', '17508', 'Z');
INSERT INTO `ey_region` VALUES ('17545', '浮梁县', '3', '17508', 'F');
INSERT INTO `ey_region` VALUES ('17568', '乐平市', '3', '17508', 'L');
INSERT INTO `ey_region` VALUES ('17589', '萍乡市', '2', '17359', 'P');
INSERT INTO `ey_region` VALUES ('17590', '市辖区', '3', '17589', 'S');
INSERT INTO `ey_region` VALUES ('17591', '安源区', '3', '17589', 'A');
INSERT INTO `ey_region` VALUES ('17604', '湘东区', '3', '17589', 'X');
INSERT INTO `ey_region` VALUES ('17616', '莲花县', '3', '17589', 'L');
INSERT INTO `ey_region` VALUES ('17630', '上栗县', '3', '17589', 'S');
INSERT INTO `ey_region` VALUES ('17640', '芦溪县', '3', '17589', 'L');
INSERT INTO `ey_region` VALUES ('17651', '九江市', '2', '17359', 'J');
INSERT INTO `ey_region` VALUES ('17652', '市辖区', '3', '17651', 'S');
INSERT INTO `ey_region` VALUES ('17653', '庐山区', '3', '17651', 'L');
INSERT INTO `ey_region` VALUES ('17667', '浔阳区', '3', '17651', 'X');
INSERT INTO `ey_region` VALUES ('17676', '九江县', '3', '17651', 'J');
INSERT INTO `ey_region` VALUES ('17693', '武宁县', '3', '17651', 'W');
INSERT INTO `ey_region` VALUES ('17714', '修水县', '3', '17651', 'X');
INSERT INTO `ey_region` VALUES ('17751', '永修县', '3', '17651', 'Y');
INSERT INTO `ey_region` VALUES ('17773', '德安县', '3', '17651', 'D');
INSERT INTO `ey_region` VALUES ('17792', '星子县', '3', '17651', 'X');
INSERT INTO `ey_region` VALUES ('17807', '都昌县', '3', '17651', 'D');
INSERT INTO `ey_region` VALUES ('17834', '湖口县', '3', '17651', 'H');
INSERT INTO `ey_region` VALUES ('17849', '彭泽县', '3', '17651', 'P');
INSERT INTO `ey_region` VALUES ('17872', '瑞昌市', '3', '17651', 'R');
INSERT INTO `ey_region` VALUES ('17894', '新余市', '2', '17359', 'X');
INSERT INTO `ey_region` VALUES ('17895', '市辖区', '3', '17894', 'S');
INSERT INTO `ey_region` VALUES ('17896', '渝水区', '3', '17894', 'Y');
INSERT INTO `ey_region` VALUES ('17917', '分宜县', '3', '17894', 'F');
INSERT INTO `ey_region` VALUES ('17934', '鹰潭市', '2', '17359', 'Y');
INSERT INTO `ey_region` VALUES ('17935', '市辖区', '3', '17934', 'S');
INSERT INTO `ey_region` VALUES ('17936', '月湖区', '3', '17934', 'Y');
INSERT INTO `ey_region` VALUES ('17945', '余江县', '3', '17934', 'Y');
INSERT INTO `ey_region` VALUES ('17966', '贵溪市', '3', '17934', 'G');
INSERT INTO `ey_region` VALUES ('17999', '赣州市', '2', '17359', 'G');
INSERT INTO `ey_region` VALUES ('18000', '市辖区', '3', '17999', 'S');
INSERT INTO `ey_region` VALUES ('18001', '章贡区', '3', '17999', 'Z');
INSERT INTO `ey_region` VALUES ('18016', '赣县', '3', '17999', 'G');
INSERT INTO `ey_region` VALUES ('18037', '信丰县', '3', '17999', 'X');
INSERT INTO `ey_region` VALUES ('18055', '大余县', '3', '17999', 'D');
INSERT INTO `ey_region` VALUES ('18068', '上犹县', '3', '17999', 'S');
INSERT INTO `ey_region` VALUES ('18084', '崇义县', '3', '17999', 'C');
INSERT INTO `ey_region` VALUES ('18102', '安远县', '3', '17999', 'A');
INSERT INTO `ey_region` VALUES ('18122', '龙南县', '3', '17999', 'L');
INSERT INTO `ey_region` VALUES ('18139', '定南县', '3', '17999', 'D');
INSERT INTO `ey_region` VALUES ('18148', '全南县', '3', '17999', 'Q');
INSERT INTO `ey_region` VALUES ('18161', '宁都县', '3', '17999', 'N');
INSERT INTO `ey_region` VALUES ('18187', '于都县', '3', '17999', 'Y');
INSERT INTO `ey_region` VALUES ('18212', '兴国县', '3', '17999', 'X');
INSERT INTO `ey_region` VALUES ('18239', '会昌县', '3', '17999', 'H');
INSERT INTO `ey_region` VALUES ('18260', '寻乌县', '3', '17999', 'X');
INSERT INTO `ey_region` VALUES ('18276', '石城县', '3', '17999', 'S');
INSERT INTO `ey_region` VALUES ('18287', '瑞金市', '3', '17999', 'R');
INSERT INTO `ey_region` VALUES ('18306', '南康市', '3', '17999', 'N');
INSERT INTO `ey_region` VALUES ('18330', '吉安市', '2', '17359', 'J');
INSERT INTO `ey_region` VALUES ('18331', '市辖区', '3', '18330', 'S');
INSERT INTO `ey_region` VALUES ('18332', '吉州区', '3', '18330', 'J');
INSERT INTO `ey_region` VALUES ('18345', '青原区', '3', '18330', 'Q');
INSERT INTO `ey_region` VALUES ('18356', '吉安县', '3', '18330', 'J');
INSERT INTO `ey_region` VALUES ('18378', '吉水县', '3', '18330', 'J');
INSERT INTO `ey_region` VALUES ('18398', '峡江县', '3', '18330', 'X');
INSERT INTO `ey_region` VALUES ('18411', '新干县', '3', '18330', 'X');
INSERT INTO `ey_region` VALUES ('18429', '永丰县', '3', '18330', 'Y');
INSERT INTO `ey_region` VALUES ('18454', '泰和县', '3', '18330', 'T');
INSERT INTO `ey_region` VALUES ('18483', '遂川县', '3', '18330', 'S');
INSERT INTO `ey_region` VALUES ('18510', '万安县', '3', '18330', 'W');
INSERT INTO `ey_region` VALUES ('18529', '安福县', '3', '18330', 'A');
INSERT INTO `ey_region` VALUES ('18550', '永新县', '3', '18330', 'Y');
INSERT INTO `ey_region` VALUES ('18575', '井冈山市', '3', '18330', 'J');
INSERT INTO `ey_region` VALUES ('18598', '宜春市', '2', '17359', 'Y');
INSERT INTO `ey_region` VALUES ('18599', '市辖区', '3', '18598', 'S');
INSERT INTO `ey_region` VALUES ('18600', '袁州区', '3', '18598', 'Y');
INSERT INTO `ey_region` VALUES ('18639', '奉新县', '3', '18598', 'F');
INSERT INTO `ey_region` VALUES ('18659', '万载县', '3', '18598', 'W');
INSERT INTO `ey_region` VALUES ('18678', '上高县', '3', '18598', 'S');
INSERT INTO `ey_region` VALUES ('18696', '宜丰县', '3', '18598', 'Y');
INSERT INTO `ey_region` VALUES ('18714', '靖安县', '3', '18598', 'J');
INSERT INTO `ey_region` VALUES ('18727', '铜鼓县', '3', '18598', 'T');
INSERT INTO `ey_region` VALUES ('18741', '丰城市', '3', '18598', 'F');
INSERT INTO `ey_region` VALUES ('18777', '樟树市', '3', '18598', 'Z');
INSERT INTO `ey_region` VALUES ('18799', '高安市', '3', '18598', 'G');
INSERT INTO `ey_region` VALUES ('18829', '抚州市', '2', '17359', 'F');
INSERT INTO `ey_region` VALUES ('18830', '市辖区', '3', '18829', 'S');
INSERT INTO `ey_region` VALUES ('18831', '临川区', '3', '18829', 'L');
INSERT INTO `ey_region` VALUES ('18869', '南城县', '3', '18829', 'N');
INSERT INTO `ey_region` VALUES ('18882', '黎川县', '3', '18829', 'L');
INSERT INTO `ey_region` VALUES ('18900', '南丰县', '3', '18829', 'N');
INSERT INTO `ey_region` VALUES ('18915', '崇仁县', '3', '18829', 'C');
INSERT INTO `ey_region` VALUES ('18931', '乐安县', '3', '18829', 'L');
INSERT INTO `ey_region` VALUES ('18949', '宜黄县', '3', '18829', 'Y');
INSERT INTO `ey_region` VALUES ('18965', '金溪县', '3', '18829', 'J');
INSERT INTO `ey_region` VALUES ('18980', '资溪县', '3', '18829', 'Z');
INSERT INTO `ey_region` VALUES ('18988', '东乡县', '3', '18829', 'D');
INSERT INTO `ey_region` VALUES ('19010', '广昌县', '3', '18829', 'G');
INSERT INTO `ey_region` VALUES ('19024', '上饶市', '2', '17359', 'S');
INSERT INTO `ey_region` VALUES ('19025', '市辖区', '3', '19024', 'S');
INSERT INTO `ey_region` VALUES ('19026', '信州区', '3', '19024', 'X');
INSERT INTO `ey_region` VALUES ('19038', '上饶县', '3', '19024', 'S');
INSERT INTO `ey_region` VALUES ('19062', '广丰县', '3', '19024', 'G');
INSERT INTO `ey_region` VALUES ('19088', '玉山县', '3', '19024', 'Y');
INSERT INTO `ey_region` VALUES ('19108', '铅山县', '3', '19024', 'Q');
INSERT INTO `ey_region` VALUES ('19136', '横峰县', '3', '19024', 'H');
INSERT INTO `ey_region` VALUES ('19151', '弋阳县', '3', '19024', 'Y');
INSERT INTO `ey_region` VALUES ('19171', '余干县', '3', '19024', 'Y');
INSERT INTO `ey_region` VALUES ('19202', '鄱阳县', '3', '19024', 'P');
INSERT INTO `ey_region` VALUES ('19234', '万年县', '3', '19024', 'W');
INSERT INTO `ey_region` VALUES ('19248', '婺源县', '3', '19024', 'W');
INSERT INTO `ey_region` VALUES ('19265', '德兴市', '3', '19024', 'D');
INSERT INTO `ey_region` VALUES ('19280', '山东省', '1', '0', 'S');
INSERT INTO `ey_region` VALUES ('19281', '济南市', '2', '19280', 'J');
INSERT INTO `ey_region` VALUES ('19282', '市辖区', '3', '19281', 'S');
INSERT INTO `ey_region` VALUES ('19283', '历下区', '3', '19281', 'L');
INSERT INTO `ey_region` VALUES ('19295', '市中区', '3', '19281', 'S');
INSERT INTO `ey_region` VALUES ('19311', '槐荫区', '3', '19281', 'H');
INSERT INTO `ey_region` VALUES ('19326', '天桥区', '3', '19281', 'T');
INSERT INTO `ey_region` VALUES ('19342', '历城区', '3', '19281', 'L');
INSERT INTO `ey_region` VALUES ('19359', '长清区', '3', '19281', 'C');
INSERT INTO `ey_region` VALUES ('19370', '平阴县', '3', '19281', 'P');
INSERT INTO `ey_region` VALUES ('19378', '济阳县', '3', '19281', 'J');
INSERT INTO `ey_region` VALUES ('19387', '商河县', '3', '19281', 'S');
INSERT INTO `ey_region` VALUES ('19400', '章丘市', '3', '19281', 'Z');
INSERT INTO `ey_region` VALUES ('19421', '青岛市', '2', '19280', 'Q');
INSERT INTO `ey_region` VALUES ('19422', '市辖区', '3', '19421', 'S');
INSERT INTO `ey_region` VALUES ('19423', '市南区', '3', '19421', 'S');
INSERT INTO `ey_region` VALUES ('19438', '市北区', '3', '19421', 'S');
INSERT INTO `ey_region` VALUES ('19456', '四方区', '3', '19421', 'S');
INSERT INTO `ey_region` VALUES ('19464', '黄岛区', '3', '19421', 'H');
INSERT INTO `ey_region` VALUES ('19471', '崂山区', '3', '19421', 'L');
INSERT INTO `ey_region` VALUES ('19476', '李沧区', '3', '19421', 'L');
INSERT INTO `ey_region` VALUES ('19488', '城阳区', '3', '19421', 'C');
INSERT INTO `ey_region` VALUES ('19497', '胶州市', '3', '19421', 'J');
INSERT INTO `ey_region` VALUES ('19516', '即墨市', '3', '19421', 'J');
INSERT INTO `ey_region` VALUES ('19540', '平度市', '3', '19421', 'P');
INSERT INTO `ey_region` VALUES ('19572', '胶南市', '3', '19421', 'J');
INSERT INTO `ey_region` VALUES ('19590', '莱西市', '3', '19421', 'L');
INSERT INTO `ey_region` VALUES ('19608', '淄博市', '2', '19280', 'Z');
INSERT INTO `ey_region` VALUES ('19609', '市辖区', '3', '19608', 'S');
INSERT INTO `ey_region` VALUES ('19610', '淄川区', '3', '19608', 'Z');
INSERT INTO `ey_region` VALUES ('19632', '张店区', '3', '19608', 'Z');
INSERT INTO `ey_region` VALUES ('19649', '博山区', '3', '19608', 'B');
INSERT INTO `ey_region` VALUES ('19663', '临淄区', '3', '19608', 'L');
INSERT INTO `ey_region` VALUES ('19678', '周村区', '3', '19608', 'Z');
INSERT INTO `ey_region` VALUES ('19688', '桓台县', '3', '19608', 'H');
INSERT INTO `ey_region` VALUES ('19700', '高青县', '3', '19608', 'G');
INSERT INTO `ey_region` VALUES ('19710', '沂源县', '3', '19608', 'Y');
INSERT INTO `ey_region` VALUES ('19724', '枣庄市', '2', '19280', 'Z');
INSERT INTO `ey_region` VALUES ('19725', '市辖区', '3', '19724', 'S');
INSERT INTO `ey_region` VALUES ('19726', '市中区', '3', '19724', 'S');
INSERT INTO `ey_region` VALUES ('19738', '薛城区', '3', '19724', 'X');
INSERT INTO `ey_region` VALUES ('19748', '峄城区', '3', '19724', 'Y');
INSERT INTO `ey_region` VALUES ('19756', '台儿庄区', '3', '19724', 'T');
INSERT INTO `ey_region` VALUES ('19763', '山亭区', '3', '19724', 'S');
INSERT INTO `ey_region` VALUES ('19774', '滕州市', '3', '19724', 'T');
INSERT INTO `ey_region` VALUES ('19796', '东营市', '2', '19280', 'D');
INSERT INTO `ey_region` VALUES ('19797', '市辖区', '3', '19796', 'S');
INSERT INTO `ey_region` VALUES ('19798', '东营区', '3', '19796', 'D');
INSERT INTO `ey_region` VALUES ('19809', '河口区', '3', '19796', 'H');
INSERT INTO `ey_region` VALUES ('19817', '垦利县', '3', '19796', 'K');
INSERT INTO `ey_region` VALUES ('19825', '利津县', '3', '19796', 'L');
INSERT INTO `ey_region` VALUES ('19835', '广饶县', '3', '19796', 'G');
INSERT INTO `ey_region` VALUES ('19846', '烟台市', '2', '19280', 'Y');
INSERT INTO `ey_region` VALUES ('19847', '市辖区', '3', '19846', 'S');
INSERT INTO `ey_region` VALUES ('19848', '芝罘区', '3', '19846', 'Z');
INSERT INTO `ey_region` VALUES ('19861', '福山区', '3', '19846', 'F');
INSERT INTO `ey_region` VALUES ('19873', '牟平区', '3', '19846', 'M');
INSERT INTO `ey_region` VALUES ('19887', '莱山区', '3', '19846', 'L');
INSERT INTO `ey_region` VALUES ('19893', '长岛县', '3', '19846', 'C');
INSERT INTO `ey_region` VALUES ('19902', '龙口市', '3', '19846', 'L');
INSERT INTO `ey_region` VALUES ('19916', '莱阳市', '3', '19846', 'L');
INSERT INTO `ey_region` VALUES ('19935', '莱州市', '3', '19846', 'L');
INSERT INTO `ey_region` VALUES ('19952', '蓬莱市', '3', '19846', 'P');
INSERT INTO `ey_region` VALUES ('19965', '招远市', '3', '19846', 'Z');
INSERT INTO `ey_region` VALUES ('19980', '栖霞市', '3', '19846', 'Q');
INSERT INTO `ey_region` VALUES ('19996', '海阳市', '3', '19846', 'H');
INSERT INTO `ey_region` VALUES ('20012', '潍坊市', '2', '19280', 'W');
INSERT INTO `ey_region` VALUES ('20013', '市辖区', '3', '20012', 'S');
INSERT INTO `ey_region` VALUES ('20014', '潍城区', '3', '20012', 'W');
INSERT INTO `ey_region` VALUES ('20023', '寒亭区', '3', '20012', 'H');
INSERT INTO `ey_region` VALUES ('20034', '坊子区', '3', '20012', 'F');
INSERT INTO `ey_region` VALUES ('20043', '奎文区', '3', '20012', 'K');
INSERT INTO `ey_region` VALUES ('20055', '临朐县', '3', '20012', 'L');
INSERT INTO `ey_region` VALUES ('20074', '昌乐县', '3', '20012', 'C');
INSERT INTO `ey_region` VALUES ('20091', '青州市', '3', '20012', 'Q');
INSERT INTO `ey_region` VALUES ('20113', '诸城市', '3', '20012', 'Z');
INSERT INTO `ey_region` VALUES ('20137', '寿光市', '3', '20012', 'S');
INSERT INTO `ey_region` VALUES ('20155', '安丘市', '3', '20012', 'A');
INSERT INTO `ey_region` VALUES ('20179', '高密市', '3', '20012', 'G');
INSERT INTO `ey_region` VALUES ('20200', '昌邑市', '3', '20012', 'C');
INSERT INTO `ey_region` VALUES ('20216', '济宁市', '2', '19280', 'J');
INSERT INTO `ey_region` VALUES ('20217', '市辖区', '3', '20216', 'S');
INSERT INTO `ey_region` VALUES ('20218', '市中区', '3', '20216', 'S');
INSERT INTO `ey_region` VALUES ('20227', '任城区', '3', '20216', 'R');
INSERT INTO `ey_region` VALUES ('20257', '鱼台县', '3', '20216', 'Y');
INSERT INTO `ey_region` VALUES ('20268', '金乡县', '3', '20216', 'J');
INSERT INTO `ey_region` VALUES ('20282', '嘉祥县', '3', '20216', 'J');
INSERT INTO `ey_region` VALUES ('20298', '汶上县', '3', '20216', 'W');
INSERT INTO `ey_region` VALUES ('20313', '泗水县', '3', '20216', 'S');
INSERT INTO `ey_region` VALUES ('20327', '梁山县', '3', '20216', 'L');
INSERT INTO `ey_region` VALUES ('20342', '曲阜市', '3', '20216', 'Q');
INSERT INTO `ey_region` VALUES ('20355', '兖州市', '3', '20216', 'Y');
INSERT INTO `ey_region` VALUES ('20368', '邹城市', '3', '20216', 'Z');
INSERT INTO `ey_region` VALUES ('20386', '泰安市', '2', '19280', 'T');
INSERT INTO `ey_region` VALUES ('20387', '市辖区', '3', '20386', 'S');
INSERT INTO `ey_region` VALUES ('20388', '泰山区', '3', '20386', 'T');
INSERT INTO `ey_region` VALUES ('20397', '岱岳区', '3', '20386', 'D');
INSERT INTO `ey_region` VALUES ('20416', '宁阳县', '3', '20386', 'N');
INSERT INTO `ey_region` VALUES ('20429', '东平县', '3', '20386', 'D');
INSERT INTO `ey_region` VALUES ('20444', '新泰市', '3', '20386', 'X');
INSERT INTO `ey_region` VALUES ('20465', '肥城市', '3', '20386', 'F');
INSERT INTO `ey_region` VALUES ('20480', '威海市', '2', '19280', 'W');
INSERT INTO `ey_region` VALUES ('20481', '市辖区', '3', '20480', 'S');
INSERT INTO `ey_region` VALUES ('20482', '环翠区', '3', '20480', 'H');
INSERT INTO `ey_region` VALUES ('20500', '文登市', '3', '20480', 'W');
INSERT INTO `ey_region` VALUES ('20519', '荣成市', '3', '20480', 'R');
INSERT INTO `ey_region` VALUES ('20542', '乳山市', '3', '20480', 'R');
INSERT INTO `ey_region` VALUES ('20558', '日照市', '2', '19280', 'R');
INSERT INTO `ey_region` VALUES ('20559', '市辖区', '3', '20558', 'S');
INSERT INTO `ey_region` VALUES ('20560', '东港区', '3', '20558', 'D');
INSERT INTO `ey_region` VALUES ('20573', '岚山区', '3', '20558', 'L');
INSERT INTO `ey_region` VALUES ('20583', '五莲县', '3', '20558', 'W');
INSERT INTO `ey_region` VALUES ('20596', '莒县', '3', '20558', 'J');
INSERT INTO `ey_region` VALUES ('20618', '莱芜市', '2', '19280', 'L');
INSERT INTO `ey_region` VALUES ('20619', '市辖区', '3', '20618', 'S');
INSERT INTO `ey_region` VALUES ('20620', '莱城区', '3', '20618', 'L');
INSERT INTO `ey_region` VALUES ('20636', '钢城区', '3', '20618', 'G');
INSERT INTO `ey_region` VALUES ('20642', '临沂市', '2', '19280', 'L');
INSERT INTO `ey_region` VALUES ('20643', '临沂市辖区', '3', '20642', 'L');
INSERT INTO `ey_region` VALUES ('20644', '兰山区', '3', '20642', 'L');
INSERT INTO `ey_region` VALUES ('20656', '罗庄区', '3', '20642', 'L');
INSERT INTO `ey_region` VALUES ('20665', '河东区', '3', '20642', 'H');
INSERT INTO `ey_region` VALUES ('20678', '沂南县', '3', '20642', 'Y');
INSERT INTO `ey_region` VALUES ('20696', '郯城县', '3', '20642', 'T');
INSERT INTO `ey_region` VALUES ('20714', '沂水县', '3', '20642', 'Y');
INSERT INTO `ey_region` VALUES ('20734', '苍山县', '3', '20642', 'C');
INSERT INTO `ey_region` VALUES ('20756', '费县', '3', '20642', 'F');
INSERT INTO `ey_region` VALUES ('20775', '平邑县', '3', '20642', 'P');
INSERT INTO `ey_region` VALUES ('20792', '莒南县', '3', '20642', 'J');
INSERT INTO `ey_region` VALUES ('20811', '蒙阴县', '3', '20642', 'M');
INSERT INTO `ey_region` VALUES ('20823', '临沭县', '3', '20642', 'L');
INSERT INTO `ey_region` VALUES ('20836', '德州市', '2', '19280', 'D');
INSERT INTO `ey_region` VALUES ('20837', '市辖区', '3', '20836', 'S');
INSERT INTO `ey_region` VALUES ('20838', '德城区', '3', '20836', 'D');
INSERT INTO `ey_region` VALUES ('20850', '陵县', '3', '20836', 'L');
INSERT INTO `ey_region` VALUES ('20864', '宁津县', '3', '20836', 'N');
INSERT INTO `ey_region` VALUES ('20876', '庆云县', '3', '20836', 'Q');
INSERT INTO `ey_region` VALUES ('20886', '临邑县', '3', '20836', 'L');
INSERT INTO `ey_region` VALUES ('20899', '齐河县', '3', '20836', 'Q');
INSERT INTO `ey_region` VALUES ('20914', '平原县', '3', '20836', 'P');
INSERT INTO `ey_region` VALUES ('20927', '夏津县', '3', '20836', 'X');
INSERT INTO `ey_region` VALUES ('20942', '武城县', '3', '20836', 'W');
INSERT INTO `ey_region` VALUES ('20952', '乐陵市', '3', '20836', 'L');
INSERT INTO `ey_region` VALUES ('20969', '禹城市', '3', '20836', 'Y');
INSERT INTO `ey_region` VALUES ('20981', '聊城市', '2', '19280', 'L');
INSERT INTO `ey_region` VALUES ('20982', '市辖区', '3', '20981', 'S');
INSERT INTO `ey_region` VALUES ('20983', '东昌府区', '3', '20981', 'D');
INSERT INTO `ey_region` VALUES ('21004', '阳谷县', '3', '20981', 'Y');
INSERT INTO `ey_region` VALUES ('21023', '莘县', '3', '20981', 'S');
INSERT INTO `ey_region` VALUES ('21046', '茌平县', '3', '20981', 'C');
INSERT INTO `ey_region` VALUES ('21063', '东阿县', '3', '20981', 'D');
INSERT INTO `ey_region` VALUES ('21075', '冠县', '3', '20981', 'G');
INSERT INTO `ey_region` VALUES ('21093', '高唐县', '3', '20981', 'G');
INSERT INTO `ey_region` VALUES ('21106', '临清市', '3', '20981', 'L');
INSERT INTO `ey_region` VALUES ('21123', '滨州市', '2', '19280', 'B');
INSERT INTO `ey_region` VALUES ('21124', '市辖区', '3', '21123', 'S');
INSERT INTO `ey_region` VALUES ('21125', '滨城区', '3', '21123', 'B');
INSERT INTO `ey_region` VALUES ('21141', '惠民县', '3', '21123', 'H');
INSERT INTO `ey_region` VALUES ('21156', '阳信县', '3', '21123', 'Y');
INSERT INTO `ey_region` VALUES ('21166', '无棣县', '3', '21123', 'W');
INSERT INTO `ey_region` VALUES ('21178', '沾化县', '3', '21123', 'Z');
INSERT INTO `ey_region` VALUES ('21190', '博兴县', '3', '21123', 'B');
INSERT INTO `ey_region` VALUES ('21201', '邹平县', '3', '21123', 'Z');
INSERT INTO `ey_region` VALUES ('21218', '菏泽市', '2', '19280', 'H');
INSERT INTO `ey_region` VALUES ('21219', '市辖区', '3', '21218', 'S');
INSERT INTO `ey_region` VALUES ('21220', '牡丹区', '3', '21218', 'M');
INSERT INTO `ey_region` VALUES ('21245', '曹县', '3', '21218', 'C');
INSERT INTO `ey_region` VALUES ('21271', '单县', '3', '21218', 'D');
INSERT INTO `ey_region` VALUES ('21292', '成武县', '3', '21218', 'C');
INSERT INTO `ey_region` VALUES ('21305', '巨野县', '3', '21218', 'J');
INSERT INTO `ey_region` VALUES ('21322', '郓城县', '3', '21218', 'Y');
INSERT INTO `ey_region` VALUES ('21344', '鄄城县', '3', '21218', 'J');
INSERT INTO `ey_region` VALUES ('21361', '定陶县', '3', '21218', 'D');
INSERT INTO `ey_region` VALUES ('21373', '东明县', '3', '21218', 'D');
INSERT INTO `ey_region` VALUES ('21387', '河南省', '1', '0', 'H');
INSERT INTO `ey_region` VALUES ('21388', '郑州市', '2', '21387', 'Z');
INSERT INTO `ey_region` VALUES ('21389', '市辖区', '3', '21388', 'S');
INSERT INTO `ey_region` VALUES ('21390', '中原区', '3', '21388', 'Z');
INSERT INTO `ey_region` VALUES ('21404', '二七区', '3', '21388', 'E');
INSERT INTO `ey_region` VALUES ('21420', '管城回族区', '3', '21388', 'G');
INSERT INTO `ey_region` VALUES ('21435', '金水区', '3', '21388', 'J');
INSERT INTO `ey_region` VALUES ('21453', '上街区', '3', '21388', 'S');
INSERT INTO `ey_region` VALUES ('21460', '惠济区', '3', '21388', 'H');
INSERT INTO `ey_region` VALUES ('21469', '中牟县', '3', '21388', 'Z');
INSERT INTO `ey_region` VALUES ('21487', '巩义市', '3', '21388', 'G');
INSERT INTO `ey_region` VALUES ('21508', '荥阳市', '3', '21388', 'X');
INSERT INTO `ey_region` VALUES ('21523', '新密市', '3', '21388', 'X');
INSERT INTO `ey_region` VALUES ('21542', '新郑市', '3', '21388', 'X');
INSERT INTO `ey_region` VALUES ('21558', '登封市', '3', '21388', 'D');
INSERT INTO `ey_region` VALUES ('21575', '开封市', '2', '21387', 'K');
INSERT INTO `ey_region` VALUES ('21576', '市辖区', '3', '21575', 'S');
INSERT INTO `ey_region` VALUES ('21577', '龙亭区', '3', '21575', 'L');
INSERT INTO `ey_region` VALUES ('21584', '顺河区', '3', '21575', 'S');
INSERT INTO `ey_region` VALUES ('21593', '鼓楼区', '3', '21575', 'G');
INSERT INTO `ey_region` VALUES ('21602', '禹王台区', '3', '21575', 'Y');
INSERT INTO `ey_region` VALUES ('21610', '金明区', '3', '21575', 'J');
INSERT INTO `ey_region` VALUES ('21618', '杞县', '3', '21575', 'Q');
INSERT INTO `ey_region` VALUES ('21640', '通许县', '3', '21575', 'T');
INSERT INTO `ey_region` VALUES ('21653', '尉氏县', '3', '21575', 'W');
INSERT INTO `ey_region` VALUES ('21671', '开封县', '3', '21575', 'K');
INSERT INTO `ey_region` VALUES ('21687', '兰考县', '3', '21575', 'L');
INSERT INTO `ey_region` VALUES ('21711', '洛阳市', '2', '21387', 'L');
INSERT INTO `ey_region` VALUES ('21712', '市辖区', '3', '21711', 'S');
INSERT INTO `ey_region` VALUES ('21713', '老城区', '3', '21711', 'L');
INSERT INTO `ey_region` VALUES ('21722', '西工区', '3', '21711', 'X');
INSERT INTO `ey_region` VALUES ('21733', '廛河回族区', '3', '21711', 'C');
INSERT INTO `ey_region` VALUES ('21742', '涧西区', '3', '21711', 'J');
INSERT INTO `ey_region` VALUES ('21758', '吉利区', '3', '21711', 'J');
INSERT INTO `ey_region` VALUES ('21761', '洛龙区', '3', '21711', 'L');
INSERT INTO `ey_region` VALUES ('21770', '孟津县', '3', '21711', 'M');
INSERT INTO `ey_region` VALUES ('21781', '新安县', '3', '21711', 'X');
INSERT INTO `ey_region` VALUES ('21794', '栾川县', '3', '21711', 'L');
INSERT INTO `ey_region` VALUES ('21809', '嵩县', '3', '21711', 'S');
INSERT INTO `ey_region` VALUES ('21829', '汝阳县', '3', '21711', 'R');
INSERT INTO `ey_region` VALUES ('21844', '宜阳县', '3', '21711', 'Y');
INSERT INTO `ey_region` VALUES ('21862', '洛宁县', '3', '21711', 'L');
INSERT INTO `ey_region` VALUES ('21881', '伊川县', '3', '21711', 'Y');
INSERT INTO `ey_region` VALUES ('21896', '偃师市', '3', '21711', 'Y');
INSERT INTO `ey_region` VALUES ('21913', '平顶山市', '2', '21387', 'P');
INSERT INTO `ey_region` VALUES ('21914', '市辖区', '3', '21913', 'S');
INSERT INTO `ey_region` VALUES ('21915', '新华区', '3', '21913', 'X');
INSERT INTO `ey_region` VALUES ('21928', '卫东区', '3', '21913', 'W');
INSERT INTO `ey_region` VALUES ('21940', '石龙区', '3', '21913', 'S');
INSERT INTO `ey_region` VALUES ('21945', '湛河区', '3', '21913', 'Z');
INSERT INTO `ey_region` VALUES ('21954', '宝丰县', '3', '21913', 'B');
INSERT INTO `ey_region` VALUES ('21968', '叶  县', '3', '21913', 'Y');
INSERT INTO `ey_region` VALUES ('21987', '鲁山县', '3', '21913', 'L');
INSERT INTO `ey_region` VALUES ('22009', '郏  县', '3', '21913', 'J');
INSERT INTO `ey_region` VALUES ('22024', '舞钢市', '3', '21913', 'W');
INSERT INTO `ey_region` VALUES ('22037', '汝州市', '3', '21913', 'R');
INSERT INTO `ey_region` VALUES ('22058', '安阳市', '2', '21387', 'A');
INSERT INTO `ey_region` VALUES ('22059', '市辖区', '3', '22058', 'S');
INSERT INTO `ey_region` VALUES ('22060', '文峰区', '3', '22058', 'W');
INSERT INTO `ey_region` VALUES ('22080', '北关区', '3', '22058', 'B');
INSERT INTO `ey_region` VALUES ('22090', '殷都区', '3', '22058', 'Y');
INSERT INTO `ey_region` VALUES ('22101', '龙安区', '3', '22058', 'L');
INSERT INTO `ey_region` VALUES ('22111', '安阳县', '3', '22058', 'A');
INSERT INTO `ey_region` VALUES ('22133', '汤阴县', '3', '22058', 'T');
INSERT INTO `ey_region` VALUES ('22144', '滑县', '3', '22058', 'H');
INSERT INTO `ey_region` VALUES ('22167', '内黄县', '3', '22058', 'N');
INSERT INTO `ey_region` VALUES ('22185', '林州市', '3', '22058', 'L');
INSERT INTO `ey_region` VALUES ('22206', '鹤壁市', '2', '21387', 'H');
INSERT INTO `ey_region` VALUES ('22207', '市辖区', '3', '22206', 'S');
INSERT INTO `ey_region` VALUES ('22208', '鹤山区', '3', '22206', 'H');
INSERT INTO `ey_region` VALUES ('22216', '山城区', '3', '22206', 'S');
INSERT INTO `ey_region` VALUES ('22224', '淇滨区', '3', '22206', 'Q');
INSERT INTO `ey_region` VALUES ('22232', '浚县', '3', '22206', 'J');
INSERT INTO `ey_region` VALUES ('22243', '淇县', '3', '22206', 'Q');
INSERT INTO `ey_region` VALUES ('22251', '新乡市', '2', '21387', 'X');
INSERT INTO `ey_region` VALUES ('22252', '市辖区', '3', '22251', 'S');
INSERT INTO `ey_region` VALUES ('22253', '红旗区', '3', '22251', 'H');
INSERT INTO `ey_region` VALUES ('22264', '卫滨区', '3', '22251', 'W');
INSERT INTO `ey_region` VALUES ('22273', '凤泉区', '3', '22251', 'F');
INSERT INTO `ey_region` VALUES ('22279', '牧野区', '3', '22251', 'M');
INSERT INTO `ey_region` VALUES ('22290', '新乡县', '3', '22251', 'X');
INSERT INTO `ey_region` VALUES ('22299', '获嘉县', '3', '22251', 'H');
INSERT INTO `ey_region` VALUES ('22312', '原阳县', '3', '22251', 'Y');
INSERT INTO `ey_region` VALUES ('22330', '延津县', '3', '22251', 'Y');
INSERT INTO `ey_region` VALUES ('22347', '封丘县', '3', '22251', 'F');
INSERT INTO `ey_region` VALUES ('22367', '长垣县', '3', '22251', 'C');
INSERT INTO `ey_region` VALUES ('22386', '卫辉市', '3', '22251', 'W');
INSERT INTO `ey_region` VALUES ('22400', '辉县市', '3', '22251', 'H');
INSERT INTO `ey_region` VALUES ('22423', '焦作市', '2', '21387', 'J');
INSERT INTO `ey_region` VALUES ('22424', '市辖区', '3', '22423', 'S');
INSERT INTO `ey_region` VALUES ('22425', '解放区', '3', '22423', 'J');
INSERT INTO `ey_region` VALUES ('22435', '中站区', '3', '22423', 'Z');
INSERT INTO `ey_region` VALUES ('22446', '马村区', '3', '22423', 'M');
INSERT INTO `ey_region` VALUES ('22454', '山阳区', '3', '22423', 'S');
INSERT INTO `ey_region` VALUES ('22465', '修武县', '3', '22423', 'X');
INSERT INTO `ey_region` VALUES ('22475', '博爱县', '3', '22423', 'B');
INSERT INTO `ey_region` VALUES ('22487', '武陟县', '3', '22423', 'W');
INSERT INTO `ey_region` VALUES ('22503', '温县', '3', '22423', 'W');
INSERT INTO `ey_region` VALUES ('22515', '济源市', '3', '22423', 'J');
INSERT INTO `ey_region` VALUES ('22532', '沁阳市', '3', '22423', 'Q');
INSERT INTO `ey_region` VALUES ('22546', '孟州市', '3', '22423', 'M');
INSERT INTO `ey_region` VALUES ('22558', '濮阳市', '2', '21387', 'P');
INSERT INTO `ey_region` VALUES ('22559', '市辖区', '3', '22558', 'S');
INSERT INTO `ey_region` VALUES ('22560', '华龙区', '3', '22558', 'H');
INSERT INTO `ey_region` VALUES ('22578', '清丰县', '3', '22558', 'Q');
INSERT INTO `ey_region` VALUES ('22596', '南乐县', '3', '22558', 'N');
INSERT INTO `ey_region` VALUES ('22609', '范县', '3', '22558', 'F');
INSERT INTO `ey_region` VALUES ('22622', '台前县', '3', '22558', 'T');
INSERT INTO `ey_region` VALUES ('22632', '濮阳县', '3', '22558', 'P');
INSERT INTO `ey_region` VALUES ('22655', '许昌市', '2', '21387', 'X');
INSERT INTO `ey_region` VALUES ('22656', '市辖区', '3', '22655', 'S');
INSERT INTO `ey_region` VALUES ('22657', '魏都区', '3', '22655', 'W');
INSERT INTO `ey_region` VALUES ('22671', '许昌县', '3', '22655', 'X');
INSERT INTO `ey_region` VALUES ('22688', '鄢陵县', '3', '22655', 'Y');
INSERT INTO `ey_region` VALUES ('22701', '襄城县', '3', '22655', 'X');
INSERT INTO `ey_region` VALUES ('22718', '禹州市', '3', '22655', 'Y');
INSERT INTO `ey_region` VALUES ('22745', '长葛市', '3', '22655', 'C');
INSERT INTO `ey_region` VALUES ('22762', '漯河市', '2', '21387', 'L');
INSERT INTO `ey_region` VALUES ('22763', '市辖区', '3', '22762', 'S');
INSERT INTO `ey_region` VALUES ('22764', '源汇区', '3', '22762', 'Y');
INSERT INTO `ey_region` VALUES ('22773', '郾城区', '3', '22762', 'Y');
INSERT INTO `ey_region` VALUES ('22783', '召陵区', '3', '22762', 'Z');
INSERT INTO `ey_region` VALUES ('22793', '舞阳县', '3', '22762', 'W');
INSERT INTO `ey_region` VALUES ('22808', '临颖县', '3', '22762', 'L');
INSERT INTO `ey_region` VALUES ('22824', '三门峡市', '2', '21387', 'S');
INSERT INTO `ey_region` VALUES ('22825', '市辖区', '3', '22824', 'S');
INSERT INTO `ey_region` VALUES ('22826', '湖滨区', '3', '22824', 'H');
INSERT INTO `ey_region` VALUES ('22838', '渑池县', '3', '22824', 'M');
INSERT INTO `ey_region` VALUES ('22851', '陕县', '3', '22824', 'S');
INSERT INTO `ey_region` VALUES ('22865', '卢氏县', '3', '22824', 'L');
INSERT INTO `ey_region` VALUES ('22885', '义马市', '3', '22824', 'Y');
INSERT INTO `ey_region` VALUES ('22893', '灵宝市', '3', '22824', 'L');
INSERT INTO `ey_region` VALUES ('22910', '南阳市', '2', '21387', 'N');
INSERT INTO `ey_region` VALUES ('22911', '市辖区', '3', '22910', 'S');
INSERT INTO `ey_region` VALUES ('22912', '宛城区', '3', '22910', 'W');
INSERT INTO `ey_region` VALUES ('22930', '卧龙区', '3', '22910', 'W');
INSERT INTO `ey_region` VALUES ('22951', '南召县', '3', '22910', 'N');
INSERT INTO `ey_region` VALUES ('22973', '方城县', '3', '22910', 'F');
INSERT INTO `ey_region` VALUES ('22992', '西峡县', '3', '22910', 'X');
INSERT INTO `ey_region` VALUES ('23013', '镇平县', '3', '22910', 'Z');
INSERT INTO `ey_region` VALUES ('23036', '内乡县', '3', '22910', 'N');
INSERT INTO `ey_region` VALUES ('23053', '淅川县', '3', '22910', 'X');
INSERT INTO `ey_region` VALUES ('23071', '社旗县', '3', '22910', 'S');
INSERT INTO `ey_region` VALUES ('23087', '唐河县', '3', '22910', 'T');
INSERT INTO `ey_region` VALUES ('23108', '新野县', '3', '22910', 'X');
INSERT INTO `ey_region` VALUES ('23123', '桐柏县', '3', '22910', 'T');
INSERT INTO `ey_region` VALUES ('23140', '邓州市', '3', '22910', 'D');
INSERT INTO `ey_region` VALUES ('23170', '商丘市', '2', '21387', 'S');
INSERT INTO `ey_region` VALUES ('23171', '市辖区', '3', '23170', 'S');
INSERT INTO `ey_region` VALUES ('23172', '梁园区', '3', '23170', 'L');
INSERT INTO `ey_region` VALUES ('23192', '睢阳区', '3', '23170', 'S');
INSERT INTO `ey_region` VALUES ('23211', '民权县', '3', '23170', 'M');
INSERT INTO `ey_region` VALUES ('23232', '睢县', '3', '23170', 'S');
INSERT INTO `ey_region` VALUES ('23253', '宁陵县', '3', '23170', 'N');
INSERT INTO `ey_region` VALUES ('23268', '柘城县', '3', '23170', 'Z');
INSERT INTO `ey_region` VALUES ('23290', '虞城县', '3', '23170', 'Y');
INSERT INTO `ey_region` VALUES ('23317', '夏邑县', '3', '23170', 'X');
INSERT INTO `ey_region` VALUES ('23342', '永城市', '3', '23170', 'Y');
INSERT INTO `ey_region` VALUES ('23372', '信阳市', '2', '21387', 'X');
INSERT INTO `ey_region` VALUES ('23373', '市辖区', '3', '23372', 'S');
INSERT INTO `ey_region` VALUES ('23374', '浉河区', '3', '23372', 'S');
INSERT INTO `ey_region` VALUES ('23393', '平桥区', '3', '23372', 'P');
INSERT INTO `ey_region` VALUES ('23414', '罗山县', '3', '23372', 'L');
INSERT INTO `ey_region` VALUES ('23435', '光山县', '3', '23372', 'G');
INSERT INTO `ey_region` VALUES ('23455', '新县', '3', '23372', 'X');
INSERT INTO `ey_region` VALUES ('23471', '商城县', '3', '23372', 'S');
INSERT INTO `ey_region` VALUES ('23492', '固始县', '3', '23372', 'G');
INSERT INTO `ey_region` VALUES ('23525', '潢川县', '3', '23372', 'H');
INSERT INTO `ey_region` VALUES ('23549', '淮滨县', '3', '23372', 'H');
INSERT INTO `ey_region` VALUES ('23567', '息县', '3', '23372', 'X');
INSERT INTO `ey_region` VALUES ('23589', '周口市', '2', '21387', 'Z');
INSERT INTO `ey_region` VALUES ('23590', '市辖区', '3', '23589', 'S');
INSERT INTO `ey_region` VALUES ('23591', '川汇区', '3', '23589', 'C');
INSERT INTO `ey_region` VALUES ('23604', '扶沟县', '3', '23589', 'F');
INSERT INTO `ey_region` VALUES ('23621', '西华县', '3', '23589', 'X');
INSERT INTO `ey_region` VALUES ('23647', '商水县', '3', '23589', 'S');
INSERT INTO `ey_region` VALUES ('23672', '沈丘县', '3', '23589', 'S');
INSERT INTO `ey_region` VALUES ('23695', '郸城县', '3', '23589', 'D');
INSERT INTO `ey_region` VALUES ('23716', '淮阳县', '3', '23589', 'H');
INSERT INTO `ey_region` VALUES ('23736', '太康县', '3', '23589', 'T');
INSERT INTO `ey_region` VALUES ('23766', '鹿邑县', '3', '23589', 'L');
INSERT INTO `ey_region` VALUES ('23796', '项城市', '3', '23589', 'X');
INSERT INTO `ey_region` VALUES ('23818', '驻马店市', '2', '21387', 'Z');
INSERT INTO `ey_region` VALUES ('23819', '市辖区', '3', '23818', 'S');
INSERT INTO `ey_region` VALUES ('23820', '驿城区', '3', '23818', 'Y');
INSERT INTO `ey_region` VALUES ('23840', '西平县', '3', '23818', 'X');
INSERT INTO `ey_region` VALUES ('23861', '上蔡县', '3', '23818', 'S');
INSERT INTO `ey_region` VALUES ('23886', '平舆县', '3', '23818', 'P');
INSERT INTO `ey_region` VALUES ('23905', '正阳县', '3', '23818', 'Z');
INSERT INTO `ey_region` VALUES ('23926', '确山县', '3', '23818', 'Q');
INSERT INTO `ey_region` VALUES ('23940', '泌阳县', '3', '23818', 'M');
INSERT INTO `ey_region` VALUES ('23965', '汝南县', '3', '23818', 'R');
INSERT INTO `ey_region` VALUES ('23983', '遂平县', '3', '23818', 'S');
INSERT INTO `ey_region` VALUES ('23999', '新蔡县', '3', '23818', 'X');
INSERT INTO `ey_region` VALUES ('24022', '湖北省', '1', '0', 'H');
INSERT INTO `ey_region` VALUES ('24023', '武汉市', '2', '24022', 'W');
INSERT INTO `ey_region` VALUES ('24024', '市辖区', '3', '24023', 'S');
INSERT INTO `ey_region` VALUES ('24025', '江岸区', '3', '24023', 'J');
INSERT INTO `ey_region` VALUES ('24043', '江汉区', '3', '24023', 'J');
INSERT INTO `ey_region` VALUES ('24057', '硚口区', '3', '24023', 'Q');
INSERT INTO `ey_region` VALUES ('24069', '汉阳区', '3', '24023', 'H');
INSERT INTO `ey_region` VALUES ('24082', '武昌区', '3', '24023', 'W');
INSERT INTO `ey_region` VALUES ('24098', '青山区', '3', '24023', 'Q');
INSERT INTO `ey_region` VALUES ('24111', '洪山区', '3', '24023', 'H');
INSERT INTO `ey_region` VALUES ('24129', '东西湖区', '3', '24023', 'D');
INSERT INTO `ey_region` VALUES ('24142', '汉南区', '3', '24023', 'H');
INSERT INTO `ey_region` VALUES ('24150', '蔡甸区', '3', '24023', 'C');
INSERT INTO `ey_region` VALUES ('24165', '江夏区', '3', '24023', 'J');
INSERT INTO `ey_region` VALUES ('24185', '黄陂区', '3', '24023', 'H');
INSERT INTO `ey_region` VALUES ('24205', '武汉市新洲区', '3', '24023', 'W');
INSERT INTO `ey_region` VALUES ('24224', '黄石市', '2', '24022', 'H');
INSERT INTO `ey_region` VALUES ('24225', '市辖区', '3', '24224', 'S');
INSERT INTO `ey_region` VALUES ('24226', '黄石港区', '3', '24224', 'H');
INSERT INTO `ey_region` VALUES ('24233', '西塞山区', '3', '24224', 'X');
INSERT INTO `ey_region` VALUES ('24242', '下陆区', '3', '24224', 'X');
INSERT INTO `ey_region` VALUES ('24247', '铁山区', '3', '24224', 'T');
INSERT INTO `ey_region` VALUES ('24250', '阳新县', '3', '24224', 'Y');
INSERT INTO `ey_region` VALUES ('24273', '大冶市', '3', '24224', 'D');
INSERT INTO `ey_region` VALUES ('24291', '十堰市', '2', '24022', 'S');
INSERT INTO `ey_region` VALUES ('24292', '市辖区', '3', '24291', 'S');
INSERT INTO `ey_region` VALUES ('24293', '茅箭区', '3', '24291', 'M');
INSERT INTO `ey_region` VALUES ('24302', '张湾区', '3', '24291', 'Z');
INSERT INTO `ey_region` VALUES ('24314', '郧县', '3', '24291', 'Y');
INSERT INTO `ey_region` VALUES ('24335', '郧西县', '3', '24291', 'Y');
INSERT INTO `ey_region` VALUES ('24354', '竹山县', '3', '24291', 'Z');
INSERT INTO `ey_region` VALUES ('24374', '竹溪县', '3', '24291', 'Z');
INSERT INTO `ey_region` VALUES ('24405', '房县', '3', '24291', 'F');
INSERT INTO `ey_region` VALUES ('24435', '丹江口市', '3', '24291', 'D');
INSERT INTO `ey_region` VALUES ('24453', '宜昌市', '2', '24022', 'Y');
INSERT INTO `ey_region` VALUES ('24454', '市辖区', '3', '24453', 'S');
INSERT INTO `ey_region` VALUES ('24455', '西陵区', '3', '24453', 'X');
INSERT INTO `ey_region` VALUES ('24465', '伍家岗区', '3', '24453', 'W');
INSERT INTO `ey_region` VALUES ('24471', '点军区', '3', '24453', 'D');
INSERT INTO `ey_region` VALUES ('24477', '猇亭区', '3', '24453', 'X');
INSERT INTO `ey_region` VALUES ('24481', '夷陵区', '3', '24453', 'Y');
INSERT INTO `ey_region` VALUES ('24495', '远安县', '3', '24453', 'Y');
INSERT INTO `ey_region` VALUES ('24503', '兴山县', '3', '24453', 'X');
INSERT INTO `ey_region` VALUES ('24512', '秭归县', '3', '24453', 'Z');
INSERT INTO `ey_region` VALUES ('24525', '长阳县', '3', '24453', 'C');
INSERT INTO `ey_region` VALUES ('24537', '五峰县', '3', '24453', 'W');
INSERT INTO `ey_region` VALUES ('24546', '宜都市', '3', '24453', 'Y');
INSERT INTO `ey_region` VALUES ('24559', '当阳市', '3', '24453', 'D');
INSERT INTO `ey_region` VALUES ('24570', '枝江市', '3', '24453', 'Z');
INSERT INTO `ey_region` VALUES ('24580', '襄樊市', '2', '24022', 'X');
INSERT INTO `ey_region` VALUES ('24581', '市辖区', '3', '24580', 'S');
INSERT INTO `ey_region` VALUES ('24582', '襄城区', '3', '24580', 'X');
INSERT INTO `ey_region` VALUES ('24591', '樊城区', '3', '24580', 'F');
INSERT INTO `ey_region` VALUES ('24608', '襄阳区', '3', '24580', 'X');
INSERT INTO `ey_region` VALUES ('24623', '南漳县', '3', '24580', 'N');
INSERT INTO `ey_region` VALUES ('24635', '谷城县', '3', '24580', 'G');
INSERT INTO `ey_region` VALUES ('24647', '保康县', '3', '24580', 'B');
INSERT INTO `ey_region` VALUES ('24659', '老河口市', '3', '24580', 'L');
INSERT INTO `ey_region` VALUES ('24674', '枣阳市', '3', '24580', 'Z');
INSERT INTO `ey_region` VALUES ('24692', '宜城市', '3', '24580', 'Y');
INSERT INTO `ey_region` VALUES ('24706', '鄂州市', '2', '24022', 'E');
INSERT INTO `ey_region` VALUES ('24707', '市辖区', '3', '24706', 'S');
INSERT INTO `ey_region` VALUES ('24708', '粱子湖区', '3', '24706', 'L');
INSERT INTO `ey_region` VALUES ('24714', '华容区', '3', '24706', 'H');
INSERT INTO `ey_region` VALUES ('24722', '鄂城区', '3', '24706', 'E');
INSERT INTO `ey_region` VALUES ('24737', '荆门市', '2', '24022', 'J');
INSERT INTO `ey_region` VALUES ('24738', '市辖区', '3', '24737', 'S');
INSERT INTO `ey_region` VALUES ('24739', '东宝区', '3', '24737', 'D');
INSERT INTO `ey_region` VALUES ('24749', '掇刀区', '3', '24737', 'D');
INSERT INTO `ey_region` VALUES ('24755', '京山县', '3', '24737', 'J');
INSERT INTO `ey_region` VALUES ('24778', '沙洋县', '3', '24737', 'S');
INSERT INTO `ey_region` VALUES ('24794', '钟祥市', '3', '24737', 'Z');
INSERT INTO `ey_region` VALUES ('24816', '孝感市', '2', '24022', 'X');
INSERT INTO `ey_region` VALUES ('24817', '市辖区', '3', '24816', 'S');
INSERT INTO `ey_region` VALUES ('24818', '孝南区', '3', '24816', 'X');
INSERT INTO `ey_region` VALUES ('24838', '孝昌县', '3', '24816', 'X');
INSERT INTO `ey_region` VALUES ('24853', '大悟县', '3', '24816', 'D');
INSERT INTO `ey_region` VALUES ('24871', '云梦县', '3', '24816', 'Y');
INSERT INTO `ey_region` VALUES ('24885', '应城市', '3', '24816', 'Y');
INSERT INTO `ey_region` VALUES ('24903', '安陆市', '3', '24816', 'A');
INSERT INTO `ey_region` VALUES ('24920', '汉川市', '3', '24816', 'H');
INSERT INTO `ey_region` VALUES ('24949', '荆州市', '2', '24022', 'J');
INSERT INTO `ey_region` VALUES ('24950', '市辖区', '3', '24949', 'S');
INSERT INTO `ey_region` VALUES ('24951', '沙市区', '3', '24949', 'S');
INSERT INTO `ey_region` VALUES ('24965', '荆州区', '3', '24949', 'J');
INSERT INTO `ey_region` VALUES ('24978', '公安县', '3', '24949', 'G');
INSERT INTO `ey_region` VALUES ('24995', '监利县', '3', '24949', 'J');
INSERT INTO `ey_region` VALUES ('25019', '江陵县', '3', '24949', 'J');
INSERT INTO `ey_region` VALUES ('25032', '石首市', '3', '24949', 'S');
INSERT INTO `ey_region` VALUES ('25048', '洪湖市', '3', '24949', 'H');
INSERT INTO `ey_region` VALUES ('25069', '松滋市', '3', '24949', 'S');
INSERT INTO `ey_region` VALUES ('25086', '黄冈市', '2', '24022', 'H');
INSERT INTO `ey_region` VALUES ('25087', '市辖区', '3', '25086', 'S');
INSERT INTO `ey_region` VALUES ('25088', '黄州区', '3', '25086', 'H');
INSERT INTO `ey_region` VALUES ('25099', '团风县', '3', '25086', 'T');
INSERT INTO `ey_region` VALUES ('25112', '红安县', '3', '25086', 'H');
INSERT INTO `ey_region` VALUES ('25126', '罗田县', '3', '25086', 'L');
INSERT INTO `ey_region` VALUES ('25143', '英山县', '3', '25086', 'Y');
INSERT INTO `ey_region` VALUES ('25158', '浠水县', '3', '25086', 'X');
INSERT INTO `ey_region` VALUES ('25175', '蕲春县', '3', '25086', 'Q');
INSERT INTO `ey_region` VALUES ('25192', '黄梅县', '3', '25086', 'H');
INSERT INTO `ey_region` VALUES ('25211', '麻城市', '3', '25086', 'M');
INSERT INTO `ey_region` VALUES ('25235', '武穴市', '3', '25086', 'W');
INSERT INTO `ey_region` VALUES ('25249', '咸宁市', '2', '24022', 'X');
INSERT INTO `ey_region` VALUES ('25250', '市辖区', '3', '25249', 'S');
INSERT INTO `ey_region` VALUES ('25251', '咸安区', '3', '25249', 'X');
INSERT INTO `ey_region` VALUES ('25266', '嘉鱼县', '3', '25249', 'J');
INSERT INTO `ey_region` VALUES ('25276', '通城县', '3', '25249', 'T');
INSERT INTO `ey_region` VALUES ('25290', '崇阳县', '3', '25249', 'C');
INSERT INTO `ey_region` VALUES ('25303', '通山县', '3', '25249', 'T');
INSERT INTO `ey_region` VALUES ('25317', '赤壁市', '3', '25249', 'C');
INSERT INTO `ey_region` VALUES ('25335', '随州市', '2', '24022', 'S');
INSERT INTO `ey_region` VALUES ('25336', '市辖区', '3', '25335', 'S');
INSERT INTO `ey_region` VALUES ('25337', '曾都区', '3', '25335', 'Z');
INSERT INTO `ey_region` VALUES ('25367', '广水市', '3', '25335', 'G');
INSERT INTO `ey_region` VALUES ('25388', '恩施州', '2', '24022', 'E');
INSERT INTO `ey_region` VALUES ('25389', '恩施市', '3', '25388', 'E');
INSERT INTO `ey_region` VALUES ('25406', '利川市', '3', '25388', 'L');
INSERT INTO `ey_region` VALUES ('25422', '建始县', '3', '25388', 'J');
INSERT INTO `ey_region` VALUES ('25433', '巴东县', '3', '25388', 'B');
INSERT INTO `ey_region` VALUES ('25446', '宣恩县', '3', '25388', 'X');
INSERT INTO `ey_region` VALUES ('25456', '咸丰县', '3', '25388', 'X');
INSERT INTO `ey_region` VALUES ('25467', '来凤县', '3', '25388', 'L');
INSERT INTO `ey_region` VALUES ('25476', '鹤峰县', '3', '25388', 'H');
INSERT INTO `ey_region` VALUES ('25487', '省直辖行政单位', '2', '24022', 'S');
INSERT INTO `ey_region` VALUES ('25488', '仙桃市', '3', '25487', 'X');
INSERT INTO `ey_region` VALUES ('25516', '潜江市', '3', '25487', 'Q');
INSERT INTO `ey_region` VALUES ('25541', '天门市', '3', '25487', 'T');
INSERT INTO `ey_region` VALUES ('25570', '神农架林区', '3', '25487', 'S');
INSERT INTO `ey_region` VALUES ('25579', '湖南省', '1', '0', 'H');
INSERT INTO `ey_region` VALUES ('25580', '长沙市', '2', '25579', 'C');
INSERT INTO `ey_region` VALUES ('25581', '市辖区', '3', '25580', 'S');
INSERT INTO `ey_region` VALUES ('25582', '芙蓉区', '3', '25580', 'F');
INSERT INTO `ey_region` VALUES ('25596', '天心区', '3', '25580', 'T');
INSERT INTO `ey_region` VALUES ('25607', '岳麓区', '3', '25580', 'Y');
INSERT INTO `ey_region` VALUES ('25620', '开福区', '3', '25580', 'K');
INSERT INTO `ey_region` VALUES ('25634', '雨花区', '3', '25580', 'Y');
INSERT INTO `ey_region` VALUES ('25645', '长沙县', '3', '25580', 'C');
INSERT INTO `ey_region` VALUES ('25666', '望城县', '3', '25580', 'W');
INSERT INTO `ey_region` VALUES ('25686', '宁乡县', '3', '25580', 'N');
INSERT INTO `ey_region` VALUES ('25720', '浏阳市', '3', '25580', 'L');
INSERT INTO `ey_region` VALUES ('25758', '株洲市', '2', '25579', 'Z');
INSERT INTO `ey_region` VALUES ('25759', '市辖区', '3', '25758', 'S');
INSERT INTO `ey_region` VALUES ('25760', '荷塘区', '3', '25758', 'H');
INSERT INTO `ey_region` VALUES ('25768', '芦淞区', '3', '25758', 'L');
INSERT INTO `ey_region` VALUES ('25777', '石峰区', '3', '25758', 'S');
INSERT INTO `ey_region` VALUES ('25785', '天元区', '3', '25758', 'T');
INSERT INTO `ey_region` VALUES ('25791', '株洲县', '3', '25758', 'Z');
INSERT INTO `ey_region` VALUES ('25810', '攸县', '3', '25758', 'Y');
INSERT INTO `ey_region` VALUES ('25836', '茶陵县', '3', '25758', 'C');
INSERT INTO `ey_region` VALUES ('25863', '炎陵县', '3', '25758', 'Y');
INSERT INTO `ey_region` VALUES ('25881', '醴陵市', '3', '25758', 'L');
INSERT INTO `ey_region` VALUES ('25912', '湘潭市', '2', '25579', 'X');
INSERT INTO `ey_region` VALUES ('25913', '市辖区', '3', '25912', 'S');
INSERT INTO `ey_region` VALUES ('25914', '雨湖区', '3', '25912', 'Y');
INSERT INTO `ey_region` VALUES ('25929', '岳塘区', '3', '25912', 'Y');
INSERT INTO `ey_region` VALUES ('25947', '湘潭县', '3', '25912', 'X');
INSERT INTO `ey_region` VALUES ('25970', '湘乡市', '3', '25912', 'X');
INSERT INTO `ey_region` VALUES ('25993', '韶山市', '3', '25912', 'S');
INSERT INTO `ey_region` VALUES ('26001', '衡阳市', '2', '25579', 'H');
INSERT INTO `ey_region` VALUES ('26002', '市辖区', '3', '26001', 'S');
INSERT INTO `ey_region` VALUES ('26003', '珠晖区', '3', '26001', 'Z');
INSERT INTO `ey_region` VALUES ('26019', '雁峰区', '3', '26001', 'Y');
INSERT INTO `ey_region` VALUES ('26028', '石鼓区', '3', '26001', 'S');
INSERT INTO `ey_region` VALUES ('26037', '蒸湘区', '3', '26001', 'Z');
INSERT INTO `ey_region` VALUES ('26045', '南岳区', '3', '26001', 'N');
INSERT INTO `ey_region` VALUES ('26051', '衡阳县', '3', '26001', 'H');
INSERT INTO `ey_region` VALUES ('26080', '衡南县', '3', '26001', 'H');
INSERT INTO `ey_region` VALUES ('26112', '衡山县', '3', '26001', 'H');
INSERT INTO `ey_region` VALUES ('26130', '衡东县', '3', '26001', 'H');
INSERT INTO `ey_region` VALUES ('26155', '祁东县', '3', '26001', 'Q');
INSERT INTO `ey_region` VALUES ('26179', '耒阳市', '3', '26001', 'L');
INSERT INTO `ey_region` VALUES ('26215', '常宁市', '3', '26001', 'C');
INSERT INTO `ey_region` VALUES ('26242', '邵阳市', '2', '25579', 'S');
INSERT INTO `ey_region` VALUES ('26243', '市辖区', '3', '26242', 'S');
INSERT INTO `ey_region` VALUES ('26244', '双清区', '3', '26242', 'S');
INSERT INTO `ey_region` VALUES ('26257', '大祥区', '3', '26242', 'D');
INSERT INTO `ey_region` VALUES ('26272', '北塔区', '3', '26242', 'B');
INSERT INTO `ey_region` VALUES ('26279', '邵东县', '3', '26242', 'S');
INSERT INTO `ey_region` VALUES ('26306', '新邵县', '3', '26242', 'X');
INSERT INTO `ey_region` VALUES ('26322', '邵阳县', '3', '26242', 'S');
INSERT INTO `ey_region` VALUES ('26348', '隆回县', '3', '26242', 'L');
INSERT INTO `ey_region` VALUES ('26375', '洞口县', '3', '26242', 'D');
INSERT INTO `ey_region` VALUES ('26399', '绥宁县', '3', '26242', 'S');
INSERT INTO `ey_region` VALUES ('26425', '新宁县', '3', '26242', 'X');
INSERT INTO `ey_region` VALUES ('26444', '城步县', '3', '26242', 'C');
INSERT INTO `ey_region` VALUES ('26465', '武冈市', '3', '26242', 'W');
INSERT INTO `ey_region` VALUES ('26485', '岳阳市', '2', '25579', 'Y');
INSERT INTO `ey_region` VALUES ('26486', '市辖区', '3', '26485', 'S');
INSERT INTO `ey_region` VALUES ('26487', '岳阳楼区', '3', '26485', 'Y');
INSERT INTO `ey_region` VALUES ('26511', '云溪区', '3', '26485', 'Y');
INSERT INTO `ey_region` VALUES ('26521', '君山区', '3', '26485', 'J');
INSERT INTO `ey_region` VALUES ('26529', '岳阳县', '3', '26485', 'Y');
INSERT INTO `ey_region` VALUES ('26551', '华容县', '3', '26485', 'H');
INSERT INTO `ey_region` VALUES ('26572', '湘阴县', '3', '26485', 'X');
INSERT INTO `ey_region` VALUES ('26592', '平江县', '3', '26485', 'P');
INSERT INTO `ey_region` VALUES ('26620', '汩罗市', '3', '26485', 'G');
INSERT INTO `ey_region` VALUES ('26657', '临湘市', '3', '26485', 'L');
INSERT INTO `ey_region` VALUES ('26683', '常德市', '2', '25579', 'C');
INSERT INTO `ey_region` VALUES ('26684', '市辖区', '3', '26683', 'S');
INSERT INTO `ey_region` VALUES ('26685', '武陵区', '3', '26683', 'W');
INSERT INTO `ey_region` VALUES ('26702', '鼎城区', '3', '26683', 'D');
INSERT INTO `ey_region` VALUES ('26741', '安乡县', '3', '26683', 'A');
INSERT INTO `ey_region` VALUES ('26762', '汉寿县', '3', '26683', 'H');
INSERT INTO `ey_region` VALUES ('26793', '澧县', '3', '26683', 'L');
INSERT INTO `ey_region` VALUES ('26826', '临澧县', '3', '26683', 'L');
INSERT INTO `ey_region` VALUES ('26844', '桃源县', '3', '26683', 'T');
INSERT INTO `ey_region` VALUES ('26885', '石门县', '3', '26683', 'S');
INSERT INTO `ey_region` VALUES ('26912', '津市市', '3', '26683', 'J');
INSERT INTO `ey_region` VALUES ('26925', '张家界市', '2', '25579', 'Z');
INSERT INTO `ey_region` VALUES ('26926', '市辖区', '3', '26925', 'S');
INSERT INTO `ey_region` VALUES ('26927', '永定区', '3', '26925', 'Y');
INSERT INTO `ey_region` VALUES ('26959', '武陵源区', '3', '26925', 'W');
INSERT INTO `ey_region` VALUES ('26966', '慈利县', '3', '26925', 'C');
INSERT INTO `ey_region` VALUES ('26998', '桑植县', '3', '26925', 'S');
INSERT INTO `ey_region` VALUES ('27038', '益阳市', '2', '25579', 'Y');
INSERT INTO `ey_region` VALUES ('27039', '市辖区', '3', '27038', 'S');
INSERT INTO `ey_region` VALUES ('27040', '资阳区', '3', '27038', 'Z');
INSERT INTO `ey_region` VALUES ('27049', '赫山区', '3', '27038', 'H');
INSERT INTO `ey_region` VALUES ('27069', '南县', '3', '27038', 'N');
INSERT INTO `ey_region` VALUES ('27087', '桃江县', '3', '27038', 'T');
INSERT INTO `ey_region` VALUES ('27106', '安化县', '3', '27038', 'A');
INSERT INTO `ey_region` VALUES ('27130', '沅江市', '3', '27038', 'Y');
INSERT INTO `ey_region` VALUES ('27147', '郴州市', '2', '25579', 'C');
INSERT INTO `ey_region` VALUES ('27148', '市辖区', '3', '27147', 'S');
INSERT INTO `ey_region` VALUES ('27149', '北湖区', '3', '27147', 'B');
INSERT INTO `ey_region` VALUES ('27168', '苏仙区', '3', '27147', 'S');
INSERT INTO `ey_region` VALUES ('27188', '桂阳县', '3', '27147', 'G');
INSERT INTO `ey_region` VALUES ('27228', '宜章县', '3', '27147', 'Y');
INSERT INTO `ey_region` VALUES ('27256', '永兴县', '3', '27147', 'Y');
INSERT INTO `ey_region` VALUES ('27282', '嘉禾县', '3', '27147', 'J');
INSERT INTO `ey_region` VALUES ('27300', '临武县', '3', '27147', 'L');
INSERT INTO `ey_region` VALUES ('27323', '汝城县', '3', '27147', 'R');
INSERT INTO `ey_region` VALUES ('27347', '桂东县', '3', '27147', 'G');
INSERT INTO `ey_region` VALUES ('27367', '安仁县', '3', '27147', 'A');
INSERT INTO `ey_region` VALUES ('27389', '资兴市', '3', '27147', 'Z');
INSERT INTO `ey_region` VALUES ('27418', '永州市', '2', '25579', 'Y');
INSERT INTO `ey_region` VALUES ('27419', '市辖区', '3', '27418', 'S');
INSERT INTO `ey_region` VALUES ('27420', '零陵区', '3', '27418', 'L');
INSERT INTO `ey_region` VALUES ('27437', '冷水滩区', '3', '27418', 'L');
INSERT INTO `ey_region` VALUES ('27459', '祁阳县', '3', '27418', 'Q');
INSERT INTO `ey_region` VALUES ('27492', '东安县', '3', '27418', 'D');
INSERT INTO `ey_region` VALUES ('27511', '双牌县', '3', '27418', 'S');
INSERT INTO `ey_region` VALUES ('27527', '道县', '3', '27418', 'D');
INSERT INTO `ey_region` VALUES ('27554', '江永县', '3', '27418', 'J');
INSERT INTO `ey_region` VALUES ('27567', '宁远县', '3', '27418', 'N');
INSERT INTO `ey_region` VALUES ('27585', '蓝山县', '3', '27418', 'L');
INSERT INTO `ey_region` VALUES ('27606', '新田县', '3', '27418', 'X');
INSERT INTO `ey_region` VALUES ('27626', '江华县', '3', '27418', 'J');
INSERT INTO `ey_region` VALUES ('27650', '怀化市', '2', '25579', 'H');
INSERT INTO `ey_region` VALUES ('27651', '市辖区', '3', '27650', 'S');
INSERT INTO `ey_region` VALUES ('27652', '鹤城区', '3', '27650', 'H');
INSERT INTO `ey_region` VALUES ('27667', '中方县', '3', '27650', 'Z');
INSERT INTO `ey_region` VALUES ('27690', '沅陵县', '3', '27650', 'Y');
INSERT INTO `ey_region` VALUES ('27714', '辰溪县', '3', '27650', 'C');
INSERT INTO `ey_region` VALUES ('27745', '溆浦县', '3', '27650', 'X');
INSERT INTO `ey_region` VALUES ('27789', '会同县', '3', '27650', 'H');
INSERT INTO `ey_region` VALUES ('27815', '麻阳县', '3', '27650', 'M');
INSERT INTO `ey_region` VALUES ('27839', '新晃县', '3', '27650', 'X');
INSERT INTO `ey_region` VALUES ('27863', '芷江县', '3', '27650', 'Z');
INSERT INTO `ey_region` VALUES ('27892', '靖州苗族侗族县', '3', '27650', 'J');
INSERT INTO `ey_region` VALUES ('27906', '通道县', '3', '27650', 'T');
INSERT INTO `ey_region` VALUES ('27930', '洪江市', '3', '27650', 'H');
INSERT INTO `ey_region` VALUES ('27963', '娄底市', '2', '25579', 'L');
INSERT INTO `ey_region` VALUES ('27964', '市辖区', '3', '27963', 'S');
INSERT INTO `ey_region` VALUES ('27965', '娄星区', '3', '27963', 'L');
INSERT INTO `ey_region` VALUES ('27980', '双峰县', '3', '27963', 'S');
INSERT INTO `ey_region` VALUES ('27997', '新化县', '3', '27963', 'X');
INSERT INTO `ey_region` VALUES ('28027', '冷水江市', '3', '27963', 'L');
INSERT INTO `ey_region` VALUES ('28044', '涟源市', '3', '27963', 'L');
INSERT INTO `ey_region` VALUES ('28065', '湘西州', '2', '25579', 'X');
INSERT INTO `ey_region` VALUES ('28066', '吉首市', '3', '28065', 'J');
INSERT INTO `ey_region` VALUES ('28082', '泸溪县', '3', '28065', 'L');
INSERT INTO `ey_region` VALUES ('28099', '凤凰县', '3', '28065', 'F');
INSERT INTO `ey_region` VALUES ('28124', '花垣县', '3', '28065', 'H');
INSERT INTO `ey_region` VALUES ('28143', '保靖县', '3', '28065', 'B');
INSERT INTO `ey_region` VALUES ('28161', '古丈县', '3', '28065', 'G');
INSERT INTO `ey_region` VALUES ('28174', '永顺县', '3', '28065', 'Y');
INSERT INTO `ey_region` VALUES ('28205', '龙山县', '3', '28065', 'L');
INSERT INTO `ey_region` VALUES ('28240', '广东省', '1', '0', 'G');
INSERT INTO `ey_region` VALUES ('28241', '广州市', '2', '28240', 'G');
INSERT INTO `ey_region` VALUES ('28242', '市辖区', '3', '28241', 'S');
INSERT INTO `ey_region` VALUES ('28243', '荔湾区', '3', '28241', 'L');
INSERT INTO `ey_region` VALUES ('28266', '越秀区', '3', '28241', 'Y');
INSERT INTO `ey_region` VALUES ('28289', '海珠区', '3', '28241', 'H');
INSERT INTO `ey_region` VALUES ('28308', '天河区', '3', '28241', 'T');
INSERT INTO `ey_region` VALUES ('28330', '白云区', '3', '28241', 'B');
INSERT INTO `ey_region` VALUES ('28349', '黄埔区', '3', '28241', 'H');
INSERT INTO `ey_region` VALUES ('28359', '番禺区', '3', '28241', 'F');
INSERT INTO `ey_region` VALUES ('28377', '花都区', '3', '28241', 'H');
INSERT INTO `ey_region` VALUES ('28386', '南沙区', '3', '28241', 'N');
INSERT INTO `ey_region` VALUES ('28392', '萝岗区', '3', '28241', 'L');
INSERT INTO `ey_region` VALUES ('28399', '增城市', '3', '28241', 'Z');
INSERT INTO `ey_region` VALUES ('28409', '从化市', '3', '28241', 'C');
INSERT INTO `ey_region` VALUES ('28421', '韶关市', '2', '28240', 'S');
INSERT INTO `ey_region` VALUES ('28422', '市辖区', '3', '28421', 'S');
INSERT INTO `ey_region` VALUES ('28423', '武江区', '3', '28421', 'W');
INSERT INTO `ey_region` VALUES ('28431', '浈江区', '3', '28421', 'Z');
INSERT INTO `ey_region` VALUES ('28448', '曲江区', '3', '28421', 'Q');
INSERT INTO `ey_region` VALUES ('28463', '始兴县', '3', '28421', 'S');
INSERT INTO `ey_region` VALUES ('28475', '仁化县', '3', '28421', 'R');
INSERT INTO `ey_region` VALUES ('28488', '翁源县', '3', '28421', 'W');
INSERT INTO `ey_region` VALUES ('28497', '乳源县', '3', '28421', 'R');
INSERT INTO `ey_region` VALUES ('28509', '新丰县', '3', '28421', 'X');
INSERT INTO `ey_region` VALUES ('28517', '乐昌市', '3', '28421', 'L');
INSERT INTO `ey_region` VALUES ('28539', '南雄市', '3', '28421', 'N');
INSERT INTO `ey_region` VALUES ('28558', '深圳市', '2', '28240', 'S');
INSERT INTO `ey_region` VALUES ('28559', '市辖区', '3', '28558', 'S');
INSERT INTO `ey_region` VALUES ('28560', '罗湖区', '3', '28558', 'L');
INSERT INTO `ey_region` VALUES ('28571', '福田区', '3', '28558', 'F');
INSERT INTO `ey_region` VALUES ('28581', '南山区', '3', '28558', 'N');
INSERT INTO `ey_region` VALUES ('28590', '宝安区', '3', '28558', 'B');
INSERT INTO `ey_region` VALUES ('28604', '龙岗区', '3', '28558', 'L');
INSERT INTO `ey_region` VALUES ('28619', '盐田区', '3', '28558', 'Y');
INSERT INTO `ey_region` VALUES ('28626', '珠海市', '2', '28240', 'Z');
INSERT INTO `ey_region` VALUES ('28627', '市辖区', '3', '28626', 'S');
INSERT INTO `ey_region` VALUES ('28628', '香洲区', '3', '28626', 'X');
INSERT INTO `ey_region` VALUES ('28646', '斗门区', '3', '28626', 'D');
INSERT INTO `ey_region` VALUES ('28654', '金湾区', '3', '28626', 'J');
INSERT INTO `ey_region` VALUES ('28659', '汕头市', '2', '28240', 'S');
INSERT INTO `ey_region` VALUES ('28660', '市辖区', '3', '28659', 'S');
INSERT INTO `ey_region` VALUES ('28661', '龙湖区', '3', '28659', 'L');
INSERT INTO `ey_region` VALUES ('28669', '金平区', '3', '28659', 'J');
INSERT INTO `ey_region` VALUES ('28687', '濠江区', '3', '28659', 'H');
INSERT INTO `ey_region` VALUES ('28695', '潮阳区', '3', '28659', 'C');
INSERT INTO `ey_region` VALUES ('28709', '潮南区', '3', '28659', 'C');
INSERT INTO `ey_region` VALUES ('28721', '澄海区', '3', '28659', 'C');
INSERT INTO `ey_region` VALUES ('28733', '南澳县', '3', '28659', 'N');
INSERT INTO `ey_region` VALUES ('28737', '佛山市', '2', '28240', 'F');
INSERT INTO `ey_region` VALUES ('28738', '市辖区', '3', '28737', 'S');
INSERT INTO `ey_region` VALUES ('28739', '禅城区', '3', '28737', 'C');
INSERT INTO `ey_region` VALUES ('28744', '南海区', '3', '28737', 'N');
INSERT INTO `ey_region` VALUES ('28753', '顺德区', '3', '28737', 'S');
INSERT INTO `ey_region` VALUES ('28764', '三水区', '3', '28737', 'S');
INSERT INTO `ey_region` VALUES ('28776', '高明区', '3', '28737', 'G');
INSERT INTO `ey_region` VALUES ('28785', '江门市', '2', '28240', 'J');
INSERT INTO `ey_region` VALUES ('28786', '市辖区', '3', '28785', 'S');
INSERT INTO `ey_region` VALUES ('28787', '蓬江区', '3', '28785', 'P');
INSERT INTO `ey_region` VALUES ('28797', '江海区', '3', '28785', 'J');
INSERT INTO `ey_region` VALUES ('28803', '新会区', '3', '28785', 'X');
INSERT INTO `ey_region` VALUES ('28818', '台山市', '3', '28785', 'T');
INSERT INTO `ey_region` VALUES ('28837', '开平市', '3', '28785', 'K');
INSERT INTO `ey_region` VALUES ('28853', '鹤山市', '3', '28785', 'H');
INSERT INTO `ey_region` VALUES ('28867', '恩平市', '3', '28785', 'E');
INSERT INTO `ey_region` VALUES ('28880', '湛江市', '2', '28240', 'Z');
INSERT INTO `ey_region` VALUES ('28881', '市辖区', '3', '28880', 'S');
INSERT INTO `ey_region` VALUES ('28882', '湛江市赤坎区', '3', '28880', 'Z');
INSERT INTO `ey_region` VALUES ('28891', '湛江市霞山区', '3', '28880', 'Z');
INSERT INTO `ey_region` VALUES ('28904', '湛江市坡头区', '3', '28880', 'Z');
INSERT INTO `ey_region` VALUES ('28914', '湛江市麻章区', '3', '28880', 'Z');
INSERT INTO `ey_region` VALUES ('28923', '遂溪县', '3', '28880', 'S');
INSERT INTO `ey_region` VALUES ('28941', '徐闻县', '3', '28880', 'X');
INSERT INTO `ey_region` VALUES ('28962', '廉江市', '3', '28880', 'L');
INSERT INTO `ey_region` VALUES ('28984', '雷州市', '3', '28880', 'L');
INSERT INTO `ey_region` VALUES ('29010', '吴川市', '3', '28880', 'W');
INSERT INTO `ey_region` VALUES ('29026', '茂名市', '2', '28240', 'M');
INSERT INTO `ey_region` VALUES ('29027', '市辖区', '3', '29026', 'S');
INSERT INTO `ey_region` VALUES ('29028', '茂南区', '3', '29026', 'M');
INSERT INTO `ey_region` VALUES ('29045', '茂港区', '3', '29026', 'M');
INSERT INTO `ey_region` VALUES ('29053', '电白县', '3', '29026', 'D');
INSERT INTO `ey_region` VALUES ('29075', '高州市', '3', '29026', 'G');
INSERT INTO `ey_region` VALUES ('29107', '化州市', '3', '29026', 'H');
INSERT INTO `ey_region` VALUES ('29138', '信宜市', '3', '29026', 'X');
INSERT INTO `ey_region` VALUES ('29159', '肇庆市', '2', '28240', 'Z');
INSERT INTO `ey_region` VALUES ('29160', '市辖区', '3', '29159', 'S');
INSERT INTO `ey_region` VALUES ('29161', '端州区', '3', '29159', 'D');
INSERT INTO `ey_region` VALUES ('29169', '鼎湖区', '3', '29159', 'D');
INSERT INTO `ey_region` VALUES ('29178', '广宁县', '3', '29159', 'G');
INSERT INTO `ey_region` VALUES ('29196', '怀集县', '3', '29159', 'H');
INSERT INTO `ey_region` VALUES ('29217', '封开县', '3', '29159', 'F');
INSERT INTO `ey_region` VALUES ('29234', '德庆县', '3', '29159', 'D');
INSERT INTO `ey_region` VALUES ('29248', '高要市', '3', '29159', 'G');
INSERT INTO `ey_region` VALUES ('29266', '四会市', '3', '29159', 'S');
INSERT INTO `ey_region` VALUES ('29282', '惠州市', '2', '28240', 'H');
INSERT INTO `ey_region` VALUES ('29283', '市辖区', '3', '29282', 'S');
INSERT INTO `ey_region` VALUES ('29284', '惠城区', '3', '29282', 'H');
INSERT INTO `ey_region` VALUES ('29304', '惠阳区', '3', '29282', 'H');
INSERT INTO `ey_region` VALUES ('29317', '博罗县', '3', '29282', 'B');
INSERT INTO `ey_region` VALUES ('29335', '惠东县', '3', '29282', 'H');
INSERT INTO `ey_region` VALUES ('29355', '龙门县', '3', '29282', 'L');
INSERT INTO `ey_region` VALUES ('29371', '梅州市', '2', '28240', 'M');
INSERT INTO `ey_region` VALUES ('29372', '市辖区', '3', '29371', 'S');
INSERT INTO `ey_region` VALUES ('29373', '梅江区', '3', '29371', 'M');
INSERT INTO `ey_region` VALUES ('29380', '梅县', '3', '29371', 'M');
INSERT INTO `ey_region` VALUES ('29400', '大埔县', '3', '29371', 'D');
INSERT INTO `ey_region` VALUES ('29418', '丰顺县', '3', '29371', 'F');
INSERT INTO `ey_region` VALUES ('29436', '五华县', '3', '29371', 'W');
INSERT INTO `ey_region` VALUES ('29453', '平远县', '3', '29371', 'P');
INSERT INTO `ey_region` VALUES ('29466', '蕉岭县', '3', '29371', 'J');
INSERT INTO `ey_region` VALUES ('29477', '兴宁市', '3', '29371', 'X');
INSERT INTO `ey_region` VALUES ('29498', '汕尾市', '2', '28240', 'S');
INSERT INTO `ey_region` VALUES ('29499', '市辖区', '3', '29498', 'S');
INSERT INTO `ey_region` VALUES ('29500', '城区', '3', '29498', 'C');
INSERT INTO `ey_region` VALUES ('29511', '海丰县', '3', '29498', 'H');
INSERT INTO `ey_region` VALUES ('29529', '陆河县', '3', '29498', 'L');
INSERT INTO `ey_region` VALUES ('29538', '陆丰市', '3', '29498', 'L');
INSERT INTO `ey_region` VALUES ('29568', '河源市', '2', '28240', 'H');
INSERT INTO `ey_region` VALUES ('29569', '市辖区', '3', '29568', 'S');
INSERT INTO `ey_region` VALUES ('29570', '源城区', '3', '29568', 'Y');
INSERT INTO `ey_region` VALUES ('29578', '紫金县', '3', '29568', 'Z');
INSERT INTO `ey_region` VALUES ('29599', '龙川县', '3', '29568', 'L');
INSERT INTO `ey_region` VALUES ('29625', '连平县', '3', '29568', 'L');
INSERT INTO `ey_region` VALUES ('29639', '和平县', '3', '29568', 'H');
INSERT INTO `ey_region` VALUES ('29657', '东源县', '3', '29568', 'D');
INSERT INTO `ey_region` VALUES ('29679', '阳江市', '2', '28240', 'Y');
INSERT INTO `ey_region` VALUES ('29680', '市辖区', '3', '29679', 'S');
INSERT INTO `ey_region` VALUES ('29681', '江城区', '3', '29679', 'J');
INSERT INTO `ey_region` VALUES ('29698', '阳西县', '3', '29679', 'Y');
INSERT INTO `ey_region` VALUES ('29709', '阳东县', '3', '29679', 'Y');
INSERT INTO `ey_region` VALUES ('29729', '阳春市', '3', '29679', 'Y');
INSERT INTO `ey_region` VALUES ('29755', '清远市', '2', '28240', 'Q');
INSERT INTO `ey_region` VALUES ('29756', '市辖区', '3', '29755', 'S');
INSERT INTO `ey_region` VALUES ('29757', '清城区', '3', '29755', 'Q');
INSERT INTO `ey_region` VALUES ('29766', '佛冈县', '3', '29755', 'F');
INSERT INTO `ey_region` VALUES ('29773', '阳山县', '3', '29755', 'Y');
INSERT INTO `ey_region` VALUES ('29787', '连山县', '3', '29755', 'L');
INSERT INTO `ey_region` VALUES ('29797', '连南县', '3', '29755', 'L');
INSERT INTO `ey_region` VALUES ('29805', '清新县', '3', '29755', 'Q');
INSERT INTO `ey_region` VALUES ('29816', '英德市', '3', '29755', 'Y');
INSERT INTO `ey_region` VALUES ('29842', '连州市', '3', '29755', 'L');
INSERT INTO `ey_region` VALUES ('29855', '东莞市', '2', '28240', 'D');
INSERT INTO `ey_region` VALUES ('29890', '中山市', '2', '28240', 'Z');
INSERT INTO `ey_region` VALUES ('29915', '潮州市', '2', '28240', 'C');
INSERT INTO `ey_region` VALUES ('29916', '市辖区', '3', '29915', 'S');
INSERT INTO `ey_region` VALUES ('29917', '潮州市湘桥区', '3', '29915', 'C');
INSERT INTO `ey_region` VALUES ('29930', '潮州市潮安县', '3', '29915', 'C');
INSERT INTO `ey_region` VALUES ('29954', '潮州市饶平县', '3', '29915', 'C');
INSERT INTO `ey_region` VALUES ('29977', '揭阳市', '2', '28240', 'J');
INSERT INTO `ey_region` VALUES ('29978', '市辖区', '3', '29977', 'S');
INSERT INTO `ey_region` VALUES ('29979', '榕城区', '3', '29977', 'R');
INSERT INTO `ey_region` VALUES ('29990', '揭东县', '3', '29977', 'J');
INSERT INTO `ey_region` VALUES ('30008', '揭西县', '3', '29977', 'J');
INSERT INTO `ey_region` VALUES ('30032', '惠来县', '3', '29977', 'H');
INSERT INTO `ey_region` VALUES ('30054', '普宁市', '3', '29977', 'P');
INSERT INTO `ey_region` VALUES ('30086', '云浮市', '2', '28240', 'Y');
INSERT INTO `ey_region` VALUES ('30087', '市辖区', '3', '30086', 'S');
INSERT INTO `ey_region` VALUES ('30088', '云城区', '3', '30086', 'Y');
INSERT INTO `ey_region` VALUES ('30096', '新兴县', '3', '30086', 'X');
INSERT INTO `ey_region` VALUES ('30112', '郁南县', '3', '30086', 'Y');
INSERT INTO `ey_region` VALUES ('30132', '云安县', '3', '30086', 'Y');
INSERT INTO `ey_region` VALUES ('30141', '罗定市', '3', '30086', 'L');
INSERT INTO `ey_region` VALUES ('30164', '广西', '1', '0', 'G');
INSERT INTO `ey_region` VALUES ('30165', '南宁市', '2', '30164', 'N');
INSERT INTO `ey_region` VALUES ('30166', '市辖区', '3', '30165', 'S');
INSERT INTO `ey_region` VALUES ('30167', '兴宁区', '3', '30165', 'X');
INSERT INTO `ey_region` VALUES ('30174', '青秀区', '3', '30165', 'Q');
INSERT INTO `ey_region` VALUES ('30186', '江南区', '3', '30165', 'J');
INSERT INTO `ey_region` VALUES ('30196', '西乡塘区', '3', '30165', 'X');
INSERT INTO `ey_region` VALUES ('30214', '良庆区', '3', '30165', 'L');
INSERT INTO `ey_region` VALUES ('30222', '邕宁区', '3', '30165', 'Y');
INSERT INTO `ey_region` VALUES ('30228', '武鸣县', '3', '30165', 'W');
INSERT INTO `ey_region` VALUES ('30245', '隆安县', '3', '30165', 'L');
INSERT INTO `ey_region` VALUES ('30257', '马山县', '3', '30165', 'M');
INSERT INTO `ey_region` VALUES ('30270', '上林县', '3', '30165', 'S');
INSERT INTO `ey_region` VALUES ('30282', '宾阳县', '3', '30165', 'B');
INSERT INTO `ey_region` VALUES ('30300', '横县', '3', '30165', 'H');
INSERT INTO `ey_region` VALUES ('30319', '柳州市', '2', '30164', 'L');
INSERT INTO `ey_region` VALUES ('30320', '市辖区', '3', '30319', 'S');
INSERT INTO `ey_region` VALUES ('30321', '城中区', '3', '30319', 'C');
INSERT INTO `ey_region` VALUES ('30329', '鱼峰区', '3', '30319', 'Y');
INSERT INTO `ey_region` VALUES ('30338', '柳南区', '3', '30319', 'L');
INSERT INTO `ey_region` VALUES ('30348', '柳北区', '3', '30319', 'L');
INSERT INTO `ey_region` VALUES ('30361', '柳江县', '3', '30319', 'L');
INSERT INTO `ey_region` VALUES ('30374', '柳城县', '3', '30319', 'L');
INSERT INTO `ey_region` VALUES ('30387', '鹿寨县', '3', '30319', 'L');
INSERT INTO `ey_region` VALUES ('30398', '融安县', '3', '30319', 'R');
INSERT INTO `ey_region` VALUES ('30411', '融水县', '3', '30319', 'R');
INSERT INTO `ey_region` VALUES ('30432', '三江县', '3', '30319', 'S');
INSERT INTO `ey_region` VALUES ('30448', '桂林市', '2', '30164', 'G');
INSERT INTO `ey_region` VALUES ('30449', '市辖区', '3', '30448', 'S');
INSERT INTO `ey_region` VALUES ('30450', '秀峰区', '3', '30448', 'X');
INSERT INTO `ey_region` VALUES ('30454', '叠彩区', '3', '30448', 'D');
INSERT INTO `ey_region` VALUES ('30458', '象山区', '3', '30448', 'X');
INSERT INTO `ey_region` VALUES ('30463', '七星区', '3', '30448', 'Q');
INSERT INTO `ey_region` VALUES ('30469', '雁山区', '3', '30448', 'Y');
INSERT INTO `ey_region` VALUES ('30475', '阳朔县', '3', '30448', 'Y');
INSERT INTO `ey_region` VALUES ('30485', '临桂县', '3', '30448', 'L');
INSERT INTO `ey_region` VALUES ('30497', '灵川县', '3', '30448', 'L');
INSERT INTO `ey_region` VALUES ('30509', '全州县', '3', '30448', 'Q');
INSERT INTO `ey_region` VALUES ('30528', '兴安县', '3', '30448', 'X');
INSERT INTO `ey_region` VALUES ('30539', '永福县', '3', '30448', 'Y');
INSERT INTO `ey_region` VALUES ('30549', '灌阳县', '3', '30448', 'G');
INSERT INTO `ey_region` VALUES ('30559', '龙胜县', '3', '30448', 'L');
INSERT INTO `ey_region` VALUES ('30570', '资源县', '3', '30448', 'Z');
INSERT INTO `ey_region` VALUES ('30578', '平乐县', '3', '30448', 'P');
INSERT INTO `ey_region` VALUES ('30589', '荔浦县', '3', '30448', 'L');
INSERT INTO `ey_region` VALUES ('30603', '恭城县', '3', '30448', 'G');
INSERT INTO `ey_region` VALUES ('30613', '梧州市', '2', '30164', 'W');
INSERT INTO `ey_region` VALUES ('30614', '市辖区', '3', '30613', 'S');
INSERT INTO `ey_region` VALUES ('30615', '万秀区', '3', '30613', 'W');
INSERT INTO `ey_region` VALUES ('30622', '蝶山区', '3', '30613', 'D');
INSERT INTO `ey_region` VALUES ('30628', '长洲区', '3', '30613', 'C');
INSERT INTO `ey_region` VALUES ('30633', '苍梧县', '3', '30613', 'C');
INSERT INTO `ey_region` VALUES ('30646', '藤县', '3', '30613', 'T');
INSERT INTO `ey_region` VALUES ('30663', '蒙山县', '3', '30613', 'M');
INSERT INTO `ey_region` VALUES ('30673', '岑溪市', '3', '30613', 'C');
INSERT INTO `ey_region` VALUES ('30688', '北海市', '2', '30164', 'B');
INSERT INTO `ey_region` VALUES ('30689', '市辖区', '3', '30688', 'S');
INSERT INTO `ey_region` VALUES ('30690', '海城区', '3', '30688', 'H');
INSERT INTO `ey_region` VALUES ('30699', '银海区', '3', '30688', 'Y');
INSERT INTO `ey_region` VALUES ('30704', '铁山港区', '3', '30688', 'T');
INSERT INTO `ey_region` VALUES ('30708', '合浦县', '3', '30688', 'H');
INSERT INTO `ey_region` VALUES ('30724', '防城港市', '2', '30164', 'F');
INSERT INTO `ey_region` VALUES ('30725', '市辖区', '3', '30724', 'S');
INSERT INTO `ey_region` VALUES ('30726', '港口区', '3', '30724', 'G');
INSERT INTO `ey_region` VALUES ('30732', '防城区', '3', '30724', 'F');
INSERT INTO `ey_region` VALUES ('30748', '上思县', '3', '30724', 'S');
INSERT INTO `ey_region` VALUES ('30758', '东兴市', '3', '30724', 'D');
INSERT INTO `ey_region` VALUES ('30762', '钦州市', '2', '30164', 'Q');
INSERT INTO `ey_region` VALUES ('30763', '市辖区', '3', '30762', 'S');
INSERT INTO `ey_region` VALUES ('30764', '钦南区', '3', '30762', 'Q');
INSERT INTO `ey_region` VALUES ('30783', '钦北区', '3', '30762', 'Q');
INSERT INTO `ey_region` VALUES ('30796', '灵山县', '3', '30762', 'L');
INSERT INTO `ey_region` VALUES ('30817', '浦北县', '3', '30762', 'P');
INSERT INTO `ey_region` VALUES ('30834', '贵港市', '2', '30164', 'G');
INSERT INTO `ey_region` VALUES ('30835', '市辖区', '3', '30834', 'S');
INSERT INTO `ey_region` VALUES ('30836', '港北区', '3', '30834', 'G');
INSERT INTO `ey_region` VALUES ('30845', '港南区', '3', '30834', 'G');
INSERT INTO `ey_region` VALUES ('30855', '覃塘区', '3', '30834', 'Q');
INSERT INTO `ey_region` VALUES ('30866', '平南县', '3', '30834', 'P');
INSERT INTO `ey_region` VALUES ('30888', '桂平市', '3', '30834', 'G');
INSERT INTO `ey_region` VALUES ('30915', '玉林市', '2', '30164', 'Y');
INSERT INTO `ey_region` VALUES ('30916', '市辖区', '3', '30915', 'S');
INSERT INTO `ey_region` VALUES ('30917', '玉州区', '3', '30915', 'Y');
INSERT INTO `ey_region` VALUES ('30933', '容县', '3', '30915', 'R');
INSERT INTO `ey_region` VALUES ('30949', '陆川县', '3', '30915', 'L');
INSERT INTO `ey_region` VALUES ('30964', '博白县', '3', '30915', 'B');
INSERT INTO `ey_region` VALUES ('30993', '兴业县', '3', '30915', 'X');
INSERT INTO `ey_region` VALUES ('31007', '北流市', '3', '30915', 'B');
INSERT INTO `ey_region` VALUES ('31033', '百色市', '2', '30164', 'B');
INSERT INTO `ey_region` VALUES ('31034', '市辖区', '3', '31033', 'S');
INSERT INTO `ey_region` VALUES ('31035', '右江区', '3', '31033', 'Y');
INSERT INTO `ey_region` VALUES ('31045', '田阳县', '3', '31033', 'T');
INSERT INTO `ey_region` VALUES ('31056', '田东县', '3', '31033', 'T');
INSERT INTO `ey_region` VALUES ('31067', '平果县', '3', '31033', 'P');
INSERT INTO `ey_region` VALUES ('31081', '德保县', '3', '31033', 'D');
INSERT INTO `ey_region` VALUES ('31095', '靖西县', '3', '31033', 'J');
INSERT INTO `ey_region` VALUES ('31115', '那坡县', '3', '31033', 'N');
INSERT INTO `ey_region` VALUES ('31125', '凌云县', '3', '31033', 'L');
INSERT INTO `ey_region` VALUES ('31134', '乐业县', '3', '31033', 'L');
INSERT INTO `ey_region` VALUES ('31143', '田林县', '3', '31033', 'T');
INSERT INTO `ey_region` VALUES ('31158', '西林县', '3', '31033', 'X');
INSERT INTO `ey_region` VALUES ('31167', '隆林县', '3', '31033', 'L');
INSERT INTO `ey_region` VALUES ('31184', '贺州市', '2', '30164', 'H');
INSERT INTO `ey_region` VALUES ('31185', '市辖区', '3', '31184', 'S');
INSERT INTO `ey_region` VALUES ('31186', '八步区', '3', '31184', 'B');
INSERT INTO `ey_region` VALUES ('31208', '昭平县', '3', '31184', 'Z');
INSERT INTO `ey_region` VALUES ('31221', '钟山县', '3', '31184', 'Z');
INSERT INTO `ey_region` VALUES ('31236', '富川县', '3', '31184', 'F');
INSERT INTO `ey_region` VALUES ('31249', '河池市', '2', '30164', 'H');
INSERT INTO `ey_region` VALUES ('31250', '市辖区', '3', '31249', 'S');
INSERT INTO `ey_region` VALUES ('31251', '金城江区', '3', '31249', 'J');
INSERT INTO `ey_region` VALUES ('31264', '南丹县', '3', '31249', 'N');
INSERT INTO `ey_region` VALUES ('31276', '天峨县', '3', '31249', 'T');
INSERT INTO `ey_region` VALUES ('31286', '凤山县', '3', '31249', 'F');
INSERT INTO `ey_region` VALUES ('31296', '东兰县', '3', '31249', 'D');
INSERT INTO `ey_region` VALUES ('31311', '罗城县', '3', '31249', 'L');
INSERT INTO `ey_region` VALUES ('31323', '环江县', '3', '31249', 'H');
INSERT INTO `ey_region` VALUES ('31336', '巴马县', '3', '31249', 'B');
INSERT INTO `ey_region` VALUES ('31347', '都安县', '3', '31249', 'D');
INSERT INTO `ey_region` VALUES ('31367', '大化县', '3', '31249', 'D');
INSERT INTO `ey_region` VALUES ('31384', '宜州市', '3', '31249', 'Y');
INSERT INTO `ey_region` VALUES ('31401', '来宾市', '2', '30164', 'L');
INSERT INTO `ey_region` VALUES ('31402', '市辖区', '3', '31401', 'S');
INSERT INTO `ey_region` VALUES ('31403', '兴宾区', '3', '31401', 'X');
INSERT INTO `ey_region` VALUES ('31427', '忻城县', '3', '31401', 'X');
INSERT INTO `ey_region` VALUES ('31440', '象州县', '3', '31401', 'X');
INSERT INTO `ey_region` VALUES ('31452', '武宣县', '3', '31401', 'W');
INSERT INTO `ey_region` VALUES ('31463', '金秀县', '3', '31401', 'J');
INSERT INTO `ey_region` VALUES ('31474', '合山市', '3', '31401', 'H');
INSERT INTO `ey_region` VALUES ('31478', '崇左市', '2', '30164', 'C');
INSERT INTO `ey_region` VALUES ('31479', '市辖区', '3', '31478', 'S');
INSERT INTO `ey_region` VALUES ('31480', '江州区', '3', '31478', 'J');
INSERT INTO `ey_region` VALUES ('31490', '扶绥县', '3', '31478', 'F');
INSERT INTO `ey_region` VALUES ('31502', '宁明县', '3', '31478', 'N');
INSERT INTO `ey_region` VALUES ('31516', '龙州县', '3', '31478', 'L');
INSERT INTO `ey_region` VALUES ('31529', '大新县', '3', '31478', 'D');
INSERT INTO `ey_region` VALUES ('31544', '天等县', '3', '31478', 'T');
INSERT INTO `ey_region` VALUES ('31558', '凭祥市', '3', '31478', 'P');
INSERT INTO `ey_region` VALUES ('31563', '海南省', '1', '0', 'H');
INSERT INTO `ey_region` VALUES ('31564', '海口市', '2', '31563', 'H');
INSERT INTO `ey_region` VALUES ('31565', '市辖区', '3', '31564', 'S');
INSERT INTO `ey_region` VALUES ('31566', '秀英区', '3', '31564', 'X');
INSERT INTO `ey_region` VALUES ('31575', '龙华区', '3', '31564', 'L');
INSERT INTO `ey_region` VALUES ('31587', '琼山区', '3', '31564', 'Q');
INSERT INTO `ey_region` VALUES ('31601', '美兰区', '3', '31564', 'M');
INSERT INTO `ey_region` VALUES ('31618', '三亚市', '2', '31563', 'S');
INSERT INTO `ey_region` VALUES ('31619', '市辖区', '3', '31618', 'S');
INSERT INTO `ey_region` VALUES ('31634', '五指山市', '2', '31563', 'W');
INSERT INTO `ey_region` VALUES ('31635', '冲山镇', '3', '31634', 'C');
INSERT INTO `ey_region` VALUES ('31636', '南圣镇', '3', '31634', 'N');
INSERT INTO `ey_region` VALUES ('31637', '毛阳镇', '3', '31634', 'M');
INSERT INTO `ey_region` VALUES ('31638', '番阳镇', '3', '31634', 'F');
INSERT INTO `ey_region` VALUES ('31639', '畅好乡', '3', '31634', 'C');
INSERT INTO `ey_region` VALUES ('31640', '毛道乡', '3', '31634', 'M');
INSERT INTO `ey_region` VALUES ('31641', '水满乡', '3', '31634', 'S');
INSERT INTO `ey_region` VALUES ('31642', '国营畅好农场', '3', '31634', 'G');
INSERT INTO `ey_region` VALUES ('31643', '琼海市', '2', '31563', 'Q');
INSERT INTO `ey_region` VALUES ('31644', '嘉积镇', '3', '31643', 'J');
INSERT INTO `ey_region` VALUES ('31645', '万泉镇', '3', '31643', 'W');
INSERT INTO `ey_region` VALUES ('31646', '石壁镇', '3', '31643', 'S');
INSERT INTO `ey_region` VALUES ('31647', '中原镇', '3', '31643', 'Z');
INSERT INTO `ey_region` VALUES ('31648', '博敖镇', '3', '31643', 'B');
INSERT INTO `ey_region` VALUES ('31649', '阳江镇', '3', '31643', 'Y');
INSERT INTO `ey_region` VALUES ('31650', '龙江镇', '3', '31643', 'L');
INSERT INTO `ey_region` VALUES ('31651', '潭门镇', '3', '31643', 'T');
INSERT INTO `ey_region` VALUES ('31652', '塔洋镇', '3', '31643', 'T');
INSERT INTO `ey_region` VALUES ('31653', '长坡镇', '3', '31643', 'C');
INSERT INTO `ey_region` VALUES ('31654', '大路镇', '3', '31643', 'D');
INSERT INTO `ey_region` VALUES ('31655', '会山镇', '3', '31643', 'H');
INSERT INTO `ey_region` VALUES ('31656', '国营东太农场', '3', '31643', 'G');
INSERT INTO `ey_region` VALUES ('31657', '国营东平农场', '3', '31643', 'G');
INSERT INTO `ey_region` VALUES ('31658', '国营东红农场', '3', '31643', 'G');
INSERT INTO `ey_region` VALUES ('31659', '国营东升农场', '3', '31643', 'G');
INSERT INTO `ey_region` VALUES ('31660', '国营南俸农场', '3', '31643', 'G');
INSERT INTO `ey_region` VALUES ('31661', '彬村山华侨农场', '3', '31643', 'B');
INSERT INTO `ey_region` VALUES ('31662', '儋州市', '2', '31563', 'D');
INSERT INTO `ey_region` VALUES ('31663', '那大镇', '3', '31662', 'N');
INSERT INTO `ey_region` VALUES ('31664', '和庆镇', '3', '31662', 'H');
INSERT INTO `ey_region` VALUES ('31665', '南丰镇', '3', '31662', 'N');
INSERT INTO `ey_region` VALUES ('31666', '大成镇', '3', '31662', 'D');
INSERT INTO `ey_region` VALUES ('31667', '雅星镇', '3', '31662', 'Y');
INSERT INTO `ey_region` VALUES ('31668', '兰洋镇', '3', '31662', 'L');
INSERT INTO `ey_region` VALUES ('31669', '光村镇', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31670', '木棠镇', '3', '31662', 'M');
INSERT INTO `ey_region` VALUES ('31671', '海头镇', '3', '31662', 'H');
INSERT INTO `ey_region` VALUES ('31672', '峨蔓镇', '3', '31662', 'E');
INSERT INTO `ey_region` VALUES ('31673', '三都镇', '3', '31662', 'S');
INSERT INTO `ey_region` VALUES ('31674', '王五镇', '3', '31662', 'W');
INSERT INTO `ey_region` VALUES ('31675', '白马井镇', '3', '31662', 'B');
INSERT INTO `ey_region` VALUES ('31676', '中和镇', '3', '31662', 'Z');
INSERT INTO `ey_region` VALUES ('31677', '排浦镇', '3', '31662', 'P');
INSERT INTO `ey_region` VALUES ('31678', '东成镇', '3', '31662', 'D');
INSERT INTO `ey_region` VALUES ('31679', '新州镇', '3', '31662', 'X');
INSERT INTO `ey_region` VALUES ('31680', '国营西培农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31681', '国营西华农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31682', '国营西庆农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31683', '国营西流农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31684', '国营西联农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31685', '国营蓝洋农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31686', '国营新盈农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31687', '国营八一农场东山分场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31688', '国营八一农场金川分场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31689', '国营八一农场长岭分场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31690', '国营八一农场英岛分场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31691', '国营八一农场春江分场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31692', '国营八一农场强打管区', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31693', '国营龙山农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31694', '国营红岭农场', '3', '31662', 'G');
INSERT INTO `ey_region` VALUES ('31695', '洋浦经济开发区', '3', '31662', 'Y');
INSERT INTO `ey_region` VALUES ('31696', '华南热作学院', '3', '31662', 'H');
INSERT INTO `ey_region` VALUES ('31697', '文昌市', '2', '31563', 'W');
INSERT INTO `ey_region` VALUES ('31698', '文城镇', '3', '31697', 'W');
INSERT INTO `ey_region` VALUES ('31699', '重兴镇', '3', '31697', 'Z');
INSERT INTO `ey_region` VALUES ('31700', '蓬莱镇', '3', '31697', 'P');
INSERT INTO `ey_region` VALUES ('31701', '会文镇', '3', '31697', 'H');
INSERT INTO `ey_region` VALUES ('31702', '东路镇', '3', '31697', 'D');
INSERT INTO `ey_region` VALUES ('31703', '潭牛镇', '3', '31697', 'T');
INSERT INTO `ey_region` VALUES ('31704', '东阁镇', '3', '31697', 'D');
INSERT INTO `ey_region` VALUES ('31705', '文教镇', '3', '31697', 'W');
INSERT INTO `ey_region` VALUES ('31706', '东郊镇', '3', '31697', 'D');
INSERT INTO `ey_region` VALUES ('31707', '龙楼镇', '3', '31697', 'L');
INSERT INTO `ey_region` VALUES ('31708', '昌洒镇', '3', '31697', 'C');
INSERT INTO `ey_region` VALUES ('31709', '翁田镇', '3', '31697', 'W');
INSERT INTO `ey_region` VALUES ('31710', '抱罗镇', '3', '31697', 'B');
INSERT INTO `ey_region` VALUES ('31711', '冯坡镇', '3', '31697', 'F');
INSERT INTO `ey_region` VALUES ('31712', '锦山镇', '3', '31697', 'J');
INSERT INTO `ey_region` VALUES ('31713', '铺前镇', '3', '31697', 'P');
INSERT INTO `ey_region` VALUES ('31714', '国营东路农场', '3', '31697', 'G');
INSERT INTO `ey_region` VALUES ('31715', '国营南阳农场', '3', '31697', 'G');
INSERT INTO `ey_region` VALUES ('31716', '国营罗豆农场', '3', '31697', 'G');
INSERT INTO `ey_region` VALUES ('31717', '国营文昌橡胶研究所', '3', '31697', 'G');
INSERT INTO `ey_region` VALUES ('31718', '万宁市', '2', '31563', 'W');
INSERT INTO `ey_region` VALUES ('31719', '万城镇', '3', '31718', 'W');
INSERT INTO `ey_region` VALUES ('31720', '龙滚镇', '3', '31718', 'L');
INSERT INTO `ey_region` VALUES ('31721', '和乐镇', '3', '31718', 'H');
INSERT INTO `ey_region` VALUES ('31722', '后安镇', '3', '31718', 'H');
INSERT INTO `ey_region` VALUES ('31723', '大茂镇', '3', '31718', 'D');
INSERT INTO `ey_region` VALUES ('31724', '东澳镇', '3', '31718', 'D');
INSERT INTO `ey_region` VALUES ('31725', '礼纪镇', '3', '31718', 'L');
INSERT INTO `ey_region` VALUES ('31726', '长丰镇', '3', '31718', 'C');
INSERT INTO `ey_region` VALUES ('31727', '山根镇', '3', '31718', 'S');
INSERT INTO `ey_region` VALUES ('31728', '北大镇', '3', '31718', 'B');
INSERT INTO `ey_region` VALUES ('31729', '南桥镇', '3', '31718', 'N');
INSERT INTO `ey_region` VALUES ('31730', '三更罗镇', '3', '31718', 'S');
INSERT INTO `ey_region` VALUES ('31731', '国营东兴农场', '3', '31718', 'G');
INSERT INTO `ey_region` VALUES ('31732', '国营东和农场', '3', '31718', 'G');
INSERT INTO `ey_region` VALUES ('31733', '国营东岭农场', '3', '31718', 'G');
INSERT INTO `ey_region` VALUES ('31734', '国营南林农场', '3', '31718', 'G');
INSERT INTO `ey_region` VALUES ('31735', '国营新中农场', '3', '31718', 'G');
INSERT INTO `ey_region` VALUES ('31736', '兴隆华侨农场', '3', '31718', 'X');
INSERT INTO `ey_region` VALUES ('31737', '地方国营六连林场', '3', '31718', 'D');
INSERT INTO `ey_region` VALUES ('31738', '东方市', '2', '31563', 'D');
INSERT INTO `ey_region` VALUES ('31739', '八所镇', '3', '31738', 'B');
INSERT INTO `ey_region` VALUES ('31740', '东河镇', '3', '31738', 'D');
INSERT INTO `ey_region` VALUES ('31741', '大田镇', '3', '31738', 'D');
INSERT INTO `ey_region` VALUES ('31742', '感城镇', '3', '31738', 'G');
INSERT INTO `ey_region` VALUES ('31743', '板桥镇', '3', '31738', 'B');
INSERT INTO `ey_region` VALUES ('31744', '三家镇', '3', '31738', 'S');
INSERT INTO `ey_region` VALUES ('31745', '四更镇', '3', '31738', 'S');
INSERT INTO `ey_region` VALUES ('31746', '新龙镇', '3', '31738', 'X');
INSERT INTO `ey_region` VALUES ('31747', '天安乡', '3', '31738', 'T');
INSERT INTO `ey_region` VALUES ('31748', '江边乡', '3', '31738', 'J');
INSERT INTO `ey_region` VALUES ('31749', '国营广坝农场', '3', '31738', 'G');
INSERT INTO `ey_region` VALUES ('31750', '国营公爱农场', '3', '31738', 'G');
INSERT INTO `ey_region` VALUES ('31751', '国营红泉农场', '3', '31738', 'G');
INSERT INTO `ey_region` VALUES ('31752', '省国营东方华侨农场', '3', '31738', 'S');
INSERT INTO `ey_region` VALUES ('31753', '定安县', '2', '31563', 'D');
INSERT INTO `ey_region` VALUES ('31754', '定城镇', '3', '31753', 'D');
INSERT INTO `ey_region` VALUES ('31755', '新竹镇', '3', '31753', 'X');
INSERT INTO `ey_region` VALUES ('31756', '龙湖镇', '3', '31753', 'L');
INSERT INTO `ey_region` VALUES ('31757', '黄竹镇', '3', '31753', 'H');
INSERT INTO `ey_region` VALUES ('31758', '雷鸣镇', '3', '31753', 'L');
INSERT INTO `ey_region` VALUES ('31759', '龙门镇', '3', '31753', 'L');
INSERT INTO `ey_region` VALUES ('31760', '龙河镇', '3', '31753', 'L');
INSERT INTO `ey_region` VALUES ('31761', '岭口镇', '3', '31753', 'L');
INSERT INTO `ey_region` VALUES ('31762', '翰林镇', '3', '31753', 'H');
INSERT INTO `ey_region` VALUES ('31763', '富文镇', '3', '31753', 'F');
INSERT INTO `ey_region` VALUES ('31764', '国营中瑞农场', '3', '31753', 'G');
INSERT INTO `ey_region` VALUES ('31765', '国营南海农场', '3', '31753', 'G');
INSERT INTO `ey_region` VALUES ('31766', '国营金鸡岭农场', '3', '31753', 'G');
INSERT INTO `ey_region` VALUES ('31767', '定安热作研究所', '3', '31753', 'D');
INSERT INTO `ey_region` VALUES ('31768', '屯昌县', '2', '31563', 'T');
INSERT INTO `ey_region` VALUES ('31769', '屯城镇', '3', '31768', 'T');
INSERT INTO `ey_region` VALUES ('31770', '新兴镇', '3', '31768', 'X');
INSERT INTO `ey_region` VALUES ('31771', '枫木镇', '3', '31768', 'F');
INSERT INTO `ey_region` VALUES ('31772', '乌坡镇', '3', '31768', 'W');
INSERT INTO `ey_region` VALUES ('31773', '南吕镇', '3', '31768', 'N');
INSERT INTO `ey_region` VALUES ('31774', '南坤镇', '3', '31768', 'N');
INSERT INTO `ey_region` VALUES ('31775', '坡心镇', '3', '31768', 'P');
INSERT INTO `ey_region` VALUES ('31776', '西昌镇', '3', '31768', 'X');
INSERT INTO `ey_region` VALUES ('31777', '国营中建农场', '3', '31768', 'G');
INSERT INTO `ey_region` VALUES ('31778', '国营中坤农场', '3', '31768', 'G');
INSERT INTO `ey_region` VALUES ('31779', '国营黄岭农场', '3', '31768', 'G');
INSERT INTO `ey_region` VALUES ('31780', '国营南吕农场', '3', '31768', 'G');
INSERT INTO `ey_region` VALUES ('31781', '国营广青农场', '3', '31768', 'G');
INSERT INTO `ey_region` VALUES ('31782', '国营晨星农场', '3', '31768', 'G');
INSERT INTO `ey_region` VALUES ('31783', '澄迈县', '2', '31563', 'C');
INSERT INTO `ey_region` VALUES ('31784', '金江镇', '3', '31783', 'J');
INSERT INTO `ey_region` VALUES ('31785', '老城镇', '3', '31783', 'L');
INSERT INTO `ey_region` VALUES ('31786', '瑞溪镇', '3', '31783', 'R');
INSERT INTO `ey_region` VALUES ('31787', '永发镇', '3', '31783', 'Y');
INSERT INTO `ey_region` VALUES ('31788', '加乐镇', '3', '31783', 'J');
INSERT INTO `ey_region` VALUES ('31789', '文儒镇', '3', '31783', 'W');
INSERT INTO `ey_region` VALUES ('31790', '中兴镇', '3', '31783', 'Z');
INSERT INTO `ey_region` VALUES ('31791', '仁兴镇', '3', '31783', 'R');
INSERT INTO `ey_region` VALUES ('31792', '福山镇', '3', '31783', 'F');
INSERT INTO `ey_region` VALUES ('31793', '桥头镇', '3', '31783', 'Q');
INSERT INTO `ey_region` VALUES ('31794', '国营红光农场', '3', '31783', 'G');
INSERT INTO `ey_region` VALUES ('31795', '国营红岗农场', '3', '31783', 'G');
INSERT INTO `ey_region` VALUES ('31796', '国营西达农场', '3', '31783', 'G');
INSERT INTO `ey_region` VALUES ('31797', '国营昆仑农场', '3', '31783', 'G');
INSERT INTO `ey_region` VALUES ('31798', '国营和岭农场', '3', '31783', 'G');
INSERT INTO `ey_region` VALUES ('31799', '国营金安农场', '3', '31783', 'G');
INSERT INTO `ey_region` VALUES ('31800', '澄迈县华侨农场', '3', '31783', 'C');
INSERT INTO `ey_region` VALUES ('31801', '临高县', '2', '31563', 'L');
INSERT INTO `ey_region` VALUES ('31802', '临城镇', '3', '31801', 'L');
INSERT INTO `ey_region` VALUES ('31803', '波莲镇', '3', '31801', 'B');
INSERT INTO `ey_region` VALUES ('31804', '东英镇', '3', '31801', 'D');
INSERT INTO `ey_region` VALUES ('31805', '博厚镇', '3', '31801', 'B');
INSERT INTO `ey_region` VALUES ('31806', '皇桐镇', '3', '31801', 'H');
INSERT INTO `ey_region` VALUES ('31807', '多文镇', '3', '31801', 'D');
INSERT INTO `ey_region` VALUES ('31808', '和舍镇', '3', '31801', 'H');
INSERT INTO `ey_region` VALUES ('31809', '南宝镇', '3', '31801', 'N');
INSERT INTO `ey_region` VALUES ('31810', '新盈镇', '3', '31801', 'X');
INSERT INTO `ey_region` VALUES ('31811', '调楼镇', '3', '31801', 'D');
INSERT INTO `ey_region` VALUES ('31812', '国营红华农场', '3', '31801', 'G');
INSERT INTO `ey_region` VALUES ('31813', '国营加来农场', '3', '31801', 'G');
INSERT INTO `ey_region` VALUES ('31814', '白沙县', '2', '31563', 'B');
INSERT INTO `ey_region` VALUES ('31815', '牙叉镇', '3', '31814', 'Y');
INSERT INTO `ey_region` VALUES ('31816', '七坊镇', '3', '31814', 'Q');
INSERT INTO `ey_region` VALUES ('31817', '邦溪镇', '3', '31814', 'B');
INSERT INTO `ey_region` VALUES ('31818', '打安镇', '3', '31814', 'D');
INSERT INTO `ey_region` VALUES ('31819', '细水乡', '3', '31814', 'X');
INSERT INTO `ey_region` VALUES ('31820', '元门乡', '3', '31814', 'Y');
INSERT INTO `ey_region` VALUES ('31821', '南开乡', '3', '31814', 'N');
INSERT INTO `ey_region` VALUES ('31822', '阜龙乡', '3', '31814', 'F');
INSERT INTO `ey_region` VALUES ('31823', '青松乡', '3', '31814', 'Q');
INSERT INTO `ey_region` VALUES ('31824', '金波乡', '3', '31814', 'J');
INSERT INTO `ey_region` VALUES ('31825', '荣邦乡', '3', '31814', 'R');
INSERT INTO `ey_region` VALUES ('31826', '国营金波农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31827', '国营白沙农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31828', '国营牙叉农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31829', '国营卫星农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31830', '国营龙江农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31831', '国营珠碧江农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31832', '国营芙蓉田农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31833', '国营大岭农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31834', '国营邦溪农场', '3', '31814', 'G');
INSERT INTO `ey_region` VALUES ('31835', '昌江县', '2', '31563', 'C');
INSERT INTO `ey_region` VALUES ('31836', '石碌镇', '3', '31835', 'S');
INSERT INTO `ey_region` VALUES ('31837', '叉河镇', '3', '31835', 'C');
INSERT INTO `ey_region` VALUES ('31838', '十月田镇', '3', '31835', 'S');
INSERT INTO `ey_region` VALUES ('31839', '乌烈镇', '3', '31835', 'W');
INSERT INTO `ey_region` VALUES ('31840', '昌化镇', '3', '31835', 'C');
INSERT INTO `ey_region` VALUES ('31841', '海尾镇', '3', '31835', 'H');
INSERT INTO `ey_region` VALUES ('31842', '七叉镇', '3', '31835', 'Q');
INSERT INTO `ey_region` VALUES ('31843', '王下乡', '3', '31835', 'W');
INSERT INTO `ey_region` VALUES ('31844', '国营红田农场', '3', '31835', 'G');
INSERT INTO `ey_region` VALUES ('31845', '国营红林农场', '3', '31835', 'G');
INSERT INTO `ey_region` VALUES ('31846', '国营坝王岭林场', '3', '31835', 'G');
INSERT INTO `ey_region` VALUES ('31847', '海南钢铁公司', '3', '31835', 'H');
INSERT INTO `ey_region` VALUES ('31848', '乐东县', '2', '31563', 'L');
INSERT INTO `ey_region` VALUES ('31849', '抱由镇', '3', '31848', 'B');
INSERT INTO `ey_region` VALUES ('31850', '万冲镇', '3', '31848', 'W');
INSERT INTO `ey_region` VALUES ('31851', '大安镇', '3', '31848', 'D');
INSERT INTO `ey_region` VALUES ('31852', '志仲镇', '3', '31848', 'Z');
INSERT INTO `ey_region` VALUES ('31853', '千家镇', '3', '31848', 'Q');
INSERT INTO `ey_region` VALUES ('31854', '九所镇', '3', '31848', 'J');
INSERT INTO `ey_region` VALUES ('31855', '利国镇', '3', '31848', 'L');
INSERT INTO `ey_region` VALUES ('31856', '黄流镇', '3', '31848', 'H');
INSERT INTO `ey_region` VALUES ('31857', '佛罗镇', '3', '31848', 'F');
INSERT INTO `ey_region` VALUES ('31858', '尖峰镇', '3', '31848', 'J');
INSERT INTO `ey_region` VALUES ('31859', '莺歌海镇', '3', '31848', 'Y');
INSERT INTO `ey_region` VALUES ('31860', '国营乐中农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31861', '国营山荣农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31862', '国营乐光农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31863', '国营报伦农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31864', '国营福报农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31865', '国营保国农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31866', '国营保显农场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31867', '国营尖峰岭林业公司', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31868', '国营莺歌海盐场', '3', '31848', 'G');
INSERT INTO `ey_region` VALUES ('31869', '陵水县', '2', '31563', 'L');
INSERT INTO `ey_region` VALUES ('31870', '椰林镇', '3', '31869', 'Y');
INSERT INTO `ey_region` VALUES ('31871', '光坡镇', '3', '31869', 'G');
INSERT INTO `ey_region` VALUES ('31872', '三才镇', '3', '31869', 'S');
INSERT INTO `ey_region` VALUES ('31873', '英州镇', '3', '31869', 'Y');
INSERT INTO `ey_region` VALUES ('31874', '隆广镇', '3', '31869', 'L');
INSERT INTO `ey_region` VALUES ('31875', '文罗镇', '3', '31869', 'W');
INSERT INTO `ey_region` VALUES ('31876', '本号镇', '3', '31869', 'B');
INSERT INTO `ey_region` VALUES ('31877', '新村镇', '3', '31869', 'X');
INSERT INTO `ey_region` VALUES ('31878', '黎安镇', '3', '31869', 'L');
INSERT INTO `ey_region` VALUES ('31879', '提蒙乡', '3', '31869', 'T');
INSERT INTO `ey_region` VALUES ('31880', '群英乡', '3', '31869', 'Q');
INSERT INTO `ey_region` VALUES ('31881', '国营岭门农场', '3', '31869', 'G');
INSERT INTO `ey_region` VALUES ('31882', '国营南平农场', '3', '31869', 'G');
INSERT INTO `ey_region` VALUES ('31883', '国营吊罗山林业公司', '3', '31869', 'G');
INSERT INTO `ey_region` VALUES ('31884', '保亭县', '2', '31563', 'B');
INSERT INTO `ey_region` VALUES ('31885', '保城镇', '3', '31884', 'B');
INSERT INTO `ey_region` VALUES ('31886', '什玲镇', '3', '31884', 'S');
INSERT INTO `ey_region` VALUES ('31887', '加茂镇', '3', '31884', 'J');
INSERT INTO `ey_region` VALUES ('31888', '响水镇', '3', '31884', 'X');
INSERT INTO `ey_region` VALUES ('31889', '新政镇', '3', '31884', 'X');
INSERT INTO `ey_region` VALUES ('31890', '三道镇', '3', '31884', 'S');
INSERT INTO `ey_region` VALUES ('31891', '六弓乡', '3', '31884', 'L');
INSERT INTO `ey_region` VALUES ('31892', '南林乡', '3', '31884', 'N');
INSERT INTO `ey_region` VALUES ('31893', '毛感乡', '3', '31884', 'M');
INSERT INTO `ey_region` VALUES ('31894', '国营五指山茶场', '3', '31884', 'G');
INSERT INTO `ey_region` VALUES ('31895', '国营新星农场', '3', '31884', 'G');
INSERT INTO `ey_region` VALUES ('31896', '国营保亭热作所', '3', '31884', 'G');
INSERT INTO `ey_region` VALUES ('31897', '国营金江农场', '3', '31884', 'G');
INSERT INTO `ey_region` VALUES ('31898', '国营南茂农场', '3', '31884', 'G');
INSERT INTO `ey_region` VALUES ('31899', '国营三道农场', '3', '31884', 'G');
INSERT INTO `ey_region` VALUES ('31900', '琼中县', '2', '31563', 'Q');
INSERT INTO `ey_region` VALUES ('31901', '营根镇', '3', '31900', 'Y');
INSERT INTO `ey_region` VALUES ('31902', '湾岭镇', '3', '31900', 'W');
INSERT INTO `ey_region` VALUES ('31903', '黎母山镇', '3', '31900', 'L');
INSERT INTO `ey_region` VALUES ('31904', '和平镇', '3', '31900', 'H');
INSERT INTO `ey_region` VALUES ('31905', '长征镇', '3', '31900', 'C');
INSERT INTO `ey_region` VALUES ('31906', '红毛镇', '3', '31900', 'H');
INSERT INTO `ey_region` VALUES ('31907', '中平镇', '3', '31900', 'Z');
INSERT INTO `ey_region` VALUES ('31908', '吊罗山乡', '3', '31900', 'D');
INSERT INTO `ey_region` VALUES ('31909', '上安乡', '3', '31900', 'S');
INSERT INTO `ey_region` VALUES ('31910', '什运乡', '3', '31900', 'S');
INSERT INTO `ey_region` VALUES ('31911', '国营新进农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31912', '国营大丰农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31913', '国营阳江农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31914', '国营乌石农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31915', '国营南方农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31916', '国营岭头农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31917', '国营加钗农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31918', '国营长征农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31919', '国营乘坡农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31920', '国营太平农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31921', '国营新伟农场', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31922', '国营黎母山林业公司', '3', '31900', 'G');
INSERT INTO `ey_region` VALUES ('31923', '西沙群岛', '3', '31924', 'X');
INSERT INTO `ey_region` VALUES ('31924', '三沙市', '2', '31563', 'S');
INSERT INTO `ey_region` VALUES ('31925', '南沙群岛', '3', '31924', 'N');
INSERT INTO `ey_region` VALUES ('47499', '香港岛', '2', '47494', 'X');
INSERT INTO `ey_region` VALUES ('31927', '中沙群岛的岛礁及其海域', '3', '31924', 'Z');
INSERT INTO `ey_region` VALUES ('47498', '九龙', '2', '47494', 'J');
INSERT INTO `ey_region` VALUES ('31929', '重庆市', '1', '0', 'Z');
INSERT INTO `ey_region` VALUES ('31930', '重庆市', '2', '31929', 'C');
INSERT INTO `ey_region` VALUES ('31931', '万州区', '3', '31930', 'W');
INSERT INTO `ey_region` VALUES ('31984', '涪陵区', '3', '31930', 'F');
INSERT INTO `ey_region` VALUES ('32031', '渝中区', '3', '31930', 'Y');
INSERT INTO `ey_region` VALUES ('32044', '大渡口区', '3', '31930', 'D');
INSERT INTO `ey_region` VALUES ('32053', '江北区', '3', '31930', 'J');
INSERT INTO `ey_region` VALUES ('32066', '沙坪坝区', '3', '31930', 'S');
INSERT INTO `ey_region` VALUES ('32093', '九龙坡区', '3', '31930', 'J');
INSERT INTO `ey_region` VALUES ('32112', '南岸区', '3', '31930', 'N');
INSERT INTO `ey_region` VALUES ('32127', '北碚区', '3', '31930', 'B');
INSERT INTO `ey_region` VALUES ('32145', '万盛区', '3', '31930', 'W');
INSERT INTO `ey_region` VALUES ('32156', '双桥区', '3', '31930', 'S');
INSERT INTO `ey_region` VALUES ('32160', '渝北区', '3', '31930', 'Y');
INSERT INTO `ey_region` VALUES ('32191', '巴南区', '3', '31930', 'B');
INSERT INTO `ey_region` VALUES ('32213', '黔江区', '3', '31930', 'Q');
INSERT INTO `ey_region` VALUES ('32244', '长寿区', '3', '31930', 'C');
INSERT INTO `ey_region` VALUES ('32263', '江津区', '3', '31930', 'J');
INSERT INTO `ey_region` VALUES ('32291', '合川区', '3', '31930', 'H');
INSERT INTO `ey_region` VALUES ('32322', '永川区', '3', '31930', 'Y');
INSERT INTO `ey_region` VALUES ('32345', '南川区', '3', '31930', 'N');
INSERT INTO `ey_region` VALUES ('32380', '县', '2', '31929', 'X');
INSERT INTO `ey_region` VALUES ('32381', '綦江县', '3', '32380', 'Q');
INSERT INTO `ey_region` VALUES ('32401', '潼南县', '3', '32380', 'T');
INSERT INTO `ey_region` VALUES ('32424', '铜梁县', '3', '32380', 'T');
INSERT INTO `ey_region` VALUES ('32453', '大足县', '3', '32380', 'D');
INSERT INTO `ey_region` VALUES ('32478', '荣昌县', '3', '32380', 'R');
INSERT INTO `ey_region` VALUES ('32499', '璧山县', '3', '32380', 'B');
INSERT INTO `ey_region` VALUES ('32513', '梁平县', '3', '32380', 'L');
INSERT INTO `ey_region` VALUES ('32549', '城口县', '3', '32380', 'C');
INSERT INTO `ey_region` VALUES ('32574', '丰都县', '3', '32380', 'F');
INSERT INTO `ey_region` VALUES ('32606', '垫江县', '3', '32380', 'D');
INSERT INTO `ey_region` VALUES ('32632', '武隆县', '3', '32380', 'W');
INSERT INTO `ey_region` VALUES ('32659', '忠县', '3', '32380', 'Z');
INSERT INTO `ey_region` VALUES ('32688', '开县', '3', '32380', 'K');
INSERT INTO `ey_region` VALUES ('32727', '云阳县', '3', '32380', 'Y');
INSERT INTO `ey_region` VALUES ('32771', '奉节县', '3', '32380', 'F');
INSERT INTO `ey_region` VALUES ('32802', '巫山县', '3', '32380', 'W');
INSERT INTO `ey_region` VALUES ('32829', '巫溪县', '3', '32380', 'W');
INSERT INTO `ey_region` VALUES ('32861', '石柱县', '3', '32380', 'S');
INSERT INTO `ey_region` VALUES ('32894', '秀山县', '3', '32380', 'X');
INSERT INTO `ey_region` VALUES ('32927', '酉阳县', '3', '32380', 'Y');
INSERT INTO `ey_region` VALUES ('32967', '彭水县', '3', '32380', 'P');
INSERT INTO `ey_region` VALUES ('33007', '四川省', '1', '0', 'S');
INSERT INTO `ey_region` VALUES ('33008', '成都市', '2', '33007', 'C');
INSERT INTO `ey_region` VALUES ('33009', '市辖区', '3', '33008', 'S');
INSERT INTO `ey_region` VALUES ('33010', '锦江区', '3', '33008', 'J');
INSERT INTO `ey_region` VALUES ('33027', '青羊区', '3', '33008', 'Q');
INSERT INTO `ey_region` VALUES ('33042', '金牛区', '3', '33008', 'J');
INSERT INTO `ey_region` VALUES ('33058', '武侯区', '3', '33008', 'W');
INSERT INTO `ey_region` VALUES ('33076', '成华区', '3', '33008', 'C');
INSERT INTO `ey_region` VALUES ('33091', '龙泉驿区', '3', '33008', 'L');
INSERT INTO `ey_region` VALUES ('33104', '青白江区', '3', '33008', 'Q');
INSERT INTO `ey_region` VALUES ('33116', '新都区', '3', '33008', 'X');
INSERT INTO `ey_region` VALUES ('33130', '温江区', '3', '33008', 'W');
INSERT INTO `ey_region` VALUES ('33141', '金堂县', '3', '33008', 'J');
INSERT INTO `ey_region` VALUES ('33163', '双流县', '3', '33008', 'S');
INSERT INTO `ey_region` VALUES ('33189', '郫县', '3', '33008', 'P');
INSERT INTO `ey_region` VALUES ('33205', '大邑县', '3', '33008', 'D');
INSERT INTO `ey_region` VALUES ('33226', '蒲江县', '3', '33008', 'P');
INSERT INTO `ey_region` VALUES ('33239', '新津县', '3', '33008', 'X');
INSERT INTO `ey_region` VALUES ('33252', '都江堰市', '3', '33008', 'D');
INSERT INTO `ey_region` VALUES ('33272', '彭州市', '3', '33008', 'P');
INSERT INTO `ey_region` VALUES ('33293', '邛崃市', '3', '33008', 'Q');
INSERT INTO `ey_region` VALUES ('33318', '崇州市', '3', '33008', 'C');
INSERT INTO `ey_region` VALUES ('33344', '自贡市', '2', '33007', 'Z');
INSERT INTO `ey_region` VALUES ('33345', '市辖区', '3', '33344', 'S');
INSERT INTO `ey_region` VALUES ('33346', '自流井区', '3', '33344', 'Z');
INSERT INTO `ey_region` VALUES ('33360', '贡井区', '3', '33344', 'G');
INSERT INTO `ey_region` VALUES ('33374', '大安区', '3', '33344', 'D');
INSERT INTO `ey_region` VALUES ('33391', '沿滩区', '3', '33344', 'Y');
INSERT INTO `ey_region` VALUES ('33405', '荣县', '3', '33344', 'R');
INSERT INTO `ey_region` VALUES ('33433', '富顺县', '3', '33344', 'F');
INSERT INTO `ey_region` VALUES ('33460', '攀枝花市', '2', '33007', 'P');
INSERT INTO `ey_region` VALUES ('33461', '市辖区', '3', '33460', 'S');
INSERT INTO `ey_region` VALUES ('33462', '攀枝花东区', '3', '33460', 'P');
INSERT INTO `ey_region` VALUES ('33473', '西区', '3', '33460', 'X');
INSERT INTO `ey_region` VALUES ('33481', '仁和区', '3', '33460', 'R');
INSERT INTO `ey_region` VALUES ('33497', '米易县', '3', '33460', 'M');
INSERT INTO `ey_region` VALUES ('33511', '盐边县', '3', '33460', 'Y');
INSERT INTO `ey_region` VALUES ('33528', '泸州市', '2', '33007', 'L');
INSERT INTO `ey_region` VALUES ('33529', '市辖区', '3', '33528', 'S');
INSERT INTO `ey_region` VALUES ('33530', '江阳区', '3', '33528', 'J');
INSERT INTO `ey_region` VALUES ('33548', '纳溪区', '3', '33528', 'N');
INSERT INTO `ey_region` VALUES ('33563', '龙马潭区', '3', '33528', 'L');
INSERT INTO `ey_region` VALUES ('33577', '泸县', '3', '33528', 'L');
INSERT INTO `ey_region` VALUES ('33597', '合江县', '3', '33528', 'H');
INSERT INTO `ey_region` VALUES ('33625', '叙永县', '3', '33528', 'X');
INSERT INTO `ey_region` VALUES ('33654', '古蔺县', '3', '33528', 'G');
INSERT INTO `ey_region` VALUES ('33681', '德阳市', '2', '33007', 'D');
INSERT INTO `ey_region` VALUES ('33682', '市辖区', '3', '33681', 'S');
INSERT INTO `ey_region` VALUES ('33683', '旌阳区', '3', '33681', 'J');
INSERT INTO `ey_region` VALUES ('33701', '中江县', '3', '33681', 'Z');
INSERT INTO `ey_region` VALUES ('33747', '罗江县', '3', '33681', 'L');
INSERT INTO `ey_region` VALUES ('33758', '广汉市', '3', '33681', 'G');
INSERT INTO `ey_region` VALUES ('33778', '什邡市', '3', '33681', 'S');
INSERT INTO `ey_region` VALUES ('33795', '绵竹市', '3', '33681', 'M');
INSERT INTO `ey_region` VALUES ('33817', '绵阳市', '2', '33007', 'M');
INSERT INTO `ey_region` VALUES ('33818', '市辖区', '3', '33817', 'S');
INSERT INTO `ey_region` VALUES ('33819', '涪城区', '3', '33817', 'F');
INSERT INTO `ey_region` VALUES ('33844', '游仙区', '3', '33817', 'Y');
INSERT INTO `ey_region` VALUES ('33873', '三台县', '3', '33817', 'S');
INSERT INTO `ey_region` VALUES ('33937', '盐亭县', '3', '33817', 'Y');
INSERT INTO `ey_region` VALUES ('33974', '安县', '3', '33817', 'A');
INSERT INTO `ey_region` VALUES ('33995', '梓潼县', '3', '33817', 'Z');
INSERT INTO `ey_region` VALUES ('34028', '北川县', '3', '33817', 'B');
INSERT INTO `ey_region` VALUES ('34049', '平武县', '3', '33817', 'P');
INSERT INTO `ey_region` VALUES ('34075', '江油市', '3', '33817', 'J');
INSERT INTO `ey_region` VALUES ('34120', '广元市', '2', '33007', 'G');
INSERT INTO `ey_region` VALUES ('34121', '市辖区', '3', '34120', 'S');
INSERT INTO `ey_region` VALUES ('34122', '市中区', '3', '34120', 'S');
INSERT INTO `ey_region` VALUES ('34143', '元坝区', '3', '34120', 'Y');
INSERT INTO `ey_region` VALUES ('34173', '朝天区', '3', '34120', 'C');
INSERT INTO `ey_region` VALUES ('34199', '旺苍县', '3', '34120', 'W');
INSERT INTO `ey_region` VALUES ('34238', '青川县', '3', '34120', 'Q');
INSERT INTO `ey_region` VALUES ('34276', '剑阁县', '3', '34120', 'J');
INSERT INTO `ey_region` VALUES ('34334', '苍溪县', '3', '34120', 'C');
INSERT INTO `ey_region` VALUES ('34376', '遂宁市', '2', '33007', 'S');
INSERT INTO `ey_region` VALUES ('34377', '市辖区', '3', '34376', 'S');
INSERT INTO `ey_region` VALUES ('34378', '船山区', '3', '34376', 'C');
INSERT INTO `ey_region` VALUES ('34404', '安居区', '3', '34376', 'A');
INSERT INTO `ey_region` VALUES ('34426', '蓬溪县', '3', '34376', 'P');
INSERT INTO `ey_region` VALUES ('34458', '射洪县', '3', '34376', 'S');
INSERT INTO `ey_region` VALUES ('34489', '大英县', '3', '34376', 'D');
INSERT INTO `ey_region` VALUES ('34501', '内江市', '2', '33007', 'N');
INSERT INTO `ey_region` VALUES ('34502', '市辖区', '3', '34501', 'S');
INSERT INTO `ey_region` VALUES ('34503', '市中区', '3', '34501', 'S');
INSERT INTO `ey_region` VALUES ('34524', '东兴区', '3', '34501', 'D');
INSERT INTO `ey_region` VALUES ('34554', '威远县', '3', '34501', 'W');
INSERT INTO `ey_region` VALUES ('34575', '资中县', '3', '34501', 'Z');
INSERT INTO `ey_region` VALUES ('34609', '隆昌县', '3', '34501', 'L');
INSERT INTO `ey_region` VALUES ('34628', '乐山市', '2', '33007', 'L');
INSERT INTO `ey_region` VALUES ('34629', '市辖区', '3', '34628', 'S');
INSERT INTO `ey_region` VALUES ('34630', '市中区', '3', '34628', 'S');
INSERT INTO `ey_region` VALUES ('34661', '沙湾区', '3', '34628', 'S');
INSERT INTO `ey_region` VALUES ('34676', '五通桥区', '3', '34628', 'W');
INSERT INTO `ey_region` VALUES ('34689', '金口河区', '3', '34628', 'J');
INSERT INTO `ey_region` VALUES ('34696', '犍为县', '3', '34628', 'Q');
INSERT INTO `ey_region` VALUES ('34727', '井研县', '3', '34628', 'J');
INSERT INTO `ey_region` VALUES ('34755', '夹江县', '3', '34628', 'J');
INSERT INTO `ey_region` VALUES ('34778', '沐川县', '3', '34628', 'M');
INSERT INTO `ey_region` VALUES ('34799', '峨边县', '3', '34628', 'E');
INSERT INTO `ey_region` VALUES ('34819', '马边县', '3', '34628', 'M');
INSERT INTO `ey_region` VALUES ('34840', '峨眉山市', '3', '34628', 'E');
INSERT INTO `ey_region` VALUES ('34859', '南充市', '2', '33007', 'N');
INSERT INTO `ey_region` VALUES ('34860', '市辖区', '3', '34859', 'S');
INSERT INTO `ey_region` VALUES ('34861', '顺庆区', '3', '34859', 'S');
INSERT INTO `ey_region` VALUES ('34890', '高坪区', '3', '34859', 'G');
INSERT INTO `ey_region` VALUES ('34923', '嘉陵区', '3', '34859', 'J');
INSERT INTO `ey_region` VALUES ('34967', '南部县', '3', '34859', 'N');
INSERT INTO `ey_region` VALUES ('35040', '营山县', '3', '34859', 'Y');
INSERT INTO `ey_region` VALUES ('35094', '蓬安县', '3', '34859', 'P');
INSERT INTO `ey_region` VALUES ('35134', '仪陇县', '3', '34859', 'Y');
INSERT INTO `ey_region` VALUES ('35193', '西充县', '3', '34859', 'X');
INSERT INTO `ey_region` VALUES ('35238', '阆中市', '3', '34859', 'L');
INSERT INTO `ey_region` VALUES ('35288', '眉山市', '2', '33007', 'M');
INSERT INTO `ey_region` VALUES ('35289', '市辖区', '3', '35288', 'S');
INSERT INTO `ey_region` VALUES ('35290', '东坡区', '3', '35288', 'D');
INSERT INTO `ey_region` VALUES ('35317', '仁寿县', '3', '35288', 'R');
INSERT INTO `ey_region` VALUES ('35378', '彭山县', '3', '35288', 'P');
INSERT INTO `ey_region` VALUES ('35392', '洪雅县', '3', '35288', 'H');
INSERT INTO `ey_region` VALUES ('35408', '丹棱县', '3', '35288', 'D');
INSERT INTO `ey_region` VALUES ('35416', '青神县', '3', '35288', 'Q');
INSERT INTO `ey_region` VALUES ('35427', '宜宾市', '2', '33007', 'Y');
INSERT INTO `ey_region` VALUES ('35428', '市辖区', '3', '35427', 'S');
INSERT INTO `ey_region` VALUES ('35429', '翠屏区', '3', '35427', 'C');
INSERT INTO `ey_region` VALUES ('35454', '宜宾县', '3', '35427', 'Y');
INSERT INTO `ey_region` VALUES ('35481', '南溪县', '3', '35427', 'N');
INSERT INTO `ey_region` VALUES ('35497', '江安县', '3', '35427', 'J');
INSERT INTO `ey_region` VALUES ('35516', '长宁县', '3', '35427', 'C');
INSERT INTO `ey_region` VALUES ('35535', '高县', '3', '35427', 'G');
INSERT INTO `ey_region` VALUES ('35555', '珙县', '3', '35427', 'G');
INSERT INTO `ey_region` VALUES ('35573', '筠连县', '3', '35427', 'J');
INSERT INTO `ey_region` VALUES ('35592', '兴文县', '3', '35427', 'X');
INSERT INTO `ey_region` VALUES ('35608', '屏山县', '3', '35427', 'P');
INSERT INTO `ey_region` VALUES ('35625', '广安市', '2', '33007', 'G');
INSERT INTO `ey_region` VALUES ('35626', '市辖区', '3', '35625', 'S');
INSERT INTO `ey_region` VALUES ('35627', '广安区', '3', '35625', 'G');
INSERT INTO `ey_region` VALUES ('35677', '岳池县', '3', '35625', 'Y');
INSERT INTO `ey_region` VALUES ('35721', '武胜县', '3', '35625', 'W');
INSERT INTO `ey_region` VALUES ('35753', '邻水县', '3', '35625', 'L');
INSERT INTO `ey_region` VALUES ('35799', '华蓥市', '3', '35625', 'H');
INSERT INTO `ey_region` VALUES ('35813', '达州市', '2', '33007', 'D');
INSERT INTO `ey_region` VALUES ('35814', '市辖区', '3', '35813', 'S');
INSERT INTO `ey_region` VALUES ('35815', '通川区', '3', '35813', 'T');
INSERT INTO `ey_region` VALUES ('35829', '达县', '3', '35813', 'D');
INSERT INTO `ey_region` VALUES ('35894', '宣汉县', '3', '35813', 'X');
INSERT INTO `ey_region` VALUES ('35949', '开江县', '3', '35813', 'K');
INSERT INTO `ey_region` VALUES ('35970', '大竹县', '3', '35813', 'D');
INSERT INTO `ey_region` VALUES ('36021', '渠县', '3', '35813', 'Q');
INSERT INTO `ey_region` VALUES ('36082', '万源市', '3', '35813', 'W');
INSERT INTO `ey_region` VALUES ('36136', '雅安市', '2', '33007', 'Y');
INSERT INTO `ey_region` VALUES ('36137', '市辖区', '3', '36136', 'S');
INSERT INTO `ey_region` VALUES ('36138', '雨城区', '3', '36136', 'Y');
INSERT INTO `ey_region` VALUES ('36161', '名山县', '3', '36136', 'M');
INSERT INTO `ey_region` VALUES ('36182', '荥经县', '3', '36136', 'Y');
INSERT INTO `ey_region` VALUES ('36204', '汉源县', '3', '36136', 'H');
INSERT INTO `ey_region` VALUES ('36245', '石棉县', '3', '36136', 'S');
INSERT INTO `ey_region` VALUES ('36263', '天全县', '3', '36136', 'T');
INSERT INTO `ey_region` VALUES ('36279', '芦山县', '3', '36136', 'L');
INSERT INTO `ey_region` VALUES ('36289', '宝兴县', '3', '36136', 'B');
INSERT INTO `ey_region` VALUES ('36299', '巴中市', '2', '33007', 'B');
INSERT INTO `ey_region` VALUES ('36300', '市辖区', '3', '36299', 'S');
INSERT INTO `ey_region` VALUES ('36301', '巴州区', '3', '36299', 'B');
INSERT INTO `ey_region` VALUES ('36354', '通江县', '3', '36299', 'T');
INSERT INTO `ey_region` VALUES ('36404', '南江县', '3', '36299', 'N');
INSERT INTO `ey_region` VALUES ('36453', '平昌县', '3', '36299', 'P');
INSERT INTO `ey_region` VALUES ('36497', '资阳市', '2', '33007', 'Z');
INSERT INTO `ey_region` VALUES ('36498', '市辖区', '3', '36497', 'S');
INSERT INTO `ey_region` VALUES ('36499', '雁江区', '3', '36497', 'Y');
INSERT INTO `ey_region` VALUES ('36527', '安岳县', '3', '36497', 'A');
INSERT INTO `ey_region` VALUES ('36597', '乐至县', '3', '36497', 'L');
INSERT INTO `ey_region` VALUES ('36623', '简阳市', '3', '36497', 'J');
INSERT INTO `ey_region` VALUES ('36679', '阿坝州', '2', '33007', 'A');
INSERT INTO `ey_region` VALUES ('36680', '汶川县', '3', '36679', 'W');
INSERT INTO `ey_region` VALUES ('36694', '理县', '3', '36679', 'L');
INSERT INTO `ey_region` VALUES ('36708', '茂县', '3', '36679', 'M');
INSERT INTO `ey_region` VALUES ('36731', '松潘县', '3', '36679', 'S');
INSERT INTO `ey_region` VALUES ('36759', '九寨沟县', '3', '36679', 'J');
INSERT INTO `ey_region` VALUES ('36778', '金川县', '3', '36679', 'J');
INSERT INTO `ey_region` VALUES ('36802', '小金县', '3', '36679', 'X');
INSERT INTO `ey_region` VALUES ('36824', '黑水县', '3', '36679', 'H');
INSERT INTO `ey_region` VALUES ('36842', '马尔康县', '3', '36679', 'M');
INSERT INTO `ey_region` VALUES ('36858', '壤塘县', '3', '36679', 'R');
INSERT INTO `ey_region` VALUES ('36871', '阿坝县', '3', '36679', 'A');
INSERT INTO `ey_region` VALUES ('36893', '若尔盖县', '3', '36679', 'R');
INSERT INTO `ey_region` VALUES ('36914', '红原县', '3', '36679', 'H');
INSERT INTO `ey_region` VALUES ('36926', '甘孜州', '2', '33007', 'G');
INSERT INTO `ey_region` VALUES ('36927', '康定县', '3', '36926', 'K');
INSERT INTO `ey_region` VALUES ('36949', '泸定县', '3', '36926', 'L');
INSERT INTO `ey_region` VALUES ('36962', '丹巴县', '3', '36926', 'D');
INSERT INTO `ey_region` VALUES ('36978', '九龙县', '3', '36926', 'J');
INSERT INTO `ey_region` VALUES ('36997', '雅江县', '3', '36926', 'Y');
INSERT INTO `ey_region` VALUES ('37015', '道孚县', '3', '36926', 'D');
INSERT INTO `ey_region` VALUES ('37038', '炉霍县', '3', '36926', 'L');
INSERT INTO `ey_region` VALUES ('37055', '甘孜县', '3', '36926', 'G');
INSERT INTO `ey_region` VALUES ('37078', '新龙县', '3', '36926', 'X');
INSERT INTO `ey_region` VALUES ('37098', '德格县', '3', '36926', 'D');
INSERT INTO `ey_region` VALUES ('37125', '白玉县', '3', '36926', 'B');
INSERT INTO `ey_region` VALUES ('37143', '石渠县', '3', '36926', 'S');
INSERT INTO `ey_region` VALUES ('37166', '色达县', '3', '36926', 'S');
INSERT INTO `ey_region` VALUES ('37184', '理塘县', '3', '36926', 'L');
INSERT INTO `ey_region` VALUES ('37209', '巴塘县', '3', '36926', 'B');
INSERT INTO `ey_region` VALUES ('37229', '乡城县', '3', '36926', 'X');
INSERT INTO `ey_region` VALUES ('37242', '稻城县', '3', '36926', 'D');
INSERT INTO `ey_region` VALUES ('37257', '得荣县', '3', '36926', 'D');
INSERT INTO `ey_region` VALUES ('37270', '凉山州', '2', '33007', 'L');
INSERT INTO `ey_region` VALUES ('37271', '西昌市', '3', '37270', 'X');
INSERT INTO `ey_region` VALUES ('37315', '木里县', '3', '37270', 'M');
INSERT INTO `ey_region` VALUES ('37345', '盐源县', '3', '37270', 'Y');
INSERT INTO `ey_region` VALUES ('37380', '德昌', '3', '37270', 'D');
INSERT INTO `ey_region` VALUES ('37404', '会理县', '3', '37270', 'H');
INSERT INTO `ey_region` VALUES ('37455', '会东县', '3', '37270', 'H');
INSERT INTO `ey_region` VALUES ('37509', '宁南县', '3', '37270', 'N');
INSERT INTO `ey_region` VALUES ('37535', '普格县', '3', '37270', 'P');
INSERT INTO `ey_region` VALUES ('37570', '布拖县', '3', '37270', 'B');
INSERT INTO `ey_region` VALUES ('37601', '金阳县', '3', '37270', 'J');
INSERT INTO `ey_region` VALUES ('37636', '昭觉县', '3', '37270', 'Z');
INSERT INTO `ey_region` VALUES ('37684', '喜德县', '3', '37270', 'X');
INSERT INTO `ey_region` VALUES ('37709', '冕宁县', '3', '37270', 'M');
INSERT INTO `ey_region` VALUES ('37748', '越西县', '3', '37270', 'Y');
INSERT INTO `ey_region` VALUES ('37790', '甘洛县', '3', '37270', 'G');
INSERT INTO `ey_region` VALUES ('37819', '美姑县', '3', '37270', 'M');
INSERT INTO `ey_region` VALUES ('37856', '雷波县', '3', '37270', 'L');
INSERT INTO `ey_region` VALUES ('37906', '贵州省', '1', '0', 'G');
INSERT INTO `ey_region` VALUES ('37907', '贵阳市', '2', '37906', 'G');
INSERT INTO `ey_region` VALUES ('37908', '市辖区', '3', '37907', 'S');
INSERT INTO `ey_region` VALUES ('37909', '南明区', '3', '37907', 'N');
INSERT INTO `ey_region` VALUES ('37927', '云岩区', '3', '37907', 'Y');
INSERT INTO `ey_region` VALUES ('37944', '花溪区', '3', '37907', 'H');
INSERT INTO `ey_region` VALUES ('37961', '乌当区', '3', '37907', 'W');
INSERT INTO `ey_region` VALUES ('37977', '白云区', '3', '37907', 'B');
INSERT INTO `ey_region` VALUES ('37987', '小河区', '3', '37907', 'X');
INSERT INTO `ey_region` VALUES ('37991', '开阳县', '3', '37907', 'K');
INSERT INTO `ey_region` VALUES ('38008', '息烽县', '3', '37907', 'X');
INSERT INTO `ey_region` VALUES ('38019', '修文县', '3', '37907', 'X');
INSERT INTO `ey_region` VALUES ('38030', '清镇市', '3', '37907', 'Q');
INSERT INTO `ey_region` VALUES ('38042', '六盘水市', '2', '37906', 'L');
INSERT INTO `ey_region` VALUES ('38043', '钟山区', '3', '38042', 'Z');
INSERT INTO `ey_region` VALUES ('38053', '六枝特区', '3', '38042', 'L');
INSERT INTO `ey_region` VALUES ('38073', '水城县', '3', '38042', 'S');
INSERT INTO `ey_region` VALUES ('38107', '盘县', '3', '38042', 'P');
INSERT INTO `ey_region` VALUES ('38145', '遵义市', '2', '37906', 'Z');
INSERT INTO `ey_region` VALUES ('38146', '市辖区', '3', '38145', 'S');
INSERT INTO `ey_region` VALUES ('38147', '红花岗区', '3', '38145', 'H');
INSERT INTO `ey_region` VALUES ('38164', '汇川区', '3', '38145', 'H');
INSERT INTO `ey_region` VALUES ('38174', '遵义县', '3', '38145', 'Z');
INSERT INTO `ey_region` VALUES ('38206', '桐梓县', '3', '38145', 'T');
INSERT INTO `ey_region` VALUES ('38231', '绥阳县', '3', '38145', 'S');
INSERT INTO `ey_region` VALUES ('38247', '正安县', '3', '38145', 'Z');
INSERT INTO `ey_region` VALUES ('38267', '道真县', '3', '38145', 'D');
INSERT INTO `ey_region` VALUES ('38282', '务川县', '3', '38145', 'W');
INSERT INTO `ey_region` VALUES ('38298', '凤冈县', '3', '38145', 'F');
INSERT INTO `ey_region` VALUES ('38313', '湄潭县', '3', '38145', 'M');
INSERT INTO `ey_region` VALUES ('38329', '余庆县', '3', '38145', 'Y');
INSERT INTO `ey_region` VALUES ('38340', '习水县', '3', '38145', 'X');
INSERT INTO `ey_region` VALUES ('38364', '赤水市', '3', '38145', 'C');
INSERT INTO `ey_region` VALUES ('38382', '仁怀市', '3', '38145', 'R');
INSERT INTO `ey_region` VALUES ('38402', '安顺市', '2', '37906', 'A');
INSERT INTO `ey_region` VALUES ('38403', '市辖区', '3', '38402', 'S');
INSERT INTO `ey_region` VALUES ('38404', '西秀区', '3', '38402', 'X');
INSERT INTO `ey_region` VALUES ('38429', '平坝县', '3', '38402', 'P');
INSERT INTO `ey_region` VALUES ('38440', '普定县', '3', '38402', 'P');
INSERT INTO `ey_region` VALUES ('38452', '镇宁县', '3', '38402', 'Z');
INSERT INTO `ey_region` VALUES ('38469', '关岭县', '3', '38402', 'G');
INSERT INTO `ey_region` VALUES ('38484', '紫云县', '3', '38402', 'Z');
INSERT INTO `ey_region` VALUES ('38497', '铜仁地区', '2', '37906', 'T');
INSERT INTO `ey_region` VALUES ('38498', '铜仁市', '3', '38497', 'T');
INSERT INTO `ey_region` VALUES ('38516', '江口县', '3', '38497', 'J');
INSERT INTO `ey_region` VALUES ('38526', '玉屏县', '3', '38497', 'Y');
INSERT INTO `ey_region` VALUES ('38533', '石阡县', '3', '38497', 'S');
INSERT INTO `ey_region` VALUES ('38552', '思南县　', '3', '38497', 'S');
INSERT INTO `ey_region` VALUES ('38580', '印江县', '3', '38497', 'Y');
INSERT INTO `ey_region` VALUES ('38598', '德江县', '3', '38497', 'D');
INSERT INTO `ey_region` VALUES ('38619', '沿河县', '3', '38497', 'Y');
INSERT INTO `ey_region` VALUES ('38642', '松桃县', '3', '38497', 'S');
INSERT INTO `ey_region` VALUES ('38671', '万山特区', '3', '38497', 'W');
INSERT INTO `ey_region` VALUES ('38677', '黔西南州', '2', '37906', 'Q');
INSERT INTO `ey_region` VALUES ('38678', '兴义市', '3', '38677', 'X');
INSERT INTO `ey_region` VALUES ('38705', '兴仁县', '3', '38677', 'X');
INSERT INTO `ey_region` VALUES ('38722', '普安县', '3', '38677', 'P');
INSERT INTO `ey_region` VALUES ('38737', '晴隆县', '3', '38677', 'Q');
INSERT INTO `ey_region` VALUES ('38752', '贞丰县', '3', '38677', 'Z');
INSERT INTO `ey_region` VALUES ('38766', '望谟县', '3', '38677', 'W');
INSERT INTO `ey_region` VALUES ('38784', '册亨县', '3', '38677', 'C');
INSERT INTO `ey_region` VALUES ('38799', '安龙县', '3', '38677', 'A');
INSERT INTO `ey_region` VALUES ('38816', '毕节地区', '2', '37906', 'B');
INSERT INTO `ey_region` VALUES ('38817', '毕节市', '3', '38816', 'B');
INSERT INTO `ey_region` VALUES ('38859', '大方县', '3', '38816', 'D');
INSERT INTO `ey_region` VALUES ('38896', '黔西县', '3', '38816', 'Q');
INSERT INTO `ey_region` VALUES ('38925', '金沙县', '3', '38816', 'J');
INSERT INTO `ey_region` VALUES ('38952', '织金县', '3', '38816', 'Z');
INSERT INTO `ey_region` VALUES ('38985', '纳雍县', '3', '38816', 'N');
INSERT INTO `ey_region` VALUES ('39011', '威宁县', '3', '38816', 'W');
INSERT INTO `ey_region` VALUES ('39047', '赫章县', '3', '38816', 'H');
INSERT INTO `ey_region` VALUES ('39075', '黔东南州', '2', '37906', 'Q');
INSERT INTO `ey_region` VALUES ('39076', '凯里市', '3', '39075', 'K');
INSERT INTO `ey_region` VALUES ('39092', '黄平县', '3', '39075', 'H');
INSERT INTO `ey_region` VALUES ('39107', '施秉县', '3', '39075', 'S');
INSERT INTO `ey_region` VALUES ('39116', '三穗县', '3', '39075', 'S');
INSERT INTO `ey_region` VALUES ('39126', '镇远县', '3', '39075', 'Z');
INSERT INTO `ey_region` VALUES ('39139', '岑巩县', '3', '39075', 'C');
INSERT INTO `ey_region` VALUES ('39151', '天柱县', '3', '39075', 'T');
INSERT INTO `ey_region` VALUES ('39168', '锦屏县', '3', '39075', 'J');
INSERT INTO `ey_region` VALUES ('39184', '剑河县', '3', '39075', 'J');
INSERT INTO `ey_region` VALUES ('39197', '台江县', '3', '39075', 'T');
INSERT INTO `ey_region` VALUES ('39206', '黎平县', '3', '39075', 'L');
INSERT INTO `ey_region` VALUES ('39232', '榕江县', '3', '39075', 'R');
INSERT INTO `ey_region` VALUES ('39252', '从江县', '3', '39075', 'C');
INSERT INTO `ey_region` VALUES ('39274', '雷山县', '3', '39075', 'L');
INSERT INTO `ey_region` VALUES ('39284', '麻江县', '3', '39075', 'M');
INSERT INTO `ey_region` VALUES ('39294', '丹寨县', '3', '39075', 'D');
INSERT INTO `ey_region` VALUES ('39302', '黔南州', '2', '37906', 'Q');
INSERT INTO `ey_region` VALUES ('39303', '都匀市', '3', '39302', 'D');
INSERT INTO `ey_region` VALUES ('39327', '福泉市', '3', '39302', 'F');
INSERT INTO `ey_region` VALUES ('39345', '荔波县', '3', '39302', 'L');
INSERT INTO `ey_region` VALUES ('39363', '贵定县', '3', '39302', 'G');
INSERT INTO `ey_region` VALUES ('39384', '瓮安县', '3', '39302', 'W');
INSERT INTO `ey_region` VALUES ('39408', '独山县', '3', '39302', 'D');
INSERT INTO `ey_region` VALUES ('39427', '平塘县', '3', '39302', 'P');
INSERT INTO `ey_region` VALUES ('39447', '罗甸县', '3', '39302', 'L');
INSERT INTO `ey_region` VALUES ('39474', '长顺县', '3', '39302', 'C');
INSERT INTO `ey_region` VALUES ('39493', '龙里县', '3', '39302', 'L');
INSERT INTO `ey_region` VALUES ('39508', '惠水县', '3', '39302', 'H');
INSERT INTO `ey_region` VALUES ('39534', '三都县', '3', '39302', 'S');
INSERT INTO `ey_region` VALUES ('39556', '云南省', '1', '0', 'Y');
INSERT INTO `ey_region` VALUES ('39557', '昆明市', '2', '39556', 'K');
INSERT INTO `ey_region` VALUES ('39558', '市辖区', '3', '39557', 'S');
INSERT INTO `ey_region` VALUES ('39559', '五华区', '3', '39557', 'W');
INSERT INTO `ey_region` VALUES ('39571', '盘龙区', '3', '39557', 'P');
INSERT INTO `ey_region` VALUES ('39582', '官渡区', '3', '39557', 'G');
INSERT INTO `ey_region` VALUES ('39594', '西山区', '3', '39557', 'X');
INSERT INTO `ey_region` VALUES ('39605', '东川区', '3', '39557', 'D');
INSERT INTO `ey_region` VALUES ('39614', '呈贡县', '3', '39557', 'C');
INSERT INTO `ey_region` VALUES ('39622', '晋宁县', '3', '39557', 'J');
INSERT INTO `ey_region` VALUES ('39632', '富民县', '3', '39557', 'F');
INSERT INTO `ey_region` VALUES ('39640', '宜良县', '3', '39557', 'Y');
INSERT INTO `ey_region` VALUES ('39650', '石林县', '3', '39557', 'S');
INSERT INTO `ey_region` VALUES ('39659', '嵩明县', '3', '39557', 'S');
INSERT INTO `ey_region` VALUES ('39667', '禄劝县', '3', '39557', 'L');
INSERT INTO `ey_region` VALUES ('39684', '寻甸县', '3', '39557', 'X');
INSERT INTO `ey_region` VALUES ('39701', '安宁市', '3', '39557', 'A');
INSERT INTO `ey_region` VALUES ('39710', '曲靖市', '2', '39556', 'Q');
INSERT INTO `ey_region` VALUES ('39711', '市辖区', '3', '39710', 'S');
INSERT INTO `ey_region` VALUES ('39712', '麒麟区', '3', '39710', 'Q');
INSERT INTO `ey_region` VALUES ('39724', '马龙县', '3', '39710', 'M');
INSERT INTO `ey_region` VALUES ('39733', '陆良县', '3', '39710', 'L');
INSERT INTO `ey_region` VALUES ('39744', '师宗县', '3', '39710', 'S');
INSERT INTO `ey_region` VALUES ('39753', '罗平县', '3', '39710', 'L');
INSERT INTO `ey_region` VALUES ('39766', '富源县', '3', '39710', 'F');
INSERT INTO `ey_region` VALUES ('39778', '会泽县', '3', '39710', 'H');
INSERT INTO `ey_region` VALUES ('39800', '沾益县', '3', '39710', 'Z');
INSERT INTO `ey_region` VALUES ('39809', '宣威市', '3', '39710', 'X');
INSERT INTO `ey_region` VALUES ('39836', '玉溪市', '2', '39556', 'Y');
INSERT INTO `ey_region` VALUES ('39837', '市辖区', '3', '39836', 'S');
INSERT INTO `ey_region` VALUES ('39838', '红塔区', '3', '39836', 'H');
INSERT INTO `ey_region` VALUES ('39850', '江川县', '3', '39836', 'J');
INSERT INTO `ey_region` VALUES ('39858', '澄江县', '3', '39836', 'C');
INSERT INTO `ey_region` VALUES ('39865', '通海县', '3', '39836', 'T');
INSERT INTO `ey_region` VALUES ('39875', '华宁县', '3', '39836', 'H');
INSERT INTO `ey_region` VALUES ('39881', '易门县', '3', '39836', 'Y');
INSERT INTO `ey_region` VALUES ('39889', '峨山县', '3', '39836', 'E');
INSERT INTO `ey_region` VALUES ('39899', '新平县', '3', '39836', 'X');
INSERT INTO `ey_region` VALUES ('39912', '元江县', '3', '39836', 'Y');
INSERT INTO `ey_region` VALUES ('39923', '保山市', '2', '39556', 'B');
INSERT INTO `ey_region` VALUES ('39924', '市辖区', '3', '39923', 'S');
INSERT INTO `ey_region` VALUES ('39925', '隆阳区', '3', '39923', 'L');
INSERT INTO `ey_region` VALUES ('39946', '施甸县', '3', '39923', 'S');
INSERT INTO `ey_region` VALUES ('39960', '腾冲县', '3', '39923', 'T');
INSERT INTO `ey_region` VALUES ('39979', '龙陵县', '3', '39923', 'L');
INSERT INTO `ey_region` VALUES ('39990', '昌宁县', '3', '39923', 'C');
INSERT INTO `ey_region` VALUES ('40004', '昭通市', '2', '39556', 'Z');
INSERT INTO `ey_region` VALUES ('40005', '市辖区', '3', '40004', 'S');
INSERT INTO `ey_region` VALUES ('40006', '昭阳区', '3', '40004', 'Z');
INSERT INTO `ey_region` VALUES ('40027', '鲁甸县', '3', '40004', 'L');
INSERT INTO `ey_region` VALUES ('40040', '巧家县', '3', '40004', 'Q');
INSERT INTO `ey_region` VALUES ('40057', '盐津县', '3', '40004', 'Y');
INSERT INTO `ey_region` VALUES ('40068', '大关县', '3', '40004', 'D');
INSERT INTO `ey_region` VALUES ('40078', '永善县', '3', '40004', 'Y');
INSERT INTO `ey_region` VALUES ('40094', '绥江县', '3', '40004', 'S');
INSERT INTO `ey_region` VALUES ('40100', '镇雄县', '3', '40004', 'Z');
INSERT INTO `ey_region` VALUES ('40129', '彝良县', '3', '40004', 'Y');
INSERT INTO `ey_region` VALUES ('40145', '威信县', '3', '40004', 'W');
INSERT INTO `ey_region` VALUES ('40156', '水富县', '3', '40004', 'S');
INSERT INTO `ey_region` VALUES ('40160', '丽江市', '2', '39556', 'L');
INSERT INTO `ey_region` VALUES ('40161', '市辖区', '3', '40160', 'S');
INSERT INTO `ey_region` VALUES ('40162', '古城区', '3', '40160', 'G');
INSERT INTO `ey_region` VALUES ('40172', '玉龙县', '3', '40160', 'Y');
INSERT INTO `ey_region` VALUES ('40189', '永胜县', '3', '40160', 'Y');
INSERT INTO `ey_region` VALUES ('40205', '华坪县', '3', '40160', 'H');
INSERT INTO `ey_region` VALUES ('40214', '宁蒗县', '3', '40160', 'N');
INSERT INTO `ey_region` VALUES ('40230', '思茅市', '2', '39556', 'S');
INSERT INTO `ey_region` VALUES ('40231', '市辖区', '3', '40230', 'S');
INSERT INTO `ey_region` VALUES ('40232', '翠云区', '3', '40230', 'C');
INSERT INTO `ey_region` VALUES ('40240', '普洱县', '3', '40230', 'P');
INSERT INTO `ey_region` VALUES ('40250', '墨江县', '3', '40230', 'M');
INSERT INTO `ey_region` VALUES ('40266', '景东县', '3', '40230', 'J');
INSERT INTO `ey_region` VALUES ('40280', '景谷县', '3', '40230', 'J');
INSERT INTO `ey_region` VALUES ('40291', '镇沅县', '3', '40230', 'Z');
INSERT INTO `ey_region` VALUES ('40301', '江城县', '3', '40230', 'J');
INSERT INTO `ey_region` VALUES ('40310', '孟连县', '3', '40230', 'M');
INSERT INTO `ey_region` VALUES ('40318', '澜沧县', '3', '40230', 'L');
INSERT INTO `ey_region` VALUES ('40340', '西盟县', '3', '40230', 'X');
INSERT INTO `ey_region` VALUES ('40348', '临沧市', '2', '39556', 'L');
INSERT INTO `ey_region` VALUES ('40349', '市辖区', '3', '40348', 'S');
INSERT INTO `ey_region` VALUES ('40350', '临翔区', '3', '40348', 'L');
INSERT INTO `ey_region` VALUES ('40361', '凤庆县', '3', '40348', 'F');
INSERT INTO `ey_region` VALUES ('40375', '云县', '3', '40348', 'Y');
INSERT INTO `ey_region` VALUES ('40388', '永德县', '3', '40348', 'Y');
INSERT INTO `ey_region` VALUES ('40400', '镇康县', '3', '40348', 'Z');
INSERT INTO `ey_region` VALUES ('40408', '双江县', '3', '40348', 'S');
INSERT INTO `ey_region` VALUES ('40417', '耿马县', '3', '40348', 'G');
INSERT INTO `ey_region` VALUES ('40429', '沧源县', '3', '40348', 'C');
INSERT INTO `ey_region` VALUES ('40441', '楚雄州', '2', '39556', 'C');
INSERT INTO `ey_region` VALUES ('40442', '楚雄市', '3', '40441', 'C');
INSERT INTO `ey_region` VALUES ('40458', '双柏县', '3', '40441', 'S');
INSERT INTO `ey_region` VALUES ('40467', '牟定县', '3', '40441', 'M');
INSERT INTO `ey_region` VALUES ('40475', '南华县', '3', '40441', 'N');
INSERT INTO `ey_region` VALUES ('40486', '姚安县', '3', '40441', 'Y');
INSERT INTO `ey_region` VALUES ('40496', '大姚县', '3', '40441', 'D');
INSERT INTO `ey_region` VALUES ('40509', '永仁县', '3', '40441', 'Y');
INSERT INTO `ey_region` VALUES ('40517', '元谋县', '3', '40441', 'Y');
INSERT INTO `ey_region` VALUES ('40528', '武定县', '3', '40441', 'W');
INSERT INTO `ey_region` VALUES ('40540', '禄丰县', '3', '40441', 'L');
INSERT INTO `ey_region` VALUES ('40555', '红河州', '2', '39556', 'H');
INSERT INTO `ey_region` VALUES ('40556', '个旧市', '3', '40555', 'G');
INSERT INTO `ey_region` VALUES ('40567', '开远市', '3', '40555', 'K');
INSERT INTO `ey_region` VALUES ('40576', '蒙自县', '3', '40555', 'M');
INSERT INTO `ey_region` VALUES ('40588', '屏边县', '3', '40555', 'P');
INSERT INTO `ey_region` VALUES ('40596', '建水县', '3', '40555', 'J');
INSERT INTO `ey_region` VALUES ('40611', '石屏县', '3', '40555', 'S');
INSERT INTO `ey_region` VALUES ('40621', '弥勒县', '3', '40555', 'M');
INSERT INTO `ey_region` VALUES ('40635', '泸西县', '3', '40555', 'L');
INSERT INTO `ey_region` VALUES ('40644', '元阳县', '3', '40555', 'Y');
INSERT INTO `ey_region` VALUES ('40659', '红河县', '3', '40555', 'H');
INSERT INTO `ey_region` VALUES ('40673', '金平县', '3', '40555', 'J');
INSERT INTO `ey_region` VALUES ('40688', '绿春县', '3', '40555', 'L');
INSERT INTO `ey_region` VALUES ('40698', '河口县', '3', '40555', 'H');
INSERT INTO `ey_region` VALUES ('40705', '文山州', '2', '39556', 'W');
INSERT INTO `ey_region` VALUES ('40706', '文山县', '3', '40705', 'W');
INSERT INTO `ey_region` VALUES ('40722', '砚山县', '3', '40705', 'Y');
INSERT INTO `ey_region` VALUES ('40734', '西畴县', '3', '40705', 'X');
INSERT INTO `ey_region` VALUES ('40744', '麻栗坡县', '3', '40705', 'M');
INSERT INTO `ey_region` VALUES ('40756', '马关县', '3', '40705', 'M');
INSERT INTO `ey_region` VALUES ('40770', '丘北县', '3', '40705', 'Q');
INSERT INTO `ey_region` VALUES ('40783', '广南县', '3', '40705', 'G');
INSERT INTO `ey_region` VALUES ('40802', '富宁县', '3', '40705', 'F');
INSERT INTO `ey_region` VALUES ('40816', '西双版纳州', '2', '39556', 'X');
INSERT INTO `ey_region` VALUES ('40817', '景洪市', '3', '40816', 'J');
INSERT INTO `ey_region` VALUES ('40829', '勐海县', '3', '40816', 'M');
INSERT INTO `ey_region` VALUES ('40841', '勐腊县', '3', '40816', 'M');
INSERT INTO `ey_region` VALUES ('40852', '大理州', '2', '39556', 'D');
INSERT INTO `ey_region` VALUES ('40853', '大理市', '3', '40852', 'D');
INSERT INTO `ey_region` VALUES ('40866', '漾濞县', '3', '40852', 'Y');
INSERT INTO `ey_region` VALUES ('40876', '祥云县', '3', '40852', 'X');
INSERT INTO `ey_region` VALUES ('40887', '宾川县', '3', '40852', 'B');
INSERT INTO `ey_region` VALUES ('40901', '弥渡县', '3', '40852', 'M');
INSERT INTO `ey_region` VALUES ('40910', '南涧县', '3', '40852', 'N');
INSERT INTO `ey_region` VALUES ('40919', '巍山县', '3', '40852', 'W');
INSERT INTO `ey_region` VALUES ('40930', '永平县', '3', '40852', 'Y');
INSERT INTO `ey_region` VALUES ('40938', '云龙县', '3', '40852', 'Y');
INSERT INTO `ey_region` VALUES ('40950', '洱源县', '3', '40852', 'E');
INSERT INTO `ey_region` VALUES ('40960', '剑川县', '3', '40852', 'J');
INSERT INTO `ey_region` VALUES ('40969', '鹤庆县', '3', '40852', 'H');
INSERT INTO `ey_region` VALUES ('40979', '德宏州', '2', '39556', 'D');
INSERT INTO `ey_region` VALUES ('40980', '瑞丽市', '3', '40979', 'R');
INSERT INTO `ey_region` VALUES ('40988', '潞西市', '3', '40979', 'L');
INSERT INTO `ey_region` VALUES ('41000', '梁河县', '3', '40979', 'L');
INSERT INTO `ey_region` VALUES ('41010', '盈江县', '3', '40979', 'Y');
INSERT INTO `ey_region` VALUES ('41026', '陇川县', '3', '40979', 'L');
INSERT INTO `ey_region` VALUES ('41036', '怒江州', '2', '39556', 'N');
INSERT INTO `ey_region` VALUES ('41037', '泸水县', '3', '41036', 'L');
INSERT INTO `ey_region` VALUES ('41047', '福贡县', '3', '41036', 'F');
INSERT INTO `ey_region` VALUES ('41055', '贡山县', '3', '41036', 'G');
INSERT INTO `ey_region` VALUES ('41061', '兰坪县', '3', '41036', 'L');
INSERT INTO `ey_region` VALUES ('41070', '迪庆州', '2', '39556', 'D');
INSERT INTO `ey_region` VALUES ('41071', '香格里拉县', '3', '41070', 'X');
INSERT INTO `ey_region` VALUES ('41083', '德钦县', '3', '41070', 'D');
INSERT INTO `ey_region` VALUES ('41092', '维西县', '3', '41070', 'W');
INSERT INTO `ey_region` VALUES ('41103', '西藏', '1', '0', 'X');
INSERT INTO `ey_region` VALUES ('41104', '拉萨市', '2', '41103', 'L');
INSERT INTO `ey_region` VALUES ('41105', '市辖区', '3', '41104', 'S');
INSERT INTO `ey_region` VALUES ('41106', '城关区', '3', '41104', 'C');
INSERT INTO `ey_region` VALUES ('41118', '林周县', '3', '41104', 'L');
INSERT INTO `ey_region` VALUES ('41129', '当雄县', '3', '41104', 'D');
INSERT INTO `ey_region` VALUES ('41138', '尼木县', '3', '41104', 'N');
INSERT INTO `ey_region` VALUES ('41147', '曲水县', '3', '41104', 'Q');
INSERT INTO `ey_region` VALUES ('41154', '堆龙德庆', '3', '41104', 'D');
INSERT INTO `ey_region` VALUES ('41162', '达孜县', '3', '41104', 'D');
INSERT INTO `ey_region` VALUES ('41169', '墨竹工卡县', '3', '41104', 'M');
INSERT INTO `ey_region` VALUES ('41178', '昌都地区', '2', '41103', 'C');
INSERT INTO `ey_region` VALUES ('41179', '昌都县', '3', '41178', 'C');
INSERT INTO `ey_region` VALUES ('41195', '江达县', '3', '41178', 'J');
INSERT INTO `ey_region` VALUES ('41209', '贡觉县', '3', '41178', 'G');
INSERT INTO `ey_region` VALUES ('41222', '类乌齐县', '3', '41178', 'L');
INSERT INTO `ey_region` VALUES ('41233', '丁青县', '3', '41178', 'D');
INSERT INTO `ey_region` VALUES ('41247', '察亚县', '3', '41178', 'C');
INSERT INTO `ey_region` VALUES ('41261', '八宿县', '3', '41178', 'B');
INSERT INTO `ey_region` VALUES ('41276', '左贡县', '3', '41178', 'Z');
INSERT INTO `ey_region` VALUES ('41287', '芒康县', '3', '41178', 'M');
INSERT INTO `ey_region` VALUES ('41304', '洛隆县', '3', '41178', 'L');
INSERT INTO `ey_region` VALUES ('41316', '边坝县', '3', '41178', 'B');
INSERT INTO `ey_region` VALUES ('41328', '山南地区', '2', '41103', 'S');
INSERT INTO `ey_region` VALUES ('41329', '乃东县', '3', '41328', 'N');
INSERT INTO `ey_region` VALUES ('41337', '扎囊县', '3', '41328', 'Z');
INSERT INTO `ey_region` VALUES ('41343', '贡嘎县', '3', '41328', 'G');
INSERT INTO `ey_region` VALUES ('41352', '桑日县', '3', '41328', 'S');
INSERT INTO `ey_region` VALUES ('41357', '琼结县', '3', '41328', 'Q');
INSERT INTO `ey_region` VALUES ('41362', '曲松县', '3', '41328', 'Q');
INSERT INTO `ey_region` VALUES ('41368', '措美县', '3', '41328', 'C');
INSERT INTO `ey_region` VALUES ('41373', '洛扎县', '3', '41328', 'L');
INSERT INTO `ey_region` VALUES ('41381', '加查县', '3', '41328', 'J');
INSERT INTO `ey_region` VALUES ('41389', '隆子县', '3', '41328', 'L');
INSERT INTO `ey_region` VALUES ('41401', '错那县', '3', '41328', 'C');
INSERT INTO `ey_region` VALUES ('41412', '浪卡子县', '3', '41328', 'L');
INSERT INTO `ey_region` VALUES ('41423', '日喀则地区', '2', '41103', 'R');
INSERT INTO `ey_region` VALUES ('41424', '日喀则市', '3', '41423', 'R');
INSERT INTO `ey_region` VALUES ('41437', '南木林县', '3', '41423', 'N');
INSERT INTO `ey_region` VALUES ('41455', '江孜县', '3', '41423', 'J');
INSERT INTO `ey_region` VALUES ('41475', '定日县', '3', '41423', 'D');
INSERT INTO `ey_region` VALUES ('41489', '萨迦县', '3', '41423', 'S');
INSERT INTO `ey_region` VALUES ('41501', '拉孜县', '3', '41423', 'L');
INSERT INTO `ey_region` VALUES ('41513', '昂仁县', '3', '41423', 'A');
INSERT INTO `ey_region` VALUES ('41531', '谢通门县', '3', '41423', 'X');
INSERT INTO `ey_region` VALUES ('41551', '白朗县', '3', '41423', 'B');
INSERT INTO `ey_region` VALUES ('41563', '仁布县', '3', '41423', 'R');
INSERT INTO `ey_region` VALUES ('41573', '康马县', '3', '41423', 'K');
INSERT INTO `ey_region` VALUES ('41583', '定结县', '3', '41423', 'D');
INSERT INTO `ey_region` VALUES ('41594', '仲巴县', '3', '41423', 'Z');
INSERT INTO `ey_region` VALUES ('41608', '亚东县', '3', '41423', 'Y');
INSERT INTO `ey_region` VALUES ('41616', '吉隆县', '3', '41423', 'J');
INSERT INTO `ey_region` VALUES ('41622', '聂拉木县', '3', '41423', 'N');
INSERT INTO `ey_region` VALUES ('41630', '萨嘎县', '3', '41423', 'S');
INSERT INTO `ey_region` VALUES ('41639', '岗巴县', '3', '41423', 'G');
INSERT INTO `ey_region` VALUES ('41645', '那曲地区', '2', '41103', 'N');
INSERT INTO `ey_region` VALUES ('41646', '那曲县', '3', '41645', 'N');
INSERT INTO `ey_region` VALUES ('41659', '嘉黎县', '3', '41645', 'J');
INSERT INTO `ey_region` VALUES ('41670', '比如县', '3', '41645', 'B');
INSERT INTO `ey_region` VALUES ('41681', '聂荣县', '3', '41645', 'N');
INSERT INTO `ey_region` VALUES ('41692', '安多县', '3', '41645', 'A');
INSERT INTO `ey_region` VALUES ('41706', '申扎县', '3', '41645', 'S');
INSERT INTO `ey_region` VALUES ('41715', '索县', '3', '41645', 'S');
INSERT INTO `ey_region` VALUES ('41726', '班戈县', '3', '41645', 'B');
INSERT INTO `ey_region` VALUES ('41737', '巴青县', '3', '41645', 'B');
INSERT INTO `ey_region` VALUES ('41748', '尼玛县', '3', '41645', 'N');
INSERT INTO `ey_region` VALUES ('41770', '阿里地区', '2', '41103', 'A');
INSERT INTO `ey_region` VALUES ('41771', '普兰县', '3', '41770', 'P');
INSERT INTO `ey_region` VALUES ('41775', '札达县', '3', '41770', 'Z');
INSERT INTO `ey_region` VALUES ('41782', '噶尔县', '3', '41770', 'G');
INSERT INTO `ey_region` VALUES ('41788', '日土县', '3', '41770', 'R');
INSERT INTO `ey_region` VALUES ('41794', '革吉县', '3', '41770', 'G');
INSERT INTO `ey_region` VALUES ('41800', '改则县', '3', '41770', 'G');
INSERT INTO `ey_region` VALUES ('41808', '措勤县', '3', '41770', 'C');
INSERT INTO `ey_region` VALUES ('41814', '林芝地区', '2', '41103', 'L');
INSERT INTO `ey_region` VALUES ('41815', '林芝县', '3', '41814', 'L');
INSERT INTO `ey_region` VALUES ('41823', '工布江达县', '3', '41814', 'G');
INSERT INTO `ey_region` VALUES ('41833', '米林县', '3', '41814', 'M');
INSERT INTO `ey_region` VALUES ('41842', '墨脱县', '3', '41814', 'M');
INSERT INTO `ey_region` VALUES ('41851', '波密县', '3', '41814', 'B');
INSERT INTO `ey_region` VALUES ('41863', '察隅县', '3', '41814', 'C');
INSERT INTO `ey_region` VALUES ('41870', '朗县', '3', '41814', 'L');
INSERT INTO `ey_region` VALUES ('41877', '陕西省', '1', '0', 'S');
INSERT INTO `ey_region` VALUES ('41878', '西安市', '2', '41877', 'X');
INSERT INTO `ey_region` VALUES ('41879', '市辖区', '3', '41878', 'S');
INSERT INTO `ey_region` VALUES ('41880', '新城区', '3', '41878', 'X');
INSERT INTO `ey_region` VALUES ('41890', '碑林区', '3', '41878', 'B');
INSERT INTO `ey_region` VALUES ('41899', '莲湖区', '3', '41878', 'L');
INSERT INTO `ey_region` VALUES ('41909', '灞桥区', '3', '41878', 'B');
INSERT INTO `ey_region` VALUES ('41919', '未央区', '3', '41878', 'W');
INSERT INTO `ey_region` VALUES ('41930', '雁塔区', '3', '41878', 'Y');
INSERT INTO `ey_region` VALUES ('41939', '阎良区', '3', '41878', 'Y');
INSERT INTO `ey_region` VALUES ('41947', '临潼区', '3', '41878', 'L');
INSERT INTO `ey_region` VALUES ('41971', '长安区', '3', '41878', 'C');
INSERT INTO `ey_region` VALUES ('41997', '蓝田县', '3', '41878', 'L');
INSERT INTO `ey_region` VALUES ('42020', '周至县', '3', '41878', 'Z');
INSERT INTO `ey_region` VALUES ('42043', '户县', '3', '41878', 'H');
INSERT INTO `ey_region` VALUES ('42060', '高陵县', '3', '41878', 'G');
INSERT INTO `ey_region` VALUES ('42069', '铜川市', '2', '41877', 'T');
INSERT INTO `ey_region` VALUES ('42070', '市辖区', '3', '42069', 'S');
INSERT INTO `ey_region` VALUES ('42071', '王益区', '3', '42069', 'W');
INSERT INTO `ey_region` VALUES ('42079', '印台区', '3', '42069', 'Y');
INSERT INTO `ey_region` VALUES ('42091', '耀州区', '3', '42069', 'Y');
INSERT INTO `ey_region` VALUES ('42108', '宜君县', '3', '42069', 'Y');
INSERT INTO `ey_region` VALUES ('42119', '宝鸡市', '2', '41877', 'B');
INSERT INTO `ey_region` VALUES ('42120', '市辖区', '3', '42119', 'S');
INSERT INTO `ey_region` VALUES ('42121', '渭滨区', '3', '42119', 'W');
INSERT INTO `ey_region` VALUES ('42133', '金台区', '3', '42119', 'J');
INSERT INTO `ey_region` VALUES ('42146', '陈仓区', '3', '42119', 'C');
INSERT INTO `ey_region` VALUES ('42165', '凤翔县', '3', '42119', 'F');
INSERT INTO `ey_region` VALUES ('42183', '岐山县', '3', '42119', 'Q');
INSERT INTO `ey_region` VALUES ('42198', '扶风县', '3', '42119', 'F');
INSERT INTO `ey_region` VALUES ('42211', '眉县', '3', '42119', 'M');
INSERT INTO `ey_region` VALUES ('42224', '陇县', '3', '42119', 'L');
INSERT INTO `ey_region` VALUES ('42240', '千阳县', '3', '42119', 'Q');
INSERT INTO `ey_region` VALUES ('42252', '麟游县', '3', '42119', 'L');
INSERT INTO `ey_region` VALUES ('42263', '凤县', '3', '42119', 'F');
INSERT INTO `ey_region` VALUES ('42278', '太白县', '3', '42119', 'T');
INSERT INTO `ey_region` VALUES ('42287', '咸阳市', '2', '41877', 'X');
INSERT INTO `ey_region` VALUES ('42288', '市辖区', '3', '42287', 'S');
INSERT INTO `ey_region` VALUES ('42289', '秦都区', '3', '42287', 'Q');
INSERT INTO `ey_region` VALUES ('42302', '杨凌区', '3', '42287', 'Y');
INSERT INTO `ey_region` VALUES ('42308', '渭城区', '3', '42287', 'W');
INSERT INTO `ey_region` VALUES ('42319', '三原县', '3', '42287', 'S');
INSERT INTO `ey_region` VALUES ('42334', '泾阳县', '3', '42287', 'J');
INSERT INTO `ey_region` VALUES ('42351', '乾县', '3', '42287', 'Q');
INSERT INTO `ey_region` VALUES ('42372', '礼泉县', '3', '42287', 'L');
INSERT INTO `ey_region` VALUES ('42388', '永寿县', '3', '42287', 'Y');
INSERT INTO `ey_region` VALUES ('42402', '彬县', '3', '42287', 'B');
INSERT INTO `ey_region` VALUES ('42419', '长武县', '3', '42287', 'C');
INSERT INTO `ey_region` VALUES ('42431', '旬邑县', '3', '42287', 'X');
INSERT INTO `ey_region` VALUES ('42446', '淳化县', '3', '42287', 'C');
INSERT INTO `ey_region` VALUES ('42462', '武功县', '3', '42287', 'W');
INSERT INTO `ey_region` VALUES ('42475', '兴平市', '3', '42287', 'X');
INSERT INTO `ey_region` VALUES ('42490', '渭南市', '2', '41877', 'W');
INSERT INTO `ey_region` VALUES ('42491', '市辖区', '3', '42490', 'S');
INSERT INTO `ey_region` VALUES ('42492', '临渭区', '3', '42490', 'L');
INSERT INTO `ey_region` VALUES ('42523', '华县', '3', '42490', 'H');
INSERT INTO `ey_region` VALUES ('42538', '潼关县', '3', '42490', 'T');
INSERT INTO `ey_region` VALUES ('42547', '大荔县', '3', '42490', 'D');
INSERT INTO `ey_region` VALUES ('42577', '合阳县', '3', '42490', 'H');
INSERT INTO `ey_region` VALUES ('42594', '澄城县', '3', '42490', 'C');
INSERT INTO `ey_region` VALUES ('42609', '蒲城县', '3', '42490', 'P');
INSERT INTO `ey_region` VALUES ('42634', '白水县', '3', '42490', 'B');
INSERT INTO `ey_region` VALUES ('42649', '富平县', '3', '42490', 'F');
INSERT INTO `ey_region` VALUES ('42674', '韩城市', '3', '42490', 'H');
INSERT INTO `ey_region` VALUES ('42691', '华阴市', '3', '42490', 'H');
INSERT INTO `ey_region` VALUES ('42703', '延安市', '2', '41877', 'Y');
INSERT INTO `ey_region` VALUES ('42704', '市辖区', '3', '42703', 'S');
INSERT INTO `ey_region` VALUES ('42705', '宝塔区', '3', '42703', 'B');
INSERT INTO `ey_region` VALUES ('42729', '延长县', '3', '42703', 'Y');
INSERT INTO `ey_region` VALUES ('42742', '延川县', '3', '42703', 'Y');
INSERT INTO `ey_region` VALUES ('42757', '子长县', '3', '42703', 'Z');
INSERT INTO `ey_region` VALUES ('42771', '安塞县', '3', '42703', 'A');
INSERT INTO `ey_region` VALUES ('42784', '志丹县', '3', '42703', 'Z');
INSERT INTO `ey_region` VALUES ('42796', '吴起县', '3', '42703', 'W');
INSERT INTO `ey_region` VALUES ('42809', '甘泉县', '3', '42703', 'G');
INSERT INTO `ey_region` VALUES ('42818', '富县', '3', '42703', 'F');
INSERT INTO `ey_region` VALUES ('42833', '洛川县', '3', '42703', 'L');
INSERT INTO `ey_region` VALUES ('42850', '宜川县', '3', '42703', 'Y');
INSERT INTO `ey_region` VALUES ('42863', '黄龙县', '3', '42703', 'H');
INSERT INTO `ey_region` VALUES ('42874', '黄陵县', '3', '42703', 'H');
INSERT INTO `ey_region` VALUES ('42888', '汉中市', '2', '41877', 'H');
INSERT INTO `ey_region` VALUES ('42889', '市辖区', '3', '42888', 'S');
INSERT INTO `ey_region` VALUES ('42890', '汉台区', '3', '42888', 'H');
INSERT INTO `ey_region` VALUES ('42908', '南郑县', '3', '42888', 'N');
INSERT INTO `ey_region` VALUES ('42939', '城固县', '3', '42888', 'C');
INSERT INTO `ey_region` VALUES ('42965', '洋县', '3', '42888', 'Y');
INSERT INTO `ey_region` VALUES ('42992', '西乡县', '3', '42888', 'X');
INSERT INTO `ey_region` VALUES ('43016', '勉县', '3', '42888', 'M');
INSERT INTO `ey_region` VALUES ('43042', '宁强县', '3', '42888', 'N');
INSERT INTO `ey_region` VALUES ('43069', '略阳县', '3', '42888', 'L');
INSERT INTO `ey_region` VALUES ('43091', '镇巴县', '3', '42888', 'Z');
INSERT INTO `ey_region` VALUES ('43116', '留坝县', '3', '42888', 'L');
INSERT INTO `ey_region` VALUES ('43126', '佛坪县', '3', '42888', 'F');
INSERT INTO `ey_region` VALUES ('43136', '榆林市', '2', '41877', 'Y');
INSERT INTO `ey_region` VALUES ('43137', '市辖区', '3', '43136', 'S');
INSERT INTO `ey_region` VALUES ('43138', '榆阳区', '3', '43136', 'Y');
INSERT INTO `ey_region` VALUES ('43170', '神木县', '3', '43136', 'S');
INSERT INTO `ey_region` VALUES ('43190', '府谷县', '3', '43136', 'F');
INSERT INTO `ey_region` VALUES ('43211', '横山县', '3', '43136', 'H');
INSERT INTO `ey_region` VALUES ('43230', '靖边县', '3', '43136', 'J');
INSERT INTO `ey_region` VALUES ('43253', '定边县', '3', '43136', 'D');
INSERT INTO `ey_region` VALUES ('43279', '绥德县', '3', '43136', 'S');
INSERT INTO `ey_region` VALUES ('43300', '米脂县', '3', '43136', 'M');
INSERT INTO `ey_region` VALUES ('43314', '佳县', '3', '43136', 'J');
INSERT INTO `ey_region` VALUES ('43335', '吴堡县', '3', '43136', 'W');
INSERT INTO `ey_region` VALUES ('43344', '清涧县', '3', '43136', 'Q');
INSERT INTO `ey_region` VALUES ('43360', '子洲县', '3', '43136', 'Z');
INSERT INTO `ey_region` VALUES ('43379', '安康市', '2', '41877', 'A');
INSERT INTO `ey_region` VALUES ('43380', '市辖区', '3', '43379', 'S');
INSERT INTO `ey_region` VALUES ('43381', '汉滨区', '3', '43379', 'H');
INSERT INTO `ey_region` VALUES ('43428', '汉阴县', '3', '43379', 'H');
INSERT INTO `ey_region` VALUES ('43447', '石泉县', '3', '43379', 'S');
INSERT INTO `ey_region` VALUES ('43463', '宁陕县', '3', '43379', 'N');
INSERT INTO `ey_region` VALUES ('43478', '紫阳县', '3', '43379', 'Z');
INSERT INTO `ey_region` VALUES ('43504', '岚皋县', '3', '43379', 'L');
INSERT INTO `ey_region` VALUES ('43522', '平利县', '3', '43379', 'P');
INSERT INTO `ey_region` VALUES ('43535', '镇坪县', '3', '43379', 'Z');
INSERT INTO `ey_region` VALUES ('43546', '旬阳县', '3', '43379', 'X');
INSERT INTO `ey_region` VALUES ('43575', '白河县', '3', '43379', 'B');
INSERT INTO `ey_region` VALUES ('43592', '商洛市', '2', '41877', 'S');
INSERT INTO `ey_region` VALUES ('43593', '市辖区', '3', '43592', 'S');
INSERT INTO `ey_region` VALUES ('43594', '商州区', '3', '43592', 'S');
INSERT INTO `ey_region` VALUES ('43628', '洛南县', '3', '43592', 'L');
INSERT INTO `ey_region` VALUES ('43654', '丹凤县', '3', '43592', 'D');
INSERT INTO `ey_region` VALUES ('43676', '商南县', '3', '43592', 'S');
INSERT INTO `ey_region` VALUES ('43699', '山阳县', '3', '43592', 'S');
INSERT INTO `ey_region` VALUES ('43730', '镇安县', '3', '43592', 'Z');
INSERT INTO `ey_region` VALUES ('43759', '柞水县', '3', '43592', 'Z');
INSERT INTO `ey_region` VALUES ('43776', '甘肃省', '1', '0', 'G');
INSERT INTO `ey_region` VALUES ('43777', '兰州市', '2', '43776', 'L');
INSERT INTO `ey_region` VALUES ('43778', '市辖区', '3', '43777', 'S');
INSERT INTO `ey_region` VALUES ('43779', '城关区', '3', '43777', 'C');
INSERT INTO `ey_region` VALUES ('43804', '七里河区', '3', '43777', 'Q');
INSERT INTO `ey_region` VALUES ('43820', '兰州市西固区', '3', '43777', 'L');
INSERT INTO `ey_region` VALUES ('43836', '安宁区', '3', '43777', 'A');
INSERT INTO `ey_region` VALUES ('43845', '红古区', '3', '43777', 'H');
INSERT INTO `ey_region` VALUES ('43853', '永登县', '3', '43777', 'Y');
INSERT INTO `ey_region` VALUES ('43872', '皋兰县', '3', '43777', 'G');
INSERT INTO `ey_region` VALUES ('43880', '榆中县', '3', '43777', 'Y');
INSERT INTO `ey_region` VALUES ('43904', '嘉峪关市', '2', '43776', 'J');
INSERT INTO `ey_region` VALUES ('43905', '市辖', '3', '43904', 'S');
INSERT INTO `ey_region` VALUES ('43914', '金昌市', '2', '43776', 'J');
INSERT INTO `ey_region` VALUES ('43915', '市辖区', '3', '43914', 'S');
INSERT INTO `ey_region` VALUES ('43916', '金川区', '3', '43914', 'J');
INSERT INTO `ey_region` VALUES ('43925', '永昌县', '3', '43914', 'Y');
INSERT INTO `ey_region` VALUES ('43936', '白银市', '2', '43776', 'B');
INSERT INTO `ey_region` VALUES ('43937', '市辖区', '3', '43936', 'S');
INSERT INTO `ey_region` VALUES ('43938', '白银区', '3', '43936', 'B');
INSERT INTO `ey_region` VALUES ('43949', '平川区', '3', '43936', 'P');
INSERT INTO `ey_region` VALUES ('43961', '靖远县', '3', '43936', 'J');
INSERT INTO `ey_region` VALUES ('43980', '会宁县', '3', '43936', 'H');
INSERT INTO `ey_region` VALUES ('44009', '景泰县', '3', '43936', 'J');
INSERT INTO `ey_region` VALUES ('44022', '天水市', '2', '43776', 'T');
INSERT INTO `ey_region` VALUES ('44023', '市辖区', '3', '44022', 'S');
INSERT INTO `ey_region` VALUES ('44024', '秦州区', '3', '44022', 'Q');
INSERT INTO `ey_region` VALUES ('44048', '麦积区', '3', '44022', 'M');
INSERT INTO `ey_region` VALUES ('44069', '清水县', '3', '44022', 'Q');
INSERT INTO `ey_region` VALUES ('44088', '秦安县', '3', '44022', 'Q');
INSERT INTO `ey_region` VALUES ('44106', '甘谷县', '3', '44022', 'G');
INSERT INTO `ey_region` VALUES ('44122', '武山县', '3', '44022', 'W');
INSERT INTO `ey_region` VALUES ('44138', '张家川县', '3', '44022', 'Z');
INSERT INTO `ey_region` VALUES ('44154', '武威市', '2', '43776', 'W');
INSERT INTO `ey_region` VALUES ('44155', '市辖区', '3', '44154', 'S');
INSERT INTO `ey_region` VALUES ('44156', '凉州区', '3', '44154', 'L');
INSERT INTO `ey_region` VALUES ('44202', '民勤县', '3', '44154', 'M');
INSERT INTO `ey_region` VALUES ('44221', '古浪县', '3', '44154', 'G');
INSERT INTO `ey_region` VALUES ('44242', '天祝县', '3', '44154', 'T');
INSERT INTO `ey_region` VALUES ('44265', '张掖市', '2', '43776', 'Z');
INSERT INTO `ey_region` VALUES ('44266', '市辖区', '3', '44265', 'S');
INSERT INTO `ey_region` VALUES ('44267', '甘州区', '3', '44265', 'G');
INSERT INTO `ey_region` VALUES ('44294', '肃南县', '3', '44265', 'S');
INSERT INTO `ey_region` VALUES ('44305', '民乐县', '3', '44265', 'M');
INSERT INTO `ey_region` VALUES ('44317', '临泽县', '3', '44265', 'L');
INSERT INTO `ey_region` VALUES ('44331', '高台县', '3', '44265', 'G');
INSERT INTO `ey_region` VALUES ('44341', '山丹县', '3', '44265', 'S');
INSERT INTO `ey_region` VALUES ('44352', '平凉市', '2', '43776', 'P');
INSERT INTO `ey_region` VALUES ('44353', '市辖区', '3', '44352', 'S');
INSERT INTO `ey_region` VALUES ('44354', '崆峒区', '3', '44352', 'K');
INSERT INTO `ey_region` VALUES ('44375', '泾川县', '3', '44352', 'J');
INSERT INTO `ey_region` VALUES ('44392', '灵台县', '3', '44352', 'L');
INSERT INTO `ey_region` VALUES ('44408', '崇信县', '3', '44352', 'C');
INSERT INTO `ey_region` VALUES ('44418', '华亭县', '3', '44352', 'H');
INSERT INTO `ey_region` VALUES ('44431', '庄浪县', '3', '44352', 'Z');
INSERT INTO `ey_region` VALUES ('44451', '静宁县', '3', '44352', 'J');
INSERT INTO `ey_region` VALUES ('44477', '酒泉市', '2', '43776', 'J');
INSERT INTO `ey_region` VALUES ('44478', '市辖区', '3', '44477', 'S');
INSERT INTO `ey_region` VALUES ('44479', '肃州区', '3', '44477', 'S');
INSERT INTO `ey_region` VALUES ('44504', '金塔县', '3', '44477', 'J');
INSERT INTO `ey_region` VALUES ('44516', '瓜州县', '3', '44477', 'G');
INSERT INTO `ey_region` VALUES ('44531', '肃北县', '3', '44477', 'S');
INSERT INTO `ey_region` VALUES ('44535', '阿克塞县', '3', '44477', 'A');
INSERT INTO `ey_region` VALUES ('44539', '玉门市', '3', '44477', 'Y');
INSERT INTO `ey_region` VALUES ('44557', '敦煌市', '3', '44477', 'D');
INSERT INTO `ey_region` VALUES ('44569', '庆阳市', '2', '43776', 'Q');
INSERT INTO `ey_region` VALUES ('44570', '市辖区', '3', '44569', 'S');
INSERT INTO `ey_region` VALUES ('44571', '西峰区', '3', '44569', 'X');
INSERT INTO `ey_region` VALUES ('44582', '庆城县', '3', '44569', 'Q');
INSERT INTO `ey_region` VALUES ('44598', '环县', '3', '44569', 'H');
INSERT INTO `ey_region` VALUES ('44620', '华池县', '3', '44569', 'H');
INSERT INTO `ey_region` VALUES ('44636', '合水县', '3', '44569', 'H');
INSERT INTO `ey_region` VALUES ('44649', '正宁县', '3', '44569', 'Z');
INSERT INTO `ey_region` VALUES ('44660', '宁县', '3', '44569', 'N');
INSERT INTO `ey_region` VALUES ('44679', '镇原县', '3', '44569', 'Z');
INSERT INTO `ey_region` VALUES ('44699', '定西市', '2', '43776', 'D');
INSERT INTO `ey_region` VALUES ('44700', '市辖区', '3', '44699', 'S');
INSERT INTO `ey_region` VALUES ('44701', '安定区', '3', '44699', 'A');
INSERT INTO `ey_region` VALUES ('44723', '通渭县', '3', '44699', 'T');
INSERT INTO `ey_region` VALUES ('44742', '陇西县', '3', '44699', 'L');
INSERT INTO `ey_region` VALUES ('44760', '渭源县', '3', '44699', 'W');
INSERT INTO `ey_region` VALUES ('44777', '临洮县', '3', '44699', 'L');
INSERT INTO `ey_region` VALUES ('44796', '漳县', '3', '44699', 'Z');
INSERT INTO `ey_region` VALUES ('44810', '岷县', '3', '44699', 'M');
INSERT INTO `ey_region` VALUES ('44829', '陇南市', '2', '43776', 'L');
INSERT INTO `ey_region` VALUES ('44830', '市辖区', '3', '44829', 'S');
INSERT INTO `ey_region` VALUES ('44831', '武都区', '3', '44829', 'W');
INSERT INTO `ey_region` VALUES ('44868', '成县', '3', '44829', 'C');
INSERT INTO `ey_region` VALUES ('44886', '文县', '3', '44829', 'W');
INSERT INTO `ey_region` VALUES ('44907', '宕昌县', '3', '44829', 'D');
INSERT INTO `ey_region` VALUES ('44933', '康县', '3', '44829', 'K');
INSERT INTO `ey_region` VALUES ('44955', '西和县', '3', '44829', 'X');
INSERT INTO `ey_region` VALUES ('44976', '礼县', '3', '44829', 'L');
INSERT INTO `ey_region` VALUES ('45006', '徽县', '3', '44829', 'H');
INSERT INTO `ey_region` VALUES ('45022', '两当县', '3', '44829', 'L');
INSERT INTO `ey_region` VALUES ('45035', '临夏州', '2', '43776', 'L');
INSERT INTO `ey_region` VALUES ('45036', '临夏市', '3', '45035', 'L');
INSERT INTO `ey_region` VALUES ('45047', '临夏县', '3', '45035', 'L');
INSERT INTO `ey_region` VALUES ('45073', '康乐县', '3', '45035', 'K');
INSERT INTO `ey_region` VALUES ('45089', '永靖县', '3', '45035', 'Y');
INSERT INTO `ey_region` VALUES ('45107', '广河县', '3', '45035', 'G');
INSERT INTO `ey_region` VALUES ('45117', '和政县', '3', '45035', 'H');
INSERT INTO `ey_region` VALUES ('45131', '东乡县', '3', '45035', 'D');
INSERT INTO `ey_region` VALUES ('45156', '积石山县', '3', '45035', 'J');
INSERT INTO `ey_region` VALUES ('45174', '甘南州', '2', '43776', 'G');
INSERT INTO `ey_region` VALUES ('45175', '合作市', '3', '45174', 'H');
INSERT INTO `ey_region` VALUES ('45186', '临潭县', '3', '45174', 'L');
INSERT INTO `ey_region` VALUES ('45203', '卓尼县', '3', '45174', 'Z');
INSERT INTO `ey_region` VALUES ('45219', '舟曲县', '3', '45174', 'Z');
INSERT INTO `ey_region` VALUES ('45239', '迭部县', '3', '45174', 'D');
INSERT INTO `ey_region` VALUES ('45251', '玛曲县', '3', '45174', 'M');
INSERT INTO `ey_region` VALUES ('45263', '碌曲县', '3', '45174', 'L');
INSERT INTO `ey_region` VALUES ('45272', '夏河县', '3', '45174', 'X');
INSERT INTO `ey_region` VALUES ('45286', '青海省', '1', '0', 'Q');
INSERT INTO `ey_region` VALUES ('45287', '西宁市', '2', '45286', 'X');
INSERT INTO `ey_region` VALUES ('45288', '市辖区', '3', '45287', 'S');
INSERT INTO `ey_region` VALUES ('45289', '城东区', '3', '45287', 'C');
INSERT INTO `ey_region` VALUES ('45299', '城中区', '3', '45287', 'C');
INSERT INTO `ey_region` VALUES ('45306', '城西区', '3', '45287', 'C');
INSERT INTO `ey_region` VALUES ('45314', '城北区', '3', '45287', 'C');
INSERT INTO `ey_region` VALUES ('45320', '大通县', '3', '45287', 'D');
INSERT INTO `ey_region` VALUES ('45341', '湟中县', '3', '45287', 'H');
INSERT INTO `ey_region` VALUES ('45358', '湟源县', '3', '45287', 'H');
INSERT INTO `ey_region` VALUES ('45368', '海东地区', '2', '45286', 'H');
INSERT INTO `ey_region` VALUES ('45369', '平安县', '3', '45368', 'P');
INSERT INTO `ey_region` VALUES ('45378', '民和县', '3', '45368', 'M');
INSERT INTO `ey_region` VALUES ('45401', '乐都县', '3', '45368', 'L');
INSERT INTO `ey_region` VALUES ('45421', '互助县', '3', '45368', 'H');
INSERT INTO `ey_region` VALUES ('45441', '化隆县', '3', '45368', 'H');
INSERT INTO `ey_region` VALUES ('45461', '循化县', '3', '45368', 'X');
INSERT INTO `ey_region` VALUES ('45471', '海北州', '2', '45286', 'H');
INSERT INTO `ey_region` VALUES ('45472', '门源县', '3', '45471', 'M');
INSERT INTO `ey_region` VALUES ('45487', '祁连县', '3', '45471', 'Q');
INSERT INTO `ey_region` VALUES ('45495', '海晏县', '3', '45471', 'H');
INSERT INTO `ey_region` VALUES ('45502', '刚察县', '3', '45471', 'G');
INSERT INTO `ey_region` VALUES ('45510', '黄南州', '2', '45286', 'H');
INSERT INTO `ey_region` VALUES ('45511', '同仁县', '3', '45510', 'T');
INSERT INTO `ey_region` VALUES ('45523', '尖扎县', '3', '45510', 'J');
INSERT INTO `ey_region` VALUES ('45533', '泽库县', '3', '45510', 'Z');
INSERT INTO `ey_region` VALUES ('45542', '河南县', '3', '45510', 'H');
INSERT INTO `ey_region` VALUES ('45548', '海南州', '2', '45286', 'H');
INSERT INTO `ey_region` VALUES ('45549', '共和县', '3', '45548', 'G');
INSERT INTO `ey_region` VALUES ('45566', '同德县', '3', '45548', 'T');
INSERT INTO `ey_region` VALUES ('45573', '贵德县', '3', '45548', 'G');
INSERT INTO `ey_region` VALUES ('45581', '兴海县', '3', '45548', 'X');
INSERT INTO `ey_region` VALUES ('45589', '贵南县', '3', '45548', 'G');
INSERT INTO `ey_region` VALUES ('45597', '果洛州', '2', '45286', 'G');
INSERT INTO `ey_region` VALUES ('45598', '玛沁县', '3', '45597', 'M');
INSERT INTO `ey_region` VALUES ('45607', '班玛县', '3', '45597', 'B');
INSERT INTO `ey_region` VALUES ('45617', '甘德县', '3', '45597', 'G');
INSERT INTO `ey_region` VALUES ('45625', '达日县', '3', '45597', 'D');
INSERT INTO `ey_region` VALUES ('45636', '久治县', '3', '45597', 'J');
INSERT INTO `ey_region` VALUES ('45643', '玛多县', '3', '45597', 'M');
INSERT INTO `ey_region` VALUES ('45648', '玉树州', '2', '45286', 'Y');
INSERT INTO `ey_region` VALUES ('45649', '玉树县', '3', '45648', 'Y');
INSERT INTO `ey_region` VALUES ('45659', '杂多县', '3', '45648', 'Z');
INSERT INTO `ey_region` VALUES ('45668', '称多县', '3', '45648', 'C');
INSERT INTO `ey_region` VALUES ('45676', '治多县', '3', '45648', 'Z');
INSERT INTO `ey_region` VALUES ('45683', '囊谦县', '3', '45648', 'N');
INSERT INTO `ey_region` VALUES ('45694', '曲麻莱县', '3', '45648', 'Q');
INSERT INTO `ey_region` VALUES ('45701', '海西州', '2', '45286', 'H');
INSERT INTO `ey_region` VALUES ('45702', '格尔木市', '3', '45701', 'G');
INSERT INTO `ey_region` VALUES ('45714', '德令哈市', '3', '45701', 'D');
INSERT INTO `ey_region` VALUES ('45727', '乌兰县', '3', '45701', 'W');
INSERT INTO `ey_region` VALUES ('45733', '都兰县', '3', '45701', 'D');
INSERT INTO `ey_region` VALUES ('45742', '天峻县', '3', '45701', 'T');
INSERT INTO `ey_region` VALUES ('45753', '宁夏', '1', '0', 'N');
INSERT INTO `ey_region` VALUES ('45754', '银川市', '2', '45753', 'Y');
INSERT INTO `ey_region` VALUES ('45755', '市辖区', '3', '45754', 'S');
INSERT INTO `ey_region` VALUES ('45756', '兴庆区', '3', '45754', 'X');
INSERT INTO `ey_region` VALUES ('45772', '西夏区', '3', '45754', 'X');
INSERT INTO `ey_region` VALUES ('45784', '金凤区', '3', '45754', 'J');
INSERT INTO `ey_region` VALUES ('45794', '永宁县', '3', '45754', 'Y');
INSERT INTO `ey_region` VALUES ('45803', '贺兰县', '3', '45754', 'H');
INSERT INTO `ey_region` VALUES ('45813', '灵武市', '3', '45754', 'L');
INSERT INTO `ey_region` VALUES ('45825', '石嘴山市', '2', '45753', 'S');
INSERT INTO `ey_region` VALUES ('45826', '市辖区', '3', '45825', 'S');
INSERT INTO `ey_region` VALUES ('45827', '大武口区', '3', '45825', 'D');
INSERT INTO `ey_region` VALUES ('45839', '惠农区', '3', '45825', 'H');
INSERT INTO `ey_region` VALUES ('45856', '平罗县', '3', '45825', 'P');
INSERT INTO `ey_region` VALUES ('45871', '吴忠市', '2', '45753', 'W');
INSERT INTO `ey_region` VALUES ('45872', '市辖区', '3', '45871', 'S');
INSERT INTO `ey_region` VALUES ('45877', '利通区', '3', '45871', 'L');
INSERT INTO `ey_region` VALUES ('45892', '盐池县', '3', '45871', 'Y');
INSERT INTO `ey_region` VALUES ('45903', '同心县', '3', '45871', 'T');
INSERT INTO `ey_region` VALUES ('45914', '青铜峡市', '3', '45871', 'Q');
INSERT INTO `ey_region` VALUES ('45926', '固原市', '2', '45753', 'G');
INSERT INTO `ey_region` VALUES ('45927', '市辖区', '3', '45926', 'S');
INSERT INTO `ey_region` VALUES ('45928', '原州区', '3', '45926', 'Y');
INSERT INTO `ey_region` VALUES ('45944', '西吉县', '3', '45926', 'X');
INSERT INTO `ey_region` VALUES ('45964', '隆德县', '3', '45926', 'L');
INSERT INTO `ey_region` VALUES ('45978', '泾源县', '3', '45926', 'J');
INSERT INTO `ey_region` VALUES ('45986', '彭阳县', '3', '45926', 'P');
INSERT INTO `ey_region` VALUES ('45999', '中卫市', '2', '45753', 'Z');
INSERT INTO `ey_region` VALUES ('46000', '市辖区', '3', '45999', 'S');
INSERT INTO `ey_region` VALUES ('46012', '沙坡头区', '3', '45999', 'S');
INSERT INTO `ey_region` VALUES ('46013', '中宁县', '3', '45999', 'Z');
INSERT INTO `ey_region` VALUES ('46026', '海原县', '3', '45999', 'H');
INSERT INTO `ey_region` VALUES ('46047', '新疆', '1', '0', 'X');
INSERT INTO `ey_region` VALUES ('46048', '乌鲁木齐市', '2', '46047', 'W');
INSERT INTO `ey_region` VALUES ('46049', '市辖区', '3', '46048', 'S');
INSERT INTO `ey_region` VALUES ('46050', '天山区', '3', '46048', 'T');
INSERT INTO `ey_region` VALUES ('46065', '沙依巴克区', '3', '46048', 'S');
INSERT INTO `ey_region` VALUES ('46079', '新市区', '3', '46048', 'X');
INSERT INTO `ey_region` VALUES ('46095', '水磨沟区', '3', '46048', 'S');
INSERT INTO `ey_region` VALUES ('46104', '头屯河区', '3', '46048', 'T');
INSERT INTO `ey_region` VALUES ('46114', '达坂城区', '3', '46048', 'D');
INSERT INTO `ey_region` VALUES ('46123', '东山区', '3', '46048', 'D');
INSERT INTO `ey_region` VALUES ('46128', '乌鲁木齐县', '3', '46048', 'W');
INSERT INTO `ey_region` VALUES ('46138', '克拉玛依市', '2', '46047', 'K');
INSERT INTO `ey_region` VALUES ('46139', '市辖区', '3', '46138', 'S');
INSERT INTO `ey_region` VALUES ('46140', '独山子区', '3', '46138', 'D');
INSERT INTO `ey_region` VALUES ('46144', '克拉玛依区', '3', '46138', 'K');
INSERT INTO `ey_region` VALUES ('46155', '白碱滩区', '3', '46138', 'B');
INSERT INTO `ey_region` VALUES ('46158', '乌尔禾区', '3', '46138', 'W');
INSERT INTO `ey_region` VALUES ('46162', '吐鲁番地区', '2', '46047', 'T');
INSERT INTO `ey_region` VALUES ('46163', '吐鲁番市', '3', '46162', 'T');
INSERT INTO `ey_region` VALUES ('46178', '鄯善县', '3', '46162', 'S');
INSERT INTO `ey_region` VALUES ('46189', '托克逊县', '3', '46162', 'T');
INSERT INTO `ey_region` VALUES ('46197', '哈密地区', '2', '46047', 'H');
INSERT INTO `ey_region` VALUES ('46198', '哈密市', '3', '46197', 'H');
INSERT INTO `ey_region` VALUES ('46230', '巴里坤县', '3', '46197', 'B');
INSERT INTO `ey_region` VALUES ('46246', '伊吾县', '3', '46197', 'Y');
INSERT INTO `ey_region` VALUES ('46255', '昌吉州', '2', '46047', 'C');
INSERT INTO `ey_region` VALUES ('46256', '昌吉市', '3', '46255', 'C');
INSERT INTO `ey_region` VALUES ('46275', '阜康市', '3', '46255', 'F');
INSERT INTO `ey_region` VALUES ('46289', '米泉市', '3', '46255', 'M');
INSERT INTO `ey_region` VALUES ('46299', '呼图壁县', '3', '46255', 'H');
INSERT INTO `ey_region` VALUES ('46316', '玛纳斯', '3', '46255', 'M');
INSERT INTO `ey_region` VALUES ('46337', '奇台县', '3', '46255', 'Q');
INSERT INTO `ey_region` VALUES ('46355', '吉木萨尔县', '3', '46255', 'J');
INSERT INTO `ey_region` VALUES ('46366', '木垒县', '3', '46255', 'M');
INSERT INTO `ey_region` VALUES ('46380', '博州', '2', '46047', 'B');
INSERT INTO `ey_region` VALUES ('46381', '博乐市', '3', '46380', 'B');
INSERT INTO `ey_region` VALUES ('46399', '精河县', '3', '46380', 'J');
INSERT INTO `ey_region` VALUES ('46410', '温泉县', '3', '46380', 'W');
INSERT INTO `ey_region` VALUES ('46422', '巴州', '2', '46047', 'B');
INSERT INTO `ey_region` VALUES ('46423', '库尔勒市', '3', '46422', 'K');
INSERT INTO `ey_region` VALUES ('46451', '轮台县', '3', '46422', 'L');
INSERT INTO `ey_region` VALUES ('46463', '尉犁县', '3', '46422', 'W');
INSERT INTO `ey_region` VALUES ('46476', '若羌县', '3', '46422', 'R');
INSERT INTO `ey_region` VALUES ('46486', '且末县', '3', '46422', 'Q');
INSERT INTO `ey_region` VALUES ('46500', '焉耆县', '3', '46422', 'Y');
INSERT INTO `ey_region` VALUES ('46512', '和静县', '3', '46422', 'H');
INSERT INTO `ey_region` VALUES ('46531', '和硕县', '3', '46422', 'H');
INSERT INTO `ey_region` VALUES ('46542', '博湖县', '3', '46422', 'B');
INSERT INTO `ey_region` VALUES ('46551', '阿克苏地区', '2', '46047', 'A');
INSERT INTO `ey_region` VALUES ('46552', '阿克苏市', '3', '46551', 'A');
INSERT INTO `ey_region` VALUES ('46571', '温宿县', '3', '46551', 'W');
INSERT INTO `ey_region` VALUES ('46592', '库车县', '3', '46551', 'K');
INSERT INTO `ey_region` VALUES ('46617', '沙雅县', '3', '46551', 'S');
INSERT INTO `ey_region` VALUES ('46630', '新和县', '3', '46551', 'X');
INSERT INTO `ey_region` VALUES ('46640', '拜城县', '3', '46551', 'B');
INSERT INTO `ey_region` VALUES ('46657', '乌什县', '3', '46551', 'W');
INSERT INTO `ey_region` VALUES ('46668', '阿瓦提县', '3', '46551', 'A');
INSERT INTO `ey_region` VALUES ('46682', '柯坪县', '3', '46551', 'K');
INSERT INTO `ey_region` VALUES ('46688', '克州', '2', '46047', 'K');
INSERT INTO `ey_region` VALUES ('46689', '阿图什市', '3', '46688', 'A');
INSERT INTO `ey_region` VALUES ('46704', '阿克陶县', '3', '46688', 'A');
INSERT INTO `ey_region` VALUES ('46723', '阿合奇县', '3', '46688', 'A');
INSERT INTO `ey_region` VALUES ('46733', '乌恰县', '3', '46688', 'W');
INSERT INTO `ey_region` VALUES ('46747', '喀什地区', '2', '46047', 'K');
INSERT INTO `ey_region` VALUES ('46748', '喀什市', '3', '46747', 'K');
INSERT INTO `ey_region` VALUES ('46761', '疏附县', '3', '46747', 'S');
INSERT INTO `ey_region` VALUES ('46780', '疏勒县', '3', '46747', 'S');
INSERT INTO `ey_region` VALUES ('46797', '英吉沙县', '3', '46747', 'Y');
INSERT INTO `ey_region` VALUES ('46813', '泽普县', '3', '46747', 'Z');
INSERT INTO `ey_region` VALUES ('46830', '莎车县', '3', '46747', 'S');
INSERT INTO `ey_region` VALUES ('46863', '叶城县', '3', '46747', 'Y');
INSERT INTO `ey_region` VALUES ('46885', '麦盖提县', '3', '46747', 'M');
INSERT INTO `ey_region` VALUES ('46902', '岳普湖县', '3', '46747', 'Y');
INSERT INTO `ey_region` VALUES ('46913', '伽师县', '3', '46747', 'Q');
INSERT INTO `ey_region` VALUES ('46928', '巴楚县', '3', '46747', 'B');
INSERT INTO `ey_region` VALUES ('46942', '塔什库尔干县', '3', '46747', 'T');
INSERT INTO `ey_region` VALUES ('46957', '和田地区', '2', '46047', 'H');
INSERT INTO `ey_region` VALUES ('46958', '和田市', '3', '46957', 'H');
INSERT INTO `ey_region` VALUES ('46971', '和田县', '3', '46957', 'H');
INSERT INTO `ey_region` VALUES ('46983', '墨玉县', '3', '46957', 'M');
INSERT INTO `ey_region` VALUES ('47002', '皮山县', '3', '46957', 'P');
INSERT INTO `ey_region` VALUES ('47020', '洛浦县', '3', '46957', 'L');
INSERT INTO `ey_region` VALUES ('47032', '策勒县', '3', '46957', 'C');
INSERT INTO `ey_region` VALUES ('47042', '于田县', '3', '46957', 'Y');
INSERT INTO `ey_region` VALUES ('47061', '民丰县', '3', '46957', 'M');
INSERT INTO `ey_region` VALUES ('47069', '伊犁州', '2', '46047', 'Y');
INSERT INTO `ey_region` VALUES ('47070', '伊宁市', '3', '47069', 'Y');
INSERT INTO `ey_region` VALUES ('47091', '奎屯市', '3', '47069', 'K');
INSERT INTO `ey_region` VALUES ('47099', '伊宁县', '3', '47069', 'Y');
INSERT INTO `ey_region` VALUES ('47121', '察布查尔县', '3', '47069', 'C');
INSERT INTO `ey_region` VALUES ('47143', '霍城县', '3', '47069', 'H');
INSERT INTO `ey_region` VALUES ('47164', '巩留县', '3', '47069', 'G');
INSERT INTO `ey_region` VALUES ('47180', '新源县', '3', '47069', 'X');
INSERT INTO `ey_region` VALUES ('47196', '昭苏县', '3', '47069', 'Z');
INSERT INTO `ey_region` VALUES ('47214', '特克斯县', '3', '47069', 'T');
INSERT INTO `ey_region` VALUES ('47226', '尼勒克县', '3', '47069', 'N');
INSERT INTO `ey_region` VALUES ('47241', '塔城地区', '2', '46047', 'T');
INSERT INTO `ey_region` VALUES ('47242', '塔城市', '3', '47241', 'T');
INSERT INTO `ey_region` VALUES ('47258', '乌苏市', '3', '47241', 'W');
INSERT INTO `ey_region` VALUES ('47291', '额敏县', '3', '47241', 'E');
INSERT INTO `ey_region` VALUES ('47315', '沙湾县', '3', '47241', 'S');
INSERT INTO `ey_region` VALUES ('47338', '托里县', '3', '47241', 'T');
INSERT INTO `ey_region` VALUES ('47351', '裕民县', '3', '47241', 'Y');
INSERT INTO `ey_region` VALUES ('47360', '和布县', '3', '47241', 'H');
INSERT INTO `ey_region` VALUES ('47374', '阿勒泰地区', '2', '46047', 'A');
INSERT INTO `ey_region` VALUES ('47375', '阿勒泰市', '3', '47374', 'A');
INSERT INTO `ey_region` VALUES ('47393', '布尔津县', '3', '47374', 'B');
INSERT INTO `ey_region` VALUES ('47401', '富蕴县', '3', '47374', 'F');
INSERT INTO `ey_region` VALUES ('47411', '福海县', '3', '47374', 'F');
INSERT INTO `ey_region` VALUES ('47424', '哈巴河县', '3', '47374', 'H');
INSERT INTO `ey_region` VALUES ('47433', '青河县', '3', '47374', 'Q');
INSERT INTO `ey_region` VALUES ('47441', '吉木乃县', '3', '47374', 'J');
INSERT INTO `ey_region` VALUES ('47450', '省直辖行政单位', '2', '46047', 'S');
INSERT INTO `ey_region` VALUES ('47451', '石河子市', '3', '47450', 'S');
INSERT INTO `ey_region` VALUES ('47460', '阿拉尔市', '3', '47450', 'A');
INSERT INTO `ey_region` VALUES ('47477', '图木舒克市', '3', '47450', 'T');
INSERT INTO `ey_region` VALUES ('47486', '五家渠市', '3', '47450', 'W');
INSERT INTO `ey_region` VALUES ('47493', '台湾', '1', '0', 'T');
INSERT INTO `ey_region` VALUES ('47494', '香港', '1', '0', 'X');
INSERT INTO `ey_region` VALUES ('47495', '澳门', '1', '0', 'A');
INSERT INTO `ey_region` VALUES ('47496', '龙华新区', '3', '28558', 'L');
INSERT INTO `ey_region` VALUES ('47497', '光明新区', '3', '28558', 'G');
INSERT INTO `ey_region` VALUES ('47500', '新界', '2', '47494', 'X');
INSERT INTO `ey_region` VALUES ('47501', '观塘区', '3', '47498', 'G');
INSERT INTO `ey_region` VALUES ('47502', '黄大仙区', '3', '47498', 'H');
INSERT INTO `ey_region` VALUES ('47503', '九龙城区', '3', '47498', 'J');
INSERT INTO `ey_region` VALUES ('47504', '深水埗区', '3', '47498', 'S');
INSERT INTO `ey_region` VALUES ('47505', '油尖旺区', '3', '47498', 'Y');
INSERT INTO `ey_region` VALUES ('47506', '东区', '3', '47499', 'D');
INSERT INTO `ey_region` VALUES ('47507', '南区', '3', '47499', 'N');
INSERT INTO `ey_region` VALUES ('47508', '湾仔', '3', '47499', 'W');
INSERT INTO `ey_region` VALUES ('47509', '中西区', '3', '47499', 'Z');
INSERT INTO `ey_region` VALUES ('47510', '北区', '3', '47500', 'B');
INSERT INTO `ey_region` VALUES ('47511', '大埔区', '3', '47500', 'D');
INSERT INTO `ey_region` VALUES ('47512', '葵青区', '3', '47500', 'K');
INSERT INTO `ey_region` VALUES ('47513', '离岛区', '3', '47500', 'L');
INSERT INTO `ey_region` VALUES ('47514', '荃湾区', '3', '47500', 'Q');
INSERT INTO `ey_region` VALUES ('47515', '沙田区', '3', '47500', 'S');
INSERT INTO `ey_region` VALUES ('47516', '屯门区', '3', '47500', 'T');
INSERT INTO `ey_region` VALUES ('47517', '西贡区', '3', '47500', 'X');
INSERT INTO `ey_region` VALUES ('47518', '元朗区', '3', '47500', 'Y');
INSERT INTO `ey_region` VALUES ('47519', '澳门半岛', '2', '47495', 'A');
INSERT INTO `ey_region` VALUES ('47520', '离岛', '2', '47495', 'L');
INSERT INTO `ey_region` VALUES ('47521', '大堂区', '3', '47519', 'D');
INSERT INTO `ey_region` VALUES ('47522', '风顺堂区', '3', '47519', 'F');
INSERT INTO `ey_region` VALUES ('47523', '花地玛堂区', '3', '47519', 'H');
INSERT INTO `ey_region` VALUES ('47524', '花王堂区', '3', '47519', 'H');
INSERT INTO `ey_region` VALUES ('47525', '望德堂区', '3', '47519', 'W');
INSERT INTO `ey_region` VALUES ('47526', '嘉模堂区', '3', '47520', 'J');
INSERT INTO `ey_region` VALUES ('47527', '路氹填海区', '3', '47520', 'L');
INSERT INTO `ey_region` VALUES ('47528', '圣方济各堂区', '3', '47520', 'S');
INSERT INTO `ey_region` VALUES ('47529', '高雄市', '2', '47493', 'G');
INSERT INTO `ey_region` VALUES ('47530', '花莲县', '2', '47493', 'H');
INSERT INTO `ey_region` VALUES ('47531', '基隆市', '2', '47493', 'J');
INSERT INTO `ey_region` VALUES ('47532', '嘉义市', '2', '47493', 'J');
INSERT INTO `ey_region` VALUES ('47533', '嘉义县', '2', '47493', 'J');
INSERT INTO `ey_region` VALUES ('47534', '金门县', '2', '47493', 'J');
INSERT INTO `ey_region` VALUES ('47535', '连江县', '2', '47493', 'L');
INSERT INTO `ey_region` VALUES ('47536', '苗栗县', '2', '47493', 'M');
INSERT INTO `ey_region` VALUES ('47537', '南投县', '2', '47493', 'N');
INSERT INTO `ey_region` VALUES ('47538', '澎湖县', '2', '47493', 'P');
INSERT INTO `ey_region` VALUES ('47539', '屏东县', '2', '47493', 'P');
INSERT INTO `ey_region` VALUES ('47540', '台北市', '2', '47493', 'T');
INSERT INTO `ey_region` VALUES ('47541', '台东县', '2', '47493', 'T');
INSERT INTO `ey_region` VALUES ('47542', '台南市', '2', '47493', 'T');
INSERT INTO `ey_region` VALUES ('47543', '台中市', '2', '47493', 'T');
INSERT INTO `ey_region` VALUES ('47544', '桃园市', '2', '47493', 'T');
INSERT INTO `ey_region` VALUES ('47545', '新北市', '2', '47493', 'X');
INSERT INTO `ey_region` VALUES ('47546', '新竹市', '2', '47493', 'X');
INSERT INTO `ey_region` VALUES ('47547', '新竹县', '2', '47493', 'X');
INSERT INTO `ey_region` VALUES ('47548', '宜兰县', '2', '47493', 'Y');
INSERT INTO `ey_region` VALUES ('47549', '云林县', '2', '47493', 'Y');
INSERT INTO `ey_region` VALUES ('47550', '彰化县', '2', '47493', 'Z');
INSERT INTO `ey_region` VALUES ('47551', '阿莲区', '3', '47529', 'A');
INSERT INTO `ey_region` VALUES ('47552', '大寮区', '3', '47529', 'D');
INSERT INTO `ey_region` VALUES ('47553', '大社区', '3', '47529', 'D');
INSERT INTO `ey_region` VALUES ('47554', '大树区', '3', '47529', 'D');
INSERT INTO `ey_region` VALUES ('47555', '凤山区', '3', '47529', 'F');
INSERT INTO `ey_region` VALUES ('47556', '冈山区', '3', '47529', 'G');
INSERT INTO `ey_region` VALUES ('47557', '鼓山区', '3', '47529', 'G');
INSERT INTO `ey_region` VALUES ('47558', '湖内区', '3', '47529', 'H');
INSERT INTO `ey_region` VALUES ('47559', '甲仙区', '3', '47529', 'J');
INSERT INTO `ey_region` VALUES ('47560', '林园区', '3', '47529', 'L');
INSERT INTO `ey_region` VALUES ('47561', '苓雅区', '3', '47529', 'L');
INSERT INTO `ey_region` VALUES ('47562', '六龟区', '3', '47529', 'L');
INSERT INTO `ey_region` VALUES ('47563', '路竹区', '3', '47529', 'L');
INSERT INTO `ey_region` VALUES ('47564', '茂林区', '3', '47529', 'M');
INSERT INTO `ey_region` VALUES ('47565', '美浓区', '3', '47529', 'M');
INSERT INTO `ey_region` VALUES ('47566', '弥陀区', '3', '47529', 'M');
INSERT INTO `ey_region` VALUES ('47567', '楠梓区', '3', '47529', 'N');
INSERT INTO `ey_region` VALUES ('47568', '那玛夏区', '3', '47529', 'N');
INSERT INTO `ey_region` VALUES ('47569', '内门区', '3', '47529', 'N');
INSERT INTO `ey_region` VALUES ('47570', '鸟松区', '3', '47529', 'N');
INSERT INTO `ey_region` VALUES ('47571', '旗津区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47572', '旗门区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47573', '其它区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47574', '前金区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47575', '前镇区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47576', '桥头区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47577', '茄萣区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47578', '芩雅区', '3', '47529', 'Q');
INSERT INTO `ey_region` VALUES ('47579', '仁武区', '3', '47529', 'R');
INSERT INTO `ey_region` VALUES ('47580', '三民区', '3', '47529', 'S');
INSERT INTO `ey_region` VALUES ('47581', '杉林区', '3', '47529', 'S');
INSERT INTO `ey_region` VALUES ('47582', '桃源区', '3', '47529', 'T');
INSERT INTO `ey_region` VALUES ('47583', '田寮区', '3', '47529', 'T');
INSERT INTO `ey_region` VALUES ('47584', '小港区', '3', '47529', 'X');
INSERT INTO `ey_region` VALUES ('47585', '新兴区', '3', '47529', 'X');
INSERT INTO `ey_region` VALUES ('47586', '燕巢区', '3', '47529', 'Y');
INSERT INTO `ey_region` VALUES ('47587', '盐埕区', '3', '47529', 'Y');
INSERT INTO `ey_region` VALUES ('47588', '永安区', '3', '47529', 'Y');
INSERT INTO `ey_region` VALUES ('47589', '梓官区', '3', '47529', 'Z');
INSERT INTO `ey_region` VALUES ('47590', '左营区', '3', '47529', 'Z');
INSERT INTO `ey_region` VALUES ('47591', '丰滨乡', '3', '47530', 'F');
INSERT INTO `ey_region` VALUES ('47592', '凤林镇', '3', '47530', 'F');
INSERT INTO `ey_region` VALUES ('47593', '富里乡', '3', '47530', 'F');
INSERT INTO `ey_region` VALUES ('47594', '光复乡', '3', '47530', 'G');
INSERT INTO `ey_region` VALUES ('47595', '花莲市', '3', '47530', 'H');
INSERT INTO `ey_region` VALUES ('47596', '吉安乡', '3', '47530', 'J');
INSERT INTO `ey_region` VALUES ('47597', '瑞穗乡', '3', '47530', 'R');
INSERT INTO `ey_region` VALUES ('47598', '寿丰乡', '3', '47530', 'S');
INSERT INTO `ey_region` VALUES ('47599', '太鲁阁', '3', '47530', 'T');
INSERT INTO `ey_region` VALUES ('47600', '万荣乡', '3', '47530', 'W');
INSERT INTO `ey_region` VALUES ('47601', '新城乡', '3', '47530', 'X');
INSERT INTO `ey_region` VALUES ('47602', '秀林乡', '3', '47530', 'X');
INSERT INTO `ey_region` VALUES ('47603', '玉里镇', '3', '47530', 'Y');
INSERT INTO `ey_region` VALUES ('47604', '卓溪乡', '3', '47530', 'Z');
INSERT INTO `ey_region` VALUES ('47605', '安乐区', '3', '47531', 'A');
INSERT INTO `ey_region` VALUES ('47606', '暖暖区', '3', '47531', 'N');
INSERT INTO `ey_region` VALUES ('47607', '七堵区', '3', '47531', 'Q');
INSERT INTO `ey_region` VALUES ('47608', '其它区', '3', '47531', 'Q');
INSERT INTO `ey_region` VALUES ('47609', '仁爱区', '3', '47531', 'R');
INSERT INTO `ey_region` VALUES ('47610', '信义区', '3', '47531', 'X');
INSERT INTO `ey_region` VALUES ('47611', '中山区', '3', '47531', 'Z');
INSERT INTO `ey_region` VALUES ('47612', '中正区', '3', '47531', 'Z');
INSERT INTO `ey_region` VALUES ('47613', '东区', '3', '47532', 'D');
INSERT INTO `ey_region` VALUES ('47614', '西区', '3', '47532', 'X');
INSERT INTO `ey_region` VALUES ('47615', '其它区', '3', '47532', 'Q');
INSERT INTO `ey_region` VALUES ('47616', '阿里山乡', '3', '47533', 'A');
INSERT INTO `ey_region` VALUES ('47617', '布袋镇', '3', '47533', 'B');
INSERT INTO `ey_region` VALUES ('47618', '大林镇', '3', '47533', 'D');
INSERT INTO `ey_region` VALUES ('47619', '大埔乡', '3', '47533', 'D');
INSERT INTO `ey_region` VALUES ('47620', '东石乡', '3', '47533', 'D');
INSERT INTO `ey_region` VALUES ('47621', '番路乡', '3', '47533', 'F');
INSERT INTO `ey_region` VALUES ('47622', '六脚乡', '3', '47533', 'L');
INSERT INTO `ey_region` VALUES ('47623', '鹿草乡', '3', '47533', 'L');
INSERT INTO `ey_region` VALUES ('47624', '梅山乡', '3', '47533', 'M');
INSERT INTO `ey_region` VALUES ('47625', '民雄乡', '3', '47533', 'M');
INSERT INTO `ey_region` VALUES ('47626', '朴子市', '3', '47533', 'P');
INSERT INTO `ey_region` VALUES ('47627', '水上乡', '3', '47533', 'S');
INSERT INTO `ey_region` VALUES ('47628', '太保市', '3', '47533', 'T');
INSERT INTO `ey_region` VALUES ('47629', '溪口乡', '3', '47533', 'X');
INSERT INTO `ey_region` VALUES ('47630', '新港乡', '3', '47533', 'X');
INSERT INTO `ey_region` VALUES ('47631', '义竹乡', '3', '47533', 'Y');
INSERT INTO `ey_region` VALUES ('47632', '中埔乡', '3', '47533', 'Z');
INSERT INTO `ey_region` VALUES ('47633', '竹崎乡', '3', '47533', 'Z');
INSERT INTO `ey_region` VALUES ('47634', '金城镇', '3', '47534', 'J');
INSERT INTO `ey_region` VALUES ('47635', '金湖镇', '3', '47534', 'J');
INSERT INTO `ey_region` VALUES ('47636', '金宁乡', '3', '47534', 'J');
INSERT INTO `ey_region` VALUES ('47637', '金沙镇', '3', '47534', 'J');
INSERT INTO `ey_region` VALUES ('47638', '烈屿乡', '3', '47534', 'L');
INSERT INTO `ey_region` VALUES ('47639', '乌邱乡', '3', '47534', 'W');
INSERT INTO `ey_region` VALUES ('47640', '北竿乡', '3', '47535', 'B');
INSERT INTO `ey_region` VALUES ('47641', '东引乡', '3', '47535', 'D');
INSERT INTO `ey_region` VALUES ('47642', '莒光乡', '3', '47535', 'J');
INSERT INTO `ey_region` VALUES ('47643', '南竿乡', '3', '47535', 'N');
INSERT INTO `ey_region` VALUES ('47644', '大湖乡', '3', '47536', 'D');
INSERT INTO `ey_region` VALUES ('47645', '公馆乡', '3', '47536', 'G');
INSERT INTO `ey_region` VALUES ('47646', '后龙镇', '3', '47536', 'H');
INSERT INTO `ey_region` VALUES ('47647', '苗栗市', '3', '47536', 'M');
INSERT INTO `ey_region` VALUES ('47648', '南庄乡', '3', '47536', 'N');
INSERT INTO `ey_region` VALUES ('47649', '三湾乡', '3', '47536', 'S');
INSERT INTO `ey_region` VALUES ('47650', '三义乡', '3', '47536', 'S');
INSERT INTO `ey_region` VALUES ('47651', '狮潭乡', '3', '47536', 'S');
INSERT INTO `ey_region` VALUES ('47652', '泰安乡', '3', '47536', 'T');
INSERT INTO `ey_region` VALUES ('47653', '铜锣乡', '3', '47536', 'T');
INSERT INTO `ey_region` VALUES ('47654', '通宵镇', '3', '47536', 'T');
INSERT INTO `ey_region` VALUES ('47655', '头份镇', '3', '47536', 'T');
INSERT INTO `ey_region` VALUES ('47656', '头屋乡', '3', '47536', 'T');
INSERT INTO `ey_region` VALUES ('47657', '西湖乡', '3', '47536', 'X');
INSERT INTO `ey_region` VALUES ('47658', '苑里镇', '3', '47536', 'Y');
INSERT INTO `ey_region` VALUES ('47659', '造桥乡', '3', '47536', 'Z');
INSERT INTO `ey_region` VALUES ('47660', '竹南镇', '3', '47536', 'Z');
INSERT INTO `ey_region` VALUES ('47661', '卓兰镇', '3', '47536', 'Z');
INSERT INTO `ey_region` VALUES ('47662', '草屯镇', '3', '47537', 'C');
INSERT INTO `ey_region` VALUES ('47663', '国姓乡', '3', '47537', 'G');
INSERT INTO `ey_region` VALUES ('47664', '集集镇', '3', '47537', 'J');
INSERT INTO `ey_region` VALUES ('47665', '鹿谷乡', '3', '47537', 'L');
INSERT INTO `ey_region` VALUES ('47666', '名间乡', '3', '47537', 'M');
INSERT INTO `ey_region` VALUES ('47667', '南投市', '3', '47537', 'N');
INSERT INTO `ey_region` VALUES ('47668', '埔里镇', '3', '47537', 'P');
INSERT INTO `ey_region` VALUES ('47669', '仁爱乡', '3', '47537', 'R');
INSERT INTO `ey_region` VALUES ('47670', '水里乡', '3', '47537', 'S');
INSERT INTO `ey_region` VALUES ('47671', '信义乡', '3', '47537', 'X');
INSERT INTO `ey_region` VALUES ('47672', '鱼池乡', '3', '47537', 'Y');
INSERT INTO `ey_region` VALUES ('47673', '中寮乡', '3', '47537', 'Z');
INSERT INTO `ey_region` VALUES ('47674', '竹山镇', '3', '47537', 'Z');
INSERT INTO `ey_region` VALUES ('47675', '白沙乡', '3', '47538', 'B');
INSERT INTO `ey_region` VALUES ('47676', '湖西乡', '3', '47538', 'H');
INSERT INTO `ey_region` VALUES ('47677', '马公市', '3', '47538', 'M');
INSERT INTO `ey_region` VALUES ('47678', '七美乡', '3', '47538', 'Q');
INSERT INTO `ey_region` VALUES ('47679', '望安乡', '3', '47538', 'W');
INSERT INTO `ey_region` VALUES ('47680', '西屿乡', '3', '47538', 'X');
INSERT INTO `ey_region` VALUES ('47681', '长治乡', '3', '47539', 'C');
INSERT INTO `ey_region` VALUES ('47682', '潮州镇', '3', '47539', 'C');
INSERT INTO `ey_region` VALUES ('47683', '车城乡', '3', '47539', 'C');
INSERT INTO `ey_region` VALUES ('47684', '春日乡', '3', '47539', 'C');
INSERT INTO `ey_region` VALUES ('47685', '东港镇', '3', '47539', 'D');
INSERT INTO `ey_region` VALUES ('47686', '枋寮乡', '3', '47539', 'F');
INSERT INTO `ey_region` VALUES ('47687', '枋山乡', '3', '47539', 'F');
INSERT INTO `ey_region` VALUES ('47688', '高树乡', '3', '47539', 'G');
INSERT INTO `ey_region` VALUES ('47689', '恒春镇', '3', '47539', 'H');
INSERT INTO `ey_region` VALUES ('47690', '佳冬乡', '3', '47539', 'J');
INSERT INTO `ey_region` VALUES ('47691', '九如乡', '3', '47539', 'J');
INSERT INTO `ey_region` VALUES ('47692', '崁顶乡', '3', '47539', 'K');
INSERT INTO `ey_region` VALUES ('47693', '来义乡', '3', '47539', 'L');
INSERT INTO `ey_region` VALUES ('47694', '里港乡', '3', '47539', 'L');
INSERT INTO `ey_region` VALUES ('47695', '林边乡', '3', '47539', 'L');
INSERT INTO `ey_region` VALUES ('47696', '麟洛乡', '3', '47539', 'L');
INSERT INTO `ey_region` VALUES ('47697', '琉球乡', '3', '47539', 'L');
INSERT INTO `ey_region` VALUES ('47698', '玛家乡', '3', '47539', 'M');
INSERT INTO `ey_region` VALUES ('47699', '满州乡', '3', '47539', 'M');
INSERT INTO `ey_region` VALUES ('47700', '牡丹乡', '3', '47539', 'M');
INSERT INTO `ey_region` VALUES ('47701', '南州乡', '3', '47539', 'N');
INSERT INTO `ey_region` VALUES ('47702', '内埔乡', '3', '47539', 'N');
INSERT INTO `ey_region` VALUES ('47703', '屏东市', '3', '47539', 'P');
INSERT INTO `ey_region` VALUES ('47704', '三地门乡', '3', '47539', 'S');
INSERT INTO `ey_region` VALUES ('47705', '狮子乡', '3', '47539', 'S');
INSERT INTO `ey_region` VALUES ('47706', '泰武乡', '3', '47539', 'T');
INSERT INTO `ey_region` VALUES ('47707', '万丹乡', '3', '47539', 'W');
INSERT INTO `ey_region` VALUES ('47708', '万峦乡', '3', '47539', 'W');
INSERT INTO `ey_region` VALUES ('47709', '雾台乡', '3', '47539', 'W');
INSERT INTO `ey_region` VALUES ('47710', '新埤乡', '3', '47539', 'X');
INSERT INTO `ey_region` VALUES ('47711', '新园乡', '3', '47539', 'X');
INSERT INTO `ey_region` VALUES ('47712', '盐埔乡', '3', '47539', 'Y');
INSERT INTO `ey_region` VALUES ('47713', '竹田乡', '3', '47539', 'Z');
INSERT INTO `ey_region` VALUES ('47714', '北投区', '3', '47540', 'B');
INSERT INTO `ey_region` VALUES ('47715', '大安区', '3', '47540', 'D');
INSERT INTO `ey_region` VALUES ('47716', '大同区', '3', '47540', 'D');
INSERT INTO `ey_region` VALUES ('47717', '南港区', '3', '47540', 'N');
INSERT INTO `ey_region` VALUES ('47718', '内湖区', '3', '47540', 'N');
INSERT INTO `ey_region` VALUES ('47719', '士林区', '3', '47540', 'S');
INSERT INTO `ey_region` VALUES ('47720', '松山区', '3', '47540', 'S');
INSERT INTO `ey_region` VALUES ('47721', '万华区', '3', '47540', 'W');
INSERT INTO `ey_region` VALUES ('47722', '文山区', '3', '47540', 'W');
INSERT INTO `ey_region` VALUES ('47723', '信义区', '3', '47540', 'X');
INSERT INTO `ey_region` VALUES ('47724', '中山区', '3', '47540', 'Z');
INSERT INTO `ey_region` VALUES ('47725', '中正区', '3', '47540', 'Z');
INSERT INTO `ey_region` VALUES ('47726', '其它区', '3', '47540', 'Q');
INSERT INTO `ey_region` VALUES ('47727', '卑南乡', '3', '47541', 'B');
INSERT INTO `ey_region` VALUES ('47728', '长滨乡', '3', '47541', 'C');
INSERT INTO `ey_region` VALUES ('47729', '成功镇', '3', '47541', 'C');
INSERT INTO `ey_region` VALUES ('47730', '池上乡', '3', '47541', 'C');
INSERT INTO `ey_region` VALUES ('47731', '达仁乡', '3', '47541', 'D');
INSERT INTO `ey_region` VALUES ('47732', '大武乡', '3', '47541', 'D');
INSERT INTO `ey_region` VALUES ('47733', '东河乡', '3', '47541', 'D');
INSERT INTO `ey_region` VALUES ('47734', '关山镇', '3', '47541', 'G');
INSERT INTO `ey_region` VALUES ('47735', '海端乡', '3', '47541', 'H');
INSERT INTO `ey_region` VALUES ('47736', '金峰乡', '3', '47541', 'J');
INSERT INTO `ey_region` VALUES ('47737', '兰屿乡', '3', '47541', 'L');
INSERT INTO `ey_region` VALUES ('47738', '鹿野乡', '3', '47541', 'L');
INSERT INTO `ey_region` VALUES ('47739', '绿岛乡', '3', '47541', 'L');
INSERT INTO `ey_region` VALUES ('47740', '台东市', '3', '47541', 'T');
INSERT INTO `ey_region` VALUES ('47741', '太麻里乡', '3', '47541', 'T');
INSERT INTO `ey_region` VALUES ('47742', '延平乡', '3', '47541', 'Y');
INSERT INTO `ey_region` VALUES ('47743', '中西区', '3', '47542', 'Z');
INSERT INTO `ey_region` VALUES ('47744', '东区', '3', '47542', 'D');
INSERT INTO `ey_region` VALUES ('47745', '南区', '3', '47542', 'N');
INSERT INTO `ey_region` VALUES ('47746', '北区', '3', '47542', 'B');
INSERT INTO `ey_region` VALUES ('47747', '安平区', '3', '47542', 'A');
INSERT INTO `ey_region` VALUES ('47748', '安南区', '3', '47542', 'A');
INSERT INTO `ey_region` VALUES ('47749', '其它区', '3', '47542', 'Q');
INSERT INTO `ey_region` VALUES ('47750', '永康区', '3', '47542', 'Y');
INSERT INTO `ey_region` VALUES ('47751', '归仁区', '3', '47542', 'G');
INSERT INTO `ey_region` VALUES ('47752', '新化区', '3', '47542', 'X');
INSERT INTO `ey_region` VALUES ('47753', '左镇区', '3', '47542', 'Z');
INSERT INTO `ey_region` VALUES ('47754', '玉井区', '3', '47542', 'Y');
INSERT INTO `ey_region` VALUES ('47755', '楠西区', '3', '47542', 'N');
INSERT INTO `ey_region` VALUES ('47756', '南化区', '3', '47542', 'N');
INSERT INTO `ey_region` VALUES ('47757', '仁德区', '3', '47542', 'R');
INSERT INTO `ey_region` VALUES ('47758', '关庙区', '3', '47542', 'G');
INSERT INTO `ey_region` VALUES ('47759', '龙崎区', '3', '47542', 'L');
INSERT INTO `ey_region` VALUES ('47760', '官田区', '3', '47542', 'G');
INSERT INTO `ey_region` VALUES ('47761', '麻豆区', '3', '47542', 'M');
INSERT INTO `ey_region` VALUES ('47762', '佳里区', '3', '47542', 'J');
INSERT INTO `ey_region` VALUES ('47763', '西港区', '3', '47542', 'X');
INSERT INTO `ey_region` VALUES ('47764', '七股区', '3', '47542', 'Q');
INSERT INTO `ey_region` VALUES ('47765', '将军区', '3', '47542', 'J');
INSERT INTO `ey_region` VALUES ('47766', '学甲区', '3', '47542', 'X');
INSERT INTO `ey_region` VALUES ('47767', '北门区', '3', '47542', 'B');
INSERT INTO `ey_region` VALUES ('47768', '新营区', '3', '47542', 'X');
INSERT INTO `ey_region` VALUES ('47769', '后壁区', '3', '47542', 'H');
INSERT INTO `ey_region` VALUES ('47770', '白河区', '3', '47542', 'B');
INSERT INTO `ey_region` VALUES ('47771', '东山区', '3', '47542', 'D');
INSERT INTO `ey_region` VALUES ('47772', '六甲区', '3', '47542', 'L');
INSERT INTO `ey_region` VALUES ('47773', '下营区', '3', '47542', 'X');
INSERT INTO `ey_region` VALUES ('47774', '柳营区', '3', '47542', 'L');
INSERT INTO `ey_region` VALUES ('47775', '盐水区', '3', '47542', 'Y');
INSERT INTO `ey_region` VALUES ('47776', '善化区', '3', '47542', 'S');
INSERT INTO `ey_region` VALUES ('47777', '大内区', '3', '47542', 'D');
INSERT INTO `ey_region` VALUES ('47778', '山上区', '3', '47542', 'S');
INSERT INTO `ey_region` VALUES ('47779', '新市区', '3', '47542', 'X');
INSERT INTO `ey_region` VALUES ('47780', '安定区', '3', '47542', 'A');
INSERT INTO `ey_region` VALUES ('47781', '中区', '3', '47543', 'Z');
INSERT INTO `ey_region` VALUES ('47782', '东区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47783', '南区', '3', '47543', 'N');
INSERT INTO `ey_region` VALUES ('47784', '西区', '3', '47543', 'X');
INSERT INTO `ey_region` VALUES ('47785', '北区', '3', '47543', 'B');
INSERT INTO `ey_region` VALUES ('47786', '北屯区', '3', '47543', 'B');
INSERT INTO `ey_region` VALUES ('47787', '西屯区', '3', '47543', 'X');
INSERT INTO `ey_region` VALUES ('47788', '南屯区', '3', '47543', 'N');
INSERT INTO `ey_region` VALUES ('47789', '其它区', '3', '47543', 'Q');
INSERT INTO `ey_region` VALUES ('47790', '太平区', '3', '47543', 'T');
INSERT INTO `ey_region` VALUES ('47791', '大里区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47792', '雾峰区', '3', '47543', 'W');
INSERT INTO `ey_region` VALUES ('47793', '乌日区', '3', '47543', 'W');
INSERT INTO `ey_region` VALUES ('47794', '丰原区', '3', '47543', 'F');
INSERT INTO `ey_region` VALUES ('47795', '后里区', '3', '47543', 'H');
INSERT INTO `ey_region` VALUES ('47796', '石冈区', '3', '47543', 'S');
INSERT INTO `ey_region` VALUES ('47797', '东势区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47798', '和平区', '3', '47543', 'H');
INSERT INTO `ey_region` VALUES ('47799', '新社区', '3', '47543', 'X');
INSERT INTO `ey_region` VALUES ('47800', '潭子区', '3', '47543', 'T');
INSERT INTO `ey_region` VALUES ('47801', '大雅区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47802', '神冈区', '3', '47543', 'S');
INSERT INTO `ey_region` VALUES ('47803', '大肚区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47804', '沙鹿区', '3', '47543', 'S');
INSERT INTO `ey_region` VALUES ('47805', '龙井区', '3', '47543', 'L');
INSERT INTO `ey_region` VALUES ('47806', '梧栖区', '3', '47543', 'W');
INSERT INTO `ey_region` VALUES ('47807', '清水区', '3', '47543', 'Q');
INSERT INTO `ey_region` VALUES ('47808', '大甲区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47809', '外埔区', '3', '47543', 'W');
INSERT INTO `ey_region` VALUES ('47810', '大安区', '3', '47543', 'D');
INSERT INTO `ey_region` VALUES ('47811', '中坜区', '3', '47544', 'Z');
INSERT INTO `ey_region` VALUES ('47812', '平镇区', '3', '47544', 'P');
INSERT INTO `ey_region` VALUES ('47813', '龙潭区', '3', '47544', 'L');
INSERT INTO `ey_region` VALUES ('47814', '杨梅区', '3', '47544', 'Y');
INSERT INTO `ey_region` VALUES ('47815', '新屋区', '3', '47544', 'X');
INSERT INTO `ey_region` VALUES ('47816', '观音区', '3', '47544', 'G');
INSERT INTO `ey_region` VALUES ('47817', '桃园区', '3', '47544', 'T');
INSERT INTO `ey_region` VALUES ('47818', '龟山区', '3', '47544', 'G');
INSERT INTO `ey_region` VALUES ('47819', '八德区', '3', '47544', 'B');
INSERT INTO `ey_region` VALUES ('47820', '大溪区', '3', '47544', 'D');
INSERT INTO `ey_region` VALUES ('47821', '复兴区', '3', '47544', 'F');
INSERT INTO `ey_region` VALUES ('47822', '大园区', '3', '47544', 'D');
INSERT INTO `ey_region` VALUES ('47823', '芦竹区', '3', '47544', 'L');
INSERT INTO `ey_region` VALUES ('47824', '万里区', '3', '47545', 'W');
INSERT INTO `ey_region` VALUES ('47825', '金山区', '3', '47545', 'J');
INSERT INTO `ey_region` VALUES ('47826', '板桥区', '3', '47545', 'B');
INSERT INTO `ey_region` VALUES ('47827', '汐止区', '3', '47545', 'X');
INSERT INTO `ey_region` VALUES ('47828', '深坑区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47829', '石碇区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47830', '瑞芳区', '3', '47545', 'R');
INSERT INTO `ey_region` VALUES ('47831', '平溪区', '3', '47545', 'P');
INSERT INTO `ey_region` VALUES ('47832', '双溪区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47833', '贡寮区', '3', '47545', 'G');
INSERT INTO `ey_region` VALUES ('47834', '新店区', '3', '47545', 'X');
INSERT INTO `ey_region` VALUES ('47835', '坪林区', '3', '47545', 'P');
INSERT INTO `ey_region` VALUES ('47836', '乌来区', '3', '47545', 'W');
INSERT INTO `ey_region` VALUES ('47837', '永和区', '3', '47545', 'Y');
INSERT INTO `ey_region` VALUES ('47838', '中和区', '3', '47545', 'Z');
INSERT INTO `ey_region` VALUES ('47839', '土城区', '3', '47545', 'T');
INSERT INTO `ey_region` VALUES ('47840', '三峡区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47841', '树林区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47842', '莺歌区', '3', '47545', 'Y');
INSERT INTO `ey_region` VALUES ('47843', '三重区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47844', '新庄区', '3', '47545', 'X');
INSERT INTO `ey_region` VALUES ('47845', '泰山区', '3', '47545', 'T');
INSERT INTO `ey_region` VALUES ('47846', '林口区', '3', '47545', 'L');
INSERT INTO `ey_region` VALUES ('47847', '芦洲区', '3', '47545', 'L');
INSERT INTO `ey_region` VALUES ('47848', '五股区', '3', '47545', 'W');
INSERT INTO `ey_region` VALUES ('47849', '八里区', '3', '47545', 'B');
INSERT INTO `ey_region` VALUES ('47850', '淡水区', '3', '47545', 'D');
INSERT INTO `ey_region` VALUES ('47851', '三芝区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47852', '石门区', '3', '47545', 'S');
INSERT INTO `ey_region` VALUES ('47853', '东区', '3', '47546', 'D');
INSERT INTO `ey_region` VALUES ('47854', '北区', '3', '47546', 'B');
INSERT INTO `ey_region` VALUES ('47855', '香山区', '3', '47546', 'X');
INSERT INTO `ey_region` VALUES ('47856', '其它区', '3', '47546', 'Q');
INSERT INTO `ey_region` VALUES ('47857', '竹北市', '3', '47547', 'Z');
INSERT INTO `ey_region` VALUES ('47858', '湖口乡', '3', '47547', 'H');
INSERT INTO `ey_region` VALUES ('47859', '新丰乡', '3', '47547', 'X');
INSERT INTO `ey_region` VALUES ('47860', '新埔镇', '3', '47547', 'X');
INSERT INTO `ey_region` VALUES ('47861', '关西镇', '3', '47547', 'G');
INSERT INTO `ey_region` VALUES ('47862', '芎林乡', '3', '47547', 'X');
INSERT INTO `ey_region` VALUES ('47863', '宝山乡', '3', '47547', 'B');
INSERT INTO `ey_region` VALUES ('47864', '竹东镇', '3', '47547', 'Z');
INSERT INTO `ey_region` VALUES ('47865', '五峰乡', '3', '47547', 'W');
INSERT INTO `ey_region` VALUES ('47866', '横山乡', '3', '47547', 'H');
INSERT INTO `ey_region` VALUES ('47867', '尖石乡', '3', '47547', 'J');
INSERT INTO `ey_region` VALUES ('47868', '北埔乡', '3', '47547', 'B');
INSERT INTO `ey_region` VALUES ('47869', '峨眉乡', '3', '47547', 'E');
INSERT INTO `ey_region` VALUES ('47870', '宜兰市', '3', '47548', 'Y');
INSERT INTO `ey_region` VALUES ('47871', '头城镇', '3', '47548', 'T');
INSERT INTO `ey_region` VALUES ('47872', '礁溪乡', '3', '47548', 'J');
INSERT INTO `ey_region` VALUES ('47873', '壮围乡', '3', '47548', 'Z');
INSERT INTO `ey_region` VALUES ('47874', '员山乡', '3', '47548', 'Y');
INSERT INTO `ey_region` VALUES ('47875', '罗东镇', '3', '47548', 'L');
INSERT INTO `ey_region` VALUES ('47876', '三星乡', '3', '47548', 'S');
INSERT INTO `ey_region` VALUES ('47877', '大同乡', '3', '47548', 'D');
INSERT INTO `ey_region` VALUES ('47878', '五结乡', '3', '47548', 'W');
INSERT INTO `ey_region` VALUES ('47879', '冬山乡', '3', '47548', 'D');
INSERT INTO `ey_region` VALUES ('47880', '苏澳镇', '3', '47548', 'S');
INSERT INTO `ey_region` VALUES ('47881', '南澳乡', '3', '47548', 'N');
INSERT INTO `ey_region` VALUES ('47882', '钓鱼台', '3', '47548', 'D');
INSERT INTO `ey_region` VALUES ('47883', '斗南镇', '3', '47549', 'D');
INSERT INTO `ey_region` VALUES ('47884', '大埤乡', '3', '47549', 'D');
INSERT INTO `ey_region` VALUES ('47885', '虎尾镇', '3', '47549', 'H');
INSERT INTO `ey_region` VALUES ('47886', '土库镇', '3', '47549', 'T');
INSERT INTO `ey_region` VALUES ('47887', '褒忠乡', '3', '47549', 'B');
INSERT INTO `ey_region` VALUES ('47888', '东势乡', '3', '47549', 'D');
INSERT INTO `ey_region` VALUES ('47889', '台西乡', '3', '47549', 'T');
INSERT INTO `ey_region` VALUES ('47890', '仑背乡', '3', '47549', 'L');
INSERT INTO `ey_region` VALUES ('47891', '麦寮乡', '3', '47549', 'M');
INSERT INTO `ey_region` VALUES ('47892', '斗六市', '3', '47549', 'D');
INSERT INTO `ey_region` VALUES ('47893', '林内乡', '3', '47549', 'L');
INSERT INTO `ey_region` VALUES ('47894', '古坑乡', '3', '47549', 'G');
INSERT INTO `ey_region` VALUES ('47895', '莿桐乡', '3', '47549', 'C');
INSERT INTO `ey_region` VALUES ('47896', '西螺镇', '3', '47549', 'X');
INSERT INTO `ey_region` VALUES ('47897', '二仑乡', '3', '47549', 'E');
INSERT INTO `ey_region` VALUES ('47898', '北港镇', '3', '47549', 'B');
INSERT INTO `ey_region` VALUES ('47899', '水林乡', '3', '47549', 'S');
INSERT INTO `ey_region` VALUES ('47900', '口湖乡', '3', '47549', 'K');
INSERT INTO `ey_region` VALUES ('47901', '四湖乡', '3', '47549', 'S');
INSERT INTO `ey_region` VALUES ('47902', '元长乡', '3', '47549', 'Y');
INSERT INTO `ey_region` VALUES ('47903', '彰化市', '3', '47550', 'Z');
INSERT INTO `ey_region` VALUES ('47904', '芬园乡', '3', '47550', 'F');
INSERT INTO `ey_region` VALUES ('47905', '花坛乡', '3', '47550', 'H');
INSERT INTO `ey_region` VALUES ('47906', '秀水乡', '3', '47550', 'X');
INSERT INTO `ey_region` VALUES ('47907', '鹿港镇', '3', '47550', 'L');
INSERT INTO `ey_region` VALUES ('47908', '福兴乡', '3', '47550', 'F');
INSERT INTO `ey_region` VALUES ('47909', '线西乡', '3', '47550', 'X');
INSERT INTO `ey_region` VALUES ('47910', '和美镇', '3', '47550', 'H');
INSERT INTO `ey_region` VALUES ('47911', '伸港乡', '3', '47550', 'S');
INSERT INTO `ey_region` VALUES ('47912', '员林镇', '3', '47550', 'Y');
INSERT INTO `ey_region` VALUES ('47913', '社头乡', '3', '47550', 'S');
INSERT INTO `ey_region` VALUES ('47914', '永靖乡', '3', '47550', 'Y');
INSERT INTO `ey_region` VALUES ('47915', '埔心乡', '3', '47550', 'P');
INSERT INTO `ey_region` VALUES ('47916', '溪湖镇', '3', '47550', 'X');
INSERT INTO `ey_region` VALUES ('47917', '大村乡', '3', '47550', 'D');
INSERT INTO `ey_region` VALUES ('47918', '埔盐乡', '3', '47550', 'P');
INSERT INTO `ey_region` VALUES ('47919', '田中镇', '3', '47550', 'T');
INSERT INTO `ey_region` VALUES ('47920', '北斗镇', '3', '47550', 'B');
INSERT INTO `ey_region` VALUES ('47921', '田尾乡', '3', '47550', 'T');
INSERT INTO `ey_region` VALUES ('47922', '埤头乡', '3', '47550', 'P');
INSERT INTO `ey_region` VALUES ('47923', '溪州乡', '3', '47550', 'X');
INSERT INTO `ey_region` VALUES ('47924', '竹塘乡', '3', '47550', 'Z');
INSERT INTO `ey_region` VALUES ('47925', '二林镇', '3', '47550', 'E');
INSERT INTO `ey_region` VALUES ('47926', '大城乡', '3', '47550', 'D');
INSERT INTO `ey_region` VALUES ('47927', '芳苑乡', '3', '47550', 'F');
INSERT INTO `ey_region` VALUES ('47928', '二水乡', '3', '47550', 'E');
INSERT INTO `ey_region` VALUES ('47929', '莲池区', '3', '1772', 'L');
INSERT INTO `ey_region` VALUES ('47930', '竞秀区', '3', '1772', 'J');
INSERT INTO `ey_region` VALUES ('47931', '常平镇', '3', '29855', 'C');
INSERT INTO `ey_region` VALUES ('47932', '茶山镇', '3', '29855', 'C');
INSERT INTO `ey_region` VALUES ('47933', '大朗镇', '3', '29855', 'D');
INSERT INTO `ey_region` VALUES ('47934', '大岭山镇', '3', '29855', 'D');
INSERT INTO `ey_region` VALUES ('47935', '道滘镇', '3', '29855', 'D');
INSERT INTO `ey_region` VALUES ('47936', '东城街道', '3', '29855', 'D');
INSERT INTO `ey_region` VALUES ('47937', '东坑镇', '3', '29855', 'D');
INSERT INTO `ey_region` VALUES ('47938', '凤岗镇', '3', '29855', 'F');
INSERT INTO `ey_region` VALUES ('47939', '高埗镇', '3', '29855', 'G');
INSERT INTO `ey_region` VALUES ('47940', '莞城街道', '3', '29855', 'G');
INSERT INTO `ey_region` VALUES ('47941', '横沥镇', '3', '29855', 'H');
INSERT INTO `ey_region` VALUES ('47942', '洪梅镇', '3', '29855', 'H');
INSERT INTO `ey_region` VALUES ('47943', '厚街镇', '3', '29855', 'H');
INSERT INTO `ey_region` VALUES ('47944', '黄江镇', '3', '29855', 'H');
INSERT INTO `ey_region` VALUES ('47945', '虎门镇', '3', '29855', 'H');
INSERT INTO `ey_region` VALUES ('47946', '寮步镇', '3', '29855', 'L');
INSERT INTO `ey_region` VALUES ('47947', '麻涌镇', '3', '29855', 'M');
INSERT INTO `ey_region` VALUES ('47948', '南城街道', '3', '29855', 'N');
INSERT INTO `ey_region` VALUES ('47949', '桥头镇', '3', '29855', 'Q');
INSERT INTO `ey_region` VALUES ('47950', '清溪镇', '3', '29855', 'Q');
INSERT INTO `ey_region` VALUES ('47951', '企石镇', '3', '29855', 'Q');
INSERT INTO `ey_region` VALUES ('47952', '沙田镇', '3', '29855', 'S');
INSERT INTO `ey_region` VALUES ('47953', '石碣镇', '3', '29855', 'S');
INSERT INTO `ey_region` VALUES ('47954', '石龙镇', '3', '29855', 'S');
INSERT INTO `ey_region` VALUES ('47955', '石排镇', '3', '29855', 'S');
INSERT INTO `ey_region` VALUES ('47956', '松山湖管委会', '3', '29855', 'S');
INSERT INTO `ey_region` VALUES ('47957', '塘厦镇', '3', '29855', 'T');
INSERT INTO `ey_region` VALUES ('47958', '望牛墩镇', '3', '29855', 'W');
INSERT INTO `ey_region` VALUES ('47959', '万江街道', '3', '29855', 'W');
INSERT INTO `ey_region` VALUES ('47960', '谢岗镇', '3', '29855', 'X');
INSERT INTO `ey_region` VALUES ('47961', '长安镇', '3', '29855', 'Z');
INSERT INTO `ey_region` VALUES ('47962', '樟木头镇', '3', '29855', 'Z');
INSERT INTO `ey_region` VALUES ('47963', '中堂镇', '3', '29855', 'Z');

-- -----------------------------
-- Table structure for `ey_search_word`
-- -----------------------------
DROP TABLE IF EXISTS `ey_search_word`;
CREATE TABLE `ey_search_word` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `word` varchar(50) DEFAULT '' COMMENT '关键词',
  `searchNum` int(10) DEFAULT '1' COMMENT '搜索次数',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `word` (`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='搜索词统计表';


-- -----------------------------
-- Table structure for `ey_setting`
-- -----------------------------
DROP TABLE IF EXISTS `ey_setting`;
CREATE TABLE `ey_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT '' COMMENT '配置的key键名',
  `value` text,
  `inc_type` varchar(64) DEFAULT '' COMMENT '配置分组',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `inc_type` (`inc_type`,`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='系统非全局配置表';

-- -----------------------------
-- Records of `ey_setting`
-- -----------------------------
INSERT INTO `ey_setting` VALUES ('1', 'ask_ques_steps', '1、写问题标题，描述具体现象。杜绝 “求救，大佬，小白…” 等和问题无关的词汇。\r\n2、选择问题的分类，选择正确的内容分类，能更快的得到其他人的回复。\r\n3、遇到的问题比较急需解决，可以给问题悬赏一定的金额报酬，能让更多同行参与进来出谋策划，从中选择自己心仪的答案。\r\n4、写问题内容详细描述你碰到的困难，写清楚你尝试了什么方法，错误代码，软件的版本等，更容易得到答案。\r\n5、点击发布。', 'ask', 'cn', '1638405553');
INSERT INTO `ey_setting` VALUES ('2', 'system_old_product_attr', '1', 'system', 'cn', '1638405553');
INSERT INTO `ey_setting` VALUES ('3', 'syn_admin_logic_1623377269', '1', 'syn', 'cn', '1638405553');
INSERT INTO `ey_setting` VALUES ('4', 'syn_admin_logic_1625725290', '1', 'syn', 'cn', '1638405553');
INSERT INTO `ey_setting` VALUES ('5', 'syn_admin_logic_1629252424', '1', 'syn', 'cn', '1638405553');
INSERT INTO `ey_setting` VALUES ('6', 'admin_logic_1634204189', '1', 'syn', 'cn', '1638405554');
INSERT INTO `ey_setting` VALUES ('7', 'admin_logic_1634280892', '1', 'syn', 'cn', '1638405554');
INSERT INTO `ey_setting` VALUES ('8', 'admin_logic_1635326854', '1', 'syn', 'cn', '1638405554');
INSERT INTO `ey_setting` VALUES ('9', 'admin_logic_1635389623', '1', 'syn', 'cn', '1638405554');

-- -----------------------------
-- Table structure for `ey_sharp_active`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sharp_active`;
CREATE TABLE `ey_sharp_active` (
  `active_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '活动会场ID',
  `active_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '活动日期',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '活动状态(0禁用 1启用)',
  `is_del` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`active_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='整点秒杀-活动会场表';


-- -----------------------------
-- Table structure for `ey_sharp_active_goods`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sharp_active_goods`;
CREATE TABLE `ey_sharp_active_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `active_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '活动会场ID',
  `active_time_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '活动场次ID',
  `aid` int(11) NOT NULL DEFAULT '0' COMMENT '文档id',
  `sharp_goods_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀商品ID',
  `sales_actual` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '实际销量',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='整点秒杀-活动会场与商品关联表';


-- -----------------------------
-- Table structure for `ey_sharp_active_time`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sharp_active_time`;
CREATE TABLE `ey_sharp_active_time` (
  `active_time_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '场次ID',
  `active_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '活动会场ID',
  `active_time` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '场次时间(0点-23点)',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '活动状态(0禁用 1启用)',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`active_time_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='整点秒杀-活动会场场次表';


-- -----------------------------
-- Table structure for `ey_sharp_goods`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sharp_goods`;
CREATE TABLE `ey_sharp_goods` (
  `sharp_goods_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '秒杀商品ID',
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID->aid',
  `limit` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '限购数量',
  `seckill_stock` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '秒杀商品库存总量',
  `seckill_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '秒杀价格',
  `sales` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '累积销量',
  `virtual_sales` tinyint(3) NOT NULL DEFAULT '0' COMMENT '虚拟销量',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '商品排序(数字越小越靠前)',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '商品状态(0下架 1上架)',
  `is_del` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  `is_sku` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-多规格商品',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`sharp_goods_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='整点秒杀-商品表';


-- -----------------------------
-- Table structure for `ey_sharp_setting`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sharp_setting`;
CREATE TABLE `ey_sharp_setting` (
  `key` varchar(30) NOT NULL DEFAULT '' COMMENT '设置项标示',
  `describe` varchar(255) NOT NULL DEFAULT '' COMMENT '设置项描述',
  `values` mediumtext NOT NULL COMMENT '设置内容(json格式)',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  UNIQUE KEY `unique_key` (`key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='整点秒杀设置表';


-- -----------------------------
-- Table structure for `ey_shop_address`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_address`;
CREATE TABLE `ey_shop_address` (
  `addr_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `consignee` varchar(60) NOT NULL DEFAULT '' COMMENT '收货人',
  `country` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家',
  `province` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `district` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '县区',
  `address` varchar(500) NOT NULL DEFAULT '' COMMENT '详细地址',
  `zipcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮政编码',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '是否默认，0否，1是。',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`addr_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收货地址表';


-- -----------------------------
-- Table structure for `ey_shop_cart`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_cart`;
CREATE TABLE `ey_shop_cart` (
  `cart_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '购物车表',
  `users_id` int(10) unsigned DEFAULT '0' COMMENT '会员id',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT '产品id',
  `product_num` int(10) unsigned DEFAULT '0' COMMENT '购买数量',
  `spec_value_id` varchar(100) DEFAULT '' COMMENT '规格值ID',
  `selected` tinyint(1) DEFAULT '1' COMMENT '购物车选中状态：0未选中，1选中',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '加入购物车的时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`cart_id`),
  KEY `users_id` (`users_id`,`product_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='购物车表';


-- -----------------------------
-- Table structure for `ey_shop_coupon`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_coupon`;
CREATE TABLE `ey_shop_coupon` (
  `coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `coupon_code` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券编号',
  `coupon_name` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `coupon_color` varchar(25) NOT NULL DEFAULT '' COMMENT '优惠券颜色',
  `coupon_form` tinyint(1) NOT NULL DEFAULT '1' COMMENT '优惠券类型 1-满减券',
  `coupon_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '可使用商品(1全站通用，2指定商品，3指定商品分类)',
  `product_id` varchar(255) NOT NULL DEFAULT '' COMMENT '指定商品ID，在coupon_type=2时使用',
  `arctype_id` varchar(255) NOT NULL DEFAULT '' COMMENT '指定商品分类ID，在coupon_type=3时使用',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '优惠券金额，例如10',
  `conditions_use` varchar(10) NOT NULL DEFAULT '' COMMENT '优惠券使用条件，例如300',
  `coupon_stock` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券库存，例如100',
  `redeem_points` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换优惠券所需积分，为0则表示免费兑换',
  `redeem_authority` varchar(10) NOT NULL DEFAULT '' COMMENT '兑换权限，存入多个会员等级组ID',
  `valid_days` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '有效天数，例如30',
  `start_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券开放领取时间',
  `end_date` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券结束领取时间',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '规格排序号',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '优惠券状态(0=关闭，1=开启)',
  `use_type` int(1) NOT NULL DEFAULT '1' COMMENT '使用期限 \r\n1-固定日期\r\n 2-领取后当天开始N(valid_days)天内有效\r\n 2-领取后次日开始N(valid_days)天内有效',
  `use_start_time` int(11) NOT NULL COMMENT '使用期限开始时间',
  `use_end_time` int(11) NOT NULL COMMENT '使用期限结束时间',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '0-未删除 1-已删除',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`coupon_id`),
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `arctype_id` (`arctype_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券主表';


-- -----------------------------
-- Table structure for `ey_shop_coupon_use`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_coupon_use`;
CREATE TABLE `ey_shop_coupon_use` (
  `use_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `users_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `coupon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券ID',
  `coupon_code` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券编号',
  `get_ip` varchar(15) NOT NULL DEFAULT '' COMMENT '领取时的IP地址',
  `get_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券领取时的时间',
  `use_status` tinyint(4) unsigned NOT NULL DEFAULT '1' COMMENT '优惠券使用状态(0未使用，1已使用，2已过期，3已冻结)',
  `use_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券使用时的时间',
  `start_time` int(10) NOT NULL DEFAULT '0' COMMENT '优惠券有效开始时间',
  `end_time` int(10) NOT NULL DEFAULT '0' COMMENT '优惠券有效结束时间',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`use_id`),
  KEY `coupon_id` (`coupon_id`) USING BTREE,
  KEY `coupon_code` (`coupon_code`) USING BTREE,
  KEY `users_id` (`users_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='优惠券-领取记录表';


-- -----------------------------
-- Table structure for `ey_shop_express`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_express`;
CREATE TABLE `ey_shop_express` (
  `express_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `express_code` varchar(32) NOT NULL DEFAULT '' COMMENT '物流code',
  `express_name` varchar(32) NOT NULL DEFAULT '' COMMENT '物流名称',
  `express_lnitials` varchar(5) DEFAULT '' COMMENT '首字母',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`express_id`)
) ENGINE=MyISAM AUTO_INCREMENT=596 DEFAULT CHARSET=utf8 COMMENT='快递公司表';

-- -----------------------------
-- Records of `ey_shop_express`
-- -----------------------------
INSERT INTO `ey_shop_express` VALUES ('1', 'yuantong', '圆通快递', 'Y', '97', '1553911076', '1554974797');
INSERT INTO `ey_shop_express` VALUES ('2', 'shentong', '申通快递', 'S', '98', '1553911076', '1554974707');
INSERT INTO `ey_shop_express` VALUES ('3', 'shunfeng', '顺丰快递', 'S', '98', '1553911076', '1554974710');
INSERT INTO `ey_shop_express` VALUES ('4', 'yunda', '韵达快递', 'Y', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('5', 'debangwuliu', '德邦快递', 'D', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('6', 'zhongtong', '中通快递', 'Z', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('7', 'huitongkuaidi', '百世快递', 'B', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('8', 'youzhengguonei', '邮政包裹', 'Y', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('9', 'ems', 'EMS', 'E', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('10', 'youzhengguoji', '邮政国际', 'Y', '99', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('11', 'aolau', 'AOL澳通速递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('12', 'a2u', 'A2U速递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('13', 'aae', 'AAE快递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('14', 'annengwuliu', '安能物流', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('15', 'anxl', '安迅物流', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('16', 'auexpress', '澳邮中国快运', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('17', 'exfresh', '安鲜达', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('18', 'anjie88', '安捷物流', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('19', 'adodoxm', '澳多多国际速递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('20', 'ariesfar', '艾瑞斯远', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('21', 'qdants', 'ANTS EXPRESS', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('22', 'astexpress', '安世通快递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('23', 'gda', '安的快递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('24', 'ausexpress', '澳世速递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('25', 'ibuy8', '爱拜物流', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('26', 'aplusex', 'Aplus物流', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('27', 'adapost', '安达速递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('28', 'adiexpress', '安达易国际速递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('29', 'maxeedexpress', '澳洲迈速快递', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('30', 'onway', '昂威物流', 'A', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('31', 'bcwelt', 'BCWELT', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('32', 'balunzhi', '巴伦支快递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('33', 'xiaohongmao', '北青小红帽', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('34', 'bfdf', '百福东方物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('35', 'bangsongwuliu', '邦送物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('36', 'lbbk', '宝凯物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('37', 'bqcwl', '百千诚物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('38', 'idada', '百成大达物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('39', 'baishiwuliu', '百世快运', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('40', 'baitengwuliu', '百腾物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('41', 'birdex', '笨鸟海淘', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('42', 'bsht', '百事亨通', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('43', 'benteng', '奔腾物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('44', 'cuckooexpess', '布谷鸟速递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('45', 'bgky100', '邦工快运', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('46', 'bosind', '堡昕德速递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('47', 'banma', '斑马物联网', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('48', 'polarisexpress', '北极星快运', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('49', 'beijingfengyue', '北京丰越供应链', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('50', 'europe8', '败欧洲', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('51', 'bmlchina', '标杆物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('52', 'comexpress', '邦通国际', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('53', 'baotongkd', '宝通快递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('54', 'beckygo', '佰麒快递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('55', 'boyol', '贝业物流', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('56', 'bdatong', '八达通快递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('57', 'bangbangpost', '帮帮发', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('58', 'baoxianda', '报通快递', 'B', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('59', 'coe', '中国东方(COE)', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('60', 'cloudexpress', 'CE易欧通国际速递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('61', 'city100', '城市100', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('62', 'chuanxiwuliu', '传喜物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('63', 'chengjisudi', '城际速递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('64', 'lijisong', '立即送', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('65', 'chukou1', '出口易', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('66', 'nanjingshengbang', '晟邦物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('67', 'flyway', '程光快递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('68', 'cbo56', '钏博物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('69', 'cex', '城铁速递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('70', 'cnup', 'CNUP 中联邮', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('71', 'clsp', 'CL日中速运', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('72', 'cnair', 'CNAIR', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('73', 'cangspeed', '仓鼠快递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('74', 'spring56', '春风物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('75', 'cunto', '村通快递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('76', 'longvast', '长风物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('77', 'changjiang', '长江国际速递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('78', 'cncexp', 'C&C国际速递', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('79', 'parcelchina', '诚一物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('80', 'chengtong', '城通物流', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('81', 'otpexpress', '承诺达', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('82', 'sfpost', '曹操到', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('83', 'changwooair', '昌宇国际', 'C', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('84', 'dhl', 'DHL快递（中国件）', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('85', 'dhlen', 'DHL（国际件）', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('86', 'dhlde', 'DHL（德国件）', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('87', 'dtwl', '大田物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('88', 'disifang', '递四方', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('89', 'dayangwuliu', '大洋物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('90', 'dechuangwuliu', '德创物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('91', 'dskd', 'D速物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('92', 'donghanwl', '东瀚物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('93', 'dfpost', '达方物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('94', 'dongjun', '东骏快捷物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('95', 'dindon', '叮咚澳洲转运', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('96', 'dazhong', '大众佐川急便', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('97', 'ahdf', '德方物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('98', 'dehaoyi', '德豪驿', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('99', 'dhlpaket', 'DHL Paket', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('100', 'ubuy', '德国优拜物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('101', 'adlerlogi', '德国雄鹰速递', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('102', 'yunexpress', '德国云快递', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('103', 'di5pll', '递五方云仓', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('104', 'deguo8elog', '德国八易转运', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('105', 'camekong', '到了港', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('106', 'dbstation', 'db-station', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('107', 'dadaoex', '大道物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('108', 'dekuncn', '德坤物流', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('109', 'twkd56', '缔惠盛合', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('110', 'gslexpress', '德尚国际速递', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('111', 'eucpost', '德国 EUC POST', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('112', 'est365', '东方汇', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('113', 'ecotransite', '东西E全运', 'D', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('114', 'euexpress', 'EU-EXPRESS', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('115', 'emsguoji', 'EMS国际快递查询', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('116', 'eshunda', '俄顺达', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('117', 'ewe', 'EWE全球快递', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('118', 'easyexpress', 'EASYEXPRESS国际速递', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('119', 'edtexpress', 'e直运', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('120', 'ecallturn', 'E跨通', 'E', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('121', 'fedex', 'FedEx快递查询', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('122', 'fedexus', 'FedEx（美国）', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('123', 'fox', 'FOX国际速递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('124', 'rufengda', '如风达快递', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('125', 'fkd', '飞康达物流', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('126', 'feibaokuaidi', '飞豹快递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('127', 'fandaguoji', '颿达国际', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('128', 'feiyuanvipshop', '飞远配送', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('129', 'hnfy', '飞鹰物流', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('130', 'fengxingtianxia', '风行天下', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('131', 'flysman', '飞力士物流', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('132', 'fbkd', '飞邦快递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('133', 'sccod', '丰程物流', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('134', 'crazyexpress', '疯狂快递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('135', 'ftlexpress', '法翔速运', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('136', 'ftd', '富腾达快递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('137', 'arkexpress', '方舟国际速递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('138', 'fedroad', 'FedRoad 联邦转运', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('139', 'freakyquick', 'FQ狂派速递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('140', 'fecobv', '丰客物流', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('141', 'fyex', '飞云快递系统', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('142', 'beebird', '锋鸟物流', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('143', 'shipgce', '飞洋快递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('144', 'koali', '番薯国际货运', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('145', 'epanex', '泛捷国际速递', 'F', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('146', 'gaticn', 'GATI快递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('147', 'gts', 'GTS快递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('148', 'guotongkuaidi', '国通快递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('149', 'ndkd', '能达速递', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('150', 'gongsuda', '共速达', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('151', 'gtongsudi', '广通速递（山东）', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('152', 'suteng', '速腾物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('153', 'gdkd', '港快速递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('154', 'hre', '高铁速递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('155', 'gscq365', '哥士传奇速递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('156', 'gjwl', '冠捷物流', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('157', 'xdshipping', '国晶物流', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('158', 'ge2d', 'GE2D跨境物流', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('159', 'gaotieex', '高铁快运', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('160', 'gansuandi', '甘肃安的快递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('161', 'gdct56', '广东诚通物流', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('162', 'ghtexpress', 'GHT物流', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('163', 'goldjet', '高捷快运', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('164', 'gtgogo', 'GT国际快运', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('165', 'gxwl', '光线速递', 'G', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('166', 'tdhy', '华宇物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('167', 'hl', '恒路物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('168', 'hlyex', '好来运快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('169', 'hebeijianhua', '河北建华', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('170', 'huaqikuaiyun', '华企快运', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('171', 'haosheng', '昊盛物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('172', 'hutongwuliu', '户通物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('173', 'hzpl', '华航快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('174', 'huangmajia', '黄马甲快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('175', 'ucs', '合众速递（UCS）', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('176', 'pfcexpress', '皇家物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('177', 'huoban', '伙伴物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('178', 'nedahm', '红马速递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('179', 'huiwen', '汇文配送', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('180', 'nmhuahe', '华赫物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('181', 'hjs', '猴急送', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('182', 'hangyu', '航宇快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('183', 'huilian', '辉联物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('184', 'huanqiu', '环球速运', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('185', 'htwd', '华通务达物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('186', 'hipito', '海派通', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('187', 'hqtd', '环球通达', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('188', 'airgtc', '航空快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('189', 'haoyoukuai', '好又快物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('190', 'ccd', '河南次晨达', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('191', 'hfwuxi', '和丰同城', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('192', 'higo', '黑狗物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('193', 'hyytes', '恒宇运通', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('194', 'hengrui56', '恒瑞物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('195', 'hangrui', '上海航瑞货运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('196', 'ghl', '环创物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('197', 'hnqst', '河南全速通', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('198', 'hitaoe', 'Hi淘易快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('199', 'hhair56', '华瀚快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('200', 'haimibuy', '海米派物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('201', 'ht22', '海淘物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('202', 'hivewms', '海沧无忧', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('203', 'hnht56', '鸿泰物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('204', 'hsgtsd', '海硕高铁速递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('205', 'hltop', '海联快递', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('206', 'hlkytj', '互联快运', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('207', 'haidaibao', '海带宝转运', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('208', 'flowerkd', '花瓣转运', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('209', 'heimao56', '黑猫速运', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('210', 'logistics', '華信物流WTO', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('211', 'hgy56', '环国运物流', 'H', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('212', 'iparcel', 'i-parcel', 'I', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('213', 'jjwl', '佳吉物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('214', 'jywl', '佳怡物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('215', 'jymwl', '加运美快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('216', 'jxd', '急先达物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('217', 'jgsd', '京广速递快件', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('218', 'jykd', '晋越快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('219', 'jd', '京东物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('220', 'jietekuaidi', '捷特快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('221', 'jiuyicn', '久易快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('222', 'jiuyescm', '九曳供应链', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('223', 'junfengguoji', '骏丰国际速递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('224', 'jiajiatong56', '佳家通', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('225', 'jrypex', '吉日优派', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('226', 'jinchengwuliu', '锦程国际物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('227', 'jgwl', '景光物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('228', 'pzhjst', '急顺通', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('229', 'ruexp', '捷网俄全通', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('230', 'jialidatong', '嘉里大通', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('231', 'jmjss', '金马甲', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('232', 'jiacheng', '佳成快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('233', 'jsexpress', '骏绅物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('234', 'hrex', '锦程快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('235', 'jieanda', '捷安达国际速递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('236', 'newsway', '家家通快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('237', 'mapleexpress', '今枫国际快运', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('238', 'jixiangyouau', '吉祥邮（澳洲）', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('239', 'jjx888', '佳捷翔物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('240', 'polarexpress', '极地快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('241', 'jiazhoumao', '加州猫速递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('242', 'juzhongda', '聚中大', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('243', 'jieborne', '捷邦物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('244', 'jxfex', '集先锋速递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('245', 'jiugong', '九宫物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('246', 'jiujiuwl', '久久物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('247', 'jintongkd', '劲通快递', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('248', 'jcsuda', '嘉诚速达', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('249', 'jingshun', '景顺物流', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('250', 'fastontime', '加拿大联通快运', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('251', 'khzto', '柬埔寨中通', 'J', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('252', 'kjkd', '快捷快递', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('253', 'kangliwuliu', '康力物流', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('254', 'kuayue', '跨越速运', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('255', 'kuaiyouda', '快优达速递', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('256', 'happylink', '开心快递', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('257', 'ksudi', '快速递', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('258', 'kyue', '跨跃国际', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('259', 'kfwnet', '快服务', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('260', 'kuai8', '快8速运', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('261', 'kuaidawuliu', '快达物流', 'K', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('262', 'lianb', '联邦快递（国内）', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('263', 'lhtwl', '联昊通物流', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('264', 'lb', '龙邦速递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('265', 'lejiedi', '乐捷递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('266', 'lanhukuaidi', '蓝弧快递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('267', 'ltexp', '乐天速递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('268', 'lutong', '鲁通快运', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('269', 'ledii', '乐递供应链', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('270', 'lundao', '论道国际物流', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('271', 'lasy56', '林安物流', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('272', 'lsexpress', '6LS EXPRESS', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('273', 'szuem', '联运通物流', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('274', 'blueskyexpress', '蓝天国际航空快递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('275', 'lfexpress', '龙枫国际速递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('276', 'gslhkd', '联合快递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('277', 'longfx', '龙飞祥快递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('278', 'luben', '陆本速递 LUBEN EXPRESS', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('279', 'unitedex', '联合速运', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('280', 'lbex', '龙邦物流', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('281', 'ltparcel', '联通快递', 'L', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('282', 'macroexpressco', 'ME物流', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('283', 'mh', '民航快递', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('284', 'meiguokuaidi', '美国快递', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('285', 'menduimen', '门对门', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('286', 'mingliangwuliu', '明亮物流', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('287', 'minbangsudi', '民邦速递', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('288', 'minshengkuaidi', '闽盛快递', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('289', 'yundaexus', '美国韵达', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('290', 'mchy', '木春货运', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('291', 'meiquick', '美快国际物流', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('292', 'valueway', '美通快递', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('293', 'cnmcpl', '马珂博逻', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('294', 'mailongdy', '迈隆递运', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('295', 'zsmhwl', '明辉物流', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('296', 'mosuda', '魔速达', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('297', 'meibang', '美邦国际快递', 'M', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('298', 'nuoyaao', '偌亚奥国际', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('299', 'nuoer', '诺尔国际物流', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('300', 'nell', '尼尔快递', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('301', 'ndwl', '南方传媒物流', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('302', 'canhold', '能装能送', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('303', 'wanjiatong', '宁夏万家通', 'N', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('304', 'nlebv', '欧亚专线', 'O', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('305', 'oborexpress', 'OBOR Express', 'O', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('306', 'pcaexpress', 'PCA Express', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('307', 'pingandatengfei', '平安达腾飞', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('308', 'peixingwuliu', '陪行物流', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('309', 'pengyuanexpress', '鹏远国际速递', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('310', 'postelbe', 'PostElbe', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('311', 'papascm', '啪啪供应链', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('312', 'bazirim', '皮牙子快递', 'P', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('313', 'qfkd', '全峰快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('314', 'qy', '全一快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('315', 'qrt', '全日通快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('316', 'qckd', '全晨快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('317', 'sevendays', '7天连锁物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('318', 'qbexpress', '秦邦快运', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('319', 'quanxintong', '全信通快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('320', 'quansutong', '全速通国际快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('321', 'qinyuan', '秦远物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('322', 'qichen', '启辰国际物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('323', 'quansu', '全速快运', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('324', 'qzx56', '全之鑫物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('325', 'qskdyxgs', '千顺快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('326', 'zqlwl', '青旅物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('327', 'quanchuan56', '全川物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('328', 'quantwl', '全通快运', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('329', 'yatexpress', '乾坤物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('330', 'guexp', '全联速运', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('331', 'bjqywl', '青云物流', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('332', 'signedexpress', '签收快递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('333', 'express7th', '7号速递', 'Q', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('334', 'riyuwuliu', '日昱物流', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('335', 'rfsd', '瑞丰速递', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('336', 'rrs', '日日顺物流', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('337', 'rytsd', '日益通速递', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('338', 'rrskx', '日日顺快线', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('339', 'gdrz58', '容智快运', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('340', 'rrthk', '日日通国际', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('341', 'homecourier', '如家国际快递', 'R', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('342', 'sewl', '速尔快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('343', 'haihongwangsong', '山东海红', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('344', 'sh', '盛辉物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('345', 'sfwl', '盛丰物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('346', 'shiyunkuaidi', '世运快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('347', 'shangda', '上大物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('348', 'stsd', '三态速递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('349', 'saiaodi', '赛澳递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('350', 'ewl', '申通E物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('351', 'shenganwuliu', '圣安物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('352', 'sxhongmajia', '山西红马甲', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('353', 'suijiawuliu', '穗佳物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('354', 'syjiahuier', '沈阳佳惠尔', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('355', 'shlindao', '上海林道货运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('356', 'sfift', '十方通物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('357', 'shunjiefengda', '顺捷丰达', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('358', 'subida', '速必达物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('359', 'stcd', '速通成达物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('360', 'stkd', '顺通快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('361', 'sendtochina', '速递中国', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('362', 'sihaiet', '四海快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('363', 'staky', '首通快运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('364', 'hnssd56', '顺时达物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('365', 'superb', 'Superb Grace', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('366', 'sfjhd', '圣飞捷快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('367', 'sofast56', '嗖一下同城快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('368', 's2c', 'S2C', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('369', 'chinasqk', 'SQK国际速递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('370', 'shunshid', '顺士达速运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('371', 'synship', 'SYNSHIP快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('372', 'shandiantu', '闪电兔', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('373', 'sdsy888', '首达速运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('374', 'sczpds', '速呈宅配', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('375', 'sureline', 'Sureline冠泰', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('376', 'stosolution', '申通国际', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('377', 'sycawl', '狮爱高铁物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('378', 'sxexpress', '三象速递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('379', 'shangqiao56', '商桥物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('380', 'shd56', '商海德物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('381', 'shenma', '神马快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('382', 'sihiexpress', '四海捷运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('383', 'superoz', '速配鸥翼', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('384', 'fastgoexpress', '速派快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('385', 'zjstky', '苏通快运', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('386', 'suning', '苏宁物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('387', 'shaoke', '捎客物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('388', 'sdto', '速达通跨境物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('389', 'sut56', '速通物流', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('390', 'sundarexpress', '顺达快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('391', 'sxjdfreight', '顺心捷达', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('392', 'shengtongscm', '盛通快递', 'S', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('393', 'tnt', 'TNT快递', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('394', 'tt', '天天快递', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('395', 'tianzong', '天纵物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('396', 'chinatzx', '同舟行物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('397', 'nntengda', '腾达速递', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('398', 'sd138', '泰国138', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('399', 'tongdaxing', '通达兴物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('400', 'tlky', '天联快运', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('401', 'ibenben', '途鲜物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('402', 'krtao', '淘韩国际快递', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('403', 'lntjs', '特急送', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('404', 'tny', 'TNY物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('405', 'djy56', '天翔东捷运', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('406', 'guoeryue', '天天快物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('407', 'tianma', '天马迅达', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('408', 'surpassgo', '天越物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('409', 'tianxiang', '天翔快递', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('410', 'tywl99', '天翼物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('411', 'shpost', '同城快寄', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('412', 'humpline', '驼峰国际', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('413', 'transrush', 'TransRush', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('414', 'tstexp', 'TST速运通', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('415', 'ctoexp', '泰国中通CTO', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('416', 'thaizto', '泰国中通ZTO', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('417', 'tswlcloud', '天使物流云', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('418', 'tzky', '铁中快运', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('419', 'tcxbthai', 'TCXB国际物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('420', 'taimek', '天美快递', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('421', 'taoplus', '淘布斯国际物流', 'T', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('422', 'ups', 'UPS快递查询', 'U', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('423', 'yskd', '优速快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('424', 'usps', 'USPS美国邮政', 'U', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('425', 'ueq', 'UEQ快递', 'U', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('426', 'uex', 'UEX国际物流', 'U', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('427', 'utaoscm', 'UTAO 优到', 'U', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('428', 'wxwl', '万象物流', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('429', 'weitepai', '微特派', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('430', 'wjwl', '万家物流', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('431', 'wanboex', '万博快递', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('432', 'wtdchina', '威时沛运', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('433', 'wzhaunyun', '微转运', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('434', 'gswtkd', '万通快递', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('435', 'wandougongzhu', '豌豆物流', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('436', 'wjkwl', '万家康物流', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('437', 'vps', '维普恩物流', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('438', 'wykjt', '51跨境通', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('439', 'wherexpess', '威盛快递', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('440', 'weilaimingtian', '未来明天快递', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('441', 'wdm', '万达美', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('442', 'wto56kj', '温通物流', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('443', '56kuaiyun', '五六快运', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('444', 'wowvip', '沃埃家', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('445', 'grivertek', '潍鸿', 'W', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('446', 'xbwl', '新邦物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('447', 'xfwl', '信丰物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('448', 'newegg', '新蛋物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('449', 'xianglongyuntong', '祥龙运通物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('450', 'xianchengliansudi', '西安城联速递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('451', 'xilaikd', '喜来快递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('452', 'xsrd', '鑫世锐达', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('453', 'xtb', '鑫通宝物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('454', 'xintianjie', '信天捷快递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('455', 'xaetc', '西安胜峰', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('456', 'xianfeng', '先锋快递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('457', 'sunspeedy', '新速航', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('458', 'xipost', '西邮寄', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('459', 'sinatone', '信联通', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('460', 'sunjex', '新杰物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('461', 'alog', '心怡物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('462', 'csxss', '新时速物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('463', 'xiangteng', '翔腾物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('464', 'westwing', '西翼物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('465', 'littlebearbear', '小熊物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('466', 'huanqiuabc', '中国香港环球快运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('467', 'xinning', '新宁物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('468', 'wlwex', '星空国际', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('469', 'yyexp', '西安运逸快递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('470', 'xiyoug', '西游寄', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('471', 'xlobo', 'xLobo', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('472', 'xunsuexpress', '迅速快递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('473', 'whgjkd', '香港伟豪国际物流', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('474', 'xyd666', '鑫远东速运', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('475', 'xdexpress', '迅达速递', 'X', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('476', 'ytkd', '运通快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('477', 'ycwl', '远成物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('478', 'yfsd', '亚风速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('479', 'yishunhang', '亿顺航', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('480', 'yfwl', '越丰物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('481', 'yad', '源安达快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('482', 'yfh', '原飞航物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('483', 'yinjiesudi', '银捷速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('484', 'yitongfeihong', '一统飞鸿', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('485', 'yuxinwuliu', '宇鑫物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('486', 'yitongda', '易通达', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('487', 'youbijia', '邮必佳', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('488', 'yiqiguojiwuliu', '一柒物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('489', 'yinsu', '音素快运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('490', 'yilingsuyun', '亿领速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('491', 'yujiawuliu', '煜嘉物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('492', 'gml', '英脉物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('493', 'leopard', '云豹国际货运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('494', 'czwlyn', '云南中诚', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('495', 'sdyoupei', '优配速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('496', 'yongchang', '永昌物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('497', 'yufeng', '御风速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('498', 'yousutongda', '优速通达', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('499', 'yongwangda', '永旺达快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('500', 'yingchao', '英超物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('501', 'edlogistics', '益递物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('502', 'yjxlm', '宜家行', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('503', 'onehcang', '一号仓', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('504', 'ycgky', '远成快运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('505', 'yunfeng56', '韵丰物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('506', 'iyoungspeed', '驿扬国际速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('507', 'zgyzt', '一站通快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('508', 'eupackage', '易优包裹', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('509', 'ydglobe', '云达通', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('510', 'el56', 'YLTD', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('511', 'yundx', '运东西', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('512', 'yangbaoguo', '洋包裹', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('513', 'uluckex', '优联吉运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('514', 'ecmscn', '易客满', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('515', 'ubonex', '优邦速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('516', 'yue777', '玥玛速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('517', 'ywexpress', '远为快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('518', 'ezhuanyuan', '易转运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('519', 'yiqisong', '一起送', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('520', 'yongbangwuliu', '永邦国际物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('521', 'yyox', '邮客全球速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('522', 'yihangmall', '易航物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('523', 'yiouzhou', '易欧洲国际物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('524', 'ykouan', '洋口岸', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('525', 'youyou', '优优速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('526', 'ytky168', '运通快运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('527', 'sixroad', '易普递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('528', 'yourscm', '雅澳物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('529', 'euguoji', '易邮国际', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('530', 'uscbexpress', '易境达国际物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('531', 'yfsuyun', '驭丰速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('532', 'yimidida', '壹米滴答', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('533', 'ugoexpress', '邮鸽速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('534', 'youban', '邮邦国际', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('535', 'hkems', '云邮跨境快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('536', 'youlai', '邮来速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('537', 'eta100', '易达国际速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('538', 'yatfai', '一辉物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('539', 'yzswuliu', '亚洲顺物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('540', 'yifankd', '艺凡快递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('541', 'mantoo', '优能物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('542', 'vctrans', '越中国际物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('543', 'yhtlogistics', '宇航通物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('544', 'ycgglobal', 'YCG物流', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('545', 'yidihui', '驿递汇速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('546', 'yuanhhk', '远航国际快运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('547', 'yiyou', '易邮速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('548', 'eusacn', '优莎速运', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('549', 'uhi', '优海国际速递', 'Y', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('550', 'zjs', '宅急送', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('551', 'ztky', '中铁快运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('552', 'ztwl', '中铁物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('553', 'zywl', '中邮物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('554', 'zhimakaimen', '芝麻开门', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('555', 'zhengzhoujianhua', '郑州建华', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('556', 'zhongsukuaidi', '中速快件', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('557', 'zhongtianwanyun', '中天万运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('558', 'zhongruisudi', '中睿速递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('559', 'zhongwaiyun', '中外运速递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('560', 'zengyisudi', '增益速递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('561', 'sujievip', '郑州速捷', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('562', 'ztong', '智通物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('563', 'zhichengtongda', '至诚通达快递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('564', 'zhdwl', '众辉达物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('565', 'kuachangwuliu', '直邮易', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('566', 'topspeedex', '中运全速', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('567', 'otobv', '中欧快运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('568', 'zsky123', '准实快运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('569', 'cnws', '中国翼', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('570', 'zytdscm', '中宇天地', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('571', 'zhuanyunsifang', '转运四方', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('572', 'hrbzykd', '卓烨快递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('573', 'zhuoshikuaiyun', '卓实快运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('574', 'chinaicip', '卓志速运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('575', 'ynztsy', '纵通速运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('576', 'zdepost', '直德邮', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('577', 'chinapostcb', '中邮电商', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('578', 'chunghwa56', '中骅物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('579', 'cosco', '中远e环球', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('580', 'zf365', '珠峰速运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('581', 'zhongtongkuaiyun', '中通快运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('582', 'eucnrail', '中欧国际物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('583', 'chnexp', '中翼国际物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('584', 'cccc58', '中集冷云', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('585', 'auvanda', '中联速递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('586', 'zyzoom', '增速跨境', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('587', 'zhpex', '众派速递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('588', 'byht', '展勤快递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('589', 'zhongchuan', '众川国际', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('590', 'zhonghuanus', '中环转运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('591', 'zhonghuan', '中环快递', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('592', 'uszcn', '转运中国', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('593', 'zhitengwuliu', '志腾物流', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('594', 'zsda56', '转瞬达集运', 'Z', '100', '1553911076', '1553911076');
INSERT INTO `ey_shop_express` VALUES ('595', 'zjgj56', '振捷国际货运', 'Z', '100', '1553911076', '1553911076');

-- -----------------------------
-- Table structure for `ey_shop_order`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_order`;
CREATE TABLE `ey_shop_order` (
  `order_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单id',
  `order_code` varchar(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `users_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态：0未付款(已下单)，1已付款(待发货)，2已发货(待收货)，3已完成(确认收货)，-1订单取消(已关闭)，4订单过期',
  `payment_method` tinyint(1) DEFAULT '0' COMMENT '订单支付方式，0为在线支付，1为货到付款，默认0',
  `pay_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付时间',
  `pay_name` varchar(20) NOT NULL DEFAULT '' COMMENT '支付方式名称',
  `wechat_pay_type` varchar(20) NOT NULL DEFAULT '' COMMENT '微信支付时，标记使用的支付类型（扫码支付，微信内部，微信H5页面）',
  `pay_details` text COMMENT '支付时返回的数据，以serialize序列化后存入，用于后续查询。',
  `express_order` varchar(50) DEFAULT '' COMMENT '发货物流单号',
  `express_name` varchar(32) DEFAULT '' COMMENT '发货物流名称',
  `express_code` varchar(32) DEFAULT '' COMMENT '发货物流code',
  `express_time` int(11) DEFAULT '0' COMMENT '发货时间',
  `consignee` varchar(30) NOT NULL DEFAULT '' COMMENT '收货人',
  `confirm_time` int(11) DEFAULT '0' COMMENT '收货确认时间',
  `shipping_fee` decimal(10,2) DEFAULT '0.00' COMMENT '订单运费',
  `order_total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '订单总价',
  `order_amount` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '应付款金额',
  `order_total_num` int(10) DEFAULT '0' COMMENT '订单总数',
  `country` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家',
  `province` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '省份',
  `city` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `district` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '县区',
  `address` varchar(500) NOT NULL DEFAULT '' COMMENT '收货地址',
  `mobile` varchar(20) DEFAULT '' COMMENT '手机',
  `prom_type` tinyint(1) unsigned DEFAULT '0' COMMENT '订单类型：0普通订单，1虚拟订单',
  `virtual_delivery` text COMMENT '虚拟订单时，卖家发货给买家的回复',
  `admin_note` text COMMENT '管理员操作备注',
  `is_comment` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已评论，0为否，1为是，默认0',
  `user_note` text COMMENT '会员备注',
  `group` varchar(50) DEFAULT '' COMMENT '订单分组',
  `order_md5` varchar(50) DEFAULT '' COMMENT '订单标识串，删除未付款的重复订单',
  `order_source` tinyint(3) DEFAULT '10' COMMENT '10-普通订单 20-秒杀订单',
  `order_source_id` int(10) DEFAULT '0' COMMENT '来源id(秒杀订单:active_time_id)',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '下单时间',
  `update_time` int(11) unsigned DEFAULT '0' COMMENT '更新时间',
  `coupon_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '优惠券数据表ID',
  `use_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '会员的优惠券数据表ID',
  `coupon_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '使用的优惠券金额',
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_code` (`order_code`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单主表';


-- -----------------------------
-- Table structure for `ey_shop_order_comment`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_order_comment`;
CREATE TABLE `ey_shop_order_comment` (
  `comment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_code` varchar(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `details_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单明细表ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `total_score` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '总评分，1：好评，2中评，3差评',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '评论内容',
  `upload_img` varchar(3000) NOT NULL DEFAULT '' COMMENT '晒单图片',
  `admin_reply` varchar(1000) NOT NULL DEFAULT '' COMMENT '管理员回复',
  `ip_address` varchar(15) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `is_show` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示：0否，1是',
  `is_anonymous` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否匿名评价：0否，1是',
  `lang` varchar(30) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`comment_id`),
  KEY `users_id` (`users_id`),
  KEY `order_id` (`order_id`),
  KEY `details_id` (`details_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商品评价表';


-- -----------------------------
-- Table structure for `ey_shop_order_details`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_order_details`;
CREATE TABLE `ey_shop_order_details` (
  `details_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_id` int(10) NOT NULL DEFAULT '0' COMMENT '订单ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '产品id',
  `product_name` varchar(100) NOT NULL DEFAULT '' COMMENT '产品名称',
  `num` int(10) NOT NULL DEFAULT '0' COMMENT '单个产品数量',
  `data` text COMMENT '序列化额外数据',
  `product_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '产品单价',
  `prom_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '产品类型：0普通产品，1虚拟产品',
  `litpic` varchar(500) NOT NULL DEFAULT '' COMMENT '封面图片',
  `apply_service` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否申请退换货服务：0 未申请、1已申请',
  `is_comment` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已评论，0为否，1为是，默认0',
  `lang` varchar(30) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '下单时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`details_id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单详情表';


-- -----------------------------
-- Table structure for `ey_shop_order_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_order_log`;
CREATE TABLE `ey_shop_order_log` (
  `action_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `action_user` int(10) DEFAULT '0' COMMENT '操作人；0:用户操作；1以上:管理员id',
  `order_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '订单状态，单条记录状态',
  `express_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '物流状态，0:未发货，1:已发货',
  `pay_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '支付状态，0:未支付，1:已支付',
  `action_desc` varchar(255) DEFAULT '' COMMENT '状态描述',
  `action_note` varchar(255) NOT NULL DEFAULT '' COMMENT '操作备注',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`action_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单操作记录表';


-- -----------------------------
-- Table structure for `ey_shop_order_service`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_order_service`;
CREATE TABLE `ey_shop_order_service` (
  `service_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `service_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '类型：1换货，2退货，3维修',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `order_code` varchar(50) NOT NULL DEFAULT '' COMMENT '订单编号',
  `details_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单明细表ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '产品ID',
  `product_name` varchar(200) NOT NULL DEFAULT '' COMMENT '产品名称',
  `product_spec` varchar(200) NOT NULL DEFAULT '' COMMENT '产品规格',
  `product_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '产品数量',
  `product_img` varchar(500) NOT NULL DEFAULT '' COMMENT '产品图片',
  `content` varchar(500) NOT NULL DEFAULT '' COMMENT '退换货描述',
  `upload_img` varchar(3000) NOT NULL DEFAULT '' COMMENT '上传的图片',
  `address` varchar(500) NOT NULL DEFAULT '' COMMENT '退货的收货地址',
  `consignee` varchar(30) NOT NULL DEFAULT '' COMMENT '收货人',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `refund_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退还金额',
  `refund_balance` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '退还余额',
  `refund_code` varchar(40) NOT NULL DEFAULT '' COMMENT '退款单号',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态：1审核中 2审核通过 3审核不通过 4已发货 5已收货 6换货完成 7退款完成 8服务取消',
  `users_delivery` varchar(500) NOT NULL DEFAULT '' COMMENT '会员发货信息',
  `admin_delivery` varchar(500) NOT NULL DEFAULT '' COMMENT '管理员发货信息',
  `admin_note` varchar(1000) NOT NULL DEFAULT '' COMMENT '管理员操作备注',
  `lang` varchar(30) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '申请时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`service_id`),
  KEY `users_id` (`users_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `order_code` (`order_code`) USING BTREE,
  KEY `product_id` (`product_id`) USING BTREE,
  KEY `details_id` (`details_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单退换货服务表';


-- -----------------------------
-- Table structure for `ey_shop_order_service_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_order_service_log`;
CREATE TABLE `ey_shop_order_service_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `service_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '服务表ID',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '订单ID',
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '会员ID',
  `admin_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '管理员ID',
  `log_note` varchar(500) NOT NULL DEFAULT '' COMMENT '记录备注',
  `lang` varchar(30) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '操作时间',
  PRIMARY KEY (`log_id`),
  KEY `service_id` (`service_id`) USING BTREE,
  KEY `order_id` (`order_id`) USING BTREE,
  KEY `users_id` (`users_id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单退换货服务记录表';


-- -----------------------------
-- Table structure for `ey_shop_product_attr`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_product_attr`;
CREATE TABLE `ey_shop_product_attr` (
  `product_attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '产品属性id自增',
  `aid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '产品id',
  `attr_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '属性id',
  `attr_value` text NOT NULL COMMENT '属性值',
  `attr_price` varchar(255) DEFAULT '' COMMENT '属性价格',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`product_attr_id`),
  KEY `aid` (`aid`) USING BTREE,
  KEY `attr_id` (`attr_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `ey_shop_product_attribute`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_product_attribute`;
CREATE TABLE `ey_shop_product_attribute` (
  `attr_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '属性id',
  `attr_name` varchar(60) NOT NULL DEFAULT '' COMMENT '属性名称',
  `list_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `attr_index` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0不需要检索 1关键字检索 2范围检索',
  `attr_input_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT ' 0=文本框，1=下拉框，2=多行文本框',
  `attr_values` text NOT NULL COMMENT '可选值列表',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0=禁用，1=启用)',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '属性排序',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `is_del` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已删除，0=否，1=是',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`attr_id`),
  KEY `cat_id` (`list_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `ey_shop_product_attrlist`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_product_attrlist`;
CREATE TABLE `ey_shop_product_attrlist` (
  `list_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '列表id',
  `list_name` varchar(60) NOT NULL DEFAULT '' COMMENT '列表名称',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0=禁用，1=启用)',
  `attr_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '参数数量',
  `desc` text NOT NULL COMMENT '描述备注',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已删除，0=否，1=是',
  `sort_order` int(11) unsigned NOT NULL DEFAULT '100' COMMENT '列表排序',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `ey_shop_shipping_template`
-- -----------------------------
DROP TABLE IF EXISTS `ey_shop_shipping_template`;
CREATE TABLE `ey_shop_shipping_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '运费模板ID',
  `template_region` varchar(255) NOT NULL DEFAULT '' COMMENT '模板运送区域',
  `template_money` decimal(10,2) unsigned NOT NULL DEFAULT '0.00' COMMENT '模板运费',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'region表id',
  `lang` varchar(30) DEFAULT 'cn' COMMENT '语言标识',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`template_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='运费模板表';

-- -----------------------------
-- Records of `ey_shop_shipping_template`
-- -----------------------------
INSERT INTO `ey_shop_shipping_template` VALUES ('1', '北京市', '0.00', '1', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('2', '天津市', '0.00', '338', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('3', '河北省', '0.00', '636', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('4', '山西省', '0.00', '3102', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('5', '内蒙古自治区', '0.00', '4670', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('6', '辽宁省', '0.00', '5827', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('7', '吉林省', '0.00', '7531', 'cn', '1554775921');
INSERT INTO `ey_shop_shipping_template` VALUES ('8', '黑龙江省', '0.00', '8558', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('9', '上海市', '0.00', '10543', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('10', '江苏省', '0.00', '10808', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('11', '浙江省', '0.00', '12596', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('12', '安徽省', '0.00', '14234', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('13', '福建省', '0.00', '16068', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('14', '江西省', '0.00', '17359', 'cn', '1554775962');
INSERT INTO `ey_shop_shipping_template` VALUES ('15', '山东省', '0.00', '19280', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('16', '河南省', '0.00', '21387', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('17', '湖北省', '0.00', '24022', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('18', '湖南省', '0.00', '25579', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('19', '广东省', '0.00', '28240', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('20', '广西壮族自治区', '0.00', '30164', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('21', '海南省', '0.00', '31563', 'cn', '1555483193');
INSERT INTO `ey_shop_shipping_template` VALUES ('22', '重庆市', '0.00', '31929', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('23', '四川省', '0.00', '33007', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('24', '贵州省', '0.00', '37906', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('25', '云南省', '0.00', '39556', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('26', '西藏自治区', '0.00', '41103', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('27', '陕西省', '0.00', '41877', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('28', '甘肃省', '0.00', '43776', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('29', '青海省', '0.00', '45286', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('30', '宁夏回族自治区', '0.00', '45753', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('31', '新疆维吾尔自治区', '0.00', '46047', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('32', '台湾省', '0.00', '47493', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('33', '香港特别行政区', '0.00', '47494', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('34', '澳门特别行政区', '0.00', '47495', 'cn', '1554775610');
INSERT INTO `ey_shop_shipping_template` VALUES ('35', '统一配送价格', '0.00', '100000', 'cn', '1556618311');

-- -----------------------------
-- Table structure for `ey_single_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_single_content`;
CREATE TABLE `ey_single_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `typeid` int(10) DEFAULT '0' COMMENT '栏目ID',
  `content` longtext COMMENT '内容详情',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_single_content`
-- -----------------------------
INSERT INTO `ey_single_content` VALUES ('1', '1', '1', '&lt;p&gt;核心价值观：诚信、创新、服务&lt;/p&gt;&lt;p&gt;企业核心： 诚信&amp;nbsp;&lt;/p&gt;&lt;p&gt;企业精神： 团结拼搏、开拓求实、满足用户、科技进步。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;客户：为客户提供高质量和最大价值的专业化产品和服务，以真诚和实力赢得客户的理解、尊重和支持。&lt;/p&gt;&lt;p&gt;市场：为客户降低采购成本和风险，为客户投资提供切实保障。&amp;nbsp;&lt;/p&gt;&lt;p&gt;发展：追求永续发展的目标，并把它建立在客户满意的基础上。&lt;/p&gt;&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;关于“为合作伙伴创造价值”&lt;/p&gt;&lt;p&gt;公司认为客户、供应商、公司股东、公司员工等一切和自身有合作关系的单位和个人都是自己的合作伙伴，并只有通过努力为合作伙伴创造价值，才能体现自身的价值并获得发展和成功。&lt;/p&gt;&lt;p&gt;关于“诚实、宽容、创新、服务”&lt;/p&gt;&lt;p&gt;公司认为诚信是一切合作的基础，宽容是解决问题的前提，创新是发展事业的利器，服务是创造价值的根本。公司会坚持持续改进、满足顾客期望、 确保品质第一、开拓全球市场。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1536108746', '1536108746');
INSERT INTO `ey_single_content` VALUES ('3', '3', '7', '&lt;p style=&quot;text-align: center;&quot;&gt;地址：这里是您的公司地址&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;电话：400-123-4567&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;传真：+86-123-4567&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;邮编：000000&lt;/p&gt;&lt;p style=&quot;text-align: center;&quot;&gt;邮箱：admin@eyoucms.com&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1638405560', '1638405560');
INSERT INTO `ey_single_content` VALUES ('4', '34', '21', '&lt;p&gt;Core values: integrity, innovation, service&lt;/p&gt;&lt;p&gt;Enterprise Core: Integrity&lt;/p&gt;&lt;p&gt;Entrepreneurial\r\n spirit: Unity and hard work, development and truth-seeking, satisfying \r\nusers, and scientific and technological progress.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;Customers:\r\n To provide customers with high-quality and maximum value of specialized\r\n products and services, to win customers&amp;#39; understanding, respect and \r\nsupport with sincerity and strength.&lt;/p&gt;&lt;p&gt;Market: Reduce procurement costs and risks for customers, and provide real protection for customer investment.&lt;/p&gt;&lt;p&gt;Development: Pursue the goal of sustainable development and build it on the basis of customer satisfaction.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;About &amp;quot;Creating Value for Partners&amp;quot;&lt;/p&gt;&lt;p&gt;The\r\n company believes that customers, suppliers, company shareholders, \r\ncompany employees and other units and individuals who have a cooperative\r\n relationship with themselves are their own partners, and only by \r\nstriving to create value for partners can they reflect their own value \r\nand achieve development and success. .&lt;/p&gt;&lt;p&gt;About &amp;quot;Honesty, Tolerance, Innovation, Service&amp;quot;&lt;/p&gt;&lt;p&gt;The\r\n company believes that honesty is the foundation of all cooperation, \r\ntolerance is the premise of solving problems, innovation is the weapon \r\nof development, and service is the foundation of value creation. The \r\ncompany will continue to improve, meet customer expectations, ensure \r\nquality first, and open up global markets.&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1552463954', '1552463954');
INSERT INTO `ey_single_content` VALUES ('5', '35', '37', '&lt;p style=&quot;text-align: center;&quot;&gt;Address: Here is your company address&lt;br/&gt;Phone: 400-123-4567&lt;br/&gt;Fax: +86-123-4567&lt;br/&gt;Zip code: 000000&lt;br/&gt;Email: admin@eyoucms.com&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '1638405586', '1638405586');

-- -----------------------------
-- Table structure for `ey_sms_log`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sms_log`;
CREATE TABLE `ey_sms_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '表id',
  `source` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '发送来源，与场景ID对应：0=注册，1=绑定，2=登录密码，3=支付密码，4=找回密码',
  `sms_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '短信服务商类型，1---阿里云短信， 2---腾讯云短信',
  `mobile` varchar(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发送时间',
  `code` varchar(10) NOT NULL DEFAULT '' COMMENT '验证码',
  `status` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '发送状态,1:成功,0:失败',
  `is_use` int(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否使用，1:是，0:否',
  `msg` varchar(255) NOT NULL DEFAULT '' COMMENT '短信内容',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `error_msg` text NOT NULL COMMENT '发送短信异常内容',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='手机短信发送记录';


-- -----------------------------
-- Table structure for `ey_sms_template`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sms_template`;
CREATE TABLE `ey_sms_template` (
  `tpl_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `sms_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '短信服务商类型，1---阿里云短信， 2---腾讯云短信',
  `tpl_title` varchar(128) NOT NULL DEFAULT '' COMMENT '短信标题',
  `sms_sign` varchar(50) NOT NULL DEFAULT '' COMMENT '短信签名',
  `sms_tpl_code` varchar(100) NOT NULL DEFAULT '' COMMENT '短信模板ID',
  `tpl_content` varchar(1000) NOT NULL DEFAULT '' COMMENT '发送短信内容',
  `send_scene` varchar(100) NOT NULL DEFAULT '' COMMENT '短信发送场景',
  `is_open` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启使用这个模板，1为是，0为否。',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='手机短信发送模板';

-- -----------------------------
-- Records of `ey_sms_template`
-- -----------------------------
INSERT INTO `ey_sms_template` VALUES ('1', '1', '账号注册', '', '', '验证码为 ${content} ，请在30分钟内输入验证。', '0', '1', 'cn', '1613989576', '1613989576');
INSERT INTO `ey_sms_template` VALUES ('2', '1', '手机绑定', '', '', '验证码为 ${content} ，请在30分钟内输入验证。', '1', '1', 'cn', '1613989576', '1613989576');
INSERT INTO `ey_sms_template` VALUES ('3', '1', '找回密码', '', '', '验证码为 ${content} ，请在30分钟内输入验证。', '4', '1', 'cn', '1613989576', '1613989576');
INSERT INTO `ey_sms_template` VALUES ('4', '1', '订单付款', '', '', '您有新的消息：您有新的${content}订单，请注意查收！', '5', '1', 'cn', '1613989576', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('5', '1', '账号注册', '', '', '验证码为 ${content} ，请在30分钟内输入验证。', '0', '1', 'en', '1613989576', '1613989576');
INSERT INTO `ey_sms_template` VALUES ('6', '1', '手机绑定', '', '', '验证码为 ${content} ，请在30分钟内输入验证。', '1', '1', 'en', '1613989576', '1613989576');
INSERT INTO `ey_sms_template` VALUES ('7', '1', '找回密码', '', '', '验证码为 ${content} ，请在30分钟内输入验证。', '4', '1', 'en', '1613989576', '1613989576');
INSERT INTO `ey_sms_template` VALUES ('8', '1', '订单付款', '', '', '您有新的消息：您有新的${content}订单，请注意查收！', '5', '1', 'en', '1613989576', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('9', '2', '账号注册', '', '', '验证码为 {1} ，请在30分钟内输入验证。', '0', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_sms_template` VALUES ('10', '2', '手机绑定', '', '', '验证码为 {1} ，请在30分钟内输入验证。', '1', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_sms_template` VALUES ('11', '2', '找回密码', '', '', '验证码为 {1} ，请在30分钟内输入验证。', '4', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_sms_template` VALUES ('12', '2', '订单付款', '', '', '您有新的消息：您有新的{1}订单，请注意查收！', '5', '1', 'cn', '1613989591', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('13', '2', '账号注册', '', '', '验证码为 {1} ，请在30分钟内输入验证。', '0', '1', 'en', '1613989591', '1613989591');
INSERT INTO `ey_sms_template` VALUES ('14', '2', '手机绑定', '', '', '验证码为 {1} ，请在30分钟内输入验证。', '1', '1', 'en', '1613989591', '1613989591');
INSERT INTO `ey_sms_template` VALUES ('15', '2', '找回密码', '', '', '验证码为 {1} ，请在30分钟内输入验证。', '4', '1', 'en', '1613989591', '1613989591');
INSERT INTO `ey_sms_template` VALUES ('16', '2', '订单付款', '', '', '您有新的消息：您有新的{1}订单，请注意查收！', '5', '1', 'en', '1613989591', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('17', '1', '订单发货', '', '', '您有新的消息：您有新的${content}订单，请注意查收！', '6', '1', 'cn', '1613989576', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('18', '1', '订单发货', '', '', '您有新的消息：您有新的${content}订单，请注意查收！', '6', '1', 'en', '1613989576', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('19', '2', '订单发货', '', '', '您有新的消息：您有新的{1}订单，请注意查收！', '6', '1', 'cn', '1613989591', '1638405553');
INSERT INTO `ey_sms_template` VALUES ('20', '2', '订单发货', '', '', '您有新的消息：您有新的{1}订单，请注意查收！', '6', '1', 'en', '1613989591', '1638405553');

-- -----------------------------
-- Table structure for `ey_smtp_record`
-- -----------------------------
DROP TABLE IF EXISTS `ey_smtp_record`;
CREATE TABLE `ey_smtp_record` (
  `record_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `source` tinyint(1) DEFAULT '0' COMMENT '来源，与场景ID对应：0=默认，2=注册，3=绑定邮箱，4=找回密码',
  `email` varchar(50) DEFAULT '' COMMENT '邮件地址',
  `users_id` int(10) DEFAULT '0' COMMENT '用户ID',
  `code` varchar(20) DEFAULT '' COMMENT '发送邮件内容',
  `status` tinyint(1) DEFAULT '0' COMMENT '是否使用，默认0，0为未使用，1为使用',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`record_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邮件发送记录表';


-- -----------------------------
-- Table structure for `ey_smtp_tpl`
-- -----------------------------
DROP TABLE IF EXISTS `ey_smtp_tpl`;
CREATE TABLE `ey_smtp_tpl` (
  `tpl_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tpl_name` varchar(200) DEFAULT '' COMMENT '模板名称',
  `tpl_title` varchar(200) DEFAULT '' COMMENT '邮件标题',
  `tpl_content` text COMMENT '发送邮件内容',
  `send_scene` tinyint(1) DEFAULT '0' COMMENT '邮件发送场景(1=留言表单）',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '是否开启使用这个模板，1为是，0为否。',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='邮件模板表';

-- -----------------------------
-- Records of `ey_smtp_tpl`
-- -----------------------------
INSERT INTO `ey_smtp_tpl` VALUES ('1', '留言表单', '您有新的留言消息，请查收！', '${content}', '1', '1', 'cn', '1544763495', '1552638302');
INSERT INTO `ey_smtp_tpl` VALUES ('2', '会员注册', '验证码已发送至您的邮箱，请登录邮箱查看验证码！', '${content}', '2', '1', 'cn', '1544763495', '1552667056');
INSERT INTO `ey_smtp_tpl` VALUES ('3', '绑定邮箱', '验证码已发送至您的邮箱，请登录邮箱查看验证码！', '${content}', '3', '1', 'cn', '1544763495', '1552667400');
INSERT INTO `ey_smtp_tpl` VALUES ('4', '找回密码', '验证码已发送至您的邮箱，请登录邮箱查看验证码！', '${content}', '4', '1', 'cn', '1544763495', '1552663577');
INSERT INTO `ey_smtp_tpl` VALUES ('5', '留言表单', '您有新的留言消息，请查收！', '${content}', '1', '1', 'en', '1544763495', '1552638302');
INSERT INTO `ey_smtp_tpl` VALUES ('6', '会员注册', '验证码已发送至您的邮箱，请登录邮箱查看验证码！', '${content}', '2', '1', 'en', '1544763495', '1552667056');
INSERT INTO `ey_smtp_tpl` VALUES ('7', '绑定邮箱', '验证码已发送至您的邮箱，请登录邮箱查看验证码！', '${content}', '3', '1', 'en', '1544763495', '1552667400');
INSERT INTO `ey_smtp_tpl` VALUES ('8', '找回密码', '验证码已发送至您的邮箱，请登录邮箱查看验证码！', '${content}', '4', '1', 'en', '1544763495', '1552663577');
INSERT INTO `ey_smtp_tpl` VALUES ('9', '订单付款', '您有新的待发货订单消息，请到商城订单查看！', '${content}', '5', '1', 'cn', '1613989576', '1638405553');
INSERT INTO `ey_smtp_tpl` VALUES ('10', '订单付款', '您有新的待发货订单消息，请到商城订单查看！', '${content}', '5', '1', 'en', '1613989576', '1638405553');
INSERT INTO `ey_smtp_tpl` VALUES ('11', '订单发货', '您有新的待收货订单消息，请到会员订单查看！', '${content}', '6', '1', 'cn', '1638405553', '1638405553');
INSERT INTO `ey_smtp_tpl` VALUES ('12', '订单发货', '您有新的待收货订单消息，请到会员订单查看！', '${content}', '6', '1', 'en', '1638405553', '1638405553');

-- -----------------------------
-- Table structure for `ey_special_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_special_content`;
CREATE TABLE `ey_special_content` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aid` int(10) DEFAULT '0' COMMENT '文档ID',
  `content` longtext COMMENT '内容详情',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `aid` (`aid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题附加表';


-- -----------------------------
-- Table structure for `ey_special_node`
-- -----------------------------
DROP TABLE IF EXISTS `ey_special_node`;
CREATE TABLE `ey_special_node` (
  `node_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '节点名称',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '节点标识',
  `isauto` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否自动获取文档',
  `keywords` varchar(200) NOT NULL DEFAULT '' COMMENT '关键字（多个中间用'',''分开）',
  `typeid` int(10) NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `aidlist` text NOT NULL COMMENT '关联文章列表（多个中间用'',''分开）',
  `row` int(5) NOT NULL DEFAULT '10' COMMENT '文档数',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT '0' COMMENT '排序',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='专题节点表';


-- -----------------------------
-- Table structure for `ey_sql_cache_table`
-- -----------------------------
DROP TABLE IF EXISTS `ey_sql_cache_table`;
CREATE TABLE `ey_sql_cache_table` (
  `cache_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `sql_name` varchar(60) NOT NULL DEFAULT '' COMMENT 'mysql语句的标识名称，目前由模型名称+模型ID组成',
  `sql_result` text NOT NULL COMMENT 'mysql执行结果',
  `sql_md5` varchar(60) NOT NULL DEFAULT '' COMMENT 'mysql语句MD5的值',
  `sql_query` text NOT NULL COMMENT '完整mysql语句',
  `add_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`cache_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='mysql缓存表';

-- -----------------------------
-- Records of `ey_sql_cache_table`
-- -----------------------------
INSERT INTO `ey_sql_cache_table` VALUES ('1', 'ArchivesMaxID', '61', '494a17e43cff13eeb4b9c9837c29026c', 'SELECT MAX(aid) AS tp_max FROM `ey_archives` LIMIT 1', '1638405553', '1638405553');
INSERT INTO `ey_sql_cache_table` VALUES ('2', '|model|all|count|', '{\"1\":{\"channel\":1,\"total\":9},\"2\":{\"channel\":2,\"total\":8},\"3\":{\"channel\":3,\"total\":4},\"4\":{\"channel\":4,\"total\":5},\"6\":{\"channel\":6,\"total\":2}}', 'd5ac17fe5649c6d04f4b174c42f2d535', 'SELECT channel, count(aid) as total FROM `ey_archives` WHERE  `lang` = \'cn\'  AND `status` = 1  AND `is_del` = 0  AND (  (users_id = 0 OR (users_id > 0 AND arcrank >= 0)) ) GROUP BY `channel`', '1638405553', '1638405553');
INSERT INTO `ey_sql_cache_table` VALUES ('3', '|arctype|all|count|', '{\"9\":{\"typeid\":9,\"num\":8},\"15\":{\"typeid\":15,\"num\":9},\"17\":{\"typeid\":17,\"num\":4},\"19\":{\"typeid\":19,\"num\":5}}', '9f6b5e62b9b8456535e5881c8b05072f', 'SELECT typeid, count(typeid) as num FROM `ey_archives` WHERE  `channel` IN (1,2,3,4,5,7,51)  AND `lang` = \'cn\'  AND `is_del` = 0  AND (  (users_id = 0 OR (users_id > 0 AND arcrank >= 0)) ) GROUP BY `typeid`', '1638405555', '1638405555');
INSERT INTO `ey_sql_cache_table` VALUES ('4', '|model|all|count|', '{\"1\":{\"channel\":1,\"total\":9},\"2\":{\"channel\":2,\"total\":8},\"3\":{\"channel\":3,\"total\":4},\"4\":{\"channel\":4,\"total\":5},\"6\":{\"channel\":6,\"total\":2}}', '3ba4b0180f4a3c5b47792ff8ebc7eb15', 'SELECT channel, count(aid) as total FROM `ey_archives` WHERE  `lang` = \'en\'  AND `status` = 1  AND `is_del` = 0  AND (  (users_id = 0 OR (users_id > 0 AND arcrank >= 0)) ) GROUP BY `channel`', '1638405577', '1638405577');
INSERT INTO `ey_sql_cache_table` VALUES ('5', '|arctype|all|count|', '{\"23\":{\"typeid\":23,\"num\":8},\"29\":{\"typeid\":29,\"num\":9},\"32\":{\"typeid\":32,\"num\":4},\"35\":{\"typeid\":35,\"num\":5}}', '0b2f4d5e7cb152bd33486fefafcbb8e0', 'SELECT typeid, count(typeid) as num FROM `ey_archives` WHERE  `channel` IN (1,2,3,4,5,7,51)  AND `lang` = \'en\'  AND `is_del` = 0  AND (  (users_id = 0 OR (users_id > 0 AND arcrank >= 0)) ) GROUP BY `typeid`', '1638405578', '1638405578');

-- -----------------------------
-- Table structure for `ey_tagindex`
-- -----------------------------
DROP TABLE IF EXISTS `ey_tagindex`;
CREATE TABLE `ey_tagindex` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(50) NOT NULL DEFAULT '' COMMENT 'tag内容',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `litpic` varchar(250) DEFAULT '' COMMENT '封面图',
  `seo_title` varchar(200) DEFAULT '' COMMENT 'SEO标题',
  `seo_keywords` varchar(200) DEFAULT '' COMMENT 'SEO关键词',
  `seo_description` text COMMENT 'SEO描述',
  `count` int(10) unsigned DEFAULT '0',
  `total` int(10) unsigned DEFAULT '0',
  `weekcc` int(10) unsigned DEFAULT '0',
  `monthcc` int(10) unsigned DEFAULT '0',
  `weekup` int(10) unsigned DEFAULT '0',
  `monthup` int(10) unsigned DEFAULT '0',
  `is_common` tinyint(1) DEFAULT '0' COMMENT '是否常用标签，0=否，1=是',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(10) unsigned DEFAULT '0',
  `update_time` int(10) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`) USING BTREE,
  KEY `count` (`count`,`total`,`weekcc`,`monthcc`,`weekup`,`monthup`,`add_time`) USING BTREE,
  KEY `tag` (`tag`) USING BTREE,
  KEY `lang` (`lang`,`add_time`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- -----------------------------
-- Table structure for `ey_taglist`
-- -----------------------------
DROP TABLE IF EXISTS `ey_taglist`;
CREATE TABLE `ey_taglist` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0',
  `aid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章ID',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '栏目ID',
  `tag` varchar(50) DEFAULT '' COMMENT 'tag内容',
  `arcrank` tinyint(1) DEFAULT '0' COMMENT '阅读权限',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tid`,`aid`),
  KEY `aid` (`aid`,`typeid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='文章标签表';


-- -----------------------------
-- Table structure for `ey_ui_config`
-- -----------------------------
DROP TABLE IF EXISTS `ey_ui_config`;
CREATE TABLE `ey_ui_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `md5key` varchar(100) NOT NULL DEFAULT '' COMMENT '唯一键值（由 theme_style、page、name）组成',
  `theme_style` varchar(200) DEFAULT 'pc' COMMENT '模板风格',
  `page` varchar(64) DEFAULT '' COMMENT '页面分组',
  `type` varchar(50) DEFAULT '' COMMENT '编辑类型',
  `name` varchar(50) DEFAULT '' COMMENT '与页面的e-id对应',
  `value` text COMMENT '页面美化的val值',
  `idcode` varchar(50) DEFAULT '' COMMENT '页面唯一id标识（由 标识符+栏目id或文档id等）组成',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `md5key` (`md5key`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='页面美化参数设置';


-- -----------------------------
-- Table structure for `ey_users`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users`;
CREATE TABLE `ey_users` (
  `users_id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '表id',
  `username` varchar(30) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '登录密码',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `is_mobile` tinyint(1) DEFAULT '0' COMMENT '绑定手机号，0为不绑定，1为绑定',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码（仅用于登录）',
  `is_email` tinyint(1) DEFAULT '0' COMMENT '绑定邮箱，0为不绑定，1为绑定',
  `email` varchar(60) NOT NULL DEFAULT '' COMMENT '电子邮件（仅用于登录）',
  `paypwd` varchar(50) DEFAULT '' COMMENT '支付密码，暂时未用到，可保留。',
  `users_money` decimal(10,2) DEFAULT '0.00' COMMENT '用户金额',
  `frozen_money` decimal(10,2) DEFAULT '0.00' COMMENT '冻结金额',
  `scores` int(10) DEFAULT '0' COMMENT '积分',
  `devote` int(10) DEFAULT '0' COMMENT '贡献值',
  `reg_time` int(11) unsigned DEFAULT '0' COMMENT '注册时间',
  `last_login` int(11) unsigned DEFAULT '0' COMMENT '最后登录时间',
  `last_ip` varchar(15) DEFAULT '' COMMENT '最后登录ip',
  `login_count` int(11) DEFAULT '0' COMMENT '登陆次数',
  `head_pic` varchar(255) DEFAULT '' COMMENT '头像',
  `province` int(6) DEFAULT '0' COMMENT '省份',
  `city` int(6) DEFAULT '0' COMMENT '市区',
  `district` int(6) DEFAULT '0' COMMENT '县',
  `level` smallint(5) DEFAULT '0' COMMENT '会员等级',
  `open_level_time` int(11) unsigned DEFAULT '0' COMMENT '开通会员级别时间',
  `level_maturity_days` varchar(20) DEFAULT '' COMMENT '会员级别到期天数',
  `discount` decimal(10,2) DEFAULT '1.00' COMMENT '会员折扣，默认1不享受',
  `total_amount` decimal(10,2) DEFAULT '0.00' COMMENT '消费累计额度',
  `is_activation` tinyint(1) DEFAULT '1' COMMENT '是否激活，0否，1是。\r\n后台注册默认为1激活。\r\n前台注册时，当会员功能设置选择后台审核，需后台激活才可以登陆。',
  `register_place` tinyint(1) DEFAULT '2' COMMENT '注册位置。后台注册不受注册验证影响，1为后台注册，2为前台注册。默认为2。',
  `open_id` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方唯一标识openid',
  `thirdparty` tinyint(1) DEFAULT '0' COMMENT '第三方注册类型：0=普通，1=微信，2=QQ',
  `is_lock` tinyint(1) DEFAULT '0' COMMENT '是否被锁定冻结',
  `admin_id` int(10) DEFAULT '0' COMMENT '关联管理员ID',
  `lang` varchar(20) DEFAULT 'cn' COMMENT '语言标识',
  `is_del` tinyint(1) DEFAULT '0' COMMENT '伪删除，1=是，0=否',
  `unread_notice_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '未读消息数量',
  `update_time` int(11) unsigned DEFAULT '0' COMMENT '更新时间',
  `coin` int(11) unsigned DEFAULT '0' COMMENT '金币',
  `union_id` varchar(50) NOT NULL DEFAULT '' COMMENT '微信用户的unionId',
  PRIMARY KEY (`users_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员信息表';

-- -----------------------------
-- Records of `ey_users`
-- -----------------------------
INSERT INTO `ey_users` VALUES ('1', 'admin', 'acbb0331df97f6f560251b04b3f81eee', 'admin', '0', '', '0', '', '', '0.00', '0.00', '0', '0', '1613989576', '1638405515', '', '0', '/public/static/common/images/dfboy.png', '0', '0', '0', '1', '0', '', '1.00', '0.00', '1', '1', '', '0', '0', '1', 'cn', '0', '0', '1638405515', '0', '');

-- -----------------------------
-- Table structure for `ey_users_bottom_menu`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_bottom_menu`;
CREATE TABLE `ey_users_bottom_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(30) DEFAULT '' COMMENT '导航名称',
  `mca` varchar(50) DEFAULT '' COMMENT '分组/控制器/操作名',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `sort_order` int(10) DEFAULT '100' COMMENT '排序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '功能开关状态，1=开启，0=关闭',
  `display` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否显示, 1--是, 0--否',
  `lang` varchar(20) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员中心移动端底部菜单表';

-- -----------------------------
-- Records of `ey_users_bottom_menu`
-- -----------------------------
INSERT INTO `ey_users_bottom_menu` VALUES ('1', '首页', 'home/Index/index', 'shouye', '100', '1', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('2', '下载', 'user/Download/index', 'xiazai', '100', '1', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('3', '发布', 'user/UsersRelease/article_add', 'fabu', '100', '1', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('4', '我的', 'user/Users/centre', 'geren', '100', '1', '1', 'cn', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('5', '首页', 'home/Index/index', 'shouye', '100', '1', '1', 'en', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('6', '下载', 'user/Download/index', 'xiazai', '100', '1', '1', 'en', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('7', '发布', 'user/UsersRelease/article_add', 'fabu', '100', '1', '1', 'en', '1613989591', '1613989591');
INSERT INTO `ey_users_bottom_menu` VALUES ('8', '我的', 'user/Users/centre', 'geren', '100', '1', '1', 'en', '1613989591', '1613989591');

-- -----------------------------
-- Table structure for `ey_users_collection`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_collection`;
CREATE TABLE `ey_users_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(10) DEFAULT NULL,
  `aid` int(10) DEFAULT '0' COMMENT '文档id',
  `channel` int(10) DEFAULT '0' COMMENT '模型',
  `typeid` int(10) DEFAULT '0' COMMENT '栏目',
  `title` varchar(50) DEFAULT '' COMMENT '网站标题',
  `litpic` varchar(255) DEFAULT '' COMMENT '缩略图',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的收藏';


-- -----------------------------
-- Table structure for `ey_users_config`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_config`;
CREATE TABLE `ey_users_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '会员功能配置表ID',
  `name` varchar(50) DEFAULT '' COMMENT '配置的key键名',
  `value` text COMMENT '配置的value值',
  `desc` varchar(100) DEFAULT '' COMMENT '键名说明',
  `inc_type` varchar(64) DEFAULT '' COMMENT '配置分组',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='会员功能配置表';

-- -----------------------------
-- Records of `ey_users_config`
-- -----------------------------
INSERT INTO `ey_users_config` VALUES ('1', 'users_reg_notallow', 'www,bbs,ftp,mail,user,users,admin,administrator,eyoucms', '不允许注册的会员名', 'users', 'cn', '1547890773');
INSERT INTO `ey_users_config` VALUES ('2', 'score_signin_status', '1', '', 'score', 'cn', '1613989591');
INSERT INTO `ey_users_config` VALUES ('3', 'score_signin_score', '3', '', 'score', 'cn', '1613989591');
INSERT INTO `ey_users_config` VALUES ('4', 'score_signin_status', '1', '', 'score', 'en', '1613989591');
INSERT INTO `ey_users_config` VALUES ('5', 'score_signin_score', '3', '', 'score', 'en', '1613989591');
INSERT INTO `ey_users_config` VALUES ('6', 'shop_open', '0', '', 'shop', 'cn', '1638405539');
INSERT INTO `ey_users_config` VALUES ('7', 'pay_balance_open', '1', '', 'pay', 'cn', '1638405553');
INSERT INTO `ey_users_config` VALUES ('8', 'shop_open', '0', '', 'shop', 'en', '1638405582');

-- -----------------------------
-- Table structure for `ey_users_footprint`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_footprint`;
CREATE TABLE `ey_users_footprint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel` int(10) DEFAULT '0' COMMENT '频道模型',
  `typeid` int(10) DEFAULT '0' COMMENT '栏目id',
  `aid` int(10) DEFAULT '0' COMMENT '文档id',
  `title` varchar(100) DEFAULT '' COMMENT '网站标题',
  `litpic` varchar(255) DEFAULT '' COMMENT '缩略图',
  `users_id` int(10) DEFAULT '0',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `users_id` (`users_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='我的足迹';


-- -----------------------------
-- Table structure for `ey_users_level`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_level`;
CREATE TABLE `ey_users_level` (
  `level_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `level_name` varchar(30) DEFAULT '' COMMENT '级别名称',
  `level_value` int(10) DEFAULT '0' COMMENT '会员等级值',
  `is_system` tinyint(1) DEFAULT '0' COMMENT '类型，1=系统，0=用户',
  `amount` decimal(10,2) DEFAULT '0.00' COMMENT '消费额度',
  `down_count` int(10) DEFAULT '0' COMMENT '每天下载次数限制',
  `discount` float(10,2) DEFAULT '100.00' COMMENT '折扣率，初始值为100即100%，无折扣',
  `posts_count` int(10) DEFAULT '5' COMMENT '会员投稿次数限制',
  `ask_is_release` tinyint(1) DEFAULT '1' COMMENT '允许在问答中发布问题，1=是，0=否',
  `ask_is_review` tinyint(1) DEFAULT '0' COMMENT '在问答中发布问题或回答是否需要审核，1=是，0=否',
  `lang` varchar(20) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='会员级别表';

-- -----------------------------
-- Records of `ey_users_level`
-- -----------------------------
INSERT INTO `ey_users_level` VALUES ('1', '注册会员', '10', '1', '0.00', '100', '100', '5', '1', '0', 'cn', '0', '1551151513');
INSERT INTO `ey_users_level` VALUES ('2', '中级会员', '50', '0', '0.00', '100', '100', '10', '1', '0', 'cn', '1600759564', '1600759564');
INSERT INTO `ey_users_level` VALUES ('3', '高级会员', '100', '0', '0.00', '100', '100', '20', '1', '0', 'cn', '1600759564', '1600759564');

-- -----------------------------
-- Table structure for `ey_users_list`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_list`;
CREATE TABLE `ey_users_list` (
  `list_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `users_id` int(10) NOT NULL DEFAULT '0' COMMENT '会员ID',
  `para_id` int(10) NOT NULL DEFAULT '0' COMMENT '属性ID',
  `info` text COMMENT '属性值',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`list_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员属性表(信息）';


-- -----------------------------
-- Table structure for `ey_users_menu`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_menu`;
CREATE TABLE `ey_users_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `title` varchar(30) DEFAULT '' COMMENT '导航名称',
  `version` varchar(10) DEFAULT 'weapp' COMMENT '分组',
  `mca` varchar(50) DEFAULT '' COMMENT '分组/控制器/操作名',
  `active_url` varchar(500) DEFAULT '' COMMENT '标记为选中的url',
  `is_userpage` tinyint(1) DEFAULT '0' COMMENT '默认会员首页',
  `sort_order` int(10) DEFAULT '0' COMMENT '排序号',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态，1=显示，0=隐藏',
  `lang` varchar(20) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='会员菜单表';

-- -----------------------------
-- Records of `ey_users_menu`
-- -----------------------------
INSERT INTO `ey_users_menu` VALUES ('1', '个人信息', 'v1', 'user/Users/index', '', '1', '100', '1', 'cn', '1555904190', '1555917737');
INSERT INTO `ey_users_menu` VALUES ('2', '账户充值', 'v1', 'user/Pay/pay_consumer_details', '', '0', '100', '1', 'cn', '1555904190', '1555917761');
INSERT INTO `ey_users_menu` VALUES ('3', '商城中心', 'v1', 'user/Shop/shop_centre', '', '0', '100', '0', 'cn', '1555904190', '1555917761');
INSERT INTO `ey_users_menu` VALUES ('4', '会员升级', 'v1', 'user/Level/level_centre', '', '0', '100', '0', 'cn', '1555904190', '1555917761');
INSERT INTO `ey_users_menu` VALUES ('5', '会员投稿', 'v1', 'user/UsersRelease/release_centre', '', '0', '100', '0', 'cn', '1555904190', '1555917761');
INSERT INTO `ey_users_menu` VALUES ('6', '我的下载', 'v1', 'user/Download/index', '', '0', '100', '1', 'cn', '1590484667', '1613989577');
INSERT INTO `ey_users_menu` VALUES ('7', '个人中心', 'v2', 'user/Users/index', 'user/Users/index|user/Pay/pay_account_recharge|user/Users/footprint_index|user/Level/level_centre|user/Download/index|user/Users/media_index', '1', '100', '1', 'cn', '1608708057', '1609385363');
INSERT INTO `ey_users_menu` VALUES ('8', '我的信息', 'v2', 'user/Users/info', 'user/Users/info', '0', '100', '1', 'cn', '1608709100', '1609385363');
INSERT INTO `ey_users_menu` VALUES ('9', '我的收藏', 'v2', 'user/Users/collection_index', 'user/Users/collection_index', '0', '100', '1', 'cn', '1608708100', '1609385363');
INSERT INTO `ey_users_menu` VALUES ('10', '财务明细', 'v2', 'user/Pay/pay_consumer_details', 'user/Pay/pay_consumer_details|user/Users/score_index', '0', '100', '1', 'cn', '1608709000', '1609387813');

-- -----------------------------
-- Table structure for `ey_users_money`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_money`;
CREATE TABLE `ey_users_money` (
  `moneyid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '金额明细表ID',
  `users_id` int(10) DEFAULT '0' COMMENT '会员表ID',
  `money` decimal(10,2) DEFAULT '0.00' COMMENT '金额',
  `users_money` decimal(10,2) DEFAULT '0.00' COMMENT '此条记录的账户金额',
  `cause` text COMMENT '事由，暂时在升级消费中使用到，以serialize序列化后存入，用于后续查询。',
  `cause_type` tinyint(1) DEFAULT '0' COMMENT '数据类型，0为消费，1为充值。其余后续添加。',
  `status` tinyint(1) DEFAULT '1' COMMENT '是否成功，默认1，0失败，1未付款，2已付款，3已完成，4订单取消。',
  `pay_method` varchar(50) DEFAULT '' COMMENT '支付方式，wechat为微信支付，alipay为支付宝支付',
  `wechat_pay_type` varchar(20) NOT NULL DEFAULT '' COMMENT '微信支付时，标记使用的支付类型（扫码支付，微信内部，微信H5页面）',
  `pay_details` text COMMENT '支付时返回的数据，以serialize序列化后存入，用于后续查询。',
  `order_number` varchar(30) DEFAULT '' COMMENT '订单号',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`moneyid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='金额明细表';


-- -----------------------------
-- Table structure for `ey_users_notice`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_notice`;
CREATE TABLE `ey_users_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT '' COMMENT '通知标题',
  `users_id` text NOT NULL COMMENT '用户id',
  `usernames` text NOT NULL COMMENT '用户名字符串',
  `remark` text COMMENT '通知信息',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站内通知';


-- -----------------------------
-- Table structure for `ey_users_notice_read`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_notice_read`;
CREATE TABLE `ey_users_notice_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `notice_id` int(10) DEFAULT NULL COMMENT '站内信id',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读, 1---是, 0---否',
  `is_del` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除, 1---是, 0---否',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户已读站内通知';


-- -----------------------------
-- Table structure for `ey_users_notice_tpl`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_notice_tpl`;
CREATE TABLE `ey_users_notice_tpl` (
  `tpl_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `tpl_name` varchar(200) DEFAULT '' COMMENT '模板名称',
  `tpl_title` varchar(200) DEFAULT '' COMMENT '站内信标题',
  `tpl_content` text COMMENT '发送内容',
  `send_scene` tinyint(1) DEFAULT '0' COMMENT '站内信发送场景(1=留言表单）',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '是否开启使用这个模板，1为是，0为否。',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '添加时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`tpl_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='站内信模板表';

-- -----------------------------
-- Records of `ey_users_notice_tpl`
-- -----------------------------
INSERT INTO `ey_users_notice_tpl` VALUES ('1', '留言表单', '您有新的留言消息，请到内容管理中查看！', '${content}', '1', '1', 'cn', '1638405553', '1638405553');
INSERT INTO `ey_users_notice_tpl` VALUES ('5', '订单付款', '您有新的待发货订单消息，请到商城订单查看！', '${content}', '5', '1', 'cn', '1638405553', '1638405553');
INSERT INTO `ey_users_notice_tpl` VALUES ('6', '订单发货', '您有新的待收货订单消息，请到会员订单查看！', '${content}', '6', '1', 'cn', '1638405553', '1638405553');

-- -----------------------------
-- Table structure for `ey_users_notice_tpl_content`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_notice_tpl_content`;
CREATE TABLE `ey_users_notice_tpl_content` (
  `content_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `source` tinyint(1) DEFAULT '0' COMMENT '来源，对应 users_notice_tpl 表 send_scene 字段',
  `admin_id` int(10) DEFAULT '0' COMMENT '管理员ID，不为空则表示管理员接收信息',
  `users_id` int(10) DEFAULT '0' COMMENT '用户ID，不为空则表示会员接收信息，暂未使用',
  `content_title` varchar(200) DEFAULT '' COMMENT '通知标题',
  `content` text COMMENT '接收的通知内容',
  `is_read` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读，默认0，1是，0否',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`content_id`),
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `users_id` (`users_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='站内信发送接收记录表';


-- -----------------------------
-- Table structure for `ey_users_parameter`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_parameter`;
CREATE TABLE `ey_users_parameter` (
  `para_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `dtype` varchar(32) NOT NULL DEFAULT '' COMMENT '字段类型',
  `dfvalue` varchar(1000) NOT NULL DEFAULT '' COMMENT '默认值',
  `is_system` tinyint(1) DEFAULT '0' COMMENT '是否为系统属性，系统属性不可删除，1为是，0为否，默认0。',
  `is_hidden` tinyint(1) DEFAULT '0' COMMENT '是否禁用属性，1为是，0为否',
  `is_required` tinyint(1) DEFAULT '0' COMMENT '是否为必填属性，1为是，0为否，默认0。',
  `is_reg` tinyint(1) DEFAULT '1' COMMENT '是否为注册表单，1为是，0为否',
  `sort_order` smallint(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`para_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员属性表(字段)';

-- -----------------------------
-- Records of `ey_users_parameter`
-- -----------------------------
INSERT INTO `ey_users_parameter` VALUES ('1', '手机号码', 'mobile_1', 'mobile', '', '1', '0', '0', '1', '1', 'cn', '0', '1613989577');
INSERT INTO `ey_users_parameter` VALUES ('2', '邮箱地址', 'email_2', 'email', '', '1', '0', '1', '1', '1', 'cn', '0', '1613989577');

-- -----------------------------
-- Table structure for `ey_users_score`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_score`;
CREATE TABLE `ey_users_score` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '积分明细表',
  `type` tinyint(1) DEFAULT '1' COMMENT '类型:1-提问,2-回答,3-最佳答案4-悬赏退回,5-每日签到',
  `users_id` int(10) DEFAULT '0' COMMENT '用户id',
  `ask_id` int(10) DEFAULT '0' COMMENT '问题id',
  `reply_id` int(10) DEFAULT '0' COMMENT '回答id',
  `score` int(10) DEFAULT '0' COMMENT '积分',
  `devote` int(10) DEFAULT '0' COMMENT '贡献值,同score',
  `money` decimal(8,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `info` varchar(255) DEFAULT '' COMMENT '说明',
  `lang` varchar(50) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(10) DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='积分详情表';


-- -----------------------------
-- Table structure for `ey_users_signin`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_signin`;
CREATE TABLE `ey_users_signin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `users_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `lang` varchar(50) NOT NULL DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '签到时间',
  PRIMARY KEY (`id`),
  KEY `users_id` (`users_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户签到表';


-- -----------------------------
-- Table structure for `ey_users_type_manage`
-- -----------------------------
DROP TABLE IF EXISTS `ey_users_type_manage`;
CREATE TABLE `ey_users_type_manage` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `type_name` varchar(30) DEFAULT '' COMMENT '类型名称',
  `level_id` int(10) DEFAULT '0' COMMENT '会员等级ID',
  `price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `limit_id` int(10) DEFAULT '0' COMMENT '会员期限限制，存储ID，值对应常量表的admin_member_limit_arr数组',
  `activity` varchar(30) DEFAULT '' COMMENT '活动文案',
  `sort_order` smallint(5) NOT NULL DEFAULT '0' COMMENT '排序',
  `lang` varchar(20) DEFAULT 'cn' COMMENT '语言标识',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员产品类型表';

-- -----------------------------
-- Records of `ey_users_type_manage`
-- -----------------------------
INSERT INTO `ey_users_type_manage` VALUES ('1', '升级为本站中级会员', '2', '100.00', '2', '', '100', 'cn', '1600759564', '1600759564');
INSERT INTO `ey_users_type_manage` VALUES ('2', '升级为本站高级会员', '3', '200.00', '3', '', '100', 'cn', '1600759564', '1600759564');

-- -----------------------------
-- Table structure for `ey_weapp`
-- -----------------------------
DROP TABLE IF EXISTS `ey_weapp`;
CREATE TABLE `ey_weapp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) DEFAULT '' COMMENT '插件标识',
  `name` varchar(55) DEFAULT '' COMMENT '中文名字',
  `config` text COMMENT '配置信息',
  `data` text COMMENT '额外序列化存储数据，简单插件可以不创建表，存储这里即可',
  `status` tinyint(1) DEFAULT '0' COMMENT '状态：0=未安装，1=启用，-1=禁用',
  `tag_weapp` tinyint(1) DEFAULT '1' COMMENT '1=自动绑定，2=手工调用。关联模板标签weapp，自动调用内置的show钩子方法',
  `thorough` tinyint(1) DEFAULT '0' COMMENT '彻底卸载：0=是，1=否',
  `position` varchar(30) DEFAULT 'default' COMMENT '插件位置',
  `is_buy` tinyint(1) DEFAULT '0' COMMENT '0-本地,1-线上购买 2-线上购买,但已删除,不显示在我的插件列表',
  `is_upgrade` tinyint(1) DEFAULT '1' COMMENT '是否提示升级',
  `sort_order` int(10) DEFAULT '100' COMMENT '排序号',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='插件应用表';


-- -----------------------------
-- Table structure for `ey_weapp_demo`
-- -----------------------------
DROP TABLE IF EXISTS `ey_weapp_demo`;
CREATE TABLE `ey_weapp_demo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` tinyint(1) DEFAULT '1' COMMENT '类型：1=文字链接，2=图片链接',
  `title` varchar(50) DEFAULT '' COMMENT '网站标题',
  `url` varchar(100) DEFAULT '' COMMENT '网站地址',
  `logo` varchar(255) DEFAULT '' COMMENT '网站LOGO',
  `sort_order` int(11) DEFAULT '0' COMMENT '排序号',
  `target` tinyint(1) DEFAULT '0' COMMENT '是否开启浏览器新窗口',
  `email` varchar(50) DEFAULT NULL,
  `intro` text COMMENT '网站简况',
  `status` tinyint(1) DEFAULT '1' COMMENT '状态(1=显示，0=屏蔽)',
  `delete_time` int(11) DEFAULT '0' COMMENT '软删除时间',
  `add_time` int(11) DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- -----------------------------
-- Records of `ey_weapp_demo`
-- -----------------------------
INSERT INTO `ey_weapp_demo` VALUES ('2', '1', '易优CMS', 'http://www.eyoucms.com', '', '100', '1', '', '', '1', '0', '1524975826', '0');
INSERT INTO `ey_weapp_demo` VALUES ('3', '2', '织梦58', 'http://www.dede58.com', 'http://www.eyoucms.dev/public/upload/system/2018/04/29/814ece093a0ba636209255dc20bd6e62.png', '100', '0', '', '', '1', '0', '1524976095', '1524976135');
INSERT INTO `ey_weapp_demo` VALUES ('4', '1', 'ThinkPHP官网', 'http://www.thinkphp.cn', '', '100', '1', '', '', '1', '0', '1525266497', '1525266608');
INSERT INTO `ey_weapp_demo` VALUES ('5', '1', '微信小程序开发教程', 'http://www.yiyongtong.com', '', '100', '1', '', '', '1', '0', '1525748425', '0');

-- -----------------------------
-- Table structure for `ey_wx_users`
-- -----------------------------
DROP TABLE IF EXISTS `ey_wx_users`;
CREATE TABLE `ey_wx_users` (
  `wxuser_id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户id',
  `openid` varchar(100) NOT NULL DEFAULT '' COMMENT 'openid',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '微信昵称',
  `headimgurl` varchar(200) NOT NULL DEFAULT '' COMMENT '头像',
  `add_time` int(11) NOT NULL DEFAULT '0' COMMENT '新增时间',
  `update_time` int(11) NOT NULL DEFAULT '0' COMMENT '更新时间',
  PRIMARY KEY (`wxuser_id`),
  KEY `openid` (`openid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='微信小程序用户表';

