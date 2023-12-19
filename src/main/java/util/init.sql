DROP TABLE "DELIVERY_ADDRESS" CASCADE CONSTRAINTS; 
DROP TABLE "MEMBER" CASCADE CONSTRAINTS; 
DROP TABLE "PRODUCT" CASCADE CONSTRAINTS; 
DROP TABLE "PRODUCT_OPTION" CASCADE CONSTRAINTS; 
DROP TABLE "PRODUCT_REVIEW" CASCADE CONSTRAINTS; 
DROP TABLE "CART_ITEM" CASCADE CONSTRAINTS; 
DROP TABLE "ORDER" CASCADE CONSTRAINTS; 
DROP TABLE "ORDER_ITEM" CASCADE CONSTRAINTS; 
DROP SEQUENCE "DELIVERY_ADDRESS_SEQ"; 
DROP SEQUENCE "MEMBER_SEQ"; 
DROP SEQUENCE "PRODUCT_SEQ";
DROP SEQUENCE "PRODUCT_OPTION_SEQ"; 
DROP SEQUENCE "PRODUCT_REVIEW_SEQ"; 
DROP SEQUENCE "CART_ITEM_SEQ";
DROP SEQUENCE "ORDER_SEQ";
DROP SEQUENCE "ORDER_ITEM_SEQ";


CREATE TABLE "DELIVERY_ADDRESS" (
	"delivery_id"		NUMBER(10)		PRIMARY KEY,
	"postal_address"	NUMBER(5)		NOT NULL,
	"address"			VARCHAR2(50)	NOT NULL,
	"address_detail"	VARCHAR2(50)	NULL
);
CREATE SEQUENCE "DELIVERY_ADDRESS_SEQ"; 



CREATE TABLE "MEMBER" (
    "member_id"         VARCHAR2(50)    PRIMARY KEY,
    "delivery_id"       NUMBER(10),
    "password"          VARCHAR2(50)    NOT NULL,
    "nickname"          VARCHAR2(50)    NOT NULL,
    "role"              VARCHAR2(20)    DEFAULT 'user' CONSTRAINT chk_member_role CHECK ("role" IN ('user', 'seller', 'admin')),
    "phone_number"      VARCHAR2(20)    NOT NULL,
    "rank"              VARCHAR2(20)    DEFAULT 'bronze' CONSTRAINT chk_member_rank CHECK ("rank" IN ('bronze', 'silver', 'gold', 'diamond')),
    "profile_image"     CLOB,
    "email_verified"    NUMBER(1)       DEFAULT 0 CONSTRAINT chk_member_email_verified CHECK ("email_verified" IN (0, 1)),
    CONSTRAINT fk_member_delivery FOREIGN KEY ("delivery_id")
        REFERENCES "DELIVERY_ADDRESS" ("delivery_id")
        ON DELETE CASCADE
);
CREATE SEQUENCE "MEMBER_SEQ"; 

CREATE TABLE "PRODUCT" (
    "product_id"    NUMBER(10)      PRIMARY KEY,
    "seller_id"     VARCHAR2(50),
    "category"      VARCHAR2(10)    DEFAULT 'food' CONSTRAINT chk_product_category CHECK ("category" IN ('food', 'clothes', 'bath')),
    "title"         VARCHAR2(50)    NOT NULL,
    "description"   CLOB            NOT NULL,
    "org_price"     NUMBER(10)      NOT NULL,
    "sale_price"    NUMBER(10)      NULL,
    CONSTRAINT fk_product_seller FOREIGN KEY ("seller_id")
        REFERENCES "MEMBER" ("member_id")
        ON DELETE CASCADE
);
CREATE SEQUENCE "PRODUCT_SEQ"; 


