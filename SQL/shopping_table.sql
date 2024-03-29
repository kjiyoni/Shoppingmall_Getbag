--테이블 생성-------------------------------------------------------------------------------------------------------
--team 테이블 생성 완료
CREATE TABLE team.pay(
  paycode NUMBER(20),
  ordercode NUMBER(20),
  payprice NUMBER(30),
  payment NUMBER(10),
  ispaid NUMBER(10),
  isrefund NUMBER(10)
);

CREATE TABLE team.product_out(
  pocode NUMBER(20),
  ordercode NUMBER(20),
  procode NUMBER(20),
  amount NUMBER(20),
  status NUMBER(10),
  outdate DATE
);

CREATE TABLE team.product_ord(
  ordercode NUMBER(20, 0),
  userid VARCHAR2(30),
  name VARCHAR2(30),
  addr VARCHAR2(100),
  etcaddr VARCHAR2(100),
  memo VARCHAR2(100),
  orderdate DATE,
  totalprice VARCHAR2(50),
  status NUMBER(10),
  hp VARCHAR2(50)
);

CREATE TABLE team.product(
  procode NUMBER(20),
  catecode NUMBER(20),
  proname VARCHAR2(30),
  proprice VARCHAR2(30),
  prosale VARCHAR2(30),
  proinfo VARCHAR2(500),
  proqty NUMBER(30, 0),
  prothumb VARCHAR2(500),
  proimg VARCHAR2(500)
);

CREATE TABLE team.notice(
  noticode NUMBER(20),
  notititle VARCHAR2(500),
  noticont VARCHAR2(500),
  notidate DATE,
  notiauth VARCHAR2(30)
);

CREATE TABLE team.member(
  id VARCHAR2(30),
  pwd VARCHAR2(200),
  email VARCHAR2(30),
  hp VARCHAR2(30),
  name VARCHAR2(30),
  lotaddr VARCHAR2(100),
  etcaddr VARCHAR2(100)
);

CREATE TABLE team.category(
  catecode NUMBER(20),
  catename VARCHAR2(30),
  catecoderef NUMBER(20)
);

CREATE TABLE team.cart(
  cartcode NUMBER(20),
  userid VARCHAR2(30),
  procode NUMBER(20),
  amount NUMBER(30),
  ischecked NUMBER(10),
  ispaid NUMBER(10)
);

CREATE TABLE team.product_qna(
  qnacode NUMBER(20),
  procode NUMBER(20),
  qnatitle VARCHAR2(100),
  qnacont VARCHAR2(500),
  qnadate DATE,
  qnaauth VARCHAR2(30)
);

CREATE TABLE team.product_qna_re(
  recode NUMBER(20),
  qnacode NUMBER(20),
  recont VARCHAR2(500),
  redate DATE
);

CREATE TABLE team.product_rev(
  revcode NUMBER(20),
  procode NUMBER(20),
  revcont VARCHAR2(50),
  revauth VARCHAR2(10),
  revdate DATE
);

DESC member;

--테이블 생성과 제약조건 분리 생성
-- PRIMARY KEY -----------------------------------------------------------------------------------------
ALTER TABLE team.PRODUCT_ORD ADD CONSTRAINT PK_PRODUCT_ORD PRIMARY KEY (
	ORDERCODE
);

ALTER TABLE team.PRODUCT_OUT ADD CONSTRAINT PK_PRODUCT_OUT PRIMARY KEY (
	POCODE,
	ORDERCODE
);

ALTER TABLE team.PRODUCT ADD CONSTRAINT PK_PRODUCT PRIMARY KEY (
	PROCODE
);

ALTER TABLE team.PAY ADD CONSTRAINT PK_PAY PRIMARY KEY (
	PAYCODE,
	ORDERCODE
);

ALTER TABLE team.CATEGORY ADD CONSTRAINT PK_CATEGORY PRIMARY KEY (
	CATECODE
);

ALTER TABLE team.PRODUCT_QNA ADD CONSTRAINT PK_PRODUCT_QNA PRIMARY KEY (
	QNACODE
);

ALTER TABLE team.PRODUCT_QNA_RE ADD CONSTRAINT PK_PRODUCT_QNA_RE PRIMARY KEY (
	RECODE
);

ALTER TABLE team.NOTICE ADD CONSTRAINT PK_NOTICE PRIMARY KEY (
	NOTICODE
);

ALTER TABLE team.CART ADD CONSTRAINT PK_CART PRIMARY KEY (
	CARTCODE
);

ALTER TABLE team.PRODUCT_REV ADD CONSTRAINT PK_PRODUCT_REV PRIMARY KEY (
	REVCODE
);

ALTER TABLE team.MEMBER ADD CONSTRAINT PK_MEMBER PRIMARY KEY (
	ID
);


-- FOREIGN KEY -----------------------------------------------------------------------------------------
ALTER TABLE team.PRODUCT_ORD ADD CONSTRAINT FK_MEMBER_TO_PRODUCT_ORD_1 FOREIGN KEY (
	USERID
)
REFERENCES team.MEMBER (
	ID
);

