--------------------------------------------------------
--  ������ ������ - �����-12��-30-2021   
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

   COMMENT ON COLUMN "BOARD"."B_TYPE" IS '�Խù�����';
   COMMENT ON COLUMN "BOARD"."B_NUM" IS '�Խñ۹�ȣ';
   COMMENT ON COLUMN "BOARD"."ID" IS '���̵�';
   COMMENT ON COLUMN "BOARD"."UPLOADDATE" IS '�����';
   COMMENT ON COLUMN "BOARD"."CONTENT" IS '����';
   COMMENT ON COLUMN "BOARD"."TITLE" IS '����';
   COMMENT ON COLUMN "BOARD"."IMAGEPATH" IS '�̹������(Path)';
   COMMENT ON COLUMN "BOARD"."VIEWS" IS '��ȸ��';
   COMMENT ON COLUMN "BOARD"."COMMCONTENT" IS '��۳���';
   COMMENT ON COLUMN "BOARD"."COMMDATE" IS '��۵����';
   COMMENT ON COLUMN "BOARD"."RE_LEVEL" IS 're_level';
   COMMENT ON COLUMN "BOARD"."RE_STEP" IS 're_step';
   COMMENT ON COLUMN "BOARD"."REF" IS 'ref';
   COMMENT ON COLUMN "BOARD"."STDNUM" IS '���͵��ȣ';
   COMMENT ON TABLE "BOARD"  IS '�Խù�';
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

   COMMENT ON COLUMN "FAQ"."FAQNUM" IS 'FAQ��ȣ';
   COMMENT ON COLUMN "FAQ"."FAQTITLE" IS 'FAQ����';
   COMMENT ON COLUMN "FAQ"."FAQCONTENT" IS 'FAQ����';
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

   COMMENT ON COLUMN "INQUIRE"."INQNUM" IS '���ǹ�ȣ';
   COMMENT ON COLUMN "INQUIRE"."ID" IS '���̵�';
   COMMENT ON COLUMN "INQUIRE"."INQTITLE" IS '��������';
   COMMENT ON COLUMN "INQUIRE"."INQCONTENT" IS '���ǳ���';
   COMMENT ON COLUMN "INQUIRE"."ASKCONTENT" IS '�亯����';
   COMMENT ON COLUMN "INQUIRE"."WRITEDATE" IS '�ۼ��ð�';
   COMMENT ON COLUMN "INQUIRE"."ASKDATE" IS '�亯�ð�';
   COMMENT ON TABLE "INQUIRE"  IS '���ǻ���';
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

   COMMENT ON COLUMN "MEMBERINFO"."ID" IS '���̵�';
   COMMENT ON COLUMN "MEMBERINFO"."NAME" IS '�̸�';
   COMMENT ON COLUMN "MEMBERINFO"."NICKNAME" IS '�г���';
   COMMENT ON COLUMN "MEMBERINFO"."PASSWD" IS '��й�ȣ';
   COMMENT ON COLUMN "MEMBERINFO"."GENDER" IS '����';
   COMMENT ON COLUMN "MEMBERINFO"."TEL" IS '��ȭ��ȣ';
   COMMENT ON COLUMN "MEMBERINFO"."EMAIL" IS '�̸���';
   COMMENT ON COLUMN "MEMBERINFO"."BIRTH" IS '�������';
   COMMENT ON COLUMN "MEMBERINFO"."ADDR" IS '���ּ�';
   COMMENT ON COLUMN "MEMBERINFO"."REG_CHK" IS '���Կ���';
   COMMENT ON COLUMN "MEMBERINFO"."WIDRAW" IS 'ȸ��Ż��';
   COMMENT ON COLUMN "MEMBERINFO"."REGDATE" IS 'ȸ���������';
   COMMENT ON TABLE "MEMBERINFO"  IS 'ȸ������';
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

   COMMENT ON COLUMN "STDAPPLY"."STDNUM" IS '���͵��ȣ';
   COMMENT ON COLUMN "STDAPPLY"."PARTICIPANT_ID" IS '�����ھ��̵�';
   COMMENT ON COLUMN "STDAPPLY"."STDAPPLY_DATE" IS '���͵��û����';
   COMMENT ON COLUMN "STDAPPLY"."STDPARTI_DATE" IS '���͵���������';
   COMMENT ON COLUMN "STDAPPLY"."APPLY_CHK" IS '��û����';
   COMMENT ON COLUMN "STDAPPLY"."APPLY_CONTENT" IS '��û����';
   COMMENT ON TABLE "STDAPPLY"  IS '���͵��û';
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

   COMMENT ON COLUMN "STDCHK"."STDNUM" IS '���͵��ȣ';
   COMMENT ON COLUMN "STDCHK"."STDREG_ID" IS '���͵�����ھ��̵�';
   COMMENT ON COLUMN "STDCHK"."STDTITLE" IS '���͵�����';
   COMMENT ON COLUMN "STDCHK"."STDSTART_DATE" IS '���͵������';
   COMMENT ON COLUMN "STDCHK"."STDEND_DATE" IS '���͵�������';
   COMMENT ON COLUMN "STDCHK"."STDPN" IS '���͵��ο�';
   COMMENT ON COLUMN "STDCHK"."STDSTATUS" IS '���͵����';
   COMMENT ON COLUMN "STDCHK"."STDDIV" IS '���͵�з�';
   COMMENT ON COLUMN "STDCHK"."RECRU_DATE" IS '����������';
   COMMENT ON COLUMN "STDCHK"."RECU_DATE" IS '����������';
   COMMENT ON TABLE "STDCHK"  IS '���͵���Ȳ';
REM INSERTING into BOARD
SET DEFINE OFF;
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',21,'kd1',to_date('21/09/28','RR/MM/DD'),'����1','��������1',null,40,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',22,'kd1',to_date('21/09/18','RR/MM/DD'),'����2','����2',null,999,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',23,'kd2',to_date('21/09/09','RR/MM/DD'),'���͵𳻿�3','���͵�����3',null,36,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',25,'kd3',to_date('21/08/01','RR/MM/DD'),'<button type="button" class="btn btn-light btn-xs">����</button>','�±� �׽�Ʈ',null,36,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',26,'kd3',to_date('21/09/08','RR/MM/DD'),null,null,null,null,'��� �����Դϴ�',to_date('21/09/08','RR/MM/DD'),1,1,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',27,'kd4',to_date('21/09/20','RR/MM/DD'),'����6','����6','1',39,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',28,'kd4',to_date('21/09/21','RR/MM/DD'),'����7','����7',null,45,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',29,'kd5',to_date('21/09/25','RR/MM/DD'),'����8','����8',null,34,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',30,'kd5',to_date('21/09/27','RR/MM/DD'),'����9','����9',null,38,null,null,0,0,null,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',31,'kd2',null,null,null,null,null,'����� 2���̾� ����¹� �����̾�',to_date('21/09/29','RR/MM/DD'),1,2,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',33,'kd1',to_date('21/10/07','RR/MM/DD'),'asdf','zxcv','(null)',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',34,'kd1',to_date('21/10/07','RR/MM/DD'),'��������','�� ����','(null)',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',35,'kd1',to_date('21/10/07','RR/MM/DD'),'��������','�̹����� �����ϴ�','(null)',10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',36,'kd1',to_date('21/10/07','RR/MM/DD'),'��������','�۾���','(null)',4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',37,'kd1',to_date('21/10/07','RR/MM/DD'),'kgkj','ljhjk','uploadImages\null',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',38,'kd1',to_date('21/10/07','RR/MM/DD'),'��������','�̹��� ����','uploadImages\��ũ����(1).png',9,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',39,'kd1',null,null,null,null,null,'���',to_date('21/10/07','RR/MM/DD'),1,null,38,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',40,'kd1',to_date('21/10/07','RR/MM/DD'),'fasdfasdf','sdafasd','uploadImages\null',9,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',32,'kd2',to_date('21/10/07','RR/MM/DD'),'asdf','asdf','(null)',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',41,'kd1',null,null,null,null,null,'.mn,m',to_date('21/10/07','RR/MM/DD'),1,3,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',42,'kd1',to_date('21/10/07','RR/MM/DD'),'hfhgfgh','lmbkjhkjjk','uploadImages\��ũ����(1)1.png',4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',43,'kd1',null,null,null,null,null,'sdafasdf',to_date('21/10/07','RR/MM/DD'),1,null,30,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',44,'kd1',to_date('21/10/07','RR/MM/DD'),'��������','���Ӵϴ�.','uploadImages\null',9,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',45,'kd1',null,null,null,null,null,'asdf',to_date('21/10/07','RR/MM/DD'),1,null,38,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',46,'kd1',null,null,null,null,null,'kjhkj',to_date('21/10/07','RR/MM/DD'),1,4,24,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',47,'kd1',null,null,null,null,null,'asdf',to_date('21/10/07','RR/MM/DD'),1,null,23,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',48,'kd1',null,null,null,null,null,'asfd',to_date('21/10/07','RR/MM/DD'),1,null,23,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',49,'kd1',null,null,null,null,null,'���1',to_date('21/10/11','RR/MM/DD'),1,1,44,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',56,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','����������������','uploadImages\',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',51,'kd1',null,null,null,null,null,'���3',to_date('21/10/11','RR/MM/DD'),2,2,49,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',53,'kd1',to_date('21/10/11','RR/MM/DD'),'���� ���ε� �׽�Ʈ','���� ���ε� �׽�Ʈ','uploadImages\',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',54,'kd1',null,null,null,null,null,'asdf',to_date('21/10/11','RR/MM/DD'),1,1,52,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',55,'kd1',null,null,null,null,null,'����� �����մϴ�.',to_date('21/10/11','RR/MM/DD'),2,2,54,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',57,'kd1',to_date('21/10/11','RR/MM/DD'),'��������������������','��������','uploadImages\',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',58,'kd1',to_date('21/10/11','RR/MM/DD'),'��������������������','��������������',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',59,'kd1',to_date('21/10/11','RR/MM/DD'),'������','������������',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',60,'kd1',to_date('21/10/11','RR/MM/DD'),'�̹��� ����','�̹��� ����','\uploadImages\null',37,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',62,'kd1',null,null,null,null,null,'asdf',to_date('21/10/11','RR/MM/DD'),1,1,42,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',64,'kd1',null,null,null,null,null,'��������',to_date('21/10/11','RR/MM/DD'),1,3,60,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',65,'kd1',to_date('21/10/11','RR/MM/DD'),'������','������','\uploadImages\null',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',66,'kd1',to_date('21/10/11','RR/MM/DD'),'���','���','\uploadImages\null',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',67,'kd1',to_date('21/10/11','RR/MM/DD'),'��������������','����������������','\uploadImages\null',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',68,'kd1',to_date('21/10/11','RR/MM/DD'),'234789342789432','97834598234',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',69,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','��������',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',70,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','��������',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',71,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','��������',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',72,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','��������','uploadImage��ũ����(1)5.png',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',73,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','����',null,2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',74,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','�̹����� ����',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',75,'kd1',to_date('21/10/11','RR/MM/DD'),'��������','�̹����� ����','uploadImage\20210918_0952151.jpg',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',76,'kd1',to_date('21/10/11','RR/MM/DD'),'������������','��� �׽�Ʈ','uploadImages\20210918_095313.jpg',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',77,'kd1',to_date('21/10/11','RR/MM/DD'),'��������dsfsfdsadfasdfafs','��� ���� �׽�Ʈ','..\uploadImages\20210918_095212.jpg',15,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',88,'kd2',null,null,null,null,null,'dsaf',to_date('21/10/12','RR/MM/DD'),1,1,77,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',89,'kd1',null,null,null,null,null,'asdfasdf',to_date('21/10/12','RR/MM/DD'),1,2,77,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',86,'kd1',null,null,null,null,null,'��������������������',to_date('21/10/12','RR/MM/DD'),1,1,79,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',81,'kd1',null,null,null,null,null,'�� �ٲ��',to_date('21/10/12','RR/MM/DD'),1,1,80,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',85,'kd1',null,null,null,null,null,'���',to_date('21/10/12','RR/MM/DD'),2,1,84,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',83,'kd1',null,null,null,null,null,'����° ��� �ް�',to_date('21/10/12','RR/MM/DD'),1,2,80,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',87,'kd1',null,null,null,null,null,'��������������',to_date('21/10/12','RR/MM/DD'),1,2,79,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',90,'kd1',null,null,null,null,null,'asdf',to_date('21/10/12','RR/MM/DD'),1,3,77,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',98,'kd1',to_date('21/10/12','RR/MM/DD'),'dasadfsadfsfadsafdsafds','asdfdsfafad','..\uploadImages\20211012180327.png',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',92,'kd1',null,null,null,null,null,'jhghj',to_date('21/10/12','RR/MM/DD'),2,1,91,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',93,'kd1',null,null,null,null,null,'oiuhjkhk',to_date('21/10/12','RR/MM/DD'),2,2,88,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',95,'kd1',to_date('21/10/12','RR/MM/DD'),'���������������������������������㷯�äǤäǤä���Ǥ�','��������������������������������','..\uploadImages\20211012110531.png',40,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',96,'kd1',null,null,null,null,null,'����������������������������������������������������������������sdfasdffffds',to_date('21/10/12','RR/MM/DD'),1,1,95,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',97,'kd1',null,null,null,null,null,'����������',to_date('21/10/12','RR/MM/DD'),1,2,95,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',99,'kd1',to_date('21/10/14','RR/MM/DD'),'������������������','��ι̻��� ����','..\uploadImages\20211014115217.jpg',27,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',100,'kd1',null,null,null,null,null,'asdf',to_date('21/10/14','RR/MM/DD'),1,1,99,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',101,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',177,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',199,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,7,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',103,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',104,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',105,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',106,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',107,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',108,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',109,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',110,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',111,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',112,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',113,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',114,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',115,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',116,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',117,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',118,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',119,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',120,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',121,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',122,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',123,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',124,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',125,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',126,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',127,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',128,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',129,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',130,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',131,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',132,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',133,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',134,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',135,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',136,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',137,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',138,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',139,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',140,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',141,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',142,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',143,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',144,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',145,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',146,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',147,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',148,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',149,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',150,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',151,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',152,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',153,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',154,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',155,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',156,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',157,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',158,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',159,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',160,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',161,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',162,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',163,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',164,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',165,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',166,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',167,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',168,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',169,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',170,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',171,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',172,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',173,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',174,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',175,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',176,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',200,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,50,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',178,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',179,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',180,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',181,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',182,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',183,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',184,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',185,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',186,'kd1',to_date('21/10/14','RR/MM/DD'),'�滩','@@�������� ���� ��ü���� ������Ƽ�� ��������@@@',null,4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',65,'admin',to_date('21/10/15','RR/MM/DD'),'�ѱ��ɸ�������ȸ�� ��ȸ������ ����� ������ �ִ� �̵��� ���� �ɸ������ڰ����� �����Ͽ� 70���� �¶��� ���Ǹ� ������ Ȩ�������� ���� ����� �����ϰ� �ִ�. ȸ�����Ը� �����ϸ� ��ȭ����ī�� �Ǵ� �����ູī�� ���� ���ο� ������� ������ ������ �� �ִ�.

�ѱ��ɸ�������ȸ�� �����̾��귣�� ���� ���߽��۽�Ʈ�귣�� ����� ������ �� �ִ� ����û��� ��������������̴�. ���� ��ȸ����Ȱ���� ��ȯ���� �����ູī�� ��û��� �� ���ó�ʹ� ������� ���� ������ �ڰݰ����� ����� ���� �߿� �ִ�.

�̿� ���������Ű���ʹ� ������� ��ȸ������ 1~2�� �ڰ��� ������� �˾ƺ��� �ִ� �̵鿡�Ե� ����� ������ ���� �߿� �ִ�. �ƿ﷯ ��� �Ŀ��� �������� �н��� ���� �������� ���� �� ����� ���� ������ Ȯ�� ������ �����������Ʈ�� ��ü������ � ���̴�.','�ѱ��ɸ�������ȸ, ��ȸ������ ��� ���� ���ᱳ�� ����','..\uploadImages\20211015142143.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',66,'admin',to_date('21/10/15','RR/MM/DD'),'��� ���忡�� ���� �α� �ִ� �ڰ����� ������������ɻ� �ڰ��� ������ ��Ÿ����. �������� �ڰ����� ���� ����غ���� ������ �߽����� ���� ���ߴ�. ������ ���� ���� �����ϴ� �ڰ����� �����̳� ����, ���� ���� �ڰ����� ������ ����ƴ�.

�ѱ�����η°����� ��� ���� �������� ��ũ�ݿ� �ö�� �ֱ� 3��(2018~2020��) ġ ���ΰ��� �м��� �����. �� �Ⱓ�� ����� 22��6000�� ���� ���ΰ��� �� 22��5000���� ��������ڰ��� ä�� ������� ���ϰų� ����ϰ� �ִ� ������ ��Ÿ����.

���� ���� ���� Ȱ��� ��������ڰ��� ������������ɻ翴��. �̾� ������, �ѽ�������ɻ�, ������, ����� ���̾���. Ư�� �Ǽ��о߿� ����о߰� ������ ��ũ�� �̷� �������� �ڰ����� �ʼ��� ������ �м��ƴ�. ���� 8�� �ڰ����� ���������� ���� ������ ��� ���忡�� �߰��ϰ� �α⸦ ������ �־���.

���ȯ����� �ֱ� ź�� �߸� �� ��� ������ �ݿ��� 2018�� 24������ ������ 13���� �αⰡ �޼ӵ��� ����ߴ�. �� ��������(2��) �ڰ����� ������ 20%�� ���� �Ǽ��� �����ϴ� �� ������κ��� ������ �������� ������ �α� �ڰ����� ������ ������. ��ǻ��Ȱ��ɷ�(2��), ����ó�����, �������α�ɻ� ���� �������(IT)�� �繫�ڵ�ȭ(OA) Ȱ��ɷ��� ���� ����� ã�� ����� ���� �߼�����.

������ ��������ڰ� ���迡 �����ϴ� �ο��� ���� ���� ���� 15�� ��� ������ �̿��, �������μ���, ������ɻ�, ������ɻ� ���� �������� �ڰ��̾���.','���� ��� �ߵǴ� �ڰ����� ���������������� ���� �� ����?','..\uploadImages\20211015142220.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',67,'admin',to_date('21/10/15','RR/MM/DD'),'�������ڸ���=�ڼ��� ���� | ������ ������������� ���� �츮���� û�� 10�� �� 7���� ��ǻ� ���� �ܳ� ������ ������ ��Ÿ����.
 
�ѱ�����������(���� �Ѱ濬)�� ��ǥ�� ��2021�� ���л� ����νĵ� ���硯�� ������ ���� 4���� ���� 3~4�г� ���л� �� ������ 2713���� ������� �ǽ��� ��� ���л� 10�� �� 6~7��(65.3%)�� ������ �ܳ��� ������ ������ ��Ÿ����.
 
�����ܳ� ������ ����Ȱ�� ���� ���� �� ����� ����(33.7%) ���Ƿ������� �ϰ� ����(23.2%) �⽬�� ����(8.4%)�� ���� ��ġ�̴�. ���������� ����Ȱ���� �ϰ� �ִٴ� ���� ������ 10�� �� 1�� ��(9.6%)�� �Ұ��ߴ�.
 
���������� ����Ȱ���� ���� �ʴ� �����δ� ���ڽ��� ����, ���, ���� ���� ������ �� �غ��ϱ� ����(64.9%)��� ���� ���� �����߰� �̾ ������ �Ǵ� ���� �о��� ���ڸ��� �����ؼ�(10.7%) �ⱸ��Ȱ���� �ص� ���ڸ��� ������ ���� �� ���Ƽ�(7.6%) �������� �ӱݼ����̳� �ٷ������� ���� ���ڸ��� �����ؼ�(4.8%) ���� ������ ��Ÿ����.
 
���� û�� �����ڵ��� ü���ϴ� ä�� ������ ȯ���� ������ ���ܿ����� �ִ�.','���ٴñ��ۡ� ��� �������л� 10�� �� 7�� ���� �ܳ�','..\uploadImages\20211015142314.jpg',5,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',72,'admin',to_date('21/10/15','RR/MM/DD'),'�ټ��� û�� �����ڵ��� ���������� ���Ȱ���� �ϰ� ���� �ʴ� ������ ����ƴ�. 10�� �� 6~7���� ��ǻ� ������ �ܳ��� ���°�, �ڽ��� �ɷ� ���� �����ϴٰ� �����ϴ� �� ������ ���� �δ��� ������ �־���.  

�ѱ�����������(���� �Ѱ濬)�� ���� 4���� ���� 3~4�г� ���л� �� ������ 2713���� ������� ��2021�� ���л� ����νĵ� ���硯�� �����ϰ� �� ����� 12�� ��ǥ�ߴ�.

�������� ������ ���л� 10�� �� 6~7��(65.3%)�� ��ǻ� ������ �ܳ��� ���¿���. ��ǻ� �����ܳ� ������ ����Ȱ�� ���� ���� �� ���� ����(33.7%), �Ƿ������� �ϰ� ����(23.2%), ���� ����(8.4%)�� ���� ��ġ��. �ݸ� ���������� ����Ȱ���� �ϰ� �ִٴ� ���� ������ 10�� �� 1�� ��(9.6%)�� �Ұ��ߴ�.

���������� ����Ȱ���� ���� �ʴ� �����δ� ���ڽ��� ����, ���, ���� ���� ������ �� �غ��ϱ� ���ء�(64.9%) ��� ���� ���� �����ߴ�. �̾� ������ �Ǵ� ���� �о��� ���ڸ��� �����ؼ���(10.7%), ������Ȱ���� �ص� ���ڸ��� ������ ���� �� ���Ƽ���(7.6%), �������� �ӱݼ����̳� �ٷ������� ���� ���ڸ��� �����ؼ���(4.8%) ���� ���̾���. ����Ÿ��(9.6%) �ǰ����δ� ��κ� ������ ��Ȯ�����̶�� ���ߴ�. 

�Ѱ濬�� ��û����� ������ ġ�������� ������� �ӿ��� �������� ������ɼ��� ���� �����ϰ� ���� �ڽŰ��� �Ұ� �ִ١��� ���̴� û����� �뵿���� ������ ���߰� �̷��� ���� ������ ���ϵǴ� ����� �߱��� �͡��̶�� ����� ǥ�ߴ�.

�� ��ټ��� ���л����� ü���ϴ� ��� ȯ���� �۳⺸�� �����, �����ε� �� ������� ������ �����ߴ�. ','����� �غ�� ������������ �տ� �ڽŰ� ���� û���','..\uploadImages\20211015142912.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',74,'admin',to_date('21/10/15','RR/MM/DD'),'(����=���մ���) ������ ���� = ���� �ڷγ����̷��� ������(�ڷγ�19) ���ķ� ���׻� ��� ���� ��κ� �����鼭 ���� ������ ��û�� ���� �����簡 �� �� ���� ������ ��Ÿ����.

8�� ��ȸ ��������ȸ �Ҽ� ���Ҿ���ִ� ��α� �ǿ��� �������κ��� ������� �ڷῡ ������ ���� 9������ ���⵵ ���׻� ����� ���� ������ ��û�� ���ñ� ������� 0������ Ȯ�εƴ�.

������ ��û�� ���� ���� �� ���׻翡 ����� ���� ���ñ� ������� 7���̾���.

�̴� ������ ������ 113��� ���ϸ� �ް��� ��ġ��. ������ �ų� 100~130������ ���� ���ñ� �����簡 ���� �� ���׻翡 ����� ������ ������ ���� �������� ������ ������.


���� ���ñ� ������� �Ӱ� 8��17���� �����屳��, ���� �Ⱓ �����Ʒ��� ���� �������� ������� ����� �������� �����Ʒ��� ������ �� �ִ�.

��α� �ǿ��� "���ñ� ��������� ������ �ް��� ���� �ڷγ�19 ���ȭ�� �پ�� �װ� ���� ſ�� ���׻���� ä���� ū ������ �پ��� ����"�̶�� �����ߴ�.

�̾� "�̴� �Ͻ��� ��������, �ڷγ�19 ���� ������ �ٽ� ���׻��� �����η� �缺�Ұ� �Ǵ� ���� ������ �ٺ����� ��å�� �����ؾ� �Ѵ�"�� �����ߴ�.','�ڷγ��� ���׻� ��� �����ڡ����� ���� ������ ������û 0��','..\uploadImages\20211015143104.jpg',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',77,'admin',to_date('21/10/15','RR/MM/DD'),'��������ó�� ���� ''2021 ���� ���� ��å ���� ��� ���̳�''�� �¡��������� ������� ���� �ΰ� ������ ���� ���� ���ε��� ������ ��� ������ �ʿ伺�� �����߽��ϴ�.

���� ���뱺���ְ�(5��8��) ����� ��ȯ���� ���� �̹� ���̳����� ���� ������ ��Ȱ�� ��ȸ ���Ϳ� ��Ȱ ������ ���̱� ���� ���� ���, ���� ü�� ��ȭ�� ���� ��å ���� ���, ���� ���� ���� ��å�� ���� ����� ����ƽ��ϴ�.

Ȳ��ö ����ó���� "���ο� �ΰ��� ������ ���� ���� ���ε��� ������ ��� ������ �� ����, �ǹ� ������ ���� Ȯ�� ���� �ʿ��ϴ�"�� "�̹� ���̳��� ���� ���� ���� ��å�� ���� �� �����Ǳ� �ٶ���"�� ���߽��ϴ�','����ó "�ΰ� �������� ���� ���� ������ ��� �����ؾ�"','..\uploadImages\20211015143443.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',79,'admin',to_date('21/10/15','RR/MM/DD'),'������ ���� �̻��� ���� �Ϲݱ� ��� ��⵵ ��ݱ�� ����ϴٰ� ü���ϴ� ������ ��Ÿ����.

��� �÷��� ���ڸ��ư� �˹ٸ�� �Բ� 9�� 29�Ϻ��� 10�� 6�ϱ��� �Ϲݱ� ���� Ȱ�� ���� ������ 1,196���� ������� �Ϲݱ� ��� ��� ü�� ��Ȳ�� ���� ���� ������ ����� 7�� ��ǥ�ߴ�. ���⿡�� ���� ������ 854��� ��� ������ 342���� ���Եƴ�.

���� �Ϲݱ� ��� ��Ⱑ ��ݱ⿡ ���� ������ ���̴��� ���� ������ ��ü �������� 57.3%�� ��ݱ�� ����ϴٰ� ������.

������ ������(56.0%)�� ����� ������(60.5%) �� �׷쿡�� ��� ���� �̻��� �̷��� ���ߴ�.

�̾� ��ݱ⺸�� �Ϲݱ� ��� ��Ⱑ ������ �� ���ٴ� �����ڰ� 34.7%����, �Ϲݱ� ��� ��Ⱑ ��ݱ⺸�� ������ �� ���ٴ� �����ڴ� ��ü ������ �� 8.0%�� ���ƴ�.

�Ϲݱ� ��� ��Ⱑ ��ݱ⺸�� ������ �� ���ٰ� �����ϴ� ���� �߿��� ''�ڷγ�19 ��Ȯ������ ���� �� ä�� ������ ����ǰ� �־''��� ���� �̵��� 28.2%�� ���� ���Ҵ�. ''�������� ä���ϴ� ����� ���� ������''��� �亯�� 25.3%�� �� �������� ���Ҵ�.

Ư�� ���� ������ �߿��� �������� ä���ϴ� ����� ������ �Ϲݱ� ��� ��Ⱑ ��ݱ⺸�� ������ �� ���ٰ� ü���ϴ� �����ڰ� 29.6%�� ���� ���Ҵ�.

��� ������ �߿��� �ڷγ�19 ��Ȯ������ ���� �� ä�� ������ ����ǰ� �־� ��� ��Ⱑ �������ٰ� �����ٴ� �̵��� ������� 36.1%�� ���� ���Ҵ�.','������ 57% "�Ϲݱ� ��� ��⵵ ��ݱ�� �����"','..\uploadImages\20211015143648.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',81,'admin',to_date('21/10/15','RR/MM/DD'),'10�� ���� ������ �����뿡�� ����� SK�׷� ���Ի�� ����ä�� �ʱ���� ��SK���տ����˻硯(SKCT)�� ��ģ ��������� ������� ���������� �ִ�. SK�׷��� ���� �Ϲݱ� ��ä�� ������ ä�� ����� ���� ä������ ���� ��ȯ�Ѵ�','��SK ��ä ���� Ÿ�ڡ��� ���ٱ� ���� ��� ����','..\uploadImages\20211015143800.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',84,'admin',to_date('21/10/15','RR/MM/DD'),'[����=���ý�] ��ο� ���� = 2���� �ܱ��� ��Ʈ��ũ�� ������ ���н��ڸ��ư� 15�� �÷��� ���񽺸� �������� �����δ�.

8�� ���н��ڸ��ƿ� ������ �ѱ� ��� ����� ����ϴ� �ܱ����� ���� ���� ����, ��� ���� ������, �λ����� ������ ����, �ѱ� ��ȭ ������������ ���� �������ɾ� ���α׷��� �ָ� �̷��.

�� ������ ������ ���� 70���� ������� ��Ʈ�ʽ��� ���� �۷ι� ����� ������ ��� ����� ��Ī�Ѵ�.

���н��ڸ��ƴ� 15�� ���� 3�� �¶���(��Ʃ�� ���̺�) ���̳��� ���� �������� �ܱ��� ��� �����ڸ� ���� �� �����̴�. �̹� ���̳��� ����� ����ȴ�. ���� ��û �����ڵ鿡�Դ� ���� �� ���Ϸ� ���� ��ũ�� �߼��Ѵ�.

