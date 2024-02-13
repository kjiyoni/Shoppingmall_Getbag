--테스트를 위한 더미데이터 생성

-- Member 테이블
INSERT INTO MEMBER (id, pwd, email, hp, name, lotaddr, etcaddr) 
VALUES ('bangry', '1111', 'bangry@gmail.com', '010-1234-5678', '홍재헌', '경기도 양주시 옥정동', '이젠아파트 101동 111호');
INSERT INTO MEMBER (id, pwd, email, hp, name, lotaddr, etcaddr) 
VALUES ('kimbang', '1111', 'kimbang@gmail.com', '010-1234-5678', '김재헌', '서울시 노원구', '이젠아파트 103동 114호');
INSERT INTO MEMBER (id, pwd, email, hp, name, lotaddr, etcaddr) 
VALUES ('choiheon', '1111', 'choiheon@gmail.com', '010-1234-5678', '최재헌', '경기도 의정부시 호원동', '아카데미아파트 301동 214호');

-- Category 테이블
INSERT INTO Category (catecode, catename)
VALUES (1, '여성');

-- Product 테이블
INSERT INTO Product (procode, catecode, proname, proprice, prosale, proinfo, proqty, prothumb, proimg) 
VALUES (procode_seq.nextval, 1, '미니 가방', '5000000', '4800000', '작고 세련된 작은 가방', 150, 'testImage1.png', 'testImage1.png,testImage2.png,testImage3.png');

-- product_ord 테이블
INSERT INTO product_ord (ordercode, userid, name, addr, etcaddr, memo, orderdate, totalprice, status, hp)
VALUES (ordercode_seq.nextval, 'bangry', '홍재헌', '경기도 양주시 옥정동', '이젠아파트 101동 111호', '문 앞에 놔주세요', sysdate, 10000000, 1, '010-1234-5678');

-- product_out 테이블
INSERT INTO product_out (pocode, ordercode, procode, amount, status, outdate)
VALUES (pocode_seq.nextval, 1, 6, 4, 1, SYSDATE);

-- cart 테이블
INSERT INTO cart (cartcode, userid, procode, amount, ischecked, ispaid)
VALUES (cartcode_seq.nextval, 'bangry', 6, 4, 1, 1);

-- product_qna 테이블
INSERT INTO product_qna (qnacode, procode, qnatitle, qnacont, qnadate, qnaauth)
VALUES (qnacode_seq.nextval, 6, '가방이 이상해요', '사진에 있는 색깔이랑 너무 달라요', sysdate, 'choiheon');

-- product_qna_re 테이블
INSERT INTO product_qna_re (recode, qnacode, recont, redate)
VALUES (recode_seq.nextval, 1, '실제 상품과 색깔이 다를 수 있습니다', sysdate);

-- product_rev 테이블
INSERT INTO product_rev (revcode, procode, revcont, revauth, revdate)
VALUES (revcode_seq.nextval, 6, '가방이 너무 이뻐요', '홍재헌', sysdate);

-- pay 테이블
INSERT INTO pay (paycode, ordercode, payprice, payment, ispaid, isrefund)
VALUES (paycode_seq.nextval, 1, 10000000, 1, 1, 1);

-- notice 테이블
INSERT INTO notice (noticode, notititle, noticont, notidate, notiauth)
VALUES (noticode_seq.nextval, '환불, 교환 관련 공지', '환불은 불가하고 교환은 일주일 이내입니다', sysdate, '관리자');

commit;






















