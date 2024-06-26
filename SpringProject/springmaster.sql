drop schema if exists springtest;
create schema springtest;
use springtest;

create table member(
	mno int primary key auto_increment,
    id varchar(100),
    password varchar(100),
    name varchar(100),
    ROLE VARCHAR(10) DEFAULT 'ROLE_USER',
    STATUS VARCHAR(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
    ENROLL_DATE DATETIME  DEFAULT CURRENT_TIMESTAMP,
    MODIFY_DATE DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE NOTICE (
	NNO INT PRIMARY KEY auto_increment,
    MNO INT,
    TITLE VARCHAR(100),
    CONTENT VARCHAR(1000),
    LIKECOUNT INT
);
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.1','공지 내용입니다.1');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.2','공지 내용입니다.2');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.3','공지 내용입니다.3');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.4','공지 내용입니다.4');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.5','공지 내용입니다.5');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.6','공지 내용입니다.6');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.7','공지 내용입니다.7');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.8','공지 내용입니다.8');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.9','공지 내용입니다.9');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.10','공지 내용입니다.10');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.11','공지 내용입니다.11');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.12','공지 내용입니다.12');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.13','공지 내용입니다.13');
INSERT INTO NOTICE (NNO, MNO, LIKECOUNT, TITLE, CONTENT) VALUES(0,1,0,'공지사항 게시글 입니다.14','공지 내용입니다.14');
SELECT * FROM NOTICE;
CREATE TABLE LIKEN (
	LNO INT PRIMARY KEY auto_increment,
    MNO INT,
    NNO INT,
    ID VARCHAR(100)
);
CREATE TABLE FIRSTVIEW (
	FNO INT PRIMARY KEY auto_increment,
    MNO INT,
    NNO INT,
    ID VARCHAR(100),
    VIEWTIME DATETIME  DEFAULT CURRENT_TIMESTAMP,
    NAME VARCHAR(100)
);
SELECT * FROM FIRSTVIEW;

insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'admin', '1234', '김관리', 'ADMIN', DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'test1', '1234', '홍길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'test2', '1234', '박길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'test3', '1234', '최길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'test4', '1234', '이길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'sample1', '1234', '홍길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'sample2', '1234', '박길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'sample3', '1234', '최길동', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'sample4', '1234', '이춘향', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
insert into member (
	mno, id, password, name, ROLE, STATUS, ENROLL_DATE, MODIFY_DATE
) values (
	0, 'sample5', '1234', '김춘향', DEFAULT, DEFAULT, DEFAULT, DEFAULT
);
select * from member;
