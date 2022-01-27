--------------------------------------------------------
--  파일이 생성됨 - 화요일-1월-25-2022   
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

   COMMENT ON COLUMN "SHOP"."BOARD"."BNO" IS '글번호';
   COMMENT ON COLUMN "SHOP"."BOARD"."TITLE" IS '글제목';
   COMMENT ON COLUMN "SHOP"."BOARD"."CONTENT" IS '글내용';
   COMMENT ON COLUMN "SHOP"."BOARD"."REGDATE" IS '작성날짜';
   COMMENT ON COLUMN "SHOP"."BOARD"."SHOW" IS '노출여부';
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

   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_ID" IS '아이디';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_NAME" IS '이름';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_PWD" IS '비밀번호';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_DATE" IS '회원가입일';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_EMAIL" IS '메일';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_PHONE" IS '연락처';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_SEQ" IS '회원고유코드';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_ZIPCODE" IS '우편번호';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_FADDR" IS '주소';
   COMMENT ON COLUMN "SHOP"."MEMBER"."MEMBER_LADDR" IS '상세주소';
   COMMENT ON COLUMN "SHOP"."MEMBER"."ADMIN" IS '관리자';
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

   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."MEMBER_ID" IS '회원아이디_FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."PRD_ID" IS '상품정보_FK';
   COMMENT ON COLUMN "SHOP"."PRODUCT_CART"."CART_ID" IS '장바구니번호';
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

   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_BRAND" IS '상품브랜드';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_DATE" IS '상품등록일';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_NAME" IS '상품이름';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_ID" IS '상품번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_PRICE" IS '상품가격';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_IMG" IS '상품사진';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_COLL" IS '상품컬렉션';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_LNCP" IS '상품출시가';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_MDLNO" IS '상품모델명';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_COLOR" IS '상품컬러';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."PRD_LNCD" IS '상품출시일';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE250" IS '250사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE255" IS '255사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE260" IS '260사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE265" IS '265사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE270" IS '270사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE275" IS '275사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE280" IS '280사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE285" IS '285사이즈 재고';
   COMMENT ON COLUMN "SHOP"."PRODUCT_INFO"."SIZE290" IS '290사이즈 재고';
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

   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_ID" IS '결제번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_ID" IS '회원정보';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PRD_ID" IS '상품정보';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_ZIPCODE" IS '배송 우편번호';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_FADDR" IS '배송 우편주소
';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_LADDR" IS '배송 상세주소';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."MEMBER_PHONE" IS '회원연락처';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."CREDIT_NUMBER" IS '신용카드';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_DATE" IS '구매일';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_MSG" IS '배송요청메시지';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PRD_PRICE" IS '상품가격';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_SIZE" IS '주문사이즈
';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_RE" IS '후기작성여부';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_RECIEVER" IS '수령자';
   COMMENT ON COLUMN "SHOP"."PRODUCT_PAYMENT"."PAYMENT_DELIVERY" IS '발송여부';
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

   COMMENT ON COLUMN "SHOP"."QNA"."QNO" IS '질문번호';
   COMMENT ON COLUMN "SHOP"."QNA"."QTITLE" IS '질문제목';
   COMMENT ON COLUMN "SHOP"."QNA"."QCONTENT" IS '질문내용';
   COMMENT ON COLUMN "SHOP"."QNA"."WRITER" IS '질문자ID';
   COMMENT ON COLUMN "SHOP"."QNA"."ISRE" IS '답변여부';
   COMMENT ON COLUMN "SHOP"."QNA"."RECONTENT" IS '답변내용';
   COMMENT ON COLUMN "SHOP"."QNA"."REGDATE" IS '질문일자';
   COMMENT ON COLUMN "SHOP"."QNA"."REDATE" IS '답변일자';
   COMMENT ON COLUMN "SHOP"."QNA"."SHOW" IS '공개여부';
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

   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_ID" IS '후기번호';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_PRD_ID" IS '상품번호';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_WRITER_ID" IS '회원아이디';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_CONT" IS '후기내용';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_STAR" IS '후기별점';
   COMMENT ON COLUMN "SHOP"."REVIEW"."REVIEW_DATE" IS '후기작성일';