ALTER TABLE team.PRODUCT_OUT ADD CONSTRAINT FK_PRODUCT_ORD_OUT_1 FOREIGN KEY (
	ORDERCODE
)
REFERENCES team.PRODUCT_ORD (
	ORDERCODE
);

ALTER TABLE team.PRODUCT_OUT ADD CONSTRAINT FK_PRODUCT_TO_PRODUCT_OUT_1 FOREIGN KEY (
	PROCODE
)
REFERENCES team.PRODUCT (
	PROCODE
);

ALTER TABLE team.PRODUCT ADD CONSTRAINT FK_CATEGORY_TO_PRODUCT_1 FOREIGN KEY (
	CATECODE
)
REFERENCES team.CATEGORY (
	CATECODE
);

ALTER TABLE team.PAY ADD CONSTRAINT FK_PRODUCT_ORD_TO_PAY_1 FOREIGN KEY (
	ORDERCODE
)
REFERENCES team.PRODUCT_ORD (
	ORDERCODE
);

ALTER TABLE team.PRODUCT_QNA ADD CONSTRAINT FK_PRODUCT_TO_PRODUCT_QNA_1 FOREIGN KEY (
	PROCODE
)
REFERENCES team.PRODUCT (
	PROCODE
);

ALTER TABLE team.PRODUCT_QNA_RE ADD CONSTRAINT FK_PRODUCT_QNA_RE_1 FOREIGN KEY (
	QNACODE
)
REFERENCES team.PRODUCT_QNA (
	QNACODE
);

ALTER TABLE team.CART ADD CONSTRAINT FK_MEMBER_TO_CART_1 FOREIGN KEY (
	USERID
)
REFERENCES team.MEMBER (
	ID
);

ALTER TABLE team.CART ADD CONSTRAINT FK_PRODUCT_TO_CART_1 FOREIGN KEY (
	PROCODE
)
REFERENCES team.PRODUCT (
	PROCODE
);

ALTER TABLE team.PRODUCT_REV ADD CONSTRAINT FK_PRODUCT_TO_PRODUCT_REV_1 FOREIGN KEY (
	PROCODE
)
REFERENCES team.PRODUCT (
	PROCODE
);



-- DEFAULT와 COMMENT 추가--------------------------------------------------------------------------
ALTER TABLE team.PRODUCT_ORD MODIFY (STATUS NUMBER(10) DEFAULT 1);
COMMENT ON COLUMN team.PRODUCT_ORD.STATUS IS '1:주문, 2:교환, 3:환불, 4:주소';

ALTER TABLE team.PRODUCT_OUT MODIFY (STATUS NUMBER(10) DEFAULT 1);
COMMENT ON COLUMN team.PRODUCT_OUT.STATUS IS '1: 결제대기, 2: 출고대기, 3: 출고, 4: 취소';

ALTER TABLE team.PAY MODIFY (PAYMENT NUMBER(10) DEFAULT 1);
COMMENT ON COLUMN team.PAY.PAYMENT IS '1: 무통장입금 
2: 신용카드
3: 카카오페이';

ALTER TABLE team.CART MODIFY (ISCHECKED NUMBER(10) DEFAULT 1);    --체크 여부 - 디폴트 체크
ALTER TABLE team.CART MODIFY (ISPAID NUMBER(10) DEFAULT 0);       --결제 여부 - 디폴트 체크 해제

-- PRODUCT_ORD 테이블의 ORDERCODE, USERID에 NOT NULL 조건 추가
ALTER TABLE team.PRODUCT_ORD MODIFY (ORDERCODE NUMBER(20, 0) NOT NULL);
ALTER TABLE team.PRODUCT_ORD MODIFY (USERID VARCHAR2(30) NOT NULL);

-- PRODUCT_OUT 테이블의 POCODE, ORDERCODE, PROCODE에 NOT NULL 조건 추가
ALTER TABLE team.PRODUCT_OUT MODIFY (POCODE NUMBER(20) NOT NULL);
ALTER TABLE team.PRODUCT_OUT MODIFY (ORDERCODE NUMBER(20) NOT NULL);
ALTER TABLE team.PRODUCT_OUT MODIFY (PROCODE NUMBER(20) NOT NULL);

-- PRODUCT 테이블의 PROCODE, CATECODE에 NOT NULL 조건 추가
ALTER TABLE team.PRODUCT MODIFY (PROCODE NUMBER(20) NOT NULL);
ALTER TABLE team.PRODUCT MODIFY (CATECODE NUMBER(20) NOT NULL);

-- PAY 테이블의 PAYCODE, ORDERCODE에 NOT NULL 조건 추가
ALTER TABLE team.PAY MODIFY (PAYCODE NUMBER(20) NOT NULL);
ALTER TABLE team.PAY MODIFY (ORDERCODE NUMBER(20) NOT NULL);

-- CATEGORY 테이블의 CATECODE에 NOT NULL 조건 추가
ALTER TABLE team.CATEGORY MODIFY (CATECODE NUMBER(20) NOT NULL);

-- PRODUCT_QNA 테이블의 QNACODE, PROCODE에 NOT NULL 조건 추가
ALTER TABLE team.PRODUCT_QNA MODIFY (QNACODE NUMBER(20) NOT NULL);
ALTER TABLE team.PRODUCT_QNA MODIFY (PROCODE NUMBER(20) NOT NULL);

