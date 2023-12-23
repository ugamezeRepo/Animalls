-- DELIVERY_ADDRESS 30개
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (1, 33877, 'OLDMD', 'JT4QVTSM');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (2, 15439, '1IIGM', 'FOIIKRXA');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (3, 76456, '3D3OF', 'IBHPTE0U');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (4, 84386, '28D6U', 'I38OQO4U');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (5, 07899, '4L1HL', '6OM44YPK');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (6, 34539, 'DYY9N', 'NKCPH1EE');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (7, 39597, 'L0T5H', '2W3DJJY2');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (8, 88130, '93J6P', '45KM5F4R');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (9, 36005, 'YUS0F', 'YIVFK7W8');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (10, 61161, '5P3Y7', 'RHWZQ3FD');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (11, 12627, 'JAQSJ', 'Z9XSUPSV');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (12, 74510, 'M88HP', 'VD6JVXV1');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (13, 94503, 'CH4UO', 'SZ7GC46J');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (14, 74106, 'KXG6S', 'IX9JCA7Y');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (15, 45956, 'ZRH1K', 'AS49F5ZQ');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (16, 36960, 'YJ46Z', '5TGG5P8S');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (17, 35698, 'JOUM6', '11WG6LX2');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (18, 72039, '2R68D', '3DRWIUA8');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (19, 64360, 'PT5NZ', '6QQ9IZMM');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (20, 00265, 'S3FWB', '036XTYLA');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (21, 28285, 'FQBRA', 'SE9660AJ');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (22, 20999, 'C3LQM', '08HAG4ZI');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (23, 68971, 'TVT5J', 'Y5O60H5B');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (24, 88121, 'NS5UU', '08SV3Y6V');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (25, 89532, 'EV0WU', '7VWJTEB1');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (26, 95222, 'HHU2V', 'NA0P651O');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (27, 17996, '0EYKX', 'D1E9ZD1D');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (28, 42171, '4PEYC', '3CZUE07T');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (29, 32960, '8MTVG', 'G1BDNANB');
INSERT INTO DELIVERY_ADDRESS
     (delivery_id, postal_address, address, address_detail)
     VALUES (30, 45546, 'EVCCM', 'DZFI9VW1');

-- MEMBER 30개
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum1', 1, 'dumPwdYO4', 'dnameL2', 'dNickXZJ8', '010-0000-0000', 'E4YU6@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum2', 2, 'dumPwd619', 'dnameD9', 'dNick9TPG', '010-0000-0000', 'IXPBZ@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum3', 3, 'dumPwd3P1', 'dnameW7', 'dNick8ETE', '010-0000-0000', '09YZB@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum4', 4, 'dumPwdQTO', 'dname12', 'dNick8U2G', '010-0000-0000', 'VTO70@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum5', 5, 'dumPwdD2L', 'dnameUV', 'dNick1BR5', '010-0000-0000', '5V2R8@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum6', 6, 'dumPwdPJD', 'dname1B', 'dNick1FNW', '010-0000-0000', 'NBWKP@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum7', 7, 'dumPwdR3C', 'dnameNV', 'dNickIQ83', '010-0000-0000', '6EYVO@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum8', 8, 'dumPwdAO4', 'dnameK1', 'dNickXZKH', '010-0000-0000', '8PR7H@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum9', 9, 'dumPwdHE8', 'dnameCD', 'dNickPARE', '010-0000-0000', '4PEKG@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum10', 10, 'dumPwdO37', 'dnameJS', 'dNickPXPR', '010-0000-0000', '7LTE1@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum11', 11, 'dumPwdQ6W', 'dnameIF', 'dNickPBKA', '010-0000-0000', '5H1VW@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum12', 12, 'dumPwd1P5', 'dnameRT', 'dNickUDBM', '010-0000-0000', 'SX34G@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum13', 13, 'dumPwdED5', 'dname9F', 'dNickUBKQ', '010-0000-0000', 'VJJBZ@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum14', 14, 'dumPwdDJQ', 'dname7F', 'dNickKZTF', '010-0000-0000', 'MQWYY@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum15', 15, 'dumPwdFO5', 'dname30', 'dNickTX4L', '010-0000-0000', 'HUKBT@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum16', 16, 'dumPwdWF3', 'dnameNQ', 'dNick604L', '010-0000-0000', '50BI3@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum17', 17, 'dumPwdQW1', 'dnameUI', 'dNickLGPY', '010-0000-0000', 'W2HUM@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum18', 18, 'dumPwdZO4', 'dnameOK', 'dNickKUOD', '010-0000-0000', 'K653C@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum19', 19, 'dumPwdU3W', 'dname49', 'dNick4I4N', '010-0000-0000', 'F1ER6@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum20', 20, 'dumPwdZ2U', 'dnamePO', 'dNickV0FL', '010-0000-0000', 'BTWKH@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum21', 21, 'dumPwd88A', 'dnameTB', 'dNickIOWS', '010-0000-0000', 'BFJHG@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum22', 22, 'dumPwdRVD', 'dname12', 'dNickQSYT', '010-0000-0000', 'EGTHM@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum23', 23, 'dumPwdHVI', 'dname63', 'dNick3SGT', '010-0000-0000', 'X60H4@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum24', 24, 'dumPwdUID', 'dname2U', 'dNick1MUT', '010-0000-0000', 'WJ8KC@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum25', 25, 'dumPwdODV', 'dnameST', 'dNick6QVR', '010-0000-0000', 'K2Z87@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum26', 26, 'dumPwdYIQ', 'dname65', 'dNickXKRN', '010-0000-0000', 'FYMDY@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum27', 27, 'dumPwdAZP', 'dname46', 'dNick80BL', '010-0000-0000', 'FZTJ9@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum28', 28, 'dumPwd8QQ', 'dname76', 'dNickDOU9', '010-0000-0000', 'KYS5P@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum29', 29, 'dumPwdWG4', 'dnameSR', 'dNickO95R', '010-0000-0000', 'CZ7YR@google.com', 1, SYSDATE);
INSERT INTO member 
     (MEMBER_ID, DELIVERY_ID, PASSWORD, NAME, NICKNAME,  PHONE_NUMBER, EMAIL, EMAIL_VERIFIED, REGISTERED_DATE)
     VALUES ('dum30', 30, 'dumPwdXHP', 'dnameK1', 'dNickXYW9', '010-0000-0000', 'Q0LZP@google.com', 1, SYSDATE);

INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12345, '지구', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 15345, '지구2', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12645, '지구3', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12445, '지구4', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12245, '지구5', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12385, '지구6', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12375, '지구7', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12315, '지구8', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12325, '지구9', '우리집');
INSERT INTO DELIVERY_ADDRESS (delivery_id, postal_address, address, address_detail) 
VALUES (DELIVERY_ADDRESS_SEQ.NEXTVAL, 12355, '지구10', '우리집');


INSERT INTO PRODUCT_REVIEW (review_id, product_id , reviewer_id, content, thumbnail, rating, like_count, created_at, updated_at )
VALUES (SEQUENCE PRODUCT_REVIEW_SEQ,1,'con1','하이1','test/load1.jsp',4,0,SYSDATE,SYSDATE);
INSERT INTO PRODUCT_REVIEW (review_id, product_id , reviewer_id, content, thumbnail, rating, like_count, created_at, updated_at )
VALUES (SEQUENCE PRODUCT_REVIEW_SEQ,1,'con2','하이2','test/load2.jsp',3,0,SYSDATE,SYSDATE);
INSERT INTO PRODUCT_REVIEW (review_id, product_id , reviewer_id, content, thumbnail, rating, like_count, created_at, updated_at )
VALUES (SEQUENCE PRODUCT_REVIEW_SEQ,1,'con3','하이3','test/load3.jsp',3,0,SYSDATE,SYSDATE);
INSERT INTO PRODUCT_REVIEW (review_id, product_id , reviewer_id, content, thumbnail, rating, like_count, created_at, updated_at )
VALUES (SEQUENCE PRODUCT_REVIEW_SEQ,1,'con4','하이4','test/load4.jsp',2,0,SYSDATE,SYSDATE);
INSERT INTO PRODUCT_REVIEW (review_id, product_id , reviewer_id, content, thumbnail, rating, like_count, created_at, updated_at )
VALUES (SEQUENCE PRODUCT_REVIEW_SEQ,1,'con5','하이5','test/load5.jsp',3,0,SYSDATE,SYSDATE);
INSERT INTO PRODUCT_REVIEW (review_id, product_id , reviewer_id, content, thumbnail, rating, like_count, created_at, updated_at )
VALUES (SEQUENCE PRODUCT_REVIEW_SEQ,1,'con1','하이6','test/load11.jsp',3,0,SYSDATE,SYSDATE);

INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org1','save1',1000,SYSDATE);
INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org7','save7',1000,SYSDATE);
INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org6','save6',1000,SYSDATE);
INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org5','save5',1000,SYSDATE);
INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org4','save4',1000,SYSDATE);
INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org3','save3',1000,SYSDATE);
INSERT INTO UPLOAD (upload_id , uploader_id, org_filename, save_filename, filesize, uploaded_at)
VALUES(SEQUENCE UPLOAD_SEQ.NEXTVAL,'','org2','save2',1000,SYSDATE);