CREATE TABLE "PRODUCT_OPTION" (
	"option_id"			NUMBER(10)		PRIMARY KEY,
	"product_id"		NUMBER(10),
	"description"		VARCHAR2(100)	NOT NULL,
	"additional_price"	NUMBER(10)		DEFAULT 0,
	CONSTRAINT fk_prodcut_option_product FOREIGN KEY ("product_id")
	    REFERENCES "PRODUCT" ("product_id")
	    ON DELETE CASCADE
);
CREATE SEQUENCE "PRODUCT_OPTION_SEQ"; 


CREATE TABLE "PRODUCT_REVIEW" (
	"review_id"			NUMBER(10)		PRIMARY KEY,
	"product_id"		NUMBER(10),
	"reviewer_id"		VARCHAR2(50),
	"title"				VARCHAR2(20)	NOT	NULL,
	"content"			CLOB			NOT NULL,
	"thumbnail"			VARCHAR2(100)   NULL,
	"rating"			NUMBER(2)		NOT NULL CONSTRAINT chk_product_review_rating CHECK ("rating" in (1,2,3,4,5,6,7,8,9,10)),
	"like"				NUMBER(10) 		DEFAULT 0,
	"created_at"		DATE			NOT NULL,
	"updated_at"		DATE			NOT NULL,
	CONSTRAINT fk_product_review_product FOREIGN KEY ("product_id")
	    REFERENCES "PRODUCT" ("product_id")
	    ON DELETE CASCADE, 
    CONSTRAINT fk_product_review_reviewer FOREIGN KEY ("reviewer_id")
        REFERENCES "MEMBER" ("member_id")
        ON DELETE CASCADE
);
CREATE SEQUENCE "PRODUCT_REVIEW_SEQ"; 	

CREATE TABLE "CART_ITEM" (
	"cart_item_id"		NUMBER(10)		PRIMARY KEY,
	"buyer_id"			VARCHAR2(50),
	"product_id"		NUMBER(10),
	"option_id"			NUMBER(10),
	"amount"			NUMBER(5) CONSTRAINT chk_cart_item_amount CHECK ("amount" > 0),
	CONSTRAINT fk_cart_item_buyer FOREIGN KEY ("buyer_id")
	    REFERENCES "MEMBER" ("member_id")
	    ON DELETE CASCADE, 
	CONSTRAINT fk_cart_item_product FOREIGN KEY ("product_id")
		REFERENCES "PRODUCT" ("product_id")
		ON DELETE CASCADE,
	CONSTRAINT fk_cart_item_option FOREIGN KEY ("option_id")
		REFERENCES "PRODUCT_OPTION" ("option_id")
		ON DELETE CASCADE 
);
CREATE SEQUENCE "CART_ITEM_SEQ"; 

CREATE TABLE "ORDER" (
	"order_id"			NUMBER(10)		PRIMARY KEY,
	"postal_address"	NUMBER(5)		NOT NULL,
	"address"			VARCHAR2(50)	NOT NULL,
	"detailed_address"	VARCHAR2(50)	NOT NULL,
	"delivery_message"	VARCHAR2(100)	NULL,
	"payment_method"	NUMBER			NULL
);
CREATE SEQUENCE "ORDER_SEQ";

CREATE TABLE  "ORDER_ITEM" (
	"order_item_id"	NUMBER(10)			PRIMARY KEY,
	"order_id"		NUMBER(10), 
	"product_id"	NUMBER(10),
	"option_id"		NUMBER(10),
	"amount"		NUMBER(10)	CONSTRAINT chk_order_item_amount CHECK ("amount" > 0),
	CONSTRAINT fk_order_item_order FOREIGN KEY ("order_id")
		REFERENCES "ORDER" ("order_id")
		ON DELETE CASCADE, 
	CONSTRAINT fk_order_item_product FOREIGN KEY ("product_id")
		REFERENCES "PRODUCT" ("product_id")
		ON DELETE CASCADE, 
	CONSTRAINT fk_order_item_option FOREIGN KEY ("option_id")
		REFERENCES "PRODUCT_OPTION" ("option_id")
		ON DELETE CASCADE
);
CREATE SEQUENCE "ORDER_ITEM_SEQ"; 

