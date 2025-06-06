 PROMPT "Drop any tables existing tables" 
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE ORDERS CASCADE CONSTRAINTS;
DROP TABLE ORDER_DETAILS CASCADE CONSTRAINTS;
DROP TABLE PRODUCT CASCADE CONSTRAINTS;
DROP TABLE INVENTORY CASCADE CONSTRAINTS;
DROP TABLE STORE CASCADE CONSTRAINTS;
DROP TABLE TRANSACTION CASCADE CONSTRAINTS;
DROP TABLE TRANSACTION_DETAILS CASCADE CONSTRAINTS;
DROP TABLE SHIFT CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE SALARY CASCADE CONSTRAINTS;

Create table CUSTOMER
(CustomerID NUMBER(4),
FirstName VARCHAR2(10) NOT NULL,
LastName VARCHAR2(10) NOT NULL,
Address VARCHAR2(20),
PhoneNumber VARCHAR2(15) NOT NULL,
Email VARCHAR2(20),
LoyaltyStatus NUMBER(10),
CONSTRAINT customer_CustomerID_pk PRIMARY KEY(CustomerID));

INSERT INTO CUSTOMER
VALUES(1000, 'Kally', 'Smith', '148 Main Street', '+86147365249', '15426@123.com', 5);
INSERT INTO CUSTOMER
VALUES(1001, 'Alice', 'Leila', '82 Dirt Road', '+86137954943', 'alice@example.com', 6);
INSERT INTO CUSTOMER
VALUES(1002, 'Lucas', 'Jake', '114 East Savannah', '+86134567324', 'Lucas@123.com', 8);
INSERT INTO CUSTOMER
VALUES(1003, 'Schell', 'Steve', '1008 Grand Avenue', '+86139019237', 'Schell@123.com', 4);
INSERT INTO CUSTOMER
VALUES(1004, 'Daum', 'Michell', '9851231 Long Road', '+86139013478', 'Daum@123.com', 10);
INSERT INTO CUSTOMER
VALUES(1005, 'Falah', 'Kenneth', '456 Elm Street', '+86137827464', 'Falah@123.com', 8);
INSERT INTO CUSTOMER
VALUES(1006, 'Perez', 'Jorge', '123 Main Steet', '+86287426346', 'Perez@123.com', 6);
INSERT INTO CUSTOMER
VALUES(1007, 'Cruz', 'Meshia', '69821 South Avenue', '+86247268374', 'Cruz@123.com', 7);
INSERT INTO CUSTOMER
VALUES(1008, 'Smith', 'Reese', '123 Main Steet', '+86348276467', 'Smith@123.com', 6);
INSERT INTO CUSTOMER
VALUES(1009, 'Tom', 'Thomas', '123 Main Steet', '+86847563846', 'Tom@123.com', 9);

CREATE table product
(ProductID NUMBER(4),
ProductName VARCHAR2(20),
Description VARCHAR2(20),
Category VARCHAR2(20),
Price NUMBER(5,2),
CONSTRAINT product_ProductID_pk PRIMARY KEY(ProductID));

INSERT INTO product
VALUES(1001, 'Shorts', 'Clothing', 'Clothing', 20.65);
INSERT INTO product
VALUES(1002, 'Skirt', 'Clothing', 'Clothing', 33.75);
INSERT INTO product
VALUES(1003, 'Keyboard', 'Electronic', 'Electronic', 89.90);
INSERT INTO product
VALUES(1004, 'Watch', 'accessories', 'accessories', 40.00);
INSERT INTO product
VALUES(1005, 'T-shirt', 'Clothing', 'Clothing', 32.95);
INSERT INTO product
VALUES(1006, 'Mouse', 'Electronic', 'Electronic', 42.50);
INSERT INTO product
VALUES(1007, 'Mouse Pad', 'accessories', 'accessories', 22.50);
INSERT INTO product
VALUES(1008, 'Battery', 'accessories', 'accessories', 2.50);
INSERT INTO product
VALUES(1009, 'Hat', 'Clothing', 'Clothing', 12.50);
INSERT INTO product
VALUES(1010, 'Phone', 'Electronic', 'Electronic', 250.00);

Create table ORDERS(
OrderID NUMBER(4),
OrderDate Date NOT NULL,
OrderStatus VARCHAR2(20),
TotalCost NUMBER (5,2),
CustomerID NUMBER(4),
CONSTRAINT orders_OrderID_pk PRIMARY KEY(OrderID),
CONSTRAINT orders_CustomerID_fk FOREIGN KEY (CustomerID)
    REFERENCES customer (CustomerID)); 