���� ��û���� ���� �����ڵ��� ���н��ڸ��� ������Ʈ�� �ν�Ÿ�׷�, ���̽����� ���� ���� ��ũ�� Ȯ���� �� �ִ�.','��� ���� �ܱ���, ����� ��Ī��''���н��ڸ���'' �','..\uploadImages\20211015144034.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',85,'admin',to_date('21/10/15','RR/MM/DD'),'���� ���� ��14ȸ û�����ڸ��ڶ�ȸ�� ���� 7�� ���� ��� ��� Ų�ؽ����� ��� ����ڵ��� �������� �ް� �ִ�. ������ �������� �ޱ� ���� ��ٸ��� ��� ����ڵ�','û�� ���ڸ� �ڶ�ȸ ''��� ������''','..\uploadImages\20211015144134.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',86,'admin',to_date('21/10/15','RR/MM/DD'),'��������ó ��õ������û(��û�塤������) ���뱺���������ʹ� ���뱺���ְ��� �¾� �ߡ���⺹�� ����(����)���ο��� �������� ���ڸ� ������ ���� ''�¶��� �����ũ��''�� 7�� �����ߴ�.

�̹� ��ũ���� ���뱺���� ����� �ʿ��� ��������� ���, ��� �� �ʿ��� ''�����ȭ�� ����'', ''�ڷγ�19 �ô� �������� ��ȭ'' � ���� ������ ����ư�, ���� �Ŀ��� ��� ������� �������� ����ƴ�.

������ ��õ���뱺�������������� "�̹� ������ �ڷγ�19 �ô� ���뱺���� �������� ��ȸ���⿡ �������� ������ �� ������ ����Ѵ�"�� ���ߴ�.','��õ������û ���뱺���������� ''�¶��� �����ũ��'' ����','..\uploadImages\20211015144213.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',87,'admin',to_date('21/10/15','RR/MM/DD'),'[���ϸ��ѱ� õ���� ����] LF �ƴ����� ����� �������� �ִ� ������û ��2û�翡�� ''�ϡ�Ȱ�� ����''�� ���� ���������� ü���ߴٰ� 7�� ������.

LF �ƴ����� ���̵����� ���� ���� ���簡 ������ �湮�� 8~72���� ������ �����ƿ��� �ߴ� ���� �׸�å ���̿� ������ �����ϴ� ���񽺴�. LF �ƴ��� �Ҽ� ���̵��� ����� 2~9�ð� �ð����� �����Ӱ� �ٹ��ϰ� �־� ��´��� �����鵵 ������ ��Ȳ�� ����� ��ȸȰ���� �̾�� �� �ִ�.

 LF �ƴ����� ����50�÷������Ͱ� ������ 50�� �̻� ��´��� ������ ������� �ƴ��� ������������ Ư�� ������ �������������� �ǽ��Ѵ�.

���������� ��� �̼��� �����ڵ鿡�� �ڻ� ���̵��� ������� ��� ��ȸ�� �����ϸ�, ���� �����ڵ��� ���̵��� ���� Ȱ���� ���� �Ƶ����������� �ڰ����� ����� �� �ֵ��� �����Ѵ�.

LF �ƴ����� ����̵����� ���� ��������α׷� Ȱ�� �⿵���� ��ȣ�ۿ� �� �� ���� �⿵���� �ߴ� �� ���� �⿵���� �������� �⿵���� ���� �� ���� �⿵���� �⺻��Ȱ �Ⱘ�� ������ �� �������� �� �ٹ���� ������ ü������ �򰡰� �̷��� �����̴�. �ڼ��� ������ LF �ƴ��� ���̵������� �����ϸ� �ȴ�.

 LF �ƴ��� ���������� �����ڴ� "�������� ���簡 �����ϴ� �湮 ���̵��� ���񽺸� ���� Ȯ���� �ڷγ�19�� �ڳ� ������ ������� �޴� ���� ��ŷ���鿡�Ե� ���� �� �ִ� ���񽺸� ������ ��"�̶�� ���ߴ�.','LF �ƴ���, ��´��� ���� ��� ��ȸ Ȯ�� ����','..\uploadImages\20211015144337.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',90,'admin',to_date('21/10/15','RR/MM/DD'),'���� ���� �������� ������ �� �� �� �� ���� ���л��� ������ ����ƴ�.

�����п��ϴñ����� ������輭�񽺿� ���� �Ϲݴ� ���� �л� ���� �м��� ����� 8�� ��ǥ�ߴ�.

�̿� ������ ���� ����� �� ���л� ������ 24.5%(2��2956��)�� ���� ��� 0.1%p ������ ������ ������ Ȯ�εƴ�.

���� ����� ������ 1970��� ���� ������ �þ�� �߼���. 1970�� 1.1%�� �Ұ������� 1980�⿡�� 2%, 1990�⿡�� 8.8%, 2000�⿡�� 19% ������ ���� �����ߴ�. ���Ŀ��� 10% �Ĺݴ븦 �����ϴٰ� 2011�� ó������ 20%�� �Ѿ 20.6%�� ����ߴ�.

���� ���а迭 ��� ���л� ������ ���� ������ �������̾���. ������ ��� 46.4%�� ���л��̾���. �̾� ��������(45.6%), ȭ�а���(41.6%), ���а���(39.6%), ���ð���(36.6%), ������(34.7%) ���� ������ ���л� ������ ���Ҵ�.

�ݸ� ���л� ������ ���� ���� ������ �ڵ�������(6.5%), ������(8.3%) ���̾���.

���� ���������� ���캸��, ���а迭���� ���л� ���� ���� ���� ������ ����(31.1%)�̾���. ����(28.8%)�� �λ�(25.2%), ���(25%), ����(18.7%) ���� �ڸ� �̾���.

������ �����п��ϴñ��� ���̻�� ������� ���� �� ���л� ���� ������ ������ ��ģ ������ Ǯ���ߴ�. �迭�� ������� �������� �� ���а迭�� �ٸ� �迭�� ���� ���� ������ ������� ���̰� �ֱ� �����̴�. �� �̻�� ������� �� ���л� ������ 25% ���ر��� ������ ������ ������ ����ȴ١��� ���ߴ�.','����� �� �Ǵϱ������ ����� 4�� �� 1�� ���л�','..\uploadImages\20211015144634.jpg',27,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',94,'admin',to_date('21/10/15','RR/MM/DD'),'[���̽����� ���뼮 ����] �̱� ���� ����� ���� �þ�� �ݸ� ���� ����� ���� �پ�� ������ ��Ÿ����.

�̱� �뵿�ΰ� �ֱ� ��ǥ�� ���� 9�� ��� ��迡 ���ϸ� 20�� �̻��� ���� ����� ���� 8-9���� �� 35�� �� �����ߴٰ� �����Ͱ� �����ߴ�. 2020�� 2�� ��� �� 200�� �� ������, ���� ������ ������ ����� ȯ������ �� �� �ִٰ� ���ߴ�.

�ݸ� 20�� �̻� ���� ����� ���� 8~9���� 32�� 1000�� �����ߴ�. �۳� 2�� ��� ���� �������� ���� ���ݿ� ��ġ�� �����̴�.

�̱� ������å������(IWPR)�� ���� ���̽� ������ ������ "�ҵ���(������ ������) ���� ������ �������� ū ��ǳ�� �Ұ� �ִ�"�� �̵� �����ߴ�. "�ҵ����� ������ ������ ��� ������ ��� �غ��ؾ� �ϴ���, �װ��� ���̳� ��¿� ��� �ǹ̸� ���������� �Ǻ��Ϸ��� �ð��� �ɸ� ���̴�"�� �����ߴ�.

�ٸ� ���ش� ���� �б��� ���� ���鼭 ���� ����� �� ���� ���� ������ 8~9���� 100�� ���� �Ѵ� ���ҿ� ���� �ξ� �۾Ҵٰ� �� ��ü�� ���ߴ�.

����, �̱� ��� �ӵ��� 8���� 36�� 6000���� ���ڸ��� �þ ���� 9���� 9�� 4000�� ���ڸ��� �߰���, ���� ��ȭ�ƴ�.

������ �ұ��������� ����ϰ� �ִ� ���� �� ���� �о��� ����� 9���� 7�� 4000�� �����ߴ�. �׷��� ���ľ��� ����� 2���� ���� ���� �ٲ��� �ʾҴ�.

9�� �߼� ���� �̱��� �ڷγ�19 �߻� �Ǽ��� �����ϰ� �ִµ�, �̴� ���� �� �� ���� �뵿������ ���� ��Ȱ�ϰ� ȸ���Ǵ� �� ������ �� ������ ����ȴٰ� �� ��ü�� ���ߴ�.','�̱�, ���� ����� 8~9�� 35���� �پ�...������ ������ ���ܿ�','..\uploadImages\20211015145055.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',95,'admin',to_date('21/10/15','RR/MM/DD'),'���￡ ��� û�� 10�� �� 3�� ������ ''������ ��''�� �ϰ� �ִ� ������ ��Ÿ����.

���￬������ ''���� û�⿡�� �� ���̶�?''�� ''���� û�⿡�� ����� ����, �׸��� ���̶�?''�� ������ ���������׷��Ƚ� �ø��� 2���� 1�� �����ߴ�.

���￬������ ������ �� 18��34�� û���� ������� �ǽ��� �����湮���� ����� ���� �ѱ�û�ҳ���å������, û���ȸ������������ ���û �����ڷḦ Ȱ���ߴ�. ���� ������ 3520�� �� ������ 676���̾���.

���� û�� �� 2.9%�� �濡�� �� �����ų� �α� ���������� �����ϴ� ''������ �� û��''���� ��Ÿ����. Ư�� ���� ''������ �� û��'' �� 32%�� ���� �Ⱓ�� 3�� �̻� ���ϸ�, ���� ���� ''����� �ȵż�''(41.6%), ''�ΰ����谡 �ߵ��� �ʾƼ�''(17.7%) ���� �žҴ�.

���� û���� �ϻ󿡼� �����ϴ� �������� ���� ����� �߿��� ''��� ���� �������''(37.3%)�� ���� ���Ҵ�. �̾� ���� ���ƴ�(33.9%), �� �� ���� ���ΰ� ���� �ʾҴ�(24%) ���̾���. �� �����ϰ� ȥ��, ȥ�� ������� ���� û���� ���� 65.6%, 21.3%�� ���� 53.7%, 15% ���� �ټ� ���Ҵ�.','��� �ȵż�..���� û�� 10�� �� 3���� ''������ ��''','..\uploadImages\20211015145208.jpg',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',98,'admin',to_date('21/10/15','RR/MM/DD'),'[���Ͼ����Ź�] �ѱ��� ��� �غ� û����� �ؿܷ� ���� ���� �� �ֵ��� ���ο� �� ���� ���� ���� ������ �����ϰ� ���� ��� ����� ������.

�ѱ�����η°����� 8�� �ѱ����������Ϳ��� û�� �ؿ� ���� Ȯ�븦 ���� ����2�� �ؿ���� ��å���� �������� �����ߴٰ� ������.

�̹� ������ �ڷγ�19 �濪��ħ�� ���� �ּ����� �ο��� ���������� ������������ �ؿ� ��� ü�� ���࡯�� ������ �ؿ� ��� �������� û���� ������ ���� ��ǥ�� ����� �����ߴ�.

���� �ؿ� ����� ������ ���� �������� û�� ������ ���� ������ �� �ֵ��� �������÷��� ��Ʃ�� ä���� ���� ������ �����ߴ�.

������ ��û�� �ؿ���� �������� �м� ��� ���� �� �û������� ���ؿ� ��� ���� ���İ����� ������ȡ�, �������� �߽��� �ؿ���� ������� ���� ���⡯ �� 3�� ������ ���� ��ǥ�� ����ƴ�. �������� ���Ա���� ���ϴ� �ؿ���� ���� ü�迡 ���� ��е� �̾�����.

�ѱ�����������б� ������ ������ �� 18~34�� û�� 1400�� ���� ������� ���ؿ���� �������� ������� �м��ߴ�.

���� ���, ������ �� 50.1%(705��)�� �ؿ���� ������ �ִ� ������ ��Ÿ������, ��۷ι� ���� ���� �������ο� ���� ���� ���� ��°��� ��ٹ� ȯ���� ���Ƽ� ������ ��Ÿ����.','�ѱ�����η°���, ����2�� �ؿ���� ��å���� ������ ����','..\uploadImages\20211015145734.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',99,'admin',to_date('21/10/15','RR/MM/DD'),'[����=�ƽþư��� ��ä�� ����] ä��ڶ�ȸ�� ������ ������ ���� �� �Ѹ� ����� ������ ������ ��Ÿ����. ä�� ������ �ִ� ����� �μ�Ƽ�긦 ������ ��ȿ�� ���� ��Ī�� �̷������� �����ؾ� �Ѵٴ� ������ ���´�.

28�� ��ȸ ȯ��뵿����ȸ ��ö�� ���Ҿ���ִ� �ǿ����� ���뵿�ηκ��� ���� �ڶ�ȸ ���� �ڷῡ ������, ������ 6�� ������뵿û�� ������ �ڶ�ȸ�� ������ ������ 1��7804�� �� 1817��(10.2%)�� ����� ������ ��Ÿ����. 10�� �� 1����̾���. ������, ����, ����� �� ����������� ������� ���Ρ����� �̽���ġ�� �ؼ��ϴ� �� ������ �ڶ�ȸ ����� ��ȿ���� ���ٴ� �����̴�.


�ֱ� 3�Ⱓ ���� �ڶ�ȸ�� ��� �˼� ������ ���� 2018�� ���� 7930�� �� ����� 822��(10%), 2019�� 9418�� �� 860��(9%), �� 1~8�� 456�� �� 135��(29%)�� ������ �����ߴ�. �����ؿ� �ڷγ�19 ������ �ڶ�ȸ�� �������� �ʾҴ�. 3�Ⱓ ������ �߼ұ�� 950���� ���� �ο��� 8558���̳� ������ ���� ��� �ο��� 1817��(21%)�� �Ұ��ߴ�. Ư�� ���� ���� �ڶ�ȸ�� ������� 2018�� 6%, 2019�� 5%�� 6�� ����û �� ������ ���� �����ߴ�.

�� �ǿ��� "�������, ������� ������ ������ �ᱹ �����ڵ��� �ڶ�ȸ���� ���� ���ϴ� ���� ���"�̶�� "�ڶ�ȸ�� �����ڵ��� ���� ������� �̾��� �� �ֵ��� ä�� ������ �ִ� ��� �߽����� �μ�Ƽ�긦 ������ Ȱ���� ���Ρ����� ��Ī�� �̷��� �� �ֵ��� ���� ����� �����ؾ� �� ��"�̶�� �����ߴ�.','�̷��� ''��ȸ�� �ڶ�ȸ'' ���ǡ��ڶ�ȸ ���� ''���� �� �Ѹ�'' �������','..\uploadImages\20211015145901.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',103,'admin',to_date('21/10/15','RR/MM/DD'),'������� ���γ��� ���ÿ� �ذ��� ������ ��븦 ������ �ִ� ���̷�Ʈ ��� ��Ī �÷��� ''���(JOBDA)''�� ��õ���� �¾� �̺�Ʈ�� �����Ѵ�.

������� ���̷�Ʈ ��Ī �÷��� ���(JOBDA)�� ��ϴ� ���ο��� ��õ���� �¾� �� 70�� ����� �����ϴ� ���̷�Ʈ ��Ī �̺�Ʈ �������١��� �����Ѵٰ� 3�� ������.

''���̷�Ʈ ��Ī''�� ����(AI�����˻�) ����� �������� ���� ������ ������� �����ڿ� ����� ��Ī(����)�� �ִ� ���ο� ä�� ����̴�. �����ڴ� ����(AI�����˻�) ���� �� �ڽ��� ���ϴ� ��� �� ������ 3�������� �����ϸ� ���� �� �´� ����� ������ ��õ ���� �� �ְ�, ���� ����� �����ϴ� �߰� ������ ���� �Ի簡 Ȯ���ȴ�.

����� ������ ä�� ������ ����� �ʰ� ���� ����� ������� ȸ�翡 �� �´� ���� Ǯ�� ��õ ���� �� �ְ� �ְ�, �̸� ������� �߰� ������ ���Ͻ� ������ ������ �� ���� ä�� ���θ� �����ϸ� �ȴ�.

�ռ� ���� 9�� 1�Ϻ��� 10�ϱ��� ������(���Ϸ�)���� ������ �����̷�Ʈ ��Ī������ �����̶�� ª�� �Ⱓ���� KT��������, DHL�ڸ���, ���Ͼ�ǰ �� 38�� ��� ����� ������ 1525���� �����ڸ� ��Ī�߰�, ���������� 174���� ���� ���縦 ����� ��õ�ϸ� ���������� �������ƴ�.','������� ���γ� ���� �ذ� ''������'' �̺�Ʈ �ü�','..\uploadImages\20211015151838.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',104,'kd1',null,null,null,null,null,'���� �Ƹ���',to_date('21/10/15','RR/MM/DD'),1,1,90,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',107,'admin',to_date('21/10/16','RR/MM/DD'),'���ηε�� ������ȸ ������û�� 10�� 12�Ϻ��� 11�� 1�ϱ��� �̸�, �л����� �ڽ��� ���θ� ������ ����Ͽ� ���������� �ε���� �����ϰ� ���ư� ü������ ��������� ������ �� �ֵ��� ��Ǵ� �̹� ��ȸ�� �� 30���� �л����� ������ 1, 2���� ���� �������� �ǽ��� �� ��ü �ۼ��� ���ηε���� ���Ͽ� �û��ϴ� ������� �����Ѵ�.

���ηε�� �ۼ��� ���� �������� �ڷγ�19�� ���� ��ȸ�� �Ÿ��α⿡ ���� �ǽð� �¶��� ���� �÷����� ������� ��� �����̸�, �л����� �ڱ� ���ؿ� ���� ���ε�ʿ� ����� ���ηε�� ���� �� ���� ��ǥ�� �ǵ�� �� �л����� �ɵ����� ������ �������� ���������� �����Ͽ� �¶������� ���α׷��� ����Ǵ��� ���ߵ��� ���ϵ��� �ʵ��� ���α׷� ����ȭ�� ������ �� �����̴�.

�ѱ�������б� ������ �������ڸ����߿����� ���л����� �ڽ��� ������ ���θ� �ѷ��ϰ� �����ϴ� ���� ���� ���������� ���� �ʰ� ���ϴ� ��ǥ�� ���������� ������ �� �ִ� �������̴�"�� "źź�� ���� ���踦 �������� �л����� ��� �����̶�� ��ǥ�� �ż��ϰ� ������ �� �ֵ��� ���������� ������ �͡��̶�� ���ߴ�.','�ѱ������ �������ڸ����߿�, ��2021�г⵵ ���ηε�� ������ȸ�� ����','..\uploadImages\20211016012148.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',109,'admin',to_date('21/10/16','RR/MM/DD'),'���� 8�� ����غ��ڰ� ���� �ִ�ġ�� ����ߴٰ� �մϴ�.

����غ��ڴ� �����Ȱ���α� �� ������� �غ� �ϰ� �ִ� ����� ���ϴµ���. ���û ����������п� ������ 8�� ����غ��ڰ� 87�� 4000������ 2003�� ��� �ۼ� �̷� ���� ���� ���� ����ƽ��ϴ�.

�ڷγ� �ñ����� ���� ������� ä�빮�� �ݾƹ��� ��찡 ���� ����� �ٴñ��� �ձ⺸�� ������� �����ε���. �̹� ȸ������ �̸����� ���ڵ��� ��л� ����� �غ��ϰ�, ������ ������ �̾߱��غ��� �ð��� �������ϴ�.','[�̸�����] ''��¡�����''���� ������ ����...��а�� ������ �� ��(���� ���� �Ǽ�)','..\uploadImages\20211016012341.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',112,'admin',to_date('21/10/16','RR/MM/DD'),'�������� 9�� ����� ���� ������ ������ ��Ÿ����. �ݸ� ������ ���� �þ����� ����� ���� ��ȭ�� ������ ��Ÿ����.

15�� ȣ���������û�� ��ǥ�� ��9�� ���֡��������� ��뵿�⡯�� ������ �������� ����� ���� 74��9õ������ ���� ���� ��� 2õ��(-0.3%) �����ߴ�.

������δ� ���Ҹš����ڡ��������� 1����(6.3%), ��������Ρ��������񽺾� 3õ��(0.9%), ����������š��������� 1õ��(1.2%) ���������� ������ 1��1õ��(-10.2%), �󸲾�� 3õ��(-21.9%), �Ǽ����� 2õ�� �پ���.

���ӱݱٷ��ڴ� 17��3õ������ ���� ������� 8õ��(-4.5%) �����ߴ�. ���� �ڿ����ڴ� 7õ��(-4.7%), ���ް��� �����ڴ� 1õ��(-3.2%) �پ���.

�Ǿ��ڴ� 1��8õ������ 1����(-35.3%) �����߰�, �Ǿ����� 2.4%�� 1.2%����Ʈ �϶��ߴ�.','���� 9�� ����� 2õ�� ����','..\uploadImages\20211016012558.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',115,'admin',to_date('21/10/16','RR/MM/DD'),'�������̽Ź� �ֺ��� ���ڡ� ���� ���� ���� �̻��� ����� �ǹ������� ��Ű�� �ʰ� �ִ� ������ ��Ÿ����. 15�� ��ȸ ȯ��뵿����ȸ �̼��� �ǿ�(���Ҿ���ִ�)�� ���뵿�ηκ��� ���� 8�� ������� ������ �� ������� ����� �����Ȳ�� �ڷῡ ������ ���ѹα� 100�� ��� �� 66�� ����� �ΰ��ι� ����� �ǹ������� 3.1%�� �޼����� �� �ߴ�. �̴� ���� ����� ����ȹ �� �ǽ� ��Ȳ���� �Ű� �������� ���ü �� ��ñٷ��� ���� ���� 100���� ������ �������� �м��� �����. �����ι� ���� ����� ����ǹ��� ����� ��Ű�� ���� �� ������������. �۳� ���� �� 721�� ������� ����� �ٷ��� 2��15���� �ٹ��ϰ� ������ ���� 292�� ���(40.5%)�� �ǹ�����(3.4%)�� �ؼ����� ���� ������ ��Ÿ����. �Ｚ, ����, SK, �Ե�, KB �� ���� �ֿ� ������ ������ �����ü����ΰ���������(2020)���� ������, ������� ����� ����ǻ簡 ������ �ֵ� ������ ������ο��� ������ ������ �����ϰų� ã�� ���ؼ����� �žҴ�. Ư�� 300�� �̻� ����������������� ��������� 70%�� ���ߴ�. ��� ��Ȳ ������ �δ�� ���� ����� 100�� �̻� ���ü ���� 65%�� �� ���� �����ߴ�. �� �ǿ��� �̳� ����� 2021�� ���뵿�� ���ϱ�� �������翡��, ����ΰ������� ���� �� ���� ������ �ΰ������ �����ι��� ����� �ǹ����� �̴޼� ������ �����ߴ�. �� �ǿ��� ����ΰ������� ���� ������ΰ�� �� �Ʒ� ����������μ� ������ΰ�������á� ����� ���� Ȯ���� ����� ���ڸ��� ����ȭ�� ��� ���� ��ȭ�� ������ �޶󡱰� �ֹ��ߴ�.','�������� �ʴ� ����� �ǹ���롦���� 100�� �� 66�� ���ؼ�','..\uploadImages\20211016012757.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',116,'admin',to_date('21/10/16','RR/MM/DD'),'�������� ��2�����(�����ǻ� �̿�ȣ)�� 14�� ��� �� ���Ƿ� ��ҵ� A��(47)�� ���� �׼ҽɿ��� �ǰ����� �׼Ҹ� �Ⱒ, ¡�� 13��6���� ������ ������ �����ߴ�. �� ��� ���� �Ϻο� ������ B��(32)�� ¡�� 1�⿡ �������� 2��, A���� ����� ������ �� �ְ� �ڽ��� ���Ǹ� ������ ���� C��(61)�� ���� 3000������ �����ߴ�.

������ ���� � ������ ģô ������ A���� B���� ���� 2016�� 3������ ���� 2019�� 2������ ���� �ͻ� �������б� �αٿ��� ���� �Ӵ����� �ϸ鼭 ������ 122���� ���� ���� ������ 46��9370������ ì�� �� ����� ���Ƿ� ��ҵƴ�.

C���� A���� ����� ������ �� �ְ� �ڽ��� ���Ǹ� ������ ���Ǹ� �ް� �ִ�.

A���� �������� ���� ������, �ǹ� ������ ������ 100�� ���ʳ� �ؿܿ����� ����, ����, �����, ��� ���������� ��� �� ����ߴ�.

�������� �������� ���� �����ڵ��� ��κ� ���л��� ����غ����� �˷�����.

1�� ���Ǻδ� ���ǰ����� ��ȸ ������ ������ ���л����� ������� ���������� ������ ������ ������ �ſ� �ҷ��ϴ١��� A ������ ¡�� 13��6������ �����ߴ�.

