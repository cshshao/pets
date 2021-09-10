DROP DATABASE IF EXISTS pet;

CREATE DATABASE pet default character set utf8mb4 collate utf8mb4_general_ci;

USE pet;

DROP TABLE IF EXISTS `gonggaoxinxi`;

CREATE TABLE `gonggaoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`gonggaobiaoti` varchar(200) NOT NULL   COMMENT '公告标题',
	`gonggaoleixing` varchar(200) NOT NULL   COMMENT '公告类型',
	`tupian` varchar(200)    COMMENT '图片',
	`neirong` longtext    COMMENT '内容',
	`faburiqi` date    COMMENT '发布日期',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息';

INSERT INTO gonggaoxinxi(id,gonggaobiaoti,gonggaoleixing,tupian,neirong,faburiqi) VALUES(11,'公告标题1','公告类型1','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian1.jpg','内容1',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(id,gonggaobiaoti,gonggaoleixing,tupian,neirong,faburiqi) VALUES(12,'公告标题2','公告类型2','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian2.jpg','内容2',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(id,gonggaobiaoti,gonggaoleixing,tupian,neirong,faburiqi) VALUES(13,'公告标题3','公告类型3','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian3.jpg','内容3',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(id,gonggaobiaoti,gonggaoleixing,tupian,neirong,faburiqi) VALUES(14,'公告标题4','公告类型4','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian4.jpg','内容4',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(id,gonggaobiaoti,gonggaoleixing,tupian,neirong,faburiqi) VALUES(15,'公告标题5','公告类型5','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian5.jpg','内容5',CURRENT_TIMESTAMP);
INSERT INTO gonggaoxinxi(id,gonggaobiaoti,gonggaoleixing,tupian,neirong,faburiqi) VALUES(16,'公告标题6','公告类型6','http://localhost:8080/Pets/upload/gonggaoxinxi_tupian6.jpg','内容6',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yonghuming` varchar(200) NOT NULL UNIQUE   COMMENT '用户名',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200)    COMMENT '姓名',
	`touxiang` varchar(200)    COMMENT '头像',
	`xingbie` varchar(200)    COMMENT '性别',
	`shouji` varchar(200)    COMMENT '手机',
	`shenfenzheng` varchar(200)    COMMENT '身份证',
	`jiatingzhuzhi` varchar(200)    COMMENT '家庭住址',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,shenfenzheng,jiatingzhuzhi) VALUES(21,'用户1','123456','姓名1','http://localhost:8080/pet/upload/yonghu_touxiang1.jpg','男','13823888881','440300199101010001','家庭住址1');
INSERT INTO yonghu(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,shenfenzheng,jiatingzhuzhi) VALUES(22,'用户2','123456','姓名2','http://localhost:8080/pet/upload/yonghu_touxiang2.jpg','男','13823888882','440300199202020002','家庭住址2');
INSERT INTO yonghu(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,shenfenzheng,jiatingzhuzhi) VALUES(23,'用户3','123456','姓名3','http://localhost:8080/pet/upload/yonghu_touxiang3.jpg','男','13823888883','440300199303030003','家庭住址3');
INSERT INTO yonghu(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,shenfenzheng,jiatingzhuzhi) VALUES(24,'用户4','123456','姓名4','http://localhost:8080/pet/upload/yonghu_touxiang4.jpg','男','13823888884','440300199404040004','家庭住址4');
INSERT INTO yonghu(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,shenfenzheng,jiatingzhuzhi) VALUES(25,'用户5','123456','姓名5','http://localhost:8080/pet/upload/yonghu_touxiang5.jpg','男','13823888885','440300199505050005','家庭住址5');
INSERT INTO yonghu(id,yonghuming,mima,xingming,touxiang,xingbie,shouji,shenfenzheng,jiatingzhuzhi) VALUES(26,'用户6','123456','姓名6','http://localhost:8080/pet/upload/yonghu_touxiang6.jpg','男','13823888886','440300199606060006','家庭住址6');

DROP TABLE IF EXISTS `chongwufenlei`;

CREATE TABLE `chongwufenlei` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`chongwufenlei` varchar(200) NOT NULL UNIQUE   COMMENT '宠物分类',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宠物分类';