INSERT INTO ORDERS
VALUES(1000, '01-JAN-2023', 'shipped', 12.50, 1003);
INSERT INTO ORDERS
VALUES(1001, '09-MAY-2023', 'shipped', 50.00, 1007);
INSERT INTO ORDERS
VALUES(1002, '15-JUNE-2023', 'unshipped', 32.95, 1003);
INSERT INTO ORDERS
VALUES(1003, '15-JUNE-2023', 'unshipped', 88.40, 1000);
INSERT INTO ORDERS
VALUES(1004, '29-JUNE-2023', 'shipped', 45.00, 1001);
INSERT INTO ORDERS
VALUES(1005, '12-JAN-2023', 'unshipped', 67.50, 1002);
INSERT INTO ORDERS
VALUES(1006, '22-FEB-2023', 'shipped', 121.30, 1004);
INSERT INTO ORDERS
VALUES(1007, '07-MAR-2023', 'unshipped', 59.40, 1004);
INSERT INTO ORDERS
VALUES(1008, '09-MAY-2023', 'shipped', 250.00, 1008);
INSERT INTO ORDERS
VALUES(1009, '16-MAR-2023', 'shipped', 85.00, 1005);
INSERT INTO ORDERS
VALUES(1010, '27-MAY-2023', 'shipped', 250.00, 1006);
INSERT INTO ORDERS
VALUES(1011, '21-AUG-2023', 'unshipped', 89.90, 1009);

CREATE table order_details
(OrderDetailID NUMBER(4),
OrderID NUMBER(4),
ProductID NUMBER(4),
ProductName VARCHAR2(20),
Price NUMBER(5,2) NOT NULL,
Quantity NUMBER(5) NOT NULL,
Subtotal NUMBER(5,2),
CONSTRAINT order_details_OrderDetailID_pk PRIMARY KEY(OrderDetailID),
CONSTRAINT order_details_OrderID_fk FOREIGN KEY (OrderID)
    REFERENCES ORDERS (OrderID),
CONSTRAINT order_details_ProductID_fk FOREIGN KEY (ProductID)
    REFERENCES Product (ProductID));

INSERT INTO order_details
VALUES(1001, 1003, 1005, 'Tshirt', 32.95, 2, 65.90);
INSERT INTO order_details
VALUES(1002, 1006, 1004, 'Watch', 40.00, 2, 80.00);
INSERT INTO order_details
VALUES(1003, 1006, 1001, 'Shorts', 20.65, 2, 41.30);
INSERT INTO order_details
VALUES(1004, 1002, 1005, 'T-shirt', 32.95, 1, 32.95);
INSERT INTO order_details
VALUES(1005, 1005, 1002, 'Skirt', 33.75, 2, 67.50);
INSERT INTO order_details
VALUES(1006, 1003, 1007, 'Mouse Pat', 22.50, 1, 22.50);
INSERT INTO order_details
VALUES(1007, 1004, 1007, 'Mouse Pat', 22.50, 2, 45.00);
INSERT INTO order_details
VALUES(1008, 1000, 1008, 'Battery', 2.50, 5, 12.50);
INSERT INTO order_details
VALUES(1009, 1001, 1009, 'Hat', 12.50, 4, 50.00);
INSERT INTO order_details
VALUES(1010, 1007, 1008, 'Battery', 19.80, 3, 59.40);
INSERT INTO order_details
VALUES(1011, 1008, 1010, 'Phone', 250.00, 1, 250.00);
INSERT INTO order_details
VALUES(1012, 1009, 1006, 'Mouse', 42.50, 2, 85.00);
INSERT INTO order_details
VALUES(1013, 1010, 1001, 'Phone', 250.00, 1, 250.00);
INSERT INTO order_details
VALUES(1014, 1011, 1003, 'keyboard', 89.90, 1, 89.90);

CREATE TABLE store (
    StoreID NUMBER(4),
    StoreName VARCHAR2(20),
    Location VARCHAR2(30),
    OperationHours VARCHAR2(20),
    PRIMARY KEY (StoreID));