2�� ���Ǻδ� �����ɿ��� ���� ���� ������ ������ ���� ������ ���� �״�� �����Ѵ١��� ���ߴ�.','''���ڡ�����'' ���л� ������ 47�� ������ �Ӵ��� ''����''','..\uploadImages\20211016012912.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',118,'admin',to_date('21/10/16','RR/MM/DD'),'�ݵ�ü�� 2������ �� �����ٽ���������� �Ҽӵ� ���� �η��� �ؿ� ����� ��ǻ� ������. ���δ� ��� �����ٽ���������� �Ҽӵ� ����� ���㰡, ��� �ü� �� �ڱݡ����� ���� ��Ű�� ������ �ϱ�� �ߴ�.

���Ҿ���ִ� �ݵ�ü���Ư������ȸ�� 15�� �� ���� ������ ���ڷ� �� �����ٽ�������� ����� ��ȭ �� ��ȣ�� ���� Ư����ġ����(�����ٽ��������Ư����)�� ������� �����Ѵٰ� ������.

Ư���� �ٽ� ������η��� ������ ���� ���� ��������� ���� �� �μ��պ�(M n A)�� ���ؼ��� ���� ������ �ǹ�ȭ�ϱ�� �ߴ�. Ư�� �η� ��ȣ�� ���� ����� ���� �η� ������ ��û�ϸ� �ؿ� ������ �����ϰ� ��� ���� ���� ���� ���Ե� ��� ü���� �����ϵ��� �ߴ�. ��������� ����Ǹ� ������ ��������ȣ������ ��ȭ�� ��Ģ�� �����Ѵ�. ��ó �� �̰��� �Ǵ� ������� ������ �����������ȸ(������ ���б��������)���� ���䡤������ �� �����ٽ������������ȸ ���ǡ��ǰ��� ���� �������ڿ��� ����� �����ϴ� �������� ���ǰ� �̷�����.','�ݵ�ü-2������ �����η�, �ؿ���� ���Ѵ�','..\uploadImages\20211016013050.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',119,'admin',to_date('21/10/16','RR/MM/DD'),'����=�ƽþư��� ��ä�� ����] ����ó�� û�� ������ ��ȭ�ϴ� ������ 14�� ���� �������� 15�Ϻ��� ���� �� 24�ϱ��� 40�ϰ� �Թ� �����Ѵٰ� ������. û�� ������ �Ǹ������� ��ȭ�ϰ� ����Ȱ���� ������ û��鿡�� ����� ��ȸ�� �����ϱ� ���� ���� ����� �����Ѵٴ� ������. �Ұ� ��ó�� ��� 11���̴�.

�̳� ����ó�� ������ ���� ��� ������ ũ�� �ٽ� ����η��� û���� ����Ȱ�� ������ ��ȭ�ϰ� �������� �� �����Ʒ� ��ȸ�� �ø��� ���� û�⺹���� ���� ���� ����� �����ϴ� ���� ���� ��� �ִ�. û��⺻���� ������ ������ û���̶� 19�� �̻� 34�� ������ �̸� �ǹ��Ѵ�.

�켱 �߼ұ���⺻�� �������� ���ΰ� �߼ұ�� Ȱ���� �����ϱ� ���� �ǽ��ϴ� ��å�� ������ û���� �߰������ν� û���� ���Ȱ���� �����ϵ��� �ߴ�. �Ѹ���� ����� ÷��ȭ�� ���� ���������� �����ݻ���� �η� �������� ������ û���� �����Ȳ�� �ݿ��ϵ��� �ߴ�.

�� ������ ����� �����ϴ� ���������Ʒ� �⺻��ȹ�� û�⿡ ���� ���������Ʒ��� �����ϰ�, �뵿�α� �� �뵿�� �Ǹ���ȣ ���� ���� ��� û���� �߰��ϴ� ������ ���� ���������Ʒ� �������� ���뵿���������� ��Ҵ�.

������б�� ������ ���� ���迬�� �� ���������� ���� �� ������ġ��ü�� �ǽ��ϴ� �����Ʒ� ����� ��� ����û���� �߰��ϰ�, ������ġ�������� �ֹ� ��ȣ�� ���� ������ ���� ����ü �繫 ��� û���� ���Խ��״�. ������ ����, ȭ��� ���� ������ �㰡�� ���� �㰡 ���� ��ݻ��� ������ û��⺻���� û�� ���ɿ� ���� 20�� �̸����� 19�� �̸����� �����ߴ�.','û������ ��ȭ���� ź�¡�����ó, 14�� �������� ����','..\uploadImages\20211016013137.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',123,'admin',to_date('21/10/16','RR/MM/DD'),'�¾ȱ��� ������������� ���ڸ�â�� ����� ��ȯ���� ���� ���� ��� �ڰ��� ���������� ū �α⸦ ���� �ִ�.

15�� ���� ������ ��û ��ȸ�ǽǿ��� ������ ������ ������, ���� �� 20�� ���� ������ ��� ����4��5�� ��� �ڰ��� ������ ������ ���������̼ǡ��� �����ߴٰ� ������.


��� �ڰ��� �������� ���� ���� �� û������ �������� ����� â���� ���� ������, ���� ���� 5�� ���뵿�ΰ� �ְ��� ��������������� ���ڸ�â�� ���� ����� ���� ������ �� ����� 1�� 400�� ���� Ȯ���ϰ� 6������ �������� �������� ��� ���� �� �ִ�.

�̹� 4��5�� ������������ �� 16���� ���ߵ����� 4��� 18�Ϻ��� 11�� 5�ϱ���, 5��� 11�� 8�Ϻ��� 11�� 26�ϱ��� ������ �ǽõ� �����̴�.

�� �����ڴ� ������ 6������ ������� 24���� �������� ������ �����ϰ� ���� ���� ����� �غ� �ߡ��̶�� �������ε� ���ε��� �䱸�� ������ų �� �ִ� �پ��� ������ ���� ������ �� �ֵ��� �ּ��� ���ϰڴ١��� ���ߴ�. 
���� ���� ���� ������ ���� û�� �� ���� �� 70���� ������� ����� �ڰ��� ���������� ���������̳� �缺�������� ��ϸ�, Ư�� ����� ������� �޴� ���� �� û����� ���� ����ϴ� �� ��ȿ�� �ִ� ������ �ѷ��� ����δٴ� ��ħ�̴�.','�¾ȱ�, ����� �ڰ����� �������� �α�','..\uploadImages\20211016013354.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',124,'admin',to_date('21/10/16','RR/MM/DD'),'�ڷγ�19 4�� Ȯ���� �̾����� ������� 9�� ����� ���� 1�� ������ 67�� �� �Ѱ� �þ��. �̴� 7��6���� ���� 2014�� 3���� 72��6000�� �þ ���� ���� ū ���� ���̴�. �ٸ� 30�� ����� ���� 19���� ���� �����ߴ�. 

���û�� 10��13�� ��ǥ�� ��9�� ��뵿�⡯�� ������ ������ ����� ���� 2768��3000������ ������ ���� �޺��� 67��1000�� �����ߴ�. 15~64�� ������ 67.2%�� ���� ���� ��� 1.5%����Ʈ �ö���. 

�Ǿ����� 2.7%�� 9�� �������� ���� �� 2013�� 9�� ���� ���� ���Ҵ�. �Ǿ��ڴ� 24��4000�� �پ����µ�, �̴� 2019�� 8�� 27��5000���� ������ ���� ���� ���� �پ�� ��ġ��.','9�� �����, ���⺸�� 67.1�� �� ������7��6���� ���� �ִ�','..\uploadImages\20211016013433.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',125,'admin',to_date('21/10/16','RR/MM/DD'),'���� �̱��� �ް� �ִ� �η³��� �� ������ �������� ������ �� �� �ִٴ� �м��� ���Դ�. �η³��� �Ͻ����� �� �ƴ϶� �̱� ������ ������֡��� �� �� �ִ� ��ŭ ����� ���ε� �̿� ���� ������ �ʿ��ϴٴ� ���̴�.

14��(���� �ð�) ����Ʈ��Ʈ����(WSJ)�� ������ �ҵ��� ������ ������ 2�� ����Ȱ�� �������� 63.3%�� �������� �����޿��� 61.6%�� ���ƴ�. �� ���� �޿��� ���͸� ���� �����ڰ� 430�� ���� ����� ���� ��谡 �ۼ��� ���� 2000�� 12�� ���� ���� ū �Ը��� �뵿�� ��Ż�� ������.

WSJ�� 52���� �������ڸ� ������� ���� ���縦 ������. �� ��� 42%�� �ش��ϴ� 22���� ������Ȱ�� �������� �ڷγ�19 �ҵ��� ���� �������δ� ������ ���ƿ��� ���� �͡��̶�� ����ߴ�. �Ϲ������� ������ ȸ���� ���ڸ��� ����� �ٷ��ڵ��� ����� ����Ѵ�.�׷��� �̹� �η³��� ���� ���� ������ ���յ� �������� �ʰ� �ִٰ� WSJ�� �м��ߴ�.

WSJ�� �켱 ������ �����ɾ�� �� ���� �ü� ����ڰ� ������ ���� �Ⱓ ��� 10�� 8,700��(10.4%) ������ �ݸ� �ӱ��� 10% ����� ���� �ָ��ߴ�. ���� ���񽺸� �̿��� �� �ִ� ���� �ٰ� ���� ����� �����ϸ鼭 ���Ϳ� ���� ���� ������ ������ ���̸� �������� ������� �þ�ٴ� ���̴�. ������ ������ ���� ������ ���� �����, ���ӱ� ���� �뵿�������� ����Ȱ�� �������� ũ�� ��������.','ڸ 430������ �ٷ��ڴ� ���Ρ����� �������ڵ� "������ �� ���ƿ� ����"','..\uploadImages\20211016013513.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',130,'admin',to_date('21/10/16','RR/MM/DD'),'����û�� ���� ���� �������Ư�⺴ ������ �� ������ ���� ���ϰ� �ִٴ� ������ ���Դ�. �����о� ������ ���ϰ� ������� ���� �ʴٴ� ������.

15�� ��ȸ ��������ȸ �Ҽ� ���Ҿ���ִ� ȫ��ǥ �ǿ��� ����û���κ��� ������� �ڷῡ ������ 2014�� �ż��� �������Ư�⺴�� ���� �� ������� 57.7%�� �ӹ����� ������ �巯����.

�������Ư�⺴ ������ ������ �����о��� �ϳ��� �����ǹ��ڰ� �Կ� �� ����Ʒ��� �ް�, ����� �о��� ��������� �Կ��� ���������ν� ���� �� ������踦 �����ϱ� ���� �ż��ƴ�. ���� ���� �з� ������, ���ʻ�Ȱ������ �� ������ ���ڸ� ������� �����ϸ� �ٸ� Ư�⺴�� �޸� ���Ｑ���� �ƴ� ���� ����������� ����Ѵ�.

�ֱ� 3�Ⱓ �������Ư�⺴ �����ڴ� 2019�� 2716��, 2020�� 3286��, 2021�� 7�� ���� 2507������ ������ �ð� ������, ������ ���� ��� ��ȹ �ο� ��� �������� 1~2% �������� ����� �����ϴ�. ������ ��������� �� ���� �����ڰ� 33.9%, ������ ���ڰ� 7.3%���� �����ϴ��� ������ �� ��ü�� �ſ� ���� ������ ������ �츮�⿡�� �ξ��� �����ϴٴ� �� ȫ �ǿ��� �����̴�.','���������Ư�⺴ ������ ��ȿ�� ������ ����� ���� Ư���о� ���� �ɰ�','..\uploadImages\20211016013910.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',131,'admin',to_date('21/10/16','RR/MM/DD'),'������ ������Ʈķ���� û�� �����ڰ� ���� �ʿ��� ���� ������ ���� �� �ֵ��� �����ϴ� ����̴�. �����ڴ� 5�� ���� ������ 3~7�� �� �����ڿ� �Բ� �¶��� ���������� �����ϰ�, ������ ����� �����ڿ��� �ϴ��Ϸ� �������ִ� ü���� ���� ���� ���α׷��̴�.

���α׷��� �������� ���䰡 ���� ����� �繫 ����, ������, ����Ʈ����(SW)����, ����, ������, ���� ����, �ݵ�ü ������� 7�� �������� �����ƴ�. ���� ��õ���� �ڱ�Ұ��� �ۼ�, ���� �� ���� ���Ư���� �߰� ������ �����ڰ� ������ ���� ���� ���� ������ ���� ����Ȱ������ Ȱ���� �� �ֵ��� �� ��ȹ�̴�.

��û �ڰ��� �� 19������ 34�������� û���̸�, ���� �ο��� 7�� ������ 8�� �� 56���̴�. ������ ����ϴ� û���� ���� 23�ϱ��� ��õ�� ������ ������Ʈķ�� Ȩ������(comento.kr/edu/univ/geumcheon)�� �湮�� ��û���� �ۼ��ϸ� �ȴ�.

������ ��õ��û���� ���ֱ� ������� ä�� �������� ���������� ���� �߿��� �� ��ҷ� ����ϰ� �ִ١���� �������� ������Ʈķ���� ���� û�� �����ڵ��� ����� ���� �ڽŰ��� ��� ����� ������ �ʿ��� ������ �׾� �ڽ��� ���� ��ĥ �� �ֱ� �ٶ��١���� ���ߴ�.','�������ڿ� ��� ����ؿ䡱����õ�� ������Ʈķ�� ����','..\uploadImages\20211016013940.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',134,'admin',to_date('21/10/16','RR/MM/DD'),'������ �ȴ޿����������ϱ⼾�Ͱ� ���� 18�Ϻ��� 29�ϱ��� ��´��� ���� ������ �������� �������� ���, ��κ��� ��(GO)!���� �����Ѵ�.

��´��� �������� ����� ������ �����ϱ� ���� ������ �̹� �������� �ȴ޿����������ϱ⼾�� Ȩ�������� ���� �¶������� ������.

����ȸ���� ���������Ʒ�, ���Ρ����� ��� ���α׷� �� �ȴ޻��ϼ����� �پ��� ��� ���� ���α׷��� ������ ��´��� �������� Ȱ�� ����� ���� ���� 130���� ���õȴ�.

�¶��� �������� 4�� �ڳʷ� �����ƴ�. �⳪�� ������(���Ρ����� ���, ã�ư��� ���ϼ��� ��) �⳻���� ���� ù����(���������Ʒ�, �ߡ���� ����������� Ư�� ��) �⳪���� �ȴ� ��(���Ͽ������� ���α׷� ��) �⼼���� ���� ����(�롤â�� ���Ƹ� ��)�� ������ �� ��´��� �������� Ȱ�� ����� �� �� �ִ�.

������ �����ڴ� ���̹� �������� ��´����� ������ �����鿡�� ����� ��⸦ ������ �� �ֱ� �ٶ��١��� ����´��� �������� ����� ������ ���̰�, ������ ��� ���� ���񽺸� �����ϱ� ���� �ּ��� ���ϰڴ١��� ���ߴ�.

���� ���� 2013�� 2�� ���� �� �ȴ޿����������ϱ⼾�ʹ� �ӽš���ꡤ���� ������ ����� ������ �������� ���� ������, ���������Ʒ�, ���� �� ��� �� ���İ��� �� �������� ��� ���� ���α׷��� ��ϰ� �ִ�.','�������� �������� ���, ��κ��� ��(GO)!��','..\uploadImages\20211016014127.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',136,'admin',to_date('21/10/16','RR/MM/DD'),'���� ���ڸ��� ���� ���� �þ �оߴ� IT��������̴�. �� ���� ������� �������߰� ���������� �� ���� ���ڸ��� ������ ���� �Ⱓ�� ���� ���� ������ ������ ��Ÿ����.

15�� ��� �÷��� ���ڸ��ƴ� ���� 1~9�� �ڻ����Ʈ�� ��ϵ� ä����� �м��� ��� �� ���� ����ƴٰ� ������.

���� 1~9������ ���ڸ��ƿ� ��ϵ� ä������ ������ ���� �Ⱓ ��� 17.0% �����ߴ�.

����оߺ��� ���� ''IT�������'' ������ ä����� ���� ���� ��� 37.3% �þ� ���� ū �������� ������. �̾� ''�̵�����'' ������ ä����� ���� ���� ��� 34.2% �����߰�, ���������ꡤȭ��(+32.7%), ��ȭ������(+26.4%), �Ǹš�����(+20.7%) ���� ������ ä����� �������� ū ������ ����ƴ�.

�������� ���� ''��������'' ������ ���ڸ��� ũ�� �����ߴ�.

''��������.RnD'' ������ ä����� ���� ���� ��� 147.5% �þ� ���� ū ������ �����ߴ�. ''������ ���� �� ����'' ������ ä����� ���� ���� ��� 53.9% �þ���, �̾� �����α׷���(+49.0%), ���󡤻����Կ�(+47.9%), DBA�������ͺ��̽�(+46.1%), �����ð�������(45.6%), QA���׽��͡�����(+44.5%), ������.AI(+40.1%) ���� ������ ä����� �������� ū ������ ��Ÿ����.

�ݸ� �����ؿ� ���� ���ڸ��� ���� ���� ������ ������ ''���б��������硤������''�̴�.

���� ���� ��� ä����� 54.3%�� �پ���. �̾� ''�ε��ꡤ�߰������(-37.3%), �н��������ܡ��湮����(-32.5%), ���������á����롤����(-24.7%) ������ ä����� ������ ���� �Ⱓ ��� ū ������ ������ ������ ����ƴ�.','���� ���ڸ� ���� ���� �þ �оߴ� IT�������','..\uploadImages\20211016014327.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',137,'admin',to_date('21/10/16','RR/MM/DD'),'�������б�(���� �ο���)�� ����л�ó ���ڸ��������� ����������������� �ϳ��� ������ ��2021 ���������� Career Set Up(Ŀ���� �¾�)���� ���ƴٰ� 15�� ������.

�����뿡 ������ �̹� ���α׷��� ����ϴ� ������ ����� ����ȭ�� ���α׷����� �̷�������, ������ 3~4�г� �л� 39���� �����ߴ�.

���α׷��� �ܰ躰 ������ũ��� ���� ����������, ���� ����������, �����ڿ� ���� ������ ����������, �� �оߺ� ���������� ���䰡 ���� �������� ���� �Ի���� ü���� �� �ִ� ��ȸ�� �����ߴ�.

������� ���α׷� �ǽ� �� �߾ӵ����� �������ڸ����Ϳ��� ��� �����ڵ鿡�� ����� �û���� �����ߴ�. �򰡴��� �����ɻ�� �����濬��ȸ ���� ���� �ֿ���� 1��� ����� 3��, ����� 5���� �����ߴ�.

���α׷��� ���� ��������� ���� �հ��� �赵�� ��(�߱��ȭ�а� 4)�� ���������� ���� �ڱ�Ұ��� �ۼ��� ������ �����鼭 ä����� �����غ��� �ڽŰ��� ����١��� ���Ի����� ü�� Ȱ���� ���� �����ϰ� �� �ż���׷� ����ȣ�ھظ���Ʈ �������� �Ի��ϰ� �Ǵ� ����� �̲�� �� �־� �� ���� �ð��̾��١��� ���ߴ�.

������ ������ ����л�ó���� ���л��鿡�� ����� ���� �ڽŰ��� �����Ű�� �ɵ��� ����غ� �� �� �ֵ��� �� ���� ���α׷��� ������ ������ �ǵ��� �����ڴ١��� ������.','������, ''���������� Career Set Up'' ����','..\uploadImages\20211016014418.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',138,'admin',to_date('21/10/16','RR/MM/DD'),'���뵿�ΰ� ��ũ�� ���� ���� ���ڸ����� ���� ����¥ 5�� �̸� ����塯 �� �Ǵ� ��ü�� �����ڿ��� ����ǰ� �ִٴ� ������ ���� ���İ����� ���� ��ȭ�ϱ�� �ߴ�. ��ũ���� �ӱ� ü���̳� �ٷΰ���� �����ϴ� �Ǵ� ��ü�� ����� �ɷ����� ���Ѵٴ� ����(�����Ϻ� 10�� 15���� 12�� ����)�� ���� ���̴�.

���δ� 15�� �����ڷḦ ���� ����ũ�� ���������� �ŷڼ��� ���� �� �ֵ��� ����͸� �� ���İ����� �ּ��� ���ϰڴ١��� ������. ��ũ���� �̿��ϴ� �����ڵ鿡�� ���� �ŷڼ� ���� ���������� ������ �� �ֵ��� ���� ���� ������������ ��ñٷ��ڼ�, �������೻�� ���� ���� ����� Ȯ���ϰڴٴ� ���̴�.

���δ� ���絵 ��ũ�ݿ��� ������ ���ϴ� ��� ��ü�� ��û ������ Ȯ���ϰ� �ִٰ� �����ߴ�. �ӱ�ü��, �����ӱ� �ؼ� ���κ��� �������� ���� ���� ������ �ִ������� �� �ٷ� ������ ������ �����Ѵٴ� ���̴�. Ư�� ������ �Ϸ�� ���� ��ü�� 50%�� ���� ���ϱ���� �ѱ�������������� ��÷� �߰� ����͸��ϰ� �ִٰ� �ߴ�. ������ ��� ����ڿ� ��ü ��Ȳ�� ������ Ȯ���ϴ� �� ��ǻ� �Ұ����ϱ� ������ �ٷα��ع� ���� ���� ���� ����¥ 5�� �̸� ����塯 ���� �ɷ����� �ʴ´ٴ� ������ ���Դ�.

���� �����ڴ� ������ ���α���� �Ű�� ��ü�� ����ó���̳� ��Ұ� �� ��� ������� �����ϴ� ������ ��ϰ� �ִ١��� ���̿� ���� ȫ���� �ȳ��� ��ȭ�ϴ� �� ���İ����� �ּ��� ���ϰڴ١��� ���ߴ�.','���Ǵ���ü �Ұ��� �������� ���� ����ũ�� ����͸� ��ȭ��','..\uploadImages\20211016014514.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',139,'admin',to_date('21/10/16','RR/MM/DD'),'���õ��ú�������(���� HUG)�� �ڷγ�19�� ������ ��� ���忡�� �з� ���� ������ ö���� ����ε� ä�� �ຸ�� �ָ�ް� �ִ�.

���� ���Ի�� 86�� �� 9���� ����б� �����ڷ� ä���ߴ�.
�̹� ���������� ����б� ���������� �ܿ��� ������ɰ����� �����о߿� ���� ǰ�� �Ի��߰ų� ��ȸ��Ȱ�� �ϴٰ� �ʱ��̷� ������� ���� ���� ���ԵǾ� �ִ�.

HUG�� ����ε� ä�� ���μ����� ''19�� ��ȹ������ ������� ������ �� ������, ���� �� �߽����� �����ϰ� ä����� ������ ������ �� ������ ��ȭ�Ͽ� ������ ������ �����ϰ� �ִ�. ���� ä�� ������ ���������� �ʱ����, 1�� ���������� 2�� ���������� �ǽ��� �����հ��ڸ� �����Ѵ�. ''11�⵵ ���� 61���� ����б� �����ڸ� ä���ߴ�.

���� ä�뿡 ���� ���� ū ����� �Ի� ������ ���ո��� ó���. �̷��� ������ �ؼ��ϱ� ���� ���� ������ ���� ���� ��ȸ�� Ȯ���ϰ� �ɷ��ִ� ������ ������ �ǽ��ϴ� �� �پ��� ���α׷��� Ȱ���ϰ� �ִ�.

Ư�� ���� ������ ������ ���� ���� ���յ��� ��ȸ ������ ��ȸ������ ���� �й����з� �������� ������ ���� ä�롯�̶�� ��ǥ �Ͽ� ������ ���ڸ� â�⿡ ���弭�� �ִ�.

����, HUG�� �ڷγ�19 ���ȭ�� ���� ����д� �������� ���������ݹ�ȯ����, �Ӵ뺸���ݺ��� ���� ������ ����(70~80%)�� ���� �������� �����ߴ�. ����, ���ð��� Ȱ��ȭ�� �����ϱ� ���� �о纸�� �� �ֿ亸���� ���������� �� 10% �����ϴ� �� ������ ��ȭ�� �����ϰ� �ִ�.','���õ��ú������� �з¡����̡����� ���� ���� ������ ���� ä��','..\uploadImages\20211016014628.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',142,'admin',to_date('21/10/16','RR/MM/DD'),'�ֱ� 4�� ���� �ѱ����� ��� ������ ������� ���� 2013��~2016�� ���� �Ⱓ ������� �� ���� 55.3% �þ ������ ��Ÿ����. 15�� �⺻�ҵ�� ������ �ǿ��� �������ࡤ����硤�������ࡤ���ǻ硤ī��� 164���� ������ ��� �ѱ����� ����ڵ��� ���� 2017�� ������ ���ΰ� ���鼭���� �����ǿ� ��� �����ϰ� �ִٰ� ������.  ���� �ѱ����� ��� ������ ������ڴ� 2013��~2016�� �ڱ��� ���� �ñ⿡ 38�� �������� 2017�� ������ ���ΰ� ���� �����ر��� 59������ ũ�� �����ߴ�. �ѱ����� ��� ����ڴ� Ư�� 1�����ǰ� �������� �� ������� �߽����� �����ߴ�. 1�������� ��� 2013��~2016�� 10����, 2017��~2020�⿡�� 17������ �����ߴ�. ���� �Ⱓ �������൵ 12���� 19����� �þ���. ����ǿ����� �� 14���� ������ ��ü �����ο� �� 66.7%�� ���� ������ �����ߴ�. ���� ���� �ѱ����� ��� ������ڸ� ���� �ϳ������׷��� ��� ���� 8�Ⱓ �ϳ�����, �ϳ���������, �ϳ�ī�� ��� �� 17���� �����ߴ�. ���� �ϳ����࿡���� �ѱ����� ��� 12���� ������ڸ� ä���ߴ�. �̴� ��Ｚ����(6��) ��Ǫ���������(5��) ��SBI��������(4��) ���� �ι� �̻� �Ը��.  �̹ۿ� ���� �Ⱓ �ѱ����� ��� ������ ������ڴ� �⺸��� 6���9�� �����ǻ� 8���11�� ��ī��� 2���3������ �ľǵƴ�. ������ �ǿ��� ���������� �츮�� �͵� �ʿ�������, ���ذ���� �������ü��� ���� ������ ���� ���� ���ε��� �̷� ������ �޾Ƶ��̱�� ��ƴ١���鼭, ���������������� ������������� ��ȿ���� �������ϰ� ���ذ��� �̷� ���� �� ������ ���� �ý��� �� �ذ�å�� ã�ƾ� �Ѵ١���� �����ߴ�.','�ѱ����� ��� �������� �������, �ֱ� 4�Ⱓ 55% ���� ','..\uploadImages\20211016014848.jpg',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',143,'admin',to_date('21/10/16','RR/MM/DD'),'��õ�׸�����(IPA, ���� ���ؿ�)�� ����� ���� ���ڸ�����ȸ �ְ� ����4ȸ ���� ���ڸ�����ȸ ��ũ�󡯿��� ������� �ι� ���ڸ� â�� �����ʷ� �����ƴٰ� 15�� ������.

���ط� 4��°�� �����ϴ� ���� ���ڸ�����ȸ ��ũ���� 14�� ���� ���� aT(agro-Trade)���Ϳ��� ����, �� 80�� ���ڸ� â�� ��� �� ����� ������ �� ��������ġ��ü 4�� �������� 4�� ��ΰ���� 3���� ��ʰ� ��ǥ�ƴ�.

 IPA�� �̳� ��翡�� ��������� �л� ������� ���׸�Ưȭ�� û���η� �缺 �� �����â�� ���� �� �ڷγ�19 ��Ȳ���� ������� �ް� �ִ� ���ڸ� ������ ����� ������ ���ڸ� ��� ��ʸ� ��ǥ�ߴ�.

�̳� ��ǥ�� ���� ��õ�׸����� �ȱ漷 ��ȸ��ġ������ ���ݹ� ��ũ���� ����������� ������ ���� �츮 ������ ���ڸ� â�� ��ʸ� ������ �� �ִ� ���� ��ȸ���١���, �������ε� ������ ���� ������� �� �׸������� �о��� ���ڸ� â�� ����� ���� �����ϰڴ١��� ���ߴ�.','��õ�׸�����, ���ڸ� â�� ������ ����','..\uploadImages\20211016015057.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',144,'admin',to_date('21/10/16','RR/MM/DD'),'���û ���翡 ������ �츮 û�� �� �� ��� �� ���� ���� �Ŀ� ������ ������ ���ϰ� �ֽ��ϴ�. 3�� �Ѱ� ����� ������ û���� �ټ� �� �� ����Դϴ�. ���� ������ �ƴ� �� �����ϴ�.

������ ��, û�� ��� ������ �����ߴ� ���ڴ� ��̷ο� ȸ�� �� ���� �����߽��ϴ�. ''��Ʈ ���۴�''�� ���̾����ϴ�. ��� �Ŀ��� ������ �ڱⰡ �ϰ� ���� ���� �ϴ� ȸ��. ��ȭ�� ���� �ǰ�, å�� ���� �Ǵ� ȸ��.. �׸� �ص� ���� �ϳ� �ܼҸ� ���� �ʴ� ȸ��.

�� ����� ȸ�縦 ���������� ��� ���� ������, <�����丮> ���α׷����� �ٷ��� ���� �ƽ����� ����, ���� �� ���� �� ���ǥ ���� ���ڰ� �ֱ� <û�� ����>�� �ٷ�鼭 �׵��� �ٽ� �������ϴ�. �̹� �� <�Ľ��丮>���� �� ���� ���� ���� �׵��� ��ȭ�� ���ص帳�ϴ�.','������� ȸ�� ����? �� �� �� �ٽ� �� ���ϡ�','..\uploadImages\20211016015326.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',147,'admin',to_date('21/10/16','RR/MM/DD'),'��� ���� Ŀ��� ����ö������, �������������, ��õ��Ʈ�μ���, ���������� ���� ä�� �ҽ��� 15�� ��ǥ�ߴ�.

����ö�������� ���� �� ��� ������ �����Ѵ�. ���� �о� �� �ο��� ���Ϲ�(41��) �����(3��) �⺸��(7��) �����(6��) ������(16��) ������(3��) ��ǹ���-�����߿�ü� ��ȣ(27��) ��ǹ���-��ȭ, �ü�����(2��) �������(1��)�̴�. �оߺ� ���� �ڰ�, �ٹ� �Ⱓ ���� �����ϹǷ� �Ĳ��� ���� Ȯ���� �ʼ���. �����ɻ�-�ʱ����-���������� ���� 12�� 6�� ���� �հ��ڸ� ��ǥ�� �����̴�. �������� 10�� 20�� 17�ñ��� ä�� Ȩ���������� �¶��� �����ϸ� �ȴ�.

��������������� ���� ������ �����Ѵ�. ���� �оߴ� �⿬����(5��) ��������(11��) ������(29��)�̴�. �ߺ� ������ �Ұ��ϸ� �� 61�� ���� ���� �����ϸ�, ä�� ���� ��Ÿ �ڼ��� ������ �������� Ȯ���� �� �ִ�. ��������-�ʱ�����-��������-��ݻ��� ��ȸ�� ���� ���� �հ��ڸ� ��ǥ�Ѵ�. �Ի� �������� 10�� 21�� 14�ñ��� Ȩ������ �����ϸ� �ȴ�.

��õ��Ʈ�μ��񽺰� ���� ������ �����Ѵ�. ���� �оߴ� ��繫��(2��) �⿪����(73��) ��ü���(24��) ��û����(79��) �� 178���̴�. ������ ���� �о� �� ���� �ڰ� ����� �����ϴ�. ä�� ���� ��Ÿ �ڼ��� ������ �������� Ȯ���� �� �ִ�. �Ի� �������� 10�� 19��~27�� 18�ñ��� ä�� Ȩ�������� ���� �¶��� �����ϸ� �ȴ�.

������������ ���� ������ ä���Ѵ�. ���� �оߴ� �������� ���Ϲ����̴�. ������ ���� �о� �� ���� �ڰ� ����� �����ϴ�. ä�� ���� ��Ÿ �ڼ��� ������ �������� Ȯ���� �� �ִ�. �Ի� �������� 10�� 15�� 17�ñ��� ä�� Ȩ�������� ���� �¶��� �����ϸ� �ȴ�.','Ŀ�����, ����ö�����ܡ������������������õ��Ʈ�μ��񽺡����������� ä�� �ҽ� ��ǥ','..\uploadImages\20211016015557.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',151,'admin',to_date('21/10/16','RR/MM/DD'),'�̾�� ��ȹ������ 1������ 15�� "20~30�� �����ǥ ������ �츮 �����̵��� ü���ϴ� ������ ��� ��Ȳ�� ���̰� �ִٴ� ���� ����� �ν��ϰ� �ִ�"�� ������.

�� ������ �̳� ���μ���û�翡�� ���� ��å����ȸ�ǿ��� "9�� ��뵿�⿡�� û������ 30�� ���ȸ���� �ε巯����"�鼭 �̷��� ���ߴ�.

�״� "���� �ִ� �ڿ�����, �Ͽ��� �ٷ��� �� �ڷγ� �������� ������� �̾����� �ִ�"�� "���Ҹ�, ������������������ �� ������ ���Ҽ��� ���ӵǴ� ���� ���ؼ��� �����ֽ��ϰ� �ִ�"�� �����ߴ�.

�׷��鼭 "������ 70% ������� ���� ���� �ܰ������� �ϻ��� ȸ���Ǹ� �������� �濪 ��Ȯ�Ǽ��� ��ȭ�� ��"�̶�� "���ȸ�� �±Ⱑ �� ���ɡ������� ��� ������ ������ ����ȸ���� �մ�⵵�� ��å�� ����� ��ȭ�ϰڴ�"�� ���ٿ���.','�������� "20~30�� �����ǥ ü���� ���� �ν�"','..\uploadImages\20211016020109.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',152,'admin',to_date('21/10/16','RR/MM/DD'),'�ѱ��߰߱������ȸ�� ���ڸ��ư� �̴� 30�ϱ��� ''2021 ��� �߰߱�� ä��ڶ�ȸ''�� �¶������� �����Ѵ�. 

�̹� �ڶ�ȸ�� �ڷγ� �ҵ������� ���� ���Ȱ���� ������� �ް� �ִ� û�� �����ڵ鿡�Դ� ������ ���ڸ� ������, ��� ���� Ȯ���� ������ �߰߱������ ������� ä���ȸ�� ������ ������ ���ȴ�. 

�ѱ��߰߱������ȸ�� ���ڸ��ƴ� 2019����� �ظ��� ��� �߰߱�� 30���縦 ������ ��� �߰߱���� �� ä��� ���� ������ �����ϴ� ����� �߰߱�������� ��ϰ� ������, ���ر��� �� 90�� �߰߱���� �����ϰ� �ִ�. 

�̹� 2021 ��� �߰߱�� ä��ڶ�ȸ�� ��� �߰߱���� ������Ʈ�� ��ȯ���� �ڷγ�19 Ȯ�� ������ ���� 100% ����(On-Line)���� �����Ѵ�.  

���ڸ��� ������Ʈ�� �ۿ� ����� ä��ڶ�ȸ Ȩ�������� �湮�ϸ� ������������� ������ �⿡���� ���ѱ������ ��������ũ ���ǥ��ǰ ���â��� �� 2019����� ������ ��� �߰߱�� �� 90������ ä����� Ȯ���ϰ� �Ի����� �� �� �ִ�. 

ä������ �ܿ��� ����� ����о� �� ������������� �����, ä�����μ���, �����Ļ�, �ٹ�ȯ�� �� �����ȭ���� Ȯ���� �����ϴ�. 

Ư�� �� ����� �ǹ��ڸ� ������ ���������ͺ䡯 �������� ���� ���� Ư¡�� ��� ���Ͽ� ������ ���� �� �ִ�. ���� ä��ڶ�ȸ�� �����ϴ� �����ڵ鿡�Դ� AI���Ǹ����� �������˻縦 ����� ���� �� �ִ� ��ȸ�� ������(100��)���� �����Ѵ�. 

�̹� 2021 ��� �߰߱�� ä��ڶ�ȸ�� ���ڸ��� ������Ʈ�� ���� ���� 15��(��)���� 30��(��)���� 2�ְ� ������ �� �ִ�.

��ó : �ƿ��ҽ�Ÿ�ӽ�(http://www.outsourcing.co.kr)','''2021 ��� �߰߱�� ä��ڶ�ȸ'' ����...10�� 30�ϱ��� �¶��ο���','..\uploadImages\20211016020156.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',62,'admin',to_date('21/10/15','RR/MM/DD'),'���� ������, NCS Ȱ�� ������ �� NCS ���� ���� ������ �� ��� ���� 17�� �ڰ� ������ ��ϴ� �ڸ��Ƹ�ũ��Ʈ(KOREA RECRUIT, ����� ��ǥ)�� �����ΰ� �����ϴ� ������� ��� ���� ��ȭ�� ���� ���� ����� �����ƴ�.

�ڸ��Ƹ�ũ��Ʈ�� �����ΰ� �ڷγ� ���·� ������� �޴� ��������� ���� �����ϴ� ���ڷγ�19 ��Ȳ �� �������л� ��� ���� ��ȭ �ѽ� ���� ���(���� ������� ��� ���� �ѽ� ���� ���)���� ���� ������� �����ƴٰ� 12�� ������.

�ڸ��Ƹ�ũ��Ʈ�� �̹� ��� �������� ���� ���� �ڰ� ��� ������ ����, ���� ���� �ڰ� �غ� ���� �� ��� ���� ��ų ����� ���� ����� ���� 6�� ���� - �Ի����������� �Ի������ �� 40���� ������ �ܱⰣ�� �������� �� �ֵ��� �� �ڷγ��� �������� ķ�۽� ��Ȱ�� ���� ���� ����������� ������ ����÷� ��� ���� ���ɼ��� ���δ�.

�������� ������� ��� ���� �ѽ� ���� ����� �ѱ��������б�������ȸ�� �ְ��� ������ ���� ���� �л� �� ������ ��� ����� �л��� ��� ���� ��ȭ�� ���� 1�δ� 70�������� ���� �� �ΰ� �ڰ� ��� ����, ���� ���÷Ḧ �����ϴ� ����̴�. �����븦 ������ 457�� ���� ����� 7375�� ���� ������ Ȯ���ϸ鼭 3������ ������ ���ػ��� ������ ������ ���� �� ���� ������ ���δ�.

�ڸ��Ƹ�ũ��Ʈ�� ������ ���ػ��� �������� ����� ���� ä�� ������ 1�� ������ ���� ���� �հ��� ���� ���� ���� �߽��� �Ի� ������, �ڱ�Ұ��� �ۼ� �� ���� ���忡�� ���� ���� �� �̷����� �پ��� ������ ���� �ذῡ �ʿ��� ������ �����ϱ� ���� ����ε� ���� ���� �������� �Ի� �� �ʿ� ����, ��������, ����Ͻ� �������� ä�� �ܰ躰 �н� ������ ���� ������ ���� ��Ī�� �����Ѵ�. �̸� ���� ���������� ���������̶�� ����� ���� ����� �� ��� ����� �غ��� �� �ְ� �Ѵ�.

���� �� ��û�� ������ ��� �Ǵ� ���� ����� ���� ��Ī�� ������ �ڷγ� ���� ���ȭ�� ��� �غ� ������ ���� ������ ���ػ����� ȿ�����̰�, �������� ������ ���� �� ���� ������ ���ȴ�.

��ȿ�� �ڸ��Ƹ�ũ��Ʈ �ڸ��ƿ���������������� ���� �ۿ��� ���� �ڱ�Ұ��� �ۼ�, �ؿ� ��� ����, �ڸ��Ƹ�ũ��Ʈ�� �߰��� 17���� ���� �ڰ���, ���� �ڰ���, �������� �� 15�� ���������ڰ��� ����� ���� ���� Ǯ�� ���� ���� ���� �������� �ڸ������������ LMS �н� ���� �ý����� ���� ���� 2������ ���������� ������ �������̶�� ���ߴ�.

�ڸ��Ƹ�ũ��Ʈ ���л������ ������ �������� �������� ��û �� ���к� �����忡�� �濪 ��Ģ�� ö���� �ؼ��� ������ ��� ������ ������ �� �ִ١��� ��KR ��� ��� �ڽ� ���� ������ �̹� ������ ������ ���ü ���������� ���� ���� ������� ������ �´� ������ �����ϰ�, ��ȸ�� ������ �� �ֵ��� �¡��������� ������ ������ �͡��̶�� ���ߴ�.','������ ������ ������� ��� �ڸ��Ƹ�ũ��Ʈ, �ڰݰ��� ���� ��ǥ','..\uploadImages\20211015141932.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',64,'admin',to_date('21/10/15','RR/MM/DD'),'�ڷγ�19(���� �ڷγ�)�� ����� �ǽ� ������ ������������ �б����� �¶��Ρ����������ǽ��� �ǽ������� ���� ����ǹ������� �̲���� �ξ��� �����ϴ�.

13�� �ѱ��������б�������ȸ �μ� ������������������� ��2021�� ��ݱ������������ �������� ��ǥ �м������ ������ 4�� �̻� ����ǽ��� ���� �л������� 5.9%�� �Ұ��ϴ�.

�̴� 2018�� 13.2%, 2019�� 10.4%�� ���� ���� ���� ��������.

8�֡�12�� �̻� ������ ��� ����ǽ��� �������� �϶����� ���̰� �ִ�.

���������� 8�� �̻� ����ǽ� �������� 2018��� 2019�� 1.2%���� ������ 1%�� ������ ������ ���������, 12�� �̻� ����ǽ� �������� 2018�� 0.8%���� 2019��� ������ 0.6%�� Ȯ�εƴ�.

����ǽ��� �ް��� ���� �ڷγ� ���ȭ�� ��� �濵�� �����Ӵ��� �ǽ����� ������Ű�� �Ϳ� ���� �δ��� �ۿ��߱� �����̴�.

�� �л����� ����ǽ������� ������ �����̳� ������� ����ǽ� ���࿡ ������� ��Ÿ���� ������ �ؼ��ȴ�.

Ư�� ����ź�� ���� ȣ�ڡ��װ������������� �ǽ������� ��Ȳ�� �� �Ͽ��ϴ�.

�̵� ���迡���� �л����� ���� ���忡�� ����� ������ ���� ����ϸ鼭 �ǹ������� ������ ������ �ǽ� ���� �����鼭 �� ���� �پ��ٴ� �� �����̴�.

���� ������ �ڷγ����� ���� ������������ ����簳�� �簳 �������� ���̰� ������, ���濩������ ����� ������ ���� ���� ��Ȳ�̴�.

����� ��������� ȣ�ڰ����к� ������ ������ �л����� ���� �� �ִ� ����硤�װ��� �ǽ��� ���� �������̴� ���� ���� ���� ����糪 ��ȸ ������ �ǽ��� ������ �ִ١��� ���װ��� �װ������ �ǽ��Ʒ��� ���� �̿��ϰ� �ִ� �ǽ��忡�� �Ǳ��Ʒ��� ������ �������� ���� ���� ������ ��ȸ�� ���١��� �����ߴ�.

���⿡ �ֱ� ����鵵 ���� ����ǽ��� ������� �̾����� ���� ��ſ� ��� ��� ä���� ��ȣ�ϸ鼭 ������� ���ϰ� �ִ�.

�̷� ���� ���а��� ���л����� �ǽ����Ұ� ä�� �������α��� �̾����� �Ǽ�ȯ�� ����ϰ� �ִ�.

�������� �����ڴ� ���л����� �ǽ� ���� ���� ��ȸ�� �������ٸ� �ڿ����� ���ߴ�ó�ɷ�, �ڽŰ� �϶����� ����ȴ�. �̴� �ᱹ ����������� �̾����١��� ���б������� ������ ������� �����ؼ� ������ ������ �� �������� �������� ������ �Ѵ١��� ���ߴ�.','������ؾ� �ϴµ��� �� ������ �л���, �� ���� ����ǽ��� �Ѽ�','..\uploadImages\20211015142117.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',68,'admin',to_date('21/10/15','RR/MM/DD'),'���л� ������ ��� 1���� ��������� ��Ÿ����.

13�� �����ʹ����� �ѱ������������� ���� 4���� ���� 3~4�г� ���л��� ������ 2713���� ������� �ǽ��� ''2021�� ���л� ����νĵ� ����''�� �м��� ���, ���л� ��� ������ 1���� ��������� ����ƴ�. ������� �����ؿ��� ���л� ��� ������ 1���� �����ߴ�.

�̹� ���翡�� �������� 18.3%�� ������� ���� ����� ����ϴ� ������� �žҴ�. �̾� ������ 17.9%�� �����߰�, ����(������)(17.3%)�� �߰߱��(17.1%)�� �ڸ� �̾���. �߼ұ���� 11.9%�� 5���� �����߰� �ܱ������� ��������� ���� 8.6%�� 3.4%�� ����ƴ�. 

�ݸ�, ���� ����� ������ ����Ǵ� ������δ� �߼ұ��(30.1%)�� ���� ���� �žҴ�. �߰߱���� 20.9%�� �ι�°�� ���� ������ �����. �̾� ����(������)(15.2%), �����(10.7%), ����(7.2%), �ܱ�����(4.4%), �������(2.2%) ������ ��Ÿ����.

�̹� ���� ����� �����ؿ� ���ϸ�, �߼ұ�� ��� �����ڰ� �����غ��� 5.1%p �þ �ݸ�, ������� 5.3%p �پ���. ��� ��� ��� ������ �����ؿ� ���Ҵ�.

�� �̹� ���翡�� ������ �Ѵ� ���л��� ���ȯ���� �� ��ȭ�� ������ ���� ������ ��Ÿ����. 

���� �Ϲݱ� ���� �ű�ä�� ȯ�濡 ���� ���л� 10�� �� 6��(58.6%)�� ''�۳⺸�� ��ƴ�''�� �����ߴ�. �̿� ���� ''�۳�� ����ϴ�''�� ���� ���л��� 21.3%, ''�۳⺸�� ����''�� ���� �����ڴ� 2.0%�� ���ƴ�.

