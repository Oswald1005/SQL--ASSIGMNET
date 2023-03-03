CREATE DATABASE ASSIGNMENT;
USE ASSIGNMENT;

-- QUE 01
CREATE TABLE TOTAL_SALES
(
 CUSTOMER_ID INT,
  CUSTOMER_NAME VARCHAR(45),
  BRANCH_NO VARCHAR(45),
  TOTAL_AMT INT,
  PRIMARY KEY (CUSTOMER_ID)
  );

 SELECT * FROM TOTAL_SALES; 
 
 select * from TOTAL_SALES order by TOTAL_AMT desc;
 
 -- QUE 02
 create table employee
 (
  EMPL_ID INT,
   F_NAME VARCHAR(45),
   EMPL_RATE INT,
    PRIMARY KEY (EMPL_ID) 
);
   SELECT*FROM EMPLOYEE;
   
   SELECT*FROM EMPLOYEE order by EMPL_RATE DESC;
   
   -- QUES 03
SELECT * FROM total_sales;
 SELECT CUSTOMER_ID ,AVG(TOTAL_AMT) AVG_TOTAL_AMOUNT
 FROM TOTAL_SALES
 GROUP BY CUSTOMER_ID 
 ORDER BY CUSTOMER_ID DESC;
 
 
   
    -- QUES 04
	SELECT * FROM employee;
    SELECT distinct EMPL_ID, F_NAME, EMPL_RATE FROM employee;
    
    -- QUES 05
 CREATE TABLE STORE_A
   ( PRODUCT_ID INT,
      NAME_PRO VARCHAR(45),
      SELL_AMT INT,
      PRIMARY KEY (PRODUCT_ID)
      );
      SELECT * FROM STORE_A;
      
     CREATE TABLE STORE_B
     ( CUST_ID INT,
        STOREE_A INT,
      CUST_NAME VARCHAR(45),
       TOTAL_AMT INT,
       PRIMARY KEY (CUST_ID),
       FOREIGN KEY (STOREE_A) REFERENCES STORE_A (PRODUCT_ID)
       );
     SELECT * FROM STORE_B;
     
 SELECT * FROM STORE_A
    LEFT JOIN STORE_B
    ON STORE_A.PRODUCT_ID=STORE_B.STOREE_A;
   
   SELECT * FROM STORE_A
    RIGHT JOIN STORE_B
    ON STORE_A.PRODUCT_ID=STORE_B.STOREE_A;
    