-- PRODUCT_QNA_RE 테이블의 RECODE, QNACODE에 NOT NULL 조건 추가
ALTER TABLE team.PRODUCT_QNA_RE MODIFY (RECODE NUMBER(20) NOT NULL);
ALTER TABLE team.PRODUCT_QNA_RE MODIFY (QNACODE NUMBER(20) NOT NULL);

-- NOTICE 테이블의 NOTICODE에 NOT NULL 조건 추가
ALTER TABLE team.NOTICE MODIFY (NOTICODE NUMBER(20) NOT NULL);

-- CART 테이블의 CARTCODE, USERID, PROCODE에 NOT NULL 조건 추가
ALTER TABLE team.CART MODIFY (CARTCODE NUMBER(20) NOT NULL);
ALTER TABLE team.CART MODIFY (USERID VARCHAR2(30) NOT NULL);
ALTER TABLE team.CART MODIFY (PROCODE NUMBER(20) NOT NULL);

-- PRODUCT_REV 테이블의 REVCODE, PROCODE에 NOT NULL 조건 추가
ALTER TABLE team.PRODUCT_REV MODIFY (REVCODE NUMBER(20) NOT NULL);
ALTER TABLE team.PRODUCT_REV MODIFY (PROCODE NUMBER(20) NOT NULL);

-- MEMBER 테이블의 ID에 NOT NULL 조건 추가
ALTER TABLE team.MEMBER MODIFY (ID VARCHAR2(30) NOT NULL);

commit;

--개발의 편의성을 위해 제약조건 비활성화 - 추후 활성화하고 기본키, 외래키도 활성화해야함----------------------------------------------
ALTER TABLE team.PRODUCT_ORD DISABLE CONSTRAINT PK_PRODUCT_ORD CASCADE;
ALTER TABLE team.PRODUCT_OUT DISABLE CONSTRAINT PK_PRODUCT_OUT CASCADE;
ALTER TABLE team.PRODUCT DISABLE CONSTRAINT PK_PRODUCT CASCADE;
ALTER TABLE team.PAY DISABLE CONSTRAINT PK_PAY CASCADE;
ALTER TABLE team.CATEGORY DISABLE CONSTRAINT PK_CATEGORY CASCADE;
ALTER TABLE team.PRODUCT_QNA DISABLE CONSTRAINT PK_PRODUCT_QNA CASCADE;
ALTER TABLE team.PRODUCT_QNA_RE DISABLE CONSTRAINT PK_PRODUCT_QNA_RE CASCADE;
ALTER TABLE team.NOTICE DISABLE CONSTRAINT PK_NOTICE CASCADE;
ALTER TABLE team.CART DISABLE CONSTRAINT PK_CART CASCADE;
ALTER TABLE team.PRODUCT_REV DISABLE CONSTRAINT PK_PRODUCT_REV CASCADE;
ALTER TABLE team.MEMBER DISABLE CONSTRAINT PK_MEMBER CASCADE;

--다시 배포할때 제약조건 활성화
ALTER TABLE team.PRODUCT_ORD ENABLE CONSTRAINT PK_PRODUCT_ORD;
ALTER TABLE team.PRODUCT_OUT ENABLE CONSTRAINT PK_PRODUCT_OUT;
ALTER TABLE team.PRODUCT ENABLE CONSTRAINT PK_PRODUCT;
ALTER TABLE team.PAY ENABLE CONSTRAINT PK_PAY;
ALTER TABLE team.CATEGORY ENABLE CONSTRAINT PK_CATEGORY;
ALTER TABLE team.PRODUCT_QNA ENABLE CONSTRAINT PK_PRODUCT_QNA;
ALTER TABLE team.PRODUCT_QNA_RE ENABLE CONSTRAINT PK_PRODUCT_QNA_RE;
ALTER TABLE team.NOTICE ENABLE CONSTRAINT PK_NOTICE;
ALTER TABLE team.CART ENABLE CONSTRAINT PK_CART;
ALTER TABLE team.PRODUCT_REV ENABLE CONSTRAINT PK_PRODUCT_REV;
ALTER TABLE team.MEMBER ENABLE CONSTRAINT PK_MEMBER;
--포링키는 아직 안만듦

--테이블 삭제 시 제약조건 같이 삭제
--DROP TABLE member [CASCADE CONSTRAINTS];

--시퀀스 생성---------------------------------------------------------------------
  CREATE SEQUENCE POCODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE PAYCODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE ORDERCODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE NOTICODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE CARTCODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE QNACODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE REVCODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE RECODE_seq
  START WITH 1
  INCREMENT BY 1;
  
  CREATE SEQUENCE PROCODE_seq
  START WITH 1
  INCREMENT BY 1;

commit;

--딕셔너리 조회
SELECT *
FROM user_sequences;

--시퀀스 삭제
DROP SEQUENCE catecode_seq;

SELECT PROCODE_seq.NEXTVAL
FROM dual;

SELECT PROCODE_seq.CURRVAL
FROM dual;