����غ������ ����� ���ؼ��� ��ä���ȸ ���ҷ� ���� �Ի���� ��ȭ��(29.3%)��� ������ ���� ���Ҵ�. �̾� ��ü���� ���� �� �ǹ����� ��ȸ Ȯ���� �����(23.9%), �������� �϶� �� �ɸ��� ���� ���ߡ�(18.2%), ���ܱ� ���ڸ� ���� �� ����غ��� ������ �δ� ������(16.2%) ������ ����ƴ�.','���л� ��� ��ǥ 1���� ���ص� ''�����''','..\uploadImages\20211015142352.png',5,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',69,'admin',to_date('21/10/15','RR/MM/DD'),'[����=������] ������ ���� = ����� ����������� �������� �ô޸��� �����ڵ��� ���� �ܱ��� ���ڱ�� ä��ڶ�ȸ�� ������.

���ѹ��������������(KOTRA)�� ''�ܱ��� ���ڱ�� ä��ڶ�ȸ''�� ���� ������ ����(SETEC) �����忡�� 21�Ϻ��� ��Ʋ�� ���ֵȴٰ� 11�� ������. ���ط� 16ȸ°�� �¾����� ������� ��� ä��ڶ�ȸ�δ� �Ը�� ������ �鿡�� ���� ��ǥ����.

�۳⿡�� �¶������θ� ���������� ���ش� �¡��������� ���̺긮�� ���·� ����ȴ�. ��� ����� ���� ������ ������ ������ �������� ��İ� �ټ� �����ڰ� ��ҿ� ���� ���� ������ ������ �¶��� ����� ������ �ִ��� �츮���� ����ߴ�.

��, ���� ������ ����ϴ� ��� ���� �濪��ħ�� ���� Ȩ������������ �������� ����� �ʼ���. ���Ÿ� ���� �Ǵ� ���� �ο� �������� �������� ������ ����� �����ڵ��� ��������� ä�뼳�� ���񳪿� ������ �� �ִ�.

�ڶ�ȸ���� BMW, IKEA, GE�ｺ�ɾ�, �ѱ� 3M �� ��� ������� 108���簡 �����Ѵ�. ���������ꡤ��������(R and D) �о� 37����, �̵����񽺾� �о� 25���� �ܿ� ����������� 14���� �� 7�� ��� �о��� ������� �濵���繫��, �������ߡ����� �� �پ��� �������� ä���� �����Ѵ�.

���� 500��(Fortune 500) �۷ι� ��� �ܿ��� �Ϲ� �����ڵ鿡�Դ� �ټ� �����ϳ� �������� ������� ���� ������� �����Ѵ�. �ڼ��� ä�������� ����� Ȩ���������� ���� ã�ƺ� �� ������ ������ �¶��� �̷¼��� �����ް� �ִ�.

���� �����ڸ� ���ؼ��� ���� ä���� ��������� ȫ�� ��ä�� ��� �¶��� ������ ���� ���񳪰� � ����� ���Ͽ� Ư�� ������� ������ �� �پ��� �δ���簡 �غ�ȴ�.

�̹� �ڶ�ȸ�� ó�� ������ ������ �ڸ��� ����Ʈ�� �λ����ڴ� "���� ��̳� ������ �յδ� ��ŭ, ���� ������� ä��ڶ�ȸ�� ������ ȸ�簡 ã�� ���� ������ �ټ��� ��� ����� ����Ǳ� ����Ѵ�"�� ������.','KOTRA "����� �����ȸ ��������� ��������"','..\uploadImages\20211015142444.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',70,'admin',to_date('21/10/15','RR/MM/DD'),'���� ���˹١� �ø��� ��3040 ���ڸ��� ���� ��

����� ���� �ѱ������������� ���û �����͸� �м�, 3040 ������ OECD ȸ���� 38�� ��� 30���� ���� �����̶�� ���ߴ�.

�̿� ������ 3040 ����� ���� 2015�� ���� ����� 1.5%�� �����ߴ�. �� ��� 2015�� 3040 ����� �� 1262��1õ���� ������ 1171�������� ���� 91�����̳� �پ�����.

�� �Ⱓ �� �α����� ���� �����ص� ����� �������� ���� �Ǵٴ� �ؼ��̴�. �̴� �ٷ� ģ�뵿, �ݽ��� ��å �����Ͽ� ���ڸ� â���� ������ ���� ���� ���� ���ڸ��� ������ ����� ������ ���̴�.

�� ������ ��� �뵿 ��å�� ������� ���������� ���� ������ȭ�κ��� �������� �����ߴٰ� �� �� �ִ�. ������� ��õ���������� �湮, ������ �������� ����ȭ�� ���� ���� û������ ��� ��ȸ ���, �Ұ��� ����� �˹��ߴ�.

�Ѱ濬�� 4���� ���� ���л�, �������� ������� �������� �� ���, ���� 65.3%�� �ƿ� ����� ������ �����������̶�� ������ ��Ÿ����. �� �󸶳� �ɰ��� ������ �� �𸣴°�.

������� �� �����Ͽ� ������� �뺯, ���ȭ�� �ֹ��̶� ����ġ�� ���ء��� �Ｚ �� �ֻ��� ȸ������� ������ Ż���ߴ�. �̷κ��� �ص��� ������ ������ �� ����������� ����, �����å ���� ������ ������ ��å ���� ������ ������ �� ���� �ִ�.

������� ����������� ��� ���� ���縦 �м��� ��� ���� 2�б� ����������� ����η��� �ڷγ� ���� ���� 2019�� 1�б⿡ ���� 2��7õ���� �����ߴ�. �������δ� ���⡤���� �о� 1��6169��, ��ۡ���� �о� 5489��, ��� �о� 4685���� ���� �پ�����.

������ ��������� ����, ������ ȸ������ ��Ÿ������ ����� ������ �����ߴٴ� ����̴�.

������� �� ��ݱ� ��������� �ѻ������ 258�������� 2019�� ��ݱ⿡ ���� 16����(6.6%)�� �����߰� �Ѽ���׵� 860��4õ�� �޷��� 83�� �޷�(10.7%)�� �����ߴٰ� ������.

��ó�� ����, ���� ȸ������ �ұ��ϰ� ����η��� 2��7õ���̳� �پ����ٸ� ������ ��� �뵿 ��å�� ���ڸ� ���� ������ �ߴٴ� ��� �ƴѰ�.

�� ���� �ʴ� û�ʹ� ������������ �ҵ� �ֵ� ���� ��å�� �����ߴٴ� ȫ��ǥ KDI ������ 13��, ��ȸ ������ �������� �����ּ����� ���� �����ӱ�, �ٷνð� ���� ���� �Ϻ� ���ۿ��� �־��ٰ� �����ߴ�. ���� �״� �����ּ����� ���� �߸� ������� �ʾҴ��Ĵ� �ߴ� �ǿ� ���ǿ� ���� ������ ������, ��������� ������ ��������� �û��ϰ� �亯�ߴ�.

���� ���ڸ� ���̴� �ǹ�, �����ΰ�

�� ������ ��� �뵿 ��å�� ��������� ���� ���ڸ��� �ϻ��̾��ٴ� ������ �޴´�. ���� �ֵ�, �ݽ���, �������ڸ�, ���� ���ڸ��� ������ �������� ����� �� �������� ���� �������� ���ڸ� â���� ����� �� ����.

�����谡 �ź�, �ݴ��ϴ� �������� ���Ǵ� �ܵ����� �Թ� ������ ���� �ʾҴ°�. ���, �����ŷ���, �������� ������� ������ �� ���� 3������ �ߴ����ر�� ó���� ����� ������ �� ģ�뵿 3���� ������ �ʾҴ°�.

���⿡�� �ְ��� �γ����� �ҹ� ����� ����, �ľ������� ���ΰ� ���� ������ �ִ°�. �� ����� �� ���� ���ڸ����� �Ͽ��� ����� ���ڸ� â���� ���� ���ڸ� ������ ���� ���� �����̴�.','[����� ���� ��� �� ���] ���� �˹١��ܼ� �빫�� ��','..\uploadImages\20211015142728.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',71,'admin',to_date('21/10/15','RR/MM/DD'),'���� �迭���� �������� �Ǿ��̾��۷ι�(SK picglobal) ����� ä�� �������� �������� ��� �ֳġ� ����ȥ�̳� ����ȹ�� �ֳġ��� ���� �� ������ ������ ������ �ߴٴ� ��Ȥ�� ����ƴ�. �δ����� ���� �����ڰ� �Ű������� ���뵿�δ� ���������� ȥ�ο��ο� ���� ������ ���� ���� ����̳�, ���� ���� �ڷῡ �̸� �������� �ʾ����ǷΡ� �� ������ �ƴ϶�� �Ǵ��ߴ�. ��� ���� ����ڴ� �뵿�� �Ű� ���� ���� �̸� ������ 2���� 20~30�� ��������, ���� �������鿡�� �� �� �̷��� �������� ������ �޾��� ���ɼ��� ����ȴ�. �̵��� 2�� ������� ���������� ��� ��������.

 11�� <�Ѱܷ�>�� ��ä�뼺���� ö�� �����ൿ���� ��ȸ ȯ��뵿����ȸ �Ҽ� ���Ǵ� ������ �ǿ� ���� ���� ������ �ٿ� ������, ���� 1��26�� �������� �Ǿ��̾��۷ι��� �İ߾�ü�� ���� �Ұ����� ���������� A(����)��, B(��)�� 2�� ���� ������ �������� �� �����ߴ�. �� �ڸ����� A���� ���������κ��� �������� ��� �ִ��ġ� ����ȥ ��ȹ�� �ֳġ� ������ ��ȥ, ����ȹ�� �ִ���, �ִٸ� �� �� ������ �����ϴ��ġ� �������� �����ϴ��ġ� �� �������� �򰡿� ������ ������ ������ ������ ����ٰ� �Ѵ�. A���� ���� �ڿ� ģ������ ����ũ(SK)���� ���� �� �� ��ȥ��� �����ߴµ�, �̰� �������� ���� �ִ� �� �ƴϳġ��� īī�������� ���⵵ �ߴ�. �׸��� �� 2�� �� ���հ� �뺸�� �޾Ҵ�.
A���� �̵���� 3�� ���뵿�� �ȳ���� ���νŹ��� ���뵿�� ������뵿û�� ä�뼺������ ���硤ó���� �޶�� �ο��� �����ߴ�. 2�� ���� ���� ����� �̷���. ���������� �Ǿ��̾��۷ι��� ���� ��� �����ڿ��� ȥ�ο��ο� ���� ������ ���η� ������ ���� ����̳�, ���� �ڷῡ ���� ������ �����ϴ� ���� ������ ���� ���� ������ ����� ä�������� �������� �� �� ����. (��) �ٸ� ���η� ȥ�ο��� ���� �����ϴ� ���� ä�������� �Թ� ������ �Ѽ��� ����� �־� ���ǡ��˱� ��ġ�ߴ�.�� ä�������� 4��3���� �������ڿ� ���� �������࿡ �ʿ����� ���� ��ü���ǡ�ȥ�ο��� ���� ������ ������� �䱸�ϰų� �����ڷ�� �����ؼ��� �� �ȴ١��� �����ϰ� �ִ�. �뵿�� ����û�� �ܼ� ���� ������ ���������� �ش����� �ʴ´ٰ� �Ǵ��� ���̴�.','������ ������ ����ȥ����ꡯ ���� ��� ����, ���δ� ���� ���� �Ƴġ�','..\uploadImages\20211015142812.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',73,'admin',to_date('21/10/15','RR/MM/DD'),'�� �����ؼ� �� ��ƺ��� �� ����١������������� �˿� ������ �����̵�

�۳� 2�� ���� ���� ������ �濵�а��� ������ A���� ������ �����ϰ� ����ȭ�� ���ڿ� ���ܸ� �����ϰ� �ִ�. ������ ����ȸ��� ���� �������� �� �̻� ������ �غ��� ������, ������ ������ �������� �ʱ� �����̴�. A���� ������ �غ� �����ؼ� ���������� Ŀ�� ���̿� ���� ��µ� ���� �и��١��� �����ܸ� �ؼ� �� ������ ����ȭ�� �����ϰ� �ִ١��� ���ߴ�. �̿� ���� ���̷��� �� ���� ȥ�ڼ� ȣĲ��(��� ȣ�ڷ� �޾��� ���� ��)�� ���ų� ��ǰ�Ƿ� ���� ��µ� ���١��� �������� �����ؼ� �� ��ƺ��� ���� �� ���ٵ������ �����ߴ�. �� ���׷��� ���ֵ� ��ȥ�� �� �����ߴ١��� ��ȥ�� �԰� ��Ÿ� ���� ���� ���� �� ���� �� �ƴϳġ��� ���ٿ���.

���� 2�� ���� ���� ������ ��ġ�ܱ��а��� ������ B���� ����� ó����. B���� ���� �������� ������ ������ �߰߱���� ���� �ε������, ������ ���з� �ᱹ ������ �ܳ��ϰ� ���濡 ��ġ�� ������ ���ư� ������ ���� �غ� �ϰ� �ִ�. �״� ��ȭ ��ȭ���� ���ֱ� �ֽ��� �Ϸ��� ���� ���� �޾Ҵ١��� ����ǥ�� ������ ������ ���� ���� �׸��� �͡��̶� �����ߴ�. �̾� ���̷��Զ� ���� �غ��ϴ� �߿��� ���ݾ� ���� ���� ���� �ʴ´ٸ� ���濡�� ���� �� ��� ��ȥ�� ���� �� ���١��� ���ϸ� �Ѽ��� ǫ ������.

�� ���л� 10�� �� 6~7���� ��ǻ� ���� �ܳ�...10�� �� 7�� "����� ���ڵ� �� ����"

�ѱ�����������(���� �Ѱ濬)�� �ֱ� ���� 4���� ���� 3~4�г� ���л� �� ������ 2,713���� ������� �ǽ��� ��2021�� ���л� ����νĵ� ���硯�� ������, ���л� 10�� �� 6~7��(65.3%)�� ��ǻ� ������ ���� �ܳ��� ������ ������ ��Ÿ����.

���� ���л� �� ���������� �������� ������ ������ ������ ���� ���� ���� ���� ������, ���, ���� ���� ������ �� �غ��ϱ� ���ء��� ����ƴ�. ���� ��� �� 64.9%�� �л��� �ڽ��� ���� ������ ������ ������ ������ ���̴�.

�̴� ���� 9�� �Ѱ濬 ��û�� ���ڸ� �ν� �������硯���� û�� 10�� �� 7���� ���ڸ� ��Ȳ�� ��ȭ �� ��(62.9%)���� ����, ���ϴ� ���忡 ����� ���ɼ��� ���ٰ�(69.5%) �����Ѵٰ� ����� �ٿ� ���弱�� �ִ� ������ Ǯ�̵ȴ�. ������ ������ �����ϴٴ� �Ǵܰ�, ���ڸ� ���� ��ü�� �������̶�� �Ǵ��� ������ ���� ��ü�� ������ �ʴ� û����� �þ�� �ִ� ���̴�.

�̿� ���� �Ѱ濬�� ��û����� ������ ġ�������� ������� �ӿ��� �������� ��� ���ɼ��� ���� �����ϰ� ���� �ڽŰ��� �Ұ� �ִ١��� �����ߴ�. �� ���̴� û����� �뵿���� ������ ���߰� �̷��� ���� ������ ���ϵǴ� ����� �߱��� �͡��̶� ����� ǥ�ߴ�.

�� �̷��� û������ ���� �ܳ���, �ε��� ���� ������ ���� ����� ��Ż���� ������ û����� ���������ǡ��� �������� �ִٴ� ������ �ϰ����� ��εǱ⵵ �ߴ�. 

���� 9�� �Ѱ濬 ��û�� ���ڸ� �ν� �������硯���� û����� �ε��� ���� ������ ���� �ٷ� �ǿ��� ���ϵȴٰ� ��������, 10�� �� 7���� ����� ���ڰ� �� �� ���ٰ� �����ϴ� ������ ��Ÿ����.','�������� ��� �����ϴ� ���л��顦����� ��Ż���� ���������� �����⵵','..\uploadImages\20211015143014.jpg',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',75,'admin',to_date('21/10/15','RR/MM/DD'),'�������ڸ���=������ ���� | ���� Ȱ���� ���� Ȱ���ϰ� �ϸ� �������㸮���� �Ҹ��� 30��40(30~49��) ����ڼ��� ������ ���� �������� �ִٴ� ���� ����� ���Դ�. ������ ��� �������°��߱ⱸ(OECD) �߿����� �����ǿ� �ӹ�����.
 
13�� ���������ο���ȸ ���� �ѱ�����������(�Ѱ濬)�� ���û �����͸� �м��� ����� ������ 30��40 ����ڼ��� ���� 5�Ⱓ ����� 1.5%, ������ 0.7%����Ʈ(p) ������ ������ ��Ÿ����.
 
�Ѱ濬�� ������ 30��40 ����ڼ��� 2015�� 1262��1000���� 2016�� 1250��4000������ �پ�� �� 2017��(1242��6000��), 2018��(1224��8000��), 2019��(1203��3000��) ��� �϶��ϴ� ������ 1171�������� 1200����밡 �ر��ƴ�.
 
������ ���� 30��40 ������ 76.2%�� ��Ÿ����. ���� ���� �������� �߼���. 30��40 ������ OECD 38���� �� 30���� �������̴�. G5 ������ ���غ��� ���� ���� ����(85.8%)���� 9.5%p ���� ������ ��Ÿ����. �̱�(76.6%)�� ����(85.1%), ������(81.9%), �Ϻ�(85.1%)���� ������ �Ǵ�.
 
������� ���� 2019�� ��� ������ 30��40 ����ڼ��� ���� ������ ����� ���ڡ������������� 7��6516���� �پ�� ������ ����ƴ�. �̾� ����������(-7��1102��), ���Ҹž�(-5��3743��), ������(-5��406��)�� �ڸ� �̾���.
 
������ ���� 30��40 ����� ������ ���� ����� ������(19.6%), ���Ҹž�(14.1%), ���������񽺾�(8.3%), ���Ǿ� �� ��ȸ���� ���񽺾�(7.5%), �Ǽ���(7.1%), ���ڡ���������(5.8%) ������ ����ƴ�.
 
����� ������ ���� ����� �ֱ� 5�Ⱓ ����� ����� �������� ���캸�� ���Ǿ� �� ��ȸ���� ���񽺾� �ܿ��� ��� �����ϴ� ������ ��Ÿ����. Ư�� �ڿ����ڰ� ���� ���ڡ����������� ���Ҹž��� �������� ���� 3.3%, 2.8%�� ���Ҵ�. �� ���� ���ڸ��� �з��Ǵ� ������ ���� 2.7% �����ߴ�.','������ �㸮���� ��鸰�١�����30��40 ����ڡ����� ���� �϶�','..\uploadImages\20211015143219.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',76,'admin',to_date('21/10/15','RR/MM/DD'),'�Ｚ���ڴ� ���� 13~26�� ��2021 �Ｚ���� ����ȸ�� �¶��� ä��ڶ�ȸ���� �����Ѵ�.

�̹� �ڶ�ȸ�� ���� �ڷγ����̷��� ������(�ڷγ�19) ��Ȳ�� ����� �¶������� ������. ä��ڶ�ȸ Ȩ�������� �Ｚ���ڿ� ���α��� �÷��� ������Ρ��� ���õƴ�.

���� ���»�� �������, �帲��, ����ȭ����, ���������, ������, �ֺ극��, ����Ƽ��Ũ, �̿���ũ�н�, ���;����ǿ���, �����ؽ�, ��ž��, �ǿ�������, ���μ��ڸ���, KH���� �� 53�����.

�� ��� ����ȭ����, �����ؽ�, ���;����ǿ���, �帲���� ������ 1������ �Ѵ� �߰� ����̴�. �ݵ�ü�� PCB(�μ�ȸ�α���)�� �����ϴ� ������ڴ� �ý��۹ݵ�ü�� PCB ���� ��Ը� ���ڸ� ���� ������ �ݵ�ü ���� ����ȭ�� �⿩�ϰ� �ִ�.


�ݵ�ü ���縦 �����ϴ� �ֺ극���� �Ｚ���ڿ� ������ 3D �����÷��� �İ����� �ٽɼ��縦 ���� ���ʷ� �����ߴ�. �ݵ�ü�� ���� �����ϴ� ���;����ǿ����� �Ｚ������ ��� ������ �޾� �ݵ�ü �����۸� �����ϴµ� Ȱ��Ǵ� CVD(Chemical Vapor Deposition) ���� �ٽɱ���� ����ȭ�ߴ�.

IT��� �ݼ� ���� ���� ��������� KH������ �ְ� ������ ��������� �������� ū ������ �޴����� ������ ������ ���� ����� ������Z ����3, ������Z �ø�3�� �Ǹ� ȣ���� �⿩�ߴ�.

��� �Ⱓ �߿� ���������, ���ݵ�ü, ���̼�, ����������ũ, ������, �￵��ȭ �� 6�� ����� �������� ä�� ���� ���ǿ� ������ ���� �� �ִ� �¶��� ä�� ����ȸ�� �ǽ��Ѵ�. ���� ����ڴ� 13�Ϻ��� 15�ϱ��� ä��ڶ�ȸ Ȩ���������� ���� ������ ���� ��û�ϸ� �ȴ�.

�Ȱ�� ����� ���Ｚ�� �پ��� ���·� û�����ڸ� â�⿡ ������ �ִ١��� ���Ｚ�� ���� ��ʰ� ��� ���ݿ� Ȯ��Ǳ⸦ ����ϸ� ���ε� ��� Ȯ�븦 ���� ����ϴ� ����� �ʿ��� �κ��� ������ ���� �����ϰڴ١��� �����ߴ�.

��ĥ�� ����� ���Ｚ�� ����ȸ�簡 �Բ� û��鿡�� ������ ���ڸ��� �����ϴ� ���� �ſ� �ǹ� �ִ١��� ���߼Һ�ó����ε� �߼ұ��, ��ó����ŸƮ���� ���� ������ ����� û����� ����ϴ� ���ڸ� â�⿡ �ּ��� ���ϰڴ١��� ������.

�Ｚ���� ����ȸ�� ����ȸ ȸ���� �ð� �ִ� ������� �迵�� ��ǥ�� ���Ｚ���� ����ȸ��� �Ｚ�� ���� DNA�� �������� �� �����ϰ� �ִ� ������̶�� ���̷��� �߼�, �߰߱������ ������ �������� ���� �����ϱ⸦ ����Ѵ١���� ������.

������ �Ｚ���� ��ǥ�̻� ������ ���̹� ��縦 ���� ���� û����� ���� ������ �� �ִ� ���� ���ڸ��� ã�⸦ ����Ѵ١��� ���Ｚ���ڴ� ����ȸ����� ��� Ȱ���� ���� ��ȭ�ϰ�, ������ ���ڸ� Ȯ�� â�⿡ �ּ��� ���ϰڴ١��� ���ߴ�.','������ 1���� �Ｚ���� ���»� ��� �����غ���','..\uploadImages\20211015143348.jpg',3,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',78,'admin',to_date('21/10/15','RR/MM/DD'),'�� 31���� 24�� ���� ���

�̳��� �� ���б� ��ǻ�������迭 ���� ���� ���� �л����� �ٹ� ������ ��� ���̴�.


ȭâ�� ���� �ϴþƷ�, ���� �Կ����� �ò������� �� ������ ��Ʈ��ũ���ȹ�(2022�г⵵���� ��������?������������) ������� ���� ������ �����ϱ⸸ �ߴ�.

�� �� ���� ���� ���� �л� 31�� �� 24���� �̹� ���� ����߱� �����̴�.

�� ������ ���� �Կ��� ���� ��� �غ� ���� �л� 6���� ǥ�� ���� ��� ������. ������ �Ѻ��� �����ڷγ����̷���������(�ڷγ�19) ��� �������� �������� ���ߴ�.

����ȣ ������ "������� �����ٹ� ������ 1�б⿡ ���߰ڴ�"�鼭 "�츮 �� ��ټ��� 70% �̻��� �̳���ũ���, ������������Ʈ, �帲��ť��Ƽ �� ���� �������(IT)�о� ȸ�翡 ���� ����ϴ� �ٶ��� ���°� ���ڰ� �߾����� ������ �ٹ� ������ ����� �� ��� ����"�̶�鼭 �ʽ����� ������.

�׸�ŭ ��Ʈ��ũ���ȹ��� ��������� �Ÿ��� ��, �� ����� �ߵȴٴ� ���̴�.

�̳� ���� �̵��� �л�(26)�� "�������� ��Ʈ��ũ ��������� �ý����� CCNP �ڰ����� ���� �ý����ڸ��ƿ� �Ի縦 �غ� ��"�̶�� ������ ���� �ҽ��� ���� �� ���ܴ�.

�� �л� �� ��� �ڰ��� 2.3����"����� źź���"

�������Ȼ�����, ����ó�������� �ڰ����� ����� Ȳ��� �л�(24) ���� ���� ȸ�縦 ������ ���� ���̴�.

�� ���� �̷��� ��� ���忡�� ���Ѱ��� ������ �ִ� ����� �ڷγ�19�� ���� ���� ��ȭ�� Ȯ��� ���� �ô�. ���� ����Ʈ ������� IT�η� ���䰡 ���������� �þ�� ����.

���⿡ ���� �� ���� �ڷγ��� ���� ������ ���Ҵ� �����ؿ� �ڰ��� ��濡 ������ �͵� ��� ������� ���̴µ� �Ѹ��� �ߴ�.

�� ������ ����Ʈ��ũ ���� �о� ����� �Ϸ��� �Ƿ��� �������� ����� ����ġ �ʴ�. ���� ���� �ڰ����� ����ϴ� �� ���������� ������ ���� �� �ִ١��� �ߴ�.

�̷� ���� ����� ���� ������ ����Ǵ� 2�г� ���� ������, �ڰ��� ��濡 ����̹� �ɾ��� �� ���п� �� ���� �ڰ��� �л����� ����� �ڰ����� �� 70�� ��, �л� 1�δ� ��� 2.3���� ���Ѵ�.

�� ������ ������Ʈ ��ȭ�� ����ַ� �ڸ���ư� ���� �����ϸ� ��Ʈ��ũ ���� �о��� ���ڸ�, �� ����� źź��Ρ���鼭 ������ ������ �л��� ����� 100% �޼��̶�� ���� ���� �� �ִ١��� �ڽŰ��� �巯�´�.','[i���׹��]�� ���߿� ������ ���� ��������ǿ� ������','..\uploadImages\20211015143546.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',80,'admin',to_date('21/10/15','RR/MM/DD'),'�ѱ��� û����(15~29��) ��� ������ �����鼭 �Ʒð� ������ ���� �ʴ� ''��Ʈ��'' ������ 20%�� �Ѿ�� �̵�� ���� ������ �ս��� ���� 62������ �����Ѵٴ� ������ ���Դ�.

6�� �ѱ������������� ��ǥ�� ''û���� ��Ʈ�� ������ ���'' ���� ������ ������ ���� û���� ��Ʈ ������ 2019�� ���� 22.3%��. �̴� �ѱ��뵿�г� 1~22���⵵ �����ڷ��� 2010~2019�� �ڷḦ ����� ������ �����.

��Ʈ�� ������ �׵��� ��ħ�� �־��µ� 2015����� �������� ��Ÿ���ٰ� 2018�⿡ ���� ������ ���� 2019�⿡�� 22.3%�� ����ߴ�.

�ݸ� �������°��߱ⱸ(OECD) ��հ��� 2014����� ���������� ���������� 2019�⿡�� 12.9%�� ����� �츮���� �� 9.4% ����Ʈ ���� ������ ��Ÿ����.

�ֱ��� ��Ʈ ������ �������ٵ� �������� �� ũ�� �������� �������� �� ���� ������ ��Ÿ����. ������ ��Ʈ ������ 2010�� 17.1%���� 2019�� 25.9%�� �����ߴ�. ���� �Ⱓ ���� ��Ʈ ������ 17.1%���� 18.2%�� ���� ������ �Ͱ��� ���ȴ�.

������ ��Ʈ�� ���� �ս��� �跮ȭ�ϱ� ���� ����������Ī��(PSM)�� ���, ��Ʈ�� ���� ������ ����� �����ߴ�.

����ҵ� �������� ������� ��ȸ����δ���� ������ ������ ��Ʈ�� ���� ������ ����� 2010�⵵�� 33�������� 2019�⿡�� 61��7000������� ������ ������ ��Ÿ����.

GDP ��� ��Ʈ�� ������ ��� ���ߵ� 2010�⿡ 2.5%�� ��������� ���� ��ħ�� ���̴ٰ� 2019�⿡�� 3.2%���� ����� ������ ��Ÿ����.

������ �α����� ��ȭ�� ���� ���� ���갡���α��� ���������� ������ ������ ����Ǹ鼭 �뵿�� ������ ����Ǵ� ��ŭ û���� ��Ʈ�� �뵿�������� ������ ������ �ʿ䰡 �ִٰ� ����ߴ�.

������ �Ѱ濬 ���������� "�ҵ� ��������, �����Ʒ� ������ ���� û����, ��������� ���� û�������� ��Ʈ�� ������ ��������� ���� ��Ÿ���� ������ �ִ١��� ��û����� ������� ���� ������ ������å���ٴ� �ҵ� �������� �߽��� ��������̳� �����Ʒ�, ���� ���� ���� ������ ��ȭ�� �ʿ䰡 �ִ١��� �����ߴ�.

�̾� ����ȸ�� �������κ����� ��, ��ȸ�� ���� �η���, ����ǿ� ��� � �����ϴ� ��Ʈ�� ������ �ذ��ϱ� ���ؼ� û�ҳ����� ���� ������� �� �ɸ���� ���� ������ �����ϴ� ��ȵ� ����� �ʿ䰡 �ִ١��� ����ߴ�.','������� ���� ''û�� ��Ʈ��'' ���� 22.3%�� ���� �ս� 62���� ����','..\uploadImages\20211015143725.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',82,'admin',to_date('21/10/15','RR/MM/DD'),'�ڷγ�19�� Ȯ���ϸ鼭 �츮�� �ϻ󿡼� ��ȸ�� �Ÿ��α⸦ ��õ�ϰ�, �ϻ��� ���� ���� ���顤������ ȯ������ �ٲ����. ������ ȸ�Ǵ� ȭ���� ���� �̷�����, ���� ���� ���ݿ��� ó���Ѵ�. ���á��ڶ�ȸ ���� �¶������� �Űܰ���.

������������ ����������ȣ�� �� ���� ��縦 ��Ÿ���� �÷��� �������忡�� �����ߴ�. ����ī ȫ����� �ߴ�ĵ� �����並 Ȱ���� ���ȴ�. ä�� �ڶ�ȸ�� ���� ���� ��Ÿ������ Ȱ���ϰ� �ִ�.

���б��������źΰ� 12�� ������ ''2021 û�� ���б���� ���ڸ��ڶ�ȸ''�� �ֱ� Ʈ���带 �ݿ��� ȭ�� ������ ��Ÿ���� �÷������� ���ȴ�. ��������δ� �Դ�Ÿ���� ���� �������� �����ϰ�, ���� �������� ���� ������� �����ϴ� ��ũ �ܼ�Ʈ �� ������ ���̷α� ���� �����ߴ�.

�̿� �Բ� ä������� �� ����� �ν��� ����������, �����ڰ� �ν��� �湮�ϸ� ����� �غ��� �Ұ��ڷḦ Ȯ���ϰ� �ν��� �ִ� ä�� ����ڿ� �̾߱⸦ ���� �� �ִ�. �̿� �Բ� �ѱ�������������ȸ�� ������ �������� �ν������� ����� �������簡 �����ϸ� ����� �����ߴ�.

��������ΰ� ������ ��Ÿ���� ������ �湮�غ���, ���������� �� �������� ����������� �Űܳ��� ������ ���ߴ�. ä������ �� �������� ���� ������ ȭ�鿡�� ���콺�� ��ũ�� Ŭ���ϸ� �̵��� ���� ������ ���� �� �ִ�. ��Ÿ���������� Ŭ�� ��� ĳ���͸� ���� �����̸� ''�ν�'' ������ ������ ���� �湮�� ������ ��´�. Ư�� ������ �ִ� ä�� ����� ĳ���Ϳ� ä���̳� ȭ���������� ��ȭ�� �� �־� �Ϲ� �� ���� ��ȣ�ۿ��Ѵٴ� ������ �� ũ�� ���� �� �ִ�.

�̹� ��Ÿ���� ������ȸ�� �ν��� ������ �������� ��� ������ "�ڷγ�19 ���İ� ����Ǵ� ��Ȳ����, ������ ä�� ȯ���̴�. �λ� ����� ���� ���ñٹ��� �ϸ鼭 ä�� ������ ������ �� �ְ�, �ν��� ������ ĳ���͸� ���� �˶��� ���� �̿� ���� �����ϸ� �ȴ�. ���ſ��� �ν� ��ġ �� ���� �Ӵ�, ��μ� ��¿� ��� �ð��̳� ����� ���� �������, ��Ÿ���� ȯ�濡���� ���ʿ��� �Ҹ� ���� ���� �ŷ���"�̶�� ���ߴ�.','��Ÿ���� ������ȸ �湮�غ���... �ʿ��� �÷��������� ������ ���� ����','..\uploadImages\20211015143831.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',83,'admin',to_date('21/10/15','RR/MM/DD'),'���� �ڷγ����̷���������-19(���� �ڷγ�19)�� ���� ��������� ������ �ؿ� ����� ������ ������ û����� �����ϴ� �߼���. �׷��� ��ư� �ؿ� ����� ������������ �ұ��ϰ� ����� ���� �� ���ΰ����� ���� ���� ������ �ٽ� �����ϡ��ϴ� ��ʵ� �ſ� ���� ������ ��������. ���δ� ���� ��������� �Ѱ踦 �غ��ϱ� ���� ���� 2008����� �ؿ� ��� ��������� ���������� �����ߴ�. ��� �̸�� ���δ� ���۷ι� û�� ���� 10���� �缺��ȹ���� �����ϸ� �� 5000����� ������ �����ߴ�. �ڱ��� ���δ� �����̹���(K-Move)����� �̸����� ����������, �� ������ ���ο����� ����ؼ� �����ϰ� �ִ� ����̴�. �ش� ����� ���� �ð�, � ���, ���� ���� � ���� ��K-Move���� ��� ��K-Move���� �ܱ� ��Ʈ���� ��û������������ ������ ��ȴ�. ������ ���� �������� �ҿ�Ǵ� ���� ����� 80~100% ������ �ؿ� ����� �޲ٴ� �̵鿡�� ���䰡 ����. ������ ��ǥ�� �ѱ�����η°��� �ؿ� ��� ���� ��迡 ������ ���� 2013�� 1607���̾��� �ؿ�����ڴ� ������ 4400������ �����ߴ�. �̴� 7�� �� 3�� �̻� �þ ��ġ��. �ڷγ�19 ���ķ� ����� ���� �����ϴ� �߼��� �������� ���� 2019�⿡�� 6816���� �ؿܷ� ����� ������ �����ϰ� �ִ�. �̷��� �ؿ��� ������忡 ���� ������ �α��� �þ�� ������ ���� �ؿ������ 10�� �� 7���� �ٽ� ������ �ǵ��ƿ��� ������ �ľǵƴ�. ���ΰ� ���弭�� �ؿ� ����� ������������ �ұ��ϰ� �ؿ������ 70%�� �ؿ� ����� �����ϰ� �ٽ� ������ ���ƿ��� ������ �������� ���̴�. ����η°����� ���� 2015����� 2020����� �ؿ� ����� ��� �� 4800���� ǥ������ ���� 1������ 3������ ������ �ؿ������ ���İ��� �������翡 ������ ������ ü���ϰ� �ִ� ����� 1576��(32.8%)�� ���ƴ�. ������ 3224��(67.2%)�� �̹� ������ �ͱ��� ��Ȳ�̴�. �ͱ� ������ ���� ���ᰡ 55.9%�� ���� ��������, �ͱ��� 3224���� 3�� �� 1���� ���ڹ��� ��������� ���� �ͱ��ߴٰ� ���ߴ�. �ڷγ�19 Ȯ������ ���� �ͱ��� 28.4%�� ���ߴ�. ������ �ؿ� ����� ���������� �� �� �� �ͱ��� ����� 61.6%�� �ڷγ�19�� ���� ��������� ���ߴٰ� �����ߴ�.  ��Ÿ ������� �����δ� �濵�� ����, �ذ� �뺸, �λ� �߷�, ��� �ı�, ���, �ӱ� ü�� ���� ������. �ᱹ, �ؿ� ü�� ��ȹ�� �°� �Ⱓ�� ����� �ͱ��� ����ڴ� 647���̴�. �������� �ڷγ�19 Ȥ�� ���� ����, �ٹ�ȯ�� �Ҹ��� �� �پ��� �������� �ؿ� ��� �� ������ ��ȹ���� �޸� �ͱ����� ���ߴ�.','����� �ϸ� �嶯?���������� ������ �ż����� �ؿ� ����ڵ�  [��ó] �� ���� �����̽Ź����� �ۼ��� ��� �Դϴ�.(www.ntoday.co.kr)','..\uploadImages\20211015143926.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',88,'admin',to_date('21/10/15','RR/MM/DD'),'����� ���۱��� ��ǰ���������� �缺�� ���� 2�� �������� ���� 22�ϱ��� �����Ѵ�. 

12�� ���� ������ ��ǰ���������� �缺������ ������ �ǹ���(�ٸ���Ÿ�����μҹɸ��������ٴ�) �缺�� ���� ��������, ���� ����� ��40�� ���� ���۱���, ���۱� ���� ���� (����)������ �� �� 12���̴�.

�����ڴ� �ڰ��� ��濡 �ʿ��� ������ ����� ������ �� �ִ�. ��� ����� ���۱� �������� �����Ѵ�.

�ش� ������ �̼��� �� ���� ���� �̻� �޾� ���迡 ����ϸ� �ڰ����� ����� �� �ִ�. �ڰ��� �����ڴ� �����ڷγ� �ô�� ��ȯ�Ǹ� ��������� Ȱ�⸦ ��� �� ��������̳� ȣ�� ���� �о߿� ����ϴ� �� �����ϴ�.

���� ���� ���� �Ŀ��� ��ǰ���� �� ������ ���� �������İ� �ǹ��ɷ��� ���� �ڰ��� ����ڸ� ������� ��� ���踦 ������ ��ȹ�̴�.

1�� ������ ���� 2��(��)�� ������ ���� ����ϸ��� �̱�ȣ����ȸ �ѱ����������� ���� ���̴�. �̹��� ���� ���� 2�� ������ �̴� 27�Ϻ��� ���� 2�ϱ��� 5�ϰ� 4�ð���(�� 20�ð�) ������ �����̴�.

�������� ������ �ʿ��� ����� ������, ��� ���� ���� �� �پ��� ������ ���� �� �ִ�.

���� ������ ���ϴ� ������ ��û���� �����������Ǽ�, ������û�� ���� �ۼ��� �� �̱�ȣ����ȸ �ѱ������� �̸��Ϸ� ��û�ϸ� �ȴ�.

��û ���� �ڼ��� ������ �̱�ȣ����ȸ �ѱ����������� �����ϸ� �ȳ��� ���� �� �ִ�.

����, û��Ӹ� �ƴ϶� 40�� ������, ��´������� �� ����� �غ��ϴ� ������� ���뵿�ο��� �ְ��ϴ� ���ڸ� ���� ����ũ�ݡ����� �پ��� ������ �Ѵ��� �� �� �ִ�.

����ũ���� ������Ρ��� �����ڸ��ơ� ���� ��������� ������ �����������Ʈ��, ���ο� �ѱ������������ �¶����� ���� �����ڿ� �����ڸ� ��������ְ� ��������ȭ�� ���� �Ǿ���å, �����Ʒ� ���� ���� ������ �����Ѵ�.

������ ���ڸ���å������ ���̹� ������ �����ڷγ��� �غ��ϴ� û��鿡�� ��������� ȣ�ڿ� ����ϴµ� �ʿ��� �ڰ����� ����� �� �ִ� ���� ��ȸ�̹Ƿ� ���� ������ �޶󡱸� �������ε� û����� ������ ���ڸ��� ���� �� �ֵ��� �پ��� ���������� ��ϰ� ���İ����� �����ϰڴ١��� ���ߴ�.','���۱�, ��ǰ���������� �缺 �� ��� ����','..\uploadImages\20211015144407.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',89,'admin',to_date('21/10/15','RR/MM/DD'),'����������ǽ������� ����

���� 9�� 30�� �湮�� ȣ�������б��� �Ϲ����� �����б��� �Ը� �޶���. ������ �ô� �����б��� �ǹ� 1~2������ ����ϴ� ��츦 ���� �ôµ� ȣ�������б��� 1~3ȣ���� �ǹ��� 2���� ����, �׸��� ����絵 �����ϰ� �־���. �Ը� ���� ����� ���� ������ ���� �̻��̶�� �ص� ������ ���� ��������.

�̴� �л� �Ը�ε� Ȯ���� �� �ִ�. ȣ�������б��� �л����� 2550��(�����л� 1900��, �л���� 350��, �������� �����Ʒð��� 300��)���� �ظ��� ������ �̻��� ������ Ȯ���ϰ� �ִ�. ���ӱ������� 286�� ���ϸ�, �̵� �� 96% �̻��� �����ڻ� �̻��� ������ �ǹ������ �����ϰ� �ִ�.

�ڷγ�19 ��Ȳ�ӿ����� �ǽ� ������ ������ �����ϰ� �ִ�. 4���� ���б��� ��� �̷а� �ǽ��� ������ 7:3 �̶�� ȣ�������б��� 3:7 ���߿� �ڰ��� Ȯ���� ��ǥ��.

�ڷγ�19 ��Ȳ�� �޹��ϰ� ���ư��� �����غ��� ������� ��������� �ǽ� ������ ������� �޾���. ȣ�������б��� �����ر��� �ǽ� ������ ������� �޾�����, ���� 1�б� �κ������� �ǽ������� �÷Ȱ�, 2�б���ʹ� ö���� �濪 �Ͽ� �ǽ� ������ Ȯ���� �������̴�. �����б��� Ư���� �ǽ������� �����ϸ� ����� ���� �ʴٴ� �Ǵ� �����̴�.

���� ȣ�������б� �������� "1993�� �����̷� 26�Ⱓ ����� 99.1%��� ���� ������� �ǹ��߽��� ������ ������¼��͡��а��� �����米���� ��õ�� ���� ����"�̶�� "�ǹ��ɷ°� �μ��� ���߰�, ��� ���信 �ʿ��� ������ ���縦 �����ϴ� ���� �б��� �������� ��ǥ"��� ���ߴ�.

��ݷ����� �� �پ��� �а��� �ָ�

ȣ�������б��� ���� �б����� ã�� �� ���� �پ��� �а��� �������� ������. �̳� �湮�� 2ȣ������ �ݷ������� ������ �ü��� �������� �������̾���. 4������ ������, �䳢�� ����� �پ��� Ư�������� ���� ������ �̷�����. ���� 1���� ��ġ�� �����ൿ�����ǽ��ǿ����� �������� �ൿ������ ������ ������ �����ϴ� �� �ٸ� �б������� ã�ƺ��� ���� ��Ư�ϰ� �پ��� �ǽ� ������ ����ƴ�.

���� ���������� ���� ���ᡤġ�Ḧ ����ϴ� ���ǻ�� �Բ� ��ȣ�� ������ ���̴� ���� �ηµ��� ����������, ���ݱ��� �̵鿡�� ���ٸ� �ڰݿ���� ���°� ����̴�. ������ ���� 3������ ������ ���������� �ٷ� �� �ִ� �ڰ��� ''�������ǻ�''�� �����. �̱� �� �ݷ����� ��ȭ�� ������ �������� ������ũ�ϼ����� �Ҹ��� ���� �η��� �ѱ������� ����ȭ�Ǵ� ���� ���� ���ο� ���ڸ��� ���� ������ ���ǰ� �ִ�.

ȣ�������б��� �ݷ��������������� �������ǰ��������� �ִµ� �ش������ ���⵵ �ż��Ǵ� �������ǻ� �ڰ����� ������ ��ٴ� ������ �ڰ��� ��濡 ������ ������ ����ȴ�.','[���帣��] �ǽ��������� ��� ''99%''�� �������б� �� �̾��','..\uploadImages\20211015144552.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',91,'admin',to_date('21/10/15','RR/MM/DD'),'�׸����� ����� �����ϴ� ������� �����ڵ��� �ñ����� Ǯ����� ''2021 �׸�����������'' ���ܼ�Ʈ�� �������� �������ƴ�.

��� ������ ���� 8�Ͽ��� �׸����� ����� ���� ��Ȳ�� ������ �˾ƺ��� ���� ���л���� ����غ������ �߱��� ��ӵƴ�. Ư�� �̳��� SK���� �������� �ڿ����δ���Ʈ���������׷� �� ���͸���������� ���ڵ��� ���ʷ� ���뿡 �ö���.

�� ȸ��� ���迡�� ���� ������ �ڶ������� ��� �� �ŷ��� �̾� �� ȸ����̶� �������� �������� ���� �� ����̴�. �� �������� �� ȸ��� �����ΰ� � ����� �����ϴ��� ��ü������ �Ұ��԰� ���ÿ� ��ü������ ���ϴ� ������� �����⵵ �ߴ�.

SK�̳뺣�̼� ���͸�����ο��� ���� 1�� ������������ ����� SK���� �̹� ���ܼ�Ʈ�� ���� â�� �� ó������ ����غ���� ������. ������ SK�� PM�� ���� ��������� ��ǥ���� ���������� �򰡵� �� SK�̳뺣�̼� �λ�ü�踦 �״�� ������ ���� ������.

�� PM�� "SK�׷��� ���ϴ� ����� �ٲٴ� �� �����ϴ� ��ó�� ������ ������ ��ȭ�� �η������� �ʴ� ����"�̶�� "���ޡ����������� ��� ������� ''�� ���� ����''�� ���Ǹ�, ���� ��ü�� �߿��� �ǻ���� �������� ��� ���������� �ǰ��� ���������� �ݿ��ȴ�"�� �Ұ��ߴ�.

������ �ڿ����δ���Ʈ�� �λ��� å���� "�ڿ����δ���Ʈ���� ���� ��ݰ� ����, ������� ��� �ƿ츦 �� �ִ� ����� ��ǰ�� ���� ��"�̶�� "������ ������ �������� �ٽɼ��縦 ����� �ܰ����� ������ ������ ���� ������� �����Ϸ��� �Ѵ�"�� �û��ߴ�.

����� �����׷� �ϻ��� ������ "������ �ƹ��� ���� �ʰ� ������ ���� ''���� ���� �غ���''�� ���� ��ó �������� ������ ����̴�"�鼭 "�������̰� â������ ���� ���� �ְ� �����ϴ� �������� ���縦 ��ٸ��� �ִ�"�� �����ߴ�.','"�츮 ȸ��¿䡤����" ���͸������� ���ڵ��� �Ͷ��� ''�������''','..\uploadImages\20211015144707.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',92,'admin',to_date('21/10/15','RR/MM/DD'),'��� �Ŀ��� ��ȯ���� ���� ''���ڱݴ��� ü����''�� �����ؿ��� 426����� �̸��� ������ ��Ÿ����. ü���Ǽ��� 3��6000�������� �����ϸ� 1�δ� �������� ü������ 117�������̴�.

