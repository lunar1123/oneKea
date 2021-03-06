

CREATE TABLE ACCOUNT
(
	USERID varchar2(80 char) NOT NULL,
	EMAIL varchar2(80 char) NOT NULL,
	FIRSTNAME varchar2(80 char) NOT NULL,
	LASTNAME varchar2(80 char) NOT NULL,
	STATUS varchar2(2 char),
	ADDR1 varchar2(80 char) NOT NULL,
	ADDR2 varchar2(40 char),
	CITY varchar2(80 char) NOT NULL,
	STATE varchar2(80 char) NOT NULL,
	ZIP varchar2(20 char) NOT NULL,
	COUNTRY varchar2(20 char) NOT NULL,
	PHONE varchar2(80 char) NOT NULL,
	SELLCNT number(10,0) DEFAULT 0,
	NOPAYCNT number(10,0) DEFAULT 0,
	CONSTRAINT SYS_PK_10104 PRIMARY KEY (USERID)
);


CREATE TABLE AUCITEM
(
	AUCITEMID varchar2(10) NOT NULL,
	ITEMID varchar2(10 char) NOT NULL,
	PRICEUSER varchar2(80 char) NOT NULL,
	PRICE number(10,2) DEFAULT 0,
	STRDATE timestamp NOT NULL,
	ENDDATE timestamp NOT NULL,
	PRIMARY KEY (AUCITEMID)
);


CREATE TABLE BANNERDATA
(
	FAVCATEGORY varchar2(80 char) NOT NULL,
	BANNERNAME varchar2(255 char),
	CONSTRAINT SYS_PK_10132 PRIMARY KEY (FAVCATEGORY)
);


CREATE TABLE CARTITEM
(
	ITEMID varchar2(10 char) NOT NULL,
	USERID varchar2(80 char) NOT NULL,
	QUANTITY number(10,0) DEFAULT 0 NOT NULL,
	BUYOPT1 varchar2(255),
	BUYOPT2 varchar2(255),
	BUYOPT3 varchar2(255),
	PRIMARY KEY (ITEMID, USERID)
);


CREATE TABLE CATEGORY
(
	CATID varchar2(10 char) NOT NULL,
	NAME varchar2(80 char),
	DESCN varchar2(255 char),
	CONSTRAINT SYS_PK_10204 PRIMARY KEY (CATID)
);


CREATE TABLE CUSITEM
(
	ITEMID varchar2(10 char) NOT NULL,
	SELLOPT1 varchar2(255),
	SELLOPT2 varchar2(255),
	SELLOPT3 varchar2(255),
	PRIMARY KEY (ITEMID)
);


CREATE TABLE IMAGE
(
	IMGID number(10,0) NOT NULL,
	ITEMID varchar2(10 char) NOT NULL,
	PATH varchar2(255),
	PRIMARY KEY (IMGID, ITEMID)
);


CREATE TABLE INVENTORY
(
	ITEMID varchar2(10 char) NOT NULL,
	QTY number(10,0) NOT NULL,
	CONSTRAINT SYS_PK_10226 PRIMARY KEY (ITEMID)
);


CREATE TABLE ITEM
(
	ITEMID varchar2(10 char) NOT NULL,
	SELLERID varchar2(80 char) NOT NULL,
	PRODUCTID varchar2(10 char) NOT NULL,
	SUPPLIER number(10,0),
	ITEMNAME varchar2(255) NOT NULL,
	DESCN blob,
	LISTPRICE number(10,2),
	UNITCOST number(10,2),
	STATUS varchar2(2 char),
	ATTR1 varchar2(80 char),
	ATTR2 varchar2(80 char),
	ATTR3 varchar2(80 char),
	ATTR4 varchar2(80 char),
	ATTR5 varchar2(80 char),
	CONSTRAINT SYS_PK_10216 PRIMARY KEY (ITEMID)
);