INSERT INTO chongwufenlei(id,chongwufenlei) VALUES(31,'宠物分类1');
INSERT INTO chongwufenlei(id,chongwufenlei) VALUES(32,'宠物分类2');
INSERT INTO chongwufenlei(id,chongwufenlei) VALUES(33,'宠物分类3');
INSERT INTO chongwufenlei(id,chongwufenlei) VALUES(34,'宠物分类4');
INSERT INTO chongwufenlei(id,chongwufenlei) VALUES(35,'宠物分类5');
INSERT INTO chongwufenlei(id,chongwufenlei) VALUES(36,'宠物分类6');

DROP TABLE IF EXISTS `chongwuxinxi`;

CREATE TABLE `chongwuxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`chongwumingcheng` varchar(200) NOT NULL   COMMENT '宠物名称',
	`chongwufenlei` varchar(200) NOT NULL   COMMENT '宠物分类',
	`pinzhong` varchar(200) NOT NULL   COMMENT '品种',
	`tupian` varchar(200) NOT NULL   COMMENT '图片',
	`nianling` varchar(200)    COMMENT '年龄',
	`xingbie` varchar(200)    COMMENT '性别',
	`xingqing` varchar(200)    COMMENT '性情',
	`zhuangtai` varchar(200)    COMMENT '状态',
	`chongwuxiangqing` longtext    COMMENT '宠物详情',
	`clicktime` datetime    COMMENT '最近点击时间',
	`clicknum` int   default '0' COMMENT '点击次数',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宠物信息';

INSERT INTO chongwuxinxi(id,chongwumingcheng,chongwufenlei,pinzhong,tupian,nianling,xingbie,xingqing,zhuangtai,chongwuxiangqing,clicktime,clicknum) VALUES(41,'宠物名称1','宠物分类1','品种1','http://localhost:8080/pet/upload/chongwuxinxi_tupian1.jpg','年龄1','公','性情1','待领养','宠物详情1',CURRENT_TIMESTAMP,1);
INSERT INTO chongwuxinxi(id,chongwumingcheng,chongwufenlei,pinzhong,tupian,nianling,xingbie,xingqing,zhuangtai,chongwuxiangqing,clicktime,clicknum) VALUES(42,'宠物名称2','宠物分类2','品种2','http://localhost:8080/pet/upload/chongwuxinxi_tupian2.jpg','年龄2','公','性情2','待领养','宠物详情2',CURRENT_TIMESTAMP,2);
INSERT INTO chongwuxinxi(id,chongwumingcheng,chongwufenlei,pinzhong,tupian,nianling,xingbie,xingqing,zhuangtai,chongwuxiangqing,clicktime,clicknum) VALUES(43,'宠物名称3','宠物分类3','品种3','http://localhost:8080/pet/upload/chongwuxinxi_tupian3.jpg','年龄3','公','性情3','待领养','宠物详情3',CURRENT_TIMESTAMP,3);
INSERT INTO chongwuxinxi(id,chongwumingcheng,chongwufenlei,pinzhong,tupian,nianling,xingbie,xingqing,zhuangtai,chongwuxiangqing,clicktime,clicknum) VALUES(44,'宠物名称4','宠物分类4','品种4','http://localhost:8080/pet/upload/chongwuxinxi_tupian4.jpg','年龄4','公','性情4','待领养','宠物详情4',CURRENT_TIMESTAMP,4);
INSERT INTO chongwuxinxi(id,chongwumingcheng,chongwufenlei,pinzhong,tupian,nianling,xingbie,xingqing,zhuangtai,chongwuxiangqing,clicktime,clicknum) VALUES(45,'宠物名称5','宠物分类5','品种5','http://localhost:8080/pet/upload/chongwuxinxi_tupian5.jpg','年龄5','公','性情5','待领养','宠物详情5',CURRENT_TIMESTAMP,5);
INSERT INTO chongwuxinxi(id,chongwumingcheng,chongwufenlei,pinzhong,tupian,nianling,xingbie,xingqing,zhuangtai,chongwuxiangqing,clicktime,clicknum) VALUES(46,'宠物名称6','宠物分类6','品种6','http://localhost:8080/pet/upload/chongwuxinxi_tupian6.jpg','年龄6','公','性情6','待领养','宠物详情6',CURRENT_TIMESTAMP,6);

DROP TABLE IF EXISTS `chongwulingyang`;

CREATE TABLE `chongwulingyang` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`dingdanbianhao` varchar(200)  UNIQUE   COMMENT '订单编号',
	`chongwumingcheng` varchar(200)    COMMENT '宠物名称',
	`chongwufenlei` varchar(200)    COMMENT '宠物分类',
	`tupian` varchar(200)    COMMENT '图片',
	`zhuangtai` varchar(200)    COMMENT '状态',
	`shenqingriqi` date    COMMENT '申请日期',
	`shenqingneirong` varchar(200)    COMMENT '申请内容',
	`yonghuming` varchar(200)    COMMENT '用户名',
	`xingming` varchar(200)    COMMENT '姓名',
	`shouji` varchar(200)    COMMENT '手机',
	`jiatingzhuzhi` varchar(200)    COMMENT '家庭住址',
	`sfsh` varchar(200)   default '否' COMMENT '是否审核',
	`shhf` longtext    COMMENT '审核回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宠物领养';

INSERT INTO chongwulingyang(id,dingdanbianhao,chongwumingcheng,chongwufenlei,tupian,zhuangtai,shenqingriqi,shenqingneirong,yonghuming,xingming,shouji,jiatingzhuzhi,sfsh,shhf) VALUES(51,'订单编号1','宠物名称1','宠物分类1','http://localhost:8080/pet/upload/chongwulingyang_tupian1.jpg','状态1',CURRENT_TIMESTAMP,'申请内容1','用户名1','姓名1','手机1','家庭住址1','是','');
INSERT INTO chongwulingyang(id,dingdanbianhao,chongwumingcheng,chongwufenlei,tupian,zhuangtai,shenqingriqi,shenqingneirong,yonghuming,xingming,shouji,jiatingzhuzhi,sfsh,shhf) VALUES(52,'订单编号2','宠物名称2','宠物分类2','http://localhost:8080/pet/upload/chongwulingyang_tupian2.jpg','状态2',CURRENT_TIMESTAMP,'申请内容2','用户名2','姓名2','手机2','家庭住址2','是','');
INSERT INTO chongwulingyang(id,dingdanbianhao,chongwumingcheng,chongwufenlei,tupian,zhuangtai,shenqingriqi,shenqingneirong,yonghuming,xingming,shouji,jiatingzhuzhi,sfsh,shhf) VALUES(53,'订单编号3','宠物名称3','宠物分类3','http://localhost:8080/pet/upload/chongwulingyang_tupian3.jpg','状态3',CURRENT_TIMESTAMP,'申请内容3','用户名3','姓名3','手机3','家庭住址3','是','');
INSERT INTO chongwulingyang(id,dingdanbianhao,chongwumingcheng,chongwufenlei,tupian,zhuangtai,shenqingriqi,shenqingneirong,yonghuming,xingming,shouji,jiatingzhuzhi,sfsh,shhf) VALUES(54,'订单编号4','宠物名称4','宠物分类4','http://localhost:8080/pet/upload/chongwulingyang_tupian4.jpg','状态4',CURRENT_TIMESTAMP,'申请内容4','用户名4','姓名4','手机4','家庭住址4','是','');
INSERT INTO chongwulingyang(id,dingdanbianhao,chongwumingcheng,chongwufenlei,tupian,zhuangtai,shenqingriqi,shenqingneirong,yonghuming,xingming,shouji,jiatingzhuzhi,sfsh,shhf) VALUES(55,'订单编号5','宠物名称5','宠物分类5','http://localhost:8080/pet/upload/chongwulingyang_tupian5.jpg','状态5',CURRENT_TIMESTAMP,'申请内容5','用户名5','姓名5','手机5','家庭住址5','是','');
INSERT INTO chongwulingyang(id,dingdanbianhao,chongwumingcheng,chongwufenlei,tupian,zhuangtai,shenqingriqi,shenqingneirong,yonghuming,xingming,shouji,jiatingzhuzhi,sfsh,shhf) VALUES(56,'订单编号6','宠物名称6','宠物分类6','http://localhost:8080/pet/upload/chongwulingyang_tupian6.jpg','状态6',CURRENT_TIMESTAMP,'申请内容6','用户名6','姓名6','手机6','家庭住址6','是','');

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`adminid` bigint    COMMENT '管理员id',
	`ask` longtext    COMMENT '提问',
	`reply` longtext    COMMENT '回复',
	`isreply` int    COMMENT '是否回复',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服聊天表';

INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(61,1,1,'提问1','回复1',1);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(62,2,2,'提问2','回复2',2);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(63,3,3,'提问3','回复3',3);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(64,4,4,'提问4','回复4',4);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(65,5,5,'提问5','回复5',5);
INSERT INTO chat(id,userid,adminid,ask,reply,isreply) VALUES(66,6,6,'提问6','回复6',6);

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`refid` bigint    COMMENT '收藏id',
	`tablename` varchar(200)    COMMENT '表名',
	`name` varchar(200) NOT NULL   COMMENT '收藏名称',
	`picture` varchar(200) NOT NULL   COMMENT '收藏图片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';


DROP TABLE IF EXISTS `discussgonggaoxinxi`;

CREATE TABLE `discussgonggaoxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`nickname` varchar(200)    COMMENT '用户名',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公告信息评论表';