30�� ''�����������''�� ������ ������ ���� ����� ���ڱ��� �� ü���Ǽ��� 5��4384��, ü������ 583��6700�����̾���.

�� �� ��ȯ�� 1��8148��, 157��1600������ �����ϰ� ��ȯ���� ���� ''������ü��''�� 3��6236��, ü������ 426��5100�����̾���.

�������� ���� ��Ⱑ 123��300�������� ������ ü������ ���� ���Ҵ�. ���� �Ǽ��� 1��430������ �����ϰ� 1������ �Ѵ� �����̾���.

������ 9777��, 106��7300�������� �� �ڸ� �̾�����, ��õ(2711��, 32��6500����), �λ�(2165��, 28���) ���̾���. ������, �뵵���ϼ��� ü���Ǽ��� �׼��� ���� ��Ÿ����.

���ڱݴ����� ���� ���л��� �ѱ�������ܿ� ��û�� �޴´�. �����ڰ� ����� ���� ����(������ ���� 2174����)�� ���� �ҵ��� �ø��� �����غ��� ���� ��ȯ �ǹ��� �����. ���ڱݴ����� ü���� ���� ���� �ҵ��� �ø��� û���� �����߰ų� �ٸ� ��Ȱ�� �δ� ������ ���ڱ��� ���� �ʰ� �ִ� ���´�.

���� ���� ���ڱ��� �ظ��� ������ �ð� �ִ�. 2017�� 1��2935��, 145��3100�����̴� ''������ ü��''�� 3�⸸�� 3�� �������� �þ���.

���� ���� �̰��� �߼��� ��ӵǴ� ������. �� ��ݱ���� ������ ü�� �Ǽ��� 3��6000��, ü������ 449������� �̹� ������ ���� ��ġ�� �Ѿ��.

���� ���̻�ȯ�� ���� ������ �����ϰ� �ִ� ������ ��Ÿ����. ���̻�ȯ�ڴ� ���� �� 3���� ����� ������ ��ȯ������ ���ų� ��ȯ ���� �� 3������� ��ȯ�� ����������� 5% �̸��� ���� ü������ �ǹ̰� �ٸ���.

������ ���� ���̻�ȯ�ڴ� 2��5090�� ���ߴ�. 3�� ���� 2017�� 1��2000�����̾��� �Ͱ� ���� 2�踦 �Ѿ��.','��� �Ŀ��� �� ���� ���ڱ� 426�����1�δ� 117������','..\uploadImages\20211015144919.jpg',6,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',93,'admin',to_date('21/10/15','RR/MM/DD'),'[�췲����� ������ ����]���� ��� �������� �缺�Ϸ��� �߼Һ�ó�����(��� ��ĥ��)�� ������ ��������� �ߵ� Ż���ڰ� 42%�� �̸���, ������� 65%�� ��ġ�� �� �� ������ ������ ���ϰ� �ִ� ������ ��Ÿ����.

6�� ��ȸ �������ڿ��߼Һ�ó�������ȸ �Ҽ� ���強 ���Ҿ���ִ� �ǿ��� �߱���� ������ ��������� �ߵ�Ż�� ������ 42%��� �����ߴ�. ������ ��������� Ư��ȭ��(2��)�� ������(2��)�� ������ ������������, �߼ұ�� ���忡�� �ʿ��� ��������η��� ü�������� �缺�ϱ� ���� ������ ���̴�. ���� 2009����� ���Ե� 2012����� ������� �����ߴ�. ��������� ���� 10�Ⱓ 615����� ���ԵǱ⵵ �ߴ�.


2011����� �����ر��� 10�Ⱓ ������������ ���ߵ� �ο��� 4817��. �� �� �ߵ� ������ �ο��� 2005�� ���Ѵ�. �ߵ� Ż���� �����δ� ���θ� �ٲ�ٴ� �ο��� 649��, ���� ���� �� Ż���� ��찡 297��, ���������� �ߵ��� ������ �̵��� 289�� ���̾���. ������ ����߰ų� �̸� ����� �ߵ� ������ ��쵵 �־���.

������� �� ������ ��ġ�� ���� ����� ����� �л� ������ �ų� �϶� �߼���. 2014�� 72.8%, 2017�� 69.5% ������ 65.3%���� ��������. ��� ��ü�� ����Ǵ� �������. ������ 9����, Ư��ȭ�� 17������ ������ ���� ������ ��������� ����������, ���� 20011�� ���� ü�� ���� ������� ���ο� ������� �߱����� ���� �ʰ� �ִ�.

���強 �ǿ��� ���߼ұ������ �η³��� ����̰� �ִµ�, ���ΰ� ������ ������ ��������� �����η��� ü�������� �缺�� �߱⸦ �����ϰڴٴ� ��������� ������ų ��ŭ �ߵ������ڰ� ���١��� ���߱�� �������� ���ȿ���� �ش�ȭ�� ���� ������ ��å������ �ʿ��ϴ١��� �����ߴ�.','�ߵ� Ż���� 42%, ������� 65% ���ġ����������� �������ҡ�','..\uploadImages\20211015144956.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',96,'admin',to_date('21/10/15','RR/MM/DD'),'�ݿ���������б��� ���� 18~21�� 2022�г⵵ ���Ի��� �����Ѵ�.

�ݿ������ �������� �ڰ� ������ �ؿ���������, �������� �� �������� ���������� ���� ������� �ָ�ް� �ִ� ��衤���� �о� ����� ���̽��Ͱ��.

1973�� ���� �� �� 1��6õ124���� ����� ���縦 ������ ����� 2017~2019�� ������ɰ���ȸ���� �մ޾� ��ž�� ��ž�� �����ϴ� �� ���������� �缺�� �������� ������ �ŵΰ� �ִ�.

���� �������� ���� ����56ȸ ������ɰ���ȸ�������� ��� ���� 2��(��ž)�� ������ �ŵ� �ٽ� �� �� ������� �����ߴ�.

�̷� ������ ���� �� ���� ���� �ڰ� ������ �������� �� �ݿ������� �������� ���� �����̴�.

2017�� ���� ���ʷ� ���Ե� ���� ���� �ڰ� ������ �� �б� �л��鿡�� ���� �� �����л� ������ ������ �ڰ��� ����� �� �ֵ��� �ߴ�.

�ݿ������ ���� �ѱ�����η°����� �ְ��ϴ� ��� ��� ���� ���� �ڰ� ������� ����������� �����Ǳ⵵ �ߴ�.

�� ������ ���� 2018����� 3�Ⱓ �ݿ����� �л� 379���� ��輳�������, ��谡������������, �������������, ����������, ��ǻ�����밡��������, �����ڵ�ȭ������, ���ڻ������� ��� 7�� ���񿡼� ������ �ڰ����� �޾Ҵ�.

2018����� ������ �������������� �ݿ����� ������� ������ �� �ٸ� ������ �ƴ�. ���б���, �ڵ�ȭ�ý��۰�, �������ڰ��� ������ �л����� 1�г� 2�б���� 2�г� 2�б���� �������� ������ �̼��ϰ�, 3�г⿡ �ٽ� �������� ������ �� �ִ�. �а��� �����ϰ� 2���� ������ ���� �� �ִ� �ý������� �л����� �� ����, ���� ���� ������ �ڰ� ������ ���ÿ� �ذ��� �� �ִ� ������ ���� �� �ִ�.

������ ������ ������� �缺 �ڵ�ȭ ���� ������ ������ �� �ִٴ� ���� �ݿ������� ����� ��� �ϳ���.

�ݿ������ 2018�� 3�� ������ �ڵ�ȭ ������ �ѽ���(Festo)�� ���ݿ�-FACT(�ѽ��� �����Ʒü���) �����Ʒü��� � ���࡯�� �ΰ� �̰����� ���������� �̼��� �л��鿡�� �ѽ��� �Ʒü��Ͱ� �߱��ϴ� �������� ���� �� �ֵ��� �ߴ�.

�ѽ��� �Ʒü��Ͱ� �߱��ϴ� �������� ������ �����ƽþ� ��� �ڰ����� ����� ������ ���ŷ��� ���� �ڰ����� ������ ���� �� �ƴ϶� �ؿ� ������� �����ϴ�.

�̿� �Բ� �ݿ������ �л����� ���̷� ��ȸ�� �ֵ��� �μ��� ������ ���� ������ ���硯�� ������ �� �ֵ��� �μ� �������� ������ �ִ�.

�������� ������ ���� ����, �پ��� ���Ƹ�(��� ��) Ȱ���� ü��, Ư�� ���α׷� ����� �������� �����ɷ��� ���̴� ����, ���� �����Ŀ� ����� �л�, �л��� �л����� ���ο��� ������ �λ縻�� �������� �ϴ� �� ��ȣ ���ؿ� ���, ������ ���� ��ȭ�� ������Ű�� �ִ�.

����õ �ݿ����� ������ ������ �߿��� �л����� �ɵ����̰� ��ü������ ������ �����ϴ� â�� ������ ����� ������ �� �ֵ��� ���� ���� �Ŀ��� �ູ�� ���� ��Ȱ�� �� �� �ֵ��� ������ ��� ������ �����ϴ� �� ������ �����ϰڴ١��� ���ߴ�.','���� ������� �ָ�޴� �ݿ���������ǹ� �߽ɱ����� ����ᡯ','..\uploadImages\20211015145303.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',97,'admin',to_date('21/10/15','RR/MM/DD'),'�츮 ���ΰ� ���� ���ʷ� ����ȭ�� ���� �һ���� �սǺ����� ������ ������ ��� �������� �һ���� ������ ���� �������ݡ��� ������ �򸰴�. �������� �ڷγ�19 �߻� ������ ���� �����ѻ���(GDP) �Ը�� ���� ȸ������ ��������, ����� ���� ������ �ִ�.

 4�� ��ȸ �Թ�����ó�� �������� ������ ��ʿ� �û����� ������ ����, �������� ������ 3�� ���ڷγ�19 ��� ������ ���� �������� ������ �������� ������ �� ��������� �һ���ΰ� �߼ұ�� � ���� ��ü���� ���� ����� �����ߴ�. �̸� ���� ���� �ѵ� �ȿ��� ���� ����� ��� ���� ����� ���� �Ǵ� 80%�� �����ϰ� �ִ�. ���� �Ѵ޸� �ѽ������� ��� ��ȹ�̾�����, �ڷγ�19 ���ȭ�� ������� ���İ��� ������ �����ϰ� �ִ�.
�������� �߾����ο� ������ġ�ⱸ�� 70������(�� 9��6õ���)��, 260�� �������� ���� ������ȸ�� 4������(�� 5000���)�� ���� �����ߴ�. �̸� �̿��� ������ 3��4������ ��� �뵿�� 10�� ���� �� ���� 100������(�� 13��7õ����) ���� ����� �һ���� ���� ������� ���ձ����� ���� ���� ���Ҿ��� �� 1500����(206����) �ѵ��� ���� �����ߴ�. ���� 7������ ���ձ��� ����� �ƴϴ��� ������ 50% ������ ���̶�� �����ߴ�. �� 10������ ���� ����� ����� ������ �����ϰ� ��� �뵿�� 50�� ���� ������� ���� ������ Ȯ���ߴ�. �� ���� ������ �����ϸ鼭, ���μ��Ϳ� ������ �һ���ο� ���� ���� �ݾ��� ������ �� �ִ�.
�̰��� ������ �������� ����� ������ �ڷγ� ������ ���� ������ ȸ���ϴµ� �⿩�ߴ�. �������°��߱ⱸ(OECD)�� �ֱ� ��ǥ�� ���߰������������� ����, �������� 2019�� 4�б⿡ ���� �����ѻ��� �Ը�� -3.2%����, ����� ���� 1.8% �þ���. �ݸ� �ѱ��� ���� �Ⱓ �����ѻ����� 1.4% ���������� ����� ���� 0.1% �پ���.
����ȣ ��������º������� ��å�������� ���ڿ����� ������ ���� �ѱ����� �̵��� ���� �����ϴ� ���� ���� ��ȸ�������� �����ϴµ� ū ������ �Ѵ١��� ���һ���� �սǺ��� ������ ���а� ���ϰ� ������ó�� �ڷγ� ��Ȳ�� ���� ���������� ������ �ʿ䰡 �ִ١��� ���ߴ�.','�ڷγ����� ����� �� ȸ���������� �������ݡ� ����','..\uploadImages\20211015145413.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',100,'admin',to_date('21/10/15','RR/MM/DD'),'���ΰ� �ų� ��õ����� ���� û�� ���ڸ� ������� ������ ������� ������ �ص��� ������ ��Ÿ����.

����� �����ϴ��� 60%�� 6���� �ȿ� ���� �׸��״�.
29�� ������ �������� ��ȸ�ǿ��� ���������ο� ���뵿�ο��� ������� �ڷῡ ������ ''�����ֵ��� û�����ڸ� ���'' �������� 6���� �� ������� ������ 46.5%����.

������ ���� �̻��� ��� ���� �� 6������ �������� ���ڸ��� ������ ���� ���̴�. ����� ������ �����ڵ� 6���� �̻� �ٹ��� ���� 40.5%�� ���ƴ�.

�����ֵ��� û�����ڸ� ����� ���ΰ� û�� ����� �ؼҿ� ���� ������ �����ϱ� ���� 2018�� ������ ����̴�. ���ر��� 7���� �̻��� û�� ���ڸ��� ����ڴٸ� �ų� ������ 2000��� �̻� �鿴��.

���ش� 2��6288���� �����߰�, 2�� �߰��ο� 3000���� �����ϰ� �ִ�.

�����ֵ��� û�����ڸ� ����� �������� ������, �ΰ���� ������, â�����ڻ��°� ���������� ������.

�������������� ����� û�⿡�� ������� ���ڸ��� �������ְ� 2�� ���� �ΰǺ� 2400���� �����Ѵ�. �ΰ������������ û����� ���� �ִ� ������ 1�Ⱓ �����ϵ��� �� �� �ΰ� ����� �������ش�.

â���ڱ� 1500������ �����ϴ� â�����ڻ��°� ������ ����� â������ 2018�� 85.9%���� ������ 76.3%�� �پ���.

â������ 22%�� â�� ������ ������ 1�� �ȿ� ����ߴ�. â�� �� ������ 1�� �̻� ����� ������� 36.8%����.

���� û�����ڸ� ����� ������ ���� ���ݱ��� �߻��� �������� ��ʴ� 23���̾���. û�� �ΰǺ�� ������ �������� ������� �Ϻ� �ǵ����ްų�, û���� ������ �� �̸� �Ű����� �ʰ� �������� ì�� ��쵵 �־���.

������ ������� ���� ��Ⱥ� �����ڴ� "��Ⱥ� ������ǥ�� ���� �ý��ۿ� �ݿ��Ǵ� (�����) ��ġ���� �ٸ���"�� "������� ���ο����� �� ���� ������ �����ϰ� �ִ�"�� �����ߴ�.

�׷��鼭 "�ΰ������������ ��� ������ ������ �� �б��� ���ư��ų� â���ϴ� ��쵵 �ִµ� ���ο����� �̸� (������� ����) ���������������� �ѵ� ��� ���Ѵ�"�� "6���� �ȿ� �ٸ� ������� ������ ��쵵 �ݿ��� �� �ȴ�"�� ���ߴ�.

���δ� ��� ���� 6���� �� ���������������� �ΰ���������� ��� ������� �Բ� ���Ѵ�.
�ݸ� ��Ⱥδ� ��� ���� ���� �������������� ����� ������ ��ȯ��, �ΰ������������ ����������� ���� ������ǥ�� Ȱ���ϰ� �ִ�.

���������������� ������ ��ȯ���� 2018�� 69%���� ������ 62.9%�� �����ߴ�. �ΰ���������� ����� ����������� ���� �Ⱓ 42.5%���� 64.4%�� �þ���.

������ �ǿ��� "������ ���δ� �������ڸ��� �ΰ����ڸ��� �̾����� �ٸ������� �� �� �ִٸ鼭 ������ ������ ���ڸ��� ���������� ������ �ܱ⡤�������ڸ��� �ӹ����ִ�"�� "��å ���и� �����ϰ� ö���� ���κм��� ���� �������� ���ڸ������ ü�������� �ǽ��ؾ��Ѵ�"�� �����ߴ�.','[�ܵ�] ��2000�� ���� ���� ���ڸ� ���, ������ ���ݵ� ��� ����','..\uploadImages\20211015150102.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',101,'admin',to_date('21/10/15','RR/MM/DD'),'4���� ������ �����ϰ� ����� ���� �������п� �ٽ� ���� �̸��� ''����'' ������ �ظ��� �ð� �ֽ��ϴ�.

�����ε� �������� ��� ������� �Ϲݴ븦 �ξ� �����µ���.

������ ���ص� ������� ��Ը� �̴޻��¸� �����ϰ� �ֽ��ϴ�.

���� ���ڰ� �����մϴ�.

[����Ʈ]

��� ���忡�� ��� ��ǰ�� ������ ������ Ȯ���� �� ���� ��ǻ�� ���α׷��� �л����� ������ �ֽ��ϴ�.

����� �������� �� �������� ��ó�� �ǹ� ������ ������ �̼��ϸ� ���л��� ��� ��ȸ�� ����ϴ�.

[���μ�/�泲������ 2�г� : "���� ������ �ϱ� ���� ����ϱ� ���� �ڰ��� �غ� ����ϰ� �ִµ� �б����� �ڰ��� �غ���� ���� �����ϰ� �����ؼ���."]

Ư�� �ֱٿ��� �ݵ�ü ���䰡 ���������� �þ� ���� ���� �缺�� ���� �ݵ�ü�а��� �ż��ƽ��ϴ�.

���� �η��� ������ ��Ȳ�̶� ���а� �Բ� ����� ����Ǵ� ���Դϴ�.

[���ؿ�/�泲������ �������´��� : "�Ϲݴ� �л����� �ݵ�ü ���� ������ ������ ������ �ְ�, ������ �л����� �ݵ�ü�� ����� ��� �����������ϴ� ������, �� ���������� ���� �ݵ�ü ��� ���� ������� ���� �л����� �����ؼ���."]

�������� ��� ������� �ظ��� ���ݾ� �þ� 70%�븦 �����ϰ� �ֽ��ϴ�.

���� �Ⱓ 4���� �Ϲݴ� ������� �ξ� ������ �����Դϴ�.

��������� ���� ��������� �ұ��ϰ�, �з��α� ���ҷ� ���� ���Ĵ� 4�������� �����뿡 �� ū ����� �ְ� �ֽ��ϴ�.

���������� ������ ���Ի� ���� �Ը�� 4������ 3���� 1 ����, ������ ���� ������� ��ü ���Ի� 3���� �� ��� ���� �̻��� �����뿡�� ���Խ��ϴ�.

������� ������, 4������ ���� �̵��� ���� 4�б�° �̾����� �ڷγ�19 ���ȭ�� ������ �� ������ ���Դϴ�.

[������/�ѱ��������б�������ȸ/�������� : "���������� �ǽ������� 70% �̻��̰� ���� ����ǽ��� �ʼ��� �� �־��. �ڷγ� ������ ����ǽ��� �� ������ ��Ȳ���� (������� ����)."]

