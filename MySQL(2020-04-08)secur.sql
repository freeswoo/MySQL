-- secur DB schema 생성
create database secur;

-- 사용자 등록
create user 'secur'@'localhost' identified by 'secur';

-- 권한부여
grant all privileges on *.* to 'secur'@'localhost';

-- schema open
use secur;

create table users (
	id bigint primary key auto_increment,
	username varchar(50),
    password varchar(125),
    enabled boolean
);

-- 2020-04-10
-- tbl_users 테이블 변경
-- user_name 에 unique 설정
drop table tbl_users;
create table tbl_users (
	id bigint primary key auto_increment,
	user_name varchar(50) unique,
    user_pass varchar(125),
    enabled boolean
);

create table authorities(
	id bigint primary key auto_increment,
    username varchar(50),
    authority varchar(50)
);

SELECT * FROM secur.tbl_users;
commit;
