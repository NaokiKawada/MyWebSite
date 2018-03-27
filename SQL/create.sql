-- Project Name : noname
-- Date/Time    : 2018/03/27 19:16:25
-- Author       : naoki
-- RDBMS Type   : MySQL
-- Application  : A5:SQL Mk-2

-- user
create table user (
  id int(11) auto_increment not null comment 'id'
  , name varchar(256) comment 'name'
  , address varchar(256) comment 'address'
  , login_id varchar(256) comment 'login_id'
  , login_password varchar(256) comment 'login_password'
  , create_date date comment 'create_date'
  , constraint user_PKC primary key (id)
) comment 'user' ;

-- buy
create table buy (
  id int(11) auto_increment not null comment 'id'
  , user_id int(11) not null comment 'user_id'
  , total_price int(11) not null comment 'total_price'
  , delivery_method_id int(11) not null comment 'delivery_method_id'
  , create_date datetime not null comment 'create_date'
  , constraint buy_PKC primary key (id)
) comment 'buy' ;

-- buy_detail
create table buy_detail (
  id int(11) auto_increment not null comment 'id'
  , buy_id int(11) not null comment 'buy_id'
  , item_id int(11) not null comment 'item_id'
  , size varchar(5) comment 'size'
  , constraint buy_detail_PKC primary key (id)
) comment 'buy_detail' ;

-- delivery_method
create table delivery_method (
  id int(11) auto_increment not null comment 'id'
  , name varchar(256) not null comment 'name'
  , price int(11) not null comment 'price'
  , constraint delivery_method_PKC primary key (id)
) comment 'delivery_method' ;

-- item
create table item (
  id int(11) auto_increment not null comment 'id'
  , name varchar(256) comment 'name'
  , detail text comment 'detail'
  , price int(11) comment 'price'
  , file_name varchar(256) comment 'file_name'
  , constraint item_PKC primary key (id)
) comment 'item' ;
