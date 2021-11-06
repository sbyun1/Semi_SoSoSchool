
DROP TABLE SMALL_GROUP;
DROP SEQUENCE SMALL_GROUP_SQ;

CREATE TABLE SMALL_GROUP(
            GBOARD_NO NUMBER NOT NULL ,
            GBOARD_TITLE VARCHAR2(100) NOT NULL ,
﻿
DROP TABLE SMALL_GROUP;
DROP SEQUENCE SMALL_GROUP_SQ;

CREATE TABLE SMALL_GROUP(
            GBOARD_NO NUMBER NOT NULL ,
            GBOARD_TITLE VARCHAR2(100) NOT NULL ,
            GBOARD_SUBTITLE VARCHAR2(100) NOT NULL ,
            GBOARD_CONTENT VARCHAR2(4000) NOT NULL ,
            GBOARD_IMG VARCHAR2(100) NOT NULL,  --이미지파일 이름
            GBOARD_REGDATE DATE NOT NULL,
            GBOARD_REGION VARCHAR2(200) NOT NULL ,
            GBOARD_LiBRARY VARCHAR2(200) NOT NULL ,
            CONSTRAINT GBOARD_NO_PK PRIMARY KEY (GBOARD_NO)
);

CREATE SEQUENCE SMALL_GROUP_SQ NOCACHE;

SELECT * FROM SMALL_GROUP;

SELECT * FROM SMALL_GROUP WHERE GBOARD_REGION = 'INCHEON' AND GBOARD_LIBRARY = 'A도서관';

INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트1','테스트1','테스트1','img1'
    , SYSDATE, 'SEOUL', 'A도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트1','테스트1','테스트1','img2'
    , SYSDATE, 'SEOUL', 'A도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트1','테스트1','테스트1','img3'
    , SYSDATE, 'SEOUL', 'A도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트1','테스트1','테스트1','img1'
    , SYSDATE, 'SEOUL', 'A도서관'
    );


INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트2','테스트2','테스트2','img1'
    , SYSDATE, 'SEOUL', 'B도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트2','테스트2','테스트2','img2'
    , SYSDATE, 'SEOUL', 'B도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트2','테스트2','테스트2','img3'
    , SYSDATE, 'SEOUL', 'B도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트2','테스트2','테스트2','img1'
    , SYSDATE, 'SEOUL', 'B도서관'
    );

INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트3','테스트3','테스트3','img1'
    , SYSDATE, 'SEOUL', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트3','테스트3','테스트3','img2'
    , SYSDATE, 'SEOUL', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트3','테스트3','테스트3','img3'
    , SYSDATE, 'SEOUL', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트3','테스트3','테스트3','img1'
    , SYSDATE, 'SEOUL', 'C도서관'
    );

INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트32','테스트23','테스트423412','img1'
    , SYSDATE, 'GYEONGGI', 'A도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트323','테스트3','테스트3GSA','img2'
    , SYSDATE, 'GYEONGGI', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트3','테스트3','테스트3DSD','img3'
    , SYSDATE, 'GYEONGGI', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트33','테스트3','테스트341','img1'
    , SYSDATE, 'INCHEON', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트34123','테스트3','테스트323','img2'
    , SYSDATE, 'INCHEON', 'C도서관'
    );
INSERT INTO SMALL_GROUP VALUES
    (
        SMALL_GROUP_SQ.nextval, '테스트334','테스트33','테스트32','img3'
    , SYSDATE, 'INCHEON', 'A도서관'
    );


---------------------------------------------------------------------------------------------------------------

CREATE TABLE RESULT(
       USER_ID VARCHAR2(30) NOT NULL ,
       MONTH NUMBER NOT NULL,
       KOR NUMBER NOT NULL ,
       MATH NUMBER NOT NULL ,
       ENG NUMBER NOT NULL
);

INSERT INTO RESULT VALUES ('seo5921', 10, 100, 98, 98);
INSERT INTO RESULT VALUES ('seo5921', 8, 96, 98, 76);
INSERT INTO RESULT VALUES ('seo5921', 9, 97, 34, 68);

select * from RESULT;