INSERT INTO discussgonggaoxinxi(id,refid,userid,nickname,content,reply) VALUES(81,1,1,'用户名1','评论内容1','回复内容1');
INSERT INTO discussgonggaoxinxi(id,refid,userid,nickname,content,reply) VALUES(82,2,2,'用户名2','评论内容2','回复内容2');
INSERT INTO discussgonggaoxinxi(id,refid,userid,nickname,content,reply) VALUES(83,3,3,'用户名3','评论内容3','回复内容3');
INSERT INTO discussgonggaoxinxi(id,refid,userid,nickname,content,reply) VALUES(84,4,4,'用户名4','评论内容4','回复内容4');
INSERT INTO discussgonggaoxinxi(id,refid,userid,nickname,content,reply) VALUES(85,5,5,'用户名5','评论内容5','回复内容5');
INSERT INTO discussgonggaoxinxi(id,refid,userid,nickname,content,reply) VALUES(86,6,6,'用户名6','评论内容6','回复内容6');

DROP TABLE IF EXISTS `discusschongwuxinxi`;

CREATE TABLE `discusschongwuxinxi` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`refid` bigint NOT NULL   COMMENT '关联表id',
	`userid` bigint NOT NULL   COMMENT '用户id',
	`nickname` varchar(200)    COMMENT '用户名',
	`content` longtext NOT NULL   COMMENT '评论内容',
	`reply` longtext    COMMENT '回复内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宠物信息评论表';

INSERT INTO discusschongwuxinxi(id,refid,userid,nickname,content,reply) VALUES(91,1,1,'用户名1','评论内容1','回复内容1');
INSERT INTO discusschongwuxinxi(id,refid,userid,nickname,content,reply) VALUES(92,2,2,'用户名2','评论内容2','回复内容2');
INSERT INTO discusschongwuxinxi(id,refid,userid,nickname,content,reply) VALUES(93,3,3,'用户名3','评论内容3','回复内容3');
INSERT INTO discusschongwuxinxi(id,refid,userid,nickname,content,reply) VALUES(94,4,4,'用户名4','评论内容4','回复内容4');
INSERT INTO discusschongwuxinxi(id,refid,userid,nickname,content,reply) VALUES(95,5,5,'用户名5','评论内容5','回复内容5');
INSERT INTO discusschongwuxinxi(id,refid,userid,nickname,content,reply) VALUES(96,6,6,'用户名6','评论内容6','回复内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/Pets/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/Pets/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/Pets/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`userid` bigint NOT NULL COMMENT '用户id',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`tablename` varchar(100) COMMENT '表名',
	`role` varchar(100) COMMENT '角色',
	`token` varchar(200) NOT NULL COMMENT '密码',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	`expiratedtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '过期时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