INSERT INTO store 
VALUES (1001, 'ABC store', 'Los Angeles','8a.m-16p.m');
INSERT INTO store 
VALUES(1002, 'AC store', 'New York City','12a.m-20p.m' );
INSERT INTO store 
VALUES(1003, 'AB store', 'Miami','8a.m-16p.m');
INSERT INTO store 
VALUES(1004, 'BC store', 'Chicago','12a.m-20p.m');
INSERT INTO store 
VALUES(1005, 'C store', 'New Orleans','12a.m-20p.m');
INSERT INTO store 
VALUES(1006, 'A store', 'Seattle','12a.m-20p.m');
INSERT INTO store 
VALUES(1007, 'B store', 'San Francisco','8a.m-16p.m');
INSERT INTO store 
VALUES(1008, 'BC store', 'Boston','12a.m-20p.m');
INSERT INTO store 
VALUES(1009, 'ABC store','Nashville','8a.m-16p.m');
INSERT INTO store 
VALUES(1010, 'AC store', 'Austin','12a.m-20p.m');


CREATE TABLE inventory (
  ProductID NUMBER(4),    
  StoreID NUMBER(4),       
  Quantity NUMBER(5) NOT NULL,     
  ReorderPoint NUMBER(5) NOT NULL,
  CONSTRAINT inventory_ProductID_StoreID_pk PRIMARY KEY (ProductID, StoreID),
  CONSTRAINT inventory_ProductID_fk FOREIGN KEY (ProductID)
     REFERENCES product(ProductID),
  CONSTRAINT inventory_StoreID_fk FOREIGN KEY (StoreID)
     REFERENCES store(StoreID));

INSERT INTO INVENTORY
VALUES (1001, 1001, 100, 60);
INSERT INTO INVENTORY
VALUES (1003, 1001, 50, 30);
INSERT INTO INVENTORY
VALUES (1005, 1001, 80, 40);
INSERT INTO INVENTORY
VALUES (1002, 1002, 78, 35);
INSERT INTO INVENTORY
VALUES (1005, 1002, 45, 40);
INSERT INTO INVENTORY
VALUES (1007, 1002, 112, 80);
INSERT INTO INVENTORY
VALUES (1001, 1003, 102, 70);
INSERT INTO INVENTORY
VALUES (1002, 1003, 48, 35);
INSERT INTO INVENTORY
VALUES (1004, 1003, 43, 35);
INSERT INTO INVENTORY
VALUES (1005, 1004, 65, 60);
INSERT INTO INVENTORY
VALUES (1006, 1004, 72, 60);
INSERT INTO INVENTORY
VALUES (1008, 1005, 65, 40);
INSERT INTO INVENTORY
VALUES (1009, 1005, 52, 35);
INSERT INTO INVENTORY
VALUES (1003, 1006, 68, 60);
INSERT INTO INVENTORY
VALUES (1006, 1006, 62, 75);
INSERT INTO INVENTORY
VALUES (1002, 1007, 168, 80);
INSERT INTO INVENTORY
VALUES (1010, 1007, 97, 80);
INSERT INTO INVENTORY
VALUES (1001, 1008, 58, 40);
INSERT INTO INVENTORY
VALUES (1009, 1008, 67, 40);
INSERT INTO INVENTORY
VALUES (1002, 1009, 68, 35);
INSERT INTO INVENTORY
VALUES (1004, 1009, 47, 35);
INSERT INTO INVENTORY
VALUES (1006, 1010, 77, 50);
INSERT INTO INVENTORY
VALUES (1007, 1010, 113, 85);

CREATE TABLE transaction (
  TransactionID NUMBER(4),		       
  TransactionDate DATE NOT NULL,		
  TransactionType VARCHAR2(10) NOT NULL,	
  TotalAmount NUMBER(10,2) NOT NULL,	
  CustomerID NUMBER(4),   
  CONSTRAINT transaction_TransactionID_pk PRIMARY KEY (TransactionID),
  CONSTRAINT transaction_CustomerID_fk FOREIGN KEY (CustomerID)
     REFERENCES customer(CustomerID));

INSERT INTO transaction
VALUES(1000, '02-JAN-2023', 'payment', 12.50, 1003);
INSERT INTO transaction
VALUES(1001, '9-MAY-2023', 'payment', 50.00, 1007);
INSERT INTO transaction
VALUES(1002, '18-JUNE-2023', 'credit', 32.95, 1003);
INSERT INTO transaction
VALUES(1003, '15-JUNE-2023', 'payment', 88.40, 1000);
INSERT INTO transaction
VALUES(1004, '30-JUNE-2023', 'credit', 45.00, 1001);
INSERT INTO transaction
VALUES(1005, '12-JAN-2023', 'credit', 67.50, 1002);
INSERT INTO transaction
VALUES(1006, '24-FEB-2023', 'credit', 121.30, 1004);
INSERT INTO transaction
VALUES(1007, '07-MAR-2023', 'payment', 59.40, 1004);
INSERT INTO transaction
VALUES(1008, '09-MAY-2023', 'payment', 250.00, 1008);
INSERT INTO transaction
VALUES(1009, '16-MAR-2023', 'payment', 85.00, 1005);
INSERT INTO transaction
VALUES(1010, '28-MAY-2023', 'credit', 250.00, 1006);
INSERT INTO transaction
VALUES(1011, '21-AUG-2023', 'payment', 89.90, 1009);

