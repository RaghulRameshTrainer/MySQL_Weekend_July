 use student;

 CREATE TABLE CUSTOMER (
 CUSTID INT,
 custname varchar(100),
 city VARCHAR(100)
 );
 
 INSERT INTO CUSTOMER VALUES(1000,'Raghul Ramesh','Chennai');
INSERT INTO CUSTOMER VALUES(1001,'Ashwin Sekar','Bangalore');
INSERT INTO CUSTOMER VALUES(1002,'Aveek Mishra','Pune');
INSERT INTO CUSTOMER VALUES(1003,'Pankaj kumar','Delhi');
INSERT INTO CUSTOMER VALUES(1004,'Jitendra kumar','Hyderabad');

SELECT * FROM CUSTOMER;

CREATE TABLE transaction_tbl(
transid INT,
custid int,
productname varchar(100),
amount int
);

INSERT INTO TRANSACTION_TBL VALUES(1,1000,'Laptop',5000);
INSERT INTO TRANSACTION_TBL VALUES(2,1002,'Mobile',20000);
INSERT INTO TRANSACTION_TBL VALUES(3,1001,'Toys',2000);
INSERT INTO TRANSACTION_TBL VALUES(4,1001,'Chocolates',500);
INSERT INTO TRANSACTION_TBL VALUES(5,1003,'Books',1200);
INSERT INTO TRANSACTION_TBL VALUES(6,1000,'TV',65000);
INSERT INTO TRANSACTION_TBL VALUES(7,1000,'Table',3000);
INSERT INTO TRANSACTION_TBL VALUES(8,1002,'Toys',10000);
INSERT INTO TRANSACTION_TBL VALUES(9,1002,'Dekstop',50000);
INSERT INTO TRANSACTION_TBL VALUES(10,1005,'Software',100000);

SELECT * FROM TRANSACTION_TBL;

-- CROSS JOIN

SELECT * FROM CUSTOMER CROSS JOIN TRANSACTION_TBL;

-- INNER JOIN

CREATE TABLE USER_TBL(
id INT,
name VARCHAR(100),
city VARCHAR(100)
);

INSERT INTO USER_TBL VALUES(1,'Raja','Chennai'),(2,'Ranjitha','Chennai'),
(3,'Tharana','Bangalore'),(4,'Siva','Bangalore'),(5,'Prakash','Bangalore'),
(6,'Ram','Hyderabad'),(7,'Jagan','Hyderabad');

SELECT * FROM USER_TBL;

SELECT l.name,r.name,l.city
FROM user_tbl l , user_tbl r
WHERE l.id != r.id
AND l.city=r.city;


-- VIEW
-- View is a virtual table

SELECT * FROM transaction_tbl;

SELECT custid,productname, amount FROM transaction_tbl;

CREATE VIEW product_data AS
SELECT productname, amount FROM transaction_tbl 
WHERE productname IN ('Laptop','Mobile','TV','Desktop','Software');

ALTER VIEW product_data AS
SELECT productname, amount FROM transaction_tbl ;


SELECT * FROM product_data;

SELECT * FROM transaction_tbl;
INSERT INTO transaction_tbl VALUES(11,1000,'Pizza',500);
INSERT INTO transaction_tbl VALUES(12,1001,'Software',555555);


-- INDEX;

SHOW INDEX FROM CUSTOMER;

CREATE INDEX cust_idx ON CUSTOMER(custid);
CREATE INDEX cust_idx2 ON CUSTOMER(custid,custname);


SELECT * FROM CUSTOMER ;


SELECT * FROM CUSTOMER WHERE custid=1002;

SELECT * FROM CUSTOMER WHERE custid > 1002 AND custname LIKE 'Jitendra%';

SELECT * FROM mytable_unique;

SHOW INDEX FROM mytable_unique;

SHOW CREATE TABLE mytable_unique;
SHOW INDEX FROM mytable_pk;

SELECT * FROM mytable_unique;

SHOW CREATE TABLE mytable_pk;


-- TRANSACTION CONTROL STATEMENT -- commit and rollback

SELECT * FROM transaction_tbl;

SET sql_safe_updates=0;

START TRANSACTION;

UPDATE transaction_tbl SET amount=100000 WHERE transid=4;

COMMIT;  -- Make the change permenantly 
ROLLBACK;  -- Revert or undo the changes


SELECT * FROM customer;

START transaction;

UPDATE CUSTOMER SET city='Cochin' WHERE city='Delhi';

COMMIT;
ROLLBACK;

-- DCL  DATA CONTROL LANGUAGE

GRANT SELECT ,INSERT ON customer TO 'root'@'localhost';
REVOKE INSERT ON customer FROM 'root'@'localhost';

GRANT ALL ON customer TO 'root'@'localhost';
REVOKE DELETE ON customer FROM 'root'@'localhost';  

-- root is an administrator for this database who have all permission

-- LIKE

SELECT transid,custid, substr(productname,1,4) as prod,amount FROM transaction_tbl;

SELECT * FROM transaction_tbl WHERE productname LIKE 'T%';

SELECT * FROM transaction_tbl WHERE productname LIKE '%o%';

SELECT * FROM transaction_tbl WHERE productname LIKE 'T___'
 OR  productname LIKE 'T__' 
 OR  productname LIKE 'T_';

SELECT * FROM transaction_tbl WHERE productname LIKE '%e';

-- STRING FUNTIONS:

SELECT transid, custid, UPPER(productname) , amount from transaction_tbl;
SELECT transid, custid, productname , amount from transaction_tbl;
SELECT transid, custid, LOWER(productname) , amount from transaction_tbl;

SELECT transid, custid, concat(upper(productname),'_',amount) as prod_info FROM transaction_tbl;
SELECT transid, custid, productname,length(productname) as no_of_character,amount as prod_info FROM transaction_tbl;
SELECT transid, custid, replace(productname,'o','-') , amount from transaction_tbl;
SELECT transid, custid, replace(productname,'Toys','GAME') , amount from transaction_tbl;

SELECT transid, custid, substr(upper(productname),1,3) as pdct, amount from transaction_tbl;

