SELECT * FROM RESULT WHERE USER_ID='weed';
SELECT * FROM RESULT WHERE USER_ID='weed' AND MONTH = EXTRACT(MONTH FROM SYSDATE)-2;



-------------------------------------------------------------------------------------------

DROP TABLE SOSO_USER;
DROP SEQUENCE USER_NO_SQ;

CREATE TABLE SOSO_USER(
      USER_NO NUMBER PRIMARY KEY,
      USER_PR VARCHAR2(30) NOT NULL,
      USER_NAME VARCHAR2(30)NOT NULL,
      USER_ID VARCHAR(20) UNIQUE NOT NULL,
      USER_PW VARCHAR(100) NOT NULL,
      GRADE NUMBER NOT NULL,
      POSTCODE VARCHAR2(100) NOT NULL,
      ROADADDR VARCHAR2(4000) NOT NULL,
      DETAILADDR VARCHAR2(4000) NOT NULL,
      PHONE VARCHAR2(200) NOT NULL,
      EMAIL VARCHAR2(1000) NOT NULL,
      USER_POINT NUMBER DEFAULT 100 NOT NULL ,
      USER_STAR NUMBER DEFAULT 100 NOT NULL,
      SUB_YN CHAR(1) DEFAULT 'N' NOT NULL ,
      ENABLED_YN CHAR(1) DEFAULT 'Y' NOT NULL,
      USER_TYPE VARCHAR2(5) DEFAULT 'USER' NOT NULL,
      REGION VARCHAR2(100) NOT NULL,
      CONSTRAINT soso_user_region CHECK (REGION IN('SEOUL','GYEONGGI','INCHEON')),
      CONSTRAINT soso_user_grade CHECK (GRADE IN(1,2,3)),
      CONSTRAINT soso_user_sub CHECK (    SUB_YN IN ('Y','N')),
      CONSTRAINT soso_user_enabled CHECK (ENABLED_YN IN ('Y','N')),
      CONSTRAINT soso_user_user_type CHECK (USER_TYPE IN ('USER','ADMIN'))
);

CREATE SEQUENCE USER_NO_SQ NOCACHE;

INSERT INTO SOSO_USER VALUES
    (
        USER_NO_SQ.nextval, '김미영', '김주이', 'seo5921','a1234',1
        ,'123456','서울시 강남구 테헤란로 17로 24','가나다빌딩 100-112','01092035921','seo59212naver.com',
        DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT,'SEOUL'
    );

INSERT INTO SOSO_USER VALUES
    (
        USER_NO_SQ.nextval, '김니니', '김주삼', 'seo1234','a1234',2
        ,'331213','경기도 수원시 장안구 222로 11','고고아파트 130-1101','01092035921','seo5921@naver.com',
        DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT,'GYEONGGI'
    );

INSERT INTO SOSO_USER VALUES
    (
        USER_NO_SQ.nextval, '김미재', '김미이', 'seo4321','a1234',3
        ,'987134','인천광역시 남동구 정각로 9 ','미미빌라 102-121','01092035921','seo5931@naver.com',
        DEFAULT, DEFAULT, DEFAULT, DEFAULT,DEFAULT,'INCHEON'
    );

    INSERT INTO SOSO_USER VALUES
    (
        USER_NO_SQ.nextval, '어드민', '어드민', 'admin','a1234','qkwe','3'
        ,'경기도','01042035921','seo5931@naver.com',DEFAULT, DEFAULT, DEFAULT, DEFAULT,
        'ADMIN','INCHEON'
    );
SELECT * FROM SOSO_USER;
SELECT * FROM SOSO_USER WHERE REGION = 'SEOUL' ORDER BY USER_POINT DESC;
SELECT * FROM(SELECT ROWNUM R, A.USER_NO, A.USER_ID, A.USER_POINT FROM(SELECT USER_NO, USER_ID, USER_POINT, REGION FROM SOSO_USER WHERE REGION = ? ORDER BY USER_POINT DESC) A) WHERE USER_NO = ?;

SELECT USER_NO, USER_ID, USER_POINT, REGION FROM SOSO_USER WHERE REGION = 'SEOUL' ORDER BY USER_POINT DESC;
------------------------------------공지사항 게사판-----------------------------------------
DROP TABLE NOTICE;
DROP SEQUENCE NOTI_NO_SQ;
DROP SEQUENCE NOTI_GNO_SQ;