CREATE TABLE transaction_details (
  TransactionDetailID NUMBER(10),	
  TransactionID NUMBER(4),
  ProductID NUMBER(4), 
  ProductName VARCHAR2(20),
  Price NUMBER(5,2) NOT NULL,
  Quantity NUMBER(5) NOT NULL,
  Subtotal NUMBER(10,2) NOT NULL,
  CONSTRAINT transaction_details_TransactionDetailID_pk PRIMARY KEY (TransactionDetailID),
  CONSTRAINT transaction_details_TransactionID_fk FOREIGN KEY (TransactionID)
     REFERENCES transaction(TransactionID),
  CONSTRAINT transaction_details_ProductID_fk FOREIGN KEY (ProductID)
     REFERENCES product(ProductID));

INSERT INTO transaction_details
VALUES(1001, 1003, 1005, 'Tshirt', 32.95, 2, 65.90);
INSERT INTO transaction_details
VALUES(1002, 1006, 1004, 'Watch', 40.00, 3, 80.00);
INSERT INTO transaction_details
VALUES(1003, 1006, 1001, 'Shorts', 20.65, 2, 41.30);
INSERT INTO transaction_details
VALUES(1004, 1002, 1005, 'T-shirt', 32.95, 1, 32.95);
INSERT INTO transaction_details
VALUES(1005, 1005, 1002, 'Skirt', 33.75, 2, 67.50);
INSERT INTO transaction_details
VALUES(1006, 1003, 1007, 'Mouse Pat', 22.50, 1, 22.50);
INSERT INTO transaction_details
VALUES(1007, 1004, 1007, 'Mouse Pat', 22.50, 2, 45.00);
INSERT INTO transaction_details
VALUES(1008, 1000, 1008, 'Battery', 2.50, 5, 12.50);
INSERT INTO transaction_details
VALUES(1009, 1001, 1009, 'Hat', 12.50, 4, 50.00);
INSERT INTO transaction_details
VALUES(1010, 1007, 1008, 'Battery', 19.80, 3, 59.40);
INSERT INTO transaction_details
VALUES(1011, 1008, 1010, 'Phone', 250.00, 1, 250.00);
INSERT INTO transaction_details
VALUES(1012, 1009, 1006, 'Mouse', 42.50, 2, 85.00);
INSERT INTO transaction_details
VALUES(1013, 1010, 1001, 'Phone', 250.00, 1, 250.00);
INSERT INTO transaction_details
VALUES(1014, 1011, 1003, 'keyboard', 89.90, 1, 89.90);

CREATE TABLE employee (
  EmployeeID NUMBER(4),
  Name VARCHAR2(20) NOT NULL,
  Address VARCHAR2(20),
  PhoneNumber VARCHAR2(20),
  Email VARCHAR2(30),
  Position VARCHAR2(20) NOT NULL,
  Constraint Employee_EmployeeID_pk PRIMARY KEY (employeeID));

INSERT INTO EMPLOYEE 
VALUES (1001, 'John Doe', '123 Main St', '+8618721567890', 'johndoe@example.com', 'Manager');
INSERT INTO EMPLOYEE
VALUES (1002, 'Jane Smith', '456 Oak Ave', '+8613862457893', 'janesmith@example.com', 'Sales');
INSERT INTO EMPLOYEE
VALUES (1003, 'Bob Johnson', '789 Elm St', '+8615824768905', 'bobjohnson@example.com','Cashier');
INSERT INTO EMPLOYEE
VALUES (1004, 'Sara Lee', '321 Pine St', '+8617896542310', 'saralee@example.com', 'Sales');
INSERT INTO EMPLOYEE
VALUES (1005, 'Tom Smith', '654 Maple Ave', '+8615698745234', 'tomsmith@example.com', 'Stock Clerk');
INSERT INTO EMPLOYEE
VALUES (1006, 'Amy Nguyen', '987 Cedar St', '+8618356978456', 'amynguyen@example.com', 'Sales');
INSERT INTO EMPLOYEE
VALUES (1007, 'Mike Johnson', '246 Birch Rd', '+8614725869312', 'mikejohnson@example.com', 'Cashier');
INSERT INTO EMPLOYEE
VALUES (1008, 'Emily Chen', '135 Cherry St', '+8619387562147', 'emilychen@example.com', 'Manager');
INSERT INTO EMPLOYEE
VALUES (1009, 'David Lee', '864 Pine Ave', '+8617283490876', 'davidlee@example.com', 'Sales');
INSERT INTO EMPLOYEE
VALUES (1010, 'Lisa Kim', '279 Oak Rd', '+8615642390785', 'lisakim@example.com', 'Cashier');