�ֱ� ���ø������� �λ����� 8�� �����밡 ���� �ο��� 10% �̻� ���̸� �Ȱ����� ���� ������, �����ؿ� �̾� ���ص� �̴� ���¸� ���ϱ�� ����� ���Դϴ�.','���� ��������� �ܸ顦������ ����� ����','..\uploadImages\20211015150205.jpg',4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',102,'admin',to_date('21/10/15','RR/MM/DD'),'''��Ÿ����(Metaverse)''�� ���� ���Ի�� ä�� �������� �뼼�� �ڸ� ��� �ִ�. ���󼼰迡�� �ֹ��� �ǻ������ �����ϴٴ� ���� �����̴�. �Ϻ� ������ ��Ÿ������ Ȱ���� ä�� ����ȸ�� �����ϴ� ���� ���� ���Ի�� ��ü�������� ��ü�ϱ� �����ߴ�.

4�� ���ϰ����� ���� 10�� �׷��� ������� ������ ��� ��ټ� �׷��� ��Ÿ������ ���� ������ ���� â���� Ȱ���ϰ� �ִ�.

�Ｚ�׷��� "�� �Ϲݱ� 3�� ���� ä�뿡�� MZ����(�з��Ͼ�Z����) �����ڵ�� ���������� �����ϱ� ���� ��Ÿ���� �÷����� Ȱ���� �ϴ��� ��������� �ǽ��ߴ�"�� ���ߴ�. �Ｚ���ڰ� ��Ÿ���� �÷����� Ȱ���� ��� �����ڵ�� �����ϴ� ���� �̹��� ó���̴�. ����غ������ ������ �Ｚ���� ä�� ��α׸� ���� ��û�� �� ��Ÿ������ ������ ���� �ִ� ����ο� ���� �ϴ��� ��������� �ް� ����κ� ���� �Ұ� ���� ��û�� �� �־���.

�����ڵ��� �����ڴ� "���� ȯ�濡�� �����ڿ��� ä�� ������ �����ϱ� ���� ��Ʃ�� ä��, ��ȸ���������(SNS)�� �ƴ϶� ��Ÿ���� �÷����� Ȱ���ϰ� �ִ�"�� "������ �������� �ι����� ��Ÿ������ ä�� ����ȸ�� �ϴ� �� ������ �������� ��Ÿ������ �̿��ϰ� �ִ�"�� �����ߴ�.



SK�׷� ���� "�ڷγ�19 �� ���� ȯ�濡���� ȿ������ �������� ���� �� �ִ� �پ��� ������ Ȱ���ϰ� �ִ�"�� "�������ʱ� �������� �Ϻ� �迭����� �ΰ�����(AI)�� Ȱ���ϴ� ���� ��Ÿ������ ä�� ����ȸ�� �׷� ���Ի�� ������ ���� Ȱ���ϰ� �ִ�"�� ���ߴ�.

LG�׷��� "�¶��� ����������� �ǽð�, �ֹ��� ������ ȸ��� ������ ���̴� ���� ������ ������ Ȱ���� �̷����� ������ �������� ���� ������ �Ǵ��ϰ� �ִ�"�� ���� �򰡸� �����⵵ �ߴ�. �̿� ���� ��ũ��Ʈ �����ڴ� "�����Ӹ� �ƴ϶� �߼ұ���� ������ 814���縦 ������� ���������� ��� ���� ä�� �ַ�� ������ ����ϴ� ����� 35%�� �Ѿ���"�� "��Ÿ������ Ȱ���� ä�� ����ȸ�� ������ ������ �ִٴ� ����� 26.7%�� ���ߴ�"�� ���ߴ�.','"�츮 ȸ�� �� ���� �;��?"��"�系 ������ ��������" , ��Ÿ������ �������ȸ�����Ի�� ��������','..\uploadImages\20211015151704.jpg',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',105,'admin',to_date('21/10/16','RR/MM/DD'),'��� �������� ���������� ���ΰ� ������ ���븦 ������ ġ���ǻ��. ���η��� �� ���� �������� ���￡���� �ǻ� ��Ȱ�� ����� �ʴ�. � �� �߾��� ã�� �� �ٴ尡 ������ ������ ���� �׳�� ��ģ�迡 �װ��� ġ���� �����ϰ�, �����Ѵ�. ������ �������� ���� �ν��� �ѷ��� ���� ���� ���� ������� �ϰŸ��� ���� ��ȫ���塯���� �Ҹ����� �˰� ���� ����� ����� ����Ʈ��. ������ ���û�Ȱ�� ������ ��������� �ð� ���׸� ã�� �� û���� �θǽ��� �� �ô� û����� �޲ٴ� ���ο� �̻����� �ݿ��� ���ϴ�.

������ �ͳ󡤱��� ��� ��� 30�� �������� ���� ��� 12.7% �þ 1362������ ���� �ִ븦 ����ߴ�. 30~40�� ���� ���� �ͳ� ������ �ֱ� �� �Ⱓ ������ �����ߴ�. �̵��� ���̿����� ���� ���� ������ �پ��ϴ�. ��â�������� �̾��� ���Ѱ����� ���忡 ������ ��ӵǰ�, �׸����� ����� �ϴ��� �������. ġ�ڴ� ������ ������ û����� �ڲٸ� ���� ������ �о��.

�ڷγ�19 Ȯ������ ���� ������ ��Ȱ���� ������� �����̳� �����ߴ� ���ÿ����� ��Ȱ�� ���� ������ ���̴�. �ڷγ� ��翡 ��ģ û����� ���� ���� �ް� Ʈ����� ����Ĳ��(�ð�+��Ĳ��)������. ��� �� ���ΰ�ó�� ���� ��� ���� �װ��� ���� �ͳ󡤱����� �޲ٱ⵵ �Ѵ�.

û��ͳ��� �ܼ��� ���� ��ΰ� �Ǵ� �Ϳ��� ���ݳ��X���� ��� �о� ��ŸƮ�� ������ ��ȭ�ϰ� �ִ�. ������ ������� ���̸� �Ĵ� ��̳� �̼� ���� �� ���ϴ� ���� �ϴ� �ݳ��X�� �������(�ϰ� ���� ����)���� �߽��ϴ� û�� ���뿡�� �ŷ����� ����̴�. ���� ������ �ǻ� �����Ե�, ȣ�� ������ �޲ٴ� ���� �丮�絵 ���ܴ� �ƴϴ�. ������ â���� ������ �̿��ϴ� ��쵵 �幰�� �ʴ�. ���ؼ�(38) ��õ���������� ��ǥ�� ���� 8000������ �Ǽ��� �������� �׸��ΰ� �����غ��� ����Ʈ���� ��ϰ� �ִ�. �״� ���ΰ����ɰ� �����͸� Ȱ���ϴ� ����Ʈ���� ��� �о� �������� ÷�� �оߡ���� ���ߴ�. �̴븦 ���� �����̳ʰ� �������� ���ư� �¶������͸� â���ϱ⵵ �Ѵ�.','30�� �ͳ� 13% ����, â���ϵ� ÷�ܿ��� ����','..\uploadImages\20211016011842.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',106,'admin',to_date('21/10/16','RR/MM/DD'),'14��(�����ð�) �Ϻ� ''��ȥ��������'' �Ź��� �Ϻ��� ����ꡤ���ȭ�� ��ȭ�Ǹ鼭 �ֱ� ������ ������ ���� �ǻ簡 �ִ� ��� ����� ���� Ȱ���ϴ� ����� �����ϴ� �߼���� ������.

����, �Ϻ� ������ǰ �Ǹ� ������ �������� �̴޺��� 80���̴� ������ �ƿ� ���ָ鼭 �ű�ä�뿡���� 80�� �̻��� ������ ä���ϱ�� �ߴ�. ���̰� ������ �ǰ��� ������ ���ٸ� ���ϰ� ���� ������ �� �� �ִٴ� ���̴�.

�Ϻ� �� ����� ����� ���� ������� ������ �������� �ռ� ������ 7�� 65�� ���� �� 80����� 1�� ������ ����� �����ϴ� ������� ������ �÷ȴ�. ������ ���忡�� 80���� �Ѿ ��� ���ϰ� �ʹٴ� �䱸�� �޾Ƶ��̸鼭 �̹� ������ ���� ���̴�.

�Ϻ� ����� ���� ���� �� ��� �뵿�ڸ� ���� ����ϴ� ���� ������ ��µ� �� �� �ߴ�. �Ϻ� ���δ� ���� 2013�� �뵿�ڰ� ����ϸ� 65����� ����� �ϵ��� ���� �����ѵ� �̾� ���� 4�� ����� �뵿���� ��� ��ȸ�� 70����� �����ϵ��� ����� ���� �ǹ�ȭ�� ������ڰ����������� ������ �� �ִ�.

�̿� ���� ������ 6�� ���� 70�� �̻� ����ڵ� ���� �� �ֵ��� ������ �غ��ϰ� �ִ� �Ϻ� ����� 31.5%�� ����ƴ�. �̴� ���縦 ������ 2007�� �̷� ���� ���� ��ġ�� ����� ������ �� �������� ���̶�� �����̴�.

�Ϻ��� �İ����� ���� ���� ���Ǵ� �ѱ����� �û��ϴ� �ٰ� ũ��. �ѱ��� 15~20���� ������ �ΰ� �Ϻ��� �α������� ���󰡰� �ֱ� �����̴�. �̿� ���� ���������� ���� �������� ����� ���ο� ���縦 Ȱ���� ��ȸ�� Ȯ������ �� �ְ�����, �ѱ��� ���ĺ��� �ý����� ����ϸ� ��ƴٴ� �ǰ��̴�.

�̿� ������ ������ ������б� �뵿���������� �μ����� "���� ����ó�� ��ȸ������ �Ϻ���� ���� ��Ȳ���� �츮������ �������� ������ ��ȸ�� ������ ����� �����Ѵ�"�� "���� �������� ������� ������ ��뱸���� �����ϰ� ���� �� �ְ�����, �뵿�ڵ鿡�Դ� ��� �Ҿ����� ���ڸ��� ���� ��Ʈ������ �ۿ��� ���ɼ��� ũ��"�� ���ߴ�. ','''80�� ���Ե� ȯ��'' ����, ������ ���� �������ѱ���?','..\uploadImages\20211016012004.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',108,'admin',to_date('21/10/16','RR/MM/DD'),'���¿� SK�׷� ȸ��� ��ΰ� �����Ѹ��� ������ ȸ���� ������ ���, �� ȸ���� û�� ��빮�� Ÿ��å���� � ���ڸ� â�� ����� �������� ������ �򸰴�. ���� ��� �� ȸ���� ��������� ���뱳ü�� Ȱ���� �̷����� �ִ� ���� ������ MZ����(1980��� ��~2000��� �� ���) ���� Ȯ���� �ѷ��� ����̰� �ִ�.

�ռ� �� ȸ���� �����踦 ��ǥ�ϴ� ���ѻ��ȸ�Ǽ� ȸ�� �ڰ����� ��ΰ� �Ѹ��� ���� ����� ������ ���¿� ������ ư ���� �ִµ�, �̹� ȸ���� ���� �ΰ� ������ ���� ����ȭ�� ���̶�� ��밨�� Ŀ���� �ִ�.

15�� ���� SK�׷� � ������, ���¿� ȸ��� ��ΰ� �Ѹ��� ���� 25�� SK���̴н� ��õķ�۽����� ���� û�� ���ڸ� Ȯ�� ����� ������ �����̴�.

�� �Ѹ��� �ֱ� ������ �Բ� û�� ���ڸ��� ����� ���� ��û�����ON�� ������Ʈ�� �ǿ������� �����ϰ� �ִ�.

�ռ� �� �Ѹ��� ����� �Ｚ���� ��ȸ��� ������ 14�� ���� ������ ���Ｚ û�� ����Ʈ���� ��ī����(SSAFY)�� ����ķ�۽����� ����ȸ�� ���� û�� ���ڸ� â�� ����� �����ߴ�. �̳� �Ｚ�� ���ο� ��Ʈ�ʽ��� �ΰ� 3������ û�� ���ڸ� â�� ȿ���� ���� ��ȸ���� ��ȹ�� ��ǥ�ߴ�. �� �Ѹ��� ���� 21�Ͽ��� ������ LG�׷� ȸ��� ���� ���� LG���̾���ũ���� ȸ���� �����̴�. �̾� �̸��� ���� �� ���Ǽ� �������׷� ȸ����� ���� ������ �����ȴ�.

���¿� ȸ���� ���� 6�� �����踦 ��ǥ�ϴ� ���ѻ��ȸ�Ǽ� ȸ�� �ڰ����� ��ΰ� �Ѹ��� ���� ���� ���ȿ� ���� ������ �� �ִ�. ��� ����ȸ���� ����5��ü���� �� �Ѹ����� ���ߴ����ر��ó���� ���� ��ź���߸� ���࿡ ���� ���� ���� ����ʿ��� ���� ���� ���� �����ߴ�.

�� ȸ���� ����ȸ���� ��������� ��⸦ ���� ���ġ����ࡤ��ȭ �� ���������� ���� ���� � ���̰� ���� �Ǿ��� ��ǥ�� ������ �����ϴ١��� �������� û��Ǿ����� ���� ����ϴ� ���忡�� ������ �����١��� ���ߴ�. �׷��鼭 �״� ���ڷγ��� ��ó ���� ���ο��� ���ο� ����� �ְ� �������� ������ �ν�Ʈ��ų �� �ִ� ����� ���������� �Ѵ١��� �����ο� �ΰ��� �Բ� ������ ���� ������(Win-Win)���� ��Ʈ�ʽ��� ����Ѵ١��� ������.','���¿� SK ȸ���� ��ΰ� �Ѹ����� ���� ��MZ���� ������� �ذ�å��?','..\uploadImages\20211016012221.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',110,'admin',to_date('21/10/16','RR/MM/DD'),'���� ������ �� �����忡�� 10�� 6�� ����ǽ��� �ϴ� Ư��ȭ�� 3�г� ȫ���� ���� �������ϴ�. �����ذ� � ������, ȫ ���� 7�� ��Ʈ �ٴڿ� ���� ������ ���� �����ϴ� �����۾� �� ����߽��ϴ�. ȫ ���� ����۾��� �ϴٰ� ��� �����ϱ� ���� ��� ���� ���� �ö�԰�, ������ �������� �յ��� ���� ���ֿ��� �ǳ޽��ϴ�. �׷��� ���ʱ��� ���� ����۾��� �����ȴ� ȫ ���� ���� ����ɰ� ����� ����Ʈ�� ���� ���� ��ü�ؾ� �ϴ� ���������� �� ä ���� �ִ� 12kg ����Ʈ ���Է� ���� �� �ӿ��� ������ ���� ������ �˷������ϴ�.

�̹� ���� ������ ���� ���� ��ȭ, ������ ������ħ �� �ٷα��ع���û�ҳ⺸ȣ�� ���� � ���� ''����''��� ������ �ް� �ֽ��ϴ�. �����δ� ����ǽ� ��� ���� ���� ���� ��ȭ�߰�, �̼����ڴ� ��������� ����� ���� �� ������, ���ִ� ���� �ڰ����� ���� ȫ ������ ��������� ���׽��ϴ�. �ǽ���ȹ���� ������ ȫ ���� ����� �ƴ� ������ �ȳ� ������ �þҾ�� �մϴ�.

2016�� ���ǿ� ��ũ������ ���� �� ����� �� ��, 2017�� ���� �ݼ��� �������� ���ϴ� ���� 10��, ���� �� ���� �������忡�� ��迡 ���� ���� ����� �̹�ȣ �� ��� Ư��ȭ�� �ǽ����̰ų� �ǽ� ���� ��ü�� ���� �뵿�ڿ����ϴ�. ��ȸ ������ �ӿ� Ư��ȭ��� ������ �� �ٽ� �߻��� ���Դϴ�.

���־�нùο����� ����� ���� Ư��ȭ��� �ǽ��� ��� �ҽ��� ����� ���ϰ� �ִ���, ��� ������ ���� ������ �ϰ� �ִ��� ����ý��ϴ�.

�Ű桤�Ѱ桤SBS��ä��A��MBN ���ú��� ''0��''

�ξ���� 2017�� �������� ����ǽ��� �� �̹�ȣ ���� ������� ��� ����ͺ��� <����ǽ��� ������� ''Ư��ȭ�� �����''�� �����ϴ� ������ ����>(2017�� 11�� 24��)�� ���� ��к����� �м��� �� �ֽ��ϴ�. ����Ź�, �����Ϻ�, �����Ϻ�, �߾��Ϻ�, �Ѱܷ�, �ѱ��Ϻ� 6�� �ϰ��� �� ''���ߵ�''�� ���� ������ �� �ǵ� ���� �ʾҰ�, Ư��ȭ��� �뵿ȯ���� �ܸ��� ä Ư��ȭ�� ������� �������ٴ� ������ �����ڷḸ �Ǿ����ϴ�.','���� Ư��ȭ��� ��� ����, �ܸ��ϰų� �ұ����̰ų�','..\uploadImages\20211016012418.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',111,'admin',to_date('21/10/16','RR/MM/DD'),'���ΰ� 4�ܰ� ���� �������� �ο��� �ִ� 8����� �ø��� ������ ���ο� �Ÿ��α� �����Ģ�� ��ǥ�߽��ϴ�. ������ ''�����ڷγ�'' ��ȯ �յΰ� ������ �Ÿ��α� ������ �� �ǵ���. �濪ü�� ��ȭ�� ����� ��밨�� �����ϴ�. ������ ������ �����ϴ�.

[��系��]
���� �ֺ��� ��ȸ�� �Ÿ��α� ��ħ�� �Ϻ� ��ȭ�˴ϴ�.

���δ� ����(15��) �̴� 31�ϱ��� ������ 4�ܰ�, ������� 3�ܰ��� ���� ��ȸ�� �Ÿ��α⸦ �����ϴ� ��� �Ϻ� ��ȭ�� �濪 ��Ģ�� �����߽��ϴ�.

����, 4�ܰ� ���� ���� �ִ� 6�α����� �����ߴ� ���� ������ �������� 4���� ������ 8������ �þ�ϴ�.

���͵�ī��, ��ȭ���� �����ð��� ���������� ����ǰ�, �������� ������ 3�ܰ� ������ ��� �Ĵ�� ī���� ������ �������� ���������ϴ�.

���δ� �̹� ��ȸ�� �Ÿ��α� �������� �ΰ� �ܰ��� �ϻ�ȸ��, �̸��� ''�����ڷγ�''�ô븦 ���� ¡�˴ٸ� �����̶�� �����߽��ϴ�.

[�̱��� / �߾��糭������å���� ��1������: �ܰ��� �ϻ�ȸ������ ��ȯ�ϱ� ���ؼ� ¡�˴ٸ����� �Ⱓ�̶�� ���� �켱 ����߽��ϴ�. ���� 2�ְ��� ���������� �������� Ȯ��ǰ�, �濪��Ȳ�� ���������� ������ �� �ִٸ� 11�������� �������� ���ο� �濪ü�� ��ȯ�� �������� ���Դϴ�. ]

�� ���� �濪ü���� ��ȯ �������� ����ǿ� ������� ������ �ְ� �ֽ��ϴ�.

�������� ��뿡�� ��ȭ�� ����� ������ϴ�.

�ڷγ� ���ķ� �ٴ��� ����� ���� �� �������� ����� ���� ���� ���� ��� 1.9% �����߽��ϴ�.

[��μ� / �߼Һ�ó��������� �̷�������������: �̹� ��ȸ�� �Ÿ��α� ��ȭ�� �ڷγ�19 ���� �ϻ������� ȸ���� ���� �߿��� ������̶�� �� �� �ֽ��ϴ�. ���� �һ������ �濵ȯ���̳� ��뿡�� �������� ������ ������ �ǰ��. ������ ��а� �濪�� ������ ��ȭ��� �������� �� ��ü���� ����� ��ӵ� �ʿ䰡 �ֽ��ϴ�.]

