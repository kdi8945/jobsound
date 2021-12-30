--------------------------------------------------------
--  파일이 생성됨 - 목요일-12월-30-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQ_STDNUM
--------------------------------------------------------

   CREATE SEQUENCE  "SEQ_STDNUM"  MINVALUE 1 MAXVALUE 9999 INCREMENT BY 1 START WITH 19 NOCACHE  NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "BOARD" 
   (	"B_TYPE" VARCHAR2(15 BYTE), 
	"B_NUM" NUMBER(6,0), 
	"ID" VARCHAR2(20 BYTE), 
	"UPLOADDATE" DATE, 
	"CONTENT" VARCHAR2(4000 BYTE), 
	"TITLE" VARCHAR2(500 BYTE), 
	"IMAGEPATH" VARCHAR2(100 BYTE), 
	"VIEWS" NUMBER(3,0), 
	"COMMCONTENT" VARCHAR2(2048 BYTE), 
	"COMMDATE" DATE, 
	"RE_LEVEL" NUMBER(3,0), 
	"RE_STEP" NUMBER(3,0), 
	"REF" NUMBER(3,0), 
	"STDNUM" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "BOARD"."B_TYPE" IS '게시물유형';
   COMMENT ON COLUMN "BOARD"."B_NUM" IS '게시글번호';
   COMMENT ON COLUMN "BOARD"."ID" IS '아이디';
   COMMENT ON COLUMN "BOARD"."UPLOADDATE" IS '등록일';
   COMMENT ON COLUMN "BOARD"."CONTENT" IS '내용';
   COMMENT ON COLUMN "BOARD"."TITLE" IS '제목';
   COMMENT ON COLUMN "BOARD"."IMAGEPATH" IS '이미지경로(Path)';
   COMMENT ON COLUMN "BOARD"."VIEWS" IS '조회수';
   COMMENT ON COLUMN "BOARD"."COMMCONTENT" IS '댓글내용';
   COMMENT ON COLUMN "BOARD"."COMMDATE" IS '댓글등록일';
   COMMENT ON COLUMN "BOARD"."RE_LEVEL" IS 're_level';
   COMMENT ON COLUMN "BOARD"."RE_STEP" IS 're_step';
   COMMENT ON COLUMN "BOARD"."REF" IS 'ref';
   COMMENT ON COLUMN "BOARD"."STDNUM" IS '스터디번호';
   COMMENT ON TABLE "BOARD"  IS '게시물';
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "FAQ" 
   (	"FAQNUM" NUMBER(6,0), 
	"FAQTITLE" VARCHAR2(30 BYTE), 
	"FAQCONTENT" VARCHAR2(2048 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "FAQ"."FAQNUM" IS 'FAQ번호';
   COMMENT ON COLUMN "FAQ"."FAQTITLE" IS 'FAQ제목';
   COMMENT ON COLUMN "FAQ"."FAQCONTENT" IS 'FAQ내용';
   COMMENT ON TABLE "FAQ"  IS 'FAQ';
--------------------------------------------------------
--  DDL for Table INQUIRE
--------------------------------------------------------

  CREATE TABLE "INQUIRE" 
   (	"INQNUM" NUMBER(6,0), 
	"ID" VARCHAR2(20 BYTE), 
	"INQTITLE" VARCHAR2(30 BYTE), 
	"INQCONTENT" VARCHAR2(2048 BYTE), 
	"ASKCONTENT" VARCHAR2(2048 BYTE), 
	"WRITEDATE" DATE, 
	"ASKDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "INQUIRE"."INQNUM" IS '문의번호';
   COMMENT ON COLUMN "INQUIRE"."ID" IS '아이디';
   COMMENT ON COLUMN "INQUIRE"."INQTITLE" IS '문의제목';
   COMMENT ON COLUMN "INQUIRE"."INQCONTENT" IS '문의내용';
   COMMENT ON COLUMN "INQUIRE"."ASKCONTENT" IS '답변내용';
   COMMENT ON COLUMN "INQUIRE"."WRITEDATE" IS '작성시간';
   COMMENT ON COLUMN "INQUIRE"."ASKDATE" IS '답변시간';
   COMMENT ON TABLE "INQUIRE"  IS '문의사항';
--------------------------------------------------------
--  DDL for Table MEMBERINFO
--------------------------------------------------------

  CREATE TABLE "MEMBERINFO" 
   (	"ID" VARCHAR2(20 BYTE), 
	"NAME" VARCHAR2(20 BYTE), 
	"NICKNAME" VARCHAR2(20 BYTE), 
	"PASSWD" VARCHAR2(15 BYTE), 
	"GENDER" VARCHAR2(2 BYTE), 
	"TEL" VARCHAR2(11 BYTE), 
	"EMAIL" VARCHAR2(30 BYTE), 
	"BIRTH" VARCHAR2(8 BYTE), 
	"ADDR" VARCHAR2(30 BYTE), 
	"REG_CHK" VARCHAR2(1 BYTE), 
	"WIDRAW" VARCHAR2(1 BYTE), 
	"REGDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "MEMBERINFO"."ID" IS '아이디';
   COMMENT ON COLUMN "MEMBERINFO"."NAME" IS '이름';
   COMMENT ON COLUMN "MEMBERINFO"."NICKNAME" IS '닉네임';
   COMMENT ON COLUMN "MEMBERINFO"."PASSWD" IS '비밀번호';
   COMMENT ON COLUMN "MEMBERINFO"."GENDER" IS '성별';
   COMMENT ON COLUMN "MEMBERINFO"."TEL" IS '전화번호';
   COMMENT ON COLUMN "MEMBERINFO"."EMAIL" IS '이메일';
   COMMENT ON COLUMN "MEMBERINFO"."BIRTH" IS '생년월일';
   COMMENT ON COLUMN "MEMBERINFO"."ADDR" IS '상세주소';
   COMMENT ON COLUMN "MEMBERINFO"."REG_CHK" IS '가입여부';
   COMMENT ON COLUMN "MEMBERINFO"."WIDRAW" IS '회원탈퇴';
   COMMENT ON COLUMN "MEMBERINFO"."REGDATE" IS '회원등록일자';
   COMMENT ON TABLE "MEMBERINFO"  IS '회원정보';
--------------------------------------------------------
--  DDL for Table STDAPPLY
--------------------------------------------------------

  CREATE TABLE "STDAPPLY" 
   (	"STDNUM" NUMBER(6,0), 
	"PARTICIPANT_ID" VARCHAR2(20 BYTE), 
	"STDAPPLY_DATE" DATE, 
	"STDPARTI_DATE" DATE, 
	"APPLY_CHK" VARCHAR2(1 BYTE), 
	"APPLY_CONTENT" VARCHAR2(300 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STDAPPLY"."STDNUM" IS '스터디번호';
   COMMENT ON COLUMN "STDAPPLY"."PARTICIPANT_ID" IS '참여자아이디';
   COMMENT ON COLUMN "STDAPPLY"."STDAPPLY_DATE" IS '스터디신청일자';
   COMMENT ON COLUMN "STDAPPLY"."STDPARTI_DATE" IS '스터디참여일자';
   COMMENT ON COLUMN "STDAPPLY"."APPLY_CHK" IS '신청상태';
   COMMENT ON COLUMN "STDAPPLY"."APPLY_CONTENT" IS '신청내용';
   COMMENT ON TABLE "STDAPPLY"  IS '스터디신청';
--------------------------------------------------------
--  DDL for Table STDCHK
--------------------------------------------------------

  CREATE TABLE "STDCHK" 
   (	"STDNUM" NUMBER(6,0), 
	"STDREG_ID" VARCHAR2(20 BYTE), 
	"STDTITLE" VARCHAR2(30 BYTE), 
	"STDSTART_DATE" DATE, 
	"STDEND_DATE" DATE, 
	"STDPN" VARCHAR2(6 BYTE), 
	"STDSTATUS" VARCHAR2(1 BYTE), 
	"STDDIV" VARCHAR2(50 BYTE), 
	"RECRU_DATE" DATE, 
	"RECU_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "STDCHK"."STDNUM" IS '스터디번호';
   COMMENT ON COLUMN "STDCHK"."STDREG_ID" IS '스터디생성자아이디';
   COMMENT ON COLUMN "STDCHK"."STDTITLE" IS '스터디제목';
   COMMENT ON COLUMN "STDCHK"."STDSTART_DATE" IS '스터디시작일';
   COMMENT ON COLUMN "STDCHK"."STDEND_DATE" IS '스터디종료일';
   COMMENT ON COLUMN "STDCHK"."STDPN" IS '스터디인원';
   COMMENT ON COLUMN "STDCHK"."STDSTATUS" IS '스터디상태';
   COMMENT ON COLUMN "STDCHK"."STDDIV" IS '스터디분류';
   COMMENT ON COLUMN "STDCHK"."RECRU_DATE" IS '모집시작일';
   COMMENT ON COLUMN "STDCHK"."RECU_DATE" IS '모집마감일';
   COMMENT ON TABLE "STDCHK"  IS '스터디현황';
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',21,'kd1',to_date('21/09/28','RR/MM/DD'),'내용1','공지제목1',null,40,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',22,'kd1',to_date('21/09/18','RR/MM/DD'),'내용2','제목2',null,999,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',23,'kd2',to_date('21/09/09','RR/MM/DD'),'스터디내용3','스터디제목3',null,36,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',25,'kd3',to_date('21/08/01','RR/MM/DD'),'<button type="button" class="btn btn-light btn-xs">수정</button>','태그 테스트',null,36,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',26,'kd3',to_date('21/09/08','RR/MM/DD'),null,null,null,null,'댓글 내용입니다',to_date('21/09/08','RR/MM/DD'),1,1,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',27,'kd4',to_date('21/09/20','RR/MM/DD'),'내용6','제목6','1',39,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',28,'kd4',to_date('21/09/21','RR/MM/DD'),'내용7','제목7',null,45,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',29,'kd5',to_date('21/09/25','RR/MM/DD'),'내용8','제목8',null,34,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',30,'kd5',to_date('21/09/27','RR/MM/DD'),'내용9','제목9',null,38,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',31,'kd2',null,null,null,null,null,'댓글의 2번이야 별헤는밤 감동이야',to_date('21/09/29','RR/MM/DD'),1,2,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',33,'kd1',to_date('21/10/07','RR/MM/DD'),'asdf','zxcv','(null)',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',34,'kd1',to_date('21/10/07','RR/MM/DD'),'ㅇㅁㄴㄹ','글 제목','(null)',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',35,'kd1',to_date('21/10/07','RR/MM/DD'),'ㅁㄴㅇㄹ','이미지가 없읍니다','(null)',10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',36,'kd1',to_date('21/10/07','RR/MM/DD'),'ㅁㄴㅇㄹ','글쓰기','(null)',4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',37,'kd1',to_date('21/10/07','RR/MM/DD'),'kgkj','ljhjk','uploadImages\null',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',38,'kd1',to_date('21/10/07','RR/MM/DD'),'ㅁㄴㅇㄹ','이미지 삽입','uploadImages\스크린샷(1).png',9,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',39,'kd1',null,null,null,null,null,'댓글',to_date('21/10/07','RR/MM/DD'),1,null,38,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',40,'kd1',to_date('21/10/07','RR/MM/DD'),'fasdfasdf','sdafasd','uploadImages\null',9,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',32,'kd2',to_date('21/10/07','RR/MM/DD'),'asdf','asdf','(null)',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',41,'kd1',null,null,null,null,null,'.mn,m',to_date('21/10/07','RR/MM/DD'),1,3,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',42,'kd1',to_date('21/10/07','RR/MM/DD'),'hfhgfgh','lmbkjhkjjk','uploadImages\스크린샷(1)1.png',4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',43,'kd1',null,null,null,null,null,'sdafasdf',to_date('21/10/07','RR/MM/DD'),1,null,30,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',44,'kd1',to_date('21/10/07','RR/MM/DD'),'ㅁㄴㅇㄹ','글임니다.','uploadImages\null',9,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',45,'kd1',null,null,null,null,null,'asdf',to_date('21/10/07','RR/MM/DD'),1,null,38,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',46,'kd1',null,null,null,null,null,'kjhkj',to_date('21/10/07','RR/MM/DD'),1,4,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',47,'kd1',null,null,null,null,null,'asdf',to_date('21/10/07','RR/MM/DD'),1,null,23,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',48,'kd1',null,null,null,null,null,'asfd',to_date('21/10/07','RR/MM/DD'),1,null,23,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',49,'kd1',null,null,null,null,null,'댓글1',to_date('21/10/11','RR/MM/DD'),1,1,44,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',56,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹ','ㅁㄴㅇㄹㅁㄴㅇㄹ','uploadImages\',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',51,'kd1',null,null,null,null,null,'댓글3',to_date('21/10/11','RR/MM/DD'),2,2,49,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',53,'kd1',to_date('21/10/11','RR/MM/DD'),'사진 업로드 테스트','사진 업로드 테스트','uploadImages\',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',54,'kd1',null,null,null,null,null,'asdf',to_date('21/10/11','RR/MM/DD'),1,1,52,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',55,'kd1',null,null,null,null,null,'댓글을 수정합니다.',to_date('21/10/11','RR/MM/DD'),2,2,54,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',57,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄻㄴㅇㅂㅈㄷㄱ','ㅁㄴㅇㄹ','uploadImages\',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',58,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ','ㅁㄴㅇㄻㄴㅇㄹ',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',59,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅋㅌㅊ','ㅋㅌㅊㅋㅌㅊ',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',60,'kd1',to_date('21/10/11','RR/MM/DD'),'이미지 없음','이미지 없음','\uploadImages\null',37,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',62,'kd1',null,null,null,null,null,'asdf',to_date('21/10/11','RR/MM/DD'),1,1,42,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',64,'kd1',null,null,null,null,null,'ㅁㄴㅇㄹ',to_date('21/10/11','RR/MM/DD'),1,3,60,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',65,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅋㅌㅊ','ㅋㅌㅊ','\uploadImages\null',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',66,'kd1',to_date('21/10/11','RR/MM/DD'),'빈글','빈글','\uploadImages\null',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',67,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅂㅈㄷㄱㅇㄴㄹ','ㅋㅌㅊㅇㄻㄴㅇㄹ','\uploadImages\null',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',68,'kd1',to_date('21/10/11','RR/MM/DD'),'234789342789432','97834598234',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',69,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹ','ㅁㄴㅇㄹ',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',70,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅋㅌㅊㅍ','ㅋㅌㅊㅍ',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',71,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅈㅂㄷㄱ','ㅋㅌㅊㅍ',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',72,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹ','ㅋㅌㅊㅍ','uploadImage스크린샷(1)5.png',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',73,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹ','없음',null,2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',74,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹ','이미지가 없음',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',75,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹ','이미지가 있음','uploadImage\20210918_0952151.jpg',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',76,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅋㅌㅊㅍㅁㄴ','경로 테스트','uploadImages\20210918_095313.jpg',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',77,'kd1',to_date('21/10/11','RR/MM/DD'),'ㅁㄴㅇㄹdsfsfdsadfasdfafs','경로 변경 테스트','..\uploadImages\20210918_095212.jpg',15,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',88,'kd2',null,null,null,null,null,'dsaf',to_date('21/10/12','RR/MM/DD'),1,1,77,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',89,'kd1',null,null,null,null,null,'asdfasdf',to_date('21/10/12','RR/MM/DD'),1,2,77,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',86,'kd1',null,null,null,null,null,'ㅁㄴㅇㄻㄴㅇㄻㄴㅇㄹ',to_date('21/10/12','RR/MM/DD'),1,1,79,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',81,'kd1',null,null,null,null,null,'폼 바뀌고',to_date('21/10/12','RR/MM/DD'),1,1,80,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',85,'kd1',null,null,null,null,null,'답글',to_date('21/10/12','RR/MM/DD'),2,1,84,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',83,'kd1',null,null,null,null,null,'세번째 댓글 달고',to_date('21/10/12','RR/MM/DD'),1,2,80,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',87,'kd1',null,null,null,null,null,'ㅁㄴㅇㄻㄴㅇㄹ',to_date('21/10/12','RR/MM/DD'),1,2,79,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',90,'kd1',null,null,null,null,null,'asdf',to_date('21/10/12','RR/MM/DD'),1,3,77,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',98,'kd1',to_date('21/10/12','RR/MM/DD'),'dasadfsadfsfadsafdsafds','asdfdsfafad','..\uploadImages\20211012180327.png',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',92,'kd1',null,null,null,null,null,'jhghj',to_date('21/10/12','RR/MM/DD'),2,1,91,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',93,'kd1',null,null,null,null,null,'oiuhjkhk',to_date('21/10/12','RR/MM/DD'),2,2,88,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',95,'kd1',to_date('21/10/12','RR/MM/DD'),'ㅋㅊㅌㅍㅋㅌㅊㅍㅋㅌㅊㅍㅋㅊㅌㅍ허러ㅓㅗㅓㅗㅓㅗ허ㅗㅗ','ㅋㅌㅊㅍㅋㅌㅊㅍㅋㅌㅊㅍㅋㅌㅊㅍ','..\uploadImages\20211012110531.png',40,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',96,'kd1',null,null,null,null,null,'ㅁㄴㅇㄹㄻㅇㄴㄻㅇㄴㅁㄴㅇㅁㄴㅇㄹㅁㄹㄴㅇㄻㄴㅇㅁㄹㄴㅇㅁㄹㄴㅇsdfasdffffds',to_date('21/10/12','RR/MM/DD'),1,1,95,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',97,'kd1',null,null,null,null,null,'ㅇㄹㄴㅁㅇ',to_date('21/10/12','RR/MM/DD'),1,2,95,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',99,'kd1',to_date('21/10/14','RR/MM/DD'),'ㅁㄴㅇㄹㅋㅊㅋㅌㅊ','고먐미사진 수정','..\uploadImages\20211014115217.jpg',27,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',100,'kd1',null,null,null,null,null,'asdf',to_date('21/10/14','RR/MM/DD'),1,1,99,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',101,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',177,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',199,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,7,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',103,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',104,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',105,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',106,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',107,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',108,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',109,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',110,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',111,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',112,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',113,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',114,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',115,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',116,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',117,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',118,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',119,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',120,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',121,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',122,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',123,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',124,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',125,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',126,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',127,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',128,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',129,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',130,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',131,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',132,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',133,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',134,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',135,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',136,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',137,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',138,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',139,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',140,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',141,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',142,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',143,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',144,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',145,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',146,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',147,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',148,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',149,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',150,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',151,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',152,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',153,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',154,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',155,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',156,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',157,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',158,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',159,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',160,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',161,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',162,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',163,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',164,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',165,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',166,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',167,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',168,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',169,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',170,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',171,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',172,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',173,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',174,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',175,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',176,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',200,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,50,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',178,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',179,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',180,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',181,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',182,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',183,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',184,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',185,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',186,'kd1',to_date('21/10/14','RR/MM/DD'),'방빼','@@이제부터 여긴 맨체스터 유나이티드 갤러리다@@@',null,4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',65,'admin',to_date('21/10/15','RR/MM/DD'),'한국심리교육협회는 사회복지사 취업에 관심이 있는 이들을 위해 심리상담사자격증을 포함하여 70여종 온라인 강의를 교육원 홈페이지를 통해 무료로 제공하고 있다. 회원가입만 진행하면 문화누리카드 또는 국민행복카드 소지 여부와 관계없이 누구나 수강할 수 있다.

한국심리교육협회는 프리미엄브랜드 대상과 고객중심퍼스트브랜드 대상을 수상한 바 있는 교육청등록 원격평생교육원이다. 현재 사회공헌활동의 일환으로 국민행복카드 신청방법 및 사용처와는 관계없이 수강 가능한 자격과정을 무료로 교육 중에 있다.

이에 취업성공패키지와는 상관없이 사회복지사 1~2급 자격증 취득방법을 알아보고 있는 이들에게도 무료로 교육을 제공 중에 있다. 아울러 취득 후에도 지속적인 학습을 돕는 복습강의 제공 및 취업과 봉사 정보를 확인 가능한 취업정보사이트를 자체적으로 운영 중이다.','한국심리교육협회, 사회복지사 취업 돕는 무료교육 제공','..\uploadImages\20211015142143.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',66,'admin',to_date('21/10/15','RR/MM/DD'),'취업 시장에서 가장 인기 있는 자격증은 지게차운전기능사 자격인 것으로 나타났다. 직업상담사 자격증을 가진 취업준비생도 대기업을 중심으로 많이 구했다. 월급을 가장 많이 제시하는 자격증은 토질이나 수질, 건축 관련 자격증인 것으로 조사됐다.

한국산업인력공단이 취업 지원 누리집인 워크넷에 올라온 최근 3년(2018~2020년) 치 구인공고를 분석한 결과다. 이 기간에 게재된 22만6000여 건의 구인공고 중 22만5000건이 국가기술자격을 채용 요건으로 정하거나 우대하고 있는 것으로 나타났다.

공고에 가장 많이 활용된 국가기술자격은 지게차운전기능사였다. 이어 건축기사, 한식조리기능사, 전기기사, 토목기사 순이었다. 특히 건설분야와 전기분야가 상위에 랭크돼 이런 업종에선 자격증이 필수인 것으로 분석됐다. 상위 8개 자격증은 순위변동이 없을 정도로 취업 시장에서 견고하게 인기를 누리고 있었다.

대기환경기사는 최근 탄소 중립 등 산업 경향이 반영돼 2018년 24위에서 지난해 13위로 인기가 급속도로 상승했다. 또 직업상담사(2급) 자격증은 지난해 20%나 구인 건수가 증가하는 등 기업으로부터 꾸준한 러브콜을 받으며 인기 자격으로 입지를 굳혔다. 컴퓨터활용능력(2급), 정보처리기사, 웹디자인기능사 같은 정보통신(IT)과 사무자동화(OA) 활용능력을 가진 사람을 찾는 기업도 증가 추세였다.

하지만 국가기술자격 시험에 응시하는 인원이 가장 많은 상위 15개 가운데 절반은 미용사, 워드프로세서, 제빵기능사, 제과기능사 같은 전통적인 자격이었다.','가장 취업 잘되는 자격증은 지게차운전…가장 월급 센 것은?','..\uploadImages\20211015142220.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',67,'admin',to_date('21/10/15','RR/MM/DD'),'투데이코리아=박수연 기자 | 좁아진 ‘취업문’으로 인해 우리나라 청년 10명 중 7명이 사실상 구직 단념 상태인 것으로 나타났다.
 
한국경제연구원(이하 한경연)이 발표한 ‘2021년 대학생 취업인식도 조사’에 따르면 전국 4년제 대학 3~4학년 재학생 및 졸업생 2713명을 대상으로 실시한 결과 대학생 10명 중 6~7명(65.3%)은 구직을 단념한 상태인 것으로 나타났다.
 
구직단념 비중은 구직활동 실태 응답 중 △거의 안함(33.7%) △의례적으로 하고 있음(23.2%) △쉬고 있음(8.4%)을 합한 수치이다. 적극적으로 구직활동을 하고 있다는 응답 비중은 10명 중 1명 꼴(9.6%)에 불과했다.
 
적극적으로 구직활동을 하지 않는 이유로는 △자신의 역량, 기술, 지식 등이 부족해 더 준비하기 위해(64.9%)라고 가장 많이 응답했고 이어서 △전공 또는 관심 분야의 일자리가 부족해서(10.7%) △구직활동을 해도 일자리를 구하지 못할 것 같아서(7.6%) △적합한 임금수준이나 근로조건을 갖춘 일자리가 부족해서(4.8%) 등의 순으로 나타났다.
 
대졸 청년 구직자들이 체감하는 채용 시장의 환경은 갈수록 힘겨워지고 있다.','‘바늘구멍’ 취업 문…대학생 10명 중 7명 구직 단념','..\uploadImages\20211015142314.jpg',5,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',72,'admin',to_date('21/10/15','RR/MM/DD'),'다수의 청년 구직자들이 적극적으로 취업활동을 하고 있지 않는 것으로 조사됐다. 10명 중 6~7명이 사실상 구직을 단념한 상태고, 자신의 능력 등이 부족하다고 생각하는 등 구직에 대한 부담을 느끼고 있었다.  

한국경제연구원(이하 한경연)이 전국 4년제 대학 3~4학년 재학생 및 졸업생 2713명을 대상으로 ‘2021년 대학생 취업인식도 조사’를 진행하고 그 결과를 12일 발표했다.

조사결과에 따르면 대학생 10명 중 6~7명(65.3%)은 사실상 구직을 단념한 상태였다. 사실상 구직단념 비중은 구직활동 실태 응답 중 거의 안함(33.7%), 의례적으로 하고 있음(23.2%), 쉬고 있음(8.4%)을 합한 수치다. 반면 적극적으로 구직활동을 하고 있다는 응답 비중은 10명 중 1명 꼴(9.6%)에 불과했다.

적극적으로 구직활동을 하지 않는 이유로는 ‘자신의 역량, 기술, 지식 등이 부족해 더 준비하기 위해’(64.9%) 라고 가장 많이 응답했다. 이어 ‘전공 또는 관심 분야의 일자리가 부족해서’(10.7%), ‘구직활동을 해도 일자리를 구하지 못할 것 같아서’(7.6%), ‘적합한 임금수준이나 근로조건을 갖춘 일자리가 부족해서’(4.8%) 등의 순이었다. ‘기타’(9.6%) 의견으로는 대부분 ‘진로 미확정’이라고 답했다. 

한경연은 “청년들이 갈수록 치열해지는 취업경쟁 속에서 스스로의 취업가능성을 낮게 진단하고 구직 자신감을 잃고 있다”며 “이는 청년들의 노동시장 진입을 늦추고 미래의 성장 동력이 저하되는 결과를 야기할 것”이라고 우려를 표했다.

또 대다수의 대학생들이 체감하는 취업 환경은 작년보다 힘들고, 앞으로도 더 어려워질 것으로 전망했다. ','“취업 준비는 아직”…구직 앞에 자신감 잃은 청년들','..\uploadImages\20211015142912.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',74,'admin',to_date('21/10/15','RR/MM/DD'),'(서울=연합뉴스) 정빛나 기자 = 신종 코로나바이러스 감염증(코로나19) 여파로 민항사 취업 길이 대부분 막히면서 올해 전역을 신청한 공군 조종사가 한 명도 없는 것으로 나타났다.

8일 국회 국방위원회 소속 더불어민주당 김민기 의원이 공군으로부터 제출받은 자료에 따르면 올해 9월까지 내년도 민항사 취업을 위해 전역을 신청한 숙련급 조종사는 0명으로 확인됐다.

지난해 신청해 올해 전역 후 민항사에 취업한 공군 숙련급 조종사는 7명이었다.

이는 지난해 전역자 113명과 비교하면 급감한 수치다. 실제로 매년 100~130명가량의 공군 숙련급 조종사가 전역 후 민항사에 취업해 조종사 유출은 군의 고질적인 문제로 꼽혔다.


공군 숙련급 조종사는 임관 8∼17년차 조종장교로, 일정 기간 전술훈련을 거쳐 독자적인 작전운영과 저등급 조종사의 비행훈련을 지도할 수 있다.

김민기 의원은 "숙련급 조종사들의 전역이 급감한 것은 코로나19 장기화로 줄어든 항공 수요 탓에 민항사들의 채용이 큰 폭으로 줄었기 때문"이라고 설명했다.

이어 "이는 일시적 현상으로, 코로나19 이후 공군이 다시 민항사의 조종인력 양성소가 되는 일이 없도록 근본적인 대책을 마련해야 한다"고 주장했다.','코로나에 민항사 취업 막히자…올해 공군 조종사 전역신청 0명','..\uploadImages\20211015143104.jpg',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',77,'admin',to_date('21/10/15','RR/MM/DD'),'국가보훈처는 오늘 ''2021 제대 군인 정책 발전 방안 세미나''를 온·오프라인 방식으로 열고 민관 협업을 통한 제대 군인들의 맞춤형 취업 지원의 필요성을 강조했습니다.

올해 제대군인주간(5∼8일) 행사의 일환으로 열린 이번 세미나에선 제대 군인의 원활한 사회 복귀와 생활 안정을 높이기 위한 지원 방안, 보훈 체계 변화에 따른 정책 발전 방안, 제대 군인 지원 정책에 대한 토론이 진행됐습니다.

황기철 보훈처장은 "정부와 민간의 협업을 통한 제대 군인들의 맞춤형 취업 지원과 명예 선양, 의무 복무자 지원 확대 등이 필요하다"며 "이번 세미나로 제대 군인 지원 정책이 한층 더 발전되길 바란다"고 말했습니다','보훈처 "민관 협업으로 제대 군인 맞춤형 취업 지원해야"','..\uploadImages\20211015143443.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',79,'admin',to_date('21/10/15','RR/MM/DD'),'구직자 절반 이상이 올해 하반기 취업 경기도 상반기와 비슷하다고 체감하는 것으로 나타났다.

취업 플랫폼 잡코리아가 알바몬과 함께 9월 29일부터 10월 6일까지 하반기 구직 활동 중인 구직자 1,196명을 대상으로 하반기 취업 경기 체감 현황에 대해 설문 조사한 결과를 7일 발표했다. 여기에는 신입 구직자 854명과 경력 구직자 342명이 포함됐다.

먼저 하반기 취업 경기가 상반기에 비해 나아져 보이는지 묻는 질문에 전체 응답자의 57.3%가 상반기와 비슷하다고 밝혔다.

신입직 구직자(56.0%)와 경력직 구직자(60.5%) 각 그룹에서 모두 절반 이상이 이렇게 답했다.

이어 상반기보다 하반기 취업 경기가 나빠진 것 같다는 구직자가 34.7%였고, 하반기 취업 경기가 상반기보다 나아진 것 같다는 구직자는 전체 응답자 중 8.0%에 그쳤다.

하반기 취업 경기가 상반기보다 나빠진 것 같다고 생각하는 이유 중에는 ''코로나19 재확산으로 면접 등 채용 일정이 연기되고 있어서''라고 답한 이들이 28.2%로 가장 많았다. ''신입직만 채용하는 기업이 적어 보여서''라는 답변도 25.3%로 그 다음으로 많았다.

특히 신입 구직자 중에는 신입직만 채용하는 기업이 적어져 하반기 취업 경기가 상반기보다 나빠진 것 같다고 체감하는 응답자가 29.6%로 가장 많았다.

경력 구직자 중에는 코로나19 재확산으로 면접 등 채용 일정이 연기되고 있어 취업 경기가 나빠졌다고 느낀다는 이들의 응답률이 36.1%로 가장 높았다.','구직자 57% "하반기 취업 경기도 상반기와 비슷해"','..\uploadImages\20211015143648.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',81,'admin',to_date('21/10/15','RR/MM/DD'),'10일 서울 광진구 세종대에서 진행된 SK그룹 신입사원 공개채용 필기시험 ‘SK종합역량검사’(SKCT)를 마친 수험생들이 고사장을 빠져나오고 있다. SK그룹은 올해 하반기 공채를 끝으로 채용 방식을 수시 채용으로 전면 전환한다','“SK 공채 막차 타자”… 빗줄기 뚫은 취업 열망','..\uploadImages\20211015143800.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',84,'admin',to_date('21/10/15','RR/MM/DD'),'[서울=뉴시스] 배민욱 기자 = 2만명 외국인 네트워크를 보유한 잡패스코리아가 15일 플랫폼 서비스를 정식으로 선보인다.

8일 잡패스코리아에 따르면 한국 기업 취업을 희망하는 외국인을 위한 직무 교육, 취업 정보 콘텐츠, 인사담당자 컨설팅 제공, 한국 문화 적응·정착을 돕는 라이프케어 프로그램이 주를 이룬다.

또 서울을 포함한 전국 70여개 기업과의 파트너십을 통해 글로벌 인재와 검증된 고용 기업을 매칭한다.

잡패스코리아는 15일 오후 3시 온라인(유튜브 라이브) 세미나를 열고 국내·외 외국인 취업 지원자를 만나 볼 예정이다. 이번 세미나는 무료로 진행된다. 사전 신청 참가자들에게는 강연 전 메일로 접속 링크를 발송한다.

사전 신청하지 못한 참가자들은 잡패스코리아 웹사이트와 인스타그램, 페이스북을 통해 접속 링크를 확인할 수 있다.','취업 지원 외국인, 기업과 매칭…''잡패스코리아'' 운영','..\uploadImages\20211015144034.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',85,'admin',to_date('21/10/15','RR/MM/DD'),'고양시 주최 제14회 청년일자리박람회가 열린 7일 오후 경기 고양 킨텍스에서 취업 희망자들이 컨설팅을 받고 있다. 앞쪽은 컨설팅을 받기 위해 기다리는 취업 희망자들','청년 일자리 박람회 ''취업 컨설팅''','..\uploadImages\20211015144134.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',86,'admin',to_date('21/10/15','RR/MM/DD'),'국가보훈처 인천보훈지청(지청장·박현숙) 제대군인지원센터는 제대군인주간을 맞아 중·장기복무 제대(예정)군인에게 안정적인 일자리 제공을 위한 ''온라인 취업워크숍''을 7일 개최했다.

이번 워크숍은 제대군인이 취업에 필요한 취업정보와 기술, 취업 후 필요한 ''기업문화의 이해'', ''코로나19 시대 고용시장의 변화'' 등에 대한 교육이 진행됐고, 교육 후에는 담당 상담사와의 취업상담이 진행됐다.

전보순 인천제대군인지원센터장은 "이번 교육이 코로나19 시대 제대군인의 성공적인 사회진출에 실질적인 도움이 될 것으로 기대한다"고 말했다.','인천보훈지청 제대군인지원센터 ''온라인 취업워크숍'' 개최','..\uploadImages\20211015144213.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',87,'admin',to_date('21/10/15','RR/MM/DD'),'[데일리한국 천소진 기자] LF 아누리는 서울시 강동구에 있는 강동구청 제2청사에서 ''일·활동 교육''을 위한 업무협약을 체결했다고 7일 밝혔다.

LF 아누리의 놀이돌봄은 매주 전문 교사가 가정을 방문해 8~72개월 사이의 영유아에게 발달 맞춤 그림책 놀이와 돌봄을 제공하는 서비스다. LF 아누리 소속 놀이돌봄 교사는 2~9시간 시간제로 자유롭게 근무하고 있어 경력단절 여성들도 개인의 상황을 고려해 사회활동을 이어나갈 수 있다.

 LF 아누리는 강동50플러스센터가 모집한 50세 이상 경력단절 여성을 대상으로 아누리 교육연구소의 특별 영유아 전문교육과정을 실시한다.

교육과정을 모두 이수한 참가자들에게 자사 놀이돌봄 교사로의 취업 기회를 제공하며, 향후 참가자들이 놀이돌봄 교사 활동을 통해 아동가정지도사 자격증을 취득할 수 있도록 지원한다.

LF 아누리는 △놀이돌봄의 이해 △놀이프로그램 활용 △영유아 상호작용 및 손 유희 △영유아 발달 및 돌봄 △영유아 감각놀이 △영유아 음률 및 율동 △영유아 기본생활 △감각 마사지 및 안전교육 등 다방면의 교육과 체계적인 평가가 이뤄질 예정이다. 자세한 사항은 LF 아누리 놀이돌봄으로 문의하면 된다.

 LF 아누리 교육연구소 관계자는 "전문적인 교사가 진행하는 방문 놀이돌봄 서비스를 더욱 확대해 코로나19로 자녀 보육에 어려움을 겪는 많은 워킹맘들에게도 믿을 수 있는 서비스를 선사할 것"이라고 말했다.','LF 아누리, 경력단절 여성 취업 기회 확대 나서','..\uploadImages\20211015144337.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',90,'admin',to_date('21/10/15','RR/MM/DD'),'올해 국내 공과대학 입학자 네 명 중 한 명은 여학생인 것으로 조사됐다.

종로학원하늘교육은 교육통계서비스에 나온 일반대 공대 학생 수를 분석한 결과를 8일 발표했다.

이에 따르면 올해 공대생 중 여학생 비율은 24.5%(2만2956명)로 전년 대비 0.1%p 증가한 수준인 것으로 확인됐다.

여자 공대생 비율은 1970년대 이후 꾸준히 늘어나는 추세다. 1970년 1.1%에 불과했으나 1980년에는 2%, 1990년에는 8.8%, 2000년에는 19% 등으로 점차 증가했다. 이후에도 10% 후반대를 유지하다가 2011년 처음으로 20%를 넘어선 20.6%를 기록했다.

올해 공학계열 가운데 여학생 비율이 높은 전공은 조경학이었다. 입학자 가운데 46.4%가 여학생이었다. 이어 섬유공학(45.6%), 화학공학(41.6%), 광학공학(39.6%), 도시공학(36.6%), 건축학(34.7%) 등의 순으로 여학생 비율이 높았다.

반면 여학생 비율이 가장 낮은 전공은 자동차공학(6.5%), 기계공학(8.3%) 등이었다.

대학 소재지별로 살펴보면, 공학계열에서 여학생 수가 가장 많은 지역은 서울(31.1%)이었다. 세종(28.8%)과 부산(25.2%), 경기(25%), 전남(18.7%) 등이 뒤를 이었다.

오종운 종로학원하늘교육 평가이사는 취업률이 공대 내 여학생 비율 증가에 영향을 미친 것으로 풀이했다. 계열별 취업률을 따져봤을 때 공학계열이 다른 계열에 비해 높은 수준의 취업률을 보이고 있기 때문이다. 오 이사는 “공대생 중 여학생 비율은 25% 수준까지 꾸준히 증가할 것으로 예상된다”고 말했다.','“취업 잘 되니까”…올해 공대생 4명 중 1명 여학생','..\uploadImages\20211015144634.jpg',27,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',94,'admin',to_date('21/10/15','RR/MM/DD'),'[초이스경제 곽용석 기자] 미국 남성 취업자 수는 늘어나는 반면 여성 취업자 수는 줄어든 것으로 나타났다.

미국 노동부가 최근 발표한 지난 9월 고용 통계에 의하면 20세 이상의 여성 취업자 수가 8-9월에 약 35만 명 감소했다고 로이터가 보도했다. 2020년 2월 대비 약 200만 명 감소해, 여성 복직이 여전히 어려운 환경임을 알 수 있다고 평가했다.

반면 20세 이상 남성 취업자 수는 8~9월에 32만 1000명 증가했다. 작년 2월 대비 남성 감소폭은 여성 절반에 그치는 수준이다.

미국 여성정책연구소(IWPR)의 니콜 메이슨 소장은 성명에서 "팬데믹(세계적 대유행) 후의 여성의 복직에는 큰 역풍이 불고 있다"고 미디어에 지적했다. "팬데믹이 수습해 나가는 가운데 여성이 어떻게 극복해야 하는지, 그것이 일이나 경력에 어떠한 의미를 가지는지를 판별하려면 시간이 걸릴 것이다"고 강조했다.

다만 올해는 많은 학교가 문을 열면서 여성 취업자 수 감소 폭은 지난해 8~9월의 100만 명을 넘는 감소에 비해 훨씬 작았다고 이 매체는 전했다.

한편, 미국 고용 속도는 8월에 36만 6000개의 일자리가 늘어난 이후 9월에 9만 4000개 일자리를 추가해, 소폭 둔화됐다.

여성을 불균형적으로 고용하고 있는 레저 및 접객 분야의 고용은 9월에 7만 4000개 증가했다. 그러나 음식업계 고용은 2개월 연속 거의 바뀌지 않았다.

9월 중순 이후 미국의 코로나19 발생 건수가 감소하고 있는데, 이는 향후 몇 달 동안 노동시장이 보다 원활하게 회복되는 데 도움이 될 것으로 예상된다고 이 매체는 전했다.','미국, 여성 취업자 8~9월 35만명 줄어...복직은 여전히 힘겨워','..\uploadImages\20211015145055.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',95,'admin',to_date('21/10/15','RR/MM/DD'),'서울에 사는 청년 10명 중 3명 가량은 ''은둔형 고립''을 하고 있는 것으로 나타났다.

서울연구원은 ''서울 청년에게 내 집이란?''과 ''서울 청년에게 관계와 감정, 그리고 고립이란?''을 주제로 서울인포그래픽스 시리즈 2편을 1일 발행했다.

서울연구원은 지난해 만 18∼34세 청년을 대상으로 실시한 가구방문조사 결과를 담은 한국청소년정책연구원, 청년사회경제실태조사 통계청 공개자료를 활용했다. 전국 응답자 3520명 중 서울은 676명이었다.

서울 청년 중 2.9%는 방에서 안 나가거나 인근 편의점에만 외출하는 ''은둔형 고립 청년''으로 나타났다. 특히 서울 ''은둔형 고립 청년'' 중 32%는 은둔 기간이 3년 이상에 달하며, 은둔 계기는 ''취업이 안돼서''(41.6%), ''인간관계가 잘되지 않아서''(17.7%) 등을 꼽았다.

서울 청년이 일상에서 경험하는 부정적인 감정 경험률 중에는 ''모든 일이 힘들었다''(37.3%)가 가장 높았다. 이어 잠을 설쳤다(33.9%), 뭘 해 나갈 엄두가 나지 않았다(24%) 순이었다. 또 일주일간 혼점, 혼술 경험률은 서울 청년이 각각 65.6%, 21.3%로 전국 53.7%, 15% 보다 다소 높았다.','취업 안돼서..서울 청년 10명 중 3명은 ''은둔형 고립''','..\uploadImages\20211015145208.jpg',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',98,'admin',to_date('21/10/15','RR/MM/DD'),'[매일안전신문] 한국의 취업 준비 청년들이 해외로 뻗어 나갈 수 있도록 정부와 각 대학 교수 등은 포럼을 개최하고 구축 방안 모색에 나섰다.

한국산업인력공단은 8일 한국프레스센터에서 청년 해외 진출 확대를 위한 ‘제2차 해외취업 정책연구 포럼’을 개최했다고 밝혔다.

이번 포럼은 코로나19 방역지침에 따라 최소한의 인원만 참석했으며 ‘고객지향적인 해외 취업 체계 구축’을 주제로 해외 취업 전문가와 청년이 참여해 주제 발표와 토론을 진행했다.

또한 해외 취업에 관심을 가진 관계기관과 청년 구직자 등이 참여할 수 있도록 월드잡플러스 유튜브 채널을 통해 영상을 공개했다.

포럼은 ‘청년 해외취업 수요조사 분석 결과 공유 및 시사점’과 ‘해외 취업 지원 사후관리의 발전방안’, ‘수요자 중심의 해외취업 지원사업 추진 방향’ 등 3개 주제에 대한 발표가 진행됐다. 구직가와 구입기업이 원하는 해외취업 지원 체계에 대하 토론도 이어졌다.

한국기술교육대학교 이진구 교수는 만 18~34세 청년 1400여 명을 대상으로 ‘해외취업 수요조사 결과’를 분석했다.

조사 결과, 응답자 중 50.1%(705명)가 해외취업 의향이 있는 것으로 나타났으며, ▲글로벌 업무 경험 ▲자유로운 이직 등을 통한 경력개발 ▲근무 환경이 좋아서 등으로 나타났다.','한국산업인력공단, ‘제2차 해외취업 정책연구 포럼’ 개최','..\uploadImages\20211015145734.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',99,'admin',to_date('21/10/15','RR/MM/DD'),'[세종=아시아경제 문채석 기자] 채용박람회에 참여한 구직자 열명 중 한명만 취업에 성공한 것으로 나타났다. 채용 실적이 있는 기업에 인센티브를 제공해 실효성 높은 매칭이 이뤄지도록 유도해야 한다는 지적이 나온다.

28일 국회 환경노동위원회 장철민 더불어민주당 의원실이 고용노동부로부터 받은 박람회 실적 자료에 따르면, 고용부의 6개 지방고용노동청이 개최한 박람회에 참여한 구직자 1만7804명 중 1817명(10.2%)만 취업한 것으로 나타났다. 10명 중 1명꼴이었다. 고졸자, 여성, 고령자 등 고용취약계층을 대상으로 구인·구직 미스매치를 해소하는 게 목적인 박람회 사업의 실효성이 낮다는 지적이다.


최근 3년간 열린 박람회의 취업 알선 실적을 보면 2018년 구직 7930명 중 취업자 822명(10%), 2019년 9418명 중 860명(9%), 올 1~8월 456명 중 135명(29%)로 실적이 저조했다. 지난해엔 코로나19 때문에 박람회가 열리지도 않았다. 3년간 참여한 중소기업 950곳의 구인 인원은 8558명이나 됐지만 실제 취업 인원은 1817명(21%)에 불과했다. 특히 서울 센터 박람회의 취업률은 2018년 6%, 2019년 5%로 6개 지방청 중 실적이 가장 저조했다.

장 의원은 "구직기술, 기업정보 제공도 좋지만 결국 구직자들이 박람회에서 가장 원하는 것은 취업"이라며 "박람회가 구직자들의 실제 취업으로 이어질 수 있도록 채용 실적이 있는 기업 중심으로 인센티브를 제공해 활발한 구인·구직 매칭이 이뤄질 수 있도록 개선 방안을 마련해야 할 것"이라고 강조했다.','이러니 ''일회성 박람회'' 비판…박람회 통해 ''열명 중 한명'' 취업성공','..\uploadImages\20211015145901.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',103,'admin',to_date('21/10/15','RR/MM/DD'),'취업난과 구인난을 동시에 해결할 것으로 기대를 모으고 있는 다이렉트 취업 매칭 플랫폼 ''잡다(JOBDA)''가 개천절을 맞아 이벤트를 시행한다.

역량기반 다이렉트 매칭 플랫폼 잡다(JOBDA)를 운영하는 자인원은 개천절을 맞아 약 70여 기업이 참여하는 다이렉트 매칭 이벤트 ‘취업잡다’를 시행한다고 3일 밝혔다.

''다이렉트 매칭''은 역검(AI역량검사) 결과와 지원자의 지원 정보를 기반으로 지원자와 기업을 매칭(연결)해 주는 새로운 채용 방식이다. 지원자는 역검(AI역량검사) 응시 후 자신이 원하는 기업 과 직무를 3지망까지 선택하면 가장 잘 맞는 기업과 직무를 추천 받을 수 있고, 이후 기업이 진행하는 추가 전형을 거쳐 입사가 확정된다.

기업은 복잡한 채용 전형을 운영하지 않고도 역검 결과를 기반으로 회사에 잘 맞는 인재 풀을 추천 받을 수 있고 있고, 이를 기반으로 추가 면접과 인턴십 전형을 진행한 후 최종 채용 여부를 결정하면 된다.

앞서 지난 9월 1일부터 10일까지 시험적(파일럿)으로 진행한 ‘다이렉트 매칭’에서 열흘이라는 짧은 기간에도 KT엠엔에스, DHL코리아, 제일약품 등 38개 기업 기업이 참여해 1525명의 지원자를 매칭했고, 최종적으로 174명의 적합 인재를 기업에 추천하며 성공적으로 마무리됐다.','취업난과 구인난 동시 해결 ''취업잡다'' 이벤트 시선','..\uploadImages\20211015151838.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',104,'kd1',null,null,null,null,null,'공대 아름이',to_date('21/10/15','RR/MM/DD'),1,1,90,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',107,'admin',to_date('21/10/16','RR/MM/DD'),'진로로드맵 경진대회 참가신청은 10월 12일부터 11월 1일까지 이며, 학생들이 자신의 진로를 스스로 고민하여 적극적으로 로드맵을 설계하고 나아가 체계적인 취업전략을 수립할 수 있도록 운영되는 이번 대회는 총 30명의 학생들을 선발해 1, 2차에 걸쳐 컨설팅을 실시한 후 자체 작성한 진로로드맵을 평가하여 시상하는 방식으로 진행한다.

진로로드맵 작성을 위한 컨설팅은 코로나19로 인한 사회적 거리두기에 따라 실시간 온라인 강의 플랫폼을 기반으로 운영될 예정이며, 학생들의 자기 이해와 직무 마인드맵에 기반한 진로로드맵 설계 및 개인 발표와 피드백 등 학생들의 능동적인 참여를 바탕으로 지속적으로 소통하여 온라인으로 프로그램이 진행되더라도 집중도가 저하되지 않도록 프로그램 내실화에 중점을 둘 예정이다.

한국교통대학교 구강본 대학일자리개발원장은 “학생들이 자신의 적성과 진로를 뚜렷하게 설계하는 것이 많은 시행착오를 겪지 않고 원하는 목표에 성공적으로 도달할 수 있는 지름길이다"며 "탄탄한 진로 설계를 바탕으로 학생들이 취업 성공이라는 목표에 신속하게 도달할 수 있도록 지속적으로 지원할 것”이라고 말했다.','한국교통대 대학일자리개발원, ‘2021학년도 진로로드맵 경진대회’ 개최','..\uploadImages\20211016012148.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',109,'admin',to_date('21/10/16','RR/MM/DD'),'지난 8월 취업준비자가 역대 최대치를 기록했다고 합니다.

취업준비자는 비경제활동인구 중 취업시험 준비를 하고 있는 사람을 뜻하는데요. 통계청 국가통계포털에 따르면 8월 취업준비자가 87만 4000명으로 2003년 통계 작성 이래 가장 많은 수가 집계됐습니다.

코로나 시국으로 인해 기업들이 채용문을 닫아버린 경우가 많아 취업이 바늘구멍 뚫기보다 어려워진 현실인데요. 이번 회에서는 이말삼초 기자들이 언론사 취업을 준비하고, 성공한 과정을 이야기해보는 시간을 가졌습니다.','[이말삼초] ''오징어게임''보다 무서운 취준...언론고시 과정과 그 후(현직 기자 피셜)','..\uploadImages\20211016012341.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',112,'admin',to_date('21/10/16','RR/MM/DD'),'광주지역 9월 취업자 수가 감소한 것으로 나타났다. 반면 전남은 소폭 늘었지만 고용의 질은 악화한 것으로 나타났다.

15일 호남지방통계청이 발표한 ‘9월 광주·전남지역 고용동향’에 따르면 광주지역 취업자 수는 74만9천명으로 전년 동월 대비 2천명(-0.3%) 감소했다.

산업별로는 도소매·숙박·음식점업 1만명(6.3%), 사업·개인·공공서비스업 3천명(0.9%), 전기운수·통신·금융업은 1천명(1.2%) 증가했지만 광공업 1만1천명(-10.2%), 농림어업 3천명(-21.9%), 건설업은 2천명 줄었다.

비임금근로자는 17만3천명으로 전년 동월대비 8천명(-4.5%) 감소했다. 이중 자영업자는 7천명(-4.7%), 무급가족 종사자는 1천명(-3.2%) 줄었다.

실업자는 1만8천명으로 1만명(-35.3%) 감소했고, 실업률은 2.4%로 1.2%포인트 하락했다.','광주 9월 취업자 2천명 감소','..\uploadImages\20211016012558.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',115,'admin',to_date('21/10/16','RR/MM/DD'),'【투데이신문 최병춘 기자】 국내 대기업 절반 이상이 장애인 의무고용률을 지키지 않고 있는 것으로 나타났다. 15일 국회 환경노동위원회 이수진 의원(더불어민주당)이 고용노동부로부터 지난 8월 제출받은 ‘대기업 및 공공기관 장애인 고용현황’ 자료에 따르면 대한민국 100대 기업 중 66개 기업이 민간부문 장애인 의무고용률인 3.1%를 달성하지 못 했다. 이는 올해 장애인 고용계획 및 실시 상황보고 신고 대기업집단 사업체 중 상시근로자 기준 상위 100개소 고용률을 기준으로 분석한 결과다. 공공부문 또한 장애인 고용의무를 제대로 지키지 않은 건 마찬가지였다. 작년 기준 총 721개 기관에서 장애인 근로자 2만15명이 근무하고 있지만 그중 292개 기관(40.5%)이 의무고용률(3.4%)을 준수하지 못한 것으로 나타났다. 삼성, 현대, SK, 롯데, KB 등 국내 주요 대기업이 참여한 ‘기업체장애인고용실태조사(2020)’에 따르면, 기업들이 장애인 고용의사가 없었던 주된 이유로 ‘장애인에게 적합한 직무가 부족하거나 찾지 못해서’를 꼽았다. 특히 300인 이상 대기업·공공기관에서 응답비율이 70%에 달했다. 기업 상황 때문에 부담금 납부 대상인 100인 이상 사업체 역시 65%가 이 같이 응답했다. 이 의원은 이날 진행된 2021년 고용노동부 산하기관 국정감사에서, 장애인고용공단을 상대로 이 같은 내용의 민간기업과 공공부문의 장애인 의무고용률 미달성 문제를 지적했다. 이 의원은 장애인고용공단을 상대로 “장애인고용 및 훈련 전문기관으로서 ‘장애인고용컨설팅’ 사업을 전격 확대해 장애인 일자리의 내실화와 고용 지속 문화를 조성해 달라”고 주문했다.','지켜지지 않는 장애인 의무고용…대기업 100곳 중 66곳 미준수','..\uploadImages\20211016012757.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',116,'admin',to_date('21/10/16','RR/MM/DD'),'전주지법 제2형사부(부장판사 이영호)는 14일 사기 등 혐의로 기소된 A씨(47)에 대한 항소심에서 피고인의 항소를 기각, 징역 13년6월을 선고한 원심을 유지했다. 또 사기 범행 일부에 가담한 B씨(32)의 징역 1년에 집행유예 2년, A씨의 재산을 은닉할 수 있게 자신의 명의를 빌려준 여성 C씨(61)의 벌금 3000만원도 유지했다.

검찰과 법원 등에 따르면 친척 관계인 A씨와 B씨는 지난 2016년 3월부터 지난 2019년 2월까지 전북 익산 원광대학교 인근에서 원룸 임대사업을 하면서 임차인 122명에게 받은 전세 보증금 46억9370만원을 챙긴 뒤 사용한 혐의로 기소됐다.

C씨는 A씨가 재산을 은닉할 수 있게 자신의 명의를 빌려준 혐의를 받고 있다.

A씨는 임차인의 전세 보증금, 건물 관리비 등으로 100여 차례나 해외여행을 가고, 도박, 유흥비, 고급 외제차량을 사는 데 사용했다.

전세금을 돌려받지 못한 피해자들은 대부분 대학생과 취업준비생들로 알려졌다.

1심 재판부는 “피고인은 사회 경험이 부족한 대학생들을 대상으로 조직적으로 범행을 저질러 죄질이 매우 불량하다”며 A 씨에게 징역 13년6개월을 선고했다.

2심 재판부는 “원심에서 정한 형이 적절한 것으로 보여 원심의 형을 그대로 유지한다”고 전했다.','''도박·유흥'' 대학생 전세금 47억 탕진한 임대인 ''중형''','..\uploadImages\20211016012912.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',118,'admin',to_date('21/10/16','RR/MM/DD'),'반도체와 2차전지 등 국가핵심전략산업에 소속된 전문 인력의 해외 취업이 사실상 막힌다. 정부는 대신 국가핵심전략산업에 소속된 기업에 인허가, 기반 시설 및 자금·세제 등의 패키지 지원을 하기로 했다.

더불어민주당 반도체기술특별위원회는 15일 이 같은 내용을 골자로 한 국가핵심전략산업 경쟁력 강화 및 보호에 관한 특별조치법안(국가핵심전략산업특별법)을 당론으로 발의한다고 밝혔다.

특위는 핵심 기술·인력의 유출을 막기 위해 전략기술의 수출 및 인수합병(M n A)에 대해서는 사전 승인을 의무화하기로 했다. 특히 인력 보호를 위해 기업이 전문 인력 지정을 신청하면 해외 이직을 제한하고 비밀 유출 방지 등이 포함된 계약 체결이 가능하도록 했다. 전략기술이 유출되면 기존의 산업기술보호법보다 강화된 벌칙도 적용한다. 부처 간 이견이 컸던 전략기술 지정은 기술조정위원회(위원장 과학기술본부장)에서 검토·조정한 뒤 국가핵심전략산업위원회 심의·의결을 거쳐 산업통상자원부 장관이 지정하는 방향으로 합의가 이뤄졌다.','반도체-2차전지 전문인력, 해외취업 못한다','..\uploadImages\20211016013050.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',119,'admin',to_date('21/10/16','RR/MM/DD'),'세종=아시아경제 문채석 기자] 법제처는 청년 지원을 강화하는 내용의 14개 법률 개정안을 15일부터 다음 달 24일까지 40일간 입법 예고한다고 밝혔다. 청년 세대의 권리보장을 강화하고 경제활동과 관련해 청년들에게 충분한 기회를 제공하기 위한 법적 기반을 마련한다는 취지다. 소관 부처는 모두 11곳이다.

이날 법제처에 따르면 정비 대상 법률은 크게 핵심 산업인력인 청년의 경제활동 지원을 강화하고 직업교육 등 교육훈련 기회를 늘리는 한편 청년복지를 위한 지원 기반을 마련하는 내용 등을 담고 있다. 청년기본법에 따르면 법률상 청년이란 19세 이상 34세 이하인 이를 의미한다.

우선 중소기업기본법 개정안은 정부가 중소기업 활동을 지원하기 위해 실시하는 시책의 적용대상에 청년을 추가함으로써 청년의 기업활동을 촉진하도록 했다. 뿌리산업 진흥과 첨단화에 관한 법률에서는 생산기반산업의 인력 실태조사 범위에 청년의 고용현황을 반영하도록 했다.

또 국가가 만들어 시행하는 직업교육훈련 기본계획에 청년에 대한 직업교육훈련을 포함하고, 노동인권 및 노동자 권리보호 관련 교육 대상에 청년을 추가하는 내용을 각각 직업교육훈련 촉진법과 고용노동교육원법에 담았다.

수산과학기술 진흥을 위한 시험연구 등 법률에서는 국가 및 지방자치단체가 실시하는 교육훈련 사업의 대상에 어촌청년을 추가하고, 지방자치법에서는 주민 보호와 복지 증진을 위한 지자체 사무 대상에 청년을 포함시켰다. 총포와 도검, 화약류 등의 제조업 허가와 소지 허가 등의 결격사유 연령을 청년기본법상 청년 연령에 맞춰 20세 미만에서 19세 미만으로 조정했다.','청년지원 강화법안 탄력…법제처, 14개 법개정안 예고','..\uploadImages\20211016013137.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',123,'admin',to_date('21/10/16','RR/MM/DD'),'태안군이 지역산업맞춤형 일자리창출 사업의 일환으로 추진 중인 드론 자격증 교육과정이 큰 인기를 끌고 있다.

15일 군에 따르면 군청 중회의실에서 가세로 군수와 교육생, 강사 등 20여 명이 참석한 가운데 ‘제4·5기 드론 자격증 취득과정 교육생 오리엔테이션’을 개최했다고 밝혔다.


드론 자격증 취득과정은 지역 여성 및 청년층의 안정적인 취업과 창업을 위한 것으로, 군은 지난 5월 고용노동부가 주관한 ‘지역산업맞춤형 일자리창출 지원 사업’ 공모에 선정돼 총 사업비 1억 400만 원을 확보하고 6월부터 본격적인 교육과정 운영에 나선 바 있다.

이번 4·5기 교육과정에는 총 16명이 선발됐으며 4기는 18일부터 11월 5일까지, 5기는 11월 8일부터 11월 26일까지 교육이 실시될 예정이다.

군 관계자는 “지난 6월부터 현재까지 24명의 교육생이 과정을 수료하고 관련 업종 취업을 준비 중”이라며 “앞으로도 군민들의 요구를 충족시킬 수 있는 다양한 교육의 장을 마련할 수 있도록 최선을 다하겠다”고 말했다. 
한편 군은 올해 말까지 지역 청년 및 여성 총 70명을 대상으로 ‘드론 자격증 취득과정’과 ‘웹디자이너 양성과정’을 운영하며, 특히 취업에 어려움을 겪는 여성 및 청년들을 더욱 배려하는 등 실효성 있는 지원에 총력을 기울인다는 방침이다.','태안군, ‘드론 자격증’ 교육과정 인기','..\uploadImages\20211016013354.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',124,'admin',to_date('21/10/16','RR/MM/DD'),'코로나19 4차 확산이 이어지는 가운데서도 9월 취업자 수가 1년 전보다 67만 명 넘게 늘어났다. 이는 7년6개월 전인 2014년 3월에 72만6000명 늘어난 이후 가장 큰 증가 폭이다. 다만 30대 취업자 수는 19개월 연속 감소했다. 

통계청이 10월13일 발표한 ‘9월 고용동향’에 따르면 지난달 취업자 수는 2768만3000명으로 지난해 같은 달보다 67만1000명 증가했다. 15~64세 고용률은 67.2%로 전년 동월 대비 1.5%포인트 올랐다. 

실업률은 2.7%로 9월 기준으로 봤을 때 2013년 9월 이후 가장 낮았다. 실업자는 24만4000명 줄어들었는데, 이는 2019년 8월 27만5000명이 감소한 이후 가장 많이 줄어든 수치다.','9월 취업자, 전년보다 67.1만 명 증가…7년6개월 만에 최다','..\uploadImages\20211016013433.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',125,'admin',to_date('21/10/16','RR/MM/DD'),'현재 미국이 겪고 있는 인력난이 미 경제의 만성적인 문제가 될 수 있다는 분석이 나왔다. 인력난이 일시적인 게 아니라 미국 경제의 ‘뉴노멀’이 될 수 있는 만큼 기업과 정부도 이에 대한 대응이 필요하다는 것이다.

14일(현지 시간) 월스트리트저널(WSJ)에 따르면 팬데믹 직전인 지난해 2월 경제활동 참여율이 63.3%에 달했지만 지난달에는 61.6%에 그쳤다. 또 지난 달에는 일터를 떠난 퇴직자가 430만 명을 기록해 관련 통계가 작성된 지난 2000년 12월 이후 가장 큰 규모의 노동력 이탈을 보였다.

WSJ는 52명의 경제학자를 대상으로 설문 조사를 벌였다. 그 결과 42%에 해당하는 22명은 “경제활동 참여율이 코로나19 팬데믹 이전 수준으로는 영원히 돌아오지 않을 것”이라고 대답했다. 일반적으로 경제가 회복돼 일자리가 생기면 근로자들은 취업을 희망한다.그러나 이번 인력난은 여러 가지 이유가 복합돼 개선되지 않고 있다고 WSJ는 분석했다.

WSJ는 우선 지난달 데이케어센터 등 돌봄 시설 취업자가 지난해 같은 기간 대비 10만 8,700명(10.4%) 감소한 반면 임금은 10% 상승한 점에 주목했다. 돌봄 서비스를 이용할 수 있는 곳이 줄고 돌봄 비용이 증가하면서 일터에 나가 돈을 버느니 집에서 아이를 돌보려는 사람들이 늘어났다는 것이다. 실제로 여성과 대학 학위가 없는 사람들, 저임금 서비스 노동자층에서 경제활동 참여율이 크게 낮아졌다.','美 430만명의 근로자는 어디로··· 경제학자들 "영원히 안 돌아올 수도"','..\uploadImages\20211016013513.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',130,'admin',to_date('21/10/16','RR/MM/DD'),'병무청이 시행 중인 취업맞춤특기병 제도가 제 역할을 하지 못하고 있다는 지적이 나왔다. 모집분야 편중이 심하고 취업률도 높지 않다는 이유다.

15일 국회 국방위원회 소속 더불어민주당 홍영표 의원이 병무청으로부터 제출받은 자료에 따르면 2014년 신설된 취업맞춤특기병의 전역 후 취업률이 57.7%에 머무르는 것으로 드러났다.

취업맞춤특기병 제도는 현역병 모집분야의 하나로 병역의무자가 입영 전 기술훈련을 받고, 연계된 분야의 기술병으로 입영해 복무함으로써 전력 후 취업연계를 도모하기 위해 신설됐다. 고졸 이하 학력 소지자, 기초생활수급자 등 경제적 약자를 대상으로 모집하며 다른 특기병과 달리 경쟁선발이 아닌 연중 모집방식으로 충원한다.

최근 3년간 취업맞춤특기병 지원자는 2019년 2716명, 2020년 3286명, 2021년 7월 기준 2507명으로 꾸준히 늘고 있지만, 현역병 모집 충원 계획 인원 대비 지원율은 1~2% 수준으로 상당히 저조하다. 현역병 모집대상자 중 고졸 이하자가 33.9%, 경제적 약자가 7.3%임을 감안하더라도 지원자 수 자체가 매우 적어 제도의 취지를 살리기에는 턱없이 부족하다는 게 홍 의원의 지적이다.','‘취업맞춤특기병 제도’ 실효성 지적… 취업률 낮고 특정분야 편중 심각','..\uploadImages\20211016013910.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',131,'admin',to_date('21/10/16','RR/MM/DD'),'현직자 직무부트캠프는 청년 구직자가 가장 필요한 직무 경험을 쌓을 수 있도록 지원하는 사업이다. 참여자는 5주 동안 직무별 3~7년 차 현직자와 함께 온라인 현업과제를 수행하고, 현직자 멘토는 참여자에게 일대일로 조언해주는 체험형 직무 교육 프로그램이다.

프로그램은 구직자의 수요가 높은 공기업 사무 행정, 마케팅, 소프트웨어(SW)개발, 금융, 빅데이터, 영업 관리, 반도체 공정기술 7개 과정으로 구성됐다. 또한 금천구는 자기소개서 작성, 면접 등 실전 취업특강을 추가 제공해 참여자가 교육을 통해 익힌 직무 경험을 실제 구직활동에서 활용할 수 있도록 할 계획이다.

신청 자격은 만 19세부터 34세까지의 청년이며, 모집 인원은 7개 직무별 8명씩 총 56명이다. 참여를 희망하는 청년은 오는 23일까지 금천구 현직자 직무부트캠프 홈페이지(comento.kr/edu/univ/geumcheon)를 방문해 신청서를 작성하면 된다.

유성훈 금천구청장은 “최근 기업들이 채용 전형에서 직무역량을 가장 중요한 평가 요소로 고려하고 있다”라며 “현직자 직무부트캠프를 통해 청년 구직자들이 취업에 대한 자신감을 얻고 취업에 실제로 필요한 역량을 쌓아 자신의 꿈을 펼칠 수 있길 바란다”라고 말했다.','“현직자와 취업 상담해요”…금천구 직무부트캠프 눈길','..\uploadImages\20211016013940.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',134,'admin',to_date('21/10/16','RR/MM/DD'),'수원시 팔달여성새로일하기센터가 오는 18일부터 29일까지 경력단절 예방 사진전 ‘역경을 뒤집으면 경력, 고민보다 고(GO)!’를 개최한다.

경력단절 여성들의 재취업 의지를 고취하기 위해 마련한 이번 사진전은 팔달여성새로일하기센터 홈페이지를 통해 온라인으로 열린다.

전시회에는 직업교육훈련, 구인·구직 상담 프로그램 등 팔달새일센터의 다양한 취업 지원 프로그램에 참여한 경력단절 여성들의 활동 모습을 담은 사진 130점이 전시된다.

온라인 사진전은 4개 코너로 구성됐다. △나의 발자취(구인·구직 상담, 찾아가는 새일센터 등) △내일을 향한 첫걸음(직업교육훈련, 중·장년 여성취업지원 특강 등) △나란히 걷는 꿈(새일여성인턴 프로그램 등) △세상의 문을 열다(취·창업 동아리 등)를 주제로 한 경력단절 여성들의 활동 모습을 볼 수 있다.

수원시 관계자는 “이번 사진전이 경력단절을 경험한 여성들에게 희망과 용기를 전달할 수 있길 바란다”며 “경력단절 여성들의 재취업 의지를 높이고, 맞춤형 취업 지원 서비스를 제공하기 위해 최선을 다하겠다”고 말했다.

한편 지난 2013년 2월 문을 연 팔달여성새로일하기센터는 임신·출산·육아 등으로 경력이 단절된 여성들을 위한 취업상담, 직업교육훈련, 인턴 및 취업 후 사후관리 등 종합적인 취업 지원 프로그램을 운영하고 있다.','‘역경을 뒤집으면 경력, 고민보다 고(GO)!’','..\uploadImages\20211016014127.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',136,'admin',to_date('21/10/16','RR/MM/DD'),'올해 일자리가 가장 많이 늘어난 분야는 IT정보통신이다. 상세 직무 가운데서는 연구개발과 동영상제작 및 편집 일자리가 지난해 같은 기간에 비해 대폭 증가한 것으로 나타났다.

15일 취업 플랫폼 잡코리아는 올해 1~9월 자사사이트에 등록된 채용공고를 분석한 결과 이 같이 집계됐다고 밝혔다.

올해 1~9월까지 잡코리아에 등록된 채용공고는 지난해 같은 기간 대비 17.0% 증가했다.

산업분야별로 보면 ''IT정보통신'' 업종의 채용공고가 전년 동기 대비 37.3% 늘어 가장 큰 증가폭을 보였다. 이어 ''미디어·광고'' 업종의 채용공고도 전년 동기 대비 34.2% 증가했고, 제조·생산·화학(+32.7%), 문화·예술(+26.4%), 판매·유통(+20.7%) 업종 순으로 채용공고 증가폭이 큰 것으로 집계됐다.

직무별로 보면 ''연구개발'' 직군의 일자리가 크게 증가했다.

''연구개발.RnD'' 직무의 채용공고가 전년 동기 대비 147.5% 늘어 가장 큰 폭으로 증가했다. ''동영상 제작 및 편집'' 직무의 채용공고가 전년 동기 대비 53.9% 늘었고, 이어 웹프로그래머(+49.0%), 영상·사진촬영(+47.9%), DBA·데이터베이스(+46.1%), 광고·시각디자인(45.6%), QA·테스터·검증(+44.5%), 빅데이터.AI(+40.1%) 직무 순으로 채용공고 증가폭이 큰 것으로 나타났다.

반면 지난해에 비해 일자리가 가장 많이 감소한 직무는 ''대학교수·강사·행정직''이다.

전년 동기 대비 채용공고가 54.3%나 줄었다. 이어 ''부동산·중개·경매(-37.3%), 학습지·과외·방문교사(-32.5%), 공연·전시·무대·스텝(-24.7%) 직무의 채용공고가 지난해 같은 기간 대비 큰 폭으로 감소한 것으로 조사됐다.','올해 일자리 가장 많이 늘어난 분야는 IT정보통신','..\uploadImages\20211016014327.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',137,'admin',to_date('21/10/16','RR/MM/DD'),'조선대학교(총장 민영돈)는 취업학생처 일자리지원팀이 대학혁신지원사업의 하나로 마련한 ‘2021 직무맞춤형 Career Set Up(커리어 셋업)’을 마쳤다고 15일 밝혔다.

조선대에 따르면 이번 프로그램은 희망하는 직무와 기업에 맞춤화된 프로그램으로 이뤄졌으며, 조선대 3~4학년 학생 39명이 참여했다.

프로그램은 단계별 직무워크숍과 팀별 직무컨설팅, 개별 직무컨설팅, 현직자와 만남 등으로 구성됐으며, 각 분야별 직무전문가 멘토가 밀착 컨설팅해 최종 입사까지 체험할 수 있는 기회를 제공했다.

조선대는 프로그램 실시 후 중앙도서관 대학일자리센터에서 우수 참가자들에게 상장과 시상금을 수여했다. 평가단은 사전심사와 성과경연대회 등을 토대로 최우수상 1명과 우수상 3명, 장려상 5명을 선정했다.

프로그램을 통해 기업면접에 최종 합격한 김도엽 씨(중국어문화학과 4)는 “컨설팅을 통해 자기소개서 작성과 지도를 받으면서 채용공고에 지원해보니 자신감이 생겼다”며 “입사지원 체험 활동을 통해 지원하게 된 신세계그룹 조선호텔앤리조트 식음팀에 입사하게 되는 결과를 이끌어낼 수 있어 뜻 깊은 시간이었다”고 말했다.

윤오남 조선대 취업학생처장은 “학생들에게 취업에 대한 자신감을 고취시키고 능동적 취업준비를 할 수 있도록 질 높은 프로그램을 구성해 도움이 되도록 힘쓰겠다”고 밝혔다.','조선대, ''직무맞춤형 Career Set Up'' 마쳐','..\uploadImages\20211016014418.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',138,'admin',to_date('21/10/16','RR/MM/DD'),'고용노동부가 워크넷 같은 공적 일자리망을 통해 ‘가짜 5인 미만 사업장’ 등 악덕 업체가 구직자에게 연결되고 있다는 지적에 대해 사후관리를 더욱 강화하기로 했다. 워크넷이 임금 체불이나 근로계약을 위반하는 악덕 업체를 제대로 걸러내지 못한다는 지적(국민일보 10월 15일자 12면 참조)에 따른 것이다.

고용부는 15일 설명자료를 내고 “워크넷 구인정보의 신뢰성을 높일 수 있도록 모니터링 및 사후관리에 최선을 다하겠다”고 밝혔다. 워크넷을 이용하는 구직자들에게 더욱 신뢰성 높은 구인정보를 제공할 수 있도록 구인 인증 과정에서부터 상시근로자수, 직무수행내용 등을 보다 면밀히 확인하겠다는 것이다.

고용부는 현재도 워크넷에서 구인을 원하는 모든 업체의 신청 내용을 확인하고 있다고 설명했다. 임금체불, 최저임금 준수 여부부터 성·연령 차별 등의 소지가 있는지까지 상세 근로 조건을 검증해 인증한다는 것이다. 특히 인증이 완료된 구인 업체의 50%를 고용부 산하기관인 한국고용정보원에서 상시로 추가 모니터링하고 있다고도 했다. 하지만 모든 취업자와 업체 상황을 일일이 확인하는 게 사실상 불가능하기 때문에 근로기준법 망을 피해 가는 ‘가짜 5인 미만 사업장’ 등이 걸러지지 않는다는 지적이 나왔다.

고용부 관계자는 “거짓 구인광고로 신고된 업체가 행정처분이나 기소가 될 경우 포상금을 지급하는 제도를 운영하고 있다”며 “이에 대한 홍보와 안내를 강화하는 등 사후관리에 최선을 다하겠다”고 말했다.','‘악덕업체 소개’ 지적에… 고용부 “워크넷 모니터링 강화”','..\uploadImages\20211016014514.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',139,'admin',to_date('21/10/16','RR/MM/DD'),'주택도시보증공사(이하 HUG)가 코로나19로 얼어붙은 취업 시장에서 학력 나이 지역을 철폐한 블라인드 채용 행보로 주목받고 있다.

올해 신입사원 86명 중 9명을 고등학교 졸업자로 채용했다.
이번 신입직원은 고등학교 졸업예정자 외에도 용접기능공에서 금융분야에 꿈을 품고 입사했거나 사회생활을 하다가 늦깍이로 재취업한 신입 등이 포함되어 있다.

HUG의 블라인드 채용 프로세스는 ''19년 기획재정부 장관상을 수상한 바 있으며, 직무 평가 중심으로 개선하고 채용과정 전반의 공정성 및 투명성에 강화하여 차별적 요인을 배제하고 있다. 고졸 채용 과정은 서류전형과 필기시험, 1차 역량면접과 2차 심층면접을 실시해 최종합격자를 선정한다. ''11년도 이후 61명의 고등학교 졸업자를 채용했다.

고졸 채용에 대한 가장 큰 우려는 입사 이후의 불합리한 처우다. 이러한 차별을 해소하기 위해 고졸 직원의 대학 진학 기회를 확대하고 능력있는 직원의 승진을 실시하는 등 다양한 프로그램을 활용하고 있다.

특히 올해 권형택 사장의 취임 이후 ‘균등한 기회 제공과 사회통합을 위한 학벌·학력 차별없는 공정한 인재 채용’이라는 목표 하에 양질의 일자리 창출에 앞장서고 있다.

한편, HUG는 코로나19 장기화에 따른 고통분담 차원에서 전세보증금반환보증, 임대보증금보증 등의 보증료 할인(70~80%)을 올해 연말까지 연장했다. 또한, 주택공급 활성화를 지원하기 위해 분양보증 등 주요보증의 보증료율을 약 10% 인하하는 등 공공성 강화에 집중하고 있다.','주택도시보증공사 학력·나이·지역 차별 없는 공정한 인재 채용','..\uploadImages\20211016014628.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',142,'admin',to_date('21/10/16','RR/MM/DD'),'최근 4년 동안 한국은행 출신 금융권 재취업자 수가 2013년~2016년 같은 기간 재취업자 수 보다 55.3% 늘어난 것으로 나타났다. 15일 기본소득당 용혜인 의원은 시중은행·보험사·저축은행·증권사·카드사 164곳을 조사한 결과 한국은행 경력자들이 지난 2017년 문재인 정부가 들어서면서부터 금융권에 대거 진출하고 있다고 밝혔다.  실제 한국은행 출신 금융권 재취업자는 2013년~2016년 박근혜 정부 시기에 38명에 그쳤지만 2017년 문재인 정부가 들어서고 지난해까지 59명으로 크게 증가했다. 한국은행 출신 취업자는 특히 1금융권과 저축은행 등 은행권을 중심으로 증가했다. 1금융권의 경우 2013년~2016년 10명에서, 2017년~2020년에는 17명으로 증가했다. 같은 기간 저축은행도 12명에서 19명까지 늘었다. 은행권에서는 총 14명이 증가해 전체 증가인원 중 66.7%의 높은 비율을 차지했다. 가장 많은 한국은행 출신 재취업자를 받은 하나금융그룹의 경우 지난 8년간 하나은행, 하나금융투자, 하나카드 등에서 총 17명을 영입했다. 이중 하나은행에서만 한국은행 출신 12명의 재취업자를 채용했다. 이는 △삼성증권(6명) △푸본현대생명(5명) △SBI저축은행(4명) 등의 두배 이상 규모다.  이밖에 같은 기간 한국은행 출신 금융권 재취업자는 △보험사 6명→9명 △증권사 8명→11명 △카드사 2명→3명으로 파악됐다. 용혜인 의원은 “전문성을 살리는 것도 필요하지만, 이해관계와 직무관련성에 대한 공개와 감시 없이 국민들이 이런 경향을 받아들이기는 어렵다”라면서, “공직자윤리법상 취업승인제도의 실효성을 재점검하고 이해관계 이력 추적 및 공개와 같은 시스템 상 해결책을 찾아야 한다”라고 주장했다.','한국은행 출신 ‘금융권 재취업’, 최근 4년간 55% 증가 ','..\uploadImages\20211016014848.jpg',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',143,'admin',to_date('21/10/16','RR/MM/DD'),'인천항만공사(IPA, 사장 최준욱)는 대통령 직속 일자리위원회 주관 ‘제4회 전국 일자리위원회 워크숍’에서 공공기관 부문 일자리 창출 우수사례로 선정됐다고 15일 밝혔다.

올해로 4번째를 맞이하는 전국 일자리위원회 워크숍은 14일 서울 양재 aT(agro-Trade)센터에서 개최, 총 80개 일자리 창출 사례 중 우수한 성과를 낸 △지방자치단체 4곳 △공공기관 4곳 △민간기업 3곳의 사례가 발표됐다.

 IPA는 이날 행사에서 △직업계고 학생 취업지원 △항만특화형 청년인력 양성 및 취업·창업 지원 등 코로나19 상황에서 어려움을 겪고 있는 일자리 취약계층 대상의 맞춤형 일자리 사업 사례를 발표했다.

이날 발표에 나선 인천항만공사 안길섭 사회가치실장은 “금번 워크숍은 유관기관과의 협업을 통한 우리 공사의 일자리 창출 사례를 공유할 수 있는 좋은 기회였다”며, “앞으로도 취약계층 등을 대상으로 한 항만·물류 분야의 일자리 창출 사업을 적극 추진하겠다”고 말했다.','인천항만공사, 일자리 창출 우수기관 선정','..\uploadImages\20211016015057.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',144,'admin',to_date('21/10/16','RR/MM/DD'),'통계청 조사에 따르면 우리 청년 세 명 가운데 한 명은 졸업 후에 직장을 구하지 못하고 있습니다. 3년 넘게 백수로 지내는 청년이 다섯 명에 한 명꼴입니다. 슬픈 현실이 아닐 수 없습니다.

지난해 말, 청년 취업 문제를 취재했던 기자는 흥미로운 회사 한 곳을 취재했습니다. ''니트 컴퍼니''란 곳이었습니다. 출근 후에는 온종일 자기가 하고 싶은 일을 하는 회사. 영화를 봐도 되고, 책을 봐도 되는 회사.. 그리 해도 누구 하나 잔소리 하지 않는 회사.

이 요상한 회사를 취재했지만 당시 취재 구성상, <뉴스토리> 프로그램에서 다루지 못해 아쉬웠던 차에, 지난 달 저희 팀 김민표 선임 기자가 최근 <청년 문제>를 다루면서 그들을 다시 만났습니다. 이번 주 <후스토리>에서 열 달이 지난 지금 그들의 변화를 전해드립니다.','백수들의 회사 놀이? 열 달 뒤 다시 가 보니…','..\uploadImages\20211016015326.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',147,'admin',to_date('21/10/16','RR/MM/DD'),'취업 포털 커리어가 국가철도공단, 국토안전관리원, 인천메트로서비스, 금융결제원 등의 채용 소식을 15일 발표했다.

국가철도공단이 신입 및 경력 직원을 모집한다. 모집 분야 및 인원은 △일반(41명) △장애(3명) △보훈(7명) △고졸(6명) △경력직(16명) △기능직(3명) △실무직-국가중요시설 방호(27명) △실무직-미화, 시설관리(2명) △통번역(1명)이다. 분야별 응시 자격, 근무 기간 등이 상이하므로 꼼꼼한 공고 확인은 필수다. 서류심사-필기시험-면접시험을 거쳐 12월 6일 최종 합격자를 발표할 예정이다. 지원서는 10월 20일 17시까지 채용 홈페이지에서 온라인 접수하면 된다.

국토안전관리원도 신입 직원을 모집한다. 모집 분야는 △연구직(5명) △행정직(11명) △기술직(29명)이다. 중복 지원은 불가하며 만 61세 이하 지원 가능하며, 채용 관련 기타 자세한 사항은 공고문에서 확인할 수 있다. 서류전형-필기전형-면접전형-결격사유 조회를 통해 최종 합격자를 발표한다. 입사 지원서는 10월 21일 14시까지 홈페이지 접수하면 된다.

인천메트로서비스가 신입 직원을 모집한다. 모집 분야는 △사무직(2명) △역무직(73명) △시설직(24명) △청소직(79명) 총 178명이다. 직군별 모집 분야 및 세부 자격 요건이 상이하다. 채용 관련 기타 자세한 사항은 공고문에서 확인할 수 있다. 입사 지원서는 10월 19일~27일 18시까지 채용 홈페이지를 통해 온라인 접수하면 된다.

금융결제원이 신입 직원을 채용한다. 모집 분야는 △전산직 △일반직이다. 직군별 모집 분야 및 세부 자격 요건이 상이하다. 채용 관련 기타 자세한 사항은 공고문에서 확인할 수 있다. 입사 지원서는 10월 15일 17시까지 채용 홈페이지를 통해 온라인 접수하면 된다.','커리어넷, 국가철도공단·국토안전관리원·인천메트로서비스·금융결제원 채용 소식 발표','..\uploadImages\20211016015557.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',151,'admin',to_date('21/10/16','RR/MM/DD'),'이억원 기획재정부 1차관은 15일 "20~30대 고용지표 개선과 우리 젊은이들이 체감하는 현장의 고용 상황은 차이가 있다는 점을 충분히 인식하고 있다"고 밝혔다.

이 차관은 이날 정부서울청사에서 열린 정책점검회의에서 "9월 고용동향에서 청년층과 30대 고용회복이 두드러졌다"면서 이렇게 말했다.

그는 "고용원 있는 자영업자, 일용직 근로자 등 코로나 취약계층의 어려움이 이어지고 있다"며 "도소매, 예술·스포츠·여가 등 업종의 감소세가 지속되는 점에 대해서도 예의주시하고 있다"고 강조했다.

그러면서 "전국민 70% 백신접종 등을 통해 단계적으로 일상이 회복되면 고용시장의 방역 불확실성도 완화될 것"이라며 "고용회복 온기가 전 연령·계층에 고루 퍼지는 완전한 경제회복을 앞당기도록 정책적 노력을 강화하겠다"고 덧붙였다.','기재차관 "20~30대 고용지표 체감도 차이 인식"','..\uploadImages\20211016020109.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',152,'admin',to_date('21/10/16','RR/MM/DD'),'한국중견기업연합회와 잡코리아가 이달 30일까지 ''2021 우수 중견기업 채용박람회''를 온라인으로 개최한다. 

이번 박람회는 코로나 팬데믹으로 인해 취업활동에 어려움을 겪고 있는 청년 구직자들에게는 양질의 일자리 정보를, 우수 인재 확보가 절실한 중견기업에는 우수인재 채용기회를 제공할 것으로 기대된다. 

한국중견기업연합회와 잡코리아는 2019년부터 해마다 우수 중견기업 30개사를 선정해 우수 중견기업관 및 채용관 입점 혜택을 제공하는 ‘우수 중견기업관’을 운영하고 있으며, 올해까지 총 90개 중견기업이 참여하고 있다. 

이번 2021 우수 중견기업 채용박람회는 우수 중견기업관 프로젝트의 일환으로 코로나19 확산 방지를 위해 100% 비대면(On-Line)으로 개최한다.  

잡코리아 웹사이트와 앱에 구축된 채용박람회 홈페이지를 방문하면 기업전문가들이 선정한 △에듀윌 △한국아즈빌 △유라테크 △샘표식품 △경창산업 등 2019년부터 참여한 우수 중견기업 약 90개사의 채용공고를 확인하고 입사지원 할 수 있다. 

채용정보 외에도 기업의 사업분야 등 기업상세정보부터 인재상, 채용프로세스, 복리후생, 근무환경 등 기업문화까지 확인이 가능하다. 

특히 각 기업의 실무자를 취재한 ‘직무인터뷰’ 컨텐츠를 통해 직무 특징과 취업 노하우 정보를 얻을 수 있다. 또한 채용박람회에 참여하는 구직자들에게는 AI모의면접과 인적성검사를 무료로 받을 수 있는 기회를 선착순(100명)으로 제공한다. 

이번 2021 우수 중견기업 채용박람회는 잡코리아 웹사이트와 앱을 통해 15일(금)부터 30일(토)까지 2주간 참여할 수 있다.

출처 : 아웃소싱타임스(http://www.outsourcing.co.kr)','''2021 우수 중견기업 채용박람회'' 개최...10월 30일까지 온라인에서','..\uploadImages\20211016020156.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',62,'admin',to_date('21/10/15','RR/MM/DD'),'진로 지도사, NCS 활용 면접관 등 NCS 직업 교육 지도사 등 취업 관련 17개 자격 과정을 운영하는 코리아리크루트(KOREA RECRUIT, 김덕원 대표)는 교육부가 추진하는 전문대생 취업 역량 강화를 위한 교육 기관에 선정됐다.

코리아리크루트는 교육부가 코로나 사태로 취업난을 겪는 전문대생을 위해 진행하는 ‘코로나19 상황 속 전문대학생 취업 역량 강화 한시 지원 사업(이하 전문대생 취업 역량 한시 지원 사업)’의 교육 기관으로 선정됐다고 12일 밝혔다.

코리아리크루트는 이번 사업 선정으로 직무 관련 자격 취득 과정은 물론, 국가 전문 자격 준비 과정 및 취업 역량 스킬 향상을 위한 ‘취업 전략 6일 정복 - 입사지원서에서 입사까지’ 등 40여개 과정을 단기간에 마스터할 수 있도록 해 코로나로 정상적인 캠퍼스 생활을 하지 못한 전문대생들의 역량을 끌어올려 취업 성공 가능성을 높인다.

교육부의 전문대생 취업 역량 한시 지원 사업은 한국전문대학교육협의회가 주관해 전문대 졸업 예정 학생 및 졸업자 가운데 미취업 학생의 취업 역량 강화를 위해 1인당 70만원까지 국가 및 민간 자격 취득 과정, 시험 응시료를 지원하는 사업이다. 전문대를 포함해 457개 교육 기관이 7375개 교육 과정을 확정하면서 3만명의 전문대 취준생이 실질적 도움을 받을 수 있을 것으로 보인다.

코리아리크루트는 전문대 취준생의 성공적인 취업을 위해 채용 전형의 1차 관문인 서류 전형 합격을 위해 직무 역량 중심의 입사 지원서, 자기소개서 작성 및 실제 현장에서 직무 수행 시 이뤄지는 다양한 형태의 문제 해결에 필요한 역량을 검증하기 위해 블라인드 면접 대응 전략부터 입사 시 필요 서류, 마음가짐, 비즈니스 예절까지 채용 단계별 학습 과정을 통한 맞춤형 개별 코칭을 진행한다. 이를 통해 ‘서류’와 ‘면접’이라는 취업의 가장 어려운 두 고비를 충실히 준비할 수 있게 한다.

대학 측 요청이 있으면 대면 또는 비대면 방식의 개별 코칭도 진행해 코로나 사태 장기화로 취업 준비에 막막한 여러 전문대 취준생들이 효과적이고, 실질적인 도움을 받을 수 있을 것으로 기대된다.

박효종 코리아리크루트 코리아원격평생교육원장은 “이 밖에도 무료 자기소개서 작성, 해외 취업 교육, 코리아리크루트가 발간한 17개의 교수 자격증, 직무 자격증, 직업상담사 외 15개 국가공인자격증 취득을 위한 문제 풀이 집중 교육 과정 수강생을 코리아평생교육원 LMS 학습 관리 시스템을 통해 내년 2월까지 선착순으로 모집할 예정”이라고 말했다.

코리아리크루트 대학사업본부 박현재 본부장은 “전문대 요청 시 대학별 강의장에서 방역 수칙을 철저히 준수해 맞춤형 대면 교육도 진행할 수 있다”며 “KR 취업 사관 코스 연계 과정과 이번 교육을 진행해 산업체 관점에서의 직무 역량 향상으로 적성에 맞는 직업을 선택하고, 사회에 진출할 수 있도록 온·오프라인 교육을 병행할 것”이라고 말했다.','교육부 전문대 취업역량 향상 코리아리크루트, 자격과정 선정 발표','..\uploadImages\20211015141932.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',64,'admin',to_date('21/10/15','RR/MM/DD'),'코로나19(이하 코로나)로 기업의 실습 참여가 적어진것으로 학교에서 온라인·교내간접실습을 실시하지만 실제 현장실무감각을 이끌기는 턱없이 부족하다.

13일 한국전문대학교육협의회 부설 고등직업교육연구소의 ‘2021년 상반기대학정보공시 전문대학 지표 분석’결과 지난해 4주 이상 현장실습에 나간 학생비율은 5.9%에 불과하다.

이는 2018년 13.2%, 2019년 10.4%와 비교해 절반 가량 떨어졌다.

8주·12주 이상 나가는 장기 현장실습의 참여율도 하락세를 보이고 있다.

전문대학의 8주 이상 현장실습 참여율은 2018년과 2019년 1.2%에서 지난해 1%로 감소한 것으로 집계됐으며, 12주 이상 현장실습 참여율도 2018년 0.8%에서 2019년과 지난해 0.6%로 확인됐다.

현장실습이 급감한 것은 코로나 장기화로 기업 경영이 어려울뿐더러 실습생을 교육시키는 것에 대한 부담이 작용했기 때문이다.

또 학생들의 현장실습지원비 문제로 대학이나 기업에서 현장실습 진행에 어려움을 나타내는 것으로 해석된다.

특히 직격탄을 맞은 호텔·항공·관광업계의 실습생들의 상황은 더 암울하다.

이들 업계에서는 학생들이 실제 현장에서 기술을 익히고 고객을 상대하면서 실무감각을 깨워야 하지만 실습 문이 닫히면서 갈 곳이 줄었다는 게 현실이다.

현재 ‘위드 코로나’로 국내 대형여행사들이 출근재개로 재개 움직임을 보이고 있지만, 지방여행사까지 기류가 번지고 있지 않은 상황이다.

김수경 우송정보대 호텔관광학부 교수는 “현재 학생들이 나갈 수 있는 여행사·항공사 실습이 극히 제한적이다 보니 지역 로컬 여행사나 협회 쪽으로 실습을 돌리고 있다”며 “항공은 항공사들이 실습훈련을 위해 이용하고 있는 실습장에서 실기훈련을 보내는 형편으로 실제 고객을 마주할 기회는 적다”고 설명했다.

여기에 최근 기업들도 과거 현장실습이 취업으로 이어지는 구조 대신에 경력 사원 채용을 선호하면서 어려움을 더하고 있다.

이로 인해 대학가는 재학생들의 실습감소가 채용 위축으로까지 이어지는 악순환을 우려하고 있다.

지역대학 관계자는 “학생들이 실습 통해 배우는 기회가 적어진다면 자연스레 돌발대처능력, 자신감 하락으로 연결된다. 이는 결국 구직포기까지 이어진다”며 “학교에서는 유사한 산업군을 물색해서 범위를 넓히는 등 적극적인 움직임을 보여야 한다”고 말했다.','“취업해야 하는데… ” 전문대 학생들, 꽉 막힌 현장실습에 한숨','..\uploadImages\20211015142117.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',68,'admin',to_date('21/10/15','RR/MM/DD'),'대학생 취업희망 기업 1위는 공기업으로 나타났다.

13일 데이터뉴스가 한국경제연구원이 전국 4년제 대학 3~4학년 재학생과 졸업생 2713명을 대상으로 실시한 ''2021년 대학생 취업인식도 조사''를 분석한 결과, 대학생 취업 희망기업 1위는 공기업으로 조사됐다. 공기업은 지난해에도 대학생 취업 희망기업 1위를 차지했다.

이번 조사에서 응답자의 18.3%가 공기업을 가장 취업을 희망하는 기업으로 꼽았다. 이어 대기업이 17.9%를 차지했고, 정부(공무원)(17.3%)와 중견기업(17.1%)이 뒤를 이었다. 중소기업은 11.9%로 5위를 차지했고 외국계기업과 금융기관은 각각 8.6%와 3.4%로 집계됐다. 

반면, 실제 취업할 것으로 예상되는 기업으로는 중소기업(30.1%)을 가장 많이 꼽았다. 중견기업이 20.9%로 두번째로 많은 응답을 얻었다. 이어 정부(공무원)(15.2%), 공기업(10.7%), 대기업(7.2%), 외국계기업(4.4%), 금융기관(2.2%) 순으로 나타났다.

이번 조사 결과를 지난해와 비교하면, 중소기업 취업 예상자가 지난해보다 5.1%p 늘어난 반면, 공기업은 5.3%p 줄었다. 취업 희망 기업 순위는 지난해와 같았다.

또 이번 조사에서 절반이 넘는 대학생이 취업환경이 더 악화될 것으로 보는 것으로 나타났다. 

올해 하반기 대졸 신규채용 환경에 대해 대학생 10명 중 6명(58.6%)은 ''작년보다 어렵다''고 응답했다. 이에 비해 ''작년과 비슷하다''고 답한 대학생은 21.3%, ''작년보다 좋다''고 답한 응답자는 2.0%에 그쳤다.

취업준비과정의 어려움에 대해서는 ‘채용기회 감소로 인한 입사경쟁 심화’(29.3%)라는 응답이 가장 많았다. 이어 ‘체험형 인턴 등 실무경험 기회 확보의 어려움’(23.9%), ‘자존감 하락 등 심리적 위축 가중’(18.2%), ‘단기 일자리 감소 등 취업준비의 경제적 부담 증가’(16.2%) 순으로 조사됐다.','대학생 취업 목표 1위는 올해도 ''공기업''','..\uploadImages\20211015142352.png',5,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',69,'admin',to_date('21/10/15','RR/MM/DD'),'[세종=뉴스핌] 임은석 기자 = 어려운 취업시장으로 구직난에 시달리는 구직자들을 위한 외국인 투자기업 채용박람회가 열린다.

대한무역투자진흥공사(KOTRA)는 ''외국인 투자기업 채용박람회''가 서울 강남구 세텍(SETEC) 전시장에서 21일부터 이틀간 개최된다고 11일 밝혔다. 올해로 16회째를 맞았으며 외투기업 대상 채용박람회로는 규모와 인지도 면에서 국내 대표행사다.

작년에는 온라인으로만 개최했지만 올해는 온·오프라인 하이브리드 형태로 진행된다. 대면 상담을 통해 생생한 소통이 가능한 오프라인 방식과 다수 구직자가 장소에 구애 없이 참여가 가능한 온라인 방식의 장점을 최대한 살리고자 노력했다.

단, 현장 참가를 희망하는 경우 정부 방역지침에 따라 홈페이지에서의 사전참가 등록이 필수다. 원거리 거주 또는 입장 인원 제한으로 오프라인 참가가 어려운 구직자들은 참가기업별 채용설명 웨비나에 참가할 수 있다.

박람회에는 BMW, IKEA, GE헬스케어, 한국 3M 등 우수 외투기업 108개사가 참가한다. 제조·생산·연구개발(R and D) 분야 37개사, 미디어·서비스업 분야 25개사 외에 금융·은행업 14개사 등 7개 산업 분야의 기업들이 경영·사무직, 연구개발·설계 등 다양한 직종에서 채용을 진행한다.

포춘 500대(Fortune 500) 글로벌 기업 외에도 일반 구직자들에게는 다소 생소하나 세계적인 경쟁력을 갖춘 기업들이 참가한다. 자세한 채용직무와 요건은 홈페이지에서 쉽게 찾아볼 수 있으며 사전에 온라인 이력서를 접수받고 있다.

참가 구직자를 위해서는 ▲대면 채용상담 ▲참가기업 홍보 ▲채용 상담 온라인 진행을 위한 웨비나관 운영 ▲취업 노하우 특강 ▲맞춤형 컨설팅 등 다양한 부대행사가 준비된다.

이번 박람회에 처음 참가한 레고랜드 코리아 리조트의 인사담당자는 "내년 어린이날 개장을 앞두는 만큼, 올해 외투기업 채용박람회에 참가해 회사가 찾는 적격 인재들과 다수의 취업 상담이 진행되길 기대한다"고 밝혔다.','KOTRA "어려운 취업기회 외투기업서 잡으세요"','..\uploadImages\20211015142444.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',70,'admin',to_date('21/10/15','RR/MM/DD'),'노인 ‘알바’ 늘리며 ‘3040 일자리’ 죽인 셈

전경련 산하 한국경제연구원이 통계청 데이터를 분석, 3040 고용률이 OECD 회원국 38국 가운데 30위로 꼴찌 수준이라고 비교했다.

이에 따르면 3040 취업자 수는 2015년 이후 연평균 1.5%씩 감소했다. 이 결과 2015년 3040 취업자 수 1262만1천명이 지난해 1171만명으로 무려 91만명이나 줄어들었다.

이 기간 중 인구감소 등을 감안해도 취업자 감소폭이 더욱 컸다는 해석이다. 이는 바로 친노동, 반시장 정책 기조하에 일자리 창출의 정도를 비켜 가며 재정 일자리로 통계상의 허상을 내보인 셈이다.

문 정부의 고용 노동 정책은 공공기관 비정규직의 강제 정규직화로부터 빗나가기 시작했다고 볼 수 있다. 대통령이 인천국제공항을 방문, ‘연내 비정규직 제로화’ 선언 이후 청년층의 취업 기회 축소, 불공정 논란을 촉발했다.

한경연이 4년제 대학 재학생, 졸업생을 대상으로 설문조사 한 결과, 무려 65.3%가 아예 취업을 포기한 ‘취포생’이라는 응답이 나타났다. 이 얼마나 심각한 사태인 줄 모르는가.

전경련은 문 정권하에 재벌이익 대변, 양극화의 주범이란 ‘정치적 박해’로 삼성 등 최상의 회원사들이 모조리 탈퇴했다. 이로부터 극도로 언행을 조심해 온 전경련이지만 경제, 고용정책 관련 건전한 대정부 정책 제안 역할을 열심히 해 오고 있다.

전경련이 산업단지공단 산업 동향 조사를 분석한 결과 지난 2분기 국가산업단지 고용인력이 코로나 사태 이전 2019년 1분기에 비해 2만7천명이 감소했다. 업종별로는 전기·전자 분야 1만6169명, 운송·장비 분야 5489명, 기계 분야 4685명이 각각 줄어들었다.

문제는 국가산단의 생산, 수출은 회복세를 나타냈지만 고용은 오히려 감소했다는 사실이다.

전경련은 올 상반기 국가산단의 총생산액은 258조원으로 2019년 상반기에 비해 16조원(6.6%)이 증가했고 총수출액도 860억4천만 달러로 83억 달러(10.7%)가 증가했다고 밝혔다.

이처럼 생산, 수출 회복에도 불구하고 고용인력이 2만7천명이나 줄어들었다면 정부의 고용 노동 정책이 일자리 감소 역할을 했다는 결과 아닌가.

문 정권 초대 청와대 경제수석으로 소득 주도 성장 정책을 설계했다는 홍장표 KDI 원장이 13일, 국회 정무위 국감에서 ‘소주성’에 따른 최저임금, 근로시간 단축 등의 일부 부작용은 있었다고 시인했다. 또한 그는 ‘소주성’이 완전 잘못 설계되지 않았느냐는 야당 의원 질의에 대해 ‘절반 성공’, ‘나름대로 긍정적 성과’라며 궁색하게 답변했다.

어찌 일자리 죽이는 악법, 규제인가

문 정권의 고용 노동 정책은 결과적으로 ‘반 일자리’ 일색이었다는 비판을 받는다. 정부 주도, 반시장, 공공일자리, 세금 일자리로 ‘정권 업적’을 기록할 수 있을지는 몰라도 정상적인 일자리 창출은 기대할 수 없다.

경제계가 거부, 반대하는 규제법은 집권당 단독으로 입법 강행해 오지 않았는가. 상법, 공정거래법, 금융복합 기업집단 감독법 등 규제 3법에다 중대재해기업 처벌법 만들고 노조법 등 친노동 3법도 만들지 않았는가.

여기에다 최강성 민노총의 불법 사업장 점거, 파업투쟁을 정부가 막을 의지가 있는가. 한 마디로 문 정권 일자리정부 하에서 기업은 일자리 창출을 위한 투자를 생각할 수도 없는 형국이다.','[취업자 증가 통계 속 허상] 노인 알바·단순 노무직 등','..\uploadImages\20211015142728.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',71,'admin',to_date('21/10/15','RR/MM/DD'),'대기업 계열사인 에스케이 피아이씨글로벌(SK picglobal) 경력직 채용 면접에서 ‘만나는 사람 있냐’ ‘결혼이나 출산계획이 있냐’고 묻는 등 수차례 성차별 질문을 했다는 의혹이 제기됐다. 부당함을 느낀 응시자가 신고했으나 고용노동부는 “면접에서 혼인여부에 대한 질문이 나온 것은 사실이나, 면접 관련 자료에 이를 기재하지 않았으므로” 법 위반이 아니라고 판단했다. 당시 면접 대상자는 노동부 신고를 하지 않은 이를 포함한 2명의 20~30대 여성으로, 남성 면접관들에게 둘 다 이러한 성차별적 질문을 받았을 가능성이 제기된다. 이들은 2년 계약직에 응모했으나 모두 떨어졌다.

 11일 <한겨레>가 ‘채용성차별 철폐 공동행동’과 국회 환경노동위원회 소속 정의당 강은미 의원 등을 통해 취재한 바에 따르면, 지난 1월26일 에스케이 피아이씨글로벌은 파견업체를 통해 소개받은 여성응시자 A(에이)씨, B(비)씨 2명에 대한 면접을 서류절차 뒤 진행했다. 이 자리에서 A씨는 면접관으로부터 ‘만나는 사람 있느냐’ ‘결혼 계획은 있냐’ ‘향후 결혼, 출산계획이 있느냐, 있다면 몇 년 정도로 생각하느냐’ ‘가족과 동거하느냐’ 등 업무역량 평가와 무관한 성차별 질문을 수차례 들었다고 한다. A씨는 면접 뒤에 친구에게 “스크(SK)에서 면접 볼 때 결혼출산 질문했는데, 이거 법적으로 문제 있는 거 아니냐”고 카카오톡으로 묻기도 했다. 그리고 약 2주 뒤 불합격 통보를 받았다.
A씨는 이듬달인 3월 고용노동부 안내대로 국민신문고에 고용노동부 서울고용노동청에 채용성차별을 조사·처벌해 달라고 민원을 제기했다. 2주 뒤의 조사 결과는 이랬다. “에스케이 피아이씨글로벌이 면접 당시 구직자에게 혼인여부에 대한 사항을 구두로 질의한 것은 사실이나, 면접 자료에 관련 내용을 기재하는 등의 행위를 하지 않은 것으로 조사돼 채용절차법 위반으로 볼 수 없다. (…) 다만 구두로 혼인여부 등을 질의하는 것은 채용절차법 입법 취지를 훼손할 우려가 있어 주의·촉구 조치했다.” 채용절차법 4조3항은 ‘구직자에 대해 직무수행에 필요하지 않은 신체조건·혼인여부 등의 정보를 기재토록 요구하거나 입증자료로 수집해서는 안 된다”고 규정하고 있다. 노동부 서울청은 단순 구두 질문은 ‘수집’에 해당하지 않는다고 판단한 것이다.','아직도 여성에 ‘결혼·출산’ 묻는 취업 면접, 정부는 “법 위반 아냐”','..\uploadImages\20211015142812.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',73,'admin',to_date('21/10/15','RR/MM/DD'),'◆ “일해서 돈 모아봐야 집 못산다”…’빚투’의 늪에 빠지는 젊은이들

작년 2월 서울 소재 대학의 경영학과를 졸업한 A양은 구직을 포기하고 가상화폐 투자와 과외를 병행하고 있다. 연이은 공인회계사 시험 낙방으로 더 이상 시험을 준비할 금전적, 정신적 여력이 남아있지 않기 때문이다. A양은 “시험 준비를 오래해서 직무역량은 커녕 나이와 인턴 경력도 많이 밀린다”며 “과외를 해서 번 돈으로 가상화폐에 올인하고 있다”고 말했다. 이에 대해 “이렇게 번 돈은 혼자서 호캉스(고급 호텔로 휴양을 가는 것)를 가거나 명품의류 등을 사는데 쓴다”며 “어차피 취직해서 돈 모아봐야 집도 못 살텐데”라고 설명했다. 또 “그래서 연애도 결혼도 다 포기했다”며 “혼자 먹고 살거면 밥은 굶지 않을 수 있을 것 아니냐”고 덧붙였다.

지난 2월 서울 소재 대학의 정치외교학과를 졸업한 B군도 비슷한 처지다. B군은 졸업 이전부터 수차례 대기업과 중견기업의 문을 두드렸지만, 연이은 실패로 결국 취직을 단념하고 지방에 위치한 본가로 돌아가 공무원 시험 준비를 하고 있다. 그는 전화 통화에서 “최근 주식을 하려고 조금 대출 받았다”며 “목표한 선까지 수익이 나는 순간 그만둘 것”이라 강조했다. 이어 “이렇게라도 시험 준비하는 중에도 조금씩 돈을 벌어 놓지 않는다면 지방에도 집을 못 사고 결혼도 못할 것 같다”고 말하며 한숨을 푹 쉬었다.

◆ 대학생 10명 중 6~7명은 사실상 구직 단념...10명 중 7명 "노력형 부자될 수 없다"

한국경제연구원(이하 한경연)이 최근 전국 4년제 대학 3~4학년 재학생 및 졸업생 2,713명을 대상으로 실시한 ‘2021년 대학생 취업인식도 조사’에 따르면, 대학생 10명 중 6~7명(65.3%)은 사실상 구직에 대해 단념한 상태인 것으로 나타났다.

대학 재학생 및 졸업생들이 적극적인 구직을 포기한 이유로 가장 많이 꼽힌 것은 ‘역량, 기술, 지식 등이 부족해 더 준비하기 위해’로 조사됐다. 조사 대상 중 64.9%의 학생이 자신의 역량 부족을 이유로 구직을 포기한 셈이다.

이는 지난 9월 한경연 ‘청년 일자리 인식 설문조사’에서 청년 10명 중 7명이 일자리 상황이 악화 될 것(62.9%)으로 보고, 원하는 직장에 취업할 가능성이 낮다고(69.5%) 생각한다고 조사된 바와 연장선상에 있는 것으로 풀이된다. 본인의 역량이 부족하다는 판단과, 일자리 시장 자체가 부정적이라는 판단이 합쳐져 구직 자체에 나서지 않는 청년들이 늘어나고 있는 것이다.

이에 대해 한경연은 “청년들이 갈수록 치열해지는 취업경쟁 속에서 스스로의 취업 가능성을 낮게 진단하고 구직 자신감을 잃고 있다”고 지적했다. 또 “이는 청년들의 노동시장 진입을 늦추고 미래의 성장 동력이 저하되는 결과를 야기할 것”이라 우려를 표했다.

또 이러한 청년층의 구직 단념이, 부동산 폭등 등으로 인한 상대적 박탈감과 합쳐져 청년들이 ‘한탕주의’로 내몰리고 있다는 주장이 일각에서 대두되기도 했다. 

지난 9월 한경연 ‘청년 일자리 인식 설문조사’에서 청년들은 부동산 폭등 뉴스에 가장 근로 의욕이 저하된다고 답했으며, 10명 중 7명이 노력형 부자가 될 수 없다고 생각하는 것으로 나타났다.','구직난에 취업 포기하는 대학생들…상대적 박탈감에 ‘빚투’에 빠지기도','..\uploadImages\20211015143014.jpg',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',75,'admin',to_date('21/10/15','RR/MM/DD'),'투데이코리아=유한일 기자 | 경제 활동을 가장 활발하게 하며 ‘경제허리’로 불리는 30·40(30~49세) 취업자수와 고용률이 점점 낮아지고 있다는 조사 결과가 나왔다. 고용률의 경우 경제협력개발기구(OECD) 중에서도 하위권에 머물렀다.
 
13일 전국경제인연합회 산하 한국경제연구원(한경연)이 통계청 데이터를 분석한 결과에 따르면 30·40 취업자수는 지난 5년간 연평균 1.5%, 고용률은 0.7%포인트(p) 감소한 것으로 나타났다.
 
한경연에 따르면 30·40 취업자수는 2015년 1262만1000명에서 2016년 1250만4000명으로 줄어든 뒤 2017년(1242만6000명), 2018년(1224만8000명), 2019년(1203만3000명) 계속 하락하다 지난해 1171만명으로 1200만명대가 붕괴됐다.
 
지난해 기준 30·40 고용률은 76.2%로 나타났다. 역시 점점 내려가는 추세다. 30·40 고용률은 OECD 38개국 중 30위로 하위권이다. G5 국가와 비교해보면 가장 높은 독일(85.8%)보다 9.5%p 낮은 것으로 나타났다. 미국(76.6%)과 영국(85.1%), 프랑스(81.9%), 일본(85.1%)과도 격차가 컸다.
 
산업별로 보면 2019년 대비 지난해 30·40 취업자수가 가장 감소한 산업은 숙박·음식점업으로 7만6516명이 줄어든 것으로 조사됐다. 이어 교육·서비스(-7만1102명), 도소매업(-5만3743명), 제조업(-5만406명)이 뒤를 이었다.
 
지난해 기준 30·40 취업자 비중이 높은 산업은 제조업(19.6%), 도소매업(14.1%), 교육·서비스업(8.3%), 보건업 및 사회복지 서비스업(7.5%), 건설업(7.1%), 숙박·음식점업(5.8%) 순으로 집계됐다.
 
취업자 비중이 높은 산업의 최근 5년간 취업자 연평균 증감율을 살펴보면 보건업 및 사회복지 서비스업 외에는 모두 감소하는 것으로 나타났다. 특히 자영업자가 많은 숙박·음식점업과 도소매업의 감소율이 각각 3.3%, 2.8%로 높았다. 질 좋은 일자리로 분류되는 제조업 역시 2.7% 감소했다.','‘경제 허리’가 흔들린다···30·40 취업자·고용률 동반 하락','..\uploadImages\20211015143219.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',76,'admin',to_date('21/10/15','RR/MM/DD'),'삼성전자는 오는 13~26일 ‘2021 삼성전자 협력회사 온라인 채용박람회’를 개최한다.

이번 박람회는 신종 코로나바이러스 감염증(코로나19) 상황을 고려해 온라인으로 열린다. 채용박람회 홈페이지는 삼성전자와 구인구직 플랫폼 ‘사람인’에 마련됐다.

참가 협력사는 대덕전자, 드림텍, 동우화인켐, 동진쎄미켐, 디케이, 솔브레인, 엘오티베큠, 이오테크닉스, 원익아이피에스, 엠씨넥스, 인탑스, 피에스케이, 히로세코리아, KH바텍 등 53개사다.

이 가운데 동우화인켐, 엠씨넥스, 원익아이피에스, 드림텍은 연매출 1조원이 넘는 중견 기업이다. 반도체용 PCB(인쇄회로기판)를 공급하는 대덕전자는 시스템반도체용 PCB 국내 대규모 투자를 진행 중으로 반도체 수급 안정화에 기여하고 있다.


반도체 소재를 공급하는 솔브레인은 삼성전자와 협력해 3D 낸드플래시 식각공정 핵심소재를 세계 최초로 개발했다. 반도체용 설비를 공급하는 원익아이피에스는 삼성전자의 기술 지원을 받아 반도체 웨이퍼를 제작하는데 활용되는 CVD(Chemical Vapor Deposition) 장비와 핵심기술을 국산화했다.

IT기기 금속 정밀 가공 전문기업인 KH바텍은 최고 수준의 기술력으로 내구성이 큰 폴더블 휴대폰용 힌지를 제작해 올해 출시한 갤럭시Z 폴드3, 갤럭시Z 플립3의 판매 호조에 기여했다.

행사 기간 중에 동진쎄미켐, 어보브반도체, 와이솔, 케이케이테크, 위드텍, 삼영순화 등 6개 기업은 비대면으로 채용 관련 문의와 설명을 들을 수 있는 온라인 채용 설명회를 실시한다. 참가 희망자는 13일부터 15일까지 채용박람회 홈페이지에서 사전 접수를 통해 신청하면 된다.

안경덕 장관은 “삼성은 다양한 형태로 청년일자리 창출에 힘쓰고 있다”며 “삼성과 같은 사례가 산업 전반에 확산되기를 희망하며 정부도 고용 확대를 위해 노력하는 기업에 필요한 부분이 있으면 적극 지원하겠다”고 강조했다.

권칠승 장관은 “삼성과 협력회사가 함께 청년들에게 양질의 일자리를 제공하는 것은 매우 의미 있다”며 “중소벤처기업부도 중소기업, 벤처·스타트업을 집중 육성해 기업과 청년들이 희망하는 일자리 창출에 최선을 다하겠다”고 밝혔다.

삼성전자 협력회사 협의회 회장을 맡고 있는 대덕전자 김영재 대표는 “삼성전자 협력회사는 삼성의 성공 DNA를 누구보다 잘 이해하고 있는 기업”이라며 “이러한 중소, 중견기업에서 구직자 여러분의 꿈을 실현하기를 기대한다”라고 밝혔다.

김현석 삼성전자 대표이사 사장은 “이번 행사를 통해 많은 청년들이 꿈을 실현할 수 있는 좋은 일자리를 찾기를 희망한다”며 “삼성전자는 협력회사와의 상생 활동을 더욱 강화하고, 양질의 일자리 확대 창출에 최선을 다하겠다“고 말했다.','‘매출 1조’ 삼성전자 협력사 취업 도전해볼까','..\uploadImages\20211015143348.jpg',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',78,'admin',to_date('21/10/15','RR/MM/DD'),'◆ 31명중 24명 조기 취업

이날은 이 대학교 컴퓨터정보계열 내년 졸업 예정 학생들이 앨범 사진을 찍는 날이다.


화창한 가을 하늘아래, 사진 촬영으로 시끌벅적할 듯도 했지만 네트워크보안반(2022학년도부터 정보보안?게임콘텐츠과) 분위기는 예상 밖으로 조용하기만 했다.

이 반 내년 졸업 예정 학생 31명 중 24명이 이미 조기 취업했기 때문이다.

고 교수와 사진 촬영에 나선 취업 준비 중인 학생 6명의 표정 역시 밝아 보였다. 나머지 한병은 신종코로나바이러스감염증(코로나19) 백신 접종으로 참석하지 못했다.

고정호 교수는 "내년부턴 졸업앨범 사진을 1학기에 찍어야겠다"면서 "우리 반 대다수인 70% 이상이 이노테크놀리지, 지란지교소프트, 드림시큐리티 등 서울 정보기술(IT)분야 회사에 조기 취업하는 바람에 스승과 제자가 추억으로 간직할 앨범 사진도 제대로 못 찍는 형편"이라면서 너스레를 떨었다.

그만큼 네트워크보안반은 취업난과는 거리가 먼, 즉 취업이 잘된다는 뜻이다.

이날 만난 이동재 학생(26)은 "세계적인 네트워크 전문기업인 시스코의 CCNP 자격증을 땄고 시스코코리아에 입사를 준비 중"이라며 조만간 좋은 소식을 들을 것 같단다.

◆ 학생 한 명당 자격증 2.3개…"취업은 탄탄대로"

정보보안산업기사, 정보처리산업기사 자격증을 취득한 황재상 학생(24) 역시 좋은 회사를 가려고 고르는 중이다.

이 반이 이렇게 취업 시장에서 상한가를 누리고 있는 배경은 코로나19로 인한 비대면 문화가 확산된 덕도 봤다. 비대면 온택트 분위기로 IT인력 수요가 폭발적으로 늘어났기 때문.

여기에 더해 이 반은 코로나로 비대면 수업이 많았던 지난해에 자격증 취득에 집중한 것도 취업 경쟁력을 높이는데 한몫을 했다.

고 교수는 “네트워크 보안 분야 취업을 하려면 실력을 검증받을 방법이 마땅치 않다. 따라서 관련 자격증을 취득하는 게 서류전형에 우위를 점할 수 있다”고 했다.

이런 점을 고려해 비대면 수업이 진행되던 2학년 때인 지난해, 자격증 취득에 드라이버 걸었고 그 덕분에 이 반이 자격증 학생들이 취득한 자격증은 총 70여 개, 학생 1인당 평균 2.3개에 달한다.

고 교수는 “온택트 문화가 뉴노멀로 자리잡아갈 것을 감안하면 네트워크 보안 분야의 일자리, 즉 취업은 탄탄대로”라면서 “내년 졸업할 학생들 취업은 100% 달성이라고 감히 말할 수 있다”며 자신감을 드러냈다.','[i동네방네]이 와중에 졸업생 전원 취업…교실에 가보니','..\uploadImages\20211015143546.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',80,'admin',to_date('21/10/15','RR/MM/DD'),'한국의 청년층(15~29세) 가운데 직업도 없으면서 훈련과 교육도 받지 않는 ''니트족'' 비중이 20%를 넘어섰고 이들로 인한 경제적 손실이 연간 62조원에 육박한다는 주장이 나왔다.

6일 한국경제연구원이 발표한 ''청년층 니트의 경제적 비용'' 연구 보고서에 따르면 국내 청년층 니트 비중은 2019년 기준 22.3%다. 이는 한국노동패널 1~22차년도 조사자료의 2010~2019년 자료를 사용해 추정한 결과다.

니트의 비중은 그동안 부침이 있었는데 2015년부터 증가세를 나타내다가 2018년에 소폭 감소한 이후 2019년에는 22.3%로 상승했다.

반면 경제협력개발기구(OECD) 평균값은 2014년부터 지속적으로 감소했으며 2019년에는 12.9%를 기록해 우리나라가 약 9.4% 포인트 높은 것으로 나타났다.

최근의 니트 비중은 여성보다도 남성에서 더 크고 남성에서 증가폭도 더 높은 것으로 나타났다. 남성의 니트 비중은 2010년 17.1%에서 2019년 25.9%로 증가했다. 같은 기간 여성 니트 비중이 17.1%에서 18.2%로 소폭 증가한 것과는 대비된다.

보고서는 니트에 따른 손실을 계량화하기 위해 성향점수매칭법(PSM)을 사용, 니트의 연간 경제적 비용을 추정했다.

시장소득 기준으로 사업주의 사회보장부담금을 포함해 추정한 니트의 연간 경제적 비용은 2010년도에 33조원에서 2019년에는 61조7000억원으로 증가한 것으로 나타났다.

GDP 대비 니트의 경제적 비용 비중도 2010년에 2.5%를 기록했으나 이후 부침을 보이다가 2019년에는 3.2%까지 상승한 것으로 나타났다.

보고서는 인구구조 변화에 따라 향후 생산가능인구가 지속적으로 감소할 것으로 예상되면서 노동력 부족이 우려되는 만큼 청년층 니트의 노동시장으로 진입을 유도할 필요가 있다고 언급했다.

유진성 한경연 연구위원은 "소득 하위계층, 직업훈련 경험이 없는 청년층, 취업경험이 없는 청년층에서 니트의 비중이 상대적으로 높게 나타나는 경향이 있다”며 “청년들을 대상으로 현금 위주의 지원정책보다는 소득 하위계층 중심의 취업경험이나 직업훈련, 인턴 등의 서비스 지원을 강화할 필요가 있다”고 주장했다.

이어 “사회와 가정으로부터의 고립, 사회에 대한 두려움, 취업의욕 상실 등에 기인하는 니트의 문제를 해결하기 위해서 청소년층을 위한 취업지원 및 심리상담 전용 공간을 조성하는 방안도 고려할 필요가 있다”고 언급했다.','취업의지 없는 ''청년 니트족'' 비중 22.3%… 연간 손실 62조원 육박','..\uploadImages\20211015143725.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',82,'admin',to_date('21/10/15','RR/MM/DD'),'코로나19가 확산하면서 우리는 일상에서 사회적 거리두기를 실천하고, 일상의 많은 것이 비대면·디지털 환경으로 바뀌었다. 수업과 회의는 화상을 통해 이뤄지고, 업무 역시 원격에서 처리한다. 전시·박람회 역시 온라인으로 옮겨갔다.

개인정보위는 개인정보보호의 날 기념식 행사를 메타버스 플랫폼 이프랜드에서 진행했다. 코이카 홍보대사 발대식도 제페토를 활용해 열렸다. 채용 박람회나 면접 역시 메타버스를 활용하고 있다.

과학기술정보통신부가 12일 개최한 ''2021 청년 과학기술인 일자리박람회''도 최근 트렌드를 반영해 화상 면접과 메타버스 플랫폼에서 열렸다. 과기정통부는 게더타운을 통해 개막식을 진행하고, 현직 종사자의 직무 경험담을 공유하는 토크 콘서트 및 직장인 브이로그 등을 공개했다.

이와 함께 채용관에는 각 기업이 부스를 마련했으며, 구직자가 부스를 방문하면 기업이 준비한 소개자료를 확인하고 부스에 있는 채용 담당자와 이야기를 나눌 수 있다. 이와 함께 한국산업기술진흥협회가 마련한 직업상담소 부스에서는 산기협 직업상담사가 상주하며 상담을 진행했다.

과기정통부가 마련한 메타버스 공간에 방문해보니, 전반적으로 웹 페이지를 가상공간으로 옮겨놓은 느낌이 강했다. 채용정보 웹 페이지는 문서 형태의 화면에서 마우스로 링크를 클릭하며 이동해 여러 정보를 얻을 수 있다. 메타버스에서는 클릭 대신 캐릭터를 직접 움직이며 ''부스'' 형태의 공간에 직접 방문해 정보를 얻는다. 특히 가까이 있는 채용 담당자 캐릭터와 채팅이나 화상·음성으로 대화할 수 있어 일반 웹 보다 상호작용한다는 느낌을 더 크게 받을 수 있다.

이번 메타버스 취업상담회에 부스를 마련한 정보보안 기업 윈스는 "코로나19 전파가 우려되는 상황에서, 적절한 채용 환경이다. 인사 담당자 역시 재택근무를 하면서 채용 업무를 진행할 수 있고, 부스에 세워둔 캐릭터를 통해 알람이 오면 이에 맞춰 대응하면 된다. 과거에는 부스 설치 및 공간 임대, 브로셔 출력에 드는 시간이나 비용이 많이 들었지만, 메타버스 환경에서는 불필요한 소모가 없는 것이 매력적"이라고 말했다.','메타버스 취업상담회 방문해보니... 필요한 플랫폼이지만 보완할 점도 많아','..\uploadImages\20211015143831.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',83,'admin',to_date('21/10/15','RR/MM/DD'),'국내 코로나바이러스감염증-19(이하 코로나19)로 인해 취업시장이 얼어붙자 해외 취업에 눈길을 돌리는 청년들이 증가하는 추세다. 그러나 어렵게 해외 취업에 성공했음에도 불구하고 폭언과 갑질 등 비인격적인 대우로 인해 국내로 다시 ‘리턴’하는 사례도 매우 높은 것으로 밝혀졌다. 정부는 국내 취업시장의 한계를 극복하기 위해 지난 2008년부터 해외 취업 연수사업을 적극적으로 지원했다. 당시 이명박 정부는 ‘글로벌 청년 리더 10만명 양성계획’을 추진하며 약 5000억원의 예산을 투입했다. 박근혜 정부는 ‘케이무브(K-Move)’라는 이름으로 진행했으며, 현 문재인 정부에서도 계속해서 추진하고 있는 사업이다. 해당 사업은 연수 시간, 운영 기관, 연봉 기준 등에 따라 △K-Move스쿨 장기 △K-Move스쿨 단기 △트랙Ⅱ △청해진대학으로 구분해 운영된다. 공단은 연수 과정에서 소요되는 교육 비용을 80~100% 지원해 해외 취업을 꿈꾸는 이들에게 수요가 높다. 지난해 발표된 한국산업인력공단 해외 취업 종합 통계에 따르면 지난 2013년 1607명이었던 해외취업자는 지난해 4400명으로 증가했다. 이는 7년 새 3배 이상 늘어난 수치다. 코로나19 여파로 취업자 수가 감소하는 추세를 보였지만 지난 2019년에는 6816명이 해외로 취업해 꾸준히 증가하고 있다. 이렇듯 해외의 취업시장에 눈을 돌리는 인구가 늘어나고 있지만 정작 해외취업자 10명 중 7명은 다시 국내로 되돌아오는 것으로 파악됐다. 정부가 앞장서서 해외 취업을 지원했음에도 불구하고 해외취업자 70%가 해외 취업을 포기하고 다시 국내로 돌아오는 현상이 벌어지는 것이다. 산업인력공단이 지난 2015년부터 2020년까지 해외 취업한 사람 중 4800명을 표본으로 올해 1월부터 3월까지 진행한 해외취업자 사후관리 설문조사에 따르면 현지에 체류하고 있는 사람은 1576명(32.8%)에 그쳤다. 나머지 3224명(67.2%)는 이미 국내로 귀국한 상황이다. 귀국 사유로 비자 만료가 55.9%로 가장 높았지만, 귀국자 3224명의 3명 중 1명은 비자발적 고용해지로 인해 귀국했다고 답했다. 코로나19 확산으로 인한 귀국도 28.4%에 달했다. 지난해 해외 취업에 성공했지만 얼마 안 돼 귀국한 사람의 61.6%는 코로나19로 인해 고용해지를 당했다고 증언했다.  기타 고용해지 사유로는 경영상 이유, 해고 통보, 인사 발령, 계약 파기, 폐업, 임금 체불 등이 꼽혔다. 결국, 해외 체류 계획에 맞게 기간이 종료돼 귀국한 취업자는 647명이다. 나머지는 코로나19 혹은 비자 만료, 근무환경 불만족 등 다양한 원인으로 해외 취업 전 세웠던 계획과는 달리 귀국길을 택했다.','취업만 하면 장땡?…‘낙동강 오리알 신세’된 해외 취업자들  [출처] 본 기사는 투데이신문에서 작성된 기사 입니다.(www.ntoday.co.kr)','..\uploadImages\20211015143926.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',88,'admin',to_date('21/10/15','RR/MM/DD'),'서울시 동작구는 식품안전관리자 양성을 위한 2차 교육생을 오는 22일까지 모집한다. 

12일 구에 따르면 식품안전관리자 양성과정은 식음료 실무자(바리스타·와인소믈리에·바텐더) 양성을 위한 교육으로, 참여 대상은 만40세 이하 동작구민, 동작구 소재 대학 (예비)졸업생 등 총 12명이다.

참여자는 자격증 취득에 필요한 교육을 무료로 수강할 수 있다. 모든 비용은 동작구 예산으로 진행한다.

해당 과정을 이수한 후 일정 점수 이상 받아 시험에 통과하면 자격증을 취득할 수 있다. 자격증 소지자는 위드코로나 시대로 전환되면 관광산업이 활기를 띄게 될 레스토랑이나 호텔 등위 분야에 취업하는 데 유리하다.

또한 교육 종료 후에는 식품안전 및 위생에 관한 전문지식과 실무능력을 갖춘 자격증 취득자를 대상으로 취업 연계를 진행할 계획이다.

1차 교육은 지난 2일(토)에 개강해 매주 토요일마다 미국호텔협회 한국교육원에서 진행 중이다. 이번에 모집 중인 2차 교육은 이달 27일부터 내달 2일까지 5일간 4시간씩(총 20시간) 진행할 예정이다.

교육생은 수업에 필요한 교재와 수료증, 취업 연계 지원 등 다양한 혜택을 받을 수 있다.

교육 참여를 원하는 구민은 신청서와 개인정보동의서, 구직신청서 등을 작성한 후 미국호텔협회 한국교육원 이메일로 신청하면 된다.

신청 관련 자세한 내용은 미국호텔협회 한국교육원으로 문의하면 안내를 받을 수 있다.

한편, 청년뿐만 아니라 40대 구직자, 경력단절여성 등 취업을 준비하는 사람들은 고용노동부에서 주관하는 일자리 포털 ‘워크넷’에서 다양한 정보를 한눈에 볼 수 있다.

‘워크넷은 ‘사람인’과 ‘잡코리아’ 등의 취업정보를 통합한 취업정보사이트로, 고용부와 한국고용정보원은 온라인을 통해 구직자와 구인자를 연결시켜주고 고용안정강화를 위해 실업대책, 직업훈련 등의 대한 정보도 제공한다.

전혜영 일자리정책과장은 “이번 교육은 위드코로나를 준비하는 청년들에게 레스토랑과 호텔에 취업하는데 필요한 자격증을 취득할 수 있는 좋은 기회이므로 많이 참여해 달라”며 “앞으로도 청년들이 양질의 일자리를 얻을 수 있도록 다양한 교육과정을 운영하고 사후관리도 지속하겠다”고 말했다.','동작구, 식품안전관리자 양성 후 취업 지원','..\uploadImages\20211015144407.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',89,'admin',to_date('21/10/15','RR/MM/DD'),'■취업률·실습수업에 강점

지난 9월 30일 방문한 호서직업학교는 일반적인 직업학교와 규모가 달랐다. 이전에 봤던 직업학교는 건물 1~2개동을 사용하는 경우를 많이 봤는데 호서직업학교는 1~3호관의 건물에 2개의 별관, 그리고 기숙사도 보유하고 있었다. 규모만 보면 운동장이 없는 전문대 수준 이상이라고 해도 무리가 없을 정도였다.

이는 학생 규모로도 확인할 수 있다. 호서직업학교의 학생수는 2550명(전문학사 1900명, 학사과정 350명, 국비지원 직업훈련과정 300명)으로 왠만한 전문대 이상의 정원을 확보하고 있다. 전임교원수도 286명에 달하며, 이들 중 96% 이상이 석·박사 이상의 학위와 실무경력을 보유하고 있다.

코로나19 상황속에서도 실습 위주의 수업도 진행하고 있다. 4년제 대학교의 경우 이론과 실습의 비중이 7:3 이라면 호서직업학교는 3:7 비중에 자격증 확보가 목표다.

코로나19 상황이 급박하게 돌아가던 지난해부터 직업계고나 전문대들은 실습 수업에 어려움을 겪었다. 호서직업학교도 지난해까지 실습 수업에 어려움을 겪었으나, 올해 1학기 부분적으로 실습수업을 늘렸고, 2학기부터는 철저한 방역 하에 실습 수업을 확대해 진행중이다. 직업학교의 특성상 실습수업이 부족하면 취업이 쉽지 않다는 판단 때문이다.

김상범 호서직업학교 부학장은 "1993년 개교이래 26년간 기록한 99.1%라는 높은 취업률은 실무중심의 수업과 대외협력센터·학과별 취업담당교수의 추천제 등의 영향"이라며 "실무능력과 인성을 갖추고, 산업 수요에 필요한 맞춤형 인재를 배출하는 것이 학교의 비전이자 목표"라고 말했다.

■반려동물 등 다양한 학과도 주목

호서직업학교는 기존 학교에서 찾을 수 없는 다양한 학과가 강점으로 꼽힌다. 이날 방문한 2호관에는 반려동물과 관련한 시설과 수업들이 진행중이었다. 4층에는 도마뱀, 토끼를 비롯해 다양한 특수동물과 관련 수업이 이뤄졌다. 지하 1층에 위치한 동물행동교정실습실에서는 가정견의 행동교정과 관련한 수업을 진행하는 등 다른 학교에서는 찾아볼수 없는 독특하고 다양한 실습 교육이 진행됐다.

현재 동물병원에 들어서면 진료·치료를 담당하는 수의사와 함께 간호사 격으로 보이는 보조 인력들이 존재하지만, 지금까지 이들에게 별다른 자격요건은 없는게 사실이다. 하지만 내년 3월부터 동물을 전문적으로 다룰 수 있는 자격인 ''동물보건사''가 생긴다. 미국 등 반려동물 문화가 성숙한 국가에서 수의테크니션으로 불리는 전문 인력이 한국에서도 제도화되는 것은 물론 새로운 일자리가 생길 것으로 기대되고 있다.

호서직업학교는 반려동물관리과정과 동물보건관리과정이 있는데 해당과정은 내년도 신설되는 동물보건사 자격증과 연관이 깊다는 점에서 자격증 취득에 유리할 것으로 예상된다.','[현장르포] 실습수업으로 취업 ''99%''… 취업사관학교 명성 이어간다','..\uploadImages\20211015144552.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',91,'admin',to_date('21/10/15','RR/MM/DD'),'그린뉴딜 산업을 선도하는 기업들이 구직자들의 궁금증을 풀어줬던 ''2021 그린뉴딜엑스포'' 잡콘서트가 성공리에 마무리됐다.

행사 마지막 날인 8일에도 그린뉴딜 사업에 대한 현황과 비전을 알아보기 위한 대학생들과 취업준비생들의 발길이 계속됐다. 특히 이날은 SK온을 시작으로 코오롱인더스트리·일진그룹 등 배터리·소재업계 강자들이 차례로 무대에 올랐다.

세 회사는 업계에선 높은 위상을 자랑하지만 기업 간 거래를 이어 온 회사들이라 대중적인 인지도가 낮은 게 사실이다. 이 때문인지 각 회사는 스스로가 어떤 사업을 영위하는지 구체적으로 소개함과 동시에 구체적으로 원하는 인재상을 밝히기도 했다.

SK이노베이션 배터리사업부에서 지난 1일 독립법인으로 출범한 SK온은 이번 잡콘서트를 통해 창사 후 처음으로 취업준비생과 만났다. 이주형 SK온 PM은 각종 설문조사와 지표에서 긍정적으로 평가돼 온 SK이노베이션 인사체계를 그대로 유지할 뜻을 밝혔다.

이 PM은 "SK그룹은 일하는 방식을 바꾸는 데 집착하는 것처럼 여겨질 정도로 변화를 두려워하지 않는 조직"이라며 "직급·연차·나이 등과 관계없이 ''할 말은 하자''는 주의며, 조직 전체의 중요한 의사결정 과정에서 모든 구성원들의 의견이 적극적으로 반영된다"고 소개했다.

유병곤 코오롱인더스트리 인사팀 책임은 "코오롱인더스트리는 수소 운반과 저장, 생산까지 모두 아우를 수 있는 소재와 부품을 만들 것"이라며 "지금은 수소차 연료전지 핵심소재를 만드는 단계지만 앞으론 수전해 발전 사업까지 진출하려고 한다"고 시사했다.

남상모 일진그룹 일사팀 과장은 "일진은 아무도 하지 않고 꺼리는 일을 ''내가 직접 해보자''는 원조 벤처 정신으로 설립된 기업이다"면서 "도전적이고 창조적인 사고로 세계 최고를 지향하는 역동적인 인재를 기다리고 있다"고 강조했다.','"우리 회사는요···" 배터리·수소 강자들이 귀띔한 ''취업꿀팁''','..\uploadImages\20211015144707.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',92,'admin',to_date('21/10/15','RR/MM/DD'),'취업 후에도 상환하지 못한 ''학자금대출 체납액''이 지난해에만 426억원에 이르는 것으로 나타났다. 체납건수가 3만6000여건임을 감안하면 1인당 갚지못한 체납액은 117만원꼴이다.

30일 ''국세통계포털''에 따르면 지난해 기준 취업후 학자금의 총 체납건수는 5만4384건, 체납액은 583억6700만원이었다.

이 중 상환된 1만8148건, 157억1600만원을 제외하고 상환되지 않은 ''미정리체납''은 3만6236건, 체납액은 426억5100만원이었다.

지역별로 보면 경기가 123억300만원으로 미정리 체납액이 가장 많았다. 경기는 건수도 1만430건으로 유일하게 1만건이 넘는 지역이었다.

서울이 9777건, 106억7300만원으로 그 뒤를 이었으며, 인천(2711건, 32억6500만원), 부산(2165건, 28억원) 순이었다. 수도권, 대도시일수록 체납건수와 액수가 높게 나타났다.

학자금대출은 대학 재학생이 한국장학재단에 신청해 받는다. 대출자가 취업해 일정 수준(지난해 기준 2174만원)의 연간 소득을 올리면 다음해부터 대출 상환 의무가 생긴다. 학자금대출이 체납된 것은 일정 소득을 올리던 청년이 실직했거나 다른 생활비 부담 때문에 학자금을 갚지 않고 있는 상태다.

갚지 못한 학자금은 해마다 빠르게 늘고 있다. 2017년 1만2935건, 145억3100만원이던 ''미정리 체납''은 3년만에 3배 수준으로 늘었다.

올해 역시 이같은 추세가 계속되는 모양새다. 올 상반기까지 미정리 체납 건수는 3만6000건, 체납액은 449억원으로 이미 지난해 연간 수치를 넘어섰다.

한편 장기미상환자 역시 빠르게 증가하고 있는 것으로 나타났다. 장기미상환자는 졸업 후 3년이 경과될 때까지 상환내역이 없거나 상환 개시 후 3년까지의 상환이 대출원리금의 5% 미만인 경우로 체납과는 의미가 다르다.

지난해 기준 장기미상환자는 2만5090명에 달했다. 3년 전인 2017년 1만2000여명이었던 것과 비교해 2배를 넘어섰다.','취업 후에도 못 갚은 학자금 426억원…1인당 117만원꼴','..\uploadImages\20211015144919.jpg',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',93,'admin',to_date('21/10/15','RR/MM/DD'),'[헤럴드경제 도현정 기자]현장 기술 전문가를 양성하려는 중소벤처기업부(장관 권칠승)의 기술사관 육성사업이 중도 탈락자가 42%에 이르고, 취업률도 65%에 그치는 등 제 역할을 다하지 못하고 있는 것으로 나타났다.

6일 국회 산업통상자원중소벤처기업위원회 소속 이장섭 더불어민주당 의원은 중기부의 기술사관 육성사업의 중도탈락 비율이 42%라고 지적했다. 기술사관 육성사업은 특성화고(2년)와 전문대(2년)를 연계한 교육과정으로, 중소기업 현장에서 필요한 전문기술인력을 체계적으로 양성하기 위해 시행한 것이다. 지난 2009년부터 도입돼 2012년부터 수료생을 배출했다. 육성사업에 지난 10년간 615억원이 투입되기도 했다.


2011년부터 지난해까지 10년간 기술사관생으로 선발된 인원은 4817명. 이 중 중도 포기한 인원이 2005명에 달한다. 중도 탈락한 사유로는 진로를 바꿨다는 인원이 649명, 수습 과정 중 탈락한 경우가 297명, 부적응으로 중도에 포기한 이들이 289명 순이었다. 대기업에 취업했거나 이를 희망해 중도 포기한 경우도 있었다.

육성사업 전 과정을 마치고 협약 기업에 취업한 학생 비율도 매년 하락 추세다. 2014년 72.8%, 2017년 69.5% 지난해 65.3%까지 떨어졌다. 사업 자체도 위축되는 분위기다. 전문대 9개교, 특성화교 17개교가 협약을 통해 기술사관 육성사업을 진행했으나, 지난 20011년 협약 체결 이후 현재까지 새로운 사업단이 발굴조차 되지 않고 있다.

이장섭 의원은 “중소기업들은 인력난에 허덕이고 있는데, 정부가 마련한 기술사관 육성사업은 전문인력을 체계적으로 양성해 중기를 지원하겠다는 사업취지를 무색시킬 만큼 중도포기자가 많다”며 “중기부 차원에서 사업효과의 극대화를 위한 강력한 대책마련이 필요하다”고 지적했다.','중도 탈락이 42%, 취업률도 65% 그쳐…기술사관육성 ‘공염불’','..\uploadImages\20211015144956.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',96,'admin',to_date('21/10/15','RR/MM/DD'),'금오공업고등학교가 오는 18~21일 2022학년도 신입생을 모집한다.

금오공고는 과정평가형 자격 제도와 해외직업과정, 고교학점제 등 차별적인 교육과정과 높은 취업률로 주목받고 있는 기계·전자 분야 모바일 마이스터고다.

1973년 문을 연 뒤 1만6천124명의 우수한 인재를 배출한 명문고로 2017~2019년 전국기능경기대회에서 잇달아 은탑과 동탑을 차지하는 등 기술·기능인 양성에 독보적인 성과를 거두고 있다.

올해 대전에서 열린 ‘제56회 전국기능경기대회’에서도 기관 종합 2위(은탑)의 성적을 거둬 다시 한 번 경쟁력을 입증했다.

이런 성과를 만든 건 과정 평가형 자격 제도와 고교학점제 등 금오공고의 차별적인 교육 과정이다.

2017년 전국 최초로 도입된 과정 평가형 자격 제도는 이 학교 학생들에게 재학 중 전문학사 수준의 산업기사 자격을 취득할 수 있도록 했다.

금오공고는 올해 한국산업인력공단이 주관하는 산업 기사 과정 평가형 자격 우수교육 인증기관으로 선정되기도 했다.

이 제도를 통해 2018년부터 3년간 금오공고 학생 379명이 기계설계산업기사, 기계가공조립산업기사, 사출금형산업기사, 용접산업기사, 컴퓨터응용가공산업기사, 생산자동화산업기사, 전자산업기사의 모두 7개 종목에서 산업기사 자격증을 받았다.

2018년부터 도입한 ‘고교학점제’도 금오공고가 경쟁력을 다지는 또 다른 동력이 됐다. 정밀기계과, 자동화시스템과, 전기전자과에 입학한 학생들은 1학년 2학기부터 2학년 2학기까지 주전공을 선택해 이수하고, 3학년에 다시 부전공을 선택할 수 있다. 학과와 무관하게 2개의 전공을 가질 수 있는 시스템으로 학생들은 주 전공, 과정 평가형 산업기사 자격 과정을 동시에 해결할 수 있는 혜택을 누릴 수 있다.

독일이 보유한 기술인재 양성 자동화 교육 과정에 참여할 수 있다는 점도 금오공고의 경쟁력 가운데 하나다.

금오공고는 2018년 3월 독일의 자동화 생산기업 훼스토(Festo)와 ‘금오-FACT(훼스토 인증훈련센터) 공동훈련센터 운영 협약’을 맺고 이곳에서 교육과정을 이수한 학생들에게 훼스토 훈련센터가 발급하는 수료증을 받을 수 있도록 했다.

훼스토 훈련센터가 발급하는 수료증은 유럽과 동남아시아 등에서 자격증을 대신할 정도로 공신력이 높아 자격증을 얻으면 국내 뿐 아니라 해외 취업에도 유리하다.

이와 함께 금오공고는 학생들이 ‘미래 사회를 주도할 인성과 역량을 갖춘 따뜻한 인재’로 성장할 수 있도록 인성 교육에도 힘쓰고 있다.

사제동행 자전거 국토 종주, 다양한 동아리(방과 후) 활동과 체험, 특강 프로그램 운영으로 자존감과 공감능력을 높이는 한편, 수업 전·후에 교사와 학생, 학생과 학생들이 서로에게 따뜻한 인사말을 나누도록 하는 등 상호 이해와 배려, 소통을 교내 문화로 정착시키고 있다.

김재천 금오공고 교장은 “재학 중에는 학생들이 능동적이고 주체적으로 혁신을 선도하는 창의 융합형 인재로 성장할 수 있도록 돕고 졸업 후에는 행복한 직장 생활을 할 수 있도록 맞춤형 취업 전략을 수립하는 데 역량을 집중하겠다”고 말했다.','높은 취업률로 주목받는 금오공고…현장실무 중심교육이 ‘비결’','..\uploadImages\20211015145303.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',97,'admin',to_date('21/10/15','RR/MM/DD'),'우리 정부가 세계 최초로 법제화를 통한 소상공인 손실보상을 시작할 예정인 가운데 프랑스의 소상공인 지원을 위한 ‘연대기금’에 관심이 쏠린다. 프랑스는 코로나19 발생 이전에 비해 국내총생산(GDP) 규모는 아직 회복하지 못했지만, 취업자 수는 웃돌고 있다.

 4일 국회 입법조사처의 ‘프랑스 연대기금 사례와 시사점’ 보고서를 보면, 프랑스는 지난해 3월 ‘코로나19 긴급 대응을 위한 법률’을 제정해 연대기금을 조성한 뒤 시행령으로 소상공인과 중소기업 등에 대한 구체적인 지원 방안을 마련했다. 이를 통해 일정 한도 안에서 기준 매출액 대비 감소 매출액 전액 또는 80%를 지원하고 있다. 애초 한달만 한시적으로 운영할 계획이었지만, 코로나19 장기화로 시행령을 고쳐가며 지원을 유지하고 있다.
연대기금은 중앙정부와 지방자치기구가 70억유로(약 9조6천억원)를, 260개 보험사들이 모인 보험협회가 4억유로(약 5000억원)를 내어 조성했다. 이를 이용해 지난해 3∼4월에는 고용 노동자 10인 이하 및 매출 100만유로(약 13억7천만원) 이하 기업과 소상공인 등을 대상으로 집합금지에 따른 매출 감소액을 월 1500유로(206만원) 한도로 전액 보상했다. 이후 7월에는 집합금지 대상이 아니더라도 매출이 50% 감소한 곳이라면 지원했다. 또 10월에는 지원 대상의 매출액 기준을 폐지하고 고용 노동자 50인 이하 기업으로 까지 지원을 확대했다. 올 들어서도 지원을 연장하면서, 쇼핑센터에 입점한 소상공인에 대한 지원 금액은 상향한 바 있다.
이같은 지원은 프랑스가 취업자 수에서 코로나 이전에 비해 빠르게 회복하는데 기여했다. 경제협력개발기구(OECD)가 최근 발표한 ‘중간경제전망’을 보면, 프랑스는 2019년 4분기에 비해 국내총생산 규모는 -3.2%지만, 취업자 수는 1.8% 늘었다. 반면 한국은 같은 기간 국내총생산은 1.4% 웃돌았지만 취업자 수는 0.1% 줄었다.
오건호 내가만드는복지국가 정책위원장은 “자영업자 비중이 많은 한국에서 이들을 적극 지원하는 것은 고용과 사회안전망을 유지하는데 큰 역할을 한다”며 “소상공인 손실보상 기준을 폭넓게 정하고 프랑스처럼 코로나 상황에 따라 적극적으로 대응할 필요가 있다”고 말했다.','코로나에도 취업자 수 회복…프랑스 ‘연대기금’ 눈길','..\uploadImages\20211015145413.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',100,'admin',to_date('21/10/15','RR/MM/DD'),'정부가 매년 수천억원을 들인 청년 일자리 사업에서 참가자 취업률이 절반을 밑도는 것으로 나타났다.

취업에 성공하더라도 60%가 6개월 안에 일을 그만뒀다.
29일 김형동 국민의힘 국회의원이 행정안전부와 고용노동부에서 제출받은 자료에 따르면 ''지역주도형 청년일자리 사업'' 참가자의 6개월 뒤 취업률은 지난해 46.5%였다.

참가자 절반 이상이 사업 종료 후 6개월이 지나도록 일자리를 구하지 못한 것이다. 취업에 성공한 참가자도 6개월 이상 근무한 경우는 40.5%에 그쳤다.

지역주도형 청년일자리 사업은 정부가 청년 취업난 해소와 지역 정착을 유도하기 위해 2018년 시작한 사업이다. 올해까지 7만명 이상의 청년 일자리를 만들겠다며 매년 예산을 2000억원 이상 들였다.

올해는 2만6288명을 모집했고, 2차 추경인원 3000명을 모집하고 있다.

지역주도형 청년일자리 사업은 지역정착 지원형, 민간취업 연계형, 창업투자생태계 조성형으로 나뉜다.

지역정착지원형 사업은 청년에게 지역기업 일자리를 마련해주고 2년 동안 인건비 2400만원 지원한다. 민간취업연계형은 청년들이 관심 있는 업무를 1년간 경험하도록 한 뒤 민간 취업을 연계해준다.

창업자금 1500만원을 지원하는 창업투자생태계 조성형 사업의 창업률은 2018년 85.9%에서 지난해 76.3%로 줄었다.

창업자의 22%는 창업 지원이 끝나고 1년 안에 폐업했다. 창업 후 직원을 1명 이상 고용한 사업장은 36.8%였다.

한편 청년일자리 사업을 시작한 이후 지금까지 발생한 부정수급 사례는 23건이었다. 청년 인건비로 지급한 지원금을 사업장이 일부 되돌려받거나, 청년이 퇴직한 뒤 이를 신고하지 않고 지원금을 챙긴 경우도 있었다.

저조한 취업률에 대해 행안부 관계자는 "행안부 성과지표와 고용부 시스템에 반영되는 (취업률) 수치들이 다르다"며 "내년부터 고용부에서도 평가 기준 변경을 검토하고 있다"고 설명했다.

그러면서 "민간취업연계형의 경우 업무를 경험한 뒤 학교로 돌아가거나 창업하는 경우도 있는데 고용부에서는 이를 (취업률이 높은) 지역정착지원형과 한데 묶어서 평가한다"며 "6개월 안에 다른 기업으로 이직한 경우도 반영이 안 된다"고 말했다.

고용부는 사업 종료 6개월 뒤 지역정착지원형과 민간취업연계형 사업 취업률을 함께 평가한다.
반면 행안부는 사업 종료 직후 지역정착지원형 사업의 정규직 전환율, 민간취업연계형의 취업연계율을 각각 성과지표로 활용하고 있다.

지역정착지원형의 정규직 전환율은 2018년 69%에서 지난해 62.9%로 감소했다. 민간취업연계형 사업의 취업연계율은 같은 기간 42.5%에서 64.4%로 늘었다.

김형동 의원은 "문재인 정부는 공공일자리가 민간일자리로 이어지는 다리역할을 할 수 있다면서 막대한 돈으로 일자리를 만들어왔지만 여전히 단기·공공일자리에 머물러있다"며 "정책 실패를 인정하고 철저한 원인분석을 통해 재정지원 일자리사업의 체질개선을 실시해야한다"고 지적했다.','[단독] 年2000억 들인 정부 일자리 사업, 참가자 절반도 취업 못해','..\uploadImages\20211015150102.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',101,'admin',to_date('21/10/15','RR/MM/DD'),'4년제 대학을 졸업하고도 취업을 위해 전문대학에 다시 들어가는 이른바 ''유턴'' 입학이 해마다 늘고 있습니다.

실제로도 전문대의 평균 취업률이 일반대를 훨씬 웃도는데요.

하지만 올해도 전문대는 대규모 미달사태를 걱정하고 있습니다.

김계애 기자가 보도합니다.

[리포트]

산업 현장에서 기계 부품의 강도와 성능을 확인할 때 쓰는 컴퓨터 프로그램을 학생들이 익히고 있습니다.

기업과 전문대학 간 협약으로 이처럼 실무 맞춤형 수업을 이수하면 재학생은 취업 기회를 얻습니다.

[서민성/경남정보대 2학년 : "저는 졸업을 하기 전에 취업하기 위해 자격증 준비를 계속하고 있는데 학교에서 자격증 준비반을 많이 설계하고 참여해서…."]

특히 최근에는 반도체 수요가 폭발적으로 늘어 관련 인재 양성을 위한 반도체학과도 신설됐습니다.

관련 인력이 부족한 상황이라 입학과 함께 취업이 보장되는 셈입니다.

[임준우/경남정보대 산학협력단장 : "일반대 학생들은 반도체 공정 쪽으로 직군이 정해져 있고, 전문대 학생들은 반도체를 만드는 장비를 관리·유지하는 쪽으로, 또 교육과정을 통해 반도체 장비 제조 기업으로 저희 학생들을 배출해서…."]

전문대의 평균 취업률은 해마다 조금씩 늘어 70%대를 유지하고 있습니다.

같은 기간 4년제 일반대 취업률을 훨씬 웃도는 수준입니다.

상대적으로 높은 취업률에도 불구하고, 학령인구 감소로 인한 여파는 4년제보다 전문대에 더 큰 충격을 주고 있습니다.

전국적으로 전문대 신입생 모집 규모는 4년제의 3분의 1 수준, 하지만 올해 미충원된 전체 신입생 3만여 명 가운데 절반 이상이 전문대에서 나왔습니다.

수험생이 수도권, 4년제로 연쇄 이동한 데다 4학기째 이어지는 코로나19 장기화도 영향을 준 것으로 보입니다.

[강문상/한국전문대학교육협의회/연구소장 : "전문대학은 실습과목이 70% 이상이고 거의 현장실습이 필수로 돼 있어요. 코로나 때문에 현장실습을 못 나가는 상황에서 (어려움이 많죠)."]

최근 수시모집에서 부산지역 8개 전문대가 모집 인원을 10% 이상 줄이며 안간힘을 쓰고 있지만, 지난해에 이어 올해도 미달 사태를 피하기는 어려워 보입니다.','높은 취업률에도 외면…전문대 우울한 전망','..\uploadImages\20211015150205.jpg',4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',102,'admin',to_date('21/10/15','RR/MM/DD'),'''메타버스(Metaverse)''가 대기업 신입사원 채용 과정에서 대세로 자리 잡고 있다. 가상세계에서 쌍방향 의사소통이 가능하다는 장점 덕분이다. 일부 대기업은 메타버스를 활용해 채용 설명회를 개최하는 것은 물론 신입사원 단체교육까지 대체하기 시작했다.

4일 매일경제가 국내 10대 그룹을 대상으로 조사한 결과 대다수 그룹은 메타버스를 인재 모집과 육성 창구로 활용하고 있다.

삼성그룹은 "올 하반기 3급 신입 채용에서 MZ세대(밀레니얼·Z세대) 구직자들과 적극적으로 소통하기 위해 메타버스 플랫폼을 활용한 일대일 직무상담을 실시했다"고 전했다. 삼성전자가 메타버스 플랫폼을 활용해 취업 지원자들과 소통하는 것은 이번이 처음이다. 취업준비생들은 지난달 삼성전자 채용 블로그를 통해 신청한 뒤 메타버스에 입장해 관심 있는 사업부에 대해 일대일 직무상담을 받고 사업부별 직무 소개 영상도 신청할 수 있었다.

현대자동차 관계자는 "비대면 환경에서 구직자에게 채용 정보를 제공하기 위해 유튜브 채널, 사회관계망서비스(SNS)뿐 아니라 메타버스 플랫폼을 활용하고 있다"며 "지난달 연구개발 부문에서 메타버스로 채용 설명회를 하는 등 전사적 차원에서 메타버스를 이용하고 있다"고 설명했다.



SK그룹 역시 "코로나19 등 비대면 환경에서도 효율성과 공정성을 높일 수 있는 다양한 도구를 활용하고 있다"며 "서류·필기 전형에서 일부 계열사들이 인공지능(AI)을 활용하는 한편 메타버스를 채용 설명회와 그룹 신입사원 연수에 적극 활용하고 있다"고 말했다.

LG그룹은 "온라인 가상공간에서 실시간, 쌍방향 소통이 회사와 지원자 사이는 물론 지원자 간에도 활발히 이뤄지기 때문에 만족도가 높은 것으로 판단하고 있다"며 긍정 평가를 내리기도 했다. 이에 대해 인크루트 관계자는 "대기업뿐만 아니라 중소기업을 포함한 814개사를 대상으로 설문조사한 결과 비대면 채용 솔루션 도입을 희망하는 기업은 35%가 넘었다"며 "메타버스를 활용한 채용 설명회를 개최할 의지가 있다는 기업도 26.7%에 달했다"고 전했다.','"우리 회사 왜 오고 싶어요?"…"사내 교육은 비대면으로" , 메타버스서 취업설명회·신입사원 연수까지','..\uploadImages\20211015151704.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',105,'admin',to_date('21/10/16','RR/MM/DD'),'드라마 ‘갯마을 차차차’의 주인공 혜진은 명문대를 졸업한 치과의사다. 남부러울 것 없는 삶이지만 서울에서의 의사 생활도 녹록지 않다. 어릴 적 추억을 찾아 한 바닷가 마을로 여행을 떠난 그녀는 내친김에 그곳에 치과를 개원하고, 정착한다. 혜진이 마을에서 만난 두식은 뚜렷한 직업 없이 마을 사람들의 일거리를 도와 ‘홍반장’으로 불리지만 알고 보면 서울대 출신의 엘리트다. 복잡한 도시생활을 과감히 벗어던지고 시골 동네를 찾은 두 청춘의 로맨스는 이 시대 청년들이 꿈꾸는 새로운 이상향을 반영한 듯하다.

지난해 귀농·귀촌 행렬 가운데 30대 가구수는 전년 대비 12.7% 늘어난 1362가구로 역대 최대를 기록했다. 30~40대 젊은 층의 귀농 비중은 최근 몇 년간 꾸준히 증가했다. 이들이 농촌에서의 삶을 택한 이유는 다양하다. 학창시절부터 이어진 무한경쟁은 직장에 들어가서도 계속되고, 그마저도 취업은 하늘의 별따기다. 치솟는 집값과 물가는 청춘들을 자꾸만 도시 밖으로 밀어낸다.

코로나19 확산으로 인한 ‘집콕 생활’이 길어지자 가뜩이나 팍팍했던 도시에서의 생활이 더욱 숨통을 옥죈다. 코로나 블루에 지친 청춘들의 지난 여름 휴가 트렌드는 ‘촌캉스(시골+바캉스)’였다. 드라마 속 주인공처럼 여행 삼아 떠난 그곳에 반해 귀농·귀촌을 꿈꾸기도 한다.

청년귀농은 단순히 젊은 농부가 되는 것에서 ‘반농반X’와 농업 분야 스타트업 등으로 진화하고 있다. 낮에는 농사짓고 밤이면 식당 운영이나 미술 교습 등 원하던 일을 하는 반농반X는 ‘워라밸(일과 삶의 균형)’을 중시하는 청년 세대에게 매력적인 대안이다. 강남 병원의 의사 선생님도, 호텔 쉐프를 꿈꾸던 젊은 요리사도 예외는 아니다. 농촌을 창업의 장으로 이용하는 경우도 드물지 않다. 안해성(38) 포천딸기힐링팜 대표는 연봉 8000만원의 건설사 연구직을 그만두고 지난해부터 스마트팜을 운영하고 있다. 그는 “인공지능과 빅데이터를 활용하는 스마트팜은 어느 분야 못지않은 첨단 분야”라고 말했다. 미대를 나온 디자이너가 고향으로 돌아가 온라인장터를 창업하기도 한다.','30대 귀농 13% 증가, 창업하듯 첨단영농 몰두','..\uploadImages\20211016011842.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',106,'admin',to_date('21/10/16','RR/MM/DD'),'14일(현지시간) 일본 ''니혼게이자이'' 신문은 일본의 저출산·고령화가 심화되면서 최근 정년을 폐지해 일할 의사가 있는 고령 사원을 적극 활용하는 기업이 증가하는 추세라고 밝혔다.

실제, 일본 가전제품 판매 대기업인 노지마는 이달부터 80살이던 정년을 아예 없애면서 신규채용에서도 80세 이상의 직원을 채용하기로 했다. 나이가 많더라도 건강에 문제가 없다면 일하고 싶을 때까지 할 수 있다는 뜻이다.

일본 내 고령자 고용의 선도 기업으로 꼽히는 노지마는 앞서 지난해 7월 65살 정년 뒤 80살까지 1년 단위로 계약을 연장하는 방식으로 정년을 늘렸다. 하지만 현장에서 80살이 넘어도 계속 일하고 싶다는 요구를 받아들이면서 이번 개선에 나선 것이다.

일본 기업이 정년 폐지 등 고령 노동자를 적극 고용하는 데는 정부의 노력도 한 몫 했다. 일본 정부는 지난 2013년 노동자가 희망하면 65살까지 고용을 하도록 법을 개정한데 이어 지난 4월 기업이 노동자의 취업 기회를 70살까지 보장하도록 노력할 것을 의무화한 ‘고령자고용안정법’이 시행한 바 있다.

이에 따라 지난해 6월 기준 70세 이상 고령자도 일할 수 있도록 제도를 준비하고 있는 일본 기업은 31.5%로 집계됐다. 이는 조사를 시작한 2007년 이래 가장 높은 수치로 현재는 비율이 더 높아졌을 것이라는 관측이다.

일본의 파격적인 조기 정년 논의는 한국에도 시사하는 바가 크다. 한국은 15~20년의 시차를 두고 일본의 인구구조를 따라가고 있기 때문이다. 이에 대해 전문가들은 조기 정년제가 기업에 새로운 인재를 활용할 기회는 확대해줄 수 있겠지만, 한국의 노후보장 시스템을 고려하면 어렵다는 의견이다.

이와 관련해 이종선 고려대학교 노동문제연구소 부소장은 "서구 유럽처럼 사회복지가 완비되지 않은 상황에서 우리나라의 정년제는 일종의 사회적 안전망 기능을 수행한다"며 "조기 정년제가 기업에는 경직된 고용구조를 유연하게 해줄 수 있겠지만, 노동자들에게는 고용 불안정과 일자리에 대한 스트레스로 작용할 가능성이 크다"고 전했다. ','''80세 신입도 환영'' 日기업, 줄줄이 정년 폐지…한국은?','..\uploadImages\20211016012004.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',108,'admin',to_date('21/10/16','RR/MM/DD'),'최태원 SK그룹 회장과 김부겸 국무총리가 조만간 회동할 예정인 가운데, 최 회장이 청년 고용문제 타개책으로 어떤 일자리 창출 방안을 내놓을지 관심이 쏠린다. 올해 들어 최 회장은 기업에서도 세대교체가 활발히 이뤄지고 있는 점을 감안해 MZ세대(1980년대 초~2000년대 초 출생) 인재 확보에 총력을 기울이고 있다.

앞서 최 회장은 경제계를 대표하는 대한상공회의소 회장 자격으로 김부겸 총리를 만나 기업과 정부의 협력에 물꼬를 튼 적이 있는데, 이번 회동을 계기로 민관 협업이 더욱 본격화할 것이라는 기대감이 커지고 있다.

15일 재계와 SK그룹 등에 따르면, 최태원 회장과 김부겸 총리는 오는 25일 SK하이닉스 이천캠퍼스에서 만나 청년 일자리 확대 방안을 논의할 예정이다.

김 총리는 최근 기업들과 함께 청년 일자리를 만들기 위한 ‘청년희망ON’ 프로젝트를 의욕적으로 추진하고 있다.

앞서 김 총리는 이재용 삼성전자 부회장과 지난달 14일 서울 강남구 ‘삼성 청년 소프트웨어 아카데미(SSAFY)’ 서울캠퍼스에서 간담회를 갖고 청년 일자리 창출 방안을 논의했다. 이날 삼성은 정부와 파트너십을 맺고 3만개의 청년 일자리 창출 효과를 갖는 사회공헌 계획을 발표했다. 김 총리는 오는 21일에는 구광모 LG그룹 회장과 서울 마곡 LG사이언스파크에서 회동할 예정이다. 이어 이르면 내달 초 정의선 현대차그룹 회장과도 만날 것으로 관측된다.

최태원 회장은 지난 6월 경제계를 대표하는 대한상공회의소 회장 자격으로 김부겸 총리를 만나 경제 현안에 대해 논의한 바 있다. 당시 간담회에선 경제5단체장이 김 총리에게 ▲중대재해기업처벌법 보완 ▲탄소중립 이행에 대한 세제 혜택 ▲불필요한 규제 개선 등을 건의했다.

최 회장은 간담회에서 “기업들의 얘기를 들어보면 음식·여행·문화 등 내수업종은 상당수 적자 운영 중이고 고용과 실업률 지표도 여전히 부진하다”며 “더구나 청년실업률이 높아 기업하는 입장에서 마음이 아프다”고 말했다. 그러면서 그는 “코로나로 상처 입은 국민에게 위로와 희망을 주고 내려앉은 경제를 부스트시킬 수 있는 방법을 논의했으면 한다”며 “정부와 민간이 함께 성과를 내는 ‘윈윈(Win-Win)’의 파트너십을 기대한다”고 밝혔다.','최태원 SK 회장이 김부겸 총리에게 전할 ‘MZ세대 취업난’ 해결책은?','..\uploadImages\20211016012221.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',110,'admin',to_date('21/10/16','RR/MM/DD'),'전남 여수의 한 선착장에서 10월 6일 현장실습을 하던 특성화고 3학년 홍정운 군이 숨졌습니다. 여수해경 등에 따르면, 홍 군은 7톤 요트 바닥에 붙은 따개비 등을 제거하는 수중작업 중 사망했습니다. 홍 군은 잠수작업을 하다가 장비를 정비하기 위해 잠시 수면 위로 올라왔고, 산소통과 오리발을 잇따라 벗어 업주에게 건넸습니다. 그러나 기초교육 없이 잠수작업에 내몰렸던 홍 군은 몸을 가라앉게 만드는 납벨트를 제일 먼저 해체해야 하는 안전순서도 모른 채 차고 있던 12kg 납벨트 무게로 인해 물 속에서 나오지 못한 것으로 알려졌습니다.

이번 사고는 교육부 관련 규제 완화, 업주의 안전지침 및 근로기준법·청소년보호법 위반 등에 따른 ''인재''라는 지적을 받고 있습니다. 교육부는 현장실습 기업 선정 절차 등을 완화했고, 미성년자는 위험업무인 잠수에 고용될 수 없지만, 업주는 관련 자격증도 없는 홍 군에게 잠수업무를 시켰습니다. 실습계획서에 따르면 홍 군은 잠수가 아닌 관광객 안내 업무를 맡았어야 합니다.

2016년 구의역 스크린도어 수리 중 사망한 김 군, 2017년 전주 콜센터 상담원으로 일하다 숨진 10대, 같은 해 제주 생수공장에서 기계에 몸이 끼여 사망한 이민호 군 모두 특성화고 실습생이거나 실습 나간 업체에 고용된 노동자였습니다. 사회 무관심 속에 특성화고생 죽음이 또 다시 발생한 것입니다.

민주언론시민연합은 언론이 여수 특성화고생 실습생 사망 소식을 충분히 전하고 있는지, 재발 방지를 위한 보도를 하고 있는지 살펴봤습니다.

매경·한경·SBS·채널A·MBN 관련보도 ''0건''

민언련은 2017년 생수공장 현장실습생 고 이민호 군이 사망했을 당시 모니터보고서 <현장실습생 사망에도 ''특성화고 취업률''만 강조하는 조선과 동아>(2017년 11월 24일)를 통해 언론보도를 분석한 바 있습니다. 경향신문, 동아일보, 조선일보, 중앙일보, 한겨레, 한국일보 6개 일간지 중 ''조중동''은 관련 보도를 한 건도 싣지 않았고, 특성화고생 노동환경은 외면한 채 특성화고 취업률이 높아졌다는 교육부 보도자료만 실었습니다.','여수 특성화고생 사망 보도, 외면하거나 소극적이거나','..\uploadImages\20211016012418.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',111,'admin',to_date('21/10/16','RR/MM/DD'),'정부가 4단계 기준 사적모임 인원을 최대 8명까지 늘리는 내용의 새로운 거리두기 적용수칙을 발표했습니다. 다음달 ''위드코로나'' 전환 앞두고 마지막 거리두기 조정을 한 건데요. 방역체계 변화에 골목상권 기대감도 높습니다. 이유민 기자의 보돕니다.

[기사내용]
다음 주부터 사회적 거리두기 방침이 일부 완화됩니다.

정부는 오늘(15일) 이달 31일까지 수도권 4단계, 비수도권 3단계의 현행 사회적 거리두기를 유지하는 대신 일부 완화된 방역 수칙을 공개했습니다.

먼저, 4단계 지역 기준 최대 6인까지만 가능했던 사적 모임이 미접종자 4인을 포함해 8명으로 늘어납니다.

스터디카페, 영화관의 영업시간은 자정까지로 연장되고, 수도권을 제외한 3단계 지역의 경우 식당과 카페의 영업도 자정까지 가능해집니다.

정부는 이번 사회적 거리두기 조정안을 두고 단계적 일상회복, 이른바 ''위드코로나''시대를 위한 징검다리 역할이라고 설명했습니다.

[이기일 / 중앙재난안전대책본부 제1통제관: 단계적 일상회복으로 전환하기 위해서 징검다리격인 기간이라는 점도 우선 고려했습니다. 향후 2주간의 예방접종이 차질없이 확대되고, 방역상황을 안정적으로 관리할 수 있다면 11월부터의 본격적인 새로운 방역체계 전환이 가능해질 것입니다. ]

이 같은 방역체계의 전환 움직임은 골목상권에 벌써부터 영향을 주고 있습니다.

영업장의 고용에도 변화가 생기는 분위깁니다.

코로나 이후로 바닥을 찍었던 숙박 및 음식점업 취업자 수도 전년 동기 대비 1.9% 증가했습니다.

[노민선 / 중소벤처기업연구원 미래전략연구단장: 이번 사회적 거리두기 완화는 코로나19 이전 일상으로의 회복을 위한 중요한 출발점이라고 할 수 있습니다. 영세 소상공인의 경영환경이나 고용에도 긍정적일 것으로 예상이 되고요. 하지만 당분간 방역과 경제의 조화라는 관점에서 각 주체들의 노력이 계속될 필요가 있습니다.]

위드코로나로의 방역 체계 변화가 골목상권의 영업 환경은 물론 고용에도 긍정적 영향을 줄 수 있을 지 귀추가 주목되고 있습니다.','''위드 코로나'' 기대감↑…골목상권 일자리도 ''들썩''','..\uploadImages\20211016012520.png',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',113,'admin',to_date('21/10/16','RR/MM/DD'),'정부가 4개월 연속 ''경제 불확실성''을 언급하며 경기 회복 둔화에 따른 우려감을 내비쳤다. 전 세계 공급망 붕괴 등 인플레이션 압박이 커지며 이달 소비자물가가 3%대로 치솟을 수 있다는 전망도 나왔다.

특히 최근 미국·중국 등 주요국 경제성장 전망이 줄줄이 낮아진 가운데 한국 경제도 올해 4%대 성장을 할 수 있을지에 대한 우려가 커지고 있다.

기획재정부는 15일 발간한 ''10월 최근 경제동향(그린북)''을 통해 "최근 한국 경제는 견조한 수출 호조세가 이어지는 가운데 고용이 큰 폭으로 증가했으나 대면 서비스업의 불확실성이 지속되고 있다"고 총평했다.

기재부는 "세계 경제 회복세가 이어지고 있지만 원자재 가격 상승에 따른 인플레이션 우려와 공급망 차질 등으로 회복 속도가 둔화될 가능성이 제기된다"고 분석했다.

기재부는 코로나19 4차 확산이 본격화한 7월 그린북에서 ''내수 불확실성''을 언급한 이후 4개월 연속 불확실성이라는 표현을 썼다.

다만 이번에는 내수 전반의 불확실성 대신 대면 서비스업으로 대상을 한정했다. 김영훈 기재부 경제분석과장은 "코로나19 영향이 잦아든 대신 대외 불확실성은 조금 커지고 있는 것으로 보인다"고 말했다.

겉으로 보이는 고용 지표는 양호하다. 9월 전국 취업자는 2768만3000명으로 전년 동기 대비 67만1000명 늘었다. 7년6개월 만에 가장 큰 증가폭이다. 이억원 기재부 1차관은 "5만4000명이 고용 시장에 추가로 복귀하면 코로나19 위기 이전 고점인 지난해 2월 취업자 수와 같다"고 전했다. 9월 수출액도 전년 동기 대비 16.7% 늘어난 558억3000만달러를 기록했다.

하지만 정부는 최근 급변한 대외 변수가 이 같은 경기 회복세에 찬물을 끼얹을 것을 우려하고 있다. 전 세계 코로나19 재확산과 중국 전력난으로 인한 공급망 교란, 물류 대란이 인플레이션 압력을 키우고 있기 때문이다. 통계청에 따르면 9월 소비자물가는 국제유가 등 급등에 전년 동기 대비 2.5% 올랐다.','이번엔 소비쿠폰?…위드코로나에 잠정중단 정책 만지작','..\uploadImages\20211016012643.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',114,'admin',to_date('21/10/16','RR/MM/DD'),'[잡포스트] 전진홍 기자 = 비대면 코로나19 시대에도 큰 위기 없이 밥벌이를 해낸 산업이 있다. 바로 게임산업이다.

한 게임업계 관계자는 “게임 플랫폼 산업은 개방성과 가능성이 있다”며 “재미있는 게임 하나를 만들어 지식재산권(IP)을 보유하면 원 소스 멀티 유즈가 가능하다. 드라마·웹툰·소설 같은 다른 장르 콘텐츠로 연계되고 다양한 세대들이 주목하는 콘텐츠가 바로 게임이다”고 전했다.

아울러 “게임산업은 한계 비용이 0원이다. 제조업은 사용자가 늘면 재료비와 인건비도 증가하지만 게임산업은 서비스에 사용자가 10명일 때와 1만 명일 때 소요되는 비용 차이가 없다”고 덧붙였다.

구글이나 애플의 앱스토어에서 많은 개발자들이 자기 게임을 올리고 돈과 유명세를 타고 있다.

게임개발자들은 ‘데뷔 무대’가 돼 줄 플랫폼이 늘어나고 있어 게임산업 자체에 다양한 기회를 만날 수 있다는 것이 게임전문가들의 의견이다.
또 다른 게임업계 관계자는 “주요 게임사들이 대작들을 연이어 선보일 예정이다”며 “크래프톤의 독립 스튜디오인 라이징윙스는 RTS게임 ‘캐슬 크래프트’를 글로벌 전역에 출시하고 엔드림은 계속해서 인기 IP를 SLG에 접목하는 시도를 전개해나간다”고 설명했다.

이러한 상황 속에 게임개발자전문학원인 서울게임아카데미 부산캠퍼스 게임개발자 과정은 게임에 대한 기본적인 학습부터 심화학습, 취업을 위한 포트폴리오 준비 등 개인별로 맞춤 상담을 통해 진행하고 있다.

게임개발자 과정으로 게임기획, 게임프로그래밍, 게임원화, 게임3D그래픽 등 게임개발자 교육을 전문적으로 진행하고 있으며 대부분의 수업이 국비로 진행되고 있다. 웹툰, 이모티콘 과정도 최근 국비 승인을 인증받아 운영하고 있다고 관계자는 밝혔다. 부산게임학원 서울게임아카데미 부산캠퍼스 홈페이지에서 확인할 수 있다.','플랫폼 산업의 강자 게임개발, 서울게임아카데미 부산캠퍼스 게임개발자 교육','..\uploadImages\20211016012725.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',117,'admin',to_date('21/10/16','RR/MM/DD'),'최근 국회 국정감사 자료에 따르면 군 당국이 ‘사이버 전쟁’에 대비해 집중 조련한 전문 인력들이 군을 떠나고 있는 것으로 나타났다.

특히 대학과 연계한 ‘사이버전문사관’ 제도를 통해 전액 장학금까지 주면서 장교들을 길러냈지만, 군에 남겠다는 인원은 고작 7%. 고도의 전문성이 필요한 사이버안보 분야 인재 확보에 비상등이 켜졌다는 지적이다.

15일 국회 국방위원회 소속 조명희 국민의힘 의원이 국방부로부터 제출받은 자료에 따르면, 최근 5년간 사이버전문사관 장기복무 지원 대상자 100명 가운데 장기를 신청한 장교는 7명에 불과했다.

국방부는 사이버안보에 특화된 인력을 확보하고자 2012년 고려대와 함께 해킹과 전자정보전 등을 교육하는 ‘사이버국방학과’를 만들어 운영해 오고 있다. 매년 30명을 선발하는데, 4년간 전액 장학금을 지급하며 학생들은 졸업 후 사이버전문사관(장교)으로 임관해 7년 동안 의무 복무한다.

현재 장기복무 지원 자격은 2016~2019년 임관한 사이버전문사관 1~4기까지 주어졌으나 지금까지 지원자는 1기 1명, 2기 1명, 3기 4명, 4기 1명에 그쳤다. 나머지 93명은 의무복무를 마치면 민간기업 취업 등을 통해 군을 떠날 예정이다.

문제는 갈수록 점증하는 국방 분야의 사이버 공격 추세를 감안할 때 이들의 직업선택 자유를 마냥 방관할 수 없다는 점이다. 최근 5년간 군을 상대로 한 해킹 시도는 연평균 7,800여 건에 이른다. 2017년 3,986건에서 2020년 1만2,696건으로 해마다 급증하고 있다.

조명희 의원은 “북한과 비교해도 우리 군이 보유한 사이버전 인재는 턱없이 부족하다. 북한의 사이버전 전담인력은 6,800여 명(2020년 국방백서) 규모로 알려져 있고 국방부 사이버작전사령부 정원이 1,000여 명인 점을 고려하면 7배나 많다”며, “이마저도 절반 이상(53%)이 ‘초급’ 수준이어서 실제 작전에 투입되기에는 능력이 한참 떨어진다. 군이 애써 양성한 소수정예 인력만큼은 놓쳐선 안된다”고  지적했다.
','軍 해킹 시도 폭증... "사이버전 전문인력 93%가 떠난다"','..\uploadImages\20211016013015.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',120,'admin',to_date('21/10/16','RR/MM/DD'),'한국직업능력연구원(원장 류장수)은 10월 15일(금) ‘KRIVET Issue Brief’ 제219호 ‘국내 대학원의 진로 지원과 학위에 대한 외국인 유학생의 인식’을 발간했다.

한국직업능력연구원의 주요 발표내용은 다음과 같다.

향후 외국인 유학생 정책 정비를 위해 한국직업능력연구원에서 실시한 ‘대학원 학위과정 외국인 유학생의 진로선호 탐색과 인적자원 활용 방안 연구(2020)’의 ‘국내 취업 외국인 유학생 설문조사’ 응답자 650명(석사학위 취득자 426명, 박사학위 취득자 224명)을 분석했다.

분석 결과, 국내에 취업한 고학력 외국인 유학생은 우리나라 대학원의 진로 정보 제공 수준, 상담 및 진로 전문 인력 등이 충분하지 않다고 인식하며(평균 2.51~2.90점/5점 만점), 특히 수도권 대학원 출신 유학생에게서 이러한 인식이 두드러졌다.

국내 대학원의 석·박사학위에 대한 가치는 긍정적으로 인식하는 편이며(평균 3점 이상/5점 만점), 석사학위 취득자에 비해 박사학위 취득자가 국내 취득 학위에 대해서 더 우호적인 인식을 가지고 있다. 반면 수도권 대학원 출신과 비수도권 대학원 출신 간의 인식 차이는 거의 없는 것으로 나타났다.

민숙원 한국직업능력연구원 연구위원은 “인구 절벽 시대에 역량 있는 외국인 인적 자원을 우리나라 대학원에 지속적으로 유치하기 위해서는 유학생들의 교육적 요구를 반영하기 위한 고등교육기관의 노력이 중요하다”며 “특히 학생들의 원활한 노동시장 진출 및 이행을 조력하기 위한 진로 교육 프로그램 및 인력 확충이 필요하다”고 말했다.

한편 1997년 직업 교육과 직업 훈련의 연계와 통합이라는 사회적 요구에 부응하기 위해 설립된 한국직업능력연구원은 국민의 일상생활에 필요한 교육과 고용 분야에 대한 정책 연구와 프로그램 개발을 수행하고 있다.','국내 취업 석·박사 외국인 유학생의 국내 대학원 진로 서비스 조사','..\uploadImages\20211016013213.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',121,'admin',to_date('21/10/16','RR/MM/DD'),'울산교육청이 최근 현장실습 중 사망한 전남 여수 특성화고 3학년 학생의 사고를 계기로 직업계고 학생들의 현장실습 운영 현황을 전수조사한다.

시교육청은 18일부터 30일까지 학교와 기업체에서 지도·점검을 벌인다고 15일 밝혔다.

학교를 대상으로 △현장실습 전 사전교육 실시 여부 △현장실습운영위원회 개최 여부 △순회지도 결과보고서 △상시 점검 현황 등을 조사한다.

기업 현장에서는 교육청 관계자, 노무사, 학교 담당자가 합동으로 표준협약서 준수, 안전한 환경, 인권침해 여부 등을 중점 점검한다.

울산지역에서는 특성화고와 마이스터고 11개교 학생 347명이 기업체 137곳에서 현장실습 중이다. 2018년부터 올해 현재까지 울산에서는 현장실습생 산업재해는 발생하지 않았다.

전수조사 결과 의도적인 불법과 개선 권고를 수용하지 않는 기업은 즉시 학생 현장실습을 중단하고 지방고용노동관서와 협업해 관련법(직업교육훈련촉진법 등)을 엄격하게 적용할 예정이다.

시교육청은 직업계고 학생들에게 안전한 현장실습 환경을 제공하기 위해 현장실습 전후로 지도점검도 강화하고 있다. 학교전담노무사, 학교, 교육청 합동 점검 이후 학교 취업지원관, 담당교사 점검을 2차로 진행하고 있다.

직업계고 학생들이 현장실습 과정에서 겪는 어려움에 즉각적으로 대처할 수 있도록 현장실습생 실시간 점검 체계도 강화했다.

시교육청은 현장실습 프로그램 운영이 가능하고 실습 여건과 고용환경이 우수한 업체를 선도기업으로 지정해 기업 정보를 학교에 제공하고 있다.

선도기업 선정 때는 노무사, 교육청, 학교담당자가 동행해 1차로 안전 점검을 진행한 뒤 선도기업 선정 지역협의체에서 선도기업 선정을 심의해 안전 등 결격사유가 없는 기업을 선도기업으로 인정한다.

지역협의체는 △산업안전보건공단 △고용노동부 △중소벤처기업청 △산업단지공단 △울산광역시 일자리재단 △공인노무사 △직업계고 취업부장 △교육청 담당자로 구성했다. 또한 매달 지역협의체를 열어 선도기업을 선정하고 있다.','울산교육청, 직업계고 학생 현장실습 전수조사','..\uploadImages\20211016013248.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',122,'admin',to_date('21/10/16','RR/MM/DD'),'여야는 15일 산업통상자원중소벤처기업위원회 국정감사에서 한국가스공사를 향한 질의를 쏟아냈다. 이 과정에서 대장동이 언급되면서 여야 간 설전도 벌어졌다.

국민의힘 김정재 의원은 이날 산업통상자원부 공공기관을 대상으로 열린 산자위 국감에서 “월성1호기 조기폐쇄는 대통령의 공약을 지키기 위해 수명이 남은 멀쩡한 원전을 강제로 폐쇄시킨 희대의 사건”이이라고 말했다.

그러면서 “공무원으로서 지켜야 할 법과 절차를 무시하고 경제성까지 조작한 막가파식 밀어붙이기였다”며 “그 중심에는 채희봉 가스공사 사장이 있다. 모두 공소장에 있는 내용이다”고 덧붙였다.

특히 김 의원은 “월성1호기 조기폐쇄는 대장동게이트와 닮았다”며 “채 사장, 백운규 전 산업부 장관, 정재훈 한수원 사장이 있듯 대장동게이트에도 3인이 있다. 두 사건은 닮았고 같은 패턴이다”고 주장했다.

이에 채 사장은 “지금 주장하는 내용이 공소장 어디에 나와 있는가”라며 “월성 1호기는 서울 행정법원에서 안전하지 않은 발전소라고 판결이 있었고, 경제성 조작에 관여하라고 지시한 적도 없는데 사실관계를 반대로 말하고 있다”고 반발했다.

여야는 이 과정에서 ‘피감기관의 국회 역질문’을 두고 충돌했다.

국민의힘 권명호 의원은 “국감을 준비하면서 자료가 부족하면 언론 보도에 의존할 수 있다”며 “보도의 사실관계가 맞지 않으면 언론중재위원회에 제소하면 되는 것이고 질의에 되묻고 근거를 대라는 자세는 피감기관으로서 맞지 않다”고 했다.

반면 더불어민주당 신정훈 의원은 “국감은 정부 공공기관이 적절히 업무를 수행하며 국민을 위해 일하는지를 물어야 한다”며 “그런데 이번 국감은 정책국감이 아니라 지나친 정치국감이 되고 있다”고 비판했다.

이어 “사실이 아닌 것으로 윽박지르고 인정하라고 하면 되는가”라며 “재판을 받는 사람들에게 공무원이라는 이유로 언론에 보도된 각종 허위사실을 인정하라고 하는 것은 맞지 않다”고 말했다.

설전 이후 신 의원은 뇌물수수 혐의로 해임된 장석효 전 가스공사 사장 사례를 언급하며 공사 비위 직원들의 유관기관 재취업 문제를 지적했다.

신 의원은 “장 전 사장 사건에 관련된 가스공사 임직원 4명이 다 해임됐는데 이들은 다시 유관기관에 재취업했다”며 “이런 유착관계가 고질화되면 사장이라도 직원을 통제할 수 있겠는가”라고 물었다.','‘월성1호·비위 직원 재취업’...여야, 가스공사 집중타','..\uploadImages\20211016013327.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',126,'admin',to_date('21/10/16','RR/MM/DD'),'안녕하세요. 저는 만 44세 남성입니다.

2009년 봄 때에 노숙 생활을 하게 되어 서울역에 있는 노숙인다시서기지원센터를 알게 되었습니다. 또, 숙대입구에 있는 다시서기종합지원센터와 충정로에 있는 구세군종합지원센터를 이용하였습니다. 영등포역 인근에 있는 보현의집과 햇살보금자리센터도 알게 되어 주간쉼터와 야간 잠자리를 이용하였습니다. 4월경 보현의집으로 입소 과정에서 영등포구 보건소에서 방사선과 폐결핵검사에서 폐결핵 의심 판정이 나왔고, 서울시립서북병원에 1개월 입원하여 치료한 후 음성의 전염성이 없는 결핵으로 판정돼 퇴원하게 되었습니다. 담당 주치의가 퇴원 후에도  약물 복용과 통원 치료는 계속해야 된다고 하여 보현의집과 다시서기센터를 이용하면서 다시서기센터 보건담당 직원분과 상담을 하는 과정에서 결핵 약을 복용하고 있음을 말씀드렸더니 기초생활수급자 신청을 해보라 하여 신청하였습니다. 수급 신청해서 일반 수급자가 돼 고시원 생활을 하며 노숙으로 지쳐 있던 몸과 마음을 추스르며, 입원과 약물 복용을 합해 총 10개월 간의 치료로 폐결핵은 완치되었습니다. 

그 후 인지어스라는 회사가 위탁하는 희망리본사업에 1년 6개월간 참여했습니다. 이 사업은 이력서를 가지고 취업활동을 하여 기업에서 면접 요청이 오면 방문 면접을 통해 입사하도록 돕는 사업이었습니다. 희망리본에 참여하며 실업에서 벗어나려고 나름 노력해 보았습니다. 희망리본 운영회사에서 여러 회사에 이력서를 넣고, 저는 저대로 이력서를 넣어서 이력서 넣은 곳만 50군데 정도 됩니다. 그중 면접 보러 오라는 곳은 20군데 정도밖에 안 됐습니다. 그곳들도 막상 가보면 최근 경력 공백이 너무 긴 게 발목을 잡았습니다. 면접을 보는 기업의 대표자들은 채용을 거부하며 어떤 때는 충고, 어떤 때는 비난조로 이야기했습니다. ‘장기간 입사한 경력이 없다’, ‘청년이 아니다’, ‘미혼인 사람은 무단결근이 많아 회사에 피해를 입힌다’와 같은 말들을 자주 들었습니다. 한번은 이력서에 자활사업 참여 경험을 경력으로 넣으라는 희망리본사업 담당 직원의 권유로 그렇게 써서 면접을 봤습니다. 그랬더니 고용주는 ‘자활이 무슨 경력이냐?’, ‘젊은 사람이 왜 그런 걸 했느냐’며 부정적인 답변만 들었습니다. 결국 2013년 12월, 사회복지를 통한 자립의 길은 없다고 판단하고 기초수급자가 된 지 4년 2개월 만에 수급권을 자진 반납하고 포기하게 되었습니다. 그 후 다시 건설현장 일용직으로 되돌아가게 되었습니다.
','실업과 취업의 쳇바퀴, 불안정한 일자리 정책','..\uploadImages\20211016013611.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',127,'admin',to_date('21/10/16','RR/MM/DD'),'계명대와 ㈜디아이씨가 산학협력을 이어가고 있는 가운데, 이번에 전기차 2대를 계명대에 기증했다. 15일 계명대 성서캠퍼스 본관에서 김성문 ㈜디아이씨 회장, ㈜제인모터스 안상진 대표, 신일희 계명대 총장 등 관계자들이 참석한 가운데 전기차 기증식을 가졌다. 

이번에 ㈜디아이씨에서 기증한 전기차는 자회사인 ㈜제인모터스에서 생산하는 다목적 운반용 전기차 테리안으로 2대를 계명대에 기증했다. 시가로는 3,500만원 가량이다. 계명대는 기증받은 차량을 교내 물품 운반 및 업무용 차량으로 운용할 예정이다. ㈜디아이씨는 지난 4월 공학인재양성장학금으로 2억 4천만 원을 약정하기도 했다.



신일희 계명대 총장은 “기증해 주신 차량은 탄소중립 캠퍼스를 만들어나가는데 상징이 될 것이다.”며, “지속적인 협력관계를 유지하면서 지역발전을 위해 공동으로 기여할 수 있도록 노력을 다하자.”고 감사의 뜻을 전했다.

김성문 ㈜디아이씨 회장은 “계명대와의 산학협력으로 기술개발과 우수한 인재를 양성하는 등 기업운영에 큰 도움이 되고 있다.”며, “미래사회는 대학과 기업의 산학협력을 통한 신기술 개발과 인재 양성이 중요한 부분을 차지할 것이다. 앞으로도 지속적인 협력관계를 유지해 나가길 바란다.”고 말했다.

계명대는 전기에너지공학전공 내 에너지변환시스템연구실(연구책임자 강동우 교수)으 통해 ㈜디아이씨와 협업하여 차세대 e-powertrain용 모터 및 전장용 모터 개발을 추진하고 있으며, 로봇공학전공내 로봇및자동차전동기제어연구실(연구책임자 고성철 교수)과 모터 드라이브 기술을 협업하고 있다. 또한, 2021년 1월 MOU를 체결하고, 4월에 계명대 내 디아이씨전장기술연구소를 설립해 우수 인력을 선제적으로 선발하여 미래의 사업을 전략적으로 준비하고 있다.  이 밖에도 계명대 일반대학원의 전기전자융합시스템공학과(기업체취업 계약학과)를 통해 매년 전기분야 석사 이상의 고급인력 충원하는 등 산학협력을 이어가고 있다.','디아이씨, 계명대에 전기차 2대 기증하며 산학협력 이어가','..\uploadImages\20211016013642.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',128,'admin',to_date('21/10/16','RR/MM/DD'),'전남 여수공업고등학교 3학년 재학생 9명이 한국철도공사 필기시험에 합격했다고 15일 전했다. 이 학생들은 채용 인원에 1.2배수를 선발하는 시험에서 당당히 합격하여 최종 면접만을 남겨 두고 있다. 

여수공고는 공무원, 공기업 및 대기업 등 다양한 분야에서 탁월한 성과를 거두며 전국 최고의 취업사관학교로 우뚝 섰다. 10월 14일 현재 ▲전남교육청 공무원 1명 ▲군공무원(군부사관 포함) 11명 ▲삼성중공업 3명 ▲현대삼호중공업 7명 ▲엠코코리아(반도체기업) 4명 ▲아우스빌둥 11명(포르쉐 2명, 메르세데르-벤츠 2명, BMW 4명, 아우디 1명, 폭스바겐 1명, 만트럭버스 1명)이 최종합격하였다. 그리고 ▲한국철도공사 9명 ▲국가직 공무원 1명 ▲해군부사관 1명이 필기시험 합격 후 최종 합격을 기다리고 있다. 뿐만 아니라 전남 지방직 공무원 12명, 서울특별시 공무원 3명, 한전KPS 3명, 한국남동발전 5명이 응시하여 좋은 결과를 기대하고 있다. 이 외에도 중견·강소기업 TYI파우들러 외 17개 업체에 39명이 최종합격하여 취업을 확정 지었다. 



이러한 여수공고의 취업 성과 비결은 공무원반 및 공기업반(한국전력공사반, 한국철도공사반 등), 대기업반, 일학습병행 취업 프로그램인 아우스빌둥반, 군부사관반 등 다양한 취업 프로그램의 체계적인 운영에 숨어 있다.

전남교육청 공무원 합격자 손무진 학생은 “따로 학원에 다니지 않고 학교에서 운영하는 취업특별반에 참여하여 선생님들과 함께 문제 풀이, 실전 모의 면접을 준비하였고 그 결과 최종합격할 수 있었다. 혹시 나와 같은 진로를 고민 중인 중학교 후배들이 있다면 고민 말고 여수공고를 선택하라고 이야기해 주고 싶다.”라고 전했다. 

여수공고 전용석 교장은 “여수공고가 공무원, 공기업, 대기업 등 다양한 분야에서 지속적인 취업 성과를 얻을 수 있었던 것은 본교만의 취업프로그램이 내실 있게 진행되고 있기 때문이다. 현재의 성과에 만족하지 않고 학생들이 원하는 꿈을 실현할 수 있도록 모든 교직원들이 함께 고민하고 노력할 것이며, 대졸 부럽지 않은 취업경쟁력을 보여줄 수 있도록 끊임없이 지원하겠다.”라고 밝혔다. ','전남 여수공고, 한국철도공사 9명 필기 합격','..\uploadImages\20211016013715.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',129,'admin',to_date('21/10/16','RR/MM/DD'),'한국농어촌공사와 광주전남 혁신도시 농업분야 공공기관, 지역 교육청이 진행한 2021년도 오픈캠퍼스 수료생들의 만족도가 높은 것으로 나타났다. 

미래 농업인재 양성을 위한 오픈캠퍼스는 2019년 대학생을 대상으로 6개 기관이 공동주관해 ‘빛가람 미래농업인재 육성과정’을 신설했으며 첫 해 40명에서 올해 67명까지 수료생이 증가했다. 

지난해부터는 대학생뿐 아니라 지역 농업계 고교생을 위해농어촌공사와 한국농수산식품유통공사(aT), 농림식품기술기획평가원이 협력해 ‘미래 영농인 양성과정’을 신설, 60명의 수료생을 배출했다. 

오픈캠퍼스 참가자들을 대상으로 한 설문조사 결과 강의 주제와 내용, 담당 강사의 전문지식, 취업준비 도움에서 모든 응답자가 도움이 됐다는 응답이 나왔으며 전체만족도는 5점 만점에 4.6점으로 나타났다. 

이중 코로나19가 지속되면서 취업 준비 등에 어려움을 겪었는데 비대면으로 안전하게 농업 관련 정보와 취업 준비를 위한 모의면접 등을 체험해 볼 수 있어 큰 도움이 됐다는 의견이 가장 많았다. 

고교생들은 오픈 캠퍼스를 통해 얻은 정보가 진로 탐색에 좋은 기회가 됐다는 의견과 농업 관련 용어와 기관 정보에 대해 알 수 있어서 좋았다고 주로 답했다.

농어촌공사는 참여 학생들의 만족도가 높게 나타난 만큼 투입 예산 규모를 늘리고, 관련 기관들과 협의를 통해 더 많은 지역 학생들이 교육 참여를 통해 성과를 얻을 수 있도록 대상을 확대할 예정이다.  

또한 선배와의 대화 시간과 전체 수업 시간을 늘려달라는 요청과 비대면으로 인한 아쉬움 등 수강생들의 요청사항을 반영해 내년 오픈캠퍼스에는 현장 중심 커리큘럼을 구성하고 소규모 단위로 대면 수업을 진행할 계획이다. 

김인식 농어촌공사 사장은 “지역인재 양성은 혁신도시 이전 공공기관과 지역이 상생하며 발전하기 위한 공공기관의 사회적 책무”라며 “앞으로도 다양한 프로그램을 통해 농업분야의 지역 청년인재 양성을 위해 노력하겠다”고 밝혔다. ','오픈캠퍼스, 미래농업 지역인재 양성 효과','..\uploadImages\20211016013748.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',132,'admin',to_date('21/10/16','RR/MM/DD'),'청년 지원을 강화하는 내용을 담은 14개 법률 개정안이 15일부터 40일간 입법 예고에 들어갔다.

청년 세대의 권리보장을 강화하고 경제활동과 관련해 청년들에게 충분한 기회를 제공하기 위한 법적 기반을 마련한다는 취지다. 소관 부처는 모두 11곳이다.

15일 법제처에 따르면 정비 대상 법률은 크게 핵심 산업인력으로서 청년의 경제활동 지원을 강화하고 청년에게 직업교육 등 교육훈련 기회를 확대하는 한편 청년복지를 위한 지원 기반을 마련하는 내용을 담고 있다. 청년기본법에 따르면 법률상 청년이란 19세 이상 34세 이하인 사람을 말한다.

우선 중소기업기본법 개정안은 정부가 중소기업 활동을 지원하기 위해 실시하는 시책의 적용대상에 청년을 추가함으로써 청년의 기업활동을 촉진하도록 했다. 뿌리산업 진흥과 첨단화에 관한 법률에서는 생산기반산업의 인력 실태조사 범위에 청년의 고용현황을 반영하도록 했다.

또 국가가 수립, 시행하는 직업교육훈련 기본계획에 청년에 대한 직업교육훈련을 포함하고, 노동인권 및 노동자 권리보호 관련 교육 대상에 청년을 추가하는 내용을 각각 직업교육훈련 촉진법과 고용노동교육원법에 담았다.

수산과학기술 진흥을 위한 시험연구 등 법률에서는 국가 및 지방자치단체가 실시하는 교육훈련 사업의 대상에 어촌청년을 추가하고, 지방자치법에서는 주민 보호와 복지 증진을 위한 지자체 사무 대상에 청년을 포함시켰다. 또 총포와 도검, 화약류 등의 제조업 허가와 소지 허가 등의 결격사유 연령을 청년기본법상 청년 연령에 맞춰 20세 미만에서 19세 미만으로 조정했다.

이강섭 법제처장은 “이번에 추진하는 청년 지원을 위한 법률정비를 통해 취업, 경제활동 등에 어려움을 겪는 청년들의 삶이 다소 나아질 수 있을 것으로 기대한다”고 밝혔다.','청년지원 강화 법안 탄력 받는다','..\uploadImages\20211016014007.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',133,'admin',to_date('21/10/16','RR/MM/DD'),'공채는 상ㆍ하반기 정기적인데 반해 수시채용은 자리가 있을 때만 뽑다보니 언제 모집할지 알 수가 없어요. 차라리 정해진 기간이 있으면 미리 준비할 수 있을텐데, 오히려 일자리 찾기가 더 어려워졌다고 생각해요.”

대기업에 입사하기 위해 서울 노량진에서 준비를 하고 있는 최모씨(29살)는 점점 높고 좁아지는 취업문턱을 실감하며 이같이 토로했다. 주변에서도 국내 주요 기업이 정기공채를 없애면서 일할 수 기회가 줄고 있다며 시간이 지날수록 우울한 분위기가 감지된다고 설명했다.

지난달 23일 여의도에서 점심식사를 마친 직장인들이 일터를 향해 걸어가고 있다. [연합뉴스 제공]

실제로 국내 대기업은 정기공채를 수시채용으로 전환하는 추세다. 일각에서는 “말이 좋아 수시채용이지, 요즘같은 코시국(코로나19+시국)에는 아예 공고 조차 없다”며 “가끔 뜨는 모집을 보면 경력직이나 중고신인만 고집한다”고 꼬집었다.

이처럼 20~30대 젊은 세대의 취업 시장이 급격하게 얼어붙었는데도 뾰족한 해결책은 나오지 않고 있어 미취업자들의 고충을 더욱 심해지게 만들고 있다.

통계청이 발표한 ‘9월 고용동향’을 보면 모든 연령층에서 취업자가 증가한 반면 30대만 유일하게 전년동기 대비 1만2000명 감소한 것으로 나타났다.

30대의 경우 대부분 대학 졸업 후 첫 직장생활을 하거나, 결혼 및 출산을 앞둔 ‘경제 허리층’이다. 문제는 한창 일해야 할 이들이 점점 무기력증에 빠져있거나, 자칫 구직을 포기하는 걸로 번질 수 있다는 점이다.

국가통계포털(KOSIS) 기준으로 지난 8월 30대 취업자는 520만명으로 1년 전보다 8만8000명 감소했다. 이로써 30대 취업자는 작년 3월(-10만8000명)부터 18개월 연속으로 전년동기 대비 하락세를 이어갔다.

특히 지난 8월에는 15세부터 70세 이상에 이르는 모든 연령대 가운데 30대에서 유일하게 취업자가 줄었다. 반면 지난달 비경제활동인구 중 30대 ‘쉬었음’ 인구는 31만8000명으로 1만9000명 늘면서 통계 작성이 시작된 지난 2003년 이래 역대 최다치를 찍었다.

박지순 고려대학교 법학전문대학원 교수는 “공채 시스템이 유지되면 취준생 입장에서는 나에게 적합한 회사를 언제, 어떻게 준비해야 하는지 예측 가능하지만 수시채용의 경우 채용 규모가 작고 불확실성은 커져 경쟁이 더욱 치열해질 가능성이 있다”고 설명했다.

다만 박 교수는 “지금 20~30대는 기성 세대처럼 한 직장에 오래 얽매이지 않고 본인의 성향에 맞춰 자유롭게 이직을 추구하는 경향이 있어 오히려 직업능력을 높이는 동기부여가 될 수 있다”고 덧붙였다.','“올해가 마지막 도전”…사라지는 정기공채에 취준생은 운다','..\uploadImages\20211016014052.jpg',7,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',135,'admin',to_date('21/10/16','RR/MM/DD'),'지금 우리가 경험하는 메타버스 시대는 어느정도 고도화된 걸까? 메타버스는 단순히 게임이나 가상현실(VR)에서 이뤄지는 사용자들의 상호작용을 뜻하지 않는다. 지금 우리가 경험하는 메타버스는 게임이나 VR에서의 취미활동이 대부분이다. 하지만 미래의 메타버스는 인간관계를 맺을 수 있고, 문화생활은 물론 재화를 소유하거나 투자해 돈도 벌 수 있다고 한다. 머지않은 미래 세상 메타버스의 현주소는?

영화에서 미리 본 ‘메타버스’ 완성판  

2018년 스티븐 스필버그 감독의 영화 <레디 플레이어 원>은 가상 현실 ‘오아시스’를 배경으로 메타버스 기술을 직접적으로 보여준다. 이 영화의 등장 인물들은 헤드 마운트 디스플레이를 착용하고 아바타로 변신해 가상 공간 즉 메타버스 안에서 또다른 삶을 영위한다.

시대는 2045년, 주인공 ‘웨이드’는 현실세계에서 딱히 희망없이 살아가는 평범한 남자지만 오아시스 안에서는 남부럽지 않은 스펙을 가졌다. 많은 사람들이 오아시스에서 시간을 보내고 기업활동이나 경제적 활동, 문화생활 심지어 연애도 이 공간에서 가능하다.

식생활을 제외하곤 현실세계와 같은 제 2의 세계인 것이다. 실제로 ‘IOI’라는 거대 기업이 가상현실 ‘오아시스’에서 즐길 만한 아이템을 제공하거나 하드웨어 장비를 팔아 막대한 수익을 내는 등 경제적 활동을 펼쳤다.

메타버스가 주목받기 시작한 이유

메타버스는 가상, 추상을 뜻하는 메타(Meta)와 현실세계를 뜻하는 유니버스(Universe)의 합성어다. 1992년 미국에서 SF작가 닐 스티븐슨의 소설 ‘스노우크래쉬’에서 처음 쓰였는데, 특히나 올해 상반기부터 게임회사 로블록스가 미국 나스닥시장에 상장하면서 메타버스 시장에 불을 지폈다. 

로블록스는 세계 최대 규모의 메타버스 게임 플랫폼인데, 미국 10대 절반 이상이 즐겨쓰는 플랫폼인 만큼 그 규모가 상당하다. 로블록스 측은 “메타버스라는 플랫폼을 통해 사람들이 하나로 묶일 것”이라고 예언했다. 

이유인 즉 지난해 코로나19 사태로 등교를 못하게 된 미국 초등학생들이 다른 아이들과 소통할 수 있는 통로로 로블록스의 역할이 컸으며, 앞으로도 사람들을 가상의 공간에서 묶을 수 있는 유사한 플랫폼과 관련 시장의 역할은 커질 것이라고 보고 있다. 

로블록스가 인기를 끄는 이유는 온라인 속 3차원 입체 가상세계에서 아바타의 모습으로 구현된 개인들이 서로 소통하고, 돈을 벌고 소비하며, 놀이나 업무를 하는 등 현실 세계에서의 활동을 그대로 할 수 있는 완성도 높은 플랫폼을 구현했기 때문이다. 실제로 로블록스는 하루 평균 접속자만 4000만명에 육박할 만큼 뜨거운 인기를 끌고 있다.','너나없이 ‘메타버스’ 열풍, 지금 올라타, 말아?','..\uploadImages\20211016014246.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',140,'admin',to_date('21/10/16','RR/MM/DD'),'2014년 신설된 취업맞춤특기병의 전역 후 취업률이 57.7%에 머무는 등 실효성이 떨어진다는 지적이 나왔다.

국회 국방위원회 홍영표 더불어민주당 의원은 15일 “병무청이 제출한 최근 5개년 취업맞춤특기병 제도 운영 현황 및 취업률에 따르면 취업맞춤특기병의 전역 후 취업률이 아직 57.7%에 머무르는 것으로 드러났다”며 “현재 모집하고 있는 맞춤특기의 실효성을 점검하고 사전 직업훈련을 주관하는 고용노동부와 공조해 미래의 취업수요를 선반영해야 한다”고 지적했다.

취업맞춤특기병 제도는 현역병 모집분야의 하나로 병역의무자가 입영 전 기술훈련을 받고, 연계된 분야의 기술병으로 입영해 복무함으로써 전력 후 취업연계를 도모하기 위해 지난 2014년 신설됐다.

고졸이하 학력 소지자, 기초생활수급자 등 경제적 약자를 대상으로 모집하며 다른 특기병과 달리 경쟁선발이 아닌 연중 모집방식으로 충원한다.
홍 의원에 따르면 최근 3개년 간 취업맞춤특기병 지원자는 2019년 2716명, 2020년 3286명, 2021년 7월 기준 2507명으로 꾸준히 늘고 있지만 현역병 모집 충원 계획인원 대비 지원율은 1~2% 수준으로 상당히 저조하다.

현역병 모집대상자 중 고졸 이하자가 33.9%, 경제적 약자가 7.3%임을 감안하더라도 지원자수 자체가 매우 적어 제도의 취지를 살리기에는 턱없이 부족하다는 게 홍 의원의 설명이다.

또 홍 의원은 “특정 모집분야에만 지원자가 편중되는 현상도 심화되고 있다”며 “취업맞춤특기병 제도를 가장 먼저 시행한 육군의 경우, 총 74개 특기에서 인원을 모집하는데 이 중 상위 6개 특기에만 지원자 절반 이상이 몰렸다”고 밝혔다.

지원자의 절반이상(2019년 53.2%·2020년 53%)가 전기설비·차량정비·조리·영상제작 등에 지원한 반면 로켓무기 정비·무선장비 운용정비 등 3년간 10명도 채 지원하지 않은 분야도 있다.

기계·통신전자·차량정비·공병·전자계산 등 5개 분야에서 취업맞춤특기병을 모집하는 공군 역시 기계 분야에만 지원자의 46.9%(2019년), 56.9%(2020년)가 편중되어 있다.

홍 의원은 “이렇게 소수 특기에만 지원자가 몰리다보니 해당 분야의 취업률은 되려 평균 아래로 떨어졌다”며 “육군 영상제작 특기병의 취업률은 34.3%(2019년), 54.4%(2020년), 42.1%(2021년 7월)로 육군 취업맞춤특기병 전체 취업률 57.7%(2020년) 이하”라고 지적했다.

이어 홍 의원은 “2018년 예산심사 시에도 취업맞춤특기병 제도의 취업률을 제고하고 기술인재를 양성하기 위해 폴리텍대, 중소벤처기업부 등 유관기관과의 업무협약이 필요하다는 지적이 있었으나 구체적 제도는 여전히 마련되지 않은 상태”라며 ““군 당국은 취업률만 단순 집계하는 현재의 평가방식에서 벗어나 고용분야, 고용형태 등까지 파악하는 심층평가를 진행해 제도의 미비점을 보완해야 한다”고 촉구했다.','취업맞춤특기병 취업률 57.7%…실효성 떨어져','..\uploadImages\20211016014738.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',141,'admin',to_date('21/10/16','RR/MM/DD'),'SK하이닉스 뉴스룸은 SK하이닉스가 투자자·고객·취업준비생·언론인 등과 직접 소통하기 위해 개설한 회사의 공식 커뮤니케이션 채널이다. 이번 개편은 △직관적 메뉴 구성 △맞춤형 콘텐츠 제공 △풍성한 사진·동영상 제공 △상세 검색 기능 강화 △홈페이지 연계성 강화 등을 골자로 사용자 인터페이스(UI)와 사용자 경험(UX) 등 독자 편의성을 높이는 방향으로 진행됐다.

메뉴는 뉴스룸에 방문한 독자들이 직관적으로 콘텐츠를 즐길 수 있도록 기술·사람 문화·지속가능경영·프레스 센터·회사 소개 등 5가지 항목으로 구성했다. 독자의 성향에 맞춘 콘텐츠 추천 기능과 인기 기사 노출 기능 등을 추가해 뉴스룸 방문자가 SK하이닉스의 주요 이슈를 놓치지 않도록 화면을 구성한 점도 특징이다.

SK하이닉스의 반도체 개발·제조 현장, 캠퍼스 전경, 구성원 활동, 제품 등과 관련된 사진과 동영상이 필요한 이해관계자들을 위해 ‘프레스센터’ 항목에 위치한 ‘미디어 라이브러리’도 개선했다.

상세 검색 기능도 강화했다. 항목별 검색은 물론 특정 날짜를 지정하는 것도 가능하다. 지난 7월 새롭게 단장한 공식 홈페이지와의 연계성도 높였다. ''회사소개'' 탭에 들어가면 SK하이닉스 경영 실적이나 지속가능경영보고서, 채용정보 등이 소개돼 있는 해당 페이지로 바로 연결될 수 있도록 사용자 편의성을 고려했다.

기사 작성을 위해 뉴스룸을 자주 방문하는 언론인을 위해서는 알림 주기를 즉시, 주 1회 등 본인 편의에 맞게끔 선택할 수 있는 기능을 적용하는 등 구독 서비스도 개선했다.

만화로 쉽고 재미있게 반도체 기술을 알아볼 수 있는 연재물 ''반도체 WHAT 인포툰''을 최신 기술을 반영해 업데이트했고, 해당 시리즈를 한눈에 만나볼 수 있는 배너도 메뉴에 추가했다.','SK하이닉스, 한국어판 뉴스룸 UI·UX 개편…독자 편의성↑','..\uploadImages\20211016014810.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',145,'admin',to_date('21/10/16','RR/MM/DD'),'코리아교육그룹 IT 교육 전문 컴퓨터학원 코리아IT아카데미는 부산점에 이어 오는 12월경 인천점과 대전점을 새롭게 오픈한다고 밝혔다. 

IT 인재 부족 현상이 심화하면서, 기업에서는 IT 전공자가 아닌 개발자까지 환영하는 분위기다. 이러한 상황이다 보니 취업난이 계속되고 있는 인문 계열 전공생들까지 코딩학원 등에 등록하며 IT 인재로 성장하기 위해 나서고 있다. 

코리아IT아카데미는 최근 한국판 뉴딜 K-디지털 트레이닝 양성 기관으로 공식 선정돼, 디지털 핵심 실무 인재 양성 교육에도 힘쓰고 있다. 강남원과 신촌학원, 대구·부산 컴퓨터학원 등 전국 각 지점에서 과정별 취업률 100%를 달성하며 IT학원으로 경쟁력을 제공해왔다. 

여기에 새롭게 오픈하는 인천과 대전 컴퓨터학원에서도 다양한 커리큘럼과 실무 기반 교육 프로그램으로 주목받고 있다. 또 다양한 산학 기관과 협력해 실무자 세미나, 취업 프로그램 운영 등 수강생들의 취업 실무 능력 양성을 위해 물심양면 노력할 전망이다.

한편 코딩학원 코리아IT아카데미는 빅데이터 학원을 비롯해 13개 다분야 교육 계열사를 운영해온 코리아교육그룹의 정보보안학원 계열사다. 코리아교육그룹은 소비자가 뽑은 대한민국 만족도 1위 브랜드 대상을 수상하는 등 다수의 수강생을 확보하며 종합 교육 전문 기업으로 자리잡은 바 있다.

현재 운영 중인 코리아아이티학원 커리큘럼으로는 △정보보안전문가 과정(네트워크, 시스템, 웹, 악성코드 분석, 디지털 포렌식) △네트워크학과(CCNA, CCNP) △화이트 해커 △웹/앱 프로그래밍학원 개발 전문가과정 △자바학원 프로그래밍(JAVA) 과정 등이 다양하게 운영되고 있다.  

이와 함께 다양한 취업 지원 할인 혜택 및 프로젝트, 훈련 장려금 지급, 국가 기간 전략 산업 직종훈련 무료 수업 등을 제공하며 직장인 국비 지원, 취업 성공 패키지, 과정 평가형 등 여러 국비 지원 프로그램 이용이 가능하다. 기존 학생들도 저렴하게 수강할 수 있도록 다양한 할인 혜택도 제공 중이다.','컴퓨터학원 코리아IT아카데미, 오는 12월 인천·대전점 오픈','..\uploadImages\20211016015436.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',146,'admin',to_date('21/10/16','RR/MM/DD'),'신한금융희망재단은 14일 세종시 조치원읍 침산마을에서 사회적 경제 육성을 통한 지역 맞춤형 일자리 사업의 일환으로 마을야영장 ‘침산추월’을 오픈했다고 15일 밝혔다.

마을야영장의 이름인 ‘침산추월’은 침산에서 바라본 달이라는 뜻을 담고 있다. 침산마을은 야영장을 방문한 사람들이 아름다운 자연속에서 휴식할 수 있도록 다양한 편의를 제공할 계획이다.

신한금융희망재단은 이번 침산마을을 포함해 부산 사상구, 전남 순천 등 3곳을 지원 대상으로 선정했으며 마을 지역주민들의 자활사업, 지역경제 활성화 컨설팅 등을 위해 3개 지역에 최대 45억원을 지원할 예정이다.

신한금융희망재단 관계자는 “이번 사업으로 침산마을 주민들의 일자리 창출 등 지역사회가 스스로 발전해 나가는데 도움이 되길 바란다”며 “재단은 앞으로도 우리 사회에 선한 영향력을 끼칠 수 있도록 노력하겠다”고 말했다.

한편 신한금융은 최근 조용병 회장이 발표한 그룹의 ESG 슬로건인 ‘Do the Right Thing for a Wonderful World(멋진 세상을 향한 올바른 실천)’를 토대로 지역 맞춤형 일자리 사업, 초등돌봄 공동육아나눔터 설립, 취약계층 경력단절 여성 취업지원, 청년부채 토탈케어 프로젝트, 청년 해외 취업 지원 등 다양한 사회공헌 활동을 진행하고 있다.

출처 : 인사이트코리아(http://www.insightkorea.co.kr)신한금융희망재단은 14일 세종시 조치원읍 침산마을에서 사회적 경제 육성을 통한 지역 맞춤형 일자리 사업의 일환으로 마을야영장 ‘침산추월’을 오픈했다고 15일 밝혔다.

마을야영장의 이름인 ‘침산추월’은 침산에서 바라본 달이라는 뜻을 담고 있다. 침산마을은 야영장을 방문한 사람들이 아름다운 자연속에서 휴식할 수 있도록 다양한 편의를 제공할 계획이다.

신한금융희망재단은 이번 침산마을을 포함해 부산 사상구, 전남 순천 등 3곳을 지원 대상으로 선정했으며 마을 지역주민들의 자활사업, 지역경제 활성화 컨설팅 등을 위해 3개 지역에 최대 45억원을 지원할 예정이다.

신한금융희망재단 관계자는 “이번 사업으로 침산마을 주민들의 일자리 창출 등 지역사회가 스스로 발전해 나가는데 도움이 되길 바란다”며 “재단은 앞으로도 우리 사회에 선한 영향력을 끼칠 수 있도록 노력하겠다”고 말했다.

한편 신한금융은 최근 조용병 회장이 발표한 그룹의 ESG 슬로건인 ‘Do the Right Thing for a Wonderful World(멋진 세상을 향한 올바른 실천)’를 토대로 지역 맞춤형 일자리 사업, 초등돌봄 공동육아나눔터 설립, 취약계층 경력단절 여성 취업지원, 청년부채 토탈케어 프로젝트, 청년 해외 취업 지원 등 다양한 사회공헌 활동을 진행하고 있다.','신한금융희망재단, 세종 침산마을 야영장 ‘침산추월’ 오픈','..\uploadImages\20211016015522.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',148,'admin',to_date('21/10/16','RR/MM/DD'),'춘해보건대학교는 지난 14일 명덕관 컨퍼런스홀에서 일본 준신가쿠엔대학과 Zoom을 활용한 온라인 학술문화교류회를 실시했다.

양 대학은 지난 2013년 MOU를 체결한 이후 학술문화 교류회뿐만 아니라 전공 관련 국제교류, 교직원 연수회 등 다양한 상호왕래를 했으나, 코로나19로 인해 올해 처음 온라인으로 국제교류를 개최하게 됐다.

이날 행사에는 준신가쿠엔대학의 후쿠다 요노스케 이사장, 국제교류 구연화 위원장을 비롯해 간호학과, 방사선기술과학과, 검사과학과, 의료공학과 교수 및 학생 60여 명과 춘해보건대 김조영 명예이사장, 김희진 총장을 비롯해 간호학과, 치위생과, 응급구조과, 방사선과, 물리치료과, 보건의료융합계열 교수 및 학생 40여 명이 참석했다.

이번 학술 문화교류회는 환영회, 학과별 학술문화교류회 순으로 진행됐으며, 학과별 학술문화교류 시간은 재학생들과 국가별 전공 교육과 해외 취업 현황에 대해 질의응답 시간을 가지며 호응을 얻었다.

김조영 명예이사장은 “양 대학 모두 설립자가 의사이시고, 인성을 갖춘 보건의료 인재양성을 목표로 하는 것이 유사하다”며, “지금처럼 서로 활발한 교류를 통해 우수한 대학으로 발전했으면 좋겠다. 앞으로 상호 방문할 수 있길 고대한다”고 인사말을 전했다.

방사선과 김태수 학생은 “코로나19로 인해 방문할 수는 없지만, 온라인을 통해 같은 전공인 일본 학생들과 교류할 수 있어 즐거웠고, 전공에 대해 많이 배울 수 있었다. 코로나19 상황이 좋아져 대면해 교류할 기회가 있었으면 좋겠다”고 소감을 밝혔다.

한편, 준신가쿠엔대학은 일본 후쿠오카에 있으며 1956년 설립, 간호학과를 비롯해 방사선기술과학과, 검사과학과(임상병리학과), 의료공학과가 개설돼 있다. 2018년 대학원 보건의료학 연구과를 개설, 2019년 최첨단 설비를 갖춘 메디컬 러닝 센터를 구축한 바 있다.','춘해보건대, 日준신가쿠엔대학과 ‘온라인 학술문화교류회’ 개최','..\uploadImages\20211016015621.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',149,'admin',to_date('21/10/16','RR/MM/DD'),'대다수의 청년 구직자들이 사실상 구직을 단념한 상태라는 조사 결과가 나왔다.

한국경제연구원이 전국 4년제 대학 3~4학년 재학생 및 졸업생 2,713명을 대상으로 실시한 「2021년 대학생 취업인식도 조사」에 따르면, 대학생 10명 중 6~7명(65.3%)은 사실상 구직을 단념한 상태인 것으로 나타났다. 

사실상 구직단념 비중은 ''거의 안함''(33.7%), ''의례적으로 하고 있음''(23.2%), ''쉬고 있음''(8.4%)을 합한 수치이다. 반면, 적극적으로 구직활동을 하고 있다는 응답 비중은 10명 중 1명 꼴(9.6%)에 불과했다.
적극적으로 구직활동을 하지 않는 이유로는 ''자신의 역량, 기술, 지식 등이 부족해 더 준비하기 위해''(64.9%) 라고 가장 많이 응답했다. 이어서 ''전공 또는 관심 분야의 일자리가 부족해서''(10.7%), ''구직활동을 해도 일자리를 구하지 못할 것 같아서''(7.6%) 등의 순으로 조사되었다. 

대학생 58.6%는 올해 대졸 신규채용 환경이 ‘작년보다 어렵다’고 응답했다. 이는 ‘작년과 비슷’(21.3%)의 2.8배, ‘작년보다 좋다’(2.0%)의 29.3배에 달하는 수준이다. 

취업 난이도를 반기별로 비교해보면, 대학생 42.7%는 올해 하반기 취업환경이 상반기보다도 더욱 악화될 것으로 내다보고 있었다. 한편, ‘상반기보다 좋다’고 응답한 비중은 2.6%에 불과했다. 

올해 적극적으로 구직활동을 하고 있는 대학생들은 평균 6.2회 입사지원 했는데, 이 중 서류전형 합격횟수는 평균 1.6회로, 서류전형 합격률은 평균 25.8%인 것으로 조사됐다. 

구체적으로 보면, 올해 입사지원 횟수는 ''1~5회''(60.2%)가 가장 많았고, 이어 ''6~10회''(14.2%), ''11~15회''(6.1%), ''16~20회''(5.4%), ''21~25회''(3.4%) 순이었다. 

서류전형 합격 횟수는 ''전부 불합격''(20.7%), ''1회''(22.6%), ''2회''(16.1%), ''3회''(12.3%), ''4회''(4.6%) 등의 순이었다. 

한경연은 “서류합격률은 25.8%에 그치는데, 그 이후 필기시험, 면접 등의 단계를 거칠수록 합격률이 더욱 떨어지기 때문에 실제 취업문은 매우 좁을 것으로 보인다”고 우려했다.','대학생 10명 중 6~7명 ‘사실상 구직 단념’','..\uploadImages\20211016015720.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',150,'admin',to_date('21/10/16','RR/MM/DD'),'‘청년의 오늘을 함께’를 슬로건으로 하는 ‘서울청년센터’는 청년의 생활권 가까이에서 청년이 필요로 하는 자원과 정보를 제공하는 서울시 청년공간이다.

‘서울청년센터’는 2020년 2월 금천, 관악을 시작으로 약 2년차에 접어들어 2021년 현재 서초까지 총 10개소를 운영 중이다.

지역 청년을 대상으로 하는 서울청년센터는 일대일 맞춤정보 종합상담, 소규모 그룹상담, 커뮤니티 프로그램(관계망 형성 지원), 지역특화 프로그램 등을 온?오프라인으로 운영하고 있다.

10월 개관하는 서초 청년센터는 3, 7, 9호선이 교차하는 교통의 요지 고속터미널역 지하에 위치해 있어 청년들이 쉽게 접근 가능하다. 만 19세부터 39세까지의 청년이라면 누구나 자유롭게 이용할 수 있으며, 서초청년센터 멤버십 가입 시 정기적 지역 정보 수신 등 더욱 다양한 혜택을 누릴 수 있다.

서초 청년센터는 연면적 557㎡의 공간으로 공유주방, 오픈라운지 등 휴게공간과 대회의실, 스터디룸, 1인 방송실(팟캐스트룸), AI 면접실 등으로 구성되어 있다.

서초 청년센터에서는 취업·진로, 창업, 주거, 마음건강, 생활지원 등 전반적인 문제에 대한 종합상담을 지원한다. 또한, 청년들의 사회진입을 돕기 위한 청년 관련 정보 및 지역 정보도 한눈에 볼 수 있도록 제공한다.

이 밖에도 지속가능한 관계망 형성 지원, 청년 맞춤형 프로그램 등 커뮤니티 프로그램과 함께, 지역특화 프로그램의 일환으로 ‘청년 커리어디자인 아카데미’를 기획하여 청년들의 가장 큰 고민거리인 취업·진로 분야를 집중적으로 지원할 계획이다.

서울시 김철희 미래청년기획단장은 “코로나19라는 특수한 상황에 맞서 다방면으로 고군분투하고 있을 청년들이 필요한 정책정보를 얻고, 다채로운 프로그램에 참여할 수 있는 공간이 되길 바란다”고 전했다.

운영시간은 평일 10시부터 22시(코로나19 사회적 거리두기 4단계 기준 18시까지), 토요일은 10시부터 17시까지다.','청년 맞춤형 정책·서비스 제공 ‘서울청년센터 서초오랑’ 개관','..\uploadImages\20211016015913.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',153,'admin',null,null,null,null,null,'아름이 사랑해',to_date('21/10/20','RR/MM/DD'),2,1,104,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',154,'admin',null,null,null,null,null,'ㅁㄴㅇㄹ',to_date('21/10/20','RR/MM/DD'),1,2,90,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',155,'admin',null,null,null,null,null,'ㅁㄴㅇㄹ',to_date('21/10/20','RR/MM/DD'),2,1,154,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',203,'admin',null,null,null,null,null,'댓글을 단다3',to_date('21/10/20','RR/MM/DD'),1,3,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',204,'admin',null,null,null,null,null,'댓글을 단다4',to_date('21/10/20','RR/MM/DD'),1,4,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',207,'admin',null,null,null,null,null,'답글을 단다3-1',to_date('21/10/20','RR/MM/DD'),2,1,203,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',205,'admin',null,null,null,null,null,'답글을 단다1',to_date('21/10/20','RR/MM/DD'),2,1,201,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',206,'admin',null,null,null,null,null,'답글을 단다2',to_date('21/10/20','RR/MM/DD'),2,2,201,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',208,'admin',null,null,null,null,null,'답글을 단다3-2',to_date('21/10/20','RR/MM/DD'),2,2,203,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',209,'admin',null,null,null,null,null,'ㅁㄴㅇㄹ',to_date('21/10/20','RR/MM/DD'),1,5,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',210,'kd1',to_date('21/10/20','RR/MM/DD'),'이 시점 제도는 만점을 완벽하게 받는게 본 목적이 아님
수학 능력을 검증하는 시험임

지금 시험은 범위가 좁아서 킬러문항도 넣고 변별력으로 문제 꼬와서 냄
범위가 넓어서 예로부터 문제된게, 사교육이지 일찍 배워서 두번 세번 네번 보면 되니까

난 그래서 서울런에 거는 기대가 좀 있음
 서울런을 시작으로 이런 사교육 차이를 좁혀나가고 킬러문제 잡는법을 공평하게 학습하게 되면
그 다음엔 킬러의 킬러문제 낼꺼임?
그러면 변별력 잡으려면 교육과정 범위가 더 늘겠지

늘리고 나서 전체적인 난이도도 낮추고 진짜 대학공부를 하기 위한 기초과목은 꼭 다 넣었으면 좋겠음

이상 행렬 모르는 학번한테
공수 스터디 열어준 동아리 스터디장이었음
','수능 의미가 변질된거임',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',211,'kd1',to_date('21/10/20','RR/MM/DD'),'이거 뭐에요? 24시간운영을 하라는거임? 밤12시에 닫는다는거? 제발..24시운영이엿으면','스터디카페 질문 급해요','..\uploadImages\20211020152557.png',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',212,'kd1',to_date('21/10/20','RR/MM/DD'),'메가스터디 매수마렵다','스카이에듀 폐업한다네 ..',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',213,'kd1',to_date('21/10/20','RR/MM/DD'),'나는 저렇게 안될것이다','[유머] 취업스터디 현실','..\uploadImages\20211020152831.jpg',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',214,'kd1',to_date('21/10/20','RR/MM/DD'),'
4월부터 지금까지 총 4개의 취업 스터디를 경험해봤다.

 

 

1. 학교에서 구한 GSAT 스터디 
 

정말 묵묵하게 GSAT을 푸는 스터디였는데, 갈수록 해이해져서 지각이나 불참도 많아지고 사담도 많아졌던 기억이..

 

맨 처음 시작할 때는 멤버가 3명이라 그랬는지 밥도 먹고 화목한 분위기였으나 멤버가 추가되고, 지각이 잦아지면서 다소 삭막한 분위기로 끝을 맺었다. 특히나 삼성을 주된 목표로 인적성 풀던 스터디였는데, 대다수가 서류 탈락이라는 충격적인 결과를 안고 자동 해체됐다. (심지어 공대이신 분도 서탈. 연대 공대면 최종합까지도 쉬울 거라 생각했던 내가 현실을 자각하는 계기가 되기도 했다.)

 

2. 스펙업에서 구한 자소서 스터디
 

서류탈락의 원인을 자소서에서 찾고 들어간 스터디. 스펙업 까페에서 구한 스터디다 보니 기본 스펙 등에서 스터디원을 거를 수 없다는 단점이 있는데, 보다 넓게 취준생을 만나고 싶어 무작정 지원했다. 막상 가보니 남자 분들은 제약 쪽 연구, 여자 분들은 다 화장품 쪽을 확고하게 지향하고 계셔서 핏이 안 맞았다. 이건 둘째치고, 이미 취업에 성공한 기존 분이 ''멘토''라는 이름으로 코치를 하고 계셨는데, 정말 성향이 안 맞았다. 내 자소서를 (심지어 합소서였다) 하나하나 가리키면서 ''말도 안 되는 자소서''라는 둥, 책상을 쿵쿵 치면서 ''본인이 뭘 잘못했는지 몰라요?''라고 윽박을 지르셨는데 대기업 압박 면접도 이 정도로 무례하나 싶었고, 섣불리 내 자소서를 공개한 것도 후회가 되는 시간이었다. 

 

이후 모의 면접이라는 이름으로 나를 앉혀놓고 압박 면접에 들어갔는데, ''생각했던 것보단 잘했다. 완전 엉망일 줄 알았는데'' 같은 평가가 돌아왔다. 당황스러웠고, 이후 불참 의사를 밝히고 방을 나갔다.

 

 

3. 학교 홍보 게시판에서 본 기업 분석 스터디
 

강남에서 한 스터디였는데, 구성원은 이대가 가장 많았고 그 다음엔 고대였다. 돌아가면서 관심 기업에 대해 분석하고 PT하는 형식으로 진행되었고, 홈쇼핑 MD 같이 나한테 생소한 직군을 오래 준비한 멤버들이 많아서 관련 정보를 얻을 수 있었다. 전직 SK이노베이션 인사팀 직원 분이 멘토로 참여해서 PT 이후 간략한 코멘트와 코칭을 도와주셨다. 대기업에서 오래 일한 사람 특유의 직관을 얻을 수 있었고, 당시 내가 방학 동안 어플리케이션을 개발이라도 해야 하나 등의 허황된 생각을 하고 있었는데 인적성/기업분석이나 집중하라며 우선순위를 확실하게 세워 주셨다. 괜찮은 사람들을 많이 만나서, 앞으로도 계속 할 예정. 


고심해본 결과, 내가 다른 사람들에게 쉽게 지적하는 이유는 나 자신부터 그렇게 몰아붙이기 때문은 아닌지 점검해보기로 했다. 경험 상 내가 정말 좋아서 한 일과, 의무감에 억지로 한 일 중 후자가 인생에 도움이 된 경우는 그렇게 많지 않았다. 일단 나부터 편한 마음으로 모든 일을 가볍게 + 열정적으로 해야 남에게도 너그러워질 수 있지 않을까? 그런 의미에서 정말 내가 하고 싶은 일, 그리고 잘하는 일은 뭔지 곰곰히 생각하는 시간을 가지려 한다. 
 ','취업 준비 스터디를 거치며',null,4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',156,'admin',null,null,null,null,null,'ㅋㅌㅊ',to_date('21/10/20','RR/MM/DD'),1,3,90,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',201,'admin',null,null,null,null,null,'댓글을 단다',to_date('21/10/20','RR/MM/DD'),1,1,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',202,'admin',null,null,null,null,null,'댓글을 단다2',to_date('21/10/20','RR/MM/DD'),1,2,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',1,'admin',to_date('21/04/20','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독] JoB소리 편리하게 이용하기',null,11,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',2,'admin',to_date('21/05/22','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독] Job소리 스터디방 입장시 유의할 점',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',3,'admin',to_date('21/06/12','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독] Job소리 회원님들의 취업을 축하합니다',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',4,'admin',to_date('21/06/22','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독] ★2021 하반기 대기업 채용·공기업 채용 최신 트렌드',null,11,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',5,'admin',to_date('21/07/21','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독] 취업 커뮤니티 JoB소리 커뮤니티 이용수칙',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',6,'admin',to_date('21/08/02','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[Job회원 멘토]를 찾습니다? + JoB회원 멘토군단 소개',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',7,'admin',to_date('21/08/12','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독] JoB소리★유용 자료 한눈에 보기',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',8,'admin',to_date('21/09/11','RR/MM/DD'),'제1조. Job소리 회원은 취업활동과 친목을 목적으로 강제성 없이 카페 내에서 자유롭게 활동할 수 있습니다. 제2조. 상대방 게시글/댓글 비방은 금지되어 있습니다. 제3조. Job소리 회원의 정보나 게시물, 사진 등의 복사/가공/배포를 금지합니다.','[필독]게시판 이용안내 및 저작권 자료 취급에 관한 공지',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',9,'admin',to_date('21/09/11','RR/MM/DD'),'1. 대외활동/공모전은 독취사 회원이라면 주제별 게시판에 누구나 자유롭게 올리실 수 있습니다.  - 독취사의 대학생 회원님들을 위한 좋은 정보들은 자유롭게 업로드 가능합니다.
- 대외활동/공모전 업로드하실 때는 반드시 글양식에 맞게 작성해주시기 바랍니다.','★JoB소리 대외활동/공모전 게시판 공지사항',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',18,'kd4',null,null,null,null,null,'저 신청했어요! 연락 부탁드릴게요',to_date('21/10/20','RR/MM/DD'),1,2,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',19,'kd5',null,null,null,null,null,'혹시 코딩 프로젝트는 안하세요? 저 코딩 프로젝트 스터디 모집중인데 생각있으시면 신청부탁드려요~~',to_date('21/10/20','RR/MM/DD'),1,3,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',20,'kd3',null,null,null,null,null,'아쉽네요 ㅠㅠ 님도 꼭 합격하세요!~',to_date('21/10/20','RR/MM/DD'),2,1,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',215,'kd1',null,null,null,null,null,'댓글을 달앗습니다.',to_date('21/10/20','RR/MM/DD'),1,1,214,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',1,'kd1',to_date('21/10/12','RR/MM/DD'),'DFFF','토익 스터디 모집합니다~~!','..\uploadImages\20211014113928.png',52,null,null,0,0,1,1);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',3,'kd2',to_date('21/10/12','RR/MM/DD'),'ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','안녕하세요 코딩 공부 같이하실분 찾습니다!',null,39,null,null,0,0,3,4);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',6,'kd1',null,null,null,null,null,'댓글 2',to_date('21/10/14','RR/MM/DD'),1,2,3,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',7,'kd1',to_date('21/10/14','RR/MM/DD'),'정처기 3회 스터디 인원 모집합니다','스터디 모집합니다','..\uploadImages\20211014162919.png',5,null,null,0,0,7,5);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',8,'kd3',to_date('21/10/20','RR/MM/DD'),'ㄹ','토플 공부 같이하실분~!',null,2,null,null,0,0,8,6);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',9,'kd4',to_date('21/10/20','RR/MM/DD'),'ㄹ','안보공 ncs 스터디원 모집합니다',null,3,null,null,0,0,9,7);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',10,'kd5',to_date('21/10/20','RR/MM/DD'),'f','코레일 ncs 같이 스터디원 모집중!',null,0,null,null,0,0,10,11);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',11,'kd6',to_date('21/10/20','RR/MM/DD'),'ㄹㄹ','면접 연습 같이하실 분!~','..\uploadImages\20211020140805.png',0,null,null,0,0,11,12);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',12,'kd7',to_date('21/10/20','RR/MM/DD'),'ㄹㄹ','안전관리기사 내년1회차 같이 공부하실분',null,0,null,null,0,0,12,13);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',13,'kd8',to_date('21/10/20','RR/MM/DD'),'ㄹ','c언어 프로젝트 같이 하실분 찾고있어요 지역은 인천 사시는분들만 모여주셨으면해요!~',null,0,null,null,0,0,13,14);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',14,'kd1',to_date('21/10/20','RR/MM/DD'),'ㄹㄹ','토익 스터디 모집합니다~!',null,0,null,null,0,0,14,15);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',15,'kd2',to_date('21/10/20','RR/MM/DD'),'ㄹ','kd2가 화공기사 스터디 모집합니다@@@','..\uploadImages\20211020141925.png',7,null,null,0,0,15,16);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',16,'kd3',to_date('21/10/20','RR/MM/DD'),'안녕하세요 정보처리기사 내년 1회차 같이 공부하실분 모집합니다!
제 지역은 서울 이대역쪽이구요 일주일에 한 두번정도 모여서 공부 같이하고
코딩 얘기도 많이 나누면 좋을거 같아요!
신청내용에 카톡 아이디 남겨주시면 연락 드리겠습니다
같이해서 꼭 합격합시다~@@@','정보처리기사 내년 1회차 공부하실분 찾습니다!!!','..\uploadImages\20211020152411.png',4,null,null,0,0,16,17);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',17,'kd1',to_date('21/10/20','RR/MM/DD'),'스프링 부순다','스터디 모집합니다',null,2,null,null,0,0,17,18);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',21,'kd3',null,null,null,null,null,'네 신청 확인했습니다 연락드릴게요!',to_date('21/10/20','RR/MM/DD'),2,2,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',22,'kd7',null,null,null,null,null,'다들 화이팅!',to_date('21/10/20','RR/MM/DD'),2,1,16,null);
REM INSERTING into FAQ
SET DEFINE OFF;
REM INSERTING into INQUIRE
SET DEFINE OFF;
Insert into INQUIRE (INQNUM,ID,INQTITLE,INQCONTENT,ASKCONTENT,WRITEDATE,ASKDATE) values (1,'kd1','문의합니다.','문의합니다.','답변을 달았습니다.',to_date('21/10/20','RR/MM/DD'),to_date('21/10/20','RR/MM/DD'));
REM INSERTING into MEMBERINFO
SET DEFINE OFF;
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd1','김중앙','가운데중','1234','1','01011112222','ca2222@naver.com','19910226','서울시 금천구','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd2','김오른','오른좌','1234','1','01022223333','ca3333@naver.com','19910225','서울시 관악구','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd3','김왼','왼우','1234','1','01033334444','ca4444@naver.com','19910224','서울시 구로구','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd4','김위','윗상','1234','1','01044445555','ca5555@naver.com','19910223','서울시 서대문구','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd5','김아래','아래하','1234','1','01055556666','ca6666@naver.com','19910222','서울시 종로구','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd6','김조은','김나쁜','1234','2','01066666666','ca7777@naver.com','19920413','전라남도 나주시','1','0',to_date('21/10/10','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd7','이지은','자만인','1234','2','01066666667','ca8888@naver.com','19910101','전라남도 나주시','1','0',to_date('21/10/10','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd8','김정은','겸손인','1234','2','01066666668','ca9999@naver.com','19010413','평양시','1','0',to_date('21/10/10','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('admin','관리자','관리자','tiger','1','01011111234','admin@jobsori.kr','19000101','잡소리','1','0',to_date('21/01/01','RR/MM/DD'));
REM INSERTING into STDAPPLY
SET DEFINE OFF;
REM INSERTING into STDCHK
SET DEFINE OFF;
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (17,'kd3','정처기 부시기!!',to_date('21/11/01','RR/MM/DD'),to_date('22/03/04','RR/MM/DD'),'5','0','정보처리기사',to_date('21/10/25','RR/MM/DD'),to_date('21/10/29','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (16,'kd2','ㄹ',to_date('21/11/01','RR/MM/DD'),to_date('21/11/30','RR/MM/DD'),'3','0','화공기사',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (15,'kd1','ㄹ',to_date('21/10/25','RR/MM/DD'),to_date('21/11/12','RR/MM/DD'),'3','0','토익',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (14,'kd8','ㄹ',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'),'3','0','c언어 프로젝트',to_date('21/10/28','RR/MM/DD'),to_date('21/11/28','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (13,'kd7','ㄹ',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'),'3','0','안전관리기사',to_date('21/11/01','RR/MM/DD'),to_date('22/03/31','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (12,'kd6','ㄹ',to_date('21/10/20','RR/MM/DD'),to_date('21/10/21','RR/MM/DD'),'3','0','면접',to_date('21/10/27','RR/MM/DD'),to_date('21/11/03','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (11,'kd5','ㄹ',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'),'3','0','코레일 ncs',to_date('21/10/27','RR/MM/DD'),to_date('21/11/25','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (10,'kd5','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'),'3','0','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/29','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (8,'kd4','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/27','RR/MM/DD'),'3','0','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/21','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (7,'kd4','ㄹ',to_date('21/10/26','RR/MM/DD'),to_date('21/11/05','RR/MM/DD'),'3','0','안전보건공단ncs',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (6,'kd3','ㄹ',to_date('21/10/25','RR/MM/DD'),to_date('21/11/19','RR/MM/DD'),'3','0','토플',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (5,'kd1','정보처리기사 부시기',to_date('21/10/26','RR/MM/DD'),to_date('21/11/26','RR/MM/DD'),'5','0','정보처리기사',to_date('21/10/14','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (4,'kd2','ㄹㄹ',to_date('21/10/25','RR/MM/DD'),to_date('21/11/27','RR/MM/DD'),'5','0','자바코딩',to_date('21/10/12','RR/MM/DD'),to_date('21/10/20','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (3,'kd3','f',to_date('21/10/19','RR/MM/DD'),to_date('21/11/03','RR/MM/DD'),'3','0','f',to_date('21/10/12','RR/MM/DD'),to_date('21/10/14','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (2,'kd1','dff',to_date('21/10/12','RR/MM/DD'),to_date('21/11/04','RR/MM/DD'),'4','0','123',to_date('21/10/12','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (1,'kd1','토스 정복',to_date('21/10/25','RR/MM/DD'),to_date('21/12/10','RR/MM/DD'),'5','0','토익',to_date('21/10/12','RR/MM/DD'),to_date('21/10/14','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (18,'kd1','코딩스터디',to_date('21/10/21','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'),'3','0','코딩',to_date('21/10/28','RR/MM/DD'),to_date('21/10/29','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index PK_FAQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_FAQ" ON "FAQ" ("FAQNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_INQUIRE
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_INQUIRE" ON "INQUIRE" ("INQNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_STDCHK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STDCHK" ON "STDCHK" ("STDNUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_BOARD
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_BOARD" ON "BOARD" ("B_TYPE", "B_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBERINFO
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_MEMBERINFO" ON "MEMBERINFO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_STDAPPLY
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_STDAPPLY" ON "STDAPPLY" ("STDNUM", "PARTICIPANT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table INQUIRE
--------------------------------------------------------

  ALTER TABLE "INQUIRE" MODIFY ("INQNUM" NOT NULL ENABLE);
  ALTER TABLE "INQUIRE" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "INQUIRE" MODIFY ("INQTITLE" NOT NULL ENABLE);
  ALTER TABLE "INQUIRE" ADD CONSTRAINT "PK_INQUIRE" PRIMARY KEY ("INQNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MEMBERINFO
--------------------------------------------------------

  ALTER TABLE "MEMBERINFO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBERINFO" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBERINFO" MODIFY ("NICKNAME" NOT NULL ENABLE);
  ALTER TABLE "MEMBERINFO" MODIFY ("PASSWD" NOT NULL ENABLE);
  ALTER TABLE "MEMBERINFO" MODIFY ("REGDATE" NOT NULL ENABLE);
  ALTER TABLE "MEMBERINFO" ADD CONSTRAINT "PK_MEMBERINFO" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "FAQ" MODIFY ("FAQNUM" NOT NULL ENABLE);
  ALTER TABLE "FAQ" MODIFY ("FAQTITLE" NOT NULL ENABLE);
  ALTER TABLE "FAQ" ADD CONSTRAINT "PK_FAQ" PRIMARY KEY ("FAQNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" MODIFY ("B_TYPE" NOT NULL ENABLE);
  ALTER TABLE "BOARD" MODIFY ("B_NUM" NOT NULL ENABLE);
  ALTER TABLE "BOARD" ADD CONSTRAINT "PK_BOARD" PRIMARY KEY ("B_TYPE", "B_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STDCHK
--------------------------------------------------------

  ALTER TABLE "STDCHK" MODIFY ("STDNUM" NOT NULL ENABLE);
  ALTER TABLE "STDCHK" MODIFY ("STDREG_ID" NOT NULL ENABLE);
  ALTER TABLE "STDCHK" ADD CONSTRAINT "PK_STDCHK" PRIMARY KEY ("STDNUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STDAPPLY
--------------------------------------------------------

  ALTER TABLE "STDAPPLY" MODIFY ("STDNUM" NOT NULL ENABLE);
  ALTER TABLE "STDAPPLY" MODIFY ("PARTICIPANT_ID" NOT NULL ENABLE);
  ALTER TABLE "STDAPPLY" ADD CONSTRAINT "PK_STDAPPLY" PRIMARY KEY ("STDNUM", "PARTICIPANT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "BOARD" ADD CONSTRAINT "FK_MEMBERINFO_TO_BOARD" FOREIGN KEY ("ID")
	  REFERENCES "MEMBERINFO" ("ID") ENABLE;
  ALTER TABLE "BOARD" ADD CONSTRAINT "FK_STDCHK_TO_BOARD" FOREIGN KEY ("STDNUM")
	  REFERENCES "STDCHK" ("STDNUM") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table INQUIRE
--------------------------------------------------------

  ALTER TABLE "INQUIRE" ADD CONSTRAINT "FK_MEMBERINFO_TO_INQUIRE" FOREIGN KEY ("ID")
	  REFERENCES "MEMBERINFO" ("ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STDAPPLY
--------------------------------------------------------

  ALTER TABLE "STDAPPLY" ADD CONSTRAINT "FK_STDCHK_TO_STDAPPLY" FOREIGN KEY ("STDNUM")
	  REFERENCES "STDCHK" ("STDNUM") ENABLE;
--------------------------------------------------------
--  DDL for Function APPLYPN
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "APPLYPN" 
( 
   p_participant_id          IN      stdapply.participant_id%TYPE 
,  p_stdnum                   in      stdapply.STDNUM%type            
,  p_apply_chk                in      stdapply.apply_chk%type
)  -- 1) Parameter 참여자사번
RETURN             number
IS
   v_count            NUMBER(5);
BEGIN
  -- 2) 참여자아이디, 스터디번호, 스터디상태로 해당 참여자 수를 구함
    SELECT  count(*)
    INTO    v_count
    FROM    stdapply sa 
    WHERE   sa.participant_id = p_participant_id
    and     sa.STDNUM = p_stdnum
    and     apply_chk = p_apply_chk ;
 
   RETURN v_count;  
END applypn;

/
