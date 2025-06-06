
2. INSERT INTO customer(CustomerID, FirstName, LastName, PhoneNumber, Email)
VALUES(1010, 'Woai', 'xuexiao', '+86346578910', 'woaix@data.com');

3. INSERT INTO product
VALUES(1011, 'Qunzi', 'Clothing', 'Clothing', '10');

4. 
SELECT c.CustomerID, t.TransactionID, t.TransactionDate, t.TransactionType, t.TotalAmount, 
	p.ProductID, p.ProductName, p.Description, p.Category, p.Price as unitPrice
FROM CUSTOMER c
JOIN TRANSACTION t ON c.CustomerID = t.CustomerID
JOIN TRANSACTION_DETAILS td ON t.TransactionID = td.TransactionID
JOIN PRODUCT p ON td.ProductID = p.ProductID
WHERE c.CustomerID IN (SELECT CustomerID FROM CUSTOMER WHERE ROWNUM <= 10)
ORDER BY c.CustomerID;

5. 
UPDATE customer 
SET email='you@dzi.com' 
WHERE customerid = (select customerid from (select rownum no, customerid from customer) where no=2);

6. 

DELETE FROM order_details
WHERE orderid IN (select orderid from orders where customerid = (select customerid from (select rownum no, customerid from customer) where no=4));

DELETE FROM orders
WHERE customerid = (select customerid from (select rownum no, customerid from customer) where no=4);

DELETE FROM transaction_details
WHERE transactionID IN (select transactionID from transaction where customerid = (select customerid from (select rownum no, customerid from customer) where no=4));

DELETE FROM transaction
WHERE customerID = (select customerid from (select rownum no, customerid from customer) where no=4);

DELETE FROM customer
WHERE customerid = (select customerid from (select rownum no, customerid from customer) where no=4);

7. 
UPDATE product
SET price = 
     CASE 
         WHEN ProductName = 'Battery' THEN 1
         WHEN ProductName = 'Hat' THEN 2
     END
 WHERE ProductName IN ('Battery', 'Hat');

8. 
create user c##Group21 identified by Group21YYDS;   
grant connect,resource to c##Group21;
grant all on customer to c##Group21;
grant all on orders to c##Group21;
grant all on order_details to c##Group21;
grant all on product to c##Group21;
grant all on inventory to c##Group21;
grant all on transaction to c##Group21;
grant all on transaction_details to c##Group21;
grant all on transaction_details to c##Group21;
grant all on salary to c##Group21;
grant all on SHIFT to c##Group21;
grant all on STORE to c##Group21;

9.
ALTER SYSTEM SET ENCRYPTION KEY IDENTIFIED BY "Group21YYDS";

ALTER TABLE CUSTOMER MODIFY (PHONENUMBER ENCRYPT);
ALTER TABLE CUSTOMER MODIFY (EMAIL ENCRYPT);
ALTER TABLE EMPLOYEE MODIFY (PHONENUMBER ENCRYPT);
ALTER TABLE EMPLOYEE MODIFY (EMAIL ENCRYPT);
ALTER TABLE SALARY MODIFY (SALARYAMOUNT ENCRYPT);
ALTER TABLE TRANSACTION MODIFY (TOTALAMOUNT ENCRYPT);
ALTER TABLE TRANSACTION_DETAILS MODIFY (PRICE ENCRYPT);
ALTER TABLE TRANSACTION_DETAILS MODIFY (SUBTOTAL ENCRYPT);
ALTER TABLE ORDERS MODIFY (TotalCost ENCRYPT);
ALTER TABLE ORDER_DETAILS MODIFY (PRICE ENCRYPT);
ALTER TABLE ORDER_DETAILS MODIFY (SUBTOTAL ENCRYPT);
ALTER TABLE PRODUCT MODIFY (PRICE ENCRYPT);
ALTER TABLE INVENTORY MODIFY (Quantity ENCRYPT);
ALTER TABLE INVENTORY MODIFY (ReorderPoint ENCRYPT);

ALTER SYSTEM SET ENCRYPTION WALLET CLOSE IDENTIFIED BY "Group21YYDS";

10.
CREATE table customerFeedback(
CustomerFeedbackID NUMBER(4),
CustomerID NUMBER(4),
ProductID NUMBER(4),
Reviews VARCHAR2(20),
Ratings NUMBER(2),
CONSTRAINT customerFeedback_CustomerFeedbackID_pk PRIMARY KEY (CustomerFeedbackID),
CONSTRAINT customerFeedback_CustomerID_fk FOREIGN KEY (CustomerID)
    REFERENCES CUSTOMER (CUSTOMERID),
CONSTRAINT customerFeedback_ProductID_fk FOREIGN KEY (ProductID)
    REFERENCES CUSTOMER (CUSTOMERID));



12.
DESC customer
SELECT * FROM customer;
DESC orders
SELECT * FROM orders;
DESC order_details
SELECT * FROM order_details;
DESC product
SELECT * FROM product;
DESC store
SELECT * FROM store;
DESC inventory
SELECT * FROM inventory;
DESC transaction
SELECT * FROM transaction;
DESC transaction_details
SELECT * FROM transaction_details;
DESC employee
SELECT * FROM employee;
DESC salary
SELECT * FROM salary;
DESC shift
SELECT * FROM shift;















