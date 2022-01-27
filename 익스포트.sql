--------------------------------------------------------
--  ������ ������ - ȭ����-1��-25-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BOARD_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."BOARD_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence CART_ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."CART_ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 461 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ID_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."ID_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 281 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence PAYMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."PAYMENT_SEQ"  MINVALUE 1 MAXVALUE 9999999999 INCREMENT BY 1 START WITH 221 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence QNA_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "SHOP"."QNA_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BOARD
--------------------------------------------------------

  CREATE TABLE "SHOP"."BOARD" 
   (	"BNO" NUMBER, 
	"TITLE" VARCHAR2(200 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"REGDATE" DATE DEFAULT sysdate, 
	"SHOW" CHAR(1 BYTE) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."BOARD"."BNO" IS '�۹�ȣ';
   COMMENT ON COLUMN "SHOP"."BOARD"."TITLE" IS '������';
   COMMENT ON COLUMN "SHOP"."BOARD"."CONTENT" IS '�۳���';
   COMMENT ON COLUMN "SHOP"."BOARD"."REGDATE" IS '�ۼ���¥';
   COMMENT ON COLUMN "SHOP"."BOARD"."SHOW" IS '���⿩��';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "SHOP"."MEMBER" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"MEMBER_NAME" VARCHAR2(20 BYTE), 
	"MEMBER_PWD" VARCHAR2(512 BYTE), 
	"MEMBER_DATE" DATE DEFAULT sysdate, 
	"MEMBER_EMAIL" VARCHAR2(40 BYTE), 
	"MEMBER_PHONE" VARCHAR2(20 BYTE), 
	"MEMBER_SEQ" NUMBER, 
	"MEMBER_ZIPCODE" VARCHAR2(20 BYTE), 
	"MEMBER_FADDR" VARCHAR2(350 BYTE), 
	"MEMBER_LADDR" VARCHAR2(350 BYTE), 
	"ADMIN" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_ID" IS '���̵�';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_NAME" IS '�̸�';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_PWD" IS '��й�ȣ';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_DATE" IS 'ȸ��������';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_EMAIL" IS '����';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_PHONE" IS '����ó';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_SEQ" IS 'ȸ�������ڵ�';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_ZIPCODE" IS '�����ȣ';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_FADDR" IS '�ּ�';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_LADDR" IS '���ּ�';
   COMMENT ON COLUMN "SHOP"."MEMBER"."ADMIN" IS '������';
--------------------------------------------------------
--  DDL for Table PRODUCT_CART
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT_CART" 
   (	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"PRD_ID" VARCHAR2(20 BYTE), 
	"CART_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."MEMBER_ID" IS 'ȸ�����̵�_FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."PRD_ID" IS '��ǰ����_FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."CART_ID" IS '��ٱ��Ϲ�ȣ';
--------------------------------------------------------
--  DDL for Table PRODUCT_INFO
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT_INFO" 
   (	"PRD_BRAND" VARCHAR2(20 BYTE), 
	"PRD_DATE" DATE DEFAULT sysdate, 
	"PRD_NAME" VARCHAR2(100 BYTE), 
	"PRD_ID" VARCHAR2(20 BYTE), 
	"PRD_PRICE" NUMBER DEFAULT 0, 
	"PRD_IMG" VARCHAR2(200 BYTE), 
	"PRD_COLL" VARCHAR2(20 BYTE), 
	"PRD_LNCP" NUMBER DEFAULT 0, 
	"PRD_MDLNO" VARCHAR2(20 BYTE) DEFAULT '-', 
	"PRD_COLOR" VARCHAR2(50 BYTE) DEFAULT '-', 
	"PRD_LNCD" VARCHAR2(20 BYTE) DEFAULT '-', 
	"SIZE250" NUMBER DEFAULT 0, 
	"SIZE255" NUMBER DEFAULT 0, 
	"SIZE260" NUMBER DEFAULT 0, 
	"SIZE265" NUMBER DEFAULT 0, 
	"SIZE270" NUMBER DEFAULT 0, 
	"SIZE275" NUMBER DEFAULT 0, 
	"SIZE280" NUMBER DEFAULT 0, 
	"SIZE285" NUMBER DEFAULT 0, 
	"SIZE290" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_BRAND" IS '��ǰ�귣��';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_DATE" IS '��ǰ�����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_NAME" IS '��ǰ�̸�';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_ID" IS '��ǰ��ȣ';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_PRICE" IS '��ǰ����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_IMG" IS '��ǰ����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_COLL" IS '��ǰ�÷���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_LNCP" IS '��ǰ��ð�';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_MDLNO" IS '��ǰ�𵨸�';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_COLOR" IS '��ǰ�÷�';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_LNCD" IS '��ǰ�����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE250" IS '250������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE255" IS '255������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE260" IS '260������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE265" IS '265������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE270" IS '270������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE275" IS '275������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE280" IS '280������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE285" IS '285������ ���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE290" IS '290������ ���';
--------------------------------------------------------
--  DDL for Table PRODUCT_PAYMENT
--------------------------------------------------------

  CREATE TABLE "SHOP"."PRODUCT_PAYMENT" 
   (	"PAYMENT_ID" NUMBER, 
	"MEMBER_ID" VARCHAR2(20 BYTE), 
	"PRD_ID" VARCHAR2(20 BYTE), 
	"MEMBER_ZIPCODE" VARCHAR2(20 BYTE), 
	"MEMBER_FADDR" VARCHAR2(350 BYTE), 
	"MEMBER_LADDR" VARCHAR2(350 BYTE), 
	"MEMBER_PHONE" VARCHAR2(20 BYTE), 
	"CREDIT_NUMBER" VARCHAR2(20 BYTE), 
	"PAYMENT_DATE" DATE DEFAULT SYSDATE, 
	"PAYMENT_MSG" VARCHAR2(20 BYTE), 
	"PRD_PRICE" NUMBER, 
	"PAYMENT_SIZE" NUMBER, 
	"PAYMENT_RE" VARCHAR2(1 BYTE) DEFAULT 'N', 
	"PAYMENT_RECIEVER" VARCHAR2(20 BYTE), 
	"PAYMENT_DELIVERY" VARCHAR2(1 BYTE) DEFAULT 'N'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_ID" IS '������ȣ';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_ID" IS 'ȸ������';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PRD_ID" IS '��ǰ����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_ZIPCODE" IS '��� �����ȣ';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_FADDR" IS '��� �����ּ�
';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_LADDR" IS '��� ���ּ�';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_PHONE" IS 'ȸ������ó';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."CREDIT_NUMBER" IS '�ſ�ī��';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_DATE" IS '������';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_MSG" IS '��ۿ�û�޽���';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PRD_PRICE" IS '��ǰ����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_SIZE" IS '�ֹ�������
';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_RE" IS '�ı��ۼ�����';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_RECIEVER" IS '������';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_DELIVERY" IS '�߼ۿ���';
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "SHOP"."QNA" 
   (	"QNO" NUMBER, 
	"QTITLE" VARCHAR2(200 BYTE), 
	"QCONTENT" VARCHAR2(2000 BYTE), 
	"WRITER" VARCHAR2(20 BYTE), 
	"ISRE" CHAR(1 BYTE) DEFAULT 'N', 
	"RECONTENT" VARCHAR2(2000 BYTE), 
	"REGDATE" DATE DEFAULT NULL, 
	"REDATE" DATE, 
	"SHOW" CHAR(1 BYTE) DEFAULT 'Y'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."QNA"."QNO" IS '������ȣ';
   COMMENT ON COLUMN "SHOP"."QNA"."QTITLE" IS '��������';
   COMMENT ON COLUMN "SHOP"."QNA"."QCONTENT" IS '��������';
   COMMENT ON COLUMN "SHOP"."QNA"."WRITER" IS '������ID';
   COMMENT ON COLUMN "SHOP"."QNA"."ISRE" IS '�亯����';
   COMMENT ON COLUMN "SHOP"."QNA"."RECONTENT" IS '�亯����';
   COMMENT ON COLUMN "SHOP"."QNA"."REGDATE" IS '��������';
   COMMENT ON COLUMN "SHOP"."QNA"."REDATE" IS '�亯����';
   COMMENT ON COLUMN "SHOP"."QNA"."SHOW" IS '��������';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "SHOP"."REVIEW" 
   (	"REVIEW_ID" NUMBER, 
	"REVIEW_PRD_ID" VARCHAR2(20 BYTE), 
	"REVIEW_WRITER_ID" VARCHAR2(20 BYTE), 
	"REVIEW_CONT" VARCHAR2(400 BYTE), 
	"REVIEW_STAR" NUMBER DEFAULT 5, 
	"REVIEW_DATE" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_ID" IS '�ı��ȣ';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_PRD_ID" IS '��ǰ��ȣ';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_WRITER_ID" IS 'ȸ�����̵�';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_CONT" IS '�ı⳻��';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_STAR" IS '�ı⺰��';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_DATE" IS '�ı��ۼ���';
REM INSERTING into SHOP.BOARD
SET DEFINE OFF;
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (201,'�ֹ� ��� �ȳ�','���ϴ� ��ǰ�� �ֹ��Ϸ���,<br><br>
STEP 1. ��ǰ������ : ������ ���Ͻô� ��ǰ�� ��ٱ��Ͽ� ���� �� �ִ� �ܰ��Դϴ�. ���Ͻô� ��ǰ�� ã���̴ٸ� ��ٱ��Ͽ� �־� �ּ���.<br><br>
STEP 2. ��ٱ��� : ��ٱ��Ͽ� ���� ��ǰ���� Ȯ���ϰ�, ��� ������ �Ͻ� �� �ֽ��ϴ�. �ֹ��ϱ⸦ Ŭ���ϸ� ��ٱ��Ͽ� ��� ��ǰ�� �ֹ��Ͻ� �� �ֽ��ϴ�.<br><br>
STEP 3. �ֹ��� �ۼ� : �ֹ� ���࿡ �ʿ��� ������ �Է��ϴ� �ܰ��Դϴ�. �ֹ� �� ������ ����� ������ �Է�, Ȯ���Ͻ� �� �ְ�, ���������� �����ϴ� �ܰ��Դϴ�.<br><br>
STEP 4. ����Ȯ�� : ���� ���ܿ� �ʿ��� ������ �Է��ϰ� �����ϱ⸦ Ŭ���ϼ���.<br><br>
STEP 5. �ֹ��Ϸ� : ������ ������ Ȯ���Ͻ� �� �ֽ��ϴ�. �ֹ��� �󼼳����� ������� ��Ȳ�� e-mail �� �˷��帳�ϴ�.<br><br>
STEP 6. �ֹ�/��� Ȯ�� : �ֹ��� �Ϸ�� �� ��� ���� ��Ȳ�� [����������] �� �ֹ� ���� ��ȸ���� Ȯ���Ͻ� �� �ֽ��ϴ�. �ֹ� ���¿� ���� ���/��ǰ�� �䱸�Ͻ� �� �ֽ��ϴ�.',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (202,'���ų��� Ȯ�� �ȳ�.','�ֹ��� �Ϸ�Ǹ� �˸������� �ֹ������� �˷��帳�ϴ�.<br>
����, [����������>��������>�ֹ����]���� �ֹ������� Ȯ���Ͻ� �� �ֽ��ϴ�. ',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (203,'���������� Ȯ�� �ȳ�','���������������� �ֹ� ��ȸ, ���ɸ��, ȸ���������� ���� ���񽺸� �̿��Ͻ� �� �ֽ��ϴ�. ',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (204,'�� ���� ��� �� ������ � �ȳ�','LEMS �������Դϴ�.<br>

�� ���� �Ⱓ CJ������� �޹��� ���� ��� ���� �� ������ � �ð� �ȳ��� �帳�ϴ�.<br>
<br>
<br>
<br>
<br>
<br>
[������� �ȳ�]<br>
<br>
1/26(��) 00:00 ���� �����Ϸ� �ǿ� ���Ͽ� �� ���� �������� ��� �����Դϴ�.<br>
1/26(��) 00:00 ���� �����Ϸ� �� ���ʹ� �� ���� �ù� ���� ������ ���� 2/3(��)���� ���������� �߼۵� �� �ֽ��ϴ�.<br>
 
<br>
�� �� ���� ������ 2/3(��) - 2/5(��)�� �߼۵Ǵ� ��ǰ�� �ù� ���� ���� �� �������� ���� ����� ������ �� �ֽ��ϴ�.<br>
<br>
�� Ŀ���� ���� ��ǰ�� �ֹ� �� ������ ����Ǿ�, ����� ���� �� ������ �� �ֽ��ϴ�.<br>
<br>
�� ���õ��� ���񽺴� 1/29(��)���� 2/2(��)���� �������� �ʽ��ϴ�.<br>
<br>
�� �ù�� ���� ��Ȳ�� ���� �ȳ��� ��۱Ⱓ�� ������ �߻��� �� �ֽ��ϴ�.',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (205,'��ǰ ���� ���� ���� �ȳ�','�ȳ��ϼ���.<br>
<br>
LEMS �������Դϴ�.<br>
<br>
<br>
�׻� ���� LEMS�� ������ֽô� ���Բ� ����帳�ϴ�.<br>
<br>
<br> 
2021�� 7�� 1�Ϻ��� ���� �ŷڵ� ���� ��ǰ ������ �����ϱ� ���Ͽ�, ���� �ۼ� �Ⱓ�� �Ʒ��� ���� ������ �����Դϴ�.<br>
<br>
~ 2021�� 6�� 30�� : ��ǰ ���� ���ĺ��� �ۼ� ����<br>
<br>
2021�� 7�� 1�� ~ : ��ۿϷ� ���� ~ 1��<br>
<br>
��ǰ����� ��ǰ ���������� [���� �ۼ��ϱ�], �Ǵ� [���������� >Ȱ������>��ǰ����>���� ��ǰ���� ����]�� ���� �ۼ��Ͻ� �� �ֽ��ϴ�.<br> 
<br>
�����ε� ����Ű���� ���Ե鲲 ���� ���� ���񽺸� ������ �� �ֵ��� ����ϰڽ��ϴ�.<br>
<br>
�����մϴ�.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (206,'��� �� ��ǰ���� �ȳ�','�ȳ��ϼ���. <br>
<br>
LEMS �������Դϴ�.<br>
<br>
�ù�� �ľ����� ���� �Ʒ��� ���� ��� �� ��ǰ�Ⱦ� ������ �߻��ϰ� �ֽ��ϴ�.<br>
<br>
���  : �ֹ��Ϸκ��� 3�� �̳� (�����, ������ ����) �� �ֹ��Ϸκ��� 4~5�� �̳� (�����, ������ ����)<br>
��ǰ : ��ǰ�Ϸκ��� 7�� �̳� (�����, ������ ����) �� ��ǰ�Ϸκ��� �뷫 10�� �̳� (�����, ������ ����)<br>
�� ��� ���� ���� �߻� ������ ���� �߰� ������ �߻��� �� �ֽ��ϴ�.<br>  
<br>
LEMS �̿뿡 ������ �帰 �� ���� ��Ź�帮��, �̸� ���� ���� ���Կ� ������ ��ǰ�� �����ϰ� ��۵� �� �ֵ��� �ּ��� ���ϰڽ��ϴ�.<br>
<br>
�ٽ� �ѹ� ���� ���� ��Ź�帳�ϴ�.',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (207,'�������� ������ � �ȳ�','�ȳ��ϼ���. LEMS�Դϴ�.<br><br>
�������� ������ �޹����� �ȳ��� �帳�ϴ�.<br><br>
�޹� ���� <br>
2021�� 12�� 25�� (��) - 26�� (��)<br>
2022�� 1�� 1�� (��) - 2�� (��)<br>
* 1:1 ���Ǵ� �޹� ���� �߿��� ��� �����ϸ�, ���� �Ⱓ ���� �� ���������� ó���˴ϴ�.<br>
�����մϴ�.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (208,'�˼� ���� ���� �ȳ� (2.3  ü�� �ŷ�����)','�ȳ��ϼ���. LEMS�Դϴ�.<br>
<br>
�� ���� ���� ������ ���� �˼� ������ �Ϻ� �׸��� ����� �����Դϴ�.<br>
LEMS�� �ŷ� ����� �� ��Ȱ�� �ŷ��� ���� ���� �ִ� �˼� ���� Ȯ���� ���Ͽ�, �Ǹ��ڿ� ������ ����� �ǰ��� ��û�ϰ� �����ϰ� �ֽ��ϴ�.<br><br>
���� ī�װ� | ����Ŀ��<br>
�˼� ���� ������ | 11�� 29��<br>
�˼� ���� ������ | 2�� 3��00�� 00�� ü�� �ŷ�����<br>
�˼� ������ ���������� ������Ʈ �ǰ� �ֽ��ϴ�.<br>
�ŷ��� �ռ� �� �ֽ� �˼� ������ Ȯ�� �Ͻð� ���� ��Ź�帳�ϴ�.<br>
�����մϴ�.<br>
',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (209,'iOS 13 �ű԰ŷ� �ߴ� ���� �ȳ�','�ȳ��ϼ���. LEMS �Դϴ�.<br><br>
���� ������ �������� �ŷ� ��� ���Ͽ� iOS �������� ���� ������ �ߴܵ� �����Դϴ�.<br><br>
�� ��� ���� iOS 13<br>
�� �ߴ� ���� �ű԰ŷ� �Ұ�<br>
�� �ߴ� �Ͻ� 2022.01.01 00:00:00 ����<br>
�ش��ϴ� ȸ���Բ����� OS ���׷��̵� �� �� �ֽŹ��� ��ġ�� ��Ź�帳�ϴ�.<br>
�����մϴ�.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (210,'���� ���� �ȳ�','�ȳ��ϼ���. LEMS �Դϴ�.<br><br>
���� ������� ���� ��ü�� ��ַ� ���� �ŷ� ü�� ���� ������ �������� ����Ǵ� �� ���������� ������ �߻��ϰ� ������ Ȯ���Ͽ����ϴ�.<br>
����ȭ�� ���Ͽ� ���� ��� ���̸� ���� �Ϸ� �� �ٽ� �����帮���� �ϰڽ��ϴ�.<br>
���Ե鲲 ������ ��� ���� �˼��մϴ�.<br>
�����մϴ�.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (211,'���� ���� ���� �ȳ�','�ȳ��ϼ���. LEMS �Դϴ�.<br><br>
������� ���� ��ü�� ��ַ� ���� ������ ���� ������ ��� �����Ǿ�����, �ŷ��� ü����� ���� ������ �������� ��� ��� ó���ϵ��� �ϰڽ��ϴ�.<br>
���� ������ ������ �߻��� ��� ���Բ��� ������ ���� �������� 10�� ����Ʈ�� ������ �����Դϴ�.<br>
������ �������� ���Ե鲲 �ٽ� �� �� ����� ������ ���ص帳�ϴ�.<br>
�� ���� ���񽺷� �����ϰڽ��ϴ�.<br>
�����մϴ�.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (217,'��������ȳ�-����','�����̶� ����� �����˴ϴ�.-����',to_date('22/01/25','RR/MM/DD'),'N');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (168,'�ù�� �ľ����� ���� ������� �ȳ�','�ȳ��ϼ���, LEMS ������ �Դϴ�.<br><br>
LEMS�� CJ ��������� ���� �ֹ��Ͻ� ��ǰ�� ����ϰ� ������, ���� CJ ������� �ù�� �ľ��� ���ȭ�� ���Ͽ� �Ϻ� ������ ��ǰ ��� �� ��ǰ ��ǰ�� ���Ű� ���ѵǰ� �ֽ��ϴ�.<br><br>
�ľ����� ���� ��� �Ұ� �������� Ȯ�εǴ� �ֹ� ���� ��� ���������� ��ü�� �ù踦 ���� �߼��� ����ǰ� ������, �ù���� ��� ����ȭ�Ǳ� ������ ��� �� ���Ű� ������ �� �ִ� �� ���� ��Ź�帳�ϴ�.<br><br>
�����ǻ���<br>
*�ֹ� �Ϸ� �� ����� ������ �����Ƿ�, �ù�� �ľ� ���� ������ ���� Ȯ�� �� ������� �����Ͻþ� �ֹ� �Ϸ����ֽñ� ���� �帳�ϴ�.<br>
*��� ���������� �̷�������� �ľ��� �������� �ù� �帧�� �����ְų� �������ͷ� ��ǰ�� ȸ�۵Ǵ� ��찡 �߻��ǰ� �־� ��ۿ� �߰� ������ �ҿ�� �� �ֽ��ϴ�.<br>
*��ü�� �ù�� �߼۵� �ֹ� ���� ��� ������ ���� ������ ���� �ȳ��帮�� �ֽ��ϴ�. ��ü�� �߼� ���� ��� [����������]���� �����ȸ�� �Ұ��ϹǷ�, �����Ȳ�� ���� ���ǻ����� ������ ��� LEMS ������(010-1234-5678)�� ���� �ֽñ� �ٶ��ϴ�.<br>
*��ü�� �ù�� �߼۵� �ֹ� ���� ��ǰ ������ ������ ������ ���� ��ǰ ������ �ֽñ� ��Ź�帳�ϴ�. [����������>���/��ǰ]���� ��ǰ �����Ͻ� ���, ��ǰ ���ſ� ��ǰ�� ������ �� �ֽ��ϴ�.<br>
*�ù�� �ľ� �������� Ȯ�εǴ� �������� ��ǰ ������ �Ͻô� ���, LEMS ������ ������ ���� ��ǰ ���� ��Ź�帳�ϴ�.<br>
*��ǰ�� ���ó�� ����, �ֹ����� ������� �ľ����� ���� ��� ���� �������� Ȯ�εǴ� ��� �ֹ��� ��ҵ� �� �ֽ��ϴ�.<br>',to_date('22/01/12','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (212,'��ۺ� ���� �ȳ�','�ȳ��ϼ���. LEMS �Դϴ�.<br><br>
2022�⿡�� ��ۺ� ���� �̺�Ʈ�� ��� ����˴ϴ�.<br>
�� �Ⱓ <br>
����(���� ������ �����������)<br><br>
�ݳ���<br>
���� �� ��ۺ� ����<br><br>
�����մϴ�.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
REM INSERTING into SHOP.MEMBER
SET DEFINE OFF;
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,ADMIN) values ('Administrator','������','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('18/01/01','RR/MM/DD'),'0','0',0,'123','123','123','Y');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,ADMIN) values ('123','123','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('19/01/04','RR/MM/DD'),'lemslems@naver.com','010-5555-4444',121,'07909','���� ��õ�� ���ΰ�����55�� 3(�ſ���, ��������)','11ȣ','N');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,ADMIN) values ('delete','Ż����ID','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('22/01/25','RR/MM/DD'),'lemslemss@naver.com','010-1111-1111',260,'04709','���� ������ ������ 35','11ȣ','N');
REM INSERTING into SHOP.PRODUCT_CART
SET DEFINE OFF;
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,CART_ID) values ('123','NBNB327008',428);
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,CART_ID) values ('123','NJ002',429);
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,CART_ID) values ('Administrator','NS002',361);
REM INSERTING into SHOP.PRODUCT_INFO
SET DEFINE OFF;
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA ���̺�','NBNB992002',274000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA ���̺�.png','New Balance 992',259000,'M992GG','NAVY/GREY','20/07/11',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA �� �׷���','NBNB992003',442000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA �� �׷���.png','New Balance 992',259000,'M992EB','BLACK/GREY','21/06/15',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA ź','NBNB992004',380000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA ź.png','New Balance 992',259000,'M992TN','TAN/TAN/WHITE','20/03/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA Ʈ���� ��','NBNB992005',294000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA Ʈ���� ��.png','New Balance 992',259000,'M992EA','BLACK','21/06/15',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA ȭ��Ʈ ���̺�','NBNB992006',210000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA ȭ��Ʈ ���̺�.png','New Balance 992',208700,'M992EC','WHITE/NAVY','21/02/17',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA ȭ��Ʈ �ǹ�','NBNB992007',315000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA ȭ��Ʈ �ǹ�.png','New Balance 992',259000,'M992NC','WHITE/SILVER','20/01/07',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� x DTLR 992 ���̵� �� USA �ٽ�Ƽ','NBNB992008',275000,'resources/img/product/New Balance/New Balance 992/���߶��� x DTLR 992 ���̵� �� USA �ٽ�Ƽ.png','New Balance 992',220600,'M992DL','GREY/BLUE-RED-YELLOW','21/09/03',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 993 ���̵� �� USA �׷���','NBNB993001',292000,'resources/img/product/New Balance/New Balance 993/���߶��� 993 ���̵� �� USA �׷���.png','New Balance 993',184900,'MR993GL','GREY/WHITE','18/08/21',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 993 ���̵� �� USA ���̺�','NBNB993002',245000,'resources/img/product/New Balance/New Balance 993/���߶��� 993 ���̵� �� USA ���̺�.png','New Balance 993',209000,'WR993NV','NAVY','18/08/20',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 993 ���̵� �� USA �и��͸� �׸�','NBNB993003',469000,'resources/img/product/New Balance/New Balance 993/���߶��� 993 ���̵� �� USA �и��͸� �׸�.png','New Balance 993',208700,'MR993MG','MILITARY GREEN/MILITARY GREEN','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 993 ���̵� �� USA ��','NBNB993004',390000,'resources/img/product/New Balance/New Balance 993/���߶��� 993 ���̵� �� USA ��.png','New Balance 993',184900,'MR993BK','BLACK/WHITE','18/08/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 993 ���̵� �� USA ��Ƽ�� �ε��','NBNB993005',248000,'resources/img/product/New Balance/New Balance 993/���߶��� 993 ���̵� �� USA ��Ƽ�� �ε��.png','New Balance 993',208700,'MR993VI','VINTAGE INDIGO/GREY','19/11/21',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 ȭ��Ʈ �ǹ� ��','NBNB327008',125000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 ȭ��Ʈ �ǹ� ��.png','New Balance 327',109000,'MS327STB','WHITE/SILVER/GUM','21/12/31',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 992 ���̵� �� USA �׷���','NBNB992001',395000,'resources/img/product/New Balance/New Balance 992/���߶��� 992 ���̵� �� USA �׷���.png','New Balance 992',259000,'M992GR','GREY','20/04/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 993 ���̵� �� USA ��ũƽ','NBNB993006',216000,'resources/img/product/New Balance/New Balance 993/���߶��� 993 ���̵� �� USA ��ũƽ.png','New Balance 993',220600,'WR993VI','ARCTIC/GREY','21/09/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� x ���� ���� ���� 993 ���̵� �� USA ����','NBNB993007',350000,'resources/img/product/New Balance/New Balance 993/���߶��� x ���� ���� ���� 993 ���̵� �� USA ����.png','New Balance 993',238500,'MR993ALD','BROWN/GREEN','21/11/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� x ���� ���� ���� 993 ���̵� �� USA ����','NBNB993008',640000,'resources/img/product/New Balance/New Balance 993/���߶��� x ���� ���� ���� 993 ���̵� �� USA ����.png','New Balance 993',238500,'MR993ALL','TAUPE/BLUE','21/11/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ���ø�ī �׷���Ƽ ����Ŀ�� - ���� ����','MMR001',480000,'resources/img/product/Maison Margiela/Replica/���� ���������� ���ø�ī �׷���Ƽ ����Ŀ�� - ���� ����.png','Replica',614599,'S57WS0236P2803H4108','WHITE/GREY/BLACK','19/06/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ���ø�ī �׷���Ƽ ����Ŀ�� ȭ��Ʈ','MMR002',330000,'resources/img/product/Maison Margiela/Replica/���� ���������� ���ø�ī �׷���Ƽ ����Ŀ�� ȭ��Ʈ.png','Replica',0,'S57WS0355P3568H8283','WHITE','-',0,2,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ���ø�ī ������Ʈ ���� ����Ŀ�� ��','MMR003',270000,'resources/img/product/Maison Margiela/Replica/���� ���������� ���ø�ī ������Ʈ ���� ����Ŀ�� ��.png','Replica',817100,'S57WS0264P0046H1953','BLACK','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ���ø�ī ����Ʈ ��� ����Ŀ�� ��','MMR004',324000,'resources/img/product/Maison Margiela/Replica/���� ���������� ���ø�ī ����Ʈ ��� ����Ŀ�� ��.png','Replica',755810,'S57WS0240P1892963','BLACK','-',0,2,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ���ø�ī ����Ʈ ��� ����Ŀ��','MMR005',400000,'resources/img/product/Maison Margiela/Replica/���� ���������� ���ø�ī ����Ʈ ��� ����Ŀ��.png','Replica',755810,'S57WS0240P1892961','WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ī����Ų ���ø�ī ����Ŀ ȭ��Ʈ','MMR006',475000,'resources/img/product/Maison Margiela/Replica/���� ���������� ī����Ų ���ø�ī ����Ŀ ȭ��Ʈ.png','Replica',599595,'S57WS0236P1897101','WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ī����Ų ���ø�ī ����Ŀ�� īŰ','MMR007',310000,'resources/img/product/Maison Margiela/Replica/���� ���������� ī����Ų ���ø�ī ����Ŀ�� īŰ.png','Replica',599595,'S57WS0236P1895T2076','KHAKI','-',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� ī����Ų ���ø�ī ����Ŀ��','MMR008',463000,'resources/img/product/Maison Margiela/Replica/���� ���������� ī����Ų ���ø�ī ����Ŀ��.png','Replica',590500,'S57WS0236P1895101','WHITE/GREY','-',0,0,1,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� �ο� ��','MMT001',374000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� �ο� ��.png','Tabi',647880,'S57WS0252P1875T8013','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� �ο� ��Ƽġ MM �ΰ� ��','MMT002',300000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� �ο� ��Ƽġ MM �ΰ� ��.png','Tabi',0,'S57WS0400P4080H8650','BLACK/ECRU','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� �ο� ȭ��Ʈ','MMT003',179000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� �ο� ȭ��Ʈ.png','Tabi',647880,'S57WS0252P1875T1003','WHITE','-',0,3,2,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� �ǹ� ���� �����̵� ����Ŀ�� ȭ��Ʈ','MMT004',179000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� �ǹ� ���� �����̵� ����Ŀ�� ȭ��Ʈ.png','Tabi',757500,'S57WS0252P2519H1744','WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'�߷��þư� Ʈ���� S �׷��� ���� ��� 2018 ���̽�','BTP001',1090000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S �׷��� ���� ��� 2018 ���̽�.png','Triple S',1133200,'512175W09O24365','GREY/RED-BLUE','17/09/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ �׸� ȭ��Ʈ ��� 2019','BTS002',649000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ �׸� ȭ��Ʈ ��� 2019.png','Track Sneaker',924500,'542023W1GB11097','GREEN/WHITE-BLUE','19/01/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ �� ���� 2019','BTS003',639000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ �� ���� 2019.png','Track Sneaker',1163100,'542023W1GB61002','BLACK/RED','-',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ �׷��� ȭ��Ʈ 2019','BTS001',850000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ �׷��� ȭ��Ʈ 2019.png','Track Sneaker',1067600,'542023W3AC11090','GREY/GREY-WHITE','19/01/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ �� ȭ��Ʈ','BTS004',810000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ �� ȭ��Ʈ.png','Track Sneaker',1067600,'542023W3AC11090','BLACK/WHITE','19/01/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/21','RR/MM/DD'),'���� 1 �ο� ���� ���� �׷���','NJ009',500000,'resources/img/product/Nike/Jordan1/���� 1 �ο� ���� ���� �׷���.png','Jordan1',179000,'DD9315-002','WOLF GREY/BLACK-PHOTON DUST-WHITE','22/01/14',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ ȭ��Ʈ 2019','BTS007',700000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ ȭ��Ʈ 2019.png','Track Sneaker',996100,'542023W1GB19000','WHITE/WHITE','19/01/02',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/25','RR/MM/DD'),'����Ű x �ǽ����̳ʽ��� ����1 ȭ��Ʈ','NP004',400000,'resources/img/product/Nike/Peaceminusone/����Ű x �ǽ����̳ʽ��� ����1 ȭ��Ʈ.png','Peaceminusone',219000,'DH2482-100','WHITE/WHITE-WHITE','21/12/03',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/21','RR/MM/DD'),'���� 1 �ο� ���� ��ī��','NJ010',600000,'resources/img/product/Nike/Jordan1/���� 1 �ο� ���� ��ī��.png','Jordan1',179000,'DD9315-600','VARSITY RED/BLACK-WHITE','22/01/14',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ �ǹ� �׿� ���ο�','BTS005',579000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ �ǹ� �׿� ���ο�.png','Track Sneaker',1270000,'542023W1GC11230','SILVER/GREEN','-',3,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ Ʈ���� ��','BTS006',889000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ Ʈ���� ��.png','Track Sneaker',1163100,'542023W1GB11000','BLACK, ','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ�� ����Ŀ ȭ��Ʈ ������ 2019','BTS008',1050000,'resources/img/product/Balenciaga/Track Sneaker/�߷��þư� Ʈ�� ����Ŀ ȭ��Ʈ ������ 2019.png','Track Sneaker',1067600,'542023W1GB19059','WHITE/ORANGE','19/07/07',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S ���� �� 2018','BTP002',590000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S ���� �� 2018.png','Triple S',1013900,'516440W09O76576','RED/BLACK','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S �� ���ο� ȭ��Ʈ','BTP003',659000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S �� ���ο� ȭ��Ʈ.png','Triple S',1133200,'534162W09OG1087','BLACK/YELLOW','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S Ʈ���̳� �׿� ���ο� 2018','BTP004',700000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S Ʈ���̳� �׿� ���ο� 2018.png','Triple S',1133200,'512175W09O47320','YELLOW','18/02/16',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S Ʈ���̳� �׿� ��ũ','BTP005',500000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S Ʈ���̳� �׿� ��ũ.png','Triple S',1133200,'517334W09O65671','NEON PINK','-',0,0,0,0,0,0,0,0,0);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S Ʈ���̳� ȭ��Ʈ ���̺� ����','BTP006',820000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S Ʈ���̳� ȭ��Ʈ ���̺� ����.png','Triple S',1067600,'541641W09OF9095','WHITE/NAVY/PURPLE','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S ȭ��Ʈ �׸� ��','BTP007',750000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S ȭ��Ʈ �׸� ��.png','Triple S',1133200,'536737W09O69063','WHITE/GREEN FLUO/BLACK','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'�߷��þư� Ʈ���� S ȭ��Ʈ Ŭ���� �� 2019','BTP008',1150000,'resources/img/product/Balenciaga/Triple S/�߷��þư� Ʈ���� S ȭ��Ʈ Ŭ���� �� 2019.png','Triple S',1189700,'544351W09E19000','WHITE','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� ����Ʈ ��� ����Ŀ�� ��','MMT005',390000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� ����Ʈ ��� ����Ŀ�� ��.png','Tabi',635800,'S37WS0495P2347T8013','BLACK','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� ���� ��','MMT006',320000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� ���� ��.png','Tabi',700240,'S57WS0253P1875T8013','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� ���� ��Ƽġ MM �ΰ� ��','MMT007',335000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� ���� ��Ƽġ MM �ΰ� ��.png','Tabi',0,'S57WS0399P4080H8650','BLACK/ECRU','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'���� ���������� Ÿ�� ���� ȭ��Ʈ','MMT008',300000,'resources/img/product/Maison Margiela/Tabi/���� ���������� Ÿ�� ���� ȭ��Ʈ.png','Tabi',700240,'S57WS0253P1875T1003','WHITE','20/07/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� �� ȭ��Ʈ 2021','BST005',723000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� �� ȭ��Ʈ 2021.png','Speed Trainer',948300,'645056W2DBQ1015','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� �� ���� �ΰ� ����Ʈ �� 2020','BST006',750000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� �� ���� �ΰ� ����Ʈ �� 2020.png','Speed Trainer',0,'597551W17121015','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� �� �׷���','BST007',500000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� �� �׷���.png','Speed Trainer',0,'525712W05G01705','PEARL GREY','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� ��ũ','BST008',440000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� ��ũ.png','Speed Trainer',0,'587280W17215000','PINK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'����Ű x ��ī�� x ���Ŀ�� LD���� ����Ʈ ���� �� �ξ�','NS001',283000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x ���Ŀ�� LD���� ����Ʈ ���� �� �ξ�.png','Sacai',209000,'DJ4877-600','-','21/10/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'����Ű x ��ī�� x ���Ŀ�� LD���� �̵峪�� �����罺 ���Ϲ���Ƽ ����','NS002',315000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x ���Ŀ�� LD���� �̵峪�� �����罺 ���Ϲ���Ƽ ����.png','Sacai',209000,'DJ4877-300','MIDNIGHT SPRUCE/UNIVERSITY RED','21/10/29',0,3,1,0,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'����Ű x ��ī�� x ���Ŀ�� LD���� �� �����Ʈ ��Ʈ��','NS003',343000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x ���Ŀ�� LD���� �� �����Ʈ ��Ʈ��.png','Sacai',209000,'DJ4877-001','BLACK/SAIL/DARK GREY/BRIGHT CITRON','21/10/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'���� 1 ��Ʈ�� ���� OG �� ��ī','NJ001',721000,'resources/img/product/Nike/Jordan1/���� 1 ��Ʈ�� ���� OG �� ��ī.png','Jordan1',199000,'555088-105','SAIL/DARK MOCHA-BLACK-BLACK','20/11/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/06','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 �� ȭ��Ʈ','AY001',440000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 �� ȭ��Ʈ.png','Yeezy 500',238500,'FV3573','BONE WHITE','19/08/25',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x ��ī�� x Ŭ�� LD���� ������ ������','NS004',227000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x Ŭ�� LD���� ������ ������.png','Sacai',209000,'DH1347-100','ET/ORANGE BLAZE-DEEP RED-GREEN BEAN','21/09/11',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x ��ī�� x Ŭ�� LD���� �� �׷���','NS005',299000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x Ŭ�� LD���� �� �׷���.png','Sacai',219000,'DH3114-001','NEUTRAL GREY/OBSIDIAN-COOL GREY','21/10/09',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x ��ī�� x ����׸�Ʈ LD���� ����Ʈ ����ũ �׷���','NS006',627000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x ����׸�Ʈ LD���� ����Ʈ ����ũ �׷���.png','Sacai',209000,'DH2684-001','LT SMOKE GREY/WHITE-BLACK','21/08/24',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x ��ī�� x ����׸�Ʈ LD���� ��ū�� ���','NS007',438000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� x ����׸�Ʈ LD���� ��ū�� ���.png','Sacai',209000,'DH2684-400','BLUE VOID/OBSIDIAN/WHITE/WHITE','21/08/24',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x ��ī�� �����ۿ��� �� ȭ��Ʈ','NS008',1435000,'resources/img/product/Nike/Sacai/����Ű x ��ī�� �����ۿ��� �� ȭ��Ʈ.png','Sacai',219000,'CV1363-001','BLACK/SUMMIT WHITE/PURE PLATINUM','20/11/06',2,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x �ǽ����̳ʽ��� �������� 1 �ο� �Ķ������ - �ѱ� ����','NP001',2450000,'resources/img/product/Nike/Peaceminusone/����Ű x �ǽ����̳ʽ��� �������� 1 �ο� �Ķ������ - �ѱ� ����.png','Peaceminusone',219000,'AQ3692-002','BLACK','19/11/22',0,3,2,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x �ǽ����̳ʽ��� �������� 1 �ο� �Ķ������ 2.0','NP002',784000,'resources/img/product/Nike/Peaceminusone/����Ű x �ǽ����̳ʽ��� �������� 1 �ο� �Ķ������ 2.0.png','Peaceminusone',219000,'DD3223-100','WHITE/BLACK-WHITE','20/11/25',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'����Ű x �ǽ����̳ʽ��� �������� 1 �ο� �Ķ������','NP003',781000,'resources/img/product/Nike/Peaceminusone/����Ű x �ǽ����̳ʽ��� �������� 1 �ο� �Ķ������.png','Peaceminusone',219000,'AQ3692-001','BLACK/WHITE','19/11/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 ��Ʈ�� ���� OG ������ 2.0','NJ002',335000,'resources/img/product/Nike/Jordan1/���� 1 ��Ʈ�� ���� OG ������ 2.0.png','Jordan1',199000,'555088-035','BLACK/LIGHT SMOKE GREY-WHITE','21/05/15',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 ��Ʈ�� ���� OG ���Ϲ���Ƽ ���','NJ003',425000,'resources/img/product/Nike/Jordan1/���� 1 ��Ʈ�� ���� OG ���Ϲ���Ƽ ���.png','Jordan1',199000,'555088-134','WHITE/UNIVERSITY BLUE/BLACK','21/03/06',0,2,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 ��Ʈ�� ���� OG ������Ʈ �극��','NJ004',314000,'resources/img/product/Nike/Jordan1/���� 1 ��Ʈ�� ���� OG ������Ʈ �극��.png','Jordan1',199000,'555088-063','BLACK/VARSITY RED-WHITE','21/12/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 �ο� OG ��Ÿ�ǽ�','NJ005',346000,'resources/img/product/Nike/Jordan1/���� 1 �ο� OG ��Ÿ�ǽ�.png','Jordan1',159000,'CZ0790-801','STARFISH/WHITE/BLACK','21/08/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 �ο� ��ũ ƿ','NJ006',255000,'resources/img/product/Nike/Jordan1/���� 1 �ο� ��ũ ƿ.png','Jordan1',119000,'553558-411','DARK TEAL/BLACK-WHITE','21/12/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 �ο� �� ��ƼŬ �׷���','NJ007',305000,'resources/img/product/Nike/Jordan1/���� 1 �ο� �� ��ƼŬ �׷���.png','Jordan1',119000,'553558-040','BLACK/PARTICLE GREY-WHITE','21/06/29',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'���� 1 �ο� ȭ��Ʈ ���� �׷���','NJ008',378000,'resources/img/product/Nike/Jordan1/���� 1 �ο� ȭ��Ʈ ���� �׷���.png','Jordan1',119000,'DC0774-105','WHITE/WOLF GREY/ALUMINUM','21/07/17',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 ����Ʈ ����','AY002',390000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 ����Ʈ ����.png','Yeezy 500',238500,'FW2656','SOFT VISION','19/11/03',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 ���۹� ���ο�','AY003',360000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 ���۹� ���ο�.png','Yeezy 500',238500,'DB2966','SUPER MOON YELLOW','18/06/10',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 ����','AY004',310000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 ����.png','Yeezy 500',238500,'FW4839','STONE','19/11/24',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 �ֽ� �׷���','AY005',304000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 �ֽ� �׷���.png','Yeezy 500',269000,'GX3607','ASH GREY','21/12/04',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 ��ƿ��Ƽ ��','AY006',465000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 ��ƿ��Ƽ ��.png','Yeezy 500',249000,'F36640','UTILITY BLACK','20/11/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 Ŭ���� ����','AY007',270000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 Ŭ���� ����.png','Yeezy 500',249000,'GX3606','CLAY BROWN','21/10/30',0,3,3,3,3,2,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� 500 ���� ����Ʈ','AY008',350000,'resources/img/product/Adidas/Yeezy 500/�Ƶ�ٽ� ���� 500 ���� ����Ʈ.png','Yeezy 500',249000,'GX3605','TAUPE LIGHT','21/06/05',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �ͽ� ��','AYB350001',287000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �ͽ� ��.png','Yeezy Boost350',299000,'GW3774','MX ROCK','21/12/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �ͽ� ��Ʈ','AYB350002',241000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �ͽ� ��Ʈ.png','Yeezy Boost350',289000,'GW3773','MX OAT','21/10/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ���簡 - ���÷�Ƽ��','AYB350003',421000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ���簡 - ���÷�Ƽ��.png','Yeezy Boost350',329000,'GW1229','BELUGA RF','21/12/18',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ��� ƾƮ','AYB350005',325000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ��� ƾƮ.png','Yeezy Boost350',299000,'B37571','BLUE TINT','17/12/17',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �ÿ�','AYB350006',300000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �ÿ�.png','Yeezy Boost350',289000,'FZ1267','ZYON','20/07/18',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ���� - ���÷�Ƽ��','AYB350007',289000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ���� - ���÷�Ƽ��.png','Yeezy Boost350',289000,'FW5190','YECHEIL','19/12/21',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ũ��  Ʈ���� ȭ��Ʈ','AYB350008',407000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 ũ��  Ʈ���� ȭ��Ʈ.png','Yeezy Boost350',262400,'CP9366','CREAM WHITE','17/04/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 MNVN Ʈ���� ��','AYB700001',360000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 MNVN Ʈ���� ��.png','Yeezy Boost700',289000,'FV4440','BLACK','20/05/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 ���','AYB700002',338000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 ���.png','Yeezy Boost700',309000,'GZ0724','MAUVE','21/09/25',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 ����ƽ','AYB700003',800000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 ����ƽ.png','Yeezy Boost700',399000,'EF2829','STATIC','18/12/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 �̳ʽþ�','AYB700004',600000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 �̳ʽþ�.png','Yeezy Boost700',399000,'FW2549','INERTIA','19/09/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 ũ��','AYB700005',484000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 V2 ũ��.png','Yeezy Boost700',309000,'GY7924','CREAM','21/03/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 �Ƴ��α�','AYB700006',444000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 �Ƴ��α�.png','Yeezy Boost700',357800,'EG7596','ANALOG','19/04/28',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 ���̺� ���� �ָ��� �׷���','AYB700007',600000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 ���̺� ���� �ָ��� �׷���.png','Yeezy Boost700',357800,'B75571','SOLID GREY','17/11/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 700 ���̵� ���ָ�','AYB700008',250000,'resources/img/product/Adidas/Yeezy Boost700/�Ƶ�ٽ� ���� �ν�Ʈ 700 ���̵� ���ָ�.png','Yeezy Boost700',309000,'GZ2002','FADE AZUR','21/11/27',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� MXT �� �׷���','AYFRNNR001',300000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� MXT �� �׷���.png','Yeezy Foam RNNR',99000,'GV7904','MOON GRAY','21/03/26',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� �̳׶� ���','AYFRNNR002',350000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� �̳׶� ���.png','Yeezy Foam RNNR',99000,'GV7903','MINERAL BLUE','21/05/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� �ͽ� ���� �׷���','AYFRNNR003',240000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� �ͽ� ���� �׷���.png','Yeezy Foam RNNR',109000,'GY3969','MX SAND GREY','21/12/11',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� �ͽ� ũ�� Ŭ����','AYFRNNR004',459000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� �ͽ� ũ�� Ŭ����.png','Yeezy Foam RNNR',99000,'GX8774','MX CREAM CLAY','21/08/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� ���и���','AYFRNNR005',209000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� ���и���.png','Yeezy Foam RNNR',99000,'GW3355','VERMILION','21/10/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� ����','AYFRNNR006',470000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� ����.png','Yeezy Foam RNNR',99000,'FY4567','SAND','21/03/26',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� �ƶ��','AYFRNNR007',680000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� �ƶ��.png','Yeezy Foam RNNR',89400,'G55486','WHITE','20/06/26',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �� ���� 2020','AYB350004',533000,'resources/img/product/Adidas/Yeezy Boost350/�Ƶ�ٽ� ���� �ν�Ʈ 350 V2 �� ���� 2020.png','Yeezy Boost350',289000,'CP9652','CORE BLACK','20/12/05',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'�Ƶ�ٽ� ���� �� ���� ��Ŀ','AYFRNNR008',200000,'resources/img/product/Adidas/Yeezy Foam RNNR/�Ƶ�ٽ� ���� �� ���� ��Ŀ.png','Yeezy Foam RNNR',99000,'GW3354','OCHRE','21/09/18',0,3,2,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'�߷��þư� ���ǵ� 2.0 Ʈ���̳� �� ��Ʈ ȭ��Ʈ �� 2021','BST001',900000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� 2.0 Ʈ���̳� �� ��Ʈ ȭ��Ʈ �� 2021.png','Speed Trainer',1255000,'617239W2DB21015','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� �� 2021','BST002',620000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� �� 2021.png','Speed Trainer',1040000,'645056W2DBP1013','BLACK','-',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� �� ���� 2017','BST003',680000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� �� ���� 2017.png','Speed Trainer',948300,'530351W05G01000','BLACK','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'�߷��þư� ���ǵ� Ʈ���̳� �� ���','BST004',619000,'resources/img/product/Balenciaga/Speed Trainer/�߷��þư� ���ǵ� Ʈ���̳� �� ���.png','Speed Trainer',0,'587286W17031071','BLACK/BLUE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 �׷���','NBNB327001',139000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 �׷���.png','New Balance 327',139000,'MS327LAB','GREY/WHITE','20/05/09',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 �� �׷��� ��','NBNB327002',92000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 �� �׷��� ��.png','New Balance 327',109000,'MS327STC','BLACK/GREY/GUM','21/12/31',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 �� �׷���','NBNB327003',128000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 �� �׷���.png','New Balance 327',109000,'MS327BD','BLACK/GREY/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 ��','NBNB327004',119000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 ��.png','New Balance 327',109000,'MS327CPG','BLACK/MUNSELL WHITE','20/08/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 ��������','NBNB327005',122000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 ��������.png','New Balance 327',109000,'MS327HR1','TIMBERWOLF/GREEN','21/09/09',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 ȭ��Ʈ ����','NBNB327006',224000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 ȭ��Ʈ ����.png','New Balance 327',109000,'WS327SFD','MUNSELL WHITE/MOONBEAM','20/08/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'���߶��� 327 ȭ��Ʈ ��','NBNB327007',160000,'resources/img/product/New Balance/New Balance 327/���߶��� 327 ȭ��Ʈ ��.png','New Balance 327',109000,'MS327FE','SEA SALT/BLACK','21/01/15',0,3,3,3,3,3,3,3,3);
REM INSERTING into SHOP.PRODUCT_PAYMENT
SET DEFINE OFF;
REM INSERTING into SHOP.QNA
SET DEFINE OFF;
REM INSERTING into SHOP.REVIEW
SET DEFINE OFF;
Insert into SHOP.REVIEW (REVIEW_ID,REVIEW_PRD_ID,REVIEW_WRITER_ID,REVIEW_CONT,REVIEW_STAR,REVIEW_DATE) values (200,'MMR008','123','good!',1,to_date('22/01/25','RR/MM/DD'));
Insert into SHOP.REVIEW (REVIEW_ID,REVIEW_PRD_ID,REVIEW_WRITER_ID,REVIEW_CONT,REVIEW_STAR,REVIEW_DATE) values (204,'NS008','123','Good!',4,to_date('22/01/24','RR/MM/DD'));
Insert into SHOP.REVIEW (REVIEW_ID,REVIEW_PRD_ID,REVIEW_WRITER_ID,REVIEW_CONT,REVIEW_STAR,REVIEW_DATE) values (203,'NP004','123','great!',4,to_date('22/01/24','RR/MM/DD'));
Insert into SHOP.REVIEW (REVIEW_ID,REVIEW_PRD_ID,REVIEW_WRITER_ID,REVIEW_CONT,REVIEW_STAR,REVIEW_DATE) values (205,'MMT003','123','good!!!!',4,to_date('22/01/25','RR/MM/DD'));
--------------------------------------------------------
--  DDL for Index BOARD_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."BOARD_PK" ON "SHOP"."BOARD" ("BNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index MEMBER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."MEMBER_PK" ON "SHOP"."MEMBER" ("MEMBER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_CART_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_CART_PK" ON "SHOP"."PRODUCT_CART" ("CART_ID", "PRD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_CART_PK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_CART_PK1" ON "SHOP"."PRODUCT_CART" ("CART_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_INFO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_INFO_PK" ON "SHOP"."PRODUCT_INFO" ("PRD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index PRODUCT_PAYMENT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."PRODUCT_PAYMENT_PK" ON "SHOP"."PRODUCT_PAYMENT" ("PAYMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index REVIEW_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."REVIEW_PK" ON "SHOP"."REVIEW" ("REVIEW_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C007434
--------------------------------------------------------

  CREATE UNIQUE INDEX "SHOP"."SYS_C007434" ON "SHOP"."QNA" ("QNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure MYPROC
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "SHOP"."MYPROC" ()
BEGIN
SELECT * FROM memberTBL where memberName="������";
SELECT * FROM productTBL where productName="�����";
END//
DELIMITER;

CALL myProc()



/
--------------------------------------------------------
--  Constraints for Table BOARD
--------------------------------------------------------

  ALTER TABLE "SHOP"."BOARD" ADD CONSTRAINT "BOARD_PK" PRIMARY KEY ("BNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."BOARD" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."BOARD" MODIFY ("BNO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_LADDR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_FADDR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEMBER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_DATE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_PWD" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("MEMBER_SEQ" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."MEMBER" MODIFY ("ADMIN" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_CART
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("PRD_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" MODIFY ("CART_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_CART" ADD CONSTRAINT "PRODUCT_CART_PK" PRIMARY KEY ("CART_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT_INFO
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE290" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE285" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE280" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE275" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE270" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE265" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE260" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE255" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("SIZE250" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" ADD CONSTRAINT "PRODUCT_INFO_PK" PRIMARY KEY ("PRD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("PRD_BRAND" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("PRD_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("PRD_COLL" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("PRD_PRICE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_INFO" MODIFY ("PRD_IMG" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT_PAYMENT
--------------------------------------------------------

  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_DELIVERY" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_PHONE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_RE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_SIZE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PRD_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PRD_PRICE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_ZIPCODE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("MEMBER_FADDR" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" ADD CONSTRAINT "PRODUCT_PAYMENT_PK" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("CREDIT_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."PRODUCT_PAYMENT" MODIFY ("PAYMENT_DATE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "SHOP"."QNA" ADD PRIMARY KEY ("QNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."QNA" MODIFY ("QTITLE" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" MODIFY ("QCONTENT" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."QNA" MODIFY ("WRITER" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "SHOP"."REVIEW" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" ADD CONSTRAINT "REVIEW_PK" PRIMARY KEY ("REVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("REVIEW_PRD_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("REVIEW_WRITER_ID" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("REVIEW_CONT" NOT NULL ENABLE);
  ALTER TABLE "SHOP"."REVIEW" MODIFY ("REVIEW_STAR" NOT NULL ENABLE);
