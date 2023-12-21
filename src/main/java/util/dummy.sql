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