CREATE TABLE NOTICE(
       NOTI_NO NUMBER PRIMARY KEY,
       NOTI_GNO NUMBER NOT NULL,
       NOTI_GSQ NUMBER NOT NULL,
       NOTI_TAB NUMBER NOT NULL,
       NOTI_TITLE VARCHAR2(2000)NOT NULL,
       NOTI_WRITER VARCHAR2(30) DEFAULT '관리자' NOT NULL,
       NOTI_CONTENT VARCHAR2(4000) NOT NULL,
       NOTI_REGDATE DATE DEFAULT SYSDATE NOT NULL
);
--게시글 번호용 시퀸스-----
CREATE SEQUENCE NOTI_NO_SQ NOCACHE;
---그룹 내 순서용 시퀸스
CREATE SEQUENCE NOTI_GNO_SQ NOCACHE;
--
INSERT INTO NOTICE VALUES(
                             NOTI_NO_SQ.NEXTVAL, NOTI_GNO_SQ.NEXTVAL, 1, 0,
                             '테스트 데이터 입니다', DEFAULT, '테스트데이터', DEFAULT
                         );

--값 테스트--
INSERT INTO NOTICE VALUES(
                             NOTI_NO_SQ.NEXTVAL, NOTI_GNO_SQ.NEXTVAL, 1, 0,
                             '테스트 데이터 222입니다', DEFAULT, '테스트데이터222', DEFAULT
                         );

SELECT * FROM NOTICE;

----------------------------상품 관련 테이블---------------------------------------------------------------
DROP TABLE GIFT_BOARD;
DROP SEQUENCE GIFT_TABLE_SQ;

CREATE TABLE GIFT_BOARD(
    GI_NO NUMBER PRIMARY KEY ,
    GI_TITLE VARCHAR2(100) NOT NULL ,
    GI_PRIZE NUMBER NOT NULL ,
    GI_STOCK NUMBER NOT NULL,
    GI_IMG VARCHAR2(100) NOT NULL
);

CREATE SEQUENCE GIFT_TABLE_SQ;

INSERT INTO GIFT_BOARD VALUES (
    GIFT_TABLE_SQ.nextval, '바나나우유', 20, 20, 'banana'
);

INSERT INTO GIFT_BOARD VALUES (
    GIFT_TABLE_SQ.nextval, '가나초콜릿', 10, 20, 'chocolate'
);

INSERT INTO GIFT_BOARD VALUES (
    GIFT_TABLE_SQ.nextval, '삼각김밥', 50, 20, 'gimbab'
);

INSERT INTO GIFT_BOARD VALUES (
    GIFT_TABLE_SQ.nextval, '도시락', 80, 1, 'dosirak'
);

INSERT INTO GIFT_BOARD VALUES (
    GIFT_TABLE_SQ.nextval, '닌텐도', 100, 1, 'nintendo'
);
UPDATE GIFT_BOARD SET GI_PRIZE = 1000 WHERE GI_NO = 5;

SELECT * FROM GIFT_BOARD;x
select * from SOSO_USER;

UPDATE SOSO_USER SET USER_STAR = 300 WHERE USER_NO = 1;
UPDATE SOSO_USER SET USER_STAR = 200 WHERE USER_NO = 7;
UPDATE SOSO_USER SET USER_STAR = 100 WHERE USER_NO = 8;

CREATE TABLE QNA (
	QNA_NO NUMBER PRIMARY KEY,
	QNA_GNO NUMBER NOT NULL,
	QNA_GSQ NUMBER NOT NULL,
	QNA_TAB NUMBER NOT NULL,
	QNA_TITLE VARCHAR2(2000)NOT NULL,
	QNA_WRITER VARCHAR2(30) NOT NULL,
	QNA_CONTENT VARCHAR2(4000) NOT NULL,
	QNA_REGDATE DATE DEFAULT SYSDATE NOT NULL
);
--게시글 번호용 시퀸스-----
CREATE SEQUENCE QNA_NO_SQ NOCACHE;
---그룹 내 순서용 시퀸스
CREATE SEQUENCE QNA_GNO_SQ NOCACHE;
--
INSERT INTO QNA VALUES(
	NOTI_NO_SQ.NEXTVAL, NOTI_GNO_SQ.NEXTVAL, 1, 0, 
	'문의하기 테스트데이터 입니다',  'user1', '테스트데이터', DEFAULT
);
SELECT * FROM QNA
ORDER BY QNA_GNO DESC, QNA_GSQ;

