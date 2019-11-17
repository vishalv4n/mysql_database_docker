create table category(id integer primary key auto_increment,title varchar(100));
create table product(id integer primary key auto_increment,title varchar(100),description varchar(1000),price float,category_id integer);
create table user(id integer primary key auto_increment,name varchar(100),email varchar(100),password varchar(50));
insert into category (title) values('Electronics');
insert into category (title) values('Refergirator');
insert into category (title) values('Washing machine');
insert into category (title) values('Air conditioner ');