REM INSERTING into SHOP.BOARD
SET DEFINE OFF;
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (201,'주문 방법 안내','원하는 상품을 주문하려면,<br><br>
STEP 1. 상품페이지 : 고객님이 원하시는 상품을 장바구니에 담을 수 있는 단계입니다. 원하시는 상품을 찾으셨다면 장바구니에 넣어 주세요.<br><br>
STEP 2. 장바구니 : 장바구니에 담은 상품들을 확인하고, 계속 쇼핑을 하실 수 있습니다. 주문하기를 클릭하면 장바구니에 담긴 상품을 주문하실 수 있습니다.<br><br>
STEP 3. 주문서 작성 : 주문 진행에 필요한 정보를 입력하는 단계입니다. 주문 고객 정보와 배송지 정보를 입력, 확인하실 수 있고, 결제수단을 선택하는 단계입니다.<br><br>
STEP 4. 결제확인 : 결제 수단에 필요한 정보를 입력하고 결제하기를 클릭하세요.<br><br>
STEP 5. 주문완료 : 결제된 내용을 확인하실 수 있습니다. 주문의 상세내역과 배송진행 상황은 e-mail 로 알려드립니다.<br><br>
STEP 6. 주문/배송 확인 : 주문이 완료된 후 배송 진행 상황은 [마이페이지] 의 주문 내역 조회에서 확인하실 수 있습니다. 주문 상태에 따라 취소/반품을 요구하실 수 있습니다.',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (202,'구매내역 확인 안내.','주문이 완료되면 알림톡으로 주문내역을 알려드립니다.<br>
또한, [마이페이지>쇼핑정보>주문배송]에서 주문내역을 확인하실 수 있습니다. ',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (203,'마이페이지 확인 안내','마이페이지에서는 주문 조회, 관심목록, 회원정보수정 등의 서비스를 이용하실 수 있습니다. ',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (204,'설 연휴 배송 및 고객센터 운영 안내','LEMS 고객센터입니다.<br>

설 연휴 기간 CJ대한통운 휴무로 인한 배송 일정 및 고객센터 운영 시간 안내해 드립니다.<br>
<br>
<br>
<br>
<br>
<br>
[배송일정 안내]<br>
<br>
1/26(수) 00:00 이전 결제완료 건에 한하여 설 연휴 이전까지 배송 예정입니다.<br>
1/26(수) 00:00 이후 결제완료 건 부터는 설 연휴 택배 물류 증가에 따라 2/3(목)부터 순차적으로 발송될 수 있습니다.<br>
 
<br>
※ 설 연휴 직후인 2/3(목) - 2/5(토)에 발송되는 상품은 택배 물류 증가 및 집중으로 인해 배송이 지연될 수 있습니다.<br>
<br>
※ 커스텀 서비스 상품은 주문 후 제작이 진행되어, 배송이 조금 더 지연될 수 있습니다.<br>
<br>
※ 오늘도착 서비스는 1/29(토)부터 2/2(수)까지 제공되지 않습니다.<br>
<br>
※ 택배사 물류 상황에 따라 안내된 배송기간에 지연이 발생할 수 있습니다.',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (205,'상품 리뷰 서비스 변경 안내','안녕하세요.<br>
<br>
LEMS 고객센터입니다.<br>
<br>
<br>
항상 저희 LEMS을 사랑해주시는 고객님께 감사드립니다.<br>
<br>
<br> 
2021년 7월 1일부터 더욱 신뢰도 높은 상품 정보를 제공하기 위하여, 리뷰 작성 기간을 아래와 같이 개선할 예정입니다.<br>
<br>
~ 2021년 6월 30일 : 상품 수령 이후부터 작성 가능<br>
<br>
2021년 7월 1일 ~ : 배송완료 시점 ~ 1년<br>
<br>
상품리뷰는 상품 상세페이지의 [리뷰 작성하기], 또는 [마이페이지 >활동정보>상품리뷰>나의 상품리뷰 쓰기]를 통해 작성하실 수 있습니다.<br> 
<br>
앞으로도 나이키닷컴 고객님들께 더욱 좋은 서비스를 제공할 수 있도록 노력하겠습니다.<br>
<br>
감사합니다.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (206,'배송 및 반품지연 안내','안녕하세요. <br>
<br>
LEMS 고객센터입니다.<br>
<br>
택배사 파업으로 인해 아래와 같이 배송 및 반품픽업 지연이 발생하고 있습니다.<br>
<br>
배송  : 주문일로부터 3일 이내 (토요일, 공휴일 제외) → 주문일로부터 4~5일 이내 (토요일, 공휴일 제외)<br>
반품 : 반품일로부터 7일 이내 (토요일, 공휴일 제외) → 반품일로부터 대략 10일 이내 (토요일, 공휴일 제외)<br>
※ 배송 제한 지역 발생 등으로 인해 추가 지연이 발생할 수 있습니다.<br>  
<br>
LEMS 이용에 불편을 드린 점 양해 부탁드리며, 이른 시일 내에 고객님에 소중한 상품이 안전하게 배송될 수 있도록 최선을 다하겠습니다.<br>
<br>
다시 한번 많은 양해 부탁드립니다.',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (207,'연말연시 고객센터 운영 안내','안녕하세요. LEMS입니다.<br><br>
연말연시 고객센터 휴무일을 안내해 드립니다.<br><br>
휴무 일정 <br>
2021년 12월 25일 (토) - 26일 (일)<br>
2022년 1월 1일 (토) - 2일 (일)<br>
* 1:1 문의는 휴무 일정 중에도 등록 가능하며, 연휴 기간 종료 후 순차적으로 처리됩니다.<br>
감사합니다.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (208,'검수 기준 변경 안내 (2.3  체결 거래부터)','안녕하세요. LEMS입니다.<br>
<br>
더 나은 서비스 제공을 위해 검수 기준의 일부 항목이 변경될 예정입니다.<br>
LEMS은 거래 당사자 간 원활한 거래와 보다 균형 있는 검수 기준 확립을 위하여, 판매자와 구매자 모두의 의견을 경청하고 수렴하고 있습니다.<br><br>
변경 카테고리 | 스니커즈<br>
검수 기준 고지일 | 11월 29일<br>
검수 기준 적용일 | 2월 3일00시 00분 체결 거래부터<br>
검수 기준은 지속적으로 업데이트 되고 있습니다.<br>
거래에 앞서 늘 최신 검수 기준을 확인 하시고 진행 부탁드립니다.<br>
감사합니다.<br>
',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (209,'iOS 13 신규거래 중단 예정 안내','안녕하세요. LEMS 입니다.<br><br>
성능 개선과 안정적인 거래 운영을 위하여 iOS 구버전에 대한 지원이 중단될 예정입니다.<br><br>
◎ 대상 버전 iOS 13<br>
◎ 중단 영향 신규거래 불가<br>
◎ 중단 일시 2022.01.01 00:00:00 부터<br>
해당하는 회원님께서는 OS 업그레이드 및 앱 최신버전 설치를 부탁드립니다.<br>
감사합니다.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (210,'결제 오류 안내','안녕하세요. LEMS 입니다.<br><br>
현재 간편결제 연동 업체의 장애로 인해 거래 체결 없이 결제가 연속으로 진행되는 등 비정상적인 결제가 발생하고 있음을 확인하였습니다.<br>
정상화를 위하여 현재 노력 중이며 수정 완료 시 다시 공지드리도록 하겠습니다.<br>
고객님들께 불편을 드려 정말 죄송합니다.<br>
감사합니다.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (211,'결제 정상 복구 안내','안녕하세요. LEMS 입니다.<br><br>
간편결제 연동 업체의 장애로 인한 비정상 결제 오류가 모두 복구되었으며, 거래가 체결되지 않은 비정상 결제건은 모두 취소 처리하도록 하겠습니다.<br>
또한 비정상 결제가 발생한 모든 고객님께는 오류에 대한 보상으로 10만 포인트를 지급할 예정입니다.<br>
불편을 겪으셨을 고객님들께 다시 한 번 사과의 말씀을 전해드립니다.<br>
더 나은 서비스로 보답하겠습니다.<br>
감사합니다.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (217,'배송지연안내-수정','설날이라 배송이 지연됩니다.-수정',to_date('22/01/25','RR/MM/DD'),'N');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (168,'택배사 파업으로 인한 배송지연 안내','안녕하세요, LEMS 고객센터 입니다.<br><br>
LEMS는 CJ 대한통운을 통해 주문하신 제품이 배송하고 있으나, 현재 CJ 대한통운 택배사 파업의 장기화로 인하여 일부 지역의 제품 출고 및 반품 제품의 수거가 제한되고 있습니다.<br><br>
파업으로 인한 배송 불가 지역으로 확인되는 주문 건의 경우 순차적으로 우체국 택배를 통해 발송이 진행되고 있으며, 택배사의 운영이 정상화되기 전까지 배송 및 수거가 지연될 수 있는 점 양해 부탁드립니다.<br><br>
※유의사항<br>
*주문 완료 후 배송지 변경이 어려우므로, 택배사 파업 영향 지역에 대한 확인 후 배송지를 설정하시어 주문 완료해주시길 권장 드립니다.<br>
*출고가 정상적으로 이루어졌으나 파업의 영향으로 택배 흐름이 멈춰있거나 물류센터로 제품이 회송되는 경우가 발생되고 있어 배송에 추가 시일이 소요될 수 있습니다.<br>
*우체국 택배로 발송된 주문 건의 경우 별도의 문자 전송을 통해 안내드리고 있습니다. 우체국 발송 건의 경우 [마이페이지]에서 배송조회가 불가하므로, 배송현황에 대한 문의사항이 있으신 경우 LEMS 고객센터(010-1234-5678)로 연락 주시기 바랍니다.<br>
*우체국 택배로 발송된 주문 건의 반품 접수는 고객센터 상담원을 통해 반품 접수해 주시길 부탁드립니다. [마이페이지>취소/반품]에서 반품 접수하실 경우, 제품 수거와 반품이 지연될 수 있습니다.<br>
*택배사 파업 영향으로 확인되는 지역에서 반품 접수를 하시는 경우, LEMS 고객센터 상담원을 통한 반품 접수 부탁드립니다.<br>
*제품의 출고처에 따라, 주문건의 배송지가 파업으로 인한 배송 제한 지역으로 확인되는 경우 주문이 취소될 수 있습니다.<br>',to_date('22/01/12','RR/MM/DD'),'Y');
Insert into SHOP.BOARD (BNO,TITLE,CONTENT,REGDATE,SHOW) values (212,'배송비 무료 안내','안녕하세요. LEMS 입니다.<br><br>
2022년에도 배송비 무료 이벤트가 계속 진행됩니다.<br>
◎ 기간 <br>
미정(따로 공지가 생기기전까지)<br><br>
◎내용<br>
구매 시 배송비 무료<br><br>
감사합니다.<br>',to_date('22/01/24','RR/MM/DD'),'Y');
REM INSERTING into SHOP.MEMBER
SET DEFINE OFF;
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,ADMIN) values ('Administrator','관리자','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('18/01/01','RR/MM/DD'),'0','0',0,'123','123','123','Y');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,ADMIN) values ('123','123','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('19/01/04','RR/MM/DD'),'lemslems@naver.com','010-5555-4444',121,'07909','서울 양천구 가로공원로55길 3(신월동, 동양제과)','11호','N');
Insert into SHOP.MEMBER (MEMBER_ID,MEMBER_NAME,MEMBER_PWD,MEMBER_DATE,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_SEQ,MEMBER_ZIPCODE,MEMBER_FADDR,MEMBER_LADDR,ADMIN) values ('delete','탈퇴할ID','48c8947f69c054a5caa934674ce8881d02bb18fb59d5a63eeaddff735b0e9801e87294783281ae49fc8287a0fd86779b27d7972d3e84f0fa0d826d7cb67dfefc',to_date('22/01/25','RR/MM/DD'),'lemslemss@naver.com','010-1111-1111',260,'04709','서울 성동구 도선동 35','11호','N');
REM INSERTING into SHOP.PRODUCT_CART
SET DEFINE OFF;
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,CART_ID) values ('123','NBNB327008',428);
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,CART_ID) values ('123','NJ002',429);
Insert into SHOP.PRODUCT_CART (MEMBER_ID,PRD_ID,CART_ID) values ('Administrator','NS002',361);
REM INSERTING into SHOP.PRODUCT_INFO
SET DEFINE OFF;
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 네이비','NBNB992002',274000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 네이비.png','New Balance 992',259000,'M992GG','NAVY/GREY','20/07/11',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 블랙 그레이','NBNB992003',442000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 블랙 그레이.png','New Balance 992',259000,'M992EB','BLACK/GREY','21/06/15',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 탄','NBNB992004',380000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 탄.png','New Balance 992',259000,'M992TN','TAN/TAN/WHITE','20/03/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 트리플 블랙','NBNB992005',294000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 트리플 블랙.png','New Balance 992',259000,'M992EA','BLACK','21/06/15',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 화이트 네이비','NBNB992006',210000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 화이트 네이비.png','New Balance 992',208700,'M992EC','WHITE/NAVY','21/02/17',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 화이트 실버','NBNB992007',315000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 화이트 실버.png','New Balance 992',259000,'M992NC','WHITE/SILVER','20/01/07',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 x DTLR 992 메이드 인 USA 바시티','NBNB992008',275000,'resources/img/product/New Balance/New Balance 992/뉴발란스 x DTLR 992 메이드 인 USA 바시티.png','New Balance 992',220600,'M992DL','GREY/BLUE-RED-YELLOW','21/09/03',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 993 메이드 인 USA 그레이','NBNB993001',292000,'resources/img/product/New Balance/New Balance 993/뉴발란스 993 메이드 인 USA 그레이.png','New Balance 993',184900,'MR993GL','GREY/WHITE','18/08/21',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 993 메이드 인 USA 네이비','NBNB993002',245000,'resources/img/product/New Balance/New Balance 993/뉴발란스 993 메이드 인 USA 네이비.png','New Balance 993',209000,'WR993NV','NAVY','18/08/20',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 993 메이드 인 USA 밀리터리 그린','NBNB993003',469000,'resources/img/product/New Balance/New Balance 993/뉴발란스 993 메이드 인 USA 밀리터리 그린.png','New Balance 993',208700,'MR993MG','MILITARY GREEN/MILITARY GREEN','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 993 메이드 인 USA 블랙','NBNB993004',390000,'resources/img/product/New Balance/New Balance 993/뉴발란스 993 메이드 인 USA 블랙.png','New Balance 993',184900,'MR993BK','BLACK/WHITE','18/08/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 993 메이드 인 USA 빈티지 인디고','NBNB993005',248000,'resources/img/product/New Balance/New Balance 993/뉴발란스 993 메이드 인 USA 빈티지 인디고.png','New Balance 993',208700,'MR993VI','VINTAGE INDIGO/GREY','19/11/21',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 화이트 실버 검','NBNB327008',125000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 화이트 실버 검.png','New Balance 327',109000,'MS327STB','WHITE/SILVER/GUM','21/12/31',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 992 메이드 인 USA 그레이','NBNB992001',395000,'resources/img/product/New Balance/New Balance 992/뉴발란스 992 메이드 인 USA 그레이.png','New Balance 992',259000,'M992GR','GREY','20/04/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 993 메이드 인 USA 아크틱','NBNB993006',216000,'resources/img/product/New Balance/New Balance 993/뉴발란스 993 메이드 인 USA 아크틱.png','New Balance 993',220600,'WR993VI','ARCTIC/GREY','21/09/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 x 에메 레온 도르 993 메이드 인 USA 브라운','NBNB993007',350000,'resources/img/product/New Balance/New Balance 993/뉴발란스 x 에메 레온 도르 993 메이드 인 USA 브라운.png','New Balance 993',238500,'MR993ALD','BROWN/GREEN','21/11/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 x 에메 레온 도르 993 메이드 인 USA 토프','NBNB993008',640000,'resources/img/product/New Balance/New Balance 993/뉴발란스 x 에메 레온 도르 993 메이드 인 USA 토프.png','New Balance 993',238500,'MR993ALL','TAUPE/BLUE','21/11/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 레플리카 그래피티 스니커즈 - 엔드 한정','MMR001',480000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 레플리카 그래피티 스니커즈 - 엔드 한정.png','Replica',614599,'S57WS0236P2803H4108','WHITE/GREY/BLACK','19/06/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 레플리카 그래피티 스니커즈 화이트','MMR002',330000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 레플리카 그래피티 스니커즈 화이트.png','Replica',0,'S57WS0355P3568H8283','WHITE','-',0,2,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 레플리카 페이턴트 레더 스니커즈 블랙','MMR003',270000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 레플리카 페이턴트 레더 스니커즈 블랙.png','Replica',817100,'S57WS0264P0046H1953','BLACK','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 레플리카 페인트 드롭 스니커즈 블랙','MMR004',324000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 레플리카 페인트 드롭 스니커즈 블랙.png','Replica',755810,'S57WS0240P1892963','BLACK','-',0,2,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 레플리카 페인트 드롭 스니커즈','MMR005',400000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 레플리카 페인트 드롭 스니커즈.png','Replica',755810,'S57WS0240P1892961','WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 카프스킨 레플리카 스니커 화이트','MMR006',475000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 카프스킨 레플리카 스니커 화이트.png','Replica',599595,'S57WS0236P1897101','WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 카프스킨 레플리카 스니커즈 카키','MMR007',310000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 카프스킨 레플리카 스니커즈 카키.png','Replica',599595,'S57WS0236P1895T2076','KHAKI','-',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 카프스킨 레플리카 스니커즈','MMR008',463000,'resources/img/product/Maison Margiela/Replica/메종 마르지엘라 카프스킨 레플리카 스니커즈.png','Replica',590500,'S57WS0236P1895101','WHITE/GREY','-',0,0,1,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 로우 블랙','MMT001',374000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 로우 블랙.png','Tabi',647880,'S57WS0252P1875T8013','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 로우 스티치 MM 로고 블랙','MMT002',300000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 로우 스티치 MM 로고 블랙.png','Tabi',0,'S57WS0400P4080H8650','BLACK/ECRU','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 로우 화이트','MMT003',179000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 로우 화이트.png','Tabi',647880,'S57WS0252P1875T1003','WHITE','-',0,3,2,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 실버 포일 스웨이드 스니커즈 화이트','MMT004',179000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 실버 포일 스웨이드 스니커즈 화이트.png','Tabi',757500,'S57WS0252P2519H1744','WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'발렌시아가 트리플 S 그레이 레드 블루 2018 리이슈','BTP001',1090000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 그레이 레드 블루 2018 리이슈.png','Triple S',1133200,'512175W09O24365','GREY/RED-BLUE','17/09/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'발렌시아가 트랙 스니커 그린 화이트 블루 2019','BTS002',649000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 그린 화이트 블루 2019.png','Track Sneaker',924500,'542023W1GB11097','GREEN/WHITE-BLUE','19/01/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'발렌시아가 트랙 스니커 블랙 레드 2019','BTS003',639000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 블랙 레드 2019.png','Track Sneaker',1163100,'542023W1GB61002','BLACK/RED','-',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'발렌시아가 트랙 스니커 그레이 화이트 2019','BTS001',850000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 그레이 화이트 2019.png','Track Sneaker',1067600,'542023W3AC11090','GREY/GREY-WHITE','19/01/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/13','RR/MM/DD'),'발렌시아가 트랙 스니커 블랙 화이트','BTS004',810000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 블랙 화이트.png','Track Sneaker',1067600,'542023W3AC11090','BLACK/WHITE','19/01/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/21','RR/MM/DD'),'조던 1 로우 골프 울프 그레이','NJ009',500000,'resources/img/product/Nike/Jordan1/조던 1 로우 골프 울프 그레이.png','Jordan1',179000,'DD9315-002','WOLF GREY/BLACK-PHOTON DUST-WHITE','22/01/14',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트랙 스니커 화이트 2019','BTS007',700000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 화이트 2019.png','Track Sneaker',996100,'542023W1GB19000','WHITE/WHITE','19/01/02',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/25','RR/MM/DD'),'나이키 x 피스마이너스원 퀀도1 화이트','NP004',400000,'resources/img/product/Nike/Peaceminusone/나이키 x 피스마이너스원 퀀도1 화이트.png','Peaceminusone',219000,'DH2482-100','WHITE/WHITE-WHITE','21/12/03',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/21','RR/MM/DD'),'조던 1 로우 골프 시카고','NJ010',600000,'resources/img/product/Nike/Jordan1/조던 1 로우 골프 시카고.png','Jordan1',179000,'DD9315-600','VARSITY RED/BLACK-WHITE','22/01/14',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트랙 스니커 실버 네온 옐로우','BTS005',579000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 실버 네온 옐로우.png','Track Sneaker',1270000,'542023W1GC11230','SILVER/GREEN','-',3,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트랙 스니커 트리플 블랙','BTS006',889000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 트리플 블랙.png','Track Sneaker',1163100,'542023W1GB11000','BLACK, ','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트랙 스니커 화이트 오렌지 2019','BTS008',1050000,'resources/img/product/Balenciaga/Track Sneaker/발렌시아가 트랙 스니커 화이트 오렌지 2019.png','Track Sneaker',1067600,'542023W1GB19059','WHITE/ORANGE','19/07/07',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 레드 블랙 2018','BTP002',590000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 레드 블랙 2018.png','Triple S',1013900,'516440W09O76576','RED/BLACK','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 블랙 옐로우 화이트','BTP003',659000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 블랙 옐로우 화이트.png','Triple S',1133200,'534162W09OG1087','BLACK/YELLOW','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 트레이너 네온 옐로우 2018','BTP004',700000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 트레이너 네온 옐로우 2018.png','Triple S',1133200,'512175W09O47320','YELLOW','18/02/16',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 트레이너 네온 핑크','BTP005',500000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 트레이너 네온 핑크.png','Triple S',1133200,'517334W09O65671','NEON PINK','-',0,0,0,0,0,0,0,0,0);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 트레이너 화이트 네이비 퍼플','BTP006',820000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 트레이너 화이트 네이비 퍼플.png','Triple S',1067600,'541641W09OF9095','WHITE/NAVY/PURPLE','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 화이트 그린 블랙','BTP007',750000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 화이트 그린 블랙.png','Triple S',1133200,'536737W09O69063','WHITE/GREEN FLUO/BLACK','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/25','RR/MM/DD'),'발렌시아가 트리플 S 화이트 클리어 솔 2019','BTP008',1150000,'resources/img/product/Balenciaga/Triple S/발렌시아가 트리플 S 화이트 클리어 솔 2019.png','Triple S',1189700,'544351W09E19000','WHITE','-',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 페인트 드롭 스니커즈 블랙','MMT005',390000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 페인트 드롭 스니커즈 블랙.png','Tabi',635800,'S37WS0495P2347T8013','BLACK','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 하이 블랙','MMT006',320000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 하이 블랙.png','Tabi',700240,'S57WS0253P1875T8013','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 하이 스티치 MM 로고 블랙','MMT007',335000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 하이 스티치 MM 로고 블랙.png','Tabi',0,'S57WS0399P4080H8650','BLACK/ECRU','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Maison Margiela',to_date('22/01/10','RR/MM/DD'),'메종 마르지엘라 타비 하이 화이트','MMT008',300000,'resources/img/product/Maison Margiela/Tabi/메종 마르지엘라 타비 하이 화이트.png','Tabi',700240,'S57WS0253P1875T1003','WHITE','20/07/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'발렌시아가 스피드 트레이너 블랙 화이트 2021','BST005',723000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 블랙 화이트 2021.png','Speed Trainer',948300,'645056W2DBQ1015','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'발렌시아가 스피드 트레이너 올 오버 로고 프린트 블랙 2020','BST006',750000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 올 오버 로고 프린트 블랙 2020.png','Speed Trainer',0,'597551W17121015','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'발렌시아가 스피드 트레이너 펄 그레이','BST007',500000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 펄 그레이.png','Speed Trainer',0,'525712W05G01705','PEARL GREY','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/10','RR/MM/DD'),'발렌시아가 스피드 트레이너 핑크','BST008',440000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 핑크.png','Speed Trainer',0,'587280W17215000','PINK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'나이키 x 사카이 x 언더커버 LD와플 나이트 마룬 팀 로얄','NS001',283000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 언더커버 LD와플 나이트 마룬 팀 로얄.png','Sacai',209000,'DJ4877-600','-','21/10/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'나이키 x 사카이 x 언더커버 LD와플 미드나잇 스프루스 유니버시티 레드','NS002',315000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 언더커버 LD와플 미드나잇 스프루스 유니버시티 레드.png','Sacai',209000,'DJ4877-300','MIDNIGHT SPRUCE/UNIVERSITY RED','21/10/29',0,3,1,0,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'나이키 x 사카이 x 언더커버 LD와플 블랙 브라이트 시트론','NS003',343000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 언더커버 LD와플 블랙 브라이트 시트론.png','Sacai',209000,'DJ4877-001','BLACK/SAIL/DARK GREY/BRIGHT CITRON','21/10/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/06','RR/MM/DD'),'조던 1 레트로 하이 OG 블랙 모카','NJ001',721000,'resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 블랙 모카.png','Jordan1',199000,'555088-105','SAIL/DARK MOCHA-BLACK-BLACK','20/11/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/06','RR/MM/DD'),'아디다스 이지 500 본 화이트','AY001',440000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 본 화이트.png','Yeezy 500',238500,'FV3573','BONE WHITE','19/08/25',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 사카이 x 클랏 LD와플 오렌지 블레이즈','NS004',227000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 클랏 LD와플 오렌지 블레이즈.png','Sacai',209000,'DH1347-100','ET/ORANGE BLAZE-DEEP RED-GREEN BEAN','21/09/11',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 사카이 x 클랏 LD와플 쿨 그레이','NS005',299000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 클랏 LD와플 쿨 그레이.png','Sacai',219000,'DH3114-001','NEUTRAL GREY/OBSIDIAN-COOL GREY','21/10/09',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 사카이 x 프라그먼트 LD와플 라이트 스모크 그레이','NS006',627000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 프라그먼트 LD와플 라이트 스모크 그레이.png','Sacai',209000,'DH2684-001','LT SMOKE GREY/WHITE-BLACK','21/08/24',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 사카이 x 프라그먼트 LD와플 블랙큰드 블루','NS007',438000,'resources/img/product/Nike/Sacai/나이키 x 사카이 x 프라그먼트 LD와플 블랙큰드 블루.png','Sacai',209000,'DH2684-400','BLUE VOID/OBSIDIAN/WHITE/WHITE','21/08/24',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 사카이 베이퍼와플 블랙 화이트','NS008',1435000,'resources/img/product/Nike/Sacai/나이키 x 사카이 베이퍼와플 블랙 화이트.png','Sacai',219000,'CV1363-001','BLACK/SUMMIT WHITE/PURE PLATINUM','20/11/06',2,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈 - 한국 한정','NP001',2450000,'resources/img/product/Nike/Peaceminusone/나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈 - 한국 한정.png','Peaceminusone',219000,'AQ3692-002','BLACK','19/11/22',0,3,2,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈 2.0','NP002',784000,'resources/img/product/Nike/Peaceminusone/나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈 2.0.png','Peaceminusone',219000,'DD3223-100','WHITE/BLACK-WHITE','20/11/25',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈','NP003',781000,'resources/img/product/Nike/Peaceminusone/나이키 x 피스마이너스원 에어포스 1 로우 파라노이즈.png','Peaceminusone',219000,'AQ3692-001','BLACK/WHITE','19/11/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 레트로 하이 OG 쉐도우 2.0','NJ002',335000,'resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 쉐도우 2.0.png','Jordan1',199000,'555088-035','BLACK/LIGHT SMOKE GREY-WHITE','21/05/15',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 레트로 하이 OG 유니버시티 블루','NJ003',425000,'resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 유니버시티 블루.png','Jordan1',199000,'555088-134','WHITE/UNIVERSITY BLUE/BLACK','21/03/06',0,2,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 레트로 하이 OG 페이턴트 브레드','NJ004',314000,'resources/img/product/Nike/Jordan1/조던 1 레트로 하이 OG 페이턴트 브레드.png','Jordan1',199000,'555088-063','BLACK/VARSITY RED-WHITE','21/12/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 로우 OG 스타피쉬','NJ005',346000,'resources/img/product/Nike/Jordan1/조던 1 로우 OG 스타피쉬.png','Jordan1',159000,'CZ0790-801','STARFISH/WHITE/BLACK','21/08/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 로우 다크 틸','NJ006',255000,'resources/img/product/Nike/Jordan1/조던 1 로우 다크 틸.png','Jordan1',119000,'553558-411','DARK TEAL/BLACK-WHITE','21/12/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 로우 블랙 파티클 그레이','NJ007',305000,'resources/img/product/Nike/Jordan1/조던 1 로우 블랙 파티클 그레이.png','Jordan1',119000,'553558-040','BLACK/PARTICLE GREY-WHITE','21/06/29',3,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Nike',to_date('22/01/07','RR/MM/DD'),'조던 1 로우 화이트 울프 그레이','NJ008',378000,'resources/img/product/Nike/Jordan1/조던 1 로우 화이트 울프 그레이.png','Jordan1',119000,'DC0774-105','WHITE/WOLF GREY/ALUMINUM','21/07/17',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 소프트 비전','AY002',390000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 소프트 비전.png','Yeezy 500',238500,'FW2656','SOFT VISION','19/11/03',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 슈퍼문 옐로우','AY003',360000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 슈퍼문 옐로우.png','Yeezy 500',238500,'DB2966','SUPER MOON YELLOW','18/06/10',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 스톤','AY004',310000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 스톤.png','Yeezy 500',238500,'FW4839','STONE','19/11/24',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 애쉬 그레이','AY005',304000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 애쉬 그레이.png','Yeezy 500',269000,'GX3607','ASH GREY','21/12/04',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 유틸리티 블랙','AY006',465000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 유틸리티 블랙.png','Yeezy 500',249000,'F36640','UTILITY BLACK','20/11/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 클레이 브라운','AY007',270000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 클레이 브라운.png','Yeezy 500',249000,'GX3606','CLAY BROWN','21/10/30',0,3,3,3,3,2,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 500 토프 라이트','AY008',350000,'resources/img/product/Adidas/Yeezy 500/아디다스 이지 500 토프 라이트.png','Yeezy 500',249000,'GX3605','TAUPE LIGHT','21/06/05',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 믹스 락','AYB350001',287000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 믹스 락.png','Yeezy Boost350',299000,'GW3774','MX ROCK','21/12/22',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 믹스 오트','AYB350002',241000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 믹스 오트.png','Yeezy Boost350',289000,'GW3773','MX OAT','21/10/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 벨루가 - 리플렉티브','AYB350003',421000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 벨루가 - 리플렉티브.png','Yeezy Boost350',329000,'GW1229','BELUGA RF','21/12/18',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 블루 틴트','AYB350005',325000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 블루 틴트.png','Yeezy Boost350',299000,'B37571','BLUE TINT','17/12/17',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 시온','AYB350006',300000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 시온.png','Yeezy Boost350',289000,'FZ1267','ZYON','20/07/18',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 예힐 - 논리플렉티브','AYB350007',289000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 예힐 - 논리플렉티브.png','Yeezy Boost350',289000,'FW5190','YECHEIL','19/12/21',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 크림  트리플 화이트','AYB350008',407000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 크림  트리플 화이트.png','Yeezy Boost350',262400,'CP9366','CREAM WHITE','17/04/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 MNVN 트리플 블랙','AYB700001',360000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 MNVN 트리플 블랙.png','Yeezy Boost700',289000,'FV4440','BLACK','20/05/23',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 V2 모브','AYB700002',338000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 V2 모브.png','Yeezy Boost700',309000,'GZ0724','MAUVE','21/09/25',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 V2 스태틱','AYB700003',800000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 V2 스태틱.png','Yeezy Boost700',399000,'EF2829','STATIC','18/12/30',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 V2 이너시아','AYB700004',600000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 V2 이너시아.png','Yeezy Boost700',399000,'FW2549','INERTIA','19/09/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 V2 크림','AYB700005',484000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 V2 크림.png','Yeezy Boost700',309000,'GY7924','CREAM','21/03/13',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 아날로그','AYB700006',444000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 아날로그.png','Yeezy Boost700',357800,'EG7596','ANALOG','19/04/28',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 웨이브 러너 솔리드 그레이','AYB700007',600000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 웨이브 러너 솔리드 그레이.png','Yeezy Boost700',357800,'B75571','SOLID GREY','17/11/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 700 페이드 아주르','AYB700008',250000,'resources/img/product/Adidas/Yeezy Boost700/아디다스 이지 부스트 700 페이드 아주르.png','Yeezy Boost700',309000,'GZ2002','FADE AZUR','21/11/27',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 MXT 문 그레이','AYFRNNR001',300000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 MXT 문 그레이.png','Yeezy Foam RNNR',99000,'GV7904','MOON GRAY','21/03/26',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 미네랄 블루','AYFRNNR002',350000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 미네랄 블루.png','Yeezy Foam RNNR',99000,'GV7903','MINERAL BLUE','21/05/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 믹스 샌드 그레이','AYFRNNR003',240000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 믹스 샌드 그레이.png','Yeezy Foam RNNR',109000,'GY3969','MX SAND GREY','21/12/11',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 믹스 크림 클레이','AYFRNNR004',459000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 믹스 크림 클레이.png','Yeezy Foam RNNR',99000,'GX8774','MX CREAM CLAY','21/08/02',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 버밀리온','AYFRNNR005',209000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 버밀리온.png','Yeezy Foam RNNR',99000,'GW3355','VERMILION','21/10/29',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 샌드','AYFRNNR006',470000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 샌드.png','Yeezy Foam RNNR',99000,'FY4567','SAND','21/03/26',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 아라랏','AYFRNNR007',680000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 아라랏.png','Yeezy Foam RNNR',89400,'G55486','WHITE','20/06/26',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 부스트 350 V2 블랙 레드 2020','AYB350004',533000,'resources/img/product/Adidas/Yeezy Boost350/아디다스 이지 부스트 350 V2 블랙 레드 2020.png','Yeezy Boost350',289000,'CP9652','CORE BLACK','20/12/05',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Adidas',to_date('22/01/07','RR/MM/DD'),'아디다스 이지 폼 러너 오커','AYFRNNR008',200000,'resources/img/product/Adidas/Yeezy Foam RNNR/아디다스 이지 폼 러너 오커.png','Yeezy Foam RNNR',99000,'GW3354','OCHRE','21/09/18',0,3,2,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'발렌시아가 스피드 2.0 트레이너 블랙 니트 화이트 솔 2021','BST001',900000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 2.0 트레이너 블랙 니트 화이트 솔 2021.png','Speed Trainer',1255000,'617239W2DB21015','BLACK/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'발렌시아가 스피드 트레이너 블랙 2021','BST002',620000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 블랙 2021.png','Speed Trainer',1040000,'645056W2DBP1013','BLACK','-',0,3,3,2,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'발렌시아가 스피드 트레이너 블랙 레드 2017','BST003',680000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 블랙 레드 2017.png','Speed Trainer',948300,'530351W05G01000','BLACK','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('Balenciaga',to_date('22/01/07','RR/MM/DD'),'발렌시아가 스피드 트레이너 블랙 블루','BST004',619000,'resources/img/product/Balenciaga/Speed Trainer/발렌시아가 스피드 트레이너 블랙 블루.png','Speed Trainer',0,'587286W17031071','BLACK/BLUE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 그레이','NBNB327001',139000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 그레이.png','New Balance 327',139000,'MS327LAB','GREY/WHITE','20/05/09',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 블랙 그레이 검','NBNB327002',92000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 블랙 그레이 검.png','New Balance 327',109000,'MS327STC','BLACK/GREY/GUM','21/12/31',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 블랙 그레이','NBNB327003',128000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 블랙 그레이.png','New Balance 327',109000,'MS327BD','BLACK/GREY/WHITE','-',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 블랙','NBNB327004',119000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 블랙.png','New Balance 327',109000,'MS327CPG','BLACK/MUNSELL WHITE','20/08/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 팀버울프','NBNB327005',122000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 팀버울프.png','New Balance 327',109000,'MS327HR1','TIMBERWOLF/GREEN','21/09/09',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 화이트 문빔','NBNB327006',224000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 화이트 문빔.png','New Balance 327',109000,'WS327SFD','MUNSELL WHITE/MOONBEAM','20/08/08',0,3,3,3,3,3,3,3,3);
Insert into SHOP.PRODUCT_INFO (PRD_BRAND,PRD_DATE,PRD_NAME,PRD_ID,PRD_PRICE,PRD_IMG,PRD_COLL,PRD_LNCP,PRD_MDLNO,PRD_COLOR,PRD_LNCD,SIZE250,SIZE255,SIZE260,SIZE265,SIZE270,SIZE275,SIZE280,SIZE285,SIZE290) values ('New Balance',to_date('22/01/07','RR/MM/DD'),'뉴발란스 327 화이트 블랙','NBNB327007',160000,'resources/img/product/New Balance/New Balance 327/뉴발란스 327 화이트 블랙.png','New Balance 327',109000,'MS327FE','SEA SALT/BLACK','21/01/15',0,3,3,3,3,3,3,3,3);
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
SELECT * FROM memberTBL where memberName="탕탕이";
SELECT * FROM productTBL where productName="냉장고";
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