CREATE TABLE salary (
  EmployeeID NUMBER(4),
  StartDate Date,
  EndDate Date,
  SalaryAmount NUMBER(10,2) NOT NULL,
  Constraint Salary_EmployeeID_StartDate_pk PRIMARY KEY (employeeID, startDate),
  Constraint Salary_EmployeeID_fk FOREIGN KEY (employeeID) REFERENCES employee(employeeID));

INSERT INTO SALARY 
VALUES (1001, '01-JAN-2023','04-JAN-2023' , 9000.00);
INSERT INTO SALARY 
VALUES (1002, '04-JAN-2023', '07-JAN-2023', 5000.00);
INSERT INTO SALARY 
VALUES (1003, '07-JAN-2023', '12-JAN-2023', 4000.00);
INSERT INTO SALARY 
VALUES (1004, '02-JAN-2023', '11-JAN-2023', 5500.00);
INSERT INTO SALARY 
VALUES (1005, '11-JAN-2023', '26-Feb-2023', 7500.00);
INSERT INTO SALARY 
VALUES (1006, '26-Feb-2023','26-Mar-2023' , 5000.00);
INSERT INTO SALARY 
VALUES (1007, '20-Mar-2023','25-Mar-2023' , 4000.00);
INSERT INTO SALARY 
VALUES (1008, '6-Apr-2023','18-Apr-2023', 10000.00);
INSERT INTO SALARY 
VALUES (1009, '23-May-2023','23-May-2023' ,8500.00);
INSERT INTO SALARY 
VALUES (1010, '15-May-2023','20-May-2023', 7000.00);

CREATE TABLE SHIFT (
    ShiftID NUMBER(4),
    EmployeeID NUMBER(4),
    StoreID NUMBER(4),
    StartTime VARCHAR2(20) NOT NULL,
    EndTime VARCHAR2(20) NOT NULL,
    StoreLocation VARCHAR2(30),
    Constraint Shift_ShiftID_pk PRIMARY KEY (ShiftID),
    Constraint Shift_EmployeeID_fk FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE(EmployeeID),
    Constraint Shift_StoreID_fk FOREIGN KEY (StoreID) REFERENCES STORE(StoreID));

INSERT INTO shift 
VALUES (1001, 1005, 1001,'2023-01-01 08:00:00', '2023-01-01 16:00:00', 'Los Angeles');
INSERT INTO shift 
VALUES(1002, 1004, 1002,'2023-01-11 12:00:00', '2023-01-11 20:00:00' , 'New York City');
INSERT INTO shift 
VALUES(1003, 1001, 1003,'2023-01-22 08:00:00', '2023-01-32 16:00:00', 'Miami');
INSERT INTO shift 
VALUES(1004, 1003, 1004,'2023-02-02 12:00:00', '2023-02-02 20:00:00', 'Chicago' );
INSERT INTO shift 
VALUES(1005, 1002, 1005,'2023-02-12 12:00:00', '2023-02-12 20:00:00' , 'New Orleans');
INSERT INTO shift 
VALUES(1006, 1006, 1006,'2023-03-22 12:00:00', '2023-03-22 20:00:00' , 'Seattle');
INSERT INTO shift 
VALUES(1007, 1007, 1007,'2023-04-04 08:00:00', '2023-04-04 16:00:00' , 'San Francisco');
INSERT INTO shift 
VALUES(1008, 1010, 1008,'2023-04-24 12:00:00', '2023-04-24 20:00:00', 'Boston' );
INSERT INTO shift 
VALUES(1009, 1009, 1009,'2023-05-05 08:00:00', '2023-05-15 16:00:00','Nashville' );
INSERT INTO shift 
VALUES(1010, 1008, 1010,'2023-05-15 12:00:00', '2023-05-15 20:00:00' , 'Austin');
