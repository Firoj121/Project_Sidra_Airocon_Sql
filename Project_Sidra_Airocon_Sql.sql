CREATE DATABASE SIDRA_AIROCON;
USE SIDRA_AIROCON;

CREATE TABLE ACCOUNTS(
ID INT NOT NULL auto_increment PRIMARY KEY,
EMP_NAME VARCHAR(20),
DESIGNATION VARCHAR(20),
PROJECT VARCHAR(20),
EXPENSE VARCHAR(20),
SALARY decimal(10));


SELECT *FROM ACCOUNTS;
SELECT*FROM SALES;

drop table ACCOUNTS;

ALTER TABLE ACCOUNTS
ADD SERVICE VARCHAR(20);

ALTER TABLE ACCOUNTS
ADD SALARY DECIMAL(10);

ALTER TABLE ACCOUNTS
DROP COLUMN SERVICE;


INSERT INTO ACCOUNTS(EMP_NAME,DESIGNATION,PROJECT,EXPENSE,SALARY)
VALUES('NADIR_KHAN','PROJECT_MANAGER','LG_VRF',15000,45000);
INSERT INTO ACCOUNTS(EMP_NAME,DESIGNATION,PROJECT,EXPENSE,SALARY)
VALUES('ZANNY_HASAN','SITE_ENGINEER','LG',10000,30000);
INSERT INTO ACCOUNTS(EMP_NAME,DESIGNATION,PROJECT,EXPENSE,SALARY)
VALUES('ABDUL_KHAN','SITE_MANAGER','LG',12500,30000);
INSERT INTO ACCOUNTS(EMP_NAME,DESIGNATION,PROJECT,EXPENSE,SALARY)
VALUES('SAHIL_KUMAR','PROJECT_MANAGER','LG_VRF',15250,35000);
INSERT INTO ACCOUNTS(EMP_NAME,DESIGNATION,PROJECT,EXPENSE,SALARY)
VALUES('ANUBHAV_SHARMA','FIELD_ENGINEER','VOLTAS',13000,35000);
INSERT INTO ACCOUNTS(EMP_NAME,DESIGNATION,PROJECT,EXPENSE,SALARY)
VALUES('SAHIL_SHARMA','FIELD_ENGINEER','VOLTAS',13500,38500);


SELECT*FROM ACCOUNTS
WHERE SALARY >38500;

SELECT SUM(SALARY),DESIGNATION FROM ACCOUNTS
GROUP BY DESIGNATION;

SELECT*FROM ACCOUNTS
WHERE DESIGNATION='PROJECT_MANAGER';


SELECT*FROM ACCOUNTS
WHERE EMP_NAME='NADIR_KHAN';

CREATE TABLE SALES(
E_ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
EMP_NAME VARCHAR(20),
STATE VARCHAR(20),
CITY VARCHAR(20),
MOBILE_NO VARCHAR(10),
BRAND varchar(20));

SELECT*FROM SALES;

drop table sales;

INSERT INTO SALES(EMP_NAME,STATE,CITY,MOBILE_NO,BRAND)
VALUES('NADIR_KHAN','U.P','SAHARANPUR',7078410080,'LG');
INSERT INTO SALES(EMP_NAME,STATE,CITY,MOBILE_NO,BRAND)
VALUES('ZANNY_HASAN','U.P','NEERUT',7078410080,'LG');
INSERT INTO SALES(EMP_NAME,STATE,CITY,MOBILE_NO,BRAND)
VALUES('ABDUL_KHAN','U.K','HALDWANI',7078410080,'DAIKIN');
INSERT INTO SALES(EMP_NAME,STATE,CITY,MOBILE_NO,BRAND)
VALUES('SAHIL_KUMAR','U.K','KOTDWAR',7078410080,'DAIKIN');
INSERT INTO SALES(EMP_NAME,STATE,CITY,MOBILE_NO,BRAND)
VALUES('ANUBHAV_SHARMA','H.P','SHIMLA',7078410080,'VOLTAS');
INSERT INTO SALES(EMP_NAME,STATE,CITY,MOBILE_NO,BRAND)
VALUES('SAHIL_SHARMA','H.P','KUFRI',7078410080,'VOLTAS');


SELECT SUM(SALARY) FROM ACCOUNTS
WHERE DESIGNATION='PROJECT_MANAGER';

select*from ACCOUNTS
union all 
select*from sales;

select max(salary) from accounts;
select min(salary) from accounts;

select avg(salary) from accounts;

select sum(salary) from accounts;

select count(salary) from accounts;


select *from accounts
where emp_name like '_a%';

select*from accounts
where salary between 35000 and 40000;

select salary as rupees from accounts;

select accounts.emp_name,accounts.designation,sales.city from sales
left join accounts on accounts.emp_name=sales.emp_name
order by emp_name desc;

select id,count(id),salary from accounts
group by salary
having salary >35000;

set sql_safe_updates=0;

update accounts
set salary=((salary*5/100)+salary)
where salary;

select*from accounts;




