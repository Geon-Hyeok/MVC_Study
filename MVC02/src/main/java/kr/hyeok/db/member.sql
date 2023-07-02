-- member(회원) table
create table member(
num int primary key auto_increment,
id varchar(20) not null,
pass varchar(20) not null,
name varchar (30) not null,
age int not null,
email varchar(30) not null,
phone varchar(30) not null,
unique(id)
);

-- SQL(CRUD), JDBC
-- 검색
select * from member;

-- insert(저장)
insert into member(id, pass, name, age, email, phone)
values('admin', 'admin', '관리자', 40, 'hyeok@naver.com', '010-1234-5678');

-- update(수정)
update member set age=1000, phone = '010-1111-2222' where name = '금옥지';

-- delete(삭제)
delete from member where id='admin';

drop table member;