-------------------------------자료실 게시판----------------------------------
CREATE TABLE REF_BOARD (
	RBOARD_NO NUMBER PRIMARY KEY,
	RBOARD_TITLE VARCHAR2(2000) NOT NULL,
	RBOARD_CONTENT VARCHAR2(4000) NOT NULL,
	RBOARD_REGDATE  DATE DEFAULT SYSDATE NOT NULL,
	RBOARD_GRADE NUMBER NOT NULL,
	RBOARD_SUBJECT VARCHAR2(30) NOT NULL,
	RBOARD_TYPE VARCHAR2(30) NOT NULL,
	CONSTRAINT RBOARD_GRADE_CHK CHECK (RBOARD_GRADE IN(1,2,3)),
    CONSTRAINT RBOARD_SUBJECT_CHK CHECK (RBOARD_SUBJECT IN ('KOR','MATH','ENG')),
    CONSTRAINT RBOARD_TYPE_CHK CHECK (RBOARD_TYPE IN ('VIDEO','DOCU')) 
);

---게시글 번호용 시퀀스------
CREATE SEQUENCE RBOARD_NO_SQ NOCACHE;

---값 테스트---
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목1', '테스트내용1', DEFAULT, 1, 'KOR', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목2', '테스트내용2', DEFAULT, 1, 'KOR', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목3', '테스트내용3', DEFAULT, 1, 'KOR', 'DOCU' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목4', '테스트내용4', DEFAULT, 2, 'KOR', 'VIDEO' );	
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목5', '테스트내용5', DEFAULT, 2, 'KOR', 'DOCU' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목6', '테스트내용6', DEFAULT, 2, 'KOR', 'DOCU' );	
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목7', '테스트내용7', DEFAULT, 3, 'KOR', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목8', '테스트내용8', DEFAULT, 3, 'KOR', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목9', '테스트내용9', DEFAULT, 3, 'KOR', 'VIDEO' );

INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목10', '테스트내용10', DEFAULT, 1, 'MATH', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목11', '테스트내용11', DEFAULT, 1, 'MATH', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목12', '테스트내용12', DEFAULT, 1, 'MATH', 'DOCU' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목13', '테스트내용13', DEFAULT, 2, 'MATH', 'VIDEO' );	
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목14', '테스트내용14', DEFAULT, 2, 'MATH', 'DOCU' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목15', '테스트내용15', DEFAULT, 2, 'MATH', 'DOCU' );	
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목16', '테스트내용16', DEFAULT, 3, 'MATH', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목17', '테스트내용17', DEFAULT, 3, 'MATH', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목18', '테스트내용18', DEFAULT, 3, 'MATH', 'VIDEO' );

INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목19', '테스트내용19', DEFAULT, 1, 'ENG', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목20', '테스트내용20', DEFAULT, 1, 'ENG', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목21', '테스트내용21', DEFAULT, 1, 'ENG', 'DOCU' );
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목22', '테스트내용22', DEFAULT, 2, 'ENG', 'VIDEO' );	
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목23', '테스트내용23', DEFAULT, 2, 'ENG', 'DOCU' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목24', '테스트내용24', DEFAULT, 2, 'ENG', 'DOCU' );	
INSERT INTO REF_BOARD VALUES(
	RBOARD_NO_SQ.NEXTVAL, '테스트제목25', '테스트내용25', DEFAULT, 3, 'ENG', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목26', '테스트내용26', DEFAULT, 3, 'ENG', 'VIDEO' );
INSERT INTO REF_BOARD VALUES(	
	RBOARD_NO_SQ.NEXTVAL, '테스트제목27', '테스트내용27', DEFAULT, 3, 'ENG', 'VIDEO' );


SELECT * FROM REF_BOARD WHERE RBOARD_GRADE=1 ORDER BY RBOARD_REGDATE ;
SELECT*FROM REF_BOARD;