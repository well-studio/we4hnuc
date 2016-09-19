
-- 失物招领 寻物 表
create table lostandfound (
	laf_id int primary key auto_increment, -- id
	laf_type int default 0, -- 0 招领  1 寻物
	laf_stat int default 1, -- 1  有效 2 过期 3 待审核 4  审核失败  6 认领成功
	laf_laftime timestamp, -- 失物丢的大概时间
	laf_pubtime timestamp, -- 发布时间
	laf_suc timestamp, -- 成功认领时间
	laf_sucName varchar(20), -- 认领人姓名
	laf_sucStuId varchar(15), -- 认领人学号
	laf_name varchar(30) not null, -- 联系人姓名
	laf_stuid varchar(15) not null, -- 学号
	laf_phone varchar(15) not null, -- 电话号码
	laf_qq varchar(15), -- QQ号码
	laf_wechat varchar(30), -- 微信号码
	laf_detail text not null, -- 描述
	laf_pic text -- 图片地址(参考华商只能上传一张图片,上传多张图片用 **号分割)
);


-- 向系统曾提交过失物招领/认领的用户表
create table user (
	usr_id int primary key auto_increment, -- id
	usr_stuId varchar(15), -- 学号
	usr_name varchar(20), -- 用户姓名
	usr_pwd varchar(30) -- 密码
	
);


-- 自定义配置表
create table adminConfig (
	conf_id int primary key auto_increment, -- id
	conf_key varchar(50), -- key
	conf_value varchar(250) -- value
);



