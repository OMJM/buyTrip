alter session set nls_date_format='rrrr/mm/dd hh24:mi:ss';

select table_name from user_tables;

drop table bookmark;
drop table message;
drop table chat;
drop table offer;
drop table travel;
drop table op;
drop table member;
drop table nation;

create table member(
member_id varchar2(100) primary key,
member_name varchar2(50) not null,
member_password varchar2(100),
temp_email varchar2(100) unique,
mobile varchar2(13) not null
);

insert into member values('yong', '¿ë', '1234', 'email', 'mobile');

create table nation(
nation_code char(4) primary key,
nation_name varchar2(50) unique not null,
nation_pcode char(4) references nation(nation_code) on delete cascade
);

create table op(
product_code char(11) primary key,
proposer_id varchar2(100) references member(member_id) on delete cascade,
product_name varchar2(200) not null,
product_img varchar2(1000),
product_url varchar2(1000),
product_qty number default 1 check(product_qty>0) not null,
product_price number check(product_price>0) not null,
product_desc varchar2(2000),
requirement varchar2(2000),
requested_date date default sysdate,
deadline_date date not null,
nation_code char(4) references nation(nation_code) on delete cascade
);

create table offer(
offer_code char(11) primary key,
proposer_id varchar2(100) references member(member_id) on delete cascade,
offer_id varchar2(100) references member(member_id) on delete cascade,
product_code char(11) references op(product_code) on delete cascade,
offer_date date default sysdate,
trade_state varchar2(8) default 'no offer' check(trade_state in('no offer', 'in deal', 'complete'))
);

create table chat(
chat_id char(11) primary key,
proposer_id varchar2(100) references member(member_id) on delete cascade,
offer_id varchar2(100) references member(member_id) on delete cascade,
product_code char(11) references op(product_code) on delete cascade
);

create table message(
message_id char(15) primary key,
chat_id char(11) references chat(chat_id) on delete cascade,
sender_id varchar2(100) references member(member_id) on delete cascade,
receiver_id varchar2(100) references member(member_id) on delete cascade,
message_content varchar2(2000) not null,
send_time date default sysdate,
read_time date
);

create table bookmark(
member_id varchar2(100) references member(member_id) on delete cascade,
depart_nation_code char(4) references nation(nation_code) on delete cascade,
arrival_nation_code char(4) references nation(nation_code) on delete cascade,
arrival_date date not null,
notification number(1) default 1 check(notification in(0,1))
);

create table travel(
member_id varchar2(100) references member(member_id) on delete cascade,
depart_nation_code char(4) references nation(nation_code) on delete cascade,
arrival_nation_code char(4) references nation(nation_code) on delete cascade,
arrival_date date not null,
notification number(1) default 1 check(notification in(0,1))
);

