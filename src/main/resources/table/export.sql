--------------------------------------------------------
--  파일이 생성됨 - 월요일-10월-26-2020   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence HIBERNATE_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "MARKETPLACE"."HIBERNATE_SEQUENCE"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table ADMIN
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."ADMIN" 
   (	"ID" CHAR(5 BYTE) DEFAULT 'ADMIN', 
	"PASSWORD" VARCHAR2(300 BYTE), 
	"NAME" VARCHAR2(200 BYTE), 
	"LEVELS" NUMBER(1,0) DEFAULT 5, 
	"ROLE" CHAR(10 BYTE) DEFAULT 'ROLE_ADMIN'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table COMPLAIN
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."COMPLAIN" 
   (	"COMPLAIN_ID" NUMBER, 
	"COMPLAIN_USERNAME" VARCHAR2(255 BYTE), 
	"SUBJECT" VARCHAR2(255 BYTE), 
	"COMPALIN_CONTENT" VARCHAR2(255 BYTE), 
	"COMPLAIN_REGDATE" DATE DEFAULT sysdate, 
	"ANSWER" VARCHAR2(1000 BYTE), 
	"ANSDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table DELIVERY
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."DELIVERY" 
   (	"DELIVERY_ID" NUMBER(19,0), 
	"DELIVERY_USERNAME" VARCHAR2(255 BYTE), 
	"ZIPCODE" VARCHAR2(255 BYTE), 
	"NAME_OF_DELIVERY" VARCHAR2(255 BYTE), 
	"ADDRESS1" VARCHAR2(255 BYTE), 
	"ADDRESS2" VARCHAR2(255 BYTE), 
	"IS_MAIN_ADDRESS" NUMBER(1,0) DEFAULT 1
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."MEMBER" 
   (	"USERNAME" VARCHAR2(255 BYTE), 
	"EMAIL_ADDRESS" VARCHAR2(200 BYTE), 
	"PASSWORD" VARCHAR2(200 BYTE), 
	"GENDER" CHAR(6 BYTE) DEFAULT 'NONE', 
	"BIRTH" DATE, 
	"PHONE" VARCHAR2(200 BYTE), 
	"ENROLLDATE" DATE DEFAULT sysdate, 
	"IS_SELLER" NUMBER(1,0) DEFAULT 0, 
	"LEVELS" NUMBER(1,0) DEFAULT 0, 
	"DELFLAG" NUMBER(1,0) DEFAULT 0, 
	"ROLE" CHAR(10 BYTE) DEFAULT 'ROLE_USER', 
	"DELETEDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table M_PURCHASE_PROD
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."M_PURCHASE_PROD" 
   (	"MPP_PRODUCT_ID" NUMBER(19,0), 
	"MPP_PURCHASES_ID" NUMBER(19,0), 
	"QUANTITY" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."PRODUCT" 
   (	"PROD_ID" NUMBER(19,0), 
	"PROD_NAME" VARCHAR2(255 BYTE), 
	"PROD_THUMB_NAIL" VARCHAR2(255 BYTE), 
	"MEMBER_USERNAME" VARCHAR2(255 BYTE), 
	"PROD_REG_DATE" DATE, 
	"STOCK" NUMBER(5,0) DEFAULT 0, 
	"PRICE" NUMBER(10,0) DEFAULT 0, 
	"OPTIONS" VARCHAR2(255 BYTE), 
	"CATEGORY" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PRODUCT_PURCHASES
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."PRODUCT_PURCHASES" 
   (	"PROD_PURCHASE_ID" NUMBER(19,0), 
	"PRODUCT_ID" NUMBER(19,0), 
	"PURCHASES_ID" NUMBER(19,0), 
	"QUANTITY" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table PURCHASE
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."PURCHASE" 
   (	"PURCHASE_ID" NUMBER(19,0), 
	"PURCHASE_USERNAME" VARCHAR2(255 BYTE), 
	"PURCHASE_DATE" DATE, 
	"ARRIVE" NUMBER(1,0) DEFAULT 0, 
	"IS_PURCHASED" NUMBER(1,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."REVIEW" 
   (	"REVIEW_ID" NUMBER(19,0), 
	"REVIEW_PROD_ID" NUMBER(19,0), 
	"REVIEW_USERNAME" NUMBER(19,0), 
	"REVIEW_THUMB_NAIL" VARCHAR2(255 BYTE), 
	"SCORE" NUMBER(1,0) DEFAULT 0, 
	"REVIEW_REG_DATE" DATE, 
	"REVIEW_CONTENT" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SHIPPING_INFOMARTION
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."SHIPPING_INFOMARTION" 
   (	"SHIPPING_ID" NUMBER(19,0), 
	"COURIER" VARCHAR2(255 BYTE), 
	"DELIVERY_STATE" VARCHAR2(255 BYTE) DEFAULT 'shipping', 
	"PARCEL_NUMBER" DATE, 
	"SHPPING_NUMBER" VARCHAR2(255 BYTE), 
	"PURCHASE_ORDER_NUMBER" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table SHIPPING_INFORMATION
--------------------------------------------------------

  CREATE TABLE "MARKETPLACE"."SHIPPING_INFORMATION" 
   (	"SHIPPING_ID" NUMBER(19,0), 
	"SHIPPING_PURCHASE_ID" NUMBER(19,0), 
	"COURIER" VARCHAR2(255 BYTE), 
	"PARCEL_NUMBER" DATE, 
	"DELIVERY_STATE" VARCHAR2(255 BYTE) DEFAULT 'shipping'
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View BOARD_DEFAULT_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "MARKETPLACE"."BOARD_DEFAULT_VIEW" ("ARTICLECODE", "AUTHOR", "SUBJECT", "BOARDNAME", "CONTENT", "CREATED_DATE", "NUMREPLIES") AS 
  select b.ID articlecode, b.author, b.subject, b.boardname, b.content, b.created_date,
nvl(a.replies, 0) as numreplies from (select articlecode, count(*) as replies from reply group by articlecode) a, article b where a.articlecode(+) = b.articlecode
;
REM INSERTING into MARKETPLACE.ADMIN
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.COMPLAIN
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.DELIVERY
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.MEMBER
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.M_PURCHASE_PROD
SET DEFINE OFF;
Insert into MARKETPLACE.M_PURCHASE_PROD (MPP_PRODUCT_ID,MPP_PURCHASES_ID,QUANTITY) values (8,3,11);
REM INSERTING into MARKETPLACE.PRODUCT
SET DEFINE OFF;
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (1,'Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display, AMD Ryzen 3 3200U, Vega 3 Graphics, 4GB DDR4, 128GB SSD','Acer Aspire 5 Slim Laptop, 15.6 inches Full HD IPS Display, AMD Ryzen 3 3200U, Vega 3 Graphics, 4GB DDR4, 128GB SSD.jpg',null,to_date('20/10/14','RR/MM/DD'),100,400000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (2,'Apple AirPods with Charging Case','Apple AirPods with Charging Case.jpg',null,to_date('20/10/14','RR/MM/DD'),100,120000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (3,'Bread Machine','Bread Machine.jpg',null,to_date('20/10/14','RR/MM/DD'),100,160000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (4,'Dash DCAF150GBAQ02 Compact Air Fryer Oven Cooker','Dash DCAF150GBAQ02 Compact Air Fryer Oven Cooker.jpg',null,to_date('20/10/14','RR/MM/DD'),100,50000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (5,'Dash Mini Maker','Dash Mini Maker.jpg',null,to_date('20/10/14','RR/MM/DD'),100,50000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (6,'Dell XPS 15 9560 15.6-inch 4K UHD Touchscreen Laptop','Dell XPS 15 9560 15.6-inch 4K UHD Touchscreen Laptop.jpg',null,to_date('20/10/14','RR/MM/DD'),100,2500000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (7,'Hamilton Beach Electric Indoor Searing Grill','Hamilton Beach Electric Indoor Searing Grill.jpg',null,to_date('20/10/14','RR/MM/DD'),100,65000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (8,'Hisense 40-Inch 40H5500F Class H55 Series Android Smart TV','Hisense 40-Inch 40H5500F Class H55 Series Android Smart TV.jpg',null,to_date('20/10/14','RR/MM/DD'),100,2000000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (9,'Hisense 40-Inch Class H4 Series LED Roku Smart TV','Hisense 40-Inch Class H4 Series LED Roku Smart TV.jpg',null,to_date('20/10/14','RR/MM/DD'),100,1900000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (10,'HP 2018 Elitebook 840 G1 14inch HD LED-backlit anti-glare Laptop Computer, Intel Dual-Core i5-4300U','HP 2018 Elitebook 840 G1 14inch HD LED-backlit anti-glare Laptop Computer, Intel Dual-Core i5-4300U.jpg',null,to_date('20/10/14','RR/MM/DD'),100,400000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (11,'Instant Pot Lux Mini 6-in-1 Electric Pressure Cooker','Instant Pot Lux Mini 6-in-1 Electric Pressure Cooker.jpg',null,to_date('20/10/14','RR/MM/DD'),100,60000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (12,'JBL FLIP 4 - Waterproof Portable Bluetooth Speaker - Black','JBL FLIP 4 - Waterproof Portable Bluetooth Speaker - Black.jpg',null,to_date('20/10/14','RR/MM/DD'),100,100000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (13,'Lenovo Flex 5 14in 2-in-1 Laptop, 14.0in FHD (1920 x 1080) Touch Display, AMD Ryzen 5 4500U Processor, 16GB DDR4','Lenovo Flex 5 14in 2-in-1 Laptop, 14.0in FHD (1920 x 1080) Touch Display, AMD Ryzen 5 4500U Processor, 16GB DDR4.jpg',null,to_date('20/10/14','RR/MM/DD'),100,750000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (14,'RCA RFR320-B-Black-COM RFR321 Mini Refrigerator','RCA RFR320-B-Black-COM RFR321 Mini Refrigerator.jpg',null,to_date('20/10/14','RR/MM/DD'),100,200000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (15,'Samsung Chromebook Plus V2, 2-in-1, Intel Core m3, 4GB RAM, 64GB eMMC, 13MP Camera, Chrome OS','Samsung Chromebook Plus V2, 2-in-1, Intel Core m3, 4GB RAM, 64GB eMMC, 13MP Camera, Chrome OS.jpg',null,to_date('20/10/14','RR/MM/DD'),100,600000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (16,'Samsung Electronics UN32N5300AFXZA 32in 1080p Smart LED TV','Samsung Electronics UN32N5300AFXZA 32in 1080p Smart LED TV.jpg',null,to_date('20/10/14','RR/MM/DD'),100,2000000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (17,'Samsung Galaxy Buds+ Plus','Samsung Galaxy Buds+ Plus.jpg',null,to_date('20/10/14','RR/MM/DD'),100,120000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (18,'Samsung QN32Q50RAFXZA Flat 32in QLED 4K 32Q50 Series Smart TV','Samsung QN32Q50RAFXZA Flat 32in QLED 4K 32Q50 Series Smart TV.jpg',null,to_date('20/10/14','RR/MM/DD'),100,4000000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (19,'Steam Mop Cleaner 10-in-1','Steam Mop Cleaner 10-in-1.jpg',null,to_date('20/10/14','RR/MM/DD'),100,90000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (20,'Wireless Mouse, RATEL 2.4G Wireless Ergonomic Mouse','Wireless Mouse, RATEL 2.4G Wireless Ergonomic Mouse.jpg',null,to_date('20/10/14','RR/MM/DD'),100,13000,null,'가전');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (21,'Alimens & Gentle Men''s Dress Shirts','Alimens & Gentle Men''s Dress Shirts.jpg',null,to_date('20/10/14','RR/MM/DD'),100,20000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (22,'Amazon Brand - Daily Ritual Women''s Jersey Long-Sleeve V-Neck Dress','Amazon Brand - Daily Ritual Women''s Jersey Long-Sleeve V-Neck Dress.jpg',null,to_date('20/10/14','RR/MM/DD'),100,25000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (23,'Amoretu Women Summer Tunic Dress','Amoretu Women Summer Tunic Dress.jpg',null,to_date('20/10/14','RR/MM/DD'),100,33000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (24,'DiBanGu Floral Dress Shirt for Men','DiBanGu Floral Dress Shirt for Men.jpg',null,to_date('20/10/14','RR/MM/DD'),100,50000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (25,'diig Dress Shirt for Men','diig Dress Shirt for Men.jpg',null,to_date('20/10/14','RR/MM/DD'),100,30000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (26,'Fiream Toddler Girls Cotton Longsleeve Casual Dresses Applique Cartoon','Fiream Toddler Girls Cotton Longsleeve Casual Dresses Applique Cartoon.jpg',null,to_date('20/10/14','RR/MM/DD'),100,17000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (27,'Floerns Women''s V Back Inslace Layered Ruffle Hem Flutter Sleeve Dress','Floerns Women''s V Back Inslace Layered Ruffle Hem Flutter Sleeve Dress.jpg',null,to_date('20/10/14','RR/MM/DD'),100,34000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (28,'French Toast Girls'' Short Sleeve Stretch Pique Polo-2 Pac','French Toast Girls'' Short Sleeve Stretch Pique Polo-2 Pack.jpg',null,to_date('20/10/14','RR/MM/DD'),100,16000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (29,'Gildan Kids'' Heavy Cotton Youth T-Shirt','Gildan Kids'' Heavy Cotton Youth T-Shirt.jpg',null,to_date('20/10/14','RR/MM/DD'),100,10000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (30,'H2H Mens Dress Slim Fit Shirts Long Sleeve Business Shirts혻','H2H Mens Dress Slim Fit Shirts Long Sleeve Business Shirts.jpg',null,to_date('20/10/14','RR/MM/DD'),100,30000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (31,'Hanes Big Boys'' Tagless Long Sleeve Tee (Pack of 3)','Hanes Big Boys'' Tagless Long Sleeve Tee (Pack of 3).jpg',null,to_date('20/10/14','RR/MM/DD'),100,14000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (32,'MAELREG Mens Classic Fit Digital Print Mercerized Cotton Short','MAELREG Mens Classic Fit Digital Print Mercerized Cotton Short Sleeve Polo Shirt.jpg',null,to_date('20/10/14','RR/MM/DD'),100,60000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (34,'PRETTYGARDEN Women''s 2020 Casual Short','PRETTYGARDEN Women''s 2020 Casual Short.jpg',null,to_date('20/10/14','RR/MM/DD'),100,30000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (35,'Romwe Women''s Casual Floral Print Off Shoulder Trumpet Sleeve Swing Dress','Romwe Women''s Casual Floral Print Off Shoulder Trumpet Sleeve Swing Dress.jpg',null,to_date('20/10/14','RR/MM/DD'),100,33000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (36,'Star Wars The Mandalorian The Child I''m All Ears Outline T-Shirt','Star Wars The Mandalorian The Child I''m All Ears Outline T-Shirt.jpg',null,to_date('20/10/14','RR/MM/DD'),100,20000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (37,'SUVARI Mens Dress Shirts Long Sleeve Slim Fit Business Casual Shirt','SUVARI Mens Dress Shirts Long Sleeve Slim Fit Business Casual Shirt.jpg',null,to_date('20/10/14','RR/MM/DD'),100,30000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (38,'The Children''s Place Girls'' Print Skater Dress 2-pack','The Children''s Place Girls'' Print Skater Dress 2-pack.jpg',null,to_date('20/10/14','RR/MM/DD'),100,16000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (39,'UNIQUEONE Baby Girls Boys It''s Just A Bunch of Hocus Pocus Halloween T Shirt','UNIQUEONE Baby Girls Boys It''s Just A Bunch of Hocus Pocus Halloween T Shirt.jpg',null,to_date('20/10/14','RR/MM/DD'),100,20000,null,'의류');
Insert into MARKETPLACE.PRODUCT (PROD_ID,PROD_NAME,PROD_THUMB_NAIL,MEMBER_USERNAME,PROD_REG_DATE,STOCK,PRICE,OPTIONS,CATEGORY) values (40,'VIKITA Winter Toddler Girl Clothes Cotton Long Sleeve Girls Dresses for Kids 2-8 Years','VIKITA Winter Toddler Girl Clothes Cotton Long Sleeve Girls Dresses for Kids 2-8 Years.jpg',null,to_date('20/10/14','RR/MM/DD'),100,17000,null,'의류');
REM INSERTING into MARKETPLACE.PRODUCT_PURCHASES
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.PURCHASE
SET DEFINE OFF;
Insert into MARKETPLACE.PURCHASE (PURCHASE_ID,PURCHASE_USERNAME,PURCHASE_DATE,ARRIVE,IS_PURCHASED) values (1,'jchan',to_date('20/10/14','RR/MM/DD'),0,0);
REM INSERTING into MARKETPLACE.REVIEW
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.SHIPPING_INFOMARTION
SET DEFINE OFF;
REM INSERTING into MARKETPLACE.SHIPPING_INFORMATION
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index PURCHASE_INDEX
--------------------------------------------------------

  CREATE INDEX "MARKETPLACE"."PURCHASE_INDEX" ON "MARKETPLACE"."PURCHASE" ("PURCHASE_USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index DELIVERY_INDEX
--------------------------------------------------------

  CREATE INDEX "MARKETPLACE"."DELIVERY_INDEX" ON "MARKETPLACE"."DELIVERY" ("DELIVERY_USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index COMPLAIN_INDEX
--------------------------------------------------------

  CREATE INDEX "MARKETPLACE"."COMPLAIN_INDEX" ON "MARKETPLACE"."COMPLAIN" ("COMPLAIN_USERNAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table SHIPPING_INFORMATION
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."SHIPPING_INFORMATION" MODIFY ("SHIPPING_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."SHIPPING_INFORMATION" ADD PRIMARY KEY ("SHIPPING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT_PURCHASES
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."PRODUCT_PURCHASES" ADD PRIMARY KEY ("PROD_PURCHASE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MARKETPLACE"."PRODUCT_PURCHASES" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."PRODUCT_PURCHASES" MODIFY ("PURCHASES_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."PRODUCT_PURCHASES" MODIFY ("PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."PRODUCT_PURCHASES" MODIFY ("PROD_PURCHASE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMIN
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."ADMIN" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."ADMIN" MODIFY ("NAME" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."ADMIN" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SHIPPING_INFOMARTION
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."SHIPPING_INFOMARTION" ADD PRIMARY KEY ("SHIPPING_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MARKETPLACE"."SHIPPING_INFOMARTION" MODIFY ("SHIPPING_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."MEMBER" MODIFY ("USERNAME" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."MEMBER" MODIFY ("EMAIL_ADDRESS" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."MEMBER" MODIFY ("PASSWORD" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."MEMBER" ADD CONSTRAINT "CHK_GENDER" CHECK (gender in ('MALE','FEMALE','NONE')) ENABLE;
  ALTER TABLE "MARKETPLACE"."MEMBER" ADD PRIMARY KEY ("USERNAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "MARKETPLACE"."MEMBER" ADD UNIQUE ("EMAIL_ADDRESS")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table DELIVERY
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."DELIVERY" MODIFY ("DELIVERY_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."DELIVERY" MODIFY ("DELIVERY_USERNAME" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."DELIVERY" ADD PRIMARY KEY ("DELIVERY_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."REVIEW" MODIFY ("REVIEW_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."REVIEW" ADD PRIMARY KEY ("REVIEW_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table M_PURCHASE_PROD
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."M_PURCHASE_PROD" MODIFY ("MPP_PRODUCT_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."M_PURCHASE_PROD" MODIFY ("MPP_PURCHASES_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."M_PURCHASE_PROD" MODIFY ("QUANTITY" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."M_PURCHASE_PROD" ADD PRIMARY KEY ("MPP_PRODUCT_ID", "MPP_PURCHASES_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PURCHASE
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."PURCHASE" MODIFY ("PURCHASE_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."PURCHASE" ADD PRIMARY KEY ("PURCHASE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."PRODUCT" MODIFY ("PROD_ID" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."PRODUCT" ADD PRIMARY KEY ("PROD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table COMPLAIN
--------------------------------------------------------

  ALTER TABLE "MARKETPLACE"."COMPLAIN" MODIFY ("COMPLAIN_USERNAME" NOT NULL ENABLE);
  ALTER TABLE "MARKETPLACE"."COMPLAIN" ADD PRIMARY KEY ("COMPLAIN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;