CREATE TABLE JOINAUC
(
	AUCITEMID varchar2(10) NOT NULL,
	USERID varchar2(80 char) NOT NULL,
	PRICE number(10,2) NOT NULL,
	PRIMARY KEY (AUCITEMID, USERID)
);


CREATE TABLE LINEITEM
(
	ORDERID number(10,0) NOT NULL,
	LINENUM number(10,0) NOT NULL,
	ITEMID varchar2(10 char) NOT NULL,
	QUANTITY number(10,0) NOT NULL,
	UNITPRICE number(10,2) NOT NULL,
	BUYOPT1 varchar2(255),
	BUYOPT2 varchar2(255),
	BUYOPT3 varchar2(255),
	CONSTRAINT PK_LINEITEM PRIMARY KEY (ORDERID, LINENUM)
);


CREATE TABLE ORDERS
(
	ORDERID number(10,0) NOT NULL,
	USERID varchar2(80 char) NOT NULL,
	ORDERDATE date NOT NULL,
	SHIPADDR1 varchar2(80 char) NOT NULL,
	SHIPADDR2 varchar2(80 char),
	SHIPCITY varchar2(80 char) NOT NULL,
	SHIPSTATE varchar2(80 char) NOT NULL,
	SHIPZIP varchar2(20 char) NOT NULL,
	SHIPCOUNTRY varchar2(20 char) NOT NULL,
	BILLADDR1 varchar2(80 char) NOT NULL,
	BILLADDR2 varchar2(80 char),
	BILLCITY varchar2(80 char) NOT NULL,
	BILLSTATE varchar2(80 char) NOT NULL,
	BILLZIP varchar2(20 char) NOT NULL,
	BILLCOUNTRY varchar2(20 char) NOT NULL,
	COURIER varchar2(80 char) NOT NULL,
	TOTALPRICE number(10,2) NOT NULL,
	BILLTOFIRSTNAME varchar2(80 char) NOT NULL,
	BILLTOLASTNAME varchar2(80 char) NOT NULL,
	SHIPTOFIRSTNAME varchar2(80 char) NOT NULL,
	SHIPTOLASTNAME varchar2(80 char) NOT NULL,
	CREDITCARD varchar2(80 char) NOT NULL,
	EXPRDATE varchar2(7 char) NOT NULL,
	CARDTYPE varchar2(80 char) NOT NULL,
	LOCALE varchar2(80 char) NOT NULL,
	CONSTRAINT SYS_PK_10136 PRIMARY KEY (ORDERID)
);


CREATE TABLE ORDERSTATUS
(
	ORDERID number(10,0) NOT NULL,
	TIMESTAMP date NOT NULL,
	STATUS varchar2(2 char) NOT NULL,
	CONSTRAINT PK_ORDERSTATUS PRIMARY KEY (ORDERID)
);


CREATE TABLE PRODUCT
(
	PRODUCTID varchar2(10 char) NOT NULL,
	CATEGORY varchar2(10 char) NOT NULL,
	NAME varchar2(80 char),
	DESCN varchar2(255 char),
	CONSTRAINT SYS_PK_10208 PRIMARY KEY (PRODUCTID)
);


CREATE TABLE PROF
(
	USERID varchar2(80 char) NOT NULL,
	LANGPREF varchar2(80 char) NOT NULL,
	FAVCATEGORY varchar2(80 char) NOT NULL,
	MYLISTOPT number(10,0),
	BANNEROPT number(10,0),
	CONSTRAINT SYS_PK_10126 PRIMARY KEY (USERID)
);


CREATE TABLE SEQ
(
	NAME varchar2(30 char) NOT NULL,
	NEXTID number(10,0) NOT NULL,
	CONSTRAINT SYS_PK_10232 PRIMARY KEY (NAME)
);


CREATE TABLE SIGNON
(
	USERNAME varchar2(80 char) NOT NULL,
	PASSWORD varchar2(25 char) NOT NULL,
	CONSTRAINT SYS_PK_10098 PRIMARY KEY (USERNAME)
);


