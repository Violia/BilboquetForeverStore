DROP DATABASE IF EXISTS bilboquetforever_store;

CREATE DATABASE bilboquetforever_store;

USE bilboquetforever_store;

CREATE TABLE CUSTOMER (CUSTOMERID BIGINT NOT NULL, EMAIL VARCHAR(255),
FIRSTNAME VARCHAR(255), LASTNAME VARCHAR(255), ADDRESS_ADDRESSID BIGINT,
CREDITCARD_CREDITCARDID BIGINT, PRIMARY KEY (CUSTOMERID));

CREATE TABLE CREDITCARD (CREDITCARDID BIGINT NOT NULL, CARDTYPE INTEGER,
EXPIRATIONDATE VARCHAR(255), NUMBER VARCHAR(255), PRIMARY KEY (CREDITCARDID));

CREATE TABLE PRODUCT (PRODUCTID BIGINT NOT NULL, MODELINFORMATION TEXT, CODE
VARCHAR(255), DESCRIPTION VARCHAR(255), PRICE
DECIMAL(8,2), PRIMARY KEY (PRODUCTID));

CREATE TABLE INVOICE (NUMBER BIGINT NOT NULL, INVOICEDATE DATETIME, PROCESSED
TINYINT(1) default 0, CUSTOMER_CUSTOMERID BIGINT, PRIMARY KEY (NUMBER));

CREATE TABLE SUBSCRIBER (SUBSCRIBERID BIGINT NOT NULL, EMAIL VARCHAR(255),
FIRSTNAME VARCHAR(255), LASTNAME VARCHAR(255), PRIMARY KEY (SUBSCRIBERID));

CREATE TABLE ADDRESS (ADDRESSID BIGINT NOT NULL, ADDRESS1 VARCHAR(255),
ADDRESS2 VARCHAR(255), CITY VARCHAR(255), COMPANYNAME VARCHAR(255), COUNTRY
VARCHAR(255), POSTCODE VARCHAR(255), PRIMARY KEY
(ADDRESSID));


CREATE TABLE LINEITEM (LINEITEMID BIGINT NOT NULL, QUANTITY INTEGER,
PRODUCT_PRODUCTID BIGINT, PRIMARY KEY (LINEITEMID));


CREATE TABLE INVOICE_LINEITEM (Invoice_NUMBER BIGINT NOT NULL,
lineItems_LINEITEMID BIGINT NOT NULL, PRIMARY KEY (Invoice_NUMBER,
lineItems_LINEITEMID));

ALTER TABLE CUSTOMER ADD CONSTRAINT FK_CUSTOMER_CREDITCARD_CREDITCARDID
FOREIGN KEY (CREDITCARD_CREDITCARDID) REFERENCES CREDITCARD (CREDITCARDID);

ALTER TABLE CUSTOMER ADD CONSTRAINT FK_CUSTOMER_ADDRESS_ADDRESSID FOREIGN KEY
(ADDRESS_ADDRESSID) REFERENCES ADDRESS (ADDRESSID);

ALTER TABLE INVOICE ADD CONSTRAINT FK_INVOICE_CUSTOMER_CUSTOMERID FOREIGN KEY
(CUSTOMER_CUSTOMERID) REFERENCES CUSTOMER (CUSTOMERID);

ALTER TABLE LINEITEM ADD CONSTRAINT FK_LINEITEM_PRODUCT_PRODUCTID FOREIGN KEY
(PRODUCT_PRODUCTID) REFERENCES PRODUCT (PRODUCTID);

ALTER TABLE INVOICE_LINEITEM ADD CONSTRAINT FK_INVOICE_LINEITEM_Invoice_NUMBER
FOREIGN KEY (Invoice_NUMBER) REFERENCES INVOICE (NUMBER);

ALTER TABLE INVOICE_LINEITEM ADD CONSTRAINT
FK_INVOICE_LINEITEM_lineItems_LINEITEMID FOREIGN KEY (lineItems_LINEITEMID)
REFERENCES LINEITEM (LINEITEMID);

CREATE TABLE SEQUENCE (SEQ_NAME VARCHAR(50) NOT NULL, SEQ_COUNT DECIMAL(38), PRIMARY KEY (SEQ_NAME));

SELECT * FROM SEQUENCE WHERE SEQ_NAME = 'SEQ_GEN';

INSERT INTO SEQUENCE(SEQ_NAME, SEQ_COUNT) values ('SEQ_GEN', 0);

UPDATE SEQUENCE SET SEQ_COUNT = SEQ_COUNT + 50 WHERE SEQ_NAME = 'SEQ_GEN';

SELECT SEQ_COUNT FROM SEQUENCE WHERE SEQ_NAME = 'SEQ_GEN';

INSERT INTO PRODUCT (PRODUCTID, MODELINFORMATION, CODE, DESCRIPTION, PRICE) VALUES (1, 'Bilboquet en bois couleur naturel@Fabriqué en France
@Hauteur : environ 20 cm@Diamètre : environ 9 cm@', '01', 'Bilboquet - Modele en bois', 550);

INSERT INTO PRODUCT (PRODUCTID, MODELINFORMATION, CODE, DESCRIPTION, PRICE) VALUES (2, 'Bilboquet en bois couleur bleu@Fabriqué en France
@Hauteur : environ 20 cm@Diamètre : environ 9 cm@', '02', 'Bilboquet - Modele en bois',550);

INSERT INTO PRODUCT (PRODUCTID, MODELINFORMATION, CODE, DESCRIPTION, PRICE) VALUES (3, 'Bilboquet en bois couleur jaune@Fabriqué en France
@Hauteur : environ 20 cm@Diamètre : environ 9 cm@', '03', 'Bilboquet - Modele en bois',550);

INSERT INTO PRODUCT (PRODUCTID, MODELINFORMATION, CODE, DESCRIPTION, PRICE) VALUES (4, 'Bilboquet en bois couleur marron@Fabriqué en France
@Hauteur : environ 20 cm@Diamètre : environ 9 cm@', '04', 'Bilboquet - Modele en bois',550);
