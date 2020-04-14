-- DB 생성
create database scoreDB;

-- 사용자, 비밀번호 등록
create user 'score'@'localhost' identified by 'score';

-- 권한부여
grant all privileges on *.* to 'score'@'localhost';

-- schema 오픈
use scoreDB;

-- 학생명부 테이블 생성
-- drop table tbl_student;
create table tbl_student (
	id bigint primary key auto_increment,
	st_num varchar(5) unique,
    st_name varchar(20),
    st_grade int,
    st_class int
);

-- 점수표 테이블 생성
-- drop table tbl_score;
create table tbl_score (
	id bigint primary key auto_increment,
	s_num varchar(5),
    s_subject varchar(10),
    s_score int,
    unique key(s_num, s_subject)
);

INSERT INTO tbl_student(st_num, st_name, st_grade,st_class)
VALUES('20001','홍길동',1,1);
INSERT INTO tbl_student(st_num, st_name, st_grade,st_class)
VALUES('20002','이몽룔',1,1);
INSERT INTO tbl_student(st_num, st_name, st_grade,st_class)
VALUES('20003','성춘향',1,1);
INSERT INTO tbl_student(st_num, st_name, st_grade,st_class)
VALUES('20004','장영실',1,1);
INSERT INTO tbl_student(st_num, st_name, st_grade,st_class)
VALUES('20005','임꺽정',1,1);

INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20001','국어',80);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20001','영어',60);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20001','수학',70);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20001','과학',88);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20001','국사',76);

INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20002','국어',80);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20002','영어',66);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20002','수학',65);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20002','과학',77);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20002','국사',86);

INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20003','국어',70);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20003','영어',86);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20003','수학',75);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20003','과학',97);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20003','국사',86);

INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20004','국어',66);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20004','영어',77);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20004','수학',76);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20004','과학',87);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20004','국사',77);

INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20005','국어',77);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20005','영어',92);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20005','수학',65);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20005','과학',77);
INSERT INTO tbl_score(s_num,s_subject,s_score) VALUES('20005','국사',77);

SELECT s_num,
	SUM(CASE WHEN s_subject ='국어' 
		THEN s_score ELSE 0 END) AS 국어,
	SUM(CASE WHEN s_subject ='영어' 
		THEN s_score 
        ELSE 0 
        END) AS 영어,
	SUM(CASE WHEN s_subject ='수학' 
		THEN s_score 
        ELSE 0 
        END) AS 수학,
	SUM(CASE WHEN s_subject ='과학' 
		THEN s_score 
        ELSE 0 
        END) AS 과학,
	SUM(CASE WHEN s_subject ='국사' 
		THEN s_score 
        ELSE 0 
        END) AS 국사,
	SUM(s_score) AS 총점,
    AVG(s_score) AS 평균
FROM tbl_score
	LEFT JOIN tbl_student 
		ON tbl_student.st_num = tbl_score.s_num
GROUP BY s_num,st_name ;

SELECT * FROM TBL_SCORE;

SELECT * FROM TBL_STUDENT;



