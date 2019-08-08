-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: tale
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `title` varchar(45) NOT NULL COMMENT '文章标题',
  `content` varchar(2000) NOT NULL COMMENT '文章内容',
  `c_id` int(11) DEFAULT NULL COMMENT '外键，关联分类ID',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间，默认当前时间',
  `state` enum('已发布','草稿') DEFAULT '草稿' COMMENT '状态，枚举型',
  `visitcount` int(11) DEFAULT '0' COMMENT '访问数',
  PRIMARY KEY (`id`),
  KEY `fk_aid_cid_idx` (`c_id`),
  CONSTRAINT `fk_aid_cid` FOREIGN KEY (`c_id`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (2,'孤儿','铁血孤儿张旭升',2,'2019-05-13 23:26:25','已发布',1),(3,'铁血张旭升','<span style=\"font-size:16px;\">孤儿是一个汉语词汇，拼音gū ér。指失去父母的儿童或者是未成年人；古时也称失去父亲的孩子为“孤儿”。查找不到生父母的弃婴和儿童。出自《史记·赵世家》：“於是 景公 乃与韩厥谋立 赵 孤儿，召而匿之宫中。”\r\n截至2019年1月，全国共有孤儿34.3万人，其中社会散居孤儿27.5万，占总数的80.2%；儿童福利机构内集中养育孤儿6.8万人，占总数的19.8%。\r\n孤儿是指失去父母或父母双亡的儿童或者是未成年人；查找不到生父母的弃婴和儿童。\r\n根据《收养法》的规定，不满14周岁的孤儿才可以被收养。国家、社会和公民对孤儿的救助有多种方式，如对孤儿上学进行资助，助养孤儿、收养孤儿和向社会福利机构捐赠款物等。\r\n国内孤儿主要在西藏、青海、甘肃等地相对较多，每个省市不同程度的存在，在西藏、青海等有一些民间孤儿院，大部分没有民政部门审批，但是一直在从事孤儿慈善事业。随互联网的发展，来自社会各界的援助和关爱越来越多。 [5]  国内较早出现孤儿援助机构是1993年启动的慈爱孤儿援助中心。</span><img src=\"http://localhost:8080/kindeditor/plugins/emoticons/images/0.gif\" border=\"0\" alt=\"\" /> \r\n<h1>\r\n	<span style=\"color:#E53333;\">国内收养规定(张旭升好好看看)</span>\r\n</h1>\r\n<span style=\"font-size:14px;\">下列不满十四周岁的未成年人可以被收养 [3] \r\n（一）丧失父母的孤儿；\r\n&emsp;&emsp;（二）查找不到生父母的弃婴和儿童；\r\n&emsp;&emsp;（三）生父母有特殊困难无力抚养的子女。\r\n下列公民、组织可以作送养人\r\n（一）孤儿的监护人；\r\n&emsp;&emsp;（二）社会福利机构；\r\n&emsp;&emsp;（三）有特殊困难无力抚养子女的生父母。\r\n收养人应当同时具备下列条件\r\n&emsp;&emsp;（一）无子女；\r\n&emsp;&emsp;（二）有抚养教育被收养人的能力；\r\n&emsp;&emsp;（三）年满三十周岁；\r\n（四）未患医学上认为不应当收养子女的疾病\r\n（五）无配偶男性收养女性的，年龄应当相差40周岁以上\r\n具体条件请参考《收养法》</span>',2,'2019-05-15 05:34:44','已发布',1),(4,'文本编辑器测试','<p>\r\n	<span style=\"font-size:18px;\"><strong>啦啦啦啦</strong></span>\r\n</p>\r\n<p>\r\n	<span style=\"font-size:18px;\"><strong>试一下好不好使！！！！！！</strong></span>\r\n</p>',2,'2019-05-15 06:41:07','已发布',0),(6,'标签测试','<span style=\"font-size:32px;\">为啥就是不好使啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊！！！！！！！！！！！！！！！！！！！！！！！！！</span>',2,'2019-05-16 12:17:02','已发布',7),(7,'这个号也试一下','<div style=\"text-align:center;\">\r\n	<strong><span style=\"font-size:32px;\">好使吧啊啊啊啊啊啊啊啊啊啊啊！</span><span style=\"font-size:32px;\"></span></strong>\r\n</div>',4,'2019-05-17 12:42:08','已发布',3);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(45) DEFAULT NULL COMMENT '分类名',
  `u_id` int(11) DEFAULT NULL COMMENT '外键，关联用户ID',
  PRIMARY KEY (`id`),
  KEY `fk_uid_user_id_idx` (`u_id`),
  CONSTRAINT `fk_uid_user_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (2,'孤儿张旭升',1),(4,'默认分类',2),(5,'默认分类',3),(6,'默认分类',4),(7,'雪风',1),(9,'默认分类',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `file`
--

DROP TABLE IF EXISTS `file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `name` varchar(45) DEFAULT NULL COMMENT '文件名',
  `url` varchar(200) DEFAULT NULL COMMENT '文件路径',
  `u_id` int(11) DEFAULT NULL COMMENT '外键，关联用户ID',
  PRIMARY KEY (`id`),
  KEY `fk_file_uid_user_id_idx` (`u_id`),
  CONSTRAINT `fk_file_uid_user_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `file`
--

LOCK TABLES `file` WRITE;
/*!40000 ALTER TABLE `file` DISABLE KEYS */;
INSERT INTO `file` VALUES (2,'2.jpg','E:\\WorkSpace\\IntelliJIDEA\\TaleBlog\\web\\upload\\孤儿张旭升\\2.jpg',2),(3,'timg.jpg','E:\\WorkSpace\\IntelliJIDEA\\TaleBlog\\web\\upload\\张旭升\\timg.jpg',1),(4,'2.jpg','E:\\WorkSpace\\IntelliJIDEA\\TaleBlog\\web\\upload\\张旭升\\2.jpg',1),(5,'数据库代码.txt','E:\\WorkSpace\\IntelliJIDEA\\TaleBlog\\web\\upload\\张旭升\\数据库代码.txt',1);
/*!40000 ALTER TABLE `file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link`
--

DROP TABLE IF EXISTS `link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '外链ID',
  `name` varchar(45) DEFAULT NULL COMMENT '外链名',
  `url` varchar(45) DEFAULT NULL COMMENT '外链地址',
  `u_id` int(11) DEFAULT NULL COMMENT '外键，关联用户ID',
  PRIMARY KEY (`id`),
  KEY `fk_uid_user_id_idx` (`u_id`),
  CONSTRAINT `fk_link_uid_user_id` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link`
--

LOCK TABLES `link` WRITE;
/*!40000 ALTER TABLE `link` DISABLE KEYS */;
INSERT INTO `link` VALUES (3,'百度','www.baidu.com',1),(4,'张旭升','www.bilibili.com',1),(6,'123','www.bilibili.com',1),(7,'淘宝','www.taobao.com',1),(8,'冯麒瑞','www.google.com',1);
/*!40000 ALTER TABLE `link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '留言ID',
  `username` varchar(45) DEFAULT NULL COMMENT '留言用户',
  `content` varchar(200) NOT NULL COMMENT '留言内容',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '留言时间，默认当前时间',
  `a_id` int(11) DEFAULT NULL COMMENT '外键，关联文章ID',
  PRIMARY KEY (`id`),
  KEY `fk_mid_aid_idx` (`a_id`),
  CONSTRAINT `fk_mid_aid` FOREIGN KEY (`a_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'张旭升','我是孤儿','2019-05-15 05:41:09',2),(3,'张旭升','没错，说的就是我！','2019-05-15 05:49:54',3),(6,'张旭升','还不好使？','2019-05-17 11:34:36',6),(8,'张旭升','测试留言','2019-05-20 10:35:39',7),(9,'张旭升','应该完事了','2019-06-23 23:16:21',6);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标签ID',
  `name` varchar(45) NOT NULL COMMENT '标签名',
  `a_id` int(11) DEFAULT NULL COMMENT '外键，关联文章ID',
  PRIMARY KEY (`id`),
  KEY `fk_aid_article_id_idx` (`a_id`),
  CONSTRAINT `fk_aid_article_id` FOREIGN KEY (`a_id`) REFERENCES `article` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (2,'孤儿',2),(3,'铁孤儿',3),(4,'孤儿',4),(5,'标签测试',3),(6,'孤儿',6),(7,'哈哈',6),(8,'测试',6),(11,'一定要好使',7);
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(45) NOT NULL COMMENT '用户名',
  `password` varchar(45) NOT NULL COMMENT '用户密码',
  `email` varchar(45) DEFAULT NULL COMMENT '用户邮箱',
  `blogname` varchar(45) DEFAULT NULL COMMENT '博客名',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'张旭升','guer','test@test.com','孤儿的博客'),(2,'孤儿张旭升','guer','guer@gueryuan.com','孤儿的博客'),(3,'铁血张旭升','guer','guer@gueryuan.com','第三次测试'),(4,'赵伟峰','123','guer@gueryuan.com','大龙的博客'),(5,'冯麒瑞','xjbr','xjbr@xjbr.com','冯麒瑞');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-08 12:56:53
