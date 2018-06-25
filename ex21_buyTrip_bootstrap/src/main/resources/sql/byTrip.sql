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

insert into member values('yd@yd', '조용덕', 'yd', 'http://cfs2.tistory.com/upload_control/download.blog?fhandle=YmxvZzIwNzUxQGZzMi50aXN0b3J5LmNvbTovYXR0YWNoLzEvMTcxLmpwZw==','01087058999');
insert into member values('dy@gmail.com', '임다영', 'ldy', 'http://cfs2.tistory.com','01011112222');
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

insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '한국', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '일본', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '중국', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '미국', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '이탈리아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '스페인', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '티베트', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '브라질', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '영국', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '모로코', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '요르단', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '인도', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '쿠바', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '이스라엘', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '프랑스', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '에티오피아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '이집트', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '그리스', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '미얀마', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '네팔', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '태국', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '필리핀', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '베트남', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '포르투갈', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '터키', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '네덜란드', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '독일', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '캄보디아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '오스트리아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '호주', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '캐나다', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '콜롬비아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '페루', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '탄자니아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '멕시코', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '싱가폴', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '우주베키스탄', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '러시아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '크로아티아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '아르헨티나', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '과테말라', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '체코', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '헝가리', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '말레이시아', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '콩고', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '모르코', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '파프하뉴기니', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '홍콩', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '아일랜드', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '라오스', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '대만', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '우간다', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '에콰도르', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '북한', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '이란', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '스위스', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '노르웨이', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '덴마크', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '뉴질랜드', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '파라과이', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '우루과이', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '칠레', null, null);
insert into nation values('n'||lpad(nation_seq.nextval,3,'0'), '알제리', null, null);

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
insert into product values('p'||lpad(product_seq.nextval,10,'0'), 'yd@yd', '헤르메스', 'http://cfile202.uf.daum.net/image/1367D9474EFC9B11336946','http://blog.daum.net/znzngld/20', 
1, 2000000, '에르메스 가방 주황색', '상처없이 가져다주세요', sysdate, '2018/07/01', '한국', '미국', 'complete');

insert into product values('p'||lpad(product_seq.nextval,10,'0'), 'yd@yd', '구찌 벨트', null,null, 
1, 300000, '구찌 로고 벨트', 'tag이랑 정품보증서 있어야 합니다.', '2018/04/19', '2018/05/27', '한국', '이탈리아', 'complete');

insert into product values('p'||lpad(product_seq.nextval,10,'0'), 'yd@yd', 'paw paw 연고', null,null, 
5, 20000, '호주산 자외선 차단제 pawpaw', '감사합니다~', '2018/05/10', '2018/06/20', '한국', '호주', 'complete');

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

insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '한국', '일본', '2018/06/16',sysdate, 'yes');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '한국', '일본', '2018/06/06',sysdate, 'no');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '한국', '중국', '2018/06/09',sysdate, 'yes');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '한국', '미국', '2018/06/20',sysdate, 'yes');
insert into travel values('t'||lpad(travel_seq.nextval,4,'0'),'yd@yd', '한국', '미국', '2018/06/21',sysdate, 'yes');

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