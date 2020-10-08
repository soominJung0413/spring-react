drop table admin;
drop table complain;
drop table delivery;
drop table member;
drop table product;
drop table purchase;
drop table review;
drop table shipping_infomartion;


create TABLE member (
  username VARCHAR(255) NOT NULL,
  email VARCHAR(200) not NULL unique,
  password VARCHAR(200) not NULL,
  gender char(6), 
  birth VARCHAR(300) NOT NULL,
  phone VARCHAR(200) NOT NULL,
  enrollDate DATE DEFAULT sysdate,
  is_seller CHAR(10) default 'ROLE_USER',
  levels number(1) default 0,
  delFlag char(1) DEFAULT 'F',
  deleteDate DATE,
  PRIMARY KEY (username),
CONSTRAINT chk_gender CHECK (gender in ('MALE','FEMALE')));
alter table member add role char(10) default 'ROLE_USER';
ALTER TABLE member MODIFY(IS_SELLER number);
ALTER TABLE member add (IS_SELLER number(1));
ALTER TABLE member MODIFY(is_seller number(1) default 0);
ALTER TABLE member DROP COLUMN delflag;
ALTER TABLE member MODIFY(delflag number(1) default 0);
ALTER TABLE member add (delflag number(1));
insert into member values();

insert into member (
    username, email, password, gender, birth, phone, enrolldate
)values (
    'doli0413','doli0413@daum.net','doli0612@','MALE',sysdate, '010-2401-9435',sysdate
);


CREATE TABLE delivery (
  username VARCHAR(200) NOT NULL,
  zipcode VARCHAR(255) NULL,
  name_of_delivery VARCHAR(255) NULL,
  address1 VARCHAR(255) not NULL unique,
  address2 VARCHAR(200) NULL,
  is_main_address char(1)  DEFAULT 'T',
  CONSTRAINT fk_delivery_member
    FOREIGN KEY (username)
    REFERENCES member(username));
    
 CREATE INDEX delivery_INDEX ON delivery(username); 


-- -----------------------------------------------------
-- Table `maketplace`.`admin`
-- -----------------------------------------------------
CREATE TABLE admin (
  id CHAR(5) DEFAULT 'ADMIN',
  password VARCHAR(300) NOT NULL,
  name VARCHAR(200) NOT NULL,
  levels number(1) default 5,
  role CHAR(10) DEFAULT 'ROLE_ADMIN',
  PRIMARY KEY (id));


-- -----------------------------------------------------
-- Table `maketplace`.`complain`
-- -----------------------------------------------------
CREATE TABLE complain (
    complain_num number primary key,
  username VARCHAR(255) NOT NULL,
  subject VARCHAR(255) NULL,
  context VARCHAR(255) NULL,
  regDate DATE DEFAULT sysdate,
  answer VARCHAR(1000) NULL,
  ansDate DATE NULL,
  CONSTRAINT fk_member_complain
    FOREIGN KEY (username)
    REFERENCES member (username));
    
    CREATE INDEX complain_INDEX ON complain(username); 


-- -----------------------------------------------------
-- Table `maketplace`.`product`
-- -----------------------------------------------------
CREATE TABLE product (
  ProdNumber VARCHAR(200) NOT NULL,
  name VARCHAR(400) NOT NULL,
  thumbnail VARCHAR(500) DEFAULT 'null',
  seller VARCHAR(255) NOT NULL,
  regDate DATE DEFAULT sysdate,
  stock number DEFAULT 0,
  price VARCHAR(1000) DEFAULT 0,
  options VARCHAR(200) NULL,
  PRIMARY KEY (ProdNumber),
  CONSTRAINT fk_member_product
    FOREIGN KEY (seller)
    REFERENCES member (username));
    
    create index product_index on product(seller);


-- -----------------------------------------------------
-- Table `maketplace`.`review`
-- -----------------------------------------------------
CREATE TABLE review (
  ProdNumber VARCHAR(200) NOT NULL,
  reviewer VARCHAR(200) NOT NULL,
  thumbNail VARCHAR(500) NULL,
  score INT DEFAULT 0,
  regDate DATE DEFAULT sysdate,
  content VARCHAR(600) NOT NULL,
  CONSTRAINT fk_product_review
    FOREIGN KEY (ProdNumber)
    REFERENCES product (ProdNumber));
    
    create index review_index on review(ProdNumber);


-- -----------------------------------------------------
-- Table `maketplace`.`purchase`
-- -----------------------------------------------------
CREATE TABLE purchase (
  orderNumber VARCHAR(300) NOT NULL,
  username VARCHAR(255) NOT NULL,--
  ProdNumber VARCHAR(200) NOT NULL,--
  purchaseDate DATE DEFAULT sysdate,
  arrive char(1) DEFAULT 'F',
  PRIMARY KEY (orderNumber),
  CONSTRAINT fk_member_purchase
    FOREIGN KEY (username)
    REFERENCES member (username),
  CONSTRAINT fk_product_purchase
    FOREIGN KEY (ProdNumber)
    REFERENCES product (ProdNumber));
    
    create index purchase_index on purchase(username);
    create index purchase_index_Prod on purchase(ProdNumber);


-- -----------------------------------------------------
-- Table `maketplace`.`shipping_information`
-- -----------------------------------------------------
CREATE TABLE shipping_information (
  shppingNumber VARCHAR(255) NOT NULL,
  username VARCHAR(255) NULL,--
  orderNumber VARCHAR(300) NOT NULL,--
  Courier VARCHAR(100) NOT NULL,
  parcel_number VARCHAR(100) NOT NULL,
  delivery_state VARCHAR(100) DEFAULT 'shipping',
  PRIMARY KEY (shppingNumber),
  CONSTRAINT fk_purchase_shipping
    FOREIGN KEY (orderNumber)
    REFERENCES purchase (orderNumber),
  CONSTRAINT fk_shipping_information_member
    FOREIGN KEY (username)
    REFERENCES member (username));

create index shipping_index_username on member(username);
create index shipping_index_purchase on purchase(ORDERNUMBER);
