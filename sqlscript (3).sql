REM   Script: PLSQL_23Jul2022
REM   PLSQL_23Jul2022

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Vijay'); 
    age := agearray(30,25,27,30,26); 
    total=name.count; 
     
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Vijay'); 
    age := agearray(30,25,27,30,26); 
    total := name.count; 
     
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Vijay'); 
    age := agearray(30,25,27,30,26); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Vijay'); 
    age := agearray(30,25,27,30); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Vijay'); 
    age := agearray(30,25,27,30,46); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi'); 
    age := agearray(30,25,27,30); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi'); 
    age := agearray(30,25,27,30); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line('Emp Name: ' || name(x) || ',' || ' Emp Age: '|| age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi'); 
    age := agearray(30,25,27,30); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line( name(x) || ',' || age(x)); 
    END LOOP; 
     
END;
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi'); 
    age := agearray(30,25,27,30); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    dbms_output.put_line('Emp Name'||','||'Age'); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line( name(x) || ',' || age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Ajit'); 
    age := agearray(30,25,27,30,47); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    dbms_output.put_line('Emp Name'||','||'Age'); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line( name(x) || ',' || age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(5) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(5) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Ajit','Surya'); 
    age := agearray(30,25,27,30,47,44); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    dbms_output.put_line('Emp Name'||','||'Age'); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line( name(x) || ',' || age(x)); 
    END LOOP; 
     
END; 
/

DECLARE 
TYPE namearray IS VARRAY(6) OF VARCHAR2(100); 
TYPE agearray IS VARRAY(6) OF INTEGER; 
name namearray; 
age agearray; 
total INTEGER; 
BEGIN 
    name := namearray('Bala','Priya','Siva','Sakshi','Ajit','Surya'); 
    age := agearray(30,25,27,30,47,44); 
    total := name.count; 
     
    dbms_output.put_line('Total number of employees: '|| total); 
    dbms_output.put_line('Emp Name'||','||'Age'); 
    FOR x in 1 .. total LOOP 
       dbms_output.put_line( name(x) || ',' || age(x)); 
    END LOOP; 
     
END; 
/

CREATE TABLE CUSTOMER(  
ID INT NOT NULL,  
NAME VARCHAR2(100),  
AGE INT,  
CITY VARCHAR2(100),  
SALARY DECIMAL (20,2)  
);

INSERT INTO CUSTOMER VALUES(1,'Rajesh',28,'Chennai',100000);

INSERT INTO CUSTOMER VALUES(1,'Rajesh',28,'Chennai',100000);

INSERT INTO CUSTOMER VALUES(1,'Rajesh',28,'Chennai',100000);

INSERT INTO CUSTOMER VALUES(1,'Rajesh',28,'Chennai',100000);

DELETE FROM CUSTOMER WHERE ID=1;

INSERT INTO CUSTOMER VALUES(1,'Rajesh',28,'Chennai',100000);

INSERT INTO CUSTOMER VALUES(2,'Kavin',2,'Bangalore',200000);

INSERT INTO CUSTOMER VALUES(3,'Sangavi',25,'Chennai',70000);

INSERT INTO CUSTOMER VALUES(4,'Ravi',50,'Hyderabad',90000);

INSERT INTO CUSTOMER VALUES(5,'Kala',40,'Chennai',75000);

INSERT INTO CUSTOMER VALUES(6,'Priya',26,'Pune',50000);

INSERT INTO CUSTOMER VALUES(7,'Durga',36,'Pune',120000);

SELECT * FROM CUSTOMER;

DECLARE 
    c_id customer.id%type : =5; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
END; 
/

DECLARE 
    c_id customer.id%type :=5; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
END; 
/

DECLARE 
    c_id customer.id%type :=10; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
     
    -- EXCEPTION 
    -- WHEN no_data_found THEN 
    --     DBMS_OUTPUT.PUT_LINE('No Such Employee') 
END; 
/

DECLARE 
    c_id customer.id%type :=10; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        DBMS_OUTPUT.PUT_LINE('No Such Employee') 
END; 
/

DECLARE 
    c_id customer.id%type :=10; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        DBMS_OUTPUT.PUT_LINE('No Such Employee'); 
END; 
/

DECLARE 
    c_id customer.id%type :=10; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
     
    -- EXCEPTION 
    -- WHEN no_data_found THEN 
    --     DBMS_OUTPUT.PUT_LINE('No Such Employee'); 
         
    DBMS_OUTPUT.PUT_LINE('I AM NEXT LINE'); 
END; 
/

DECLARE 
    c_id customer.id%type :=10; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
     
    EXCEPTION 
    WHEN no_data_found THEN 
        DBMS_OUTPUT.PUT_LINE('No Such Employee'); 
         
    DBMS_OUTPUT.PUT_LINE('I AM NEXT LINE'); 
END; 
/

DECLARE 
    c_id customer.id%type :=10; 
    c_name customer.name%type; 
    c_age customer.age%type; 
    c_city customer.city%type; 
    c_salary customer.salary%type; 
BEGIN 
    SELECT name, age, city, salary INTO c_name, c_age, c_city , c_salary  
    FROM customer WHERE id=c_id; 
    DBMS_OUTPUT.PUT_LINE('Name: '|| c_name); 
    DBMS_OUTPUT.PUT_LINE('Age: '|| c_age); 
    DBMS_OUTPUT.PUT_LINE('City: '||c_city); 
    DBMS_OUTPUT.PUT_LINE('Salary: '||c_salary); 
     
    EXCEPTION 
    -- WHEN no_data_found THEN 
    --     DBMS_OUTPUT.PUT_LINE('No Such Employee'); 
    WHEN others THEN 
         DBMS_OUTPUT.PUT_LINE('Received new Error!'); 
         
    DBMS_OUTPUT.PUT_LINE('I AM NEXT LINE'); 
END; 
/

CREATE OR REPLACE PROCEDURE welcome 
AS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Welcome to ExcelR Learnings!'); 
END; 
/

EXECUTE welcome


EXECUTE welcome


BEGIN 
    welcome; 
END; 
/

BEGIN 
    welcome; 
END; 
/

CREATE OR REPLACE PROCEDURE welcome 
AS 
BEGIN 
    DBMS_OUTPUT.PUT_LINE('Welcome to ExcelR Learnings!!!'); 
END; 
/

BEGIN 
    welcome; 
END; 
/

DROP PROCEDURE welcome;

