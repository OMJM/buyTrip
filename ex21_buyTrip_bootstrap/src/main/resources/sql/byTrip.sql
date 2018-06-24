alter session set nls_date_format='rrrr/mm/dd hh24:mi:ss';
alter session set nls_date_format='rrrr-mm-dd';

select table_name from user_tables;

select * from member;
desc member;
show user;
select * from V$NLS_PARAMETERS;


DROP TABLE AUTHORITIES;

select * from AUTHORITIES;
CREATE TABLE AUTHORITIES(
	USERNAME VARCHAR2(100) NOT NULL, /* ID*/
	ROLE VARCHAR(30) NOT NULL,    /**/
	CONSTRAINT MEMBER_AUTHORITIES_FK FOREIGN KEY(USERNAME) REFERENCES MEMBER(member_id),
	CONSTRAINT AUTHORITIES_PK PRIMARY KEY(USERNAME,ROLE)
);

insert into authorities values('admin@buytrip.com', 'ROLE_ADMIN');
insert into authorities values('nini@buytrip.com', 'ROLE_MEMBER');

commit


drop table travel;
drop table message;
drop table chat;
drop table offer;
drop table travel;
drop table product;
drop table member cascade constraint;
drop table nation;

select * from nation;
create table member(
member_id varchar2(100) primary key,
member_name varchar2(50) not null,
member_password varchar2(100),
member_img varchar2(2000),
mobile varchar2(13) not null
);

insert into member values('yd@yd', '�����', 'yd', 'http://cfs2.tistory.com/upload_control/download.blog?fhandle=YmxvZzIwNzUxQGZzMi50aXN0b3J5LmNvbTovYXR0YWNoLzEvMTcxLmpwZw==','01087058999');
insert into member values('dy@gmail.com', '�Ӵٿ�', 'ldy', 'http://cfs2.tistory.com','01011112222');
.
select * from member;

select * from travel;
select * from product;
commit;

create table nation(
nation_code char(4) primary key,
nation_name varchar2(50) unique not null,
nation_pcode char(4) references nation(nation_code) on delete cascade,
nation_img varchar2(1000)
);

drop table nation;
drop sequence nation_seq;

create sequence nation_seq
increment by 1
start with 1;

select * from nation;

insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�ѱ�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�Ϻ�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�߱�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�̱�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '��Ż����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '������', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'Ƽ��Ʈ', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�丣��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�ε�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�̽���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '������', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '��Ƽ���Ǿ�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����Ʈ', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�׸���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�̾Ḷ', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�±�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�ʸ���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '��Ʈ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '��������', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '��Ű', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�״�����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'į�����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����Ʈ����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ȣ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ĳ����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�ݷҺ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ź�ڴϾ�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�߽���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�̰���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���ֺ�Ű��ź', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���þ�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ũ�ξ�Ƽ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�Ƹ���Ƽ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���׸���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ü��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�밡��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�����̽þ�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�����ϴ����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ȫ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���Ϸ���', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�븸', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�찣��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '���⵵��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�̶�', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '������', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�븣����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '����ũ', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '��������', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '�Ķ����', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '������', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), 'ĥ��', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '������', null, null);

commit;
drop table product cascade constraint;

create table product(
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
depart_nation varchar2(50) references nation(nation_name) on delete cascade,
arrival_nation varchar2(50) references nation(nation_name) on delete cascade,
trade_state varchar2(8) default 'no offer' check(trade_state in('no offer', 'in deal', 'complete'))
);

drop sequence product_seq;

create sequence product_seq
increment by 1
start with 1;

select * from product;
insert into product values('p'||lpad(product_seq.nextval,10,'0'), 'yd@yd', '�츣�޽�', 'http://cfile202.uf.daum.net/image/1367D9474EFC9B11336946','http://blog.daum.net/znzngld/20', 
1, 2000000, '�����޽� ���� ��Ȳ��', '��ó���� �������ּ���', sysdate, '2018/07/01', '�ѱ�', '�̱�', 'complete');

insert into product values('p'||lpad(product_seq.nextval,10,'0'), 'yd@yd', '���� ��Ʈ', null,null, 
1, 300000, '���� �ΰ� ��Ʈ', 'tag�̶� ��ǰ������ �־�� �մϴ�.', '2018/04/19', '2018/05/27', '�ѱ�', '��Ż����', 'complete');

insert into product values('p'||lpad(product_seq.nextval,10,'0'), 'yd@yd', 'paw paw ����', null,null, 
5, 20000, 'ȣ�ֻ� �ڿܼ� ������ pawpaw', '�����մϴ�~', '2018/05/10', '2018/06/20', '�ѱ�', 'ȣ��', 'complete');

commit;


create table offer(
offer_code char(11) primary key,
proposer_id varchar2(100) references member(member_id) on delete cascade,
offer_id varchar2(100) references member(member_id) on delete cascade,
product_code char(11) references product(product_code) on delete cascade,
offer_date date default sysdate
);

select * from offer;

create table chat(
chat_id char(11) primary key,
proposer_id varchar2(100) references member(member_id) on delete cascade,
offer_id varchar2(100) references member(member_id) on delete cascade,
product_code char(11) references product(product_code) on delete cascade
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

drop table travel;

create table travel(
travel_no char(5) primary key,
member_id varchar2(100) references member(member_id) on delete cascade,
depart_nation varchar2(50) references nation(nation_name) on delete cascade,
arrival_nation varchar2(50) references nation(nation_name) on delete cascade,
arrival_date date not null,
input_date date default sysdate,
notification varchar2(10) default 'yes' check(notification in('yes','no'))
);

create sequence travel_seq
increment by 1
start with 1;

drop sequence travel_seq;

select sysdate from dual;
select * from travel;

insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '�ѱ�', '�Ϻ�', '2018/06/16',sysdate, 'yes');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '�ѱ�', '�Ϻ�', '2018/06/06',sysdate, 'no');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '�ѱ�', '�߱�', '2018/06/09',sysdate, 'yes');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '�ѱ�', '�̱�', '2018/06/20',sysdate, 'yes');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '�ѱ�', '�̱�', '2018/06/21',sysdate, 'yes');

delete from travel
where notification=0;
commit;

select * from travel;
order by input_date desc;


select member_id, depart_nation_code, arrival_nation_code, arrival_date, notification
		from travel
		where arrival_date < sysdate
		order by arrival_date desc;
        
select * from nation;

select * from travel;

delete from travel where travel_no = 't0006';

commit;

select * from product;
select * from nation;
select * from travel;



select member_id, depart_nation, arrival_nation, arrival_date, notification
		from travel
		order by input_date desc;
        
        select member_id, depart_nation, arrival_nation, arrival_date, notification
		from travel
		where arrival_date < sysdate
		order by arrival_date desc;


select travel_no, member_id, depart_nation, arrival_nation, arrival_date, notification
		from travel
		where arrival_date > sysdate
		order by input_date desc;
        
        
select table_name from user_tables;

select *
from member, travel
where member.member_id = travel.member_id;

select * from member_travel;
select * from travel;
select * from product;
commit;

select distinct *
from product, travel
where product.arrival_nation = travel.arrival_nation;

select count(*)
from product, travel
where product.arrival_nation = travel.arrival_nation;

select * from product;

create view product_travel
as
select distinct *
from product, travel
where product.arrival_nation = travel.arrival_nation;

select * from product;