CREATE TABLE SUPPLIER
(
	SUPPID number(10,0) NOT NULL,
	NAME varchar2(80 char),
	STATUS varchar2(2 char) NOT NULL,
	ADDR1 varchar2(80 char),
	ADDR2 varchar2(80 char),
	CITY varchar2(80 char),
	STATE varchar2(80 char),
	ZIP varchar2(5 char),
	PHONE varchar2(80 char),
	CONSTRAINT SYS_PK_10092 PRIMARY KEY (SUPPID)
);



/* Create Foreign Keys */

ALTER TABLE AUCITEM
	ADD FOREIGN KEY (PRICEUSER)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE CARTITEM
	ADD FOREIGN KEY (USERID)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE ITEM
	ADD FOREIGN KEY (SELLERID)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE JOINAUC
	ADD FOREIGN KEY (USERID)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE ORDERS
	ADD FOREIGN KEY (USERID)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE PROF
	ADD FOREIGN KEY (USERID)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE SIGNON
	ADD FOREIGN KEY (USERNAME)
	REFERENCES ACCOUNT (USERID)
;


ALTER TABLE JOINAUC
	ADD FOREIGN KEY (AUCITEMID)
	REFERENCES AUCITEM (AUCITEMID)
;


ALTER TABLE PROF
	ADD FOREIGN KEY (FAVCATEGORY)
	REFERENCES BANNERDATA (FAVCATEGORY)
;


ALTER TABLE PRODUCT
	ADD CONSTRAINT FK_PRODUCT_1 FOREIGN KEY (CATEGORY)
	REFERENCES CATEGORY (CATID) 
;


ALTER TABLE AUCITEM
	ADD FOREIGN KEY (ITEMID)
	REFERENCES ITEM (ITEMID)
;


ALTER TABLE CARTITEM
	ADD FOREIGN KEY (ITEMID)
	REFERENCES ITEM (ITEMID)
;


ALTER TABLE CUSITEM
	ADD FOREIGN KEY (ITEMID)
	REFERENCES ITEM (ITEMID)
;


ALTER TABLE IMAGE
	ADD FOREIGN KEY (ITEMID)
	REFERENCES ITEM (ITEMID)
;


ALTER TABLE INVENTORY
	ADD FOREIGN KEY (ITEMID)
	REFERENCES ITEM (ITEMID)
;


ALTER TABLE LINEITEM
	ADD FOREIGN KEY (ITEMID)
	REFERENCES ITEM (ITEMID)
;


ALTER TABLE LINEITEM
	ADD FOREIGN KEY (ORDERID)
	REFERENCES ORDERS (ORDERID)
;


ALTER TABLE ORDERSTATUS
	ADD FOREIGN KEY (ORDERID)
	REFERENCES ORDERS (ORDERID)
;


ALTER TABLE ITEM
	ADD CONSTRAINT FK_ITEM_1 FOREIGN KEY (PRODUCTID)
	REFERENCES PRODUCT (PRODUCTID) 
;


ALTER TABLE ITEM
	ADD CONSTRAINT FK_ITEM_2 FOREIGN KEY (SUPPLIER)
	REFERENCES SUPPLIER (SUPPID)
;




CREATE INDEX SYS_IDX_FK_ITEM_1_10221 ON ITEM USING BTREE ();
CREATE INDEX SYS_IDX_FK_ITEM_2_10223 ON ITEM USING BTREE ();
CREATE INDEX ITEMPROD ON ITEM USING BTREE ();
CREATE INDEX SYS_IDX_FK_PRODUCT_1_10213 ON PRODUCT USING BTREE ();
CREATE INDEX PRODUCTCAT ON PRODUCT USING BTREE ();
CREATE INDEX PRODUCTNAME ON PRODUCT USING BTREE ();