�����ڷγ����� �濪 ü�� ��ȭ�� ������� ���� ȯ���� ���� ��뿡�� ������ ������ �� �� ���� �� ���߰� �ָ�ǰ� �ֽ��ϴ�.','''���� �ڷγ�'' ��밨�衦����� ���ڸ��� ''���''','..\uploadImages\20211016012520.png',1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',113,'admin',to_date('21/10/16','RR/MM/DD'),'���ΰ� 4���� ���� ''���� ��Ȯ�Ǽ�''�� ����ϸ� ��� ȸ�� ��ȭ�� ���� ������� �����ƴ�. �� ���� ���޸� �ر� �� ���÷��̼� �й��� Ŀ���� �̴� �Һ��ڹ����� 3%��� ġ���� �� �ִٴ� ������ ���Դ�.

Ư�� �ֱ� �̱����߱� �� �ֿ䱹 �������� ������ ������ ������ ��� �ѱ� ������ ���� 4%�� ������ �� �� �������� ���� ����� Ŀ���� �ִ�.

��ȹ�����δ� 15�� �߰��� ''10�� �ֱ� ��������(�׸���)''�� ���� "�ֱ� �ѱ� ������ ������ ���� ȣ������ �̾����� ��� ����� ū ������ ���������� ��� ���񽺾��� ��Ȯ�Ǽ��� ���ӵǰ� �ִ�"�� �����ߴ�.

����δ� "���� ���� ȸ������ �̾����� ������ ������ ���� ��¿� ���� ���÷��̼� ����� ���޸� ���� ������ ȸ�� �ӵ��� ��ȭ�� ���ɼ��� ����ȴ�"�� �м��ߴ�.

����δ� �ڷγ�19 4�� Ȯ���� ����ȭ�� 7�� �׸��Ͽ��� ''���� ��Ȯ�Ǽ�''�� ����� ���� 4���� ���� ��Ȯ�Ǽ��̶�� ǥ���� ���.

�ٸ� �̹����� ���� ������ ��Ȯ�Ǽ� ��� ��� ���񽺾����� ����� �����ߴ�. �迵�� ����� �����м������� "�ڷγ�19 ������ ��Ƶ� ��� ��� ��Ȯ�Ǽ��� ���� Ŀ���� �ִ� ������ ���δ�"�� ���ߴ�.

������ ���̴� ��� ��ǥ�� ��ȣ�ϴ�. 9�� ���� ����ڴ� 2768��3000������ ���� ���� ��� 67��1000�� �þ���. 7��6���� ���� ���� ū �������̴�. �̾�� ����� 1������ "5��4000���� ��� ���忡 �߰��� �����ϸ� �ڷγ�19 ���� ���� ������ ������ 2�� ����� ���� ����"�� ���ߴ�. 9�� ����׵� ���� ���� ��� 16.7% �þ 558��3000���޷��� ����ߴ�.

������ ���δ� �ֱ� �޺��� ��� ������ �� ���� ��� ȸ������ ������ ������ ���� ����ϰ� �ִ�. �� ���� �ڷγ�19 ��Ȯ��� �߱� ���³����� ���� ���޸� ����, ���� ����� ���÷��̼� �з��� Ű��� �ֱ� �����̴�. ���û�� ������ 9�� �Һ��ڹ����� �������� �� �޵ ���� ���� ��� 2.5% �ö���.','�̹��� �Һ�����?�������ڷγ��� �����ߴ� ��å ������','..\uploadImages\20211016012643.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',114,'admin',to_date('21/10/16','RR/MM/DD'),'[������Ʈ] ����ȫ ���� = ���� �ڷγ�19 �ô뿡�� ū ���� ���� ����̸� �س� ����� �ִ�. �ٷ� ���ӻ���̴�.

�� ���Ӿ��� �����ڴ� ������ �÷��� ����� ���漺�� ���ɼ��� �ִ١��� ������ִ� ���� �ϳ��� ����� ��������(IP)�� �����ϸ� �� �ҽ� ��Ƽ ��� �����ϴ�. ��󸶡��������Ҽ� ���� �ٸ� �帣 �������� ����ǰ� �پ��� ������� �ָ��ϴ� �������� �ٷ� �����̴١��� ���ߴ�.

�ƿ﷯ �����ӻ���� �Ѱ� ����� 0���̴�. �������� ����ڰ� �ø� ����� �ΰǺ� ���������� ���ӻ���� ���񽺿� ����ڰ� 10���� ���� 1�� ���� �� �ҿ�Ǵ� ��� ���̰� ���١��� ���ٿ���.

�����̳� ������ �۽����� ���� �����ڵ��� �ڱ� ������ �ø��� ���� ������ Ÿ�� �ִ�.

���Ӱ����ڵ��� ������ ���롯�� �� �� �÷����� �þ�� �־� ���ӻ�� ��ü�� �پ��� ��ȸ�� ���� �� �ִٴ� ���� �������������� �ǰ��̴�.
�� �ٸ� ���Ӿ��� �����ڴ� ���ֿ� ���ӻ���� ���۵��� ���̾� ������ �����̴١��� ��ũ�������� ���� ��Ʃ����� ����¡������ RTS���� ��ĳ�� ũ����Ʈ���� �۷ι� ������ ����ϰ� ���帲�� ����ؼ� �α� IP�� SLG�� �����ϴ� �õ��� �����س����١��� �����ߴ�.

�̷��� ��Ȳ �ӿ� ���Ӱ����������п��� ������Ӿ�ī���� �λ�ķ�۽� ���Ӱ����� ������ ���ӿ� ���� �⺻���� �н����� ��ȭ�н�, ����� ���� ��Ʈ������ �غ� �� ���κ��� ���� ����� ���� �����ϰ� �ִ�.

���Ӱ����� �������� ���ӱ�ȹ, �������α׷���, ���ӿ�ȭ, ����3D�׷��� �� ���Ӱ����� ������ ���������� �����ϰ� ������ ��κ��� ������ ����� ����ǰ� �ִ�. ����, �̸�Ƽ�� ������ �ֱ� ���� ������ �����޾� ��ϰ� �ִٰ� �����ڴ� ������. �λ�����п� ������Ӿ�ī���� �λ�ķ�۽� Ȩ���������� Ȯ���� �� �ִ�.','�÷��� ����� ���� ���Ӱ���, ������Ӿ�ī���� �λ�ķ�۽� ���Ӱ����� ����','..\uploadImages\20211016012725.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',117,'admin',to_date('21/10/16','RR/MM/DD'),'�ֱ� ��ȸ �������� �ڷῡ ������ �� �籹�� �����̹� ����� ����� ���� ������ ���� �ηµ��� ���� ������ �ִ� ������ ��Ÿ����.

Ư�� ���а� ������ �����̹���������� ������ ���� ���� ���бݱ��� �ָ鼭 �屳���� �淯������, ���� ���ڴٴ� �ο��� ���� 7%. ���� �������� �ʿ��� ���̹��Ⱥ� �о� ���� Ȯ���� ������ �����ٴ� �����̴�.

15�� ��ȸ ��������ȸ �Ҽ� ������ �������� �ǿ��� ����ηκ��� ������� �ڷῡ ������, �ֱ� 5�Ⱓ ���̹�������� ��⺹�� ���� ����� 100�� ��� ��⸦ ��û�� �屳�� 7�� �Ұ��ߴ�.

����δ� ���̹��Ⱥ��� Ưȭ�� �η��� Ȯ���ϰ��� 2012�� ������ �Բ� ��ŷ�� ���������� ���� �����ϴ� �����̹������а����� ����� ��� ���� �ִ�. �ų� 30���� �����ϴµ�, 4�Ⱓ ���� ���б��� �����ϸ� �л����� ���� �� ���̹��������(�屳)���� �Ӱ��� 7�� ���� �ǹ� �����Ѵ�.

���� ��⺹�� ���� �ڰ��� 2016~2019�� �Ӱ��� ���̹�������� 1~4����� �־������� ���ݱ��� �����ڴ� 1�� 1��, 2�� 1��, 3�� 4��, 4�� 1�� ���ƴ�. ������ 93���� �ǹ������� ��ġ�� �ΰ���� ��� ���� ���� ���� ���� �����̴�.

������ ������ �����ϴ� ���� �о��� ���̹� ���� �߼��� ������ �� �̵��� �������� ������ ���� ����� �� ���ٴ� ���̴�. �ֱ� 5�Ⱓ ���� ���� �� ��ŷ �õ��� ����� 7,800�� �ǿ� �̸���. 2017�� 3,986�ǿ��� 2020�� 1��2,696������ �ظ��� �����ϰ� �ִ�.

������ �ǿ��� �����Ѱ� ���ص� �츮 ���� ������ ���̹��� ����� �ξ��� �����ϴ�. ������ ���̹��� �����η��� 6,800�� ��(2020�� ����鼭) �Ը�� �˷��� �ְ� ����� ���̹�������ɺ� ������ 1,000�� ���� ���� ����ϸ� 7�質 ���١���, ���̸����� ���� �̻�(53%)�� ���ʱޡ� �����̾ ���� ������ ���ԵǱ⿡�� �ɷ��� ���� ��������. ���� �ֽ� �缺�� �Ҽ����� �η¸�ŭ�� ���ļ� �ȵȴ١���  �����ߴ�.
','�� ��ŷ �õ� ����... "���̹��� �����η� 93%�� ������"','..\uploadImages\20211016013015.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',120,'admin',to_date('21/10/16','RR/MM/DD'),'�ѱ������ɷ¿�����(���� �����)�� 10�� 15��(��) ��KRIVET Issue Brief�� ��219ȣ ������ ���п��� ���� ������ ������ ���� �ܱ��� ���л��� �νġ��� �߰��ߴ�.

�ѱ������ɷ¿������� �ֿ� ��ǥ������ ������ ����.

���� �ܱ��� ���л� ��å ���� ���� �ѱ������ɷ¿��������� �ǽ��� �����п� �������� �ܱ��� ���л��� ���μ�ȣ Ž���� �����ڿ� Ȱ�� ��� ����(2020)���� ������ ��� �ܱ��� ���л� �������硯 ������ 650��(�������� ����� 426��, �ڻ����� ����� 224��)�� �м��ߴ�.

�м� ���, ������ ����� ���з� �ܱ��� ���л��� �츮���� ���п��� ���� ���� ���� ����, ��� �� ���� ���� �η� ���� ������� �ʴٰ� �ν��ϸ�(��� 2.51~2.90��/5�� ����), Ư�� ������ ���п� ��� ���л����Լ� �̷��� �ν��� �ε巯����.

���� ���п��� �����ڻ������� ���� ��ġ�� ���������� �ν��ϴ� ���̸�(��� 3�� �̻�/5�� ����), �������� ����ڿ� ���� �ڻ����� ����ڰ� ���� ��� ������ ���ؼ� �� ��ȣ���� �ν��� ������ �ִ�. �ݸ� ������ ���п� ��Ű� ������� ���п� ��� ���� �ν� ���̴� ���� ���� ������ ��Ÿ����.

�μ��� �ѱ������ɷ¿����� ���������� ���α� ���� �ô뿡 ���� �ִ� �ܱ��� ���� �ڿ��� �츮���� ���п��� ���������� ��ġ�ϱ� ���ؼ��� ���л����� ������ �䱸�� �ݿ��ϱ� ���� ��������� ����� �߿��ϴ١��� ��Ư�� �л����� ��Ȱ�� �뵿���� ���� �� ������ �����ϱ� ���� ���� ���� ���α׷� �� �η� Ȯ���� �ʿ��ϴ١��� ���ߴ�.

���� 1997�� ���� ������ ���� �Ʒ��� ����� �����̶�� ��ȸ�� �䱸�� �����ϱ� ���� ������ �ѱ������ɷ¿������� ������ �ϻ��Ȱ�� �ʿ��� ������ ��� �о߿� ���� ��å ������ ���α׷� ������ �����ϰ� �ִ�.','���� ��� �����ڻ� �ܱ��� ���л��� ���� ���п� ���� ���� ����','..\uploadImages\20211016013213.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',121,'admin',to_date('21/10/16','RR/MM/DD'),'��걳��û�� �ֱ� ����ǽ� �� ����� ���� ���� Ư��ȭ�� 3�г� �л��� ��� ���� ������� �л����� ����ǽ� � ��Ȳ�� ���������Ѵ�.

�ñ���û�� 18�Ϻ��� 30�ϱ��� �б��� ���ü���� ������������ ���δٰ� 15�� ������.

�б��� ������� ������ǽ� �� �������� �ǽ� ���� ������ǽ������ȸ ���� ���� ���ȸ���� ������� ���� ���� ��Ȳ ���� �����Ѵ�.

��� ���忡���� ����û ������, �빫��, �б� ����ڰ� �յ����� ǥ�����༭ �ؼ�, ������ ȯ��, �α�ħ�� ���� ���� ���� �����Ѵ�.

������������� Ư��ȭ��� ���̽��Ͱ� 11���� �л� 347���� ���ü 137������ ����ǽ� ���̴�. 2018����� ���� ������� ��꿡���� ����ǽ��� ������ش� �߻����� �ʾҴ�.

�������� ��� �ǵ����� �ҹ��� ���� �ǰ� �������� �ʴ� ����� ��� �л� ����ǽ��� �ߴ��ϰ� ������뵿������ ������ ���ù�(���������Ʒ������� ��)�� �����ϰ� ������ �����̴�.

�ñ���û�� ������� �л��鿡�� ������ ����ǽ� ȯ���� �����ϱ� ���� ����ǽ� ���ķ� �������˵� ��ȭ�ϰ� �ִ�. �б�����빫��, �б�, ����û �յ� ���� ���� �б� ���������, ��米�� ������ 2���� �����ϰ� �ִ�.

������� �л����� ����ǽ� �������� �޴� ����� �ﰢ������ ��ó�� �� �ֵ��� ����ǽ��� �ǽð� ���� ü�赵 ��ȭ�ߴ�.

�ñ���û�� ����ǽ� ���α׷� ��� �����ϰ� �ǽ� ���ǰ� ���ȯ���� ����� ��ü�� ����������� ������ ��� ������ �б��� �����ϰ� �ִ�.

������� ���� ���� �빫��, ����û, �б�����ڰ� ������ 1���� ���� ������ ������ �� ������� ���� ��������ü���� ������� ������ ������ ���� �� ��ݻ����� ���� ����� ����������� �����Ѵ�.

��������ü�� �����������ǰ��� ����뵿�� ���߼Һ�ó���û ������������ ���걤���� ���ڸ���� ����γ빫�� ��������� ������� �ⱳ��û ����ڷ� �����ߴ�. ���� �Ŵ� ��������ü�� ���� ��������� �����ϰ� �ִ�.','��걳��û, ������� �л� ����ǽ� ��������','..\uploadImages\20211016013248.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',122,'admin',to_date('21/10/16','RR/MM/DD'),'���ߴ� 15�� �������ڿ��߼Һ�ó�������ȸ �������翡�� �ѱ��������縦 ���� ���Ǹ� ��Ƴ´�. �� �������� ���嵿�� ��޵Ǹ鼭 ���� �� ������ ��������.

�������� ������ �ǿ��� �̳� �������ڿ��� ��������� ������� ���� ������ �������� ������1ȣ�� �������� ������� ������ ��Ű�� ���� ������ ���� ������ ������ ������ ����Ų ����� ��ǡ����̶�� ���ߴ�.

�׷��鼭 �����������μ� ���Ѿ� �� ���� ������ �����ϰ� ���������� ������ �����Ľ� �о���̱⿴�١��� ���� �߽ɿ��� ä��� �������� ������ �ִ�. ��� �����忡 �ִ� �����̴١��� ���ٿ���.

Ư�� �� �ǿ��� ������1ȣ�� �������� ���嵿����Ʈ�� ��Ҵ١��� ��ä ����, ���� �� ����� ���, ������ �Ѽ��� ������ �ֵ� ���嵿����Ʈ���� 3���� �ִ�. �� ����� ��Ұ� ���� �����̴١��� �����ߴ�.

�̿� ä ������ ������ �����ϴ� ������ ������ ��� ���� �ִ°������ ������ 1ȣ��� ���� ������������ �������� ���� �����Ҷ�� �ǰ��� �־���, ������ ���ۿ� �����϶�� ������ ���� ���µ� ��ǰ��踦 �ݴ�� ���ϰ� �ִ١��� �ݹ��ߴ�.

���ߴ� �� �������� ���ǰ������ ��ȸ ���������� �ΰ� �浹�ߴ�.

�������� �Ǹ�ȣ �ǿ��� �������� �غ��ϸ鼭 �ڷᰡ �����ϸ� ��� ������ ������ �� �ִ١��� �������� ��ǰ��谡 ���� ������ �����������ȸ�� �����ϸ� �Ǵ� ���̰� ���ǿ� �ǹ��� �ٰŸ� ���� �ڼ��� �ǰ�������μ� ���� �ʴ١��� �ߴ�.

�ݸ� ���Ҿ���ִ� ������ �ǿ��� �������� ���� ��������� ������ ������ �����ϸ� ������ ���� ���ϴ����� ����� �Ѵ١��� ���׷��� �̹� ������ ��å������ �ƴ϶� ����ģ ��ġ������ �ǰ� �ִ١��� �����ߴ�.

�̾� ������� �ƴ� ������ ���������� �����϶�� �ϸ� �Ǵ°������ �������� �޴� ����鿡�� �������̶�� ������ ��п� ������ ���� ��������� �����϶�� �ϴ� ���� ���� �ʴ١��� ���ߴ�.

���� ���� �� �ǿ��� �������� ���Ƿ� ���ӵ� �弮ȿ �� �������� ���� ��ʸ� ����ϸ� ���� ���� �������� ������� ����� ������ �����ߴ�.

�� �ǿ��� ���� �� ���� ��ǿ� ���õ� �������� ������ 4���� �� ���ӵƴµ� �̵��� �ٽ� ��������� ������ߴ١��� ���̷� �������谡 ����ȭ�Ǹ� �����̶� ������ ������ �� �ְڴ°������ ������.','������1ȣ������ ���� �������...����, �������� ����Ÿ','..\uploadImages\20211016013327.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',126,'admin',to_date('21/10/16','RR/MM/DD'),'�ȳ��ϼ���. ���� �� 44�� �����Դϴ�.

2009�� �� ���� ��� ��Ȱ�� �ϰ� �Ǿ� ���￪�� �ִ� ����δٽü����������͸� �˰� �Ǿ����ϴ�. ��, �����Ա��� �ִ� �ٽü��������������Ϳ� �����ο� �ִ� �����������������͸� �̿��Ͽ����ϴ�. �������� �αٿ� �ִ� ���������� �޻캸���ڸ����͵� �˰� �Ǿ� �ְ����Ϳ� �߰� ���ڸ��� �̿��Ͽ����ϴ�. 4���� ������������ �Լ� �������� �������� ���Ǽҿ��� ��缱�� ����ٰ˻翡�� ����� �ǽ� ������ ���԰�, ����ø����Ϻ����� 1���� �Կ��Ͽ� ġ���� �� ������ �������� ���� �������� ������ ����ϰ� �Ǿ����ϴ�. ��� ��ġ�ǰ� ��� �Ŀ���  �๰ ����� ��� ġ��� ����ؾ� �ȴٰ� �Ͽ� ���������� �ٽü��⼾�͸� �̿��ϸ鼭 �ٽü��⼾�� ���Ǵ�� �����а� ����� �ϴ� �������� ���� ���� �����ϰ� ������ ������ȴ��� ���ʻ�Ȱ������ ��û�� �غ��� �Ͽ� ��û�Ͽ����ϴ�. ���� ��û�ؼ� �Ϲ� �����ڰ� �� ��ÿ� ��Ȱ�� �ϸ� ������� ���� �ִ� ���� ������ �߽�����, �Կ��� �๰ ������ ���� �� 10���� ���� ġ��� ������� ��ġ�Ǿ����ϴ�. 

�� �� �������� ȸ�簡 ��Ź�ϴ� ������������ 1�� 6������ �����߽��ϴ�. �� ����� �̷¼��� ������ ���Ȱ���� �Ͽ� ������� ���� ��û�� ���� �湮 ������ ���� �Ի��ϵ��� ���� ����̾����ϴ�. ��������� �����ϸ� �Ǿ����� ������� ���� ����� ���ҽ��ϴ�. ������� �ȸ�翡�� ���� ȸ�翡 �̷¼��� �ְ�, ���� ����� �̷¼��� �־ �̷¼� ���� ���� 50���� ���� �˴ϴ�. ���� ���� ���� ����� ���� 20���� �����ۿ� �� �ƽ��ϴ�. �װ��鵵 ���� ������ �ֱ� ��� ������ �ʹ� �� �� �߸��� ��ҽ��ϴ�. ������ ���� ����� ��ǥ�ڵ��� ä���� �ź��ϸ� � ���� ���, � ���� ������ �̾߱��߽��ϴ�. ����Ⱓ �Ի��� ����� ���١�, ��û���� �ƴϴ١�, ����ȥ�� ����� ���ܰ���� ���� ȸ�翡 ���ظ� �����١��� ���� ������ ���� ������ϴ�. �ѹ��� �̷¼��� ��Ȱ��� ���� ������ ������� ������� ���������� ��� ������ ������ �׷��� �Ἥ ������ �ý��ϴ�. �׷����� ����ִ� ����Ȱ�� ���� ����̳�?��, ������ ����� �� �׷� �� �ߴ��ġ��� �������� �亯�� ������ϴ�. �ᱹ 2013�� 12��, ��ȸ������ ���� �ڸ��� ���� ���ٰ� �Ǵ��ϰ� ���ʼ����ڰ� �� �� 4�� 2���� ���� ���ޱ��� ���� �ݳ��ϰ� �����ϰ� �Ǿ����ϴ�. �� �� �ٽ� �Ǽ����� �Ͽ������� �ǵ��ư��� �Ǿ����ϴ�.
','�Ǿ��� ����� �¹���, �Ҿ����� ���ڸ� ��å','..\uploadImages\20211016013611.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',127,'admin',to_date('21/10/16','RR/MM/DD'),'����� �ߵ���̾��� ���������� �̾�� �ִ� ���, �̹��� ������ 2�븦 ���뿡 �����ߴ�. 15�� ���� ����ķ�۽� �������� �輺�� �ߵ���̾� ȸ��, �����θ��ͽ� �Ȼ��� ��ǥ, ������ ���� ���� �� �����ڵ��� ������ ��� ������ �������� ������. 

�̹��� �ߵ���̾����� ������ �������� ��ȸ���� �����θ��ͽ����� �����ϴ� �ٸ��� ��ݿ� ������ �׸������� 2�븦 ���뿡 �����ߴ�. �ð��δ� 3,500���� �����̴�. ����� �������� ������ ���� ��ǰ ��� �� ������ �������� ����� �����̴�. �ߵ���̾��� ���� 4�� ��������缺���б����� 2�� 4õ�� ���� �����ϱ⵵ �ߴ�.



������ ���� ������ �������� �ֽ� ������ ź���߸� ķ�۽��� �������µ� ��¡�� �� ���̴�.����, ���������� ���°��踦 �����ϸ鼭 ���������� ���� �������� �⿩�� �� �ֵ��� ����� ������.���� ������ ���� ���ߴ�.

�輺�� �ߵ���̾� ȸ���� ��������� ������������ ������߰� ����� ���縦 �缺�ϴ� �� ������ ū ������ �ǰ� �ִ�.����, ���̷���ȸ�� ���а� ����� ���������� ���� �ű�� ���߰� ���� �缺�� �߿��� �κ��� ������ ���̴�. �����ε� �������� ���°��踦 ������ ������ �ٶ���.���� ���ߴ�.

����� ���⿡������������ �� ��������ȯ�ý��ۿ�����(����å���� ������ ����)�� ���� �ߵ���̾��� �����Ͽ� ������ e-powertrain�� ���� �� ����� ���� ������ �����ϰ� ������, �κ����������� �κ����ڵ����������������(����å���� ��ö ����)�� ���� ����̺� ����� �����ϰ� �ִ�. ����, 2021�� 1�� MOU�� ü���ϰ�, 4���� ���� �� ����̾������������Ҹ� ������ ��� �η��� ���������� �����Ͽ� �̷��� ����� ���������� �غ��ϰ� �ִ�.  �� �ۿ��� ���� �Ϲݴ��п��� �����������սý��۰��а�(���ü��� ����а�)�� ���� �ų� ����о� ���� �̻��� ����η� ����ϴ� �� ���������� �̾�� �ִ�.','����̾�, ���뿡 ������ 2�� �����ϸ� �������� �̾','..\uploadImages\20211016013642.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',128,'admin',to_date('21/10/16','RR/MM/DD'),'���� ������������б� 3�г� ���л� 9���� �ѱ�ö������ �ʱ���迡 �հ��ߴٰ� 15�� ���ߴ�. �� �л����� ä�� �ο��� 1.2����� �����ϴ� ���迡�� ����� �հ��Ͽ� ���� �������� ���� �ΰ� �ִ�. 

��������� ������, ����� �� ���� �� �پ��� �о߿��� Ź���� ������ �ŵθ� ���� �ְ��� �������б��� ��� ����. 10�� 14�� ���� ����������û ������ 1�� �㱺������(���λ�� ����) 11�� ��Ｚ�߰��� 3�� �������ȣ�߰��� 7�� �㿥���ڸ���(�ݵ�ü���) 4�� ��ƿ콺���� 11��(������ 2��, �޸�������-���� 2��, BMW 4��, �ƿ�� 1��, �����ٰ� 1��, ��Ʈ������ 1��)�� �����հ��Ͽ���. �׸��� ���ѱ�ö������ 9�� �㱹���� ������ 1�� ���ر��λ�� 1���� �ʱ���� �հ� �� ���� �հ��� ��ٸ��� �ִ�. �Ӹ� �ƴ϶� ���� ������ ������ 12��, ����Ư���� ������ 3��, ����KPS 3��, �ѱ��������� 5���� �����Ͽ� ���� ����� ����ϰ� �ִ�. �� �ܿ��� �߰ߡ����ұ�� TYI�Ŀ�鷯 �� 17�� ��ü�� 39���� �����հ��Ͽ� ����� Ȯ�� ������. 



�̷��� ���������� ��� ���� ����� �������� �� �������(�ѱ����°����, �ѱ�ö������� ��), ������, ���н����� ��� ���α׷��� �ƿ콺���չ�, ���λ���� �� �پ��� ��� ���α׷��� ü������ ��� ���� �ִ�.

��������û ������ �հ��� �չ��� �л��� ������ �п��� �ٴ��� �ʰ� �б����� ��ϴ� ���Ư���ݿ� �����Ͽ� �����Ե�� �Բ� ���� Ǯ��, ���� ���� ������ �غ��Ͽ��� �� ��� �����հ��� �� �־���. Ȥ�� ���� ���� ���θ� ��� ���� ���б� �Ĺ���� �ִٸ� ��� ���� �������� �����϶�� �̾߱��� �ְ� �ʹ�.����� ���ߴ�. 

�������� ���뼮 ������ ���������� ������, �����, ���� �� �پ��� �о߿��� �������� ��� ������ ���� �� �־��� ���� �������� ������α׷��� ���� �ְ� ����ǰ� �ֱ� �����̴�. ������ ������ �������� �ʰ� �л����� ���ϴ� ���� ������ �� �ֵ��� ��� ���������� �Բ� ����ϰ� ����� ���̸�, ���� �η��� ���� ���������� ������ �� �ֵ��� ���Ӿ��� �����ϰڴ�.����� ������. ','���� ��������, �ѱ�ö������ 9�� �ʱ� �հ�','..\uploadImages\20211016013715.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',129,'admin',to_date('21/10/16','RR/MM/DD'),'�ѱ�����̰���� �������� ���ŵ��� ����о� �������, ���� ����û�� ������ 2021�⵵ ����ķ�۽� ��������� �������� ���� ������ ��Ÿ����. 

�̷� ������� �缺�� ���� ����ķ�۽��� 2019�� ���л��� ������� 6�� ����� �����ְ��� �������� �̷�������� ������������ �ż������� ù �� 40���� ���� 67����� ������� �����ߴ�. 

�����غ��ʹ� ���л��� �ƴ϶� ���� ����� ������ ���س���̰���� �ѱ�������ǰ�������(aT), �󸲽�ǰ�����ȹ�򰡿��� ������ ���̷� ������ �缺�������� �ż�, 60���� ������� �����ߴ�. 

����ķ�۽� �����ڵ��� ������� �� �������� ��� ���� ������ ����, ��� ������ ��������, ����غ� ���򿡼� ��� �����ڰ� ������ �ƴٴ� ������ �������� ��ü�������� 5�� ������ 4.6������ ��Ÿ����. 

���� �ڷγ�19�� ���ӵǸ鼭 ��� �غ� � ������� �޾��µ� �������� �����ϰ� ��� ���� ������ ��� �غ� ���� ���Ǹ��� ���� ü���� �� �� �־� ū ������ �ƴٴ� �ǰ��� ���� ���Ҵ�. 

�������� ���� ķ�۽��� ���� ���� ������ ���� Ž���� ���� ��ȸ�� �ƴٴ� �ǰ߰� ��� ���� ���� ��� ������ ���� �� �� �־ ���Ҵٰ� �ַ� ���ߴ�.

����̰���� ���� �л����� �������� ���� ��Ÿ�� ��ŭ ���� ���� �Ը� �ø���, ���� ������ ���Ǹ� ���� �� ���� ���� �л����� ���� ������ ���� ������ ���� �� �ֵ��� ����� Ȯ���� �����̴�.  

���� ������� ��ȭ �ð��� ��ü ���� �ð��� �÷��޶�� ��û�� �������� ���� �ƽ��� �� ���������� ��û������ �ݿ��� ���� ����ķ�۽����� ���� �߽� Ŀ��ŧ���� �����ϰ� �ұԸ� ������ ��� ������ ������ ��ȹ�̴�. 

���ν� ����̰��� ������ ���������� �缺�� ���ŵ��� ���� ��������� ������ ����ϸ� �����ϱ� ���� ��������� ��ȸ�� å������� �������ε� �پ��� ���α׷��� ���� ����о��� ���� û������ �缺�� ���� ����ϰڴ١��� ������. ','����ķ�۽�, �̷���� �������� �缺 ȿ��','..\uploadImages\20211016013748.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',132,'admin',to_date('21/10/16','RR/MM/DD'),'û�� ������ ��ȭ�ϴ� ������ ���� 14�� ���� �������� 15�Ϻ��� 40�ϰ� �Թ� ���� ����.

û�� ������ �Ǹ������� ��ȭ�ϰ� ����Ȱ���� ������ û��鿡�� ����� ��ȸ�� �����ϱ� ���� ���� ����� �����Ѵٴ� ������. �Ұ� ��ó�� ��� 11���̴�.

15�� ����ó�� ������ ���� ��� ������ ũ�� �ٽ� ����η����μ� û���� ����Ȱ�� ������ ��ȭ�ϰ� û�⿡�� �������� �� �����Ʒ� ��ȸ�� Ȯ���ϴ� ���� û�⺹���� ���� ���� ����� �����ϴ� ������ ��� �ִ�. û��⺻���� ������ ������ û���̶� 19�� �̻� 34�� ������ ����� ���Ѵ�.

�켱 �߼ұ���⺻�� �������� ���ΰ� �߼ұ�� Ȱ���� �����ϱ� ���� �ǽ��ϴ� ��å�� ������ û���� �߰������ν� û���� ���Ȱ���� �����ϵ��� �ߴ�. �Ѹ���� ����� ÷��ȭ�� ���� ���������� �����ݻ���� �η� �������� ������ û���� �����Ȳ�� �ݿ��ϵ��� �ߴ�.

�� ������ ����, �����ϴ� ���������Ʒ� �⺻��ȹ�� û�⿡ ���� ���������Ʒ��� �����ϰ�, �뵿�α� �� �뵿�� �Ǹ���ȣ ���� ���� ��� û���� �߰��ϴ� ������ ���� ���������Ʒ� �������� ���뵿���������� ��Ҵ�.

������б�� ������ ���� ���迬�� �� ���������� ���� �� ������ġ��ü�� �ǽ��ϴ� �����Ʒ� ����� ��� ����û���� �߰��ϰ�, ������ġ�������� �ֹ� ��ȣ�� ���� ������ ���� ����ü �繫 ��� û���� ���Խ��״�. �� ������ ����, ȭ��� ���� ������ �㰡�� ���� �㰡 ���� ��ݻ��� ������ û��⺻���� û�� ���ɿ� ���� 20�� �̸����� 19�� �̸����� �����ߴ�.

�̰��� ����ó���� ���̹��� �����ϴ� û�� ������ ���� �������� ���� ���, ����Ȱ�� � ������� �޴� û����� ���� �ټ� ������ �� ���� ������ ����Ѵ١��� ������.','û������ ��ȭ ���� ź�� �޴´�','..\uploadImages\20211016014007.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',133,'admin',to_date('21/10/16','RR/MM/DD'),'��ä�� ����Ϲݱ� �������ε� ���� ����ä���� �ڸ��� ���� ���� �̴ٺ��� ���� �������� �� ���� �����. ���� ������ �Ⱓ�� ������ �̸� �غ��� �� �����ٵ�, ������ ���ڸ� ã�Ⱑ �� ��������ٰ� �����ؿ�.��

������ �Ի��ϱ� ���� ���� �뷮������ �غ� �ϰ� �ִ� �ָ�(29��)�� ���� ���� �������� ��������� �ǰ��ϸ� �̰��� ����ߴ�. �ֺ������� ���� �ֿ� ����� �����ä�� ���ָ鼭 ���� �� ��ȸ�� �ٰ� �ִٸ� �ð��� �������� ����� �����Ⱑ �����ȴٰ� �����ߴ�.

������ 23�� ���ǵ����� ���ɽĻ縦 ��ģ �����ε��� ���͸� ���� �ɾ�� �ִ�. [���մ��� ����]

������ ���� ������ �����ä�� ����ä������ ��ȯ�ϴ� �߼���. �ϰ������� ������ ���� ����ä������, ������ �ڽñ�(�ڷγ�19+�ñ�)���� �ƿ� ���� ���� ���١��� ������ �ߴ� ������ ���� ������̳� �߰���θ� �����Ѵ١��� ��������.

��ó�� 20~30�� ���� ������ ��� ������ �ް��ϰ� ���پ��µ��� ������ �ذ�å�� ������ �ʰ� �־� ������ڵ��� ������ ���� �������� ����� �ִ�.

���û�� ��ǥ�� ��9�� ��뵿�⡯�� ���� ��� ���������� ����ڰ� ������ �ݸ� 30�븸 �����ϰ� ���⵿�� ��� 1��2000�� ������ ������ ��Ÿ����.

30���� ��� ��κ� ���� ���� �� ù �����Ȱ�� �ϰų�, ��ȥ �� ����� �յ� ������ �㸮�����̴�. ������ ��â ���ؾ� �� �̵��� ���� ��������� �����ְų�, ��ĩ ������ �����ϴ� �ɷ� ���� �� �ִٴ� ���̴�.

�����������(KOSIS) �������� ���� 8�� 30�� ����ڴ� 520�������� 1�� ������ 8��8000�� �����ߴ�. �̷ν� 30�� ����ڴ� �۳� 3��(-10��8000��)���� 18���� �������� ���⵿�� ��� �϶����� �̾��.

Ư�� ���� 8������ 15������ 70�� �̻� �̸��� ��� ���ɴ� ��� 30�뿡�� �����ϰ� ����ڰ� �پ���. �ݸ� ������ �����Ȱ���α� �� 30�� ���������� �α��� 31��8000������ 1��9000�� �ø鼭 ��� �ۼ��� ���۵� ���� 2003�� �̷� ���� �ִ�ġ�� �����.

������ ������б� �����������п� ������ ����ä �ý����� �����Ǹ� ���ػ� ���忡���� ������ ������ ȸ�縦 ����, ��� �غ��ؾ� �ϴ��� ���� ���������� ����ä���� ��� ä�� �Ը� �۰� ��Ȯ�Ǽ��� Ŀ�� ������ ���� ġ������ ���ɼ��� �ִ١��� �����ߴ�.

�ٸ� �� ������ ������ 20~30��� �⼺ ����ó�� �� ���忡 ���� �������� �ʰ� ������ ���⿡ ���� �����Ӱ� ������ �߱��ϴ� ������ �־� ������ �����ɷ��� ���̴� ����ο��� �� �� �ִ١��� ���ٿ���.','�����ذ� ������ ��������������� �����ä�� ���ػ��� ���','..\uploadImages\20211016014052.jpg',7,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',135,'admin',to_date('21/10/16','RR/MM/DD'),'���� �츮�� �����ϴ� ��Ÿ���� �ô�� ������� ��ȭ�� �ɱ�? ��Ÿ������ �ܼ��� �����̳� ��������(VR)���� �̷����� ����ڵ��� ��ȣ�ۿ��� ������ �ʴ´�. ���� �츮�� �����ϴ� ��Ÿ������ �����̳� VR������ ���Ȱ���� ��κ��̴�. ������ �̷��� ��Ÿ������ �ΰ����踦 ���� �� �ְ�, ��ȭ��Ȱ�� ���� ��ȭ�� �����ϰų� ������ ���� �� �� �ִٰ� �Ѵ�. �������� �̷� ���� ��Ÿ������ ���ּҴ�?

��ȭ���� �̸� �� ����Ÿ������ �ϼ���  

2018�� ��Ƽ�� ���ʹ��� ������ ��ȭ <���� �÷��̾� ��>�� ���� ���� �����ƽý����� ������� ��Ÿ���� ����� ���������� �����ش�. �� ��ȭ�� ���� �ι����� ��� ����Ʈ ���÷��̸� �����ϰ� �ƹ�Ÿ�� ������ ���� ���� �� ��Ÿ���� �ȿ��� �Ǵٸ� ���� �����Ѵ�.

�ô�� 2045��, ���ΰ� �����̵塯�� ���Ǽ��迡�� ���� ������� ��ư��� ����� �������� ���ƽý� �ȿ����� ���η��� ���� ������ ������. ���� ������� ���ƽý����� �ð��� ������ ���Ȱ���̳� ������ Ȱ��, ��ȭ��Ȱ ������ ���ֵ� �� �������� �����ϴ�.

�Ļ�Ȱ�� �����ϰ� ���Ǽ���� ���� �� 2�� ������ ���̴�. ������ ��IOI����� �Ŵ� ����� �������� �����ƽý������� ��� ���� �������� �����ϰų� �ϵ���� ��� �Ⱦ� ������ ������ ���� �� ������ Ȱ���� ���ƴ�.

��Ÿ������ �ָ�ޱ� ������ ����

��Ÿ������ ����, �߻��� ���ϴ� ��Ÿ(Meta)�� ���Ǽ��踦 ���ϴ� ���Ϲ���(Universe)�� �ռ����. 1992�� �̱����� SF�۰� �� ��Ƽ�콼�� �Ҽ� �������ũ���������� ó�� �����µ�, Ư���� ���� ��ݱ���� ����ȸ�� �κ�Ͻ��� �̱� �����ڽ��忡 �����ϸ鼭 ��Ÿ���� ���忡 ���� �����. 

�κ�Ͻ��� ���� �ִ� �Ը��� ��Ÿ���� ���� �÷����ε�, �̱� 10�� ���� �̻��� ��ܾ��� �÷����� ��ŭ �� �Ը� ����ϴ�. �κ�Ͻ� ���� ����Ÿ������� �÷����� ���� ������� �ϳ��� ���� �͡��̶�� �����ߴ�. 

������ �� ������ �ڷγ�19 ���·� ��� ���ϰ� �� �̱� �ʵ��л����� �ٸ� ���̵�� ������ �� �ִ� ��η� �κ�Ͻ��� ������ ������, �����ε� ������� ������ �������� ���� �� �ִ� ������ �÷����� ���� ������ ������ Ŀ�� ���̶�� ���� �ִ�. 

�κ�Ͻ��� �α⸦ ���� ������ �¶��� �� 3���� ��ü ���󼼰迡�� �ƹ�Ÿ�� ������� ������ ���ε��� ���� �����ϰ�, ���� ���� �Һ��ϸ�, ���̳� ������ �ϴ� �� ���� ���迡���� Ȱ���� �״�� �� �� �ִ� �ϼ��� ���� �÷����� �����߱� �����̴�. ������ �κ�Ͻ��� �Ϸ� ��� �����ڸ� 4000���� ������ ��ŭ �߰ſ� �α⸦ ���� �ִ�.','�ʳ����� ����Ÿ������ ��ǳ, ���� �ö�Ÿ, ����?','..\uploadImages\20211016014246.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',140,'admin',to_date('21/10/16','RR/MM/DD'),'2014�� �ż��� �������Ư�⺴�� ���� �� ������� 57.7%�� �ӹ��� �� ��ȿ���� �������ٴ� ������ ���Դ�.

��ȸ ��������ȸ ȫ��ǥ ���Ҿ���ִ� �ǿ��� 15�� ������û�� ������ �ֱ� 5���� �������Ư�⺴ ���� � ��Ȳ �� ������� ������ �������Ư�⺴�� ���� �� ������� ���� 57.7%�� �ӹ����� ������ �巯���١��� ������ �����ϰ� �ִ� ����Ư���� ��ȿ���� �����ϰ� ���� �����Ʒ��� �ְ��ϴ� ���뵿�ο� ������ �̷��� ������並 ���ݿ��ؾ� �Ѵ١��� �����ߴ�.

�������Ư�⺴ ������ ������ �����о��� �ϳ��� �����ǹ��ڰ� �Կ� �� ����Ʒ��� �ް�, ����� �о��� ��������� �Կ��� ���������ν� ���� �� ������踦 �����ϱ� ���� ���� 2014�� �ż��ƴ�.

�������� �з� ������, ���ʻ�Ȱ������ �� ������ ���ڸ� ������� �����ϸ� �ٸ� Ư�⺴�� �޸� ���Ｑ���� �ƴ� ���� ����������� ����Ѵ�.
ȫ �ǿ��� ������ �ֱ� 3���� �� �������Ư�⺴ �����ڴ� 2019�� 2716��, 2020�� 3286��, 2021�� 7�� ���� 2507������ ������ �ð� ������ ������ ���� ��� ��ȹ�ο� ��� �������� 1~2% �������� ����� �����ϴ�.

������ ��������� �� ���� �����ڰ� 33.9%, ������ ���ڰ� 7.3%���� �����ϴ��� �����ڼ� ��ü�� �ſ� ���� ������ ������ �츮�⿡�� �ξ��� �����ϴٴ� �� ȫ �ǿ��� �����̴�.

�� ȫ �ǿ��� ��Ư�� �����о߿��� �����ڰ� ���ߵǴ� ���� ��ȭ�ǰ� �ִ١��� ���������Ư�⺴ ������ ���� ���� ������ ������ ���, �� 74�� Ư�⿡�� �ο��� �����ϴµ� �� �� ���� 6�� Ư�⿡�� ������ ���� �̻��� ���ȴ١��� ������.

�������� �����̻�(2019�� 53.2%��2020�� 53%)�� ���⼳������������������������ � ������ �ݸ� ���Ϲ��� ���񡤹������ ������� �� 3�Ⱓ 10�� ä �������� ���� �оߵ� �ִ�.

��衤������ڡ��������񡤰��������ڰ�� �� 5�� �о߿��� �������Ư�⺴�� �����ϴ� ���� ���� ��� �о߿��� �������� 46.9%(2019��), 56.9%(2020��)�� ���ߵǾ� �ִ�.

ȫ �ǿ��� ���̷��� �Ҽ� Ư�⿡�� �����ڰ� �����ٺ��� �ش� �о��� ������� �Ƿ� ��� �Ʒ��� �������١��� ������ �������� Ư�⺴�� ������� 34.3%(2019��), 54.4%(2020��), 42.1%(2021�� 7��)�� ���� �������Ư�⺴ ��ü ����� 57.7%(2020��) ���ϡ���� �����ߴ�.

�̾� ȫ �ǿ��� ��2018�� ����ɻ� �ÿ��� �������Ư�⺴ ������ ������� �����ϰ� ������縦 �缺�ϱ� ���� �����ش�, �߼Һ�ó����� �� ����������� ���������� �ʿ��ϴٴ� ������ �־����� ��ü�� ������ ������ ���õ��� ���� ���¡���� ������ �籹�� ������� �ܼ� �����ϴ� ������ �򰡹�Ŀ��� ��� ���о�, ������� ����� �ľ��ϴ� �����򰡸� ������ ������ �̺����� �����ؾ� �Ѵ١��� �˱��ߴ�.','�������Ư�⺴ ����� 57.7%����ȿ�� ������','..\uploadImages\20211016014738.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',141,'admin',to_date('21/10/16','RR/MM/DD'),'SK���̴н� �������� SK���̴н��� �����ڡ���������غ��������� ��� ���� �����ϱ� ���� ������ ȸ���� ���� Ŀ�´����̼� ä���̴�. �̹� ������ �������� �޴� ���� ������� ������ ���� ��ǳ���� ������������ ���� ��� �˻� ��� ��ȭ ��Ȩ������ ���輺 ��ȭ ���� ���ڷ� ����� �������̽�(UI)�� ����� ����(UX) �� ���� ���Ǽ��� ���̴� �������� ����ƴ�.

�޴��� �����뿡 �湮�� ���ڵ��� ���������� �������� ��� �� �ֵ��� �������� ��ȭ�����Ӱ��ɰ濵�������� ���͡�ȸ�� �Ұ� �� 5���� �׸����� �����ߴ�. ������ ���⿡ ���� ������ ��õ ��ɰ� �α� ��� ���� ��� ���� �߰��� ������ �湮�ڰ� SK���̴н��� �ֿ� �̽��� ��ġ�� �ʵ��� ȭ���� ������ ���� Ư¡�̴�.

SK���̴н��� �ݵ�ü ���ߡ����� ����, ķ�۽� ����, ������ Ȱ��, ��ǰ ��� ���õ� ������ �������� �ʿ��� ���ذ����ڵ��� ���� �����������͡� �׸� ��ġ�� ���̵�� ���̺귯������ �����ߴ�.

�� �˻� ��ɵ� ��ȭ�ߴ�. �׸� �˻��� ���� Ư�� ��¥�� �����ϴ� �͵� �����ϴ�. ���� 7�� ���Ӱ� ������ ���� Ȩ���������� ���輺�� ������. ''ȸ��Ұ�'' �ǿ� ���� SK���̴н� �濵 �����̳� ���Ӱ��ɰ濵����, ä������ ���� �Ұ��� �ִ� �ش� �������� �ٷ� ����� �� �ֵ��� ����� ���Ǽ��� ����ߴ�.

��� �ۼ��� ���� �������� ���� �湮�ϴ� ������� ���ؼ��� �˸� �ֱ⸦ ���, �� 1ȸ �� ���� ���ǿ� �°Բ� ������ �� �ִ� ����� �����ϴ� �� ���� ���񽺵� �����ߴ�.

��ȭ�� ���� ����ְ� �ݵ�ü ����� �˾ƺ� �� �ִ� ���繰 ''�ݵ�ü WHAT ������''�� �ֽ� ����� �ݿ��� ������Ʈ�߰�, �ش� �ø�� �Ѵ��� ������ �� �ִ� ��ʵ� �޴��� �߰��ߴ�.','SK���̴н�, �ѱ����� ������ UI��UX �������� ���Ǽ���','..\uploadImages\20211016014810.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',145,'admin',to_date('21/10/16','RR/MM/DD'),'�ڸ��Ʊ����׷� IT ���� ���� ��ǻ���п� �ڸ���IT��ī���̴� �λ����� �̾� ���� 12���� ��õ���� �������� ���Ӱ� �����Ѵٰ� ������. 

IT ���� ���� ������ ��ȭ�ϸ鼭, ��������� IT �����ڰ� �ƴ� �����ڱ��� ȯ���ϴ� �������. �̷��� ��Ȳ�̴� ���� ������� ��ӵǰ� �ִ� �ι� �迭 ����������� �ڵ��п� � ����ϸ� IT ����� �����ϱ� ���� ������ �ִ�. 

�ڸ���IT��ī���̴� �ֱ� �ѱ��� ���� K-������ Ʈ���̴� �缺 ������� ���� ������, ������ �ٽ� �ǹ� ���� �缺 �������� ������ �ִ�. �������� �����п�, �뱸���λ� ��ǻ���п� �� ���� �� �������� ������ ����� 100%�� �޼��ϸ� IT�п����� ������� �����ؿԴ�. 

���⿡ ���Ӱ� �����ϴ� ��õ�� ���� ��ǻ���п������� �پ��� Ŀ��ŧ���� �ǹ� ��� ���� ���α׷����� �ָ�ް� �ִ�. �� �پ��� ���� ����� ������ �ǹ��� ���̳�, ��� ���α׷� � �� ���������� ��� �ǹ� �ɷ� �缺�� ���� ���ɾ�� ����� �����̴�.

���� �ڵ��п� �ڸ���IT��ī���̴� ������ �п��� ����� 13�� �ٺо� ���� �迭�縦 ��ؿ� �ڸ��Ʊ����׷��� ���������п� �迭���. �ڸ��Ʊ����׷��� �Һ��ڰ� ���� ���ѹα� ������ 1�� �귣�� ����� �����ϴ� �� �ټ��� �������� Ȯ���ϸ� ���� ���� ���� ������� �ڸ����� �� �ִ�.

���� � ���� �ڸ��ƾ���Ƽ�п� Ŀ��ŧ�����δ� ���������������� ����(��Ʈ��ũ, �ý���, ��, �Ǽ��ڵ� �м�, ������ ������) ���Ʈ��ũ�а�(CCNA, CCNP) ��ȭ��Ʈ ��Ŀ ����/�� ���α׷����п� ���� ���������� ���ڹ��п� ���α׷���(JAVA) ���� ���� �پ��ϰ� ��ǰ� �ִ�.  

�̿� �Բ� �پ��� ��� ���� ���� ���� �� ������Ʈ, �Ʒ� ����� ����, ���� �Ⱓ ���� ��� �����Ʒ� ���� ���� ���� �����ϸ� ������ ���� ����, ��� ���� ��Ű��, ���� ���� �� ���� ���� ���� ���α׷� �̿��� �����ϴ�. ���� �л��鵵 �����ϰ� ������ �� �ֵ��� �پ��� ���� ���õ� ���� ���̴�.','��ǻ���п� �ڸ���IT��ī����, ���� 12�� ��õ�������� ����','..\uploadImages\20211016015436.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',146,'admin',to_date('21/10/16','RR/MM/DD'),'���ѱ����������� 14�� ������ ��ġ���� ħ�긶������ ��ȸ�� ���� ������ ���� ���� ������ ���ڸ� ����� ��ȯ���� �����߿��� ��ħ���߿����� �����ߴٰ� 15�� ������.

�����߿����� �̸��� ��ħ���߿����� ħ�꿡�� �ٶ� ���̶�� ���� ��� �ִ�. ħ�긶���� �߿����� �湮�� ������� �Ƹ��ٿ� �ڿ��ӿ��� �޽��� �� �ֵ��� �پ��� ���Ǹ� ������ ��ȹ�̴�.

���ѱ����������� �̹� ħ�긶���� ������ �λ� ���, ���� ��õ �� 3���� ���� ������� ���������� ���� �����ֹε��� ��Ȱ���, �������� Ȱ��ȭ ������ ���� ���� 3�� ������ �ִ� 45����� ������ �����̴�.

���ѱ��������� �����ڴ� ���̹� ������� ħ�긶�� �ֹε��� ���ڸ� â�� �� ������ȸ�� ������ ������ �����µ� ������ �Ǳ� �ٶ��١��� ������� �����ε� �츮 ��ȸ�� ���� ������� ��ĥ �� �ֵ��� ����ϰڴ١��� ���ߴ�.

���� ���ѱ����� �ֱ� ���뺴 ȸ���� ��ǥ�� �׷��� ESG ���ΰ��� ��Do the Right Thing for a Wonderful World(���� ������ ���� �ùٸ� ��õ)���� ���� ���� ������ ���ڸ� ���, �ʵ�� �������Ƴ����� ����, ������ ��´��� ���� �������, û���ä ��Ż�ɾ� ������Ʈ, û�� �ؿ� ��� ���� �� �پ��� ��ȸ���� Ȱ���� �����ϰ� �ִ�.

��ó : �λ���Ʈ�ڸ���(http://www.insightkorea.co.kr)���ѱ����������� 14�� ������ ��ġ���� ħ�긶������ ��ȸ�� ���� ������ ���� ���� ������ ���ڸ� ����� ��ȯ���� �����߿��� ��ħ���߿����� �����ߴٰ� 15�� ������.

�����߿����� �̸��� ��ħ���߿����� ħ�꿡�� �ٶ� ���̶�� ���� ��� �ִ�. ħ�긶���� �߿����� �湮�� ������� �Ƹ��ٿ� �ڿ��ӿ��� �޽��� �� �ֵ��� �پ��� ���Ǹ� ������ ��ȹ�̴�.

���ѱ����������� �̹� ħ�긶���� ������ �λ� ���, ���� ��õ �� 3���� ���� ������� ���������� ���� �����ֹε��� ��Ȱ���, �������� Ȱ��ȭ ������ ���� ���� 3�� ������ �ִ� 45����� ������ �����̴�.

���ѱ��������� �����ڴ� ���̹� ������� ħ�긶�� �ֹε��� ���ڸ� â�� �� ������ȸ�� ������ ������ �����µ� ������ �Ǳ� �ٶ��١��� ������� �����ε� �츮 ��ȸ�� ���� ������� ��ĥ �� �ֵ��� ����ϰڴ١��� ���ߴ�.

���� ���ѱ����� �ֱ� ���뺴 ȸ���� ��ǥ�� �׷��� ESG ���ΰ��� ��Do the Right Thing for a Wonderful World(���� ������ ���� �ùٸ� ��õ)���� ���� ���� ������ ���ڸ� ���, �ʵ�� �������Ƴ����� ����, ������ ��´��� ���� �������, û���ä ��Ż�ɾ� ������Ʈ, û�� �ؿ� ��� ���� �� �پ��� ��ȸ���� Ȱ���� �����ϰ� �ִ�.','���ѱ���������, ���� ħ�긶�� �߿��� ��ħ���߿��� ����','..\uploadImages\20211016015522.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',148,'admin',to_date('21/10/16','RR/MM/DD'),'���غ��Ǵ��б��� ���� 14�� ����� ���۷���Ȧ���� �Ϻ� �ؽŰ������а� Zoom�� Ȱ���� �¶��� �м���ȭ����ȸ�� �ǽ��ߴ�.

�� ������ ���� 2013�� MOU�� ü���� ���� �м���ȭ ����ȸ�Ӹ� �ƴ϶� ���� ���� ��������, ������ ����ȸ �� �پ��� ��ȣ�շ��� ������, �ڷγ�19�� ���� ���� ó�� �¶������� ���������� �����ϰ� �ƴ�.

�̳� ��翡�� �ؽŰ��������� ����� ��뽺�� �̻���, �������� ����ȭ �������� ����� ��ȣ�а�, ��缱������а�, �˻���а�, �Ƿ���а� ���� �� �л� 60�� ��� ���غ��Ǵ� ������ ���̻���, ������ ������ ����� ��ȣ�а�, ġ������, ���ޱ�����, ��缱��, ����ġ���, �����Ƿ����հ迭 ���� �� �л� 40�� ���� �����ߴ�.

�̹� �м� ��ȭ����ȸ�� ȯ��ȸ, �а��� �м���ȭ����ȸ ������ ���������, �а��� �м���ȭ���� �ð��� ���л���� ������ ���� ������ �ؿ� ��� ��Ȳ�� ���� �������� �ð��� ������ ȣ���� �����.

������ ���̻����� ���� ���� ��� �����ڰ� �ǻ��̽ð�, �μ��� ���� �����Ƿ� ����缺�� ��ǥ�� �ϴ� ���� �����ϴ١���, ������ó�� ���� Ȱ���� ������ ���� ����� �������� ���������� ���ڴ�. ������ ��ȣ �湮�� �� �ֱ� ����Ѵ١��� �λ縻�� ���ߴ�.

��缱�� ���¼� �л��� ���ڷγ�19�� ���� �湮�� ���� ������, �¶����� ���� ���� ������ �Ϻ� �л���� ������ �� �־� ��ſ���, ������ ���� ���� ��� �� �־���. �ڷγ�19 ��Ȳ�� ������ ����� ������ ��ȸ�� �־����� ���ڴ١��� �Ұ��� ������.

����, �ؽŰ��������� �Ϻ� �����ī�� ������ 1956�� ����, ��ȣ�а��� ����� ��缱������а�, �˻���а�(�ӻ󺴸��а�), �Ƿ���а��� ������ �ִ�. 2018�� ���п� �����Ƿ��� �������� ����, 2019�� ��÷�� ���� ���� �޵��� ���� ���͸� ������ �� �ִ�.','���غ��Ǵ�, ���ؽŰ������а� ���¶��� �м���ȭ����ȸ�� ����','..\uploadImages\20211016015621.jpg',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',149,'admin',to_date('21/10/16','RR/MM/DD'),'��ټ��� û�� �����ڵ��� ��ǻ� ������ �ܳ��� ���¶�� ���� ����� ���Դ�.

�ѱ������������� ���� 4���� ���� 3~4�г� ���л� �� ������ 2,713���� ������� �ǽ��� ��2021�� ���л� ����νĵ� ���硹�� ������, ���л� 10�� �� 6~7��(65.3%)�� ��ǻ� ������ �ܳ��� ������ ������ ��Ÿ����. 

��ǻ� �����ܳ� ������ ''���� ����''(33.7%), ''�Ƿ������� �ϰ� ����''(23.2%), ''���� ����''(8.4%)�� ���� ��ġ�̴�. �ݸ�, ���������� ����Ȱ���� �ϰ� �ִٴ� ���� ������ 10�� �� 1�� ��(9.6%)�� �Ұ��ߴ�.
���������� ����Ȱ���� ���� �ʴ� �����δ� ''�ڽ��� ����, ���, ���� ���� ������ �� �غ��ϱ� ����''(64.9%) ��� ���� ���� �����ߴ�. �̾ ''���� �Ǵ� ���� �о��� ���ڸ��� �����ؼ�''(10.7%), ''����Ȱ���� �ص� ���ڸ��� ������ ���� �� ���Ƽ�''(7.6%) ���� ������ ����Ǿ���. 

���л� 58.6%�� ���� ���� �ű�ä�� ȯ���� ���۳⺸�� ��ƴ١��� �����ߴ�. �̴� ���۳�� �����(21.3%)�� 2.8��, ���۳⺸�� ���١�(2.0%)�� 29.3�迡 ���ϴ� �����̴�. 

��� ���̵��� �ݱ⺰�� ���غ���, ���л� 42.7%�� ���� �Ϲݱ� ���ȯ���� ��ݱ⺸�ٵ� ���� ��ȭ�� ������ ���ٺ��� �־���. ����, ����ݱ⺸�� ���١��� ������ ������ 2.6%�� �Ұ��ߴ�. 

���� ���������� ����Ȱ���� �ϰ� �ִ� ���л����� ��� 6.2ȸ �Ի����� �ߴµ�, �� �� �������� �հ�Ƚ���� ��� 1.6ȸ��, �������� �հݷ��� ��� 25.8%�� ������ ����ƴ�. 

��ü������ ����, ���� �Ի����� Ƚ���� ''1~5ȸ''(60.2%)�� ���� ���Ұ�, �̾� ''6~10ȸ''(14.2%), ''11~15ȸ''(6.1%), ''16~20ȸ''(5.4%), ''21~25ȸ''(3.4%) ���̾���. 

�������� �հ� Ƚ���� ''���� ���հ�''(20.7%), ''1ȸ''(22.6%), ''2ȸ''(16.1%), ''3ȸ''(12.3%), ''4ȸ''(4.6%) ���� ���̾���. 

�Ѱ濬�� �������հݷ��� 25.8%�� ��ġ�µ�, �� ���� �ʱ����, ���� ���� �ܰ踦 ��ĥ���� �հݷ��� ���� �������� ������ ���� ������� �ſ� ���� ������ ���δ١��� ����ߴ�.','���л� 10�� �� 6~7�� ����ǻ� ���� �ܳ䡯','..\uploadImages\20211016015720.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',150,'admin',to_date('21/10/16','RR/MM/DD'),'��û���� ������ �Բ����� ���ΰ����� �ϴ� ������û�⼾�͡��� û���� ��Ȱ�� �����̿��� û���� �ʿ�� �ϴ� �ڿ��� ������ �����ϴ� ����� û������̴�.

������û�⼾�͡��� 2020�� 2�� ��õ, ������ �������� �� 2������ ������ 2021�� ���� ���ʱ��� �� 10���Ҹ� � ���̴�.

���� û���� ������� �ϴ� ����û�⼾�ʹ� �ϴ��� �������� ���ջ��, �ұԸ� �׷���, Ŀ�´�Ƽ ���α׷�(����� ���� ����), ����Ưȭ ���α׷� ���� ��?������������ ��ϰ� �ִ�.

10�� �����ϴ� ���� û�⼾�ʹ� 3, 7, 9ȣ���� �����ϴ� ������ ���� ����͹̳ο� ���Ͽ� ��ġ�� �־� û����� ���� ���� �����ϴ�. �� 19������ 39�������� û���̶�� ������ �����Ӱ� �̿��� �� ������, ����û�⼾�� ����� ���� �� ������ ���� ���� ���� �� ���� �پ��� ������ ���� �� �ִ�.

���� û�⼾�ʹ� ������ 557���� �������� �����ֹ�, ���¶���� �� �ް԰����� ��ȸ�ǽ�, ���͵��, 1�� ��۽�(��ĳ��Ʈ��), AI ������ ������ �����Ǿ� �ִ�.

���� û�⼾�Ϳ����� ���������, â��, �ְ�, �����ǰ�, ��Ȱ���� �� �������� ������ ���� ���ջ���� �����Ѵ�. ����, û����� ��ȸ������ ���� ���� û�� ���� ���� �� ���� ������ �Ѵ��� �� �� �ֵ��� �����Ѵ�.

�� �ۿ��� ���Ӱ����� ����� ���� ����, û�� ������ ���α׷� �� Ŀ�´�Ƽ ���α׷��� �Բ�, ����Ưȭ ���α׷��� ��ȯ���� ��û�� Ŀ��������� ��ī���̡��� ��ȹ�Ͽ� û����� ���� ū ��ΰŸ��� ��������� �о߸� ���������� ������ ��ȹ�̴�.

����� ��ö�� �̷�û���ȹ������ ���ڷγ�19��� Ư���� ��Ȳ�� �¼� �ٹ������ �������ϰ� ���� û����� �ʿ��� ��å������ ���, ��ä�ο� ���α׷��� ������ �� �ִ� ������ �Ǳ� �ٶ��١��� ���ߴ�.

��ð��� ���� 10�ú��� 22��(�ڷγ�19 ��ȸ�� �Ÿ��α� 4�ܰ� ���� 18�ñ���), ������� 10�ú��� 17�ñ�����.','û�� ������ ��å������ ���� ������û�⼾�� ���ʿ����� ����','..\uploadImages\20211016015913.png',0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',153,'admin',null,null,null,null,null,'�Ƹ��� �����',to_date('21/10/20','RR/MM/DD'),2,1,104,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',154,'admin',null,null,null,null,null,'��������',to_date('21/10/20','RR/MM/DD'),1,2,90,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',155,'admin',null,null,null,null,null,'��������',to_date('21/10/20','RR/MM/DD'),2,1,154,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',203,'admin',null,null,null,null,null,'����� �ܴ�3',to_date('21/10/20','RR/MM/DD'),1,3,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',204,'admin',null,null,null,null,null,'����� �ܴ�4',to_date('21/10/20','RR/MM/DD'),1,4,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',207,'admin',null,null,null,null,null,'����� �ܴ�3-1',to_date('21/10/20','RR/MM/DD'),2,1,203,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',205,'admin',null,null,null,null,null,'����� �ܴ�1',to_date('21/10/20','RR/MM/DD'),2,1,201,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',206,'admin',null,null,null,null,null,'����� �ܴ�2',to_date('21/10/20','RR/MM/DD'),2,2,201,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',208,'admin',null,null,null,null,null,'����� �ܴ�3-2',to_date('21/10/20','RR/MM/DD'),2,2,203,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',209,'admin',null,null,null,null,null,'��������',to_date('21/10/20','RR/MM/DD'),1,5,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',210,'kd1',to_date('21/10/20','RR/MM/DD'),'�� ���� ������ ������ �Ϻ��ϰ� �޴°� �� ������ �ƴ�
���� �ɷ��� �����ϴ� ������

���� ������ ������ ���Ƽ� ų�����׵� �ְ� ���������� ���� ���ͼ� ��
������ �о ���κ��� �����Ȱ�, �米������ ���� ����� �ι� ���� �׹� ���� �Ǵϱ�

�� �׷��� ���ﷱ�� �Ŵ� ��밡 �� ����
 ���ﷱ�� �������� �̷� �米�� ���̸� ���������� ų������ ��¹��� �����ϰ� �н��ϰ� �Ǹ�
�� ������ ų���� ų������ ������?
�׷��� ������ �������� �������� ������ �� �ð���

�ø��� ���� ��ü���� ���̵��� ���߰� ��¥ ���а��θ� �ϱ� ���� ���ʰ����� �� �� �־����� ������

�̻� ��� �𸣴� �й�����
���� ���͵� ������ ���Ƹ� ���͵����̾���
','���� �ǹ̰� �����Ȱ���',null,1,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',211,'kd1',to_date('21/10/20','RR/MM/DD'),'�̰� ������? 24�ð���� �϶�°���? ��12�ÿ� �ݴ´ٴ°�? ����..24�ÿ�̿�����','���͵�ī�� ���� ���ؿ�','..\uploadImages\20211020152557.png',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',212,'kd1',to_date('21/10/20','RR/MM/DD'),'�ް����͵� �ż����ƴ�','��ī�̿��� ����Ѵٳ� ..',null,0,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',213,'kd1',to_date('21/10/20','RR/MM/DD'),'���� ������ �ȵɰ��̴�','[����] ������͵� ����','..\uploadImages\20211020152831.jpg',2,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',214,'kd1',to_date('21/10/20','RR/MM/DD'),'
4������ ���ݱ��� �� 4���� ��� ���͵� �����غô�.

 

 

1. �б����� ���� GSAT ���͵� 
 

���� �����ϰ� GSAT�� Ǫ�� ���͵𿴴µ�, ������ ���������� �����̳� ������ �������� ��㵵 �������� �����..

 

�� ó�� ������ ���� ����� 3���̶� �׷����� �䵵 �԰� ȭ���� �����⿴���� ����� �߰��ǰ�, ������ ������鼭 �ټ� �踷�� ������� ���� �ξ���. Ư���� �Ｚ�� �ֵ� ��ǥ�� ������ Ǯ�� ���͵𿴴µ�, ��ټ��� ���� Ż���̶�� ������� ����� �Ȱ� �ڵ� ��ü�ƴ�. (������ �����̽� �е� ��Ż. ���� ����� �����ձ����� ���� �Ŷ� �����ߴ� ���� ������ �ڰ��ϴ� ��Ⱑ �Ǳ⵵ �ߴ�.)

 

2. ��������� ���� �ڼҼ� ���͵�
 

����Ż���� ������ �ڼҼ����� ã�� �� ���͵�. ����� ���信�� ���� ���͵�� ���� �⺻ ���� ��� ���͵���� �Ÿ� �� ���ٴ� ������ �ִµ�, ���� �а� ���ػ��� ������ �;� ������ �����ߴ�. ���� ������ ���� �е��� ���� �� ����, ���� �е��� �� ȭ��ǰ ���� Ȯ���ϰ� �����ϰ� ��ż� ���� �� �¾Ҵ�. �̰� ��°ġ��, �̹� ����� ������ ���� ���� ''����''��� �̸����� ��ġ�� �ϰ� ��̴µ�, ���� ������ �� �¾Ҵ�. �� �ڼҼ��� (������ �ռҼ�����) �ϳ��ϳ� ����Ű�鼭 ''���� �� �Ǵ� �ڼҼ�''��� ��, å���� ���� ġ�鼭 ''������ �� �߸��ߴ��� �����?''��� ������ �����̴µ� ���� �й� ������ �� ������ �����ϳ� �;���, ���Ҹ� �� �ڼҼ��� ������ �͵� ��ȸ�� �Ǵ� �ð��̾���. 

 

���� ���� �����̶�� �̸����� ���� �������� �й� ������ ���µ�, ''�����ߴ� �ͺ��� ���ߴ�. ���� ������ �� �˾Ҵµ�'' ���� �򰡰� ���ƿԴ�. ��Ȳ��������, ���� ���� �ǻ縦 ������ ���� ������.

 

 

3. �б� ȫ�� �Խ��ǿ��� �� ��� �м� ���͵�
 

�������� �� ���͵𿴴µ�, �������� �̴밡 ���� ���Ұ� �� ������ ��뿴��. ���ư��鼭 ���� ����� ���� �м��ϰ� PT�ϴ� �������� ����Ǿ���, Ȩ���� MD ���� ������ ������ ������ ���� �غ��� ������� ���Ƽ� ���� ������ ���� �� �־���. ���� SK�̳뺣�̼� �λ��� ���� ���� ����� �����ؼ� PT ���� ������ �ڸ�Ʈ�� ��Ī�� �����̴ּ�. �������� ���� ���� ��� Ư���� ������ ���� �� �־���, ��� ���� ���� ���� ���ø����̼��� �����̶� �ؾ� �ϳ� ���� ��Ȳ�� ������ �ϰ� �־��µ� ������/����м��̳� �����϶�� �켱������ Ȯ���ϰ� ���� �̴ּ�. ������ ������� ���� ������, �����ε� ��� �� ����. 


����غ� ���, ���� �ٸ� ����鿡�� ���� �����ϴ� ������ �� �ڽź��� �׷��� ���ƺ��̱� ������ �ƴ��� �����غ���� �ߴ�. ���� �� ���� ���� ���Ƽ� �� �ϰ�, �ǹ����� ������ �� �� �� ���ڰ� �λ��� ������ �� ���� �׷��� ���� �ʾҴ�. �ϴ� ������ ���� �������� ��� ���� ������ + ���������� �ؾ� �����Ե� �ʱ׷����� �� ���� ������? �׷� �ǹ̿��� ���� ���� �ϰ� ���� ��, �׸��� ���ϴ� ���� ���� ������ �����ϴ� �ð��� ������ �Ѵ�. 
 ','��� �غ� ���͵� ��ġ��',null,4,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('6',156,'admin',null,null,null,null,null,'������',to_date('21/10/20','RR/MM/DD'),1,3,90,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',201,'admin',null,null,null,null,null,'����� �ܴ�',to_date('21/10/20','RR/MM/DD'),1,1,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',202,'admin',null,null,null,null,null,'����� �ܴ�2',to_date('21/10/20','RR/MM/DD'),1,2,200,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',1,'admin',to_date('21/04/20','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�] JoB�Ҹ� ���ϰ� �̿��ϱ�',null,11,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',2,'admin',to_date('21/05/22','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�] Job�Ҹ� ���͵�� ����� ������ ��',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',3,'admin',to_date('21/06/12','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�] Job�Ҹ� ȸ���Ե��� ����� �����մϴ�',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',4,'admin',to_date('21/06/22','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�] ��2021 �Ϲݱ� ���� ä�롤����� ä�� �ֽ� Ʈ����',null,11,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',5,'admin',to_date('21/07/21','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�] ��� Ŀ�´�Ƽ JoB�Ҹ� Ŀ�´�Ƽ �̿��Ģ',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',6,'admin',to_date('21/08/02','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[Jobȸ�� ����]�� ã���ϴ�? + JoBȸ�� ���䱺�� �Ұ�',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',7,'admin',to_date('21/08/12','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�] JoB�Ҹ������� �ڷ� �Ѵ��� ����',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',8,'admin',to_date('21/09/11','RR/MM/DD'),'��1��. Job�Ҹ� ȸ���� ���Ȱ���� ģ���� �������� ������ ���� ī�� ������ �����Ӱ� Ȱ���� �� �ֽ��ϴ�. ��2��. ���� �Խñ�/��� ����� �����Ǿ� �ֽ��ϴ�. ��3��. Job�Ҹ� ȸ���� ������ �Խù�, ���� ���� ����/����/������ �����մϴ�.','[�ʵ�]�Խ��� �̿�ȳ� �� ���۱� �ڷ� ��޿� ���� ����',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('1',9,'admin',to_date('21/09/11','RR/MM/DD'),'1. ���Ȱ��/�������� ����� ȸ���̶�� ������ �Խ��ǿ� ������ �����Ӱ� �ø��� �� �ֽ��ϴ�.  - ������� ���л� ȸ���Ե��� ���� ���� �������� �����Ӱ� ���ε� �����մϴ�.
- ���Ȱ��/������ ���ε��Ͻ� ���� �ݵ�� �۾�Ŀ� �°� �ۼ����ֽñ� �ٶ��ϴ�.','��JoB�Ҹ� ���Ȱ��/������ �Խ��� ��������',null,10,null,null,0,0,0,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',18,'kd4',null,null,null,null,null,'�� ��û�߾��! ���� ��Ź�帱�Կ�',to_date('21/10/20','RR/MM/DD'),1,2,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',19,'kd5',null,null,null,null,null,'Ȥ�� �ڵ� ������Ʈ�� ���ϼ���? �� �ڵ� ������Ʈ ���͵� �������ε� ���������ø� ��û��Ź�����~~',to_date('21/10/20','RR/MM/DD'),1,3,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',20,'kd3',null,null,null,null,null,'�ƽ��׿� �Ф� �Ե� �� �հ��ϼ���!~',to_date('21/10/20','RR/MM/DD'),2,1,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('3',215,'kd1',null,null,null,null,null,'����� �޾ѽ��ϴ�.',to_date('21/10/20','RR/MM/DD'),1,1,214,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',1,'kd1',to_date('21/10/12','RR/MM/DD'),'DFFF','���� ���͵� �����մϴ�~~!','..\uploadImages\20211014113928.png',52,null,null,0,0,1,1);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',3,'kd2',to_date('21/10/12','RR/MM/DD'),'����������������������������������','�ȳ��ϼ��� �ڵ� ���� �����ϽǺ� ã���ϴ�!',null,39,null,null,0,0,3,4);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',6,'kd1',null,null,null,null,null,'��� 2',to_date('21/10/14','RR/MM/DD'),1,2,3,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',7,'kd1',to_date('21/10/14','RR/MM/DD'),'��ó�� 3ȸ ���͵� �ο� �����մϴ�','���͵� �����մϴ�','..\uploadImages\20211014162919.png',5,null,null,0,0,7,5);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',8,'kd3',to_date('21/10/20','RR/MM/DD'),'��','���� ���� �����ϽǺ�~!',null,2,null,null,0,0,8,6);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',9,'kd4',to_date('21/10/20','RR/MM/DD'),'��','�Ⱥ��� ncs ���͵�� �����մϴ�',null,3,null,null,0,0,9,7);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',10,'kd5',to_date('21/10/20','RR/MM/DD'),'f','�ڷ��� ncs ���� ���͵�� ������!',null,0,null,null,0,0,10,11);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',11,'kd6',to_date('21/10/20','RR/MM/DD'),'����','���� ���� �����Ͻ� ��!~','..\uploadImages\20211020140805.png',0,null,null,0,0,11,12);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',12,'kd7',to_date('21/10/20','RR/MM/DD'),'����','����������� ����1ȸ�� ���� �����ϽǺ�',null,0,null,null,0,0,12,13);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',13,'kd8',to_date('21/10/20','RR/MM/DD'),'��','c��� ������Ʈ ���� �ϽǺ� ã���־�� ������ ��õ ��ôºе鸸 ���ּ������ؿ�!~',null,0,null,null,0,0,13,14);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',14,'kd1',to_date('21/10/20','RR/MM/DD'),'����','���� ���͵� �����մϴ�~!',null,0,null,null,0,0,14,15);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',15,'kd2',to_date('21/10/20','RR/MM/DD'),'��','kd2�� ȭ����� ���͵� �����մϴ�@@@','..\uploadImages\20211020141925.png',7,null,null,0,0,15,16);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',16,'kd3',to_date('21/10/20','RR/MM/DD'),'�ȳ��ϼ��� ����ó����� ���� 1ȸ�� ���� �����ϽǺ� �����մϴ�!
�� ������ ���� �̴뿪���̱��� �����Ͽ� �� �ι����� �𿩼� ���� �����ϰ�
�ڵ� ��⵵ ���� ������ ������ ���ƿ�!
��û���뿡 ī�� ���̵� �����ֽø� ���� �帮�ڽ��ϴ�
�����ؼ� �� �հ��սô�~@@@','����ó����� ���� 1ȸ�� �����ϽǺ� ã���ϴ�!!!','..\uploadImages\20211020152411.png',4,null,null,0,0,16,17);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',17,'kd1',to_date('21/10/20','RR/MM/DD'),'������ �μ���','���͵� �����մϴ�',null,2,null,null,0,0,17,18);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',21,'kd3',null,null,null,null,null,'�� ��û Ȯ���߽��ϴ� �����帱�Կ�!',to_date('21/10/20','RR/MM/DD'),2,2,16,null);
Insert into BOARD (B_TYPE,B_NUM,ID,UPLOADDATE,CONTENT,TITLE,IMAGEPATH,VIEWS,COMMCONTENT,COMMDATE,RE_LEVEL,RE_STEP,REF,STDNUM) values ('2',22,'kd7',null,null,null,null,null,'�ٵ� ȭ����!',to_date('21/10/20','RR/MM/DD'),2,1,16,null);
REM INSERTING into FAQ
SET DEFINE OFF;
REM INSERTING into INQUIRE
SET DEFINE OFF;
Insert into INQUIRE (INQNUM,ID,INQTITLE,INQCONTENT,ASKCONTENT,WRITEDATE,ASKDATE) values (1,'kd1','�����մϴ�.','�����մϴ�.','�亯�� �޾ҽ��ϴ�.',to_date('21/10/20','RR/MM/DD'),to_date('21/10/20','RR/MM/DD'));
REM INSERTING into MEMBERINFO
SET DEFINE OFF;
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd1','���߾�','�����','1234','1','01011112222','ca2222@naver.com','19910226','����� ��õ��','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd2','�����','������','1234','1','01022223333','ca3333@naver.com','19910225','����� ���Ǳ�','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd3','���','�޿�','1234','1','01033334444','ca4444@naver.com','19910224','����� ���α�','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd4','����','����','1234','1','01044445555','ca5555@naver.com','19910223','����� ���빮��','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd5','��Ʒ�','�Ʒ���','1234','1','01055556666','ca6666@naver.com','19910222','����� ���α�','1','0',to_date('21/09/30','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd6','������','�質��','1234','2','01066666666','ca7777@naver.com','19920413','���󳲵� ���ֽ�','1','0',to_date('21/10/10','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd7','������','�ڸ���','1234','2','01066666667','ca8888@naver.com','19910101','���󳲵� ���ֽ�','1','0',to_date('21/10/10','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('kd8','������','�����','1234','2','01066666668','ca9999@naver.com','19010413','����','1','0',to_date('21/10/10','RR/MM/DD'));
Insert into MEMBERINFO (ID,NAME,NICKNAME,PASSWD,GENDER,TEL,EMAIL,BIRTH,ADDR,REG_CHK,WIDRAW,REGDATE) values ('admin','������','������','tiger','1','01011111234','admin@jobsori.kr','19000101','��Ҹ�','1','0',to_date('21/01/01','RR/MM/DD'));
REM INSERTING into STDAPPLY
SET DEFINE OFF;
REM INSERTING into STDCHK
SET DEFINE OFF;
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (17,'kd3','��ó�� �νñ�!!',to_date('21/11/01','RR/MM/DD'),to_date('22/03/04','RR/MM/DD'),'5','0','����ó�����',to_date('21/10/25','RR/MM/DD'),to_date('21/10/29','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (16,'kd2','��',to_date('21/11/01','RR/MM/DD'),to_date('21/11/30','RR/MM/DD'),'3','0','ȭ�����',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (15,'kd1','��',to_date('21/10/25','RR/MM/DD'),to_date('21/11/12','RR/MM/DD'),'3','0','����',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (14,'kd8','��',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'),'3','0','c��� ������Ʈ',to_date('21/10/28','RR/MM/DD'),to_date('21/11/28','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (13,'kd7','��',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'),'3','0','�����������',to_date('21/11/01','RR/MM/DD'),to_date('22/03/31','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (12,'kd6','��',to_date('21/10/20','RR/MM/DD'),to_date('21/10/21','RR/MM/DD'),'3','0','����',to_date('21/10/27','RR/MM/DD'),to_date('21/11/03','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (11,'kd5','��',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'),'3','0','�ڷ��� ncs',to_date('21/10/27','RR/MM/DD'),to_date('21/11/25','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (10,'kd5','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'),'3','0','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/29','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (8,'kd4','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/27','RR/MM/DD'),'3','0','f',to_date('21/10/20','RR/MM/DD'),to_date('21/10/21','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (7,'kd4','��',to_date('21/10/26','RR/MM/DD'),to_date('21/11/05','RR/MM/DD'),'3','0','�������ǰ���ncs',to_date('21/10/20','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (6,'kd3','��',to_date('21/10/25','RR/MM/DD'),to_date('21/11/19','RR/MM/DD'),'3','0','����',to_date('21/10/20','RR/MM/DD'),to_date('21/10/28','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (5,'kd1','����ó����� �νñ�',to_date('21/10/26','RR/MM/DD'),to_date('21/11/26','RR/MM/DD'),'5','0','����ó�����',to_date('21/10/14','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (4,'kd2','����',to_date('21/10/25','RR/MM/DD'),to_date('21/11/27','RR/MM/DD'),'5','0','�ڹ��ڵ�',to_date('21/10/12','RR/MM/DD'),to_date('21/10/20','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (3,'kd3','f',to_date('21/10/19','RR/MM/DD'),to_date('21/11/03','RR/MM/DD'),'3','0','f',to_date('21/10/12','RR/MM/DD'),to_date('21/10/14','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (2,'kd1','dff',to_date('21/10/12','RR/MM/DD'),to_date('21/11/04','RR/MM/DD'),'4','0','123',to_date('21/10/12','RR/MM/DD'),to_date('21/10/15','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (1,'kd1','�佺 ����',to_date('21/10/25','RR/MM/DD'),to_date('21/12/10','RR/MM/DD'),'5','0','����',to_date('21/10/12','RR/MM/DD'),to_date('21/10/14','RR/MM/DD'));
Insert into STDCHK (STDNUM,STDREG_ID,STDTITLE,STDSTART_DATE,STDEND_DATE,STDPN,STDSTATUS,STDDIV,RECRU_DATE,RECU_DATE) values (18,'kd1','�ڵ����͵�',to_date('21/10/21','RR/MM/DD'),to_date('21/10/22','RR/MM/DD'),'3','0','�ڵ�',to_date('21/10/28','RR/MM/DD'),to_date('21/10/29','RR/MM/DD'));
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
)  -- 1) Parameter �����ڻ��
RETURN             number
IS
   v_count            NUMBER(5);
BEGIN
  -- 2) �����ھ��̵�, ���͵��ȣ, ���͵���·� �ش� ������ ���� ����
    SELECT  count(*)
    INTO    v_count
    FROM    stdapply sa 
    WHERE   sa.participant_id = p_participant_id
    and     sa.STDNUM = p_stdnum
    and     apply_chk = p_apply_chk ;
 
   RETURN v_count;  
END applypn;

/
