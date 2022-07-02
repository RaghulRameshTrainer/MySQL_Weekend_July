-- DATABASE is a collections of table
-- table is to store the data

-- SQL -> Structures Query Language

-- MySQL is case insensitive

CREATE DATABASE cust;   
create database mydb;
DROP database mydb;
CREATE DATABASE IF NOT EXISTS new_database;
DROP DATABASE IF EXISTS mydb;
DROP DATABASE IF EXISTS new_database;

USE cust;

-- QUERY TYPES
-- DDL -> DATA DEFINITION LANGUAGE
-- 	CREATE , ALTER, DROP
-- DML -> DATA MANUPLUATION LANGUAGE
-- 	INSERT, UPDATE, DELETE
-- DCL  -> DATE CONTROL LANGUAGE
-- 	GRANT, REVOKE
-- TCL  -> TRANSACTION CONTROL LANGUAGE
-- 	COMMIT, ROLLBACK, SAVEPOINT
-- DQL -> DATA QUERY LANGUAGE
-- 	SELECT



-- CREATE TABLE  

-- DROP TABLE customer;
CREATE TABLE IF NOT EXISTS customer(
custid INT,
first_name VARCHAR(100),
last_name VARCHAR(50),
gender CHAR(1),
age INT,
city VARCHAR(50),
mobile INT
);

DESC CUSTOMER;

SHOW CREATE TABLE CUSTOMER;

