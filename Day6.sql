 use student;
 
SELECT productname, amount FROM transaction_tbl WHERE amount>5000; -- <predictor push down approach>
																	-- <projective push down>
SELECT * FROM transaction_tbl;

SELECT count(2) FROM transaction_tbl;
SELECT productname,amount FROM transaction_tbl WHERE amount = (SELECT min(amount) FROM transaction_tbl);
SELECT productname,amount FROM transaction_tbl WHERE amount = (SELECT max(amount) FROM transaction_tbl);
UPDATE  transaction_tbl SET amount=500 WHERE transid=4;
SELECT sum(amount) FROM transaction_tbl;
SELECT avg(amount) FROM transaction_tbl;
SELECT MEDIAN(transid) FROM transaction_tbl;

SELECT amount, round(sqrt(amount),1) FROM transaction_tbl;
SELECT round(55.651432245,2) FROM DUAL;

CREATE TABLE CUSTOMER_TBL (
 CUSTID INT,
 custname varchar(100),
 city VARCHAR(100),
 REGISTERED_DATE datetime
 );
 
  
 INSERT INTO CUSTOMER_TBL VALUES(1000,'Raghul Ramesh','Chennai','2020-01-01 10:00:30');
INSERT INTO CUSTOMER_TBL VALUES(1001,'Ashwin Sekar','Bangalore','2021-01-31 10:10:30');
INSERT INTO CUSTOMER_TBL VALUES(1002,'Aveek Mishra','Pune','2022-01-31 10:20:30');
INSERT INTO CUSTOMER_TBL VALUES(1003,'Pankaj kumar','Delhi','2020-05-01 11:30:30');
INSERT INTO CUSTOMER_TBL VALUES(1004,'Jitendra kumar','Hyderabad','2020-05-01 12:30:30');

SELECT * FROM CUSTOMER_TBL;
SELECT * FROM CUSTOMER_TBL WHERE date(registered_date)='2020-01-01';
SELECT * FROM CUSTOMER_TBL WHERE month(registered_date)='05';
SELECT * FROM CUSTOMER_TBL WHERE day(registered_date)='31';
SELECT * FROM CUSTOMER_TBL WHERE time(registered_date)='10:00:30';
SELECT custname, registered_date, NEXT_DAY(registered_date) AS Next_Day FROM CUSTOMER_TBL;
--
SELECT custname, registered_date, NEXT_DAY(registered_date,'FRIDAY')  Next_Day FROM CUSTOMER_TBL;
SELECT custname, registered_date, LAST_DAY(registered_date)  FROM CUSTOMER_TBL;

SELECT custname, registered_date, EXTRACT(YEAR FROM registered_date)  year,
EXTRACT(MONTH FROM registered_date)  month,
EXTRACT(DAY FROM registered_date)  day FROM CUSTOMER_TBL;
--

SELECT current_timestamp() FROM dual;

SELECT custname, substr(custname,1,6) as first_name FROM CUSTOMER_TBL WHERE custid=1000;
SELECT  string_split(custname)  FROM CUSTOMER_TBL WHERE custid=1000;

SELECT substring_index(custname," ",1) as firstname,
substring_index(custname," ",-1) as lastname
FROM CUSTOMER_TBL;

SELECT SUBSTR(custname,1,3) FROM CUSTOMER_TBL;


-- RANKING FUNCITON


-- RANKING FUNCTION

row_number()
rank()
dense_rank()

CREATE TABLE order_table(
orderid INT,
prodname VARCHAR2(100),
amount INT,
country VARCHAR2(100)
);

INSERT INTO order_table VALUES(1,'Laptop',70000,'India');--,
INSERT INTO order_table VALUES(2,'Mobile',80000,'India');
INSERT INTO order_table VALUES(3,'Desktop',90000,'India');
INSERT INTO order_table VALUES(4,'Others',90000,'India');
INSERT INTO order_table VALUES(1,'Laptop',50000,'USA');
INSERT INTO order_table VALUES(2,'Mobile',40000,'USA');
INSERT INTO order_table VALUES(3,'Desktop',50000,'USA');
INSERT INTO order_table VALUES(1,'Laptop',60000,'Canada');
INSERT INTO order_table VALUES(2,'Mobile',80000,'Canada');
INSERT INTO order_table VALUES(3,'Desktop',50000,'Canada');
INSERT INTO order_table VALUES(1,'Laptop',90000,'Singapore');
INSERT INTO order_table VALUES(2,'Mobile',50000,'Singapore');
INSERT INTO order_table VALUES(3,'Desktop',80000,'Singapore');
INSERT INTO order_table VALUES(1,'Laptop',70000,'Australia');
INSERT INTO order_table VALUES(2,'Mobile',70000,'Australia');
INSERT INTO order_table VALUES(3,'Desktop',70000,'Australia');
INSERT INTO order_table VALUES(3,'Desktop',70000,'Australia');



SELECT * FROM order_table;

SELECT orderid,prodname,amount,country,row_number() OVER (partition by country order by amount DESC) rnk FROM order_table;

SELECT orderid, prodname, amount, country, rnk FROM (
SELECT orderid,prodname,amount,country,row_number() OVER (partition by country order by amount DESC) rnk FROM order_table) abc 
WHERE rnk=1;

SELECT orderid,prodname,amount,country,rank() OVER ( order by amount DESC) rnk FROM order_table; 

SELECT orderid,prodname,amount,country,rank() OVER (partition by country order by amount DESC) rnk FROM order_table; 


SELECT orderid, prodname, amount, country, rnk FROM (
SELECT orderid,prodname,amount,country,rank() OVER (partition by country order by amount DESC) rnk FROM order_table) abc 
WHERE rnk=1;

SELECT orderid,prodname,amount,country,dense_rank() OVER (order by amount DESC) rnk FROM order_table; 

SELECT orderid,prodname,amount,country,dense_rank() OVER (partition by country order by amount DESC) rnk FROM order_table; 


SELECT orderid, prodname, amount, country, rnk FROM (
SELECT orderid,prodname,amount,country,dense_rank() OVER (partition by country order by amount ) rnk FROM order_table) abc 
WHERE rnk <=2;


SELECT orderid, prodname, amount, country, rnk FROM (
SELECT orderid,prodname,amount,country,row_number() OVER (partition by country ,prodname, amount order by amount DESC) rnk FROM order_table) abc 
WHERE rnk=1;

SELECT prodname, country, amount, row_number() over ( order by amount DESC) rnk
FROM order_table;

SELECT prodname, country, amount, rank() over ( order by amount DESC) rnk
FROM order_table;

SELECT prodname, country, amount, dense_rank() over ( order by amount DESC) rnk
FROM order_table;




























