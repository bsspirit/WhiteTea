-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema tea
--

CREATE DATABASE IF NOT EXISTS tea;
USE tea;

--
-- Definition of table `tea`.`t_tea_message`
--

DROP TABLE IF EXISTS `tea`.`t_tea_message`;
CREATE TABLE  `tea`.`t_tea_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `content` text,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tea`.`t_tea_message`
--

/*!40000 ALTER TABLE `t_tea_message` DISABLE KEYS */;
LOCK TABLES `t_tea_message` WRITE;
INSERT INTO `tea`.`t_tea_message` VALUES  (1,'admin','bsspirit@gmail.com','安吉县位于浙江省北部，这里山川隽秀，绿水长流，是我国著名的竹子之乡。1982年，人们偶然在安吉的一处山谷里发现了一株白茶古茶树，自此以后，安吉高山白茶日渐被人们所认识和开发。这里生长着安吉白茶和西湖龙井。两相对照，安吉白茶茶树的颜色明显较浅。更加神奇的是，茶树茶芽颜色会随着时令发生变化：清明前的嫩叶是灰白色的；到了谷雨，嫩叶会逐渐转绿，直到全绿。安吉高山白茶的产茶期较短，一般只有一个月左右，这使得白茶更显娇贵。 与别的绿茶相比，安吉高山白茶的显著特点就是氨基酸含量高，营养丰富。因此，安吉白茶不仅喝起来口感好，而且还有利于身体健康。最近，白茶在女孩子中流行起来，还赢得了\"美容茶\"的雅号。 ','2011-04-28 12:29:46','123.121.0.154',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `t_tea_message` ENABLE KEYS */;


--
-- Definition of table `tea`.`t_tea_wiki`
--

DROP TABLE IF EXISTS `tea`.`t_tea_wiki`;
CREATE TABLE  `tea`.`t_tea_wiki` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `title` varchar(16) DEFAULT NULL,
  `content` text,
  `image` varchar(256) DEFAULT NULL,
  `repost` varchar(256) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `ip` varchar(32) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tea`.`t_tea_wiki`
--

/*!40000 ALTER TABLE `t_tea_wiki` DISABLE KEYS */;
LOCK TABLES `t_tea_wiki` WRITE;
INSERT INTO `tea`.`t_tea_wiki` VALUES  (1,'bsspirit','bsspirit@gmail.com','安吉介绍','<strong>安吉</strong>县位于浙江省北部，这里山川隽秀，绿水长流，是我国著名的竹子之乡。1982年，人们偶然在安吉的一处山谷里发现了一株白茶古茶树，自此以后，安吉高山白茶日渐被人们所认识和开发。这里生长着安吉白茶和西湖龙井。两相对照，安吉白茶茶树的颜色明显较浅。更加神奇的是，茶树茶芽颜色会随着时令发生变化：清明前的嫩叶是灰白色的；到了谷雨，嫩叶会逐渐转绿，直到全绿。安吉高山白茶的产茶期较短，一般只有一个月左右，这使得白茶更显娇贵。 与别的绿茶相比，安吉高山白茶的显著特点就是<em>氨基酸</em>含量高，营养丰富。因此，<strong>安吉白茶</strong>不仅喝起来口感好，而且还有利于身体健康。最近，白茶在女孩子中流行起来，还赢得了&quot;<em>美容茶</em>&quot;的雅号。 ','http://1.100rmb.sinaapp.com/img/anji.gif','','2011-04-28 13:43:52','123.121.29.223',0),
 (2,'bsspirit','bsspirit@gmail.com','白茶 -- 百科名片','<strong>白茶</strong>依据成品茶的外观呈白色，故名<strong>白茶</strong>。六大茶类之一。白茶为福建特产，主要产区在福鼎、政和、松溪、建阳等地。基本工艺包括萎凋、烘焙（或阴干）、拣剔、复火等工序。萎凋是形成白茶品质的关键工序。白茶具有外形芽毫完整,满身披毫，毫香清鲜，汤色黄绿清澈，滋味清淡回甘的的品质特点。 属轻微发酵茶，是我国茶类中的特殊珍品。因其成品茶多为芽头，满披白毫，如银似雪而得名。此外，<strong>中国浙江的安吉白茶因自然变异整片茶叶呈白色</strong>，不同于带有白色绒毛的一般白茶。','http://1.100rmb.sinaapp.com/img/4.jpg','http://baike.baidu.com/view/27738.html?wtp=tt','2011-04-29 01:36:58','123.121.29.223',0),
 (3,'bsspirit','bsspirit@gmail.com','白茶的历史渊源','<span style=\"font-weight: bold;\">白茶</span>，素为茶中珍品，历史悠久，其清雅芳名的出现，迄今已有八百八十余年了。<a href=\"http://baike.baidu.com/view/8102.htm\" target=\"_blank\">宋徽宗</a>（赵佶）在《大观茶论》（成书于1107～1110“大观”年间，书以年号名）中，有一节专论白茶曰：白茶，自为一种，与常茶不同。其条敷阐，其叶莹薄，林崖之间，偶然生出，虽非人力所可致。有者，不过四五家；生者，不过一二株；所造止于二三胯（銙）而已。芽英不多，尤难蒸焙，汤火一失则已变而为常品。须制造精微，运度得宜，则表里昭彻如玉之在璞，它无与伦也。浅焙亦有之，但品不及。 <br /><br />&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;宋代的皇家茶园，设在福建建安郡北苑（即今福建省建瓯县境）。《大观茶论》里说的白茶，是早期产于北苑御焙茶山上的野生白茶。其制作方法，仍然是经过蒸、压而成团茶，同现今的白茶制法并不相同。而白茶的生产，是于清嘉庆初年（1769）采芽茶制成银针。1885年改采福鼎大白茶制成<span style=\"font-weight: bold;\">白毫银针</span>。 <br /><br />&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;关于白茶的历史究竟起于何时？茶学界有些不同的观点。有人认为白茶起于北宋，其主要依据是白茶最早出现在《大观茶论》、《东溪试茶录》（文中说建安七种茶树品种中名列第一的是&quot;白叶茶&quot;）中；也有认为是始于明代或清代的，持这种观点的学者主要是从茶叶制作方法上来加以区别茶类的，因白茶的生产过程只经过&quot;萎凋与干燥&quot;两道工序。也有的学者认为，中国茶叶生产历史上最早的茶叶不是绿茶而是白茶。其理由是：中国先民最初发现茶叶的药用价值后，为了保存起来备用，必须把鲜嫩的茶芽叶晒干或焙干，这就是中国茶叶史上<span style=\"font-weight: bold;\">白茶</span>的诞生。<br />','http://1.100rmb.sinaapp.com/img/10.jpg','http://info.chaye.com/archive/3284.html','2011-05-01 23:50:32','124.193.107.225',0),
 (4,'bsspirit','bsspirit@gmail.com','白茶 - 维基百科','<p><strong>白茶</strong></p>白茶是指一种采摘后，只经过杀青，不揉捻，再经过晒或文火干燥后加工的茶。白茶白毫显露。比较出名的出自福建北部和宁波的白毫银针，还有白牡丹。<br /><br /><strong>起源</strong><br /><br />白茶的名字最早出现在唐朝陆羽的《茶经》七之事中，其记载:“永嘉县东三百里有白茶山。”陈橼教授在《茶叶通史》中指出:“永嘉东三百里是海,是南三百里之误。南三百里是福建福鼎(唐为长溪县辖区)，系白茶原产地。”可见唐代长溪县(福建福鼎)已培育出“白茶”品种。因其仅有名称，能否作为起源证据还有待进一步商榷。<br /><br />有的学者认为白茶始于神农尝百草时期，湖南农学院的杨文辉先生就持此观点。他发表的《关于白茶起源时期的商榷》一文中提出白茶的出现早于绿茶。<br /><br /><strong>功效</strong><br /><br />白茶具有保健功效，已被人们普遍认可。《本草纲目》中称:“白茶性寒凉，功同犀角。”[来源请求]研究表明白茶比绿茶更为具有抗病毒和抗细菌功效也具有更多的儿茶素、没食子酸、可可碱以及咖啡因。儿茶素具有抗菌、除臭、防蛀等多种功效。而绿茶相比白茶则含有更多的氟化物，这是有损身体健康的 。<br />白茶具有很好的抗肿瘤功效。<br /><br />','http://1.100rmb.sinaapp.com/img/6.jpg','http://zh.wikipedia.org/wiki/%E7%99%BD%E8%8C%B6','2011-05-02 23:52:49','123.121.29.223',0),
 (5,'bsspirit','bsspirit@gmail.com','安吉白茶与福建白茶区别','<p><strong>安吉白茶</strong></p><p>安吉白茶虽名为白茶，却属于绿茶类。因为它是白叶茶按照绿茶的方法制作而成的。新叶经过四五个小时的摊放，然后按照一定的温度和时间进行杀青。在这之后是整形理条，最后烘干，安吉白茶就全新出锅了。新的安吉白茶，冲泡以后，茎翠叶白，茶汤颜色鹅黄，香气鲜爽馥郁。&nbsp; </p><p>与别的绿茶相比，安吉白茶的显著特点就是氨基酸含量高，营养丰富。因此，安吉白茶不仅喝起来口感好，而且还有利于身体健康。最近，白茶在女孩子中流行起来，还赢得了“美容茶”的雅号。&nbsp; </p><p><strong>福建白茶</strong></p><p>福建白茶的品质特征：品质好的白毫银针茶，外形条索肥壮挻直毫密，色泽银白闪亮，整齐洁净，内质香气清高，毫香特久，鲜醇嫩爽，汤色杏黄清澈，叶底幼嫩肥软匀亮；白牡丹茶外形叶张肥嫩，毫心肥壮，叶态伸展芽叶连枝叶缘垂卷，破张少、匀整，色泽灰绿，毫色银白，洁净，无老梗、枳及腊叶，内质香气清鲜纯正，毫香浓显，汤色淡杏黄，清澈，清醇清甜，嫩匀，叶底叶色黄绿，叶脉红褐，叶质柔软鲜亮；贡眉（寿眉）茶外形毫心多较肥壮，叶张稍肥嫩，芽叶连枝，叶整紧卷如眉，匀整，破张少，灰绿或墨绿，色泽调和，洁净，无老梗、枳及腊叶，内质香气清纯，毫香显，汤色浅橙黄，清澈，滋味清甜酵爽，叶底柔软、嫩亮、毫芽多；新工艺白茶外形条索粗松尚卷曲，褐绿色，匀整，洁净，有嫩梗，内质香气略显板栗香，酵厚爽适，汤色橙而清澈，叶底匀整舒展。&nbsp; </p><p>福建白茶的保健功效 ： 福建白茶除了含有其它茶叶固有的营养成份外，还含有人体所必需的活性酶，国内外医学研究证明，长期饮用白茶可以显著提高人体内脂酶活性，促进脂肪分解代谢，有效控制胰岛素分泌量，延缓葡萄糖的肠吸收，分解体内血液中多余的糖份，促进血糖平衡。白茶含有丰富的多种氨基酸，其性寒凉，具有退热祛暑解毒之功效,在产区内夏季啜一杯白牡丹茶水，很少会中暑，因此白牡丹是当地茶农夏季必备的白茶之一。在我国华北及福建产地被广泛视为养护麻疹患者的良药，故清代名人周亮工在《闽小记》中载：“白毫银针,产太姥山鸿雪洞，其性寒，攻同犀角，是治麻疹之圣药。”现在太姥山还有一株具有170多年树龄的福鼎大白茶原始母树，名曰“绿雪芽”。白茶存放时间越长，其药用价值越高。白茶中还含有丰富的维生素A原，它被人体吸收后，能迅速转化为维生素A，可预防夜盲症与干眼病。同是时白茶还有防辐射物质，对人体的造血机能有显著的保护作用，能减少电视辐射的危害，因此在看电视过程中多喝一些白茶是是百利无一害，尤其是少年儿童更应该提倡多喝白茶，有利于保护眼睛，健康身体。</p><p>&nbsp;</p>','http://1.100rmb.sinaapp.com/img/10.jpg','','2011-05-05 12:12:56','123.116.89.240',0),
 (6,'bsspirit','bsspirit@gmail.com','白茶与白片','&nbsp;<strong _extended=\"true\">安吉白茶</strong>，它的特征是并无白色茸毛满披，而是茶芽本身就是白色。<br _extended=\"true\" />白色的茶芽最早记录于《大观茶论》中，引以为珍稀瑞兆，作者赵舍身为宋代皇帝，大约只是听说而未亲见亲尝，写得很笼统。安吉山里一株清乾隆年间就有的白芽茶树，归一家姓桂的农民所有。几代以来，兄弟分家而不分茶树。每年春季也只采些炒了送送亲友。因这株茶树从不结茶籽，又称“石女茶”，无法繁殖。改革开放后，安吉农林部门进行全县资源普查时，由市、县技术人员组成的科研小组，对白茶进行了剪苗扦插的无性繁殖，从90多个成活的芽发展到目前的1000多亩白茶基地，成为特色商品进入市场。这种白茶的芽经两三个太阳的日照，就从叶脉开始变绿，多次冲洗后，色泽又复原成玉白色。安吉白茶早春芽嫩叶白、以一芽二叶为最白，夏秋茶为绿色和一般绿茶无异，但安吉白茶氨基酸含量较高，是普通绿茶的二倍以上。 安吉白茶是一种珍罕的变异茶种，属于“低温敏感型”茶叶，其阈值约在23℃。茶树产“白茶”时间很短，通常仅一个月左右。以原产地浙江安吉为例，春季，因叶绿素缺失，在清明前萌发的嫩芽为白色。在谷雨前，色渐淡，多数呈玉白色。雨后至夏至前，逐渐转为白绿相间的花叶。至夏，芽叶恢复为全绿，与一般绿茶无异。<br _extended=\"true\" /><br _extended=\"true\" />正因为神奇的安吉白茶是在特定的白化期内采摘、加工和制作的，所以茶叶经瀹泡后，其叶底也呈现玉白色，这是安吉白茶特有的性状。“凤形”安吉白茶条直显芽，壮实匀整；色嫩绿，鲜活泛金边。“龙形”安吉白茶扁平光滑，挺直尖削；嫩绿显玉色，匀整。两种茶的汤色均嫩绿明亮，香气鲜嫩而持久；滋味或鲜醇、或馥郁，清润甘爽，叶白脉翠。根据品级不同，为一芽一叶初展至一芽三叶不等，高品级者芽长于叶。此外，精品安吉白茶其干茶色泽金黄隐翠（尤其是明前茶，不少绿茶也有这个特点）。<br _extended=\"true\" /><br _extended=\"true\" /><strong _extended=\"true\">安吉白片</strong>又以产地名为“银坑白片”，它的特征是“色以绿，白毫显露”，价格比安吉白茶低。安吉白片是安吉县20世纪80年代初创立的一个品牌，它是以安吉高山绿茶和龙井43、迎霜等嫩芽为主要原料，经过精心加工而成，是一种扁型茶。 安吉白片与安吉白茶均属绿茶类，只是树种不同。安吉白片的树种以高山绿茶（地方群体种）、“龙井43”和“迎霜”为主。而安吉白茶的树种则是唯一的，那就是“白叶一号”（无性系茶树良种）。 安吉白片外形挺直略扁，形如兰蕙；色泽翠绿，白毫显露；叶芽如金镶碧鞘，内裹银箭，十分可人。冲泡后，清香高扬且持久。滋味鲜爽，饮毕，唇齿留香，回味甘而生津。叶底嫩绿明亮，芽叶朵朵可辨。安吉白片还有一种异于其它绿茶之独特韵味，即含有一丝清泠如“淡竹积雪”的奇逸之香。茶叶品级越高，此香越清纯，这或许是茶乡安吉的“风土韵” ','http://1.100rmb.sinaapp.com/img/1.jpg',NULL,'2011-05-05 12:12:56','123.116.89.240',0),
 (7,'bsspirit','bsspirit@gmail.com','安吉白茶冲泡方法','<p>　　安吉白茶色、香、味、形具佳，在冲泡过程中必须掌握一定的技巧才能使品饮都充分领略到安吉白茶形似凤羽，叶片玉白，茎脉翠绿，鲜爽甘醇的视觉和味觉的享受。</p><p>　　安吉白茶冲泡前的准备<br />　　1.茶叶选择：要选择一芽二叶初展，干茶翠绿鲜活略带金****，香气清高鲜爽，外形细秀、匀整的优质安吉白茶。<br />　　2.泡茶用水：冲泡安吉白茶选用境内黄浦江源头水是最佳选择。由于安吉白茶原料细嫩，叶张较薄，所以冲泡时水温不宜太高，一般掌握在80－85℃为宜。<br />　　3.茶具：冲泡安吉白茶选用透明玻璃杯或透明玻璃盖碗。通过玻璃杯可以尽情地欣赏安吉白茶在水中千姿百态，品其味、闻其香，更能观其叶白脉翠的独特品格。除冲泡杯外，冲泡安吉白茶还需要备有：玻璃冲水壶，观水瓶、竹制的本色茶盘，茶托、茶荷、茶匙、茶枝、茶巾和白色瓷质漂盘等器具。</p><p>　　安吉白茶的冲泡<br />　　1.备具：将安吉白茶冲泡时的用具逐一端到表演台上。<br />　　2.备水：将沸水倒在玻璃壶中备用。<br />　　3.观水：取黄浦江源头水，高冲于观水瓶中，再插入白茶鲜叶枝条，泉水清彻，枝条在水中漂浮，给人以动感。<br />　　4.赏鲜叶：安吉白茶鲜叶形似兰花，叶肉玉白，叶脉翠绿，鲜活欲出。<br />　　5.温杯：倒入少许开水于茶杯中，茶艺小姐双手捧杯，转旋后将水倒于孟。<br />　　6.置茶：用茶匙取安吉白茶少许置放在茶荷中，然后向每个杯中投入3克左右白茶。<br />　　7.浸润泡：提举冲水壶将水沿杯壁冲入杯中，水量约为杯子的四分之一，目的是浸润茶叶使其初步展开。<br />　　8.运茶遥香：左手托杯底，右手扶杯，将茶杯顺时针方向轻轻转动，使茶叶进一步吸收水分，香气充分发挥，遥香约0.5分钟。<br />　　9.冲泡：冲泡时采用回旋注水法，可以欣赏到茶叶在杯中上下旋转，加水量控制在约占杯子的三分之二为宜。冲泡后静放2分钟。<br />　　10.奉茶：用<a href=\"http://www.chazhanggui.com/\">茶盘</a>将刚沏好的安吉白茶奉送到来宾面前。<br />　　11.品茶：品饮安吉白茶先闻香，再观汤色和杯中上下浮动玉白透明形似兰花的芽叶，然后小口品饮，茶味鲜爽，回味甘甜，口齿留香。<br />　　12.观叶底：安吉白茶与其他茶不同，除其滋味鲜醇、香气清雅外，叶张的透明和茎脉的翠绿是其独有的特征。观叶底可以看到冲泡后的茶叶在漂盘中的优美姿态。<br />　　13.收具：客人品茶后离去，及时收具，并向来宾致意送别。</p>','http://1.100rmb.sinaapp.com/img/10.jpg',NULL,'2011-05-07 00:44:23','123.116.89.240',0),
 (8,'bsspirit','bsspirit@gmail.com','规模茶场看好“明后”安吉白茶','<span style=\"font-family:Verdana;\">　　按目前市场上的流行说法，“明前茶”属于高档茶，价格高，而过了清明，茶叶价格就一天一变，一般都呈逐日走低姿态。但日前不少白茶大户却表示，今年清明节后，白茶品质可能会比明前更好。</span><p><span style=\"font-family:Verdana;\">　　小户茶农排出卖茶“长龙阵”</span></p><p><span style=\"font-family:Verdana;\">　　昨天上午7点多，在县城安吉白茶临时交易市场里，卖茶的临时摊位早已排起了长龙。记者估计，足有上千名茶农在这里叫卖白茶。</span></p><p><span style=\"font-family:Verdana;\">　　通过走访，记者了解到，散装安吉白茶价格有400多元一斤的，也有500多元、600多元一斤的，但最高也只卖到700多元一斤。</span></p><p><span style=\"font-family:Verdana;\">　　皈山乡茶农楼文革告诉记者，自己从早上5点多就到这里卖茶了，20多斤茶，600多元一斤，刚才一位杭州的茶老板拿去10斤，就剩一半了。“卖得还算快，但这个价钱很一般。”</span></p><p><span style=\"font-family:Verdana;\">　　一位张家港的茶商在溪龙茶农郑羽清的摊位前转了好几次，仔细看了他家的茶后，开价600元一斤。但郑羽清开价要700元，最后双方并未成交。</span></p><p><span style=\"font-family:Verdana;\">　　据悉，今年我县入春较晚，清明前夕我县气温较低，白茶生长较为缓慢，还未达到最佳状态，因此价格也较为一般。</span></p><p><span style=\"font-family:Verdana;\">　　今年“明后”也产高档安吉白茶</span></p><p><span style=\"font-family:Verdana;\">　　昨天上午9点多，在溪龙乡大山坞茶场里，十多名工人正忙着包装白茶，准备发往上海。“这是昨天刚采摘下来的白茶， 40斤，以2400元一斤的价格被上海一家茶楼订购。”大山坞白茶营销部经理盛勇亮说，“很多人认为安吉白茶是越早越好，但我不这样认为。从客观来说，前期安吉的气温低，光照不足，白茶只有米粒般大小，炒制完白茶外观不好看，而且味道淡。清明节后，白茶芽头逐渐成形，叶片呈现麦绿色，阳光照射时其本有的香味就会散发出来，品质较清明前更好。”</span></p><p><span style=\"font-family:Verdana;\">　　他告诉记者，今后几天，大山坞白茶将会按品质的不同，合理确定白茶价格，高档白茶在明后也可能有个出产小高峰。</span></p><p><span style=\"font-family:Verdana;\">　　记者从溪龙乐平茶场也了解到，清明节后该茶场白茶零售价也会稳定在一定价格水平上。茶场负责人宋昌美表示，她也认为清明节后白茶品质也将大大提升，价格也会有所提高。“白茶的价格并不是由时间决定，而是其品质决定的。”</span></p><p><span style=\"font-family:Verdana;\">　　白茶品质不由时间说了算</span></p><p><span style=\"font-family:Verdana;\">　　县茶叶站站长、安吉县白茶协会秘书长赖建红分析，今年高档白茶在清明节后出现高价是正常现象。因为今年入春时间晚，许多“明前茶”的青叶大小不一，光照不足，而未来几天，青叶会长到大小均等，而且沐浴充足的阳光后，香气会散发出来，炒出的干茶卖相也会非常好。这个时候的白茶通过精加工后，当然会卖出高价。</span></p><p><span style=\"font-family:Verdana;\">　　另据有关专家介绍，安吉白茶的品质好坏并不是按清明前后、谷雨前后来定，而是应该按照其生长的条件来定。</span></p><p><span style=\"font-family:Verdana;\">　　专家进一步解释说一般来讲，有效积温达9.5摄氏度左右是白茶能够较好生长的时候。市场上所说安吉白茶“一芽一叶”、“两芽一叶”，应该是一片或者两片真叶带一个芽，这才是品质最好的安吉白茶。而今年清明节前采摘的安吉白茶，由于有效积温并不够，大多是一片奶叶或者一片鱼叶带一个芽，并不是真正的“一芽一叶”。从鲜叶看，奶叶或鱼叶与真叶区别不大，但炒制后，奶叶易脱落，鱼叶易发黑，无法达到真叶的亮、香、绿的效果。按照安吉今年的气候条件，清明节以后才是安吉白茶品质最好的时候。</span></p><br />','http://1.100rmb.sinaapp.com/img/4.jpg','http://www.baicha.cn/html/1391.html','2011-05-08 00:14:38','124.193.107.225',0),
 (9,'bsspirit','bsspirit@gmail.com','闻香识白茶','一片白茶，是安吉最让人心甘如怡的礼物，抿一口清醇白茶，似有青山竹浪浮于眼前。<p>&nbsp;&nbsp;&nbsp;&nbsp;清明刚过，安吉最让人期待的新一季白茶全面进入采摘期，来自全国各地的十余万采茶工涌入安吉，形成一幅最美的江南春景。想走入这如画的景中？机会来了。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;安吉白茶不仅被安吉人民视为致富创收的“金叶子”，而且正在被越来越多的杭州人誉为“茗中奇葩”、“茶中珍品”。就在清明前后，2011年安吉白茶新鲜出炉。为了把优质、安全的安吉白茶推向大都市，由安吉县农业局牵头组织，特意开展“进美丽乡村、品安吉白茶——媒体携手杭湖市民体验茶之旅”活动。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;4月10日，数户幸运的杭州家庭将共赴安吉“闻香识白茶”。其间，这些家庭将在“白茶之乡”溪龙乡的白茶博物馆观看白茶现场制作、茶艺表演、白茶文化展示，在万亩茶园间体验采茶乐趣，到给上海世博会制作礼品茶的浙江宋茗白茶有限公司感受清新茶品出炉过程。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;参与方法非常简单，只要你喜欢白茶，说出一个热爱白茶的独特理由，将有机会带全家（限3人）全程免费赴安吉“茶之约”。如果你是一名微博达人，愿意与好友分享赏茶、品茶的过程，将优先入围。你只需要点击杭报在线“杭州湾频道”（bay-hzrb.hangzhou.com.cn），进入报名通道即可。</p><p>&nbsp;&nbsp;&nbsp;<strong>&nbsp;为何说“三两黄金买不到一两白茶”?</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;安吉白茶，近年来声名鹊起，人们都以为是中国名茶的后起之秀，实为中国历史名茶中的奇葩。1980年，安吉林科人员在高山之巅发现了一株野生白茶单株，称为“白茶祖”。转眼30余年，安吉白茶已发展为面积达10万亩，产量850吨，产值9.6亿元的特色农业支柱产业。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;从安吉白茶的“源头”来看，宋徽宗赵佶在《大观茶论》中说：“白茶自为一种，与常茶不同，其条敷阐，其叶莹簿，崖林之间，偶然生出，虽非人力所致，有者不过四五家，生者不过一二株。”赵佶的观点和描述，无疑为安吉白茶披上了皇家的外衣，顷刻间让安吉白茶“珍贵”且“高贵”。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;从地理上看，安吉地处天目山北麓，群山起伏，树竹交荫，云雾缭绕，雨量充沛，土壤肥沃。安吉被称为“中国竹乡”，植被覆盖率为60%，而茶竹之缘，也颇为“珍贵”。加之原产地证明商标的启用，这些元素也在支持着安吉白茶的“珍贵”特性，将安吉白茶的“珍贵”体现得淋漓尽致。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;除了百年流传的历史积淀，优越的自然生态条件和精湛的制茶技艺，也是造就如今安吉白茶卓越品质的主要原因。安吉境内空气质量达到一级，水质达到二级以上，被誉为气净、水净、土净的“三净”之地，保障了安吉白茶的整体水平都处在一个较高的层次上。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;如此牛的“安吉白茶”，近年曾创造过“三两黄金买不到一两白茶”的成绩。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;而在安吉人的眼里，白茶除了是一种产品，更是一种媒介，能传达出一个地方的经济特色及风土人情。诚如安吉县农业局肖建忠副局长所说，安吉白茶创造了增收的奇迹，又间接刺激了旅游业的发展。每年的采摘期，来自上海、杭州、北京等地的采购商、游客络绎不绝，将旅游与采茶相结合，形成一道美丽的风景线。</p><p>&nbsp;&nbsp;<strong>&nbsp;&nbsp;每片白茶的“娘家”你都可知</strong></p><p>&nbsp;&nbsp;&nbsp;&nbsp;2001年，“安吉白茶”被国家工商总局批准注册证明商标，先后获得了原产地保护、中国名牌农产品、中国驰名商标等荣誉称号，并在33个国家和地区进行了国际注册。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;就在去年10月，安吉县人民政府在北京钓鱼台国宾馆宣布，安吉正式被列为无公害农产品质量安全追溯制度建设试点单位。而知名的安吉白茶，则自此有了“身份证”，质量有保障，可追溯到源头。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;截至当年，安吉白茶区域公用品牌价值达到了20.36亿元，从2009年的17.11亿跃升至20.36亿人民币，一年净增3.25亿元。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;在白茶品牌和管理方面颇有经验的安吉人还创新了更多理念。比如，为破解小规模经营与农产品大品牌建设之间的矛盾这一难题，安吉工商局携手县农业局创新使用了“双商标”管理，即“安吉白茶地理商标”＋“企业商标”，形成了“母子商标”的管理模式。</p><p>&nbsp;&nbsp;&nbsp;&nbsp;“安吉白茶”的包装统一，必须有生产厂名、厂址等要素。针对没有独立品牌的中小茶农，通过组织引导其加入专业的合作社，统一使用合作社商标，合作社对每个社员的茶园进行分区编号管理，使市场上的每盒安吉白茶都能追溯到单一生产者。安吉白茶“双商标”这一创新模式完善了安吉白茶质量的可追溯体系，有效避免了以次充好、假冒伪劣现象的发生。</p><br />','http://1.100rmb.sinaapp.com/img/6.jpg','http://www.baicha.cn/html/1388.html','2011-05-08 00:16:16','124.193.107.225',0),
 (10,'bsspirit','bsspirit@gmail.com','高档安吉白茶产量减少需求稳定','<span style=\"font-family:Verdana;\">　　白茶上市已持续半个月左右，规模茶企的白茶产量和价格如何？高档茶叶什么时候集中上市？产量能否满足市场？带着这些问题，记者走访了县内一些规模茶企。</span><p><span style=\"font-family:Verdana;\">　　今年，高档安吉白茶明显减少</span></p><p><span style=\"font-family:Verdana;\">　　4月15日上午，记者在千道弯茶场看到，工作人员正在包装茶叶，旁边苏州的吴先生等着拿货。茶场负责人陈锁告诉记者，“今年，要高档白茶的客户多，出价也高，好茶一出来，就被客户拿走了。尽管今年的高档茶能卖出高价，但是我们的产量不能满足市场需求，高档白茶产量较去年减少了50%。”</span></p><p><span style=\"font-family:Verdana;\">　　据了解，千道弯茶场的白茶基地从4月2日就开采了，但他们的白茶卖得最高的一天不是在清明前，而是在4月11日。</span></p><p><span style=\"font-family:Verdana;\">　　在大山坞茶场，企业负责人盛勇亮介绍说，“今年白茶受天气影响很大，高档白茶减少了4成，现在好茶越来越少，再过一个星期时间，我们的茶叶采摘就结束了。虽然能卖到1800元至7000元一斤，要货的人也很多，但我们只能看着高档茶的订单白白流走。”乐平茶场老板宋昌美同样表示，今年高档白茶价格不错，但产量明显减少。</span></p><p><span style=\"font-family:Verdana;\">　　另外，记者走访发现，这几天的干茶临时交易市场虽然还能“淘”到少量好茶，但这些白茶大部分都是前段时间没卖掉的。而在青叶交易市场上，青叶的个头比明前茶个头大了好几倍，杆子又长又细，很多茶已经是一芽二叶，许多茶农喊叹，“这几天气温又一下子高了，山上茶叶长得太快。”</span></p><p><span style=\"font-family:Verdana;\">　　县茶叶站站长、安吉县白茶协会秘书长赖建红介绍说，今年安吉的高档白茶主要集中在4月中上旬，而在去年这个时候，安吉白茶采摘已经接近尾声了。</span></p><p><span style=\"font-family:Verdana;\">　　气候、地形对高档茶产量有影响</span></p><p><span style=\"font-family:Verdana;\">　　为什么今年的高档白茶产量明显减少？</span></p><p><span style=\"font-family:Verdana;\">　　千道弯茶场老板陈锁认为，高档茶减少主要是天气原因。今年前期气温低，白茶上市时间推迟，清明前气温低，采摘的高档白茶量很少，清明过后，气温回升又太快，导致山上的茶叶生长过快，采摘跟不上，好茶的总产量就减少了。</span></p><p><span style=\"font-family:Verdana;\">　　记者了解到，不仅是千道弯茶场，宋茗、大山坞、乐平、杨家湾等多家茶场有关负责人都普遍认为今年的前期气温太低，对白茶影响很大。</span></p><p><span style=\"font-family:Verdana;\">　　赖建红介绍，高档白茶减产和气候、地形都有关系。气温低导致整个采茶期较去年缩短了一周左右的时间，再加上后期茶叶生长过快，好茶的总量就减少很多。另外，今年许多平原地区白茶上市晚，前期的好茶几乎没有。</span></p><p><span style=\"font-family:Verdana;\">　　高档安吉白茶市场需求稳定</span></p><p><span style=\"font-family:Verdana;\">　　采访中，记者看到干茶交易市场里，也有人在“淘”一些高档的白茶，但这部分人不多。更多的客户来安吉买高档白茶，会直奔规模茶企。</span></p><p><span style=\"font-family:Verdana;\">　　为什么许多客户把买茶的方向瞄准茶企？</span></p><p><span style=\"font-family:Verdana;\">　　在千道弯茶场买茶的苏州吴老板说道，他们买去的高档茶送的都是比较重要的朋友和客户，质量是最重要的。今年安吉高档白茶少了，干茶市场里白茶档次较多，要想买到好茶很难，而正规茶企更值得信赖，他们在采摘和加工上更加规范。</span></p><p><span style=\"font-family:Verdana;\">　　大山坞茶场盛勇亮表示，自己卖了三十多年的白茶，尽管受天气影响我们的白茶上市晚，但是为了保证质量，宁愿推迟采摘。现在企业所推出的高档白茶从香气、茶色、口感、干度、净度等方面都是能经得起市场考验的。</span></p><br />','http://1.100rmb.sinaapp.com/img/6.jpg','http://www.baicha.cn/html/1406.html','2011-05-08 00:18:09','219.142.211.103',0),
 (11,'bsspirit','bsspirit@gmail.com','15万外来茶姑安吉采新芽','<span style=\"font-family:Verdana;\">又是茶香四溢的季节。当久违的太阳一露头，位于安吉山岚的那一片片白茶园里便是一派忙碌景象，从皖、赣、豫、鄂、滇、黔等地招聘来的15万名茶姑正在娴熟地采摘一年一度的鲜嫩新芽。<br />&nbsp;<br />　　4月2日中午时分，当我们走进安吉白茶故里溪龙乡大山坞茶场时，一片片墨绿的茶园里，&nbsp; <br />一阵阵欢声笑语在春风里荡漾，一朵朵新绿在巧手里飞扬，一篮篮新芽从山涧走向车间。“今年新茶上市迟，新芽芽头短，采茶功夫大，所以我们聘请的采茶工比以往要多。”茶场副经理盛永亮说道。因为准备充分，聘请的外地采茶工都及时赶到。</span><p><span style=\"font-family:Verdana;\">　　安吉白茶主产区的溪龙乡，随着采摘量的逐年增加，所需采茶工也在逐年上涨。据初步统计，今年安吉白茶开采期间，全乡采茶工将突破3万名，同比净增1万名。</span></p><p><span style=\"font-family:Verdana;\">　　针对采茶工紧缺这一问题，安吉白茶大户早就开始准备。“我们一个重要办法就是提高采茶工的工资收入，改善食宿条件，给采茶女工购买安全保险等，以优厚的条件留住原来的采茶工，巩固采茶工队伍。”盛永亮说。在仙子茶场，女老板宋昌美更有新招。她让女子茶叶合作社的姐妹与来自外地的采茶女工结对帮扶，利用晚上或者雨天休息时间学习种茶、采茶技术。在中国安吉白茶第一村——溪龙黄杜，村党支部和村委会还组织小超市送货上山，组织村卫生室的医务人员送医上山。</span></p><p><span style=\"font-family:Verdana;\">　　“茶园大都集中在山区和丘陵地段，相对比较偏僻，为了丰富采茶工业余文化生活，部分茶场还举办一些精彩的文艺节目。”县农业局副局长肖建忠说。为便于采茶工队伍的日常管理与营造和谐的气氛，县里有关部门组织法律安全知识、文艺节目、数字电影等送下乡活动。</span></p><br />','http://1.100rmb.sinaapp.com/img/5.jpg','http://www.baicha.cn/html/1389.html','2011-05-08 00:16:02','219.142.211.103',0),
 (12,'bsspirit','bsspirit@gmail.com','浙江安吉“明前茶”产量减少70%','　4月5日，记者在大山坞茶场采访时了解到，从3月31日少量开采到昨天下午，茶场共采出干茶1000斤左右。而在2010年，大山坞茶场的“明前茶”至少有2000斤以上，比2011年多出一倍多。茶场负责人盛勇亮介绍说，2011年天气冷，“明前茶”采得迟，2010年提前一星期就开采了。 <p>　　据了解，不仅是在大山坞茶场、在乐平茶场、雅斯茶场等白茶基地在清明节前茶叶量都不多，同时其他一些中小茶场2011年的开采时间也都比较晚。据了解，从安吉白茶开采到昨天，我县的“明前茶”只开采了三五天时间。而且，现在茶叶基地里的白茶芽头还是很小，平原地区的还只有米粒大小，这几天气温逐步回升，安吉白茶将逐步进入盛产期。 </p><p>　　县茶叶站站长、安吉县白茶协会秘书长赖建红介绍说，2011年的“明前茶”相比2010年减少了70%。主要原因是前期安吉气温太低，回暖比较慢，因此白茶芽头萌发缓慢，使得上市时间整整推迟一个星期。 </p><p>　　“明前茶”总量减少，但质量好，价格也不赖！宋茗白茶首日开采卖到1万元一斤，而且市场上的青叶也卖到了400元一斤。赖建红表示，这样的价格略高于2010年，而且接下来几天，安吉的高档茶还能卖出高价。 </p><p>　　在乐平茶场，老板宋昌美介绍说，2011年我们的白茶从4月1日开采，而且量不多，“明前茶”只采了三四天时间，不过接下来几天，山上采下的青叶品质依然很好，我们仍将这部分茶划为精品茶系列。另外，大山坞白茶三五天后，高档茶的价格也会上涨。 </p><p>　　面对这样一个局面，赖建红分析，在安吉几家大茶企出产的白茶价格会高价维持一段时间是正常的，因为2011年天气有些特殊，清明节前的几天，有些山坡上的白茶大小不一，光照不足，在清明节后，一些白茶会逐渐长到大小均等，再通过精加工后，卖相、香味、口感都不会逊色于“明前茶”。</p>                                                                                                                                                                      <br />','http://1.100rmb.sinaapp.com/img/6.jpg','http://www.baicha.cn/html/1387.html','2011-05-08 00:16:16','219.142.211.103',0),
 (13,'bsspirit','bsspirit@gmail.com','白茶的保健作用','白茶，是一种低温情况下产生叶绿素缺失的一种遗传变异体，是茶树中的特异性品种。中国各地一些地方均有发现，如浙江安吉白茶。由于这种茶树代谢机能的特异性，低温时抑制了叶绿素的合成，但显著的提高了游离氨基酸的生成量，因此，早春白茶的游离氨基酸含量一般均在6%以上，高者甚至达9%。这时其他一般绿茶品的含量只有2%—4%。茶叶中游离氨基酸由20多种氨基酸所组成，其中茶氨基酸要占氨基酸总量的50%—60%。这种茶氨基酸是茶的特征性成分，到目前为止，除一种中有少量发现外，其余动植物中均未发现。 <p>最近据2003年第8期《茶叶信息》称：美国科学院学报》 《报道，美国科学家哈佛大学医学院的布科夫斯基博士发现，喝茶能使人体血液免疫细胞的干扰素分泌量增加5倍。干扰素是人体抵御感染的“化学防线”。原因是茶叶中有一种叫做“茶氨酸”的物质，这种茶氨酸在人体肝脏内分解为乙胺，而乙胺又能调动为“伽马—德耳塔T形细胞”的人体血液免疫细胞促进干扰素的分泌，从而能更大的提高抵御外界侵害的能力。</p><p>据此研究成果认为：喝茶就能使血液免疫细胞干扰素分泌量提高5倍。已经知道，安吉白茶的茶氨酸含量要比一般茶叶高1—2倍，因此可认为，在当前抗击“非典”的非常时期，多喝安吉白茶肯定对抵御病毒侵害更有好处。</p><p>安吉白茶经生化测定，发现其中氨基酸含量很高，在6%左右，最高的甚至达到9%，是普通绿茶的3-4倍；茶多酚含量则在10-14%，酚氨比只有1.6-2.3。这种罕见的高氨低酚现象也是安吉白茶香高味鲜的生化基础。而氨基酸高特别是高含量的茶氨酸，有利于血液免疫细胞促进干扰素的分泌，从而提高人体抵抗外界的侵害力，对提高记忆，降血压，减肥，护肝等都有明显作用。中国著名茶学专家庄晚芳教授高度评价安吉白茶，称其“具有观赏，营养，经济三大价值，其它绿茶不能与之相比”。</p><br />','http://1.100rmb.sinaapp.com/img/10.jpg',NULL,'2011-05-08 00:16:56','219.142.211.103',0),
 (14,'bsspirit','bsspirit@gmail.com','白茶的传说','传说，茶圣陆羽在写完《茶经》 后，心中一直有一种说不出的感觉，虽已尝遍世上所有名茶，但总觉得还应该有更好的茶，于是他后来也不著书，带了一个茶童携着茶具，四处游山玩水，寻仙访道，其实为了再寻找茶中极品。一日，他来到湖州府辖区一座山上，只见山顶上一片平地，一眼望不边，山顶平地上长满了一种陆羽从未见过的茶树，这种茶树的叶子跟普通茶树一样，惟独要采接的牙尖是白色，晶莹如玉，非常好看。陆羽惊喜不已，立时命茶童采摘炒制，就地取溪水烧开了一杯，但见茶水清澈透明，只闻清香扑鼻，令陆羽神清气爽，陆羽品了一口，仰天道妙啊！我终于找到你了，我终于找到你了，此生不虚也！话音末了只见陆羽整个人轻飘飘向天上飞去，竟然因茶得道，羽化成仙了…… <p>陆羽成仙后来到天庭，玉帝知陆羽是人间茶圣，那时天上只有玉液琼浆，不只何为茶，命陆羽让众仙尝尝，陆羽拿出白茶献上，众仙一尝,齐声说到：妙哉！玉帝大喜：妙哉！此乃仙品，不可留与人间。遂命陆羽带天兵五佰将此白茶移至天庭，陆羽不忍极品从此断绝人间，偷偷留下一粒白茶籽，成为人间唯一的白茶王，直到二十世纪70年代末才被发现，真是人间有幸啊！</p><br />','http://1.100rmb.sinaapp.com/img/11.jpg',NULL,'2011-05-08 00:14:38','219.142.211.103',0),
 (15,'bsspirit','bsspirit@gmail.com','安吉白茶-茶中精品',' 900年前，宋徽宗在《大观茶论》中写道：“白茶与常茶不同。其条敷阐，其叶莹薄，虽非人力所可致。”文中没有讲明白茶的产地，从古到今，人们一直只闻其名，不见其形。2003年，经专家考证，宋徽宗所讲到的白茶就是生长于浙江省安吉县的安吉白茶。安吉县位于浙江省北部，这里山川隽秀，绿水长流，是我国著名的竹子之乡。1982年，人们偶然在安吉的一处山谷里发现了一株白茶古茶树，自此以后，安吉白茶日渐被人们所认识和开发。这里生长着安吉白茶和西湖龙井。两相对照，安吉白茶茶树的颜色明显较浅。更加神奇的是，茶树茶芽颜色会随着时令发生变化：清明前的嫩叶是灰白色的；到了谷雨，嫩叶会逐渐转绿，直到全绿。安吉白茶的产茶期较短，一般只有一个月左右，这使得白茶更显娇贵。中国茶基本可分六大类：绿茶、红茶、青茶、白茶、黄茶、黑茶，安吉白茶虽名为白茶，却属于绿茶类。因为它是白叶茶（只是在生长过程中的一段时期会是白色的）按照绿茶的方法制作而成的。新叶经过四五个小时的摊放，然后按照一定的温度和时间进行杀青。在这之后是整形理条，最后烘干，安吉白茶就全新出锅了。新的安吉白茶，冲泡以后，茎翠叶碧，茶汤颜色鹅黄，香气鲜爽馥郁。<p>　　与别的绿茶相比，安吉白茶的显著特点就是氨基酸含量高，营养丰富。因此，安吉白茶不仅喝起来口感好（十分鲜爽），而且还有利于身体健康。最近，白茶在女孩子中流行起来，还赢得了“美容茶”的雅号。</p><p>保健功效：</p><p>　　1．保护神经细胞，对脑损伤和老年痴呆症可能有帮助；</p><p>　　2．能通常调节脑中神经传达物质的浓度使高血压患者降低血压；</p><p>　　3．具有消除神经紧张和镇静作用；</p><p>　　4．提高学习能力与记忆力</p><p>　　5．改善女性经期综合症；</p><p>　　6．增强抗癌药物的疗效；</p><p>　　7．减肥、护肝的作用。</p><p>　　最近据2003年第8期《茶叶信息》称：《美国科学院学报》报道，美国科学家哈佛大学医学院的布科夫斯基博士发现，喝茶能使人体血液免疫细胞的干扰素分泌量增加5倍。干扰素是人体抵御感染的“化学防线”。原因是茶叶中有一种叫做“茶氨酸”的物质，这种茶氨酸在人体肝脏内分解为乙胺，而乙胺又能调动为“伽马—德耳塔T形细胞”的人体血液免疫细胞促进干扰素的分泌，从而能更大的提高抵御外界侵害的能力。　　据此研究成果认为：喝茶就能使血液免疫细胞干扰素分泌量提高5倍。已经知道，安吉白茶的茶氨酸含量要比一般茶叶高1—2倍，因此可认为，多喝安吉白茶肯定对提高人体免疫能力作用更大。<br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 安吉白茶树为茶树的变种，极为稀有。春季发出的嫩叶纯白，在“春老”时变为白绿相间的花叶，至夏才呈全绿色。如此珍奇的茶树品种，孕育出品质超群绝伦、卓而不群的安吉白茶，使我国的茶类百花园更为多姿多彩。　　动植物的白化历来罕见并作灵物瑞兆看待。佛教中有白雀与白猿听经的故事，白蛇、白龟成为神话故事主角，今有发现也必然报道。中国对白茶的记载最早的是北宋庆历（1041-1048年）年间：“白叶茶，芽叶如纸，民间大重，以为茶瑞。”宋徽宗赵佶在《大观茶论》中说：“白茶自为一种，与常茶不同，其条敷阐，其叶莹簿，崖林之间，偶然生出，虽非人力所致，有者不过四五家，生者不过一二株。”北宋皇帝在说了白茶可贵之后又说：“芽英不多，尤难蒸焙，汤火一失，则已变为常品。”自有这个记载一直到明代的350多年中，没有再发现过白茶。因此，安吉的白茶，填补了历史记载的空白，弥足珍奇。</p><p>　　安吉最早于1930年在孝丰镇的马铃冈发现野生白茶树数十棵，“枝头所抽之嫩叶色白如玉，焙后微黄，为当地金光寺庙产”（《县志》），后不知所终。1982年，在天荒坪镇大溪村横坑坞800米的高山上又发现一株百年以上白茶树，嫩叶纯白，仅主脉呈微绿色，很少结籽。当时县林科所的技术人员刘益民、程雅谷等在4月4日剪取插穗繁育成功，至1996年已发展到1000亩，可以采制的只有200亩，年产干茶不足千斤。因其氨基酸含量高出一般茶一倍，为6.19%—6.92%，茶多酚10.7%，在1989年浙江省第二届斗茶会上以“玉凤”茶名获99分的最高分，次年又获99.3分，1991年再获浙江省一类名茶奖。安吉白茶，1996年每500克售价1500-2200元，因数量少，供不应求。</p><p>　　安吉地处天目山北麓，这里群山起伏，树竹交荫，云雾缭绕，雨量充沛，土壤肥沃。安吉还有“中国竹乡”之称，植被覆盖率为60%，而茶竹之缘，值得品味。生产实践表明，大凡四周为竹林或邻近竹林的茶园所采制的茶叶，一般都含有板栗香或豆花香，且越靠近竹林的其香越明显。也许正是竹乡独特的生态环境，孕育出了惊世骇俗的安吉白茶树和安吉白茶。</p><br />','http://1.100rmb.sinaapp.com/img/6.jpg','http://www.pinpaitea.com/fenlei/baicha/47463.html','2011-05-08 21:45:21','124.193.107.225',0),
 (16,'bsspirit','bsspirit@gmail.com','白茶的种类','<p><strong>白茶的种类分为</strong><br />（1）白芽茶，有银针等。<br />（2）白叶茶，有白牡丹、贡眉等。</p><p>　　白茶中的较出名的有：</p><p>　　<strong>银针白毫</strong></p><p>　　银针白毫属白茶类。其产地在福建省福鼎、政和两县。其茶芽头肥壮，遍披白毫，色白如银而富有光泽，挺直如针，汤色浅杏黄，滋味鲜爽，香气清芬。</p><p>　　冲泡时，茶芽始浮于水面，五六分钟后部分茶芽沉落杯底，部分悬浮于茶汤上部，此时茶芽条条挺立，上下交错，望之如石钟乳，蔚为奇观。</p><p>　　<strong>连州白茶</strong></p><p>　　连州白茶 俗称“藤婆茶”。相传唐代刘禹锡任刺史时，见居民常有疫病流行，而连州天山古寨的土著村民却极少染病，细问得知，他们是按“神婆”传下的秘方，爬上天山山顶采来叶面呈白色的一种藤叶，煎茶服用，以驱百病。刘禹锡便请来茶师，将这种藤叶制成茶饼，发给居民成为家居必备之物，使其清热润肺、解暑消炎之功效造福大众，该茶的精制品“藤婆茶饼”以独特的风味流传到南洋各地，至今在东南亚、港、澳、珠江三角洲一带仍享有盛誉，在今天连州乡下的一些村落，一些人家的门外仍会保留着当年用来舂茶饼的石舂。近年来，以现代方法精制后，又称白茶，其味先苦后甘凉，回味悠长，据说对于那些过胖的人还具有消食减肥的作用，是一种珍稀名贵的天然饮品。</p><p>　　<strong>大溪白茶</strong></p><p>　　又名<strong><em>安吉白茶</em></strong>。无性繁殖系，属灌木型、大叶类、中生种。原产浙江省安吉县山河乡大溪村。在浙北茶区有少量种植。</p><p>　　植株较矮小，树姿半张开，分枝中等。叶长椭圆形、淡绿色，叶脉12对，春季嫩叶除主脉外均为白色，尤其一芽二叶时最明显，后随叶片成熟和气温生高，逐渐变为绿色，夏季时均为绿色。春茶鲜叶含氨基酸6.19%、茶多酚10.7%、咖啡碱2.8%。适制绿茶，品质特优，色泽嫩绿，香气高锐，味鲜爽。所制“玉凤茶”为浙江名茶新秀。生长势较弱，易遭高温热害，产量较低。适合名优绿茶区种植。宜用营养钵育苗移栽。夏季高温需湿度搭棚遮荫。</p><p>　　<strong>白毛猴茶</strong><br /></p><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 白毛猴原产于福建政和县，当地又称“白猴”，因形似毛猴而得名。1910年，当地茶商范昌义创制了白毛猴，其制法介于红茶绿茶之间，外形重“保毫”和“做形”，内质重萎凋适度，使成茶香清味醇。品质特征是外形肥壮卷曲，白毫显露，汤色橙黄味醇香清。<br /></p>','http://1.100rmb.sinaapp.com/img/15.jpg','http://www.pinpaitea.com/fenlei/baicha/25051.html','2011-05-08 21:43:58','124.193.107.225',0),
 (17,'bsspirit','bsspirit@gmail.com','安吉白茶的人文历史','<p>安吉白茶中国对白茶的记载，最早是在北宋庆历（1041-1048年）年间，“白叶茶，芽叶如纸，民间大重，以为茶瑞。”。宋徽宗赵佶在《大观茶论》中说：“白茶自为一种，与常茶不同，其条敷阐，其叶莹簿，崖林之间，偶然生出，虽非人力所致，有者不过四五家，生者不过一二株”。北宋皇帝在说了白茶可贵之后，又说：“芽英不多，尤难蒸焙，汤火一失，则已变为常品”。</p><p>自从这个记载后一直到明代的350多年中，就再也没有发现过白茶。因此，安吉的白茶的发现，填补了历史记载的空白，弥足珍奇。安吉，地处浙江的天目山北麓，这里群山起伏，树竹交荫，云雾缭绕，雨量充沛，土壤肥沃。安吉还有“中国竹乡”之称，植被覆盖率为60%，而茶竹之缘，值得品味。分析表明，大凡四周为竹林或邻近有竹林的茶园，所采制的茶叶，一般都含有板栗香或豆花香，且越靠近竹林的，其香越明显。也许正是竹乡独特的生态环境，才孕育出了惊世的茶树和安吉白茶这样的品种。</p><p>安吉，最早于1930年，在孝丰镇的马铃冈发现野生白茶树数十棵，“枝头所抽之嫩叶色白如玉，焙后微黄，为当地金光寺庙产”《县志》，后不知所终。1982年，在天荒坪镇大溪村横坑坞800米的高山上，又被发现一株百年以上的白茶树，嫩叶纯白，仅主脉呈微绿色，很少结籽。技术人员历经艰辛，经过剪取、插穗等，最终繁育成功，至1996年已发展到1000亩，但是可采制的只有200亩，年产干茶不足千斤。安吉白茶，在1996年，每500克售价高达1500-2200元，2001年，安吉首次举办安吉白茶节，在上海举行安吉白茶拍卖会，50克安吉白茶竟拍出了<strong>20500</strong>元的天价，终因数量较少，供不应求。</p>','http://1.100rmb.sinaapp.com/img/1.jpg','http://www.pinpaitea.com/fenlei/baicha/47518.html','2011-05-08 21:44:00','124.193.107.225',0);
UNLOCK TABLES;
/*!40000 ALTER TABLE `t_tea_wiki` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;