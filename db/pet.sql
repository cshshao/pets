-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: pet
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (62,'2021-04-15 03:02:28',2,2,'提问2','回复2',2),(63,'2021-04-15 03:02:28',3,3,'提问3','回复3',3),(64,'2021-04-15 03:02:28',4,4,'提问4','回复4',4),(65,'2021-04-15 03:02:28',5,5,'提问5','回复5',5),(66,'2021-04-15 03:02:28',6,6,'提问6','回复6',6);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwufenlei`
--

DROP TABLE IF EXISTS `chongwufenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwufenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwufenlei` varchar(200) NOT NULL COMMENT '宠物分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chongwufenlei` (`chongwufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='宠物分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwufenlei`
--

LOCK TABLES `chongwufenlei` WRITE;
/*!40000 ALTER TABLE `chongwufenlei` DISABLE KEYS */;
INSERT INTO `chongwufenlei` VALUES (31,'2021-04-15 03:02:28','宠物分类1'),(32,'2021-04-15 03:02:28','宠物分类2'),(33,'2021-04-15 03:02:28','宠物分类3'),(34,'2021-04-15 03:02:28','宠物分类4'),(35,'2021-04-15 03:02:28','宠物分类5'),(36,'2021-04-15 03:02:28','宠物分类6');
/*!40000 ALTER TABLE `chongwufenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwulingyang`
--

DROP TABLE IF EXISTS `chongwulingyang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwulingyang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `chongwumingcheng` varchar(200) DEFAULT NULL COMMENT '宠物名称',
  `chongwufenlei` varchar(200) DEFAULT NULL COMMENT '宠物分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `shenqingriqi` date DEFAULT NULL COMMENT '申请日期',
  `shenqingneirong` varchar(200) DEFAULT NULL COMMENT '申请内容',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618457481840 DEFAULT CHARSET=utf8 COMMENT='宠物领养';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwulingyang`
--

LOCK TABLES `chongwulingyang` WRITE;
/*!40000 ALTER TABLE `chongwulingyang` DISABLE KEYS */;
INSERT INTO `chongwulingyang` VALUES (51,'2021-04-15 03:02:28','订单编号1','宠物名称1','宠物分类1','http://localhost:8080/Pets/upload/chongwulingyang_tupian1.jpg','状态1','2021-04-15','申请内容1','用户名1','姓名1','手机1','家庭住址1','是',''),(52,'2021-04-15 03:02:28','订单编号2','宠物名称2','宠物分类2','http://localhost:8080/Pets/upload/chongwulingyang_tupian2.jpg','状态2','2021-04-15','申请内容2','用户名2','姓名2','手机2','家庭住址2','是',''),(53,'2021-04-15 03:02:28','订单编号3','宠物名称3','宠物分类3','http://localhost:8080/Pets/upload/chongwulingyang_tupian3.jpg','状态3','2021-04-15','申请内容3','用户名3','姓名3','手机3','家庭住址3','是',''),(54,'2021-04-15 03:02:28','订单编号4','宠物名称4','宠物分类4','http://localhost:8080/Pets/upload/chongwulingyang_tupian4.jpg','状态4','2021-04-15','申请内容4','用户名4','姓名4','手机4','家庭住址4','是',''),(55,'2021-04-15 03:02:28','订单编号5','宠物名称5','宠物分类5','http://localhost:8080/Pets/upload/chongwulingyang_tupian5.jpg','状态5','2021-04-15','申请内容5','用户名5','姓名5','手机5','家庭住址5','是',''),(56,'2021-04-15 03:02:28','订单编号6','宠物名称6','宠物分类6','http://localhost:8080/Pets/upload/chongwulingyang_tupian6.jpg','状态6','2021-04-15','申请内容6','用户名6','姓名6','手机6','家庭住址6','是',''),(1618457481839,'2021-04-15 03:31:21','202141511311547800081','纯种英短蓝白猫','宠物分类2','http://localhost:8080/Pets/upload/1618457423721.jpg','待领养','2021-04-15','1','用户1','姓名1','13823888881','新县城大新街9号','否',NULL);
/*!40000 ALTER TABLE `chongwulingyang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chongwuxinxi`
--

DROP TABLE IF EXISTS `chongwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chongwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chongwumingcheng` varchar(200) NOT NULL COMMENT '宠物名称',
  `chongwufenlei` varchar(200) NOT NULL COMMENT '宠物分类',
  `pinzhong` varchar(200) NOT NULL COMMENT '品种',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `xingqing` varchar(200) DEFAULT NULL COMMENT '性情',
  `zhuangtai` varchar(200) DEFAULT NULL COMMENT '状态',
  `chongwuxiangqing` longtext COMMENT '宠物详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618457433210 DEFAULT CHARSET=utf8 COMMENT='宠物信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chongwuxinxi`
--

LOCK TABLES `chongwuxinxi` WRITE;
/*!40000 ALTER TABLE `chongwuxinxi` DISABLE KEYS */;
INSERT INTO `chongwuxinxi` VALUES (41,'2021-04-15 03:02:28','宠物名称1','宠物分类1','品种1','http://localhost:8080/Pets/upload/chongwuxinxi_tupian1.jpg','年龄1','公','性情1','待领养','宠物详情1','2021-04-15 11:02:28',1),(42,'2021-04-15 03:02:28','宠物名称2','宠物分类2','品种2','http://localhost:8080/Pets/upload/chongwuxinxi_tupian2.jpg','年龄2','公','性情2','待领养','宠物详情2','2021-04-15 11:02:28',2),(43,'2021-04-15 03:02:28','宠物名称3','宠物分类3','品种3','http://localhost:8080/Pets/upload/chongwuxinxi_tupian3.jpg','年龄3','公','性情3','待领养','宠物详情3','2021-04-15 11:02:28',3),(44,'2021-04-15 03:02:28','宠物名称4','宠物分类4','品种4','http://localhost:8080/Pets/upload/chongwuxinxi_tupian4.jpg','年龄4','公','性情4','待领养','宠物详情4','2021-04-15 11:02:28',4),(45,'2021-04-15 03:02:28','宠物名称5','宠物分类5','品种5','http://localhost:8080/Pets/upload/chongwuxinxi_tupian5.jpg','年龄5','公','性情5','待领养','宠物详情5','2021-04-15 11:02:28',5),(46,'2021-04-15 03:02:28','宠物名称6','宠物分类6','品种6','http://localhost:8080/Pets/upload/chongwuxinxi_tupian6.jpg','年龄6','公','性情6','待领养','宠物详情6','2021-04-15 11:02:28',6),(1618457433209,'2021-04-15 03:30:32','纯种英短蓝白猫','宠物分类2','加菲猫','http://localhost:8080/Pets/upload/1618457423721.jpg','9个月','母','温顺','待领养','FRDTGTRYHTYUYT\r\n','2021-04-15 11:35:39',8);
/*!40000 ALTER TABLE `chongwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/Pets/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/Pets/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/Pets/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusschongwuxinxi`
--

DROP TABLE IF EXISTS `discusschongwuxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusschongwuxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618457736821 DEFAULT CHARSET=utf8 COMMENT='宠物信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusschongwuxinxi`
--

LOCK TABLES `discusschongwuxinxi` WRITE;
/*!40000 ALTER TABLE `discusschongwuxinxi` DISABLE KEYS */;
INSERT INTO `discusschongwuxinxi` VALUES (91,'2021-04-15 03:02:28',1,1,'用户名1','评论内容1','回复内容1'),(92,'2021-04-15 03:02:28',2,2,'用户名2','评论内容2','回复内容2'),(93,'2021-04-15 03:02:28',3,3,'用户名3','评论内容3','回复内容3'),(94,'2021-04-15 03:02:28',4,4,'用户名4','评论内容4','回复内容4'),(95,'2021-04-15 03:02:28',5,5,'用户名5','评论内容5','回复内容5'),(96,'2021-04-15 03:02:28',6,6,'用户名6','评论内容6','回复内容6'),(1618457736820,'2021-04-15 03:35:36',1618457433209,21,NULL,'dgfdygrt',NULL);
/*!40000 ALTER TABLE `discusschongwuxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussgonggaoxinxi`
--

DROP TABLE IF EXISTS `discussgonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussgonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussgonggaoxinxi`
--

LOCK TABLES `discussgonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `discussgonggaoxinxi` DISABLE KEYS */;
INSERT INTO `discussgonggaoxinxi` VALUES (81,'2021-04-15 03:02:28',1,1,'用户名1','评论内容1','回复内容1'),(82,'2021-04-15 03:02:28',2,2,'用户名2','评论内容2','回复内容2'),(83,'2021-04-15 03:02:28',3,3,'用户名3','评论内容3','回复内容3'),(84,'2021-04-15 03:02:28',4,4,'用户名4','评论内容4','回复内容4'),(85,'2021-04-15 03:02:28',5,5,'用户名5','评论内容5','回复内容5'),(86,'2021-04-15 03:02:28',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discussgonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gonggaoxinxi`
--

DROP TABLE IF EXISTS `gonggaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gonggaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `gonggaoleixing` varchar(200) NOT NULL COMMENT '公告类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='公告信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gonggaoxinxi`
--

LOCK TABLES `gonggaoxinxi` WRITE;
/*!40000 ALTER TABLE `gonggaoxinxi` DISABLE KEYS */;
INSERT INTO `gonggaoxinxi` VALUES (11,'2021-04-15 03:02:28','公告标题1','公告类型1','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian1.jpg','内容1','2021-04-15'),(12,'2021-04-15 03:02:28','公告标题2','公告类型2','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian2.jpg','内容2','2021-04-15'),(13,'2021-04-15 03:02:28','公告标题3','公告类型3','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian3.jpg','内容3','2021-04-15'),(14,'2021-04-15 03:02:28','公告标题4','公告类型4','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian4.jpg','内容4','2021-04-15'),(15,'2021-04-15 03:02:28','公告标题5','公告类型5','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian5.jpg','内容5','2021-04-15'),(16,'2021-04-15 03:02:28','公告标题6','公告类型6','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian6.jpg','内容6','2021-04-15');
/*!40000 ALTER TABLE `gonggaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','jjzarn9qe9eq7zqfxv7cqggkw7uph658','2021-04-15 03:29:52','2021-04-15 04:41:39'),(2,21,'用户1','yonghu','用户','ksupehq0qmdcy8xgjwu7t76v7gk79qso','2021-04-15 03:30:50','2021-04-15 04:35:27');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-15 03:02:28');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (21,'2021-04-15 03:02:28','用户1','123456','姓名1','http://localhost:8080/Pets/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001','家庭住址1'),(22,'2021-04-15 03:02:28','用户2','123456','姓名2','http://localhost:8080/Pets/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002','家庭住址2'),(23,'2021-04-15 03:02:28','用户3','123456','姓名3','http://localhost:8080/Pets/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003','家庭住址3'),(24,'2021-04-15 03:02:28','用户4','123456','姓名4','http://localhost:8080/Pets/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004','家庭住址4'),(25,'2021-04-15 03:02:28','用户5','123456','姓名5','http://localhost:8080/Pets/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005','家庭住址5'),(26,'2021-04-15 03:02:28','用户6','123456','姓名6','http://localhost:8080/Pets/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006','家庭住址6');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 20:37:49
