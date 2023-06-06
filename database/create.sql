drop database if exists diary;
create database diary charset utf8;
use diary;

create table t_user
(
  id int primary key auto_increment comment '编号',
  username varchar(50) unique not null comment '用户名',
  password varchar(30) comment '密码',
  name varchar(30) comment '姓名'
)charset utf8 comment='用户表';

create table t_type(
  typeid int primary key auto_increment comment '编号',
  typename varchar(30) unique not null comment '分类名称',
  info varchar(100) comment '分类描述'
)charset utf8 comment='分类表';

create table t_diary(
  id int primary key auto_increment comment '编号',
  title varchar(50) not null comment '标题',
  content int comment '内容',
  typeid int comment '分类id',
  createtime datetime comment '发布时间',
  foreign key (typeid) references t_type(typeid)
)charset utf8 comment='日记表';

insert into t_user values (null,'tom','123','汤姆');
insert into t_user values (null,'jack','123','杰克');

insert into t_type values (null,'学习心得','平时学习的心得');
insert into t_type values (null,'生活点滴','生活的点点滴滴');
insert into t_type values (null,'旅游度假','记录旅游和度假');
