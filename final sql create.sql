CREATE TABLE CUSTOMER
  (
    CUST_ID          INTEGER NOT NULL ,
    CUST_NO           INTEGER ,
    CUST_NAME         VARCHAR (100) ,
    EMAIL_ID          VARCHAR (100) ,
    PHONE_NO          INTEGER ,
    PREF_PAYMENT_TYPE VARCHAR (100)
  ) ;
ALTER TABLE CUSTOMER ADD CONSTRAINT CUSTOMER_PK PRIMARY KEY ( CUST_ID ) ;


CREATE TABLE DAY
  (
    DATE_ID INTEGER NOT NULL ,
    DAYT   VARCHAR (100) ,
    DAY_NAME VARCHAR (100),
    PER_NAME_WEEK     VARCHAR (100) ,
    PER_NAME_MONTH    VARCHAR (100),
    PER_NAME_QUARTER  VARCHAR (100),
    PER_NAME_YEAR     INTEGER
  ) ;
ALTER TABLE DAY ADD CONSTRAINT DAY_PK PRIMARY KEY ( DATE_ID ) ;

CREATE TABLE EMPLOYEE
  (
    EMP_ID    INTEGER NOT NULL ,
    EMP_NO     INTEGER ,
    EMP_NAME   VARCHAR (100) ,
    AGE        INTEGER ,
    STORE_NAME VARCHAR (100)
  ) ;
ALTER TABLE EMPLOYEE ADD CONSTRAINT EMPLOYEE_PK PRIMARY KEY ( EMP_ID ) ;



CREATE TABLE EMP_SAL
  (
    ROW_ID   INTEGER NOT NULL ,
    DATE_ID  INTEGER NOT NULL ,
    STORE_ID INTEGER NOT NULL ,
    EMP_ID   INTEGER NOT NULL ,
    SALARY    INTEGER
  ) ;
ALTER TABLE EMP_SAL ADD CONSTRAINT EMP_SAL_PK PRIMARY KEY ( ROW_ID ) ;


CREATE TABLE ORDERS
  (
    ROW_ID          INTEGER NOT NULL ,
    DATE_ID         INTEGER NOT NULL ,
    STORE_ID        INTEGER NOT NULL ,
    PRODUCT_ID      INTEGER NOT NULL ,
    QUANTITY_ORDERED INTEGER
  ) ;
ALTER TABLE ORDERS ADD CONSTRAINT ORDERS_PK PRIMARY KEY ( ROW_ID ) ;


CREATE TABLE PRODUCT
  (
    PRODUCT_WID        INTEGER NOT NULL ,
    PRODUCT_ID         VARCHAR (100) ,
    PRODUCT_NAME        VARCHAR (100) ,
    BRAND              VARCHAR (100) ,
    WEIGHT             INTEGER ,
    UNIT_COST_PRICE    INTEGER ,
    UNIT_SELLING_PRICE INTEGER
  ) ;
ALTER TABLE PRODUCT ADD CONSTRAINT PRODUCT_PK PRIMARY KEY ( PRODUCT_WID ) ;



CREATE TABLE SALES
  (
    ROW_ID       INTEGER NOT NULL ,
    STORE_ID     INTEGER NOT NULL ,
    PRODUCT_WID   INTEGER NOT NULL ,
    CUST_ID      INTEGER NOT NULL ,
    EMP_ID       INTEGER NOT NULL ,
    DATE_ID      INTEGER NOT NULL ,
    QUANTITY_SOLD INTEGER
  ) ;
ALTER TABLE SALES ADD CONSTRAINT SALES_PK PRIMARY KEY ( ROW_ID ) ;

CREATE TABLE STORE
  (
    STORE_ID         INTEGER NOT NULL ,
    STORE_NO          INTEGER ,
    STORE_NAME        VARCHAR (100) ,
    STORE_WRKNG_HOURS INTEGER ,
    ADDRESS           VARCHAR (255) ,
    EMAIL_ID          VARCHAR (100) ,
    PHONE_NO          INTEGER
  ) ;
ALTER TABLE STORE ADD CONSTRAINT STORE_PK PRIMARY KEY ( STORE_ID ) ;


ALTER TABLE EMP_SAL ADD CONSTRAINT EMPLOYEE_FK1 FOREIGN KEY ( DATE_ID ) REFERENCES DAY ( DATE_ID ) ;