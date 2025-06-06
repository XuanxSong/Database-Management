Table structure and cntents: 

Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 CUSTOMERID                                                                        NOT NULL NUMBER(4)
 FIRSTNAME                                                                           NOT NULL VARCHAR2(10)
 LASTNAME                                                                            NOT NULL VARCHAR2(10)
 ADDRESS                                                                                VARCHAR2(20)
 PHONENUMBER                                                                   NOT NULL VARCHAR2(15) ENCRYPT
 EMAIL                                                                                     VARCHAR2(20) ENCRYPT
 LOYALTYSTATUS                                                                   NUMBER(10)


CUSTOMERID FIRSTNAME            LASTNAME             ADDRESS                                  PHONENUMBER                                             
---------- -------------------- -------------------- ---------------------------------------- ------------------------------                          
EMAIL                                    LOYALTYSTATUS                                                                                                
---------------------------------------- -------------                                                                                                
      1000 Kally                Smith                148 Main Street                          +86147365249                                            
15426@123.com                                        5                                                                                                
                                                                                                                                                      
      1001 Alice                Leila                   82 Dirt Road                               +86137954943                                            
alice@example.com                                    6                                                                                                
                                                                                                                                                      
      1002 Lucas               Jake                  114 East Savannah                     +86134567324                                            
Lucas@123.com                                        8                                                                                                
                                                                                                                                                      
      1003 Schell              Steve                1008 Grand Avenue                    +86139019237                                            
Schell@123.com                                       4                                                                                                
                                                                                                                                                      
      1004 Daum              Michell              9851231 Long Road                   +86139013478                                            
Daum@123.com                                        10                                                                                                
                                                                                                                                                      
      1005 Falah              Kenneth              456 Elm Street                           +86137827464                                            
Falah@123.com                                        8                                                                                                
                                                                                                                                                      
      1006 Perez               Jorge                  123 Main Steet                           +86287426346                                            
Perez@123.com                                        6                                                                                                
                                                                                                                                                      
      1007 Cruz                Meshia                69821 South Avenue                 +86247268374                                            
Cruz@123.com                                         7                                                                                                
                                                                                                                                                      
      1008 Smith               Reese                 123 Main Steet                           +86348276467                                            
Smith@123.com                                        6                                                                                                
                                                                                                                                                      
      1009 Tom                  Thomas               123 Main Steet                          +86847563846                                            
Tom@123.com                                          9                                                                                                
                                                                                                                                                      
      1010 Woai                 xuexiao                                                                     +86346578910                                            
woaix@data.com                                                                                                                                        
                                                                                                                                                      

11 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 ORDERID                                                                             NOT NULL NUMBER(4)
 ORDERDATE                                                                       NOT NULL DATE
 ORDERSTATUS                                                                   VARCHAR2(20)
 TOTALCOST                                                                        NUMBER(5,2) ENCRYPT
 CUSTOMERID                                                                     NUMBER(4)


   ORDERID ORDERDATE    ORDERSTATUS                               TOTALCOST CUSTOMERID                                                                
---------- ------------ ---------------------------------------- ---------- ----------                                                                
      1000 01-JAN-23              shipped                                              12.5                1003                                                                
      1001 09-MAY-23            shipped                                               50                   1007                                                                
      1002 15-JUN-23             unshipped                                           32.95             1003                                                                
      1003 15-JUN-23             unshipped                                           88.4               1000                                                                
      1004 29-JUN-23             shipped                                                45                  1001                                                                
      1005 12-JAN-23             unshipped                                           67.5               1002                                                                
      1006 22-FEB-23             shipped                                                121.3             1004                                                                
      1007 07-MAR-23           unshipped                                            59.4              1004                                                                
      1008 09-MAY-23           shipped                                                 250               1008                                                                
      1009 16-MAR-23           shipped                                                 85                 1005                                                                
      1010 27-MAY-23           shipped                                                 250               1006                                                                
      1011 21-AUG-23           unshipped                                             89.9             1009                                                                

12 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 ORDERDETAILID                                                                       NOT NULL NUMBER(4)
 ORDERID                                                                                    NUMBER(4)
 PRODUCTID                                                                               NUMBER(4)
 PRODUCTNAME                                                                        VARCHAR2(20)
 PRICE                                                                                          NOT NULL NUMBER(5,2) ENCRYPT
 QUANTITY                                                                                  NOT NULL NUMBER(5)
 SUBTOTAL                                                                                  NUMBER(5,2) ENCRYPT


ORDERDETAILID    ORDERID  PRODUCTID PRODUCTNAME            PRICE   QUANTITY   SUBTOTAL                                         
------------- ---------- ---------- ---------------------------------------- ---------- ---------- ----------                                         
         1001       1003       1005                              Tshirt                        32.95          2       65.9                                         
         1002       1006       1004                              Watch                       40               2         80                                         
         1003       1006       1001                               Shorts                      20.65          2       41.3                                         
         1004       1002       1005                              T-shirt                       32.95          1      32.95                                         
         1005       1005       1002                               Skirt                         33.75           2       67.5                                         
         1006       1003       1007                            Mouse Pat                 22.5             1       22.5                                         
         1007       1004       1007                            Mouse Pat                 22.5             2         45                                         
         1008       1000       1008                              Battery                      2.5              5       12.5                                         
         1009       1001       1009                              Hat                            12.5             4         50                                         
         1010       1007       1008                             Battery                      19.8             3       59.4                                         
         1011       1008       1010                              Phone                       250              1        250                                         
         1012       1009       1006                             Mouse                       42.5             2         85                                         
         1013       1010       1001                             Phone                        250              1        250                                         
         1014       1011       1003                             keyboard                   89.9             1       89.9                                         

14 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 PRODUCTID                                                                           NOT NULL NUMBER(4)
 PRODUCTNAME                                                                    VARCHAR2(20)
 DESCRIPTION                                                                         VARCHAR2(20)
 CATEGORY                                                                              VARCHAR2(20)
 PRICE                                                                                       NUMBER(5,2) ENCRYPT


 PRODUCTID PRODUCTNAME                              DESCRIPTION                              CATEGORY                                      PRICE      
---------- ---------------------------------------- ---------------------------------------- ---------------------------------------- ----------      
      1001 Shorts                                   Clothing                                 Clothing                                      20.65      
      1002 Skirt                                       Clothing                                 Clothing                                      33.75      
      1003 Keyboard                             Electronic                             Electronic                                     89.9      
      1004 Watch                                   accessories                           accessories                                      40      
      1005 T-shirt                                   Clothing                                 Clothing                                      32.95      
      1006 Mouse                                   Electronic                              Electronic                                     42.5      
      1007 Mouse Pad                            accessories                              accessories                                    22.5      
      1008 Battery                                 accessories                            accessories                                       1      
      1009 Hat                                      Clothing                                Clothing                                          2      
      1010 Phone                                   Electronic                               Electronic                                      250      
      1011 Qunzi                                  Clothing                                 Clothing                                         10      

11 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 STOREID                                                                             NOT NULL NUMBER(4)
 STORENAME                                                                      VARCHAR2(20)
 LOCATION                                                                          VARCHAR2(30)
 OPERATIONHOURS                                                           VARCHAR2(20)


   STOREID                     STORENAME                                      LOCATION                              OPERATIONHOURS  
----------                                         -------------------------------                          ---------------------------------                                                                                                                                                               
      1001                       ABC store                                Los Angeles                          8a.m-16p.m                           
                                                                                                                                                      
      1002                        AC store                                 New York City                      12a.m-20p.m                                 
                                                                                                                                                      
      1003                        AB store                                 Miami                                     8a.m-16p.m                                                                                                                                          
                                                                                                                                                      
      1004                        BC store                                 Chicago                                   12a.m-20p.m                                                                                                                                          
                                                                                                                                                      
      1005                         C store                                   New Orleans                         12a.m-20p.m                                                                                                                                           
                                                                                                                                                      
      1006                         A store                                   Seattle                                    12a.m-20p.m                                                                                                                                           
                                                                                                                                                      
      1007                         B store                                   San Francisco                         8a.m-16p.m                                                                                                                                            
                                                                                                                                                      
      1008                        BC store                                  Boston                                    12a.m-20p.m                                                                                                                                           
                                                                                                                                                      
      1009                      ABC store                                 Nashville                                  8a.m-16p.m                                                                                                                                            
                                                                                                                                                      
      1010                        AC store                                  Austin                                      12a.m-20p.m                                                                                                                                           
                                                                                                                                                      

10 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 PRODUCTID                                                                           NOT NULL NUMBER(4)
 STOREID                                                                                 NOT NULL NUMBER(4)
 QUANTITY                                                                              NOT NULL NUMBER(5) ENCRYPT
 REORDERPOINT                                                                    NOT NULL NUMBER(5) ENCRYPT


 PRODUCTID    STOREID   QUANTITY REORDERPOINT                                                                                                         
---------- ---------- ---------- ------------                                                                                                         
      1001       1001        100          60                                                                                                         
      1003       1001         50           30                                                                                                         
      1005       1001         80           40                                                                                                         
      1002       1002         78           35                                                                                                         
      1005       1002         45           40                                                                                                         
      1007       1002        112          80                                                                                                         
      1001       1003        102          70                                                                                                         
      1002       1003         48           35                                                                                                         
      1004       1003         43           35                                                                                                         
      1005       1004         65           60                                                                                                         
      1006       1004         72           60                                                                                                         
      1008       1005         65           40                                                                                                         
      1009       1005         52           35                                                                                                         
      1003       1006         68           60                                                                                                         
      1006       1006         62           75                                                                                                         
      1002       1007        168          80                                                                                                         
      1010       1007         97           80                                                                                                         
      1001       1008         58           40                                                                                                         
      1009       1008         67           40                                                                                                         
      1002       1009         68           35                                                                                                         
      1004       1009         47           35                                                                                                         
      1006       1010         77           50                                                                                                         
      1007       1010        113          85                                                                                                         

23 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 TRANSACTIONID                                                                       NOT NULL NUMBER(4)
 TRANSACTIONDATE                                                                  NOT NULL DATE
 TRANSACTIONTYPE                                                                   NOT NULL VARCHAR2(10)
 TOTALAMOUNT                                                                         NOT NULL NUMBER(10,2) ENCRYPT
 CUSTOMERID                                                                             NOT NULL NUMBER(4)


TRANSACTIONID TRANSACTIOND TRANSACTIONTYPE      TOTALAMOUNT CUSTOMERID                                                                                
------------- ------------ -------------------- ----------- ----------                                                                                
         1000 02-JAN-23                payment                     12.5             1003                                                                                
         1001 09-MAY-23              payment                       50               1007                                                                                
         1002 18-JUN-23                credit                          32.95           1003                                                                                
         1003 15-JUN-23                payment                     88.4             1000                                                                                
         1004 30-JUN-23                credit                             45              1001                                                                                
         1005 12-JAN-23                credit                           67.5             1002                                                                                
         1006 24-FEB-23                credit                          121.3            1004                                                                                
         1007 07-MAR-23              payment                      59.4             1004                                                                                
         1008 09-MAY-23              payment                      250              1008                                                                                
         1009 16-MAR-23              payment                       85               1005                                                                                
         1010 28-MAY-23              credit                            250              1006                                                                                
         1011 21-AUG-23              payment                      89.9              1009                                                                                

12 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 TRANSACTIONDETAILID                                                           NOT NULL NUMBER(10)
 TRANSACTIONID                                                                        NOT NULL NUMBER(4)
 PRODUCTID                                                                                NOT NULL NUMBER(4)
 PRODUCTNAME                                                                         VARCHAR2(20)
 PRICE                                                                                            NOT NULL NUMBER(5,2) ENCRYPT
 QUANTITY                                                                                    NOT NULL NUMBER(5)
 SUBTOTAL                                                                                        NOT NULL NUMBER(10,2) ENCRYPT


TRANSACTIONDETAILID TRANSACTIONID  PRODUCTID PRODUCTNAME                                   PRICE   QUANTITY   SUBTOTAL                                
------------------- ------------- ---------- ---------------------------------------- ---------- ---------- ----------                                
               1001          1003       1005 Tshirt                                        32.95          2       65.9                                
               1002          1006       1004 Watch                                         40             3         80                                
               1003          1006       1001 Shorts                                        20.65         2       41.3                                
               1004          1002       1005 T-shirt                                        32.95         1      32.95                                
               1005          1005       1002 Skirt                                           33.75          2       67.5                                
               1006          1003       1007 Mouse Pat                                 22.5           1       22.5                                
               1007          1004       1007 Mouse Pat                                 22.5           2         45                                
               1008          1000       1008 Battery                                        2.5            5       12.5                                
               1009          1001       1009 Hat                                              12.5           4         50                                
               1010          1007       1008 Battery                                       19.8           3       59.4                                
               1011          1008       1010 Phone                                          250           1        250                                
               1012          1009       1006 Mouse                                         42.5          2         85                                
               1013          1010       1001 Phone                                          250           1        250                                
               1014          1011       1003 keyboard                                     89.9          1       89.9                                

14 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 EMPLOYEEID                                                                      NOT NULL NUMBER(4)
 NAME                                                                                  NOT NULL VARCHAR2(20)
 ADDRESS                                                                             VARCHAR2(20)
 PHONENUMBER                                                                VARCHAR2(20) ENCRYPT
 EMAIL                                                                                  VARCHAR2(30) ENCRYPT
 POSITION                                                                            NOT NULL VARCHAR2(20)


EMPLOYEEID NAME                                     ADDRESS                                  PHONENUMBER                                              
---------- ---------------------------------------- ---------------------------------------- ----------------------------------------                 
EMAIL                                                        POSITION                                                                                 
------------------------------------------------------------ ----------------------------------------                                                 
      1001 John Doe                                 123 Main St                               +8618721567890                                           
johndoe@example.com                                          Manager                                                                                  
                                                                                                                                                      
      1002 Jane Smith                               456 Oak Ave                             +8613862457893                                           
janesmith@example.com                                        Sales                                                                                    
                                                                                                                                                      
      1003 Bob Johnson                            789 Elm St                                +8615824768905                                           
bobjohnson@example.com                                     Cashier                                                                                  
                                                                                                                                                      
      1004 Sara Lee                                    321 Pine St                               +8617896542310                                           
saralee@example.com                                              Sales                                                                                    
                                                                                                                                                      
      1005 Tom Smith                                654 Maple Ave                        +8615698745234                                           
tomsmith@example.com                                         Stock Clerk                                                                              
                                                                                                                                                      
      1006 Amy Nguyen                             987 Cedar St                            +8618356978456                                           
amynguyen@example.com                                      Sales                                                                                    
                                                                                                                                                      
      1007 Mike Johnson                           246 Birch Rd                            +8614725869312                                           
mikejohnson@example.com                                   Cashier                                                                                  
                                                                                                                                                      
      1008 Emily Chen                                135 Cherry St                           +8619387562147                                           
emilychen@example.com                                        Manager                                                                                  
                                                                                                                                                      
      1009 David Lee                                  864 Pine Ave                             +8617283490876                                           
davidlee@example.com                                           Sales                                                                                    
                                                                                                                                                      
      1010 Lisa Kim                                     279 Oak Rd                                +8615642390785                                           
lisakim@example.com                                              Cashier                                                                                  
                                                                                                                                                       

10 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 EMPLOYEEID                                                                          NOT NULL NUMBER(4)
 STARTDATE                                                                            NOT NULL DATE
 ENDDATE                                                                                DATE
 SALARYAMOUNT                                                                   NOT NULL NUMBER(10,2) ENCRYPT


EMPLOYEEID STARTDATE    ENDDATE      SALARYAMOUNT                                                                                                     
---------- ------------ ------------ ------------                                                                                                     
      1001 01-JAN-23    04-JAN-23            9000                                                                                                     
      1002 04-JAN-23    07-JAN-23            5000                                                                                                     
      1003 07-JAN-23    12-JAN-23            4000                                                                                                     
      1004 02-JAN-23    11-JAN-23            5500                                                                                                     
      1005 11-JAN-23    26-FEB-23            7500                                                                                                     
      1006 26-FEB-23    26-MAR-23          5000                                                                                                     
      1007 20-MAR-23  25-MAR-23          4000                                                                                                     
      1008 06-APR-23    18-APR-23           10000                                                                                                     
      1009 23-MAY-23   23-MAY-23          8500                                                                                                     
      1010 15-MAY-23   20-MAY-23          7000                                                                                                     

10 rows selected.

 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 SHIFTID                                                                             NOT NULL NUMBER(4)
 EMPLOYEEID                                                                    NOT NULL NUMBER(4)
 STOREID                                                                            NOT NULL NUMBER(4)
 STARTTIME                                                                       NOT NULL VARCHAR2(20)
 ENDTIME                                                                           VARCHAR2(20)
 STORELOCATION                                                              VARCHAR2(30)


   SHIFTID EMPLOYEEID    STOREID STARTTIME                                ENDTIME                                                                     
---------- ---------- ---------- ---------------------------------------- ----------------------------------------                                    
STORELOCATION                                                                                                                                         
------------------------------------------------------------                                                                                          
      1001       1005       1001 2023-01-01 08:00:00                      2023-01-01 16:00:00                                                         
Los Angeles                                                                                                                                           
                                                                                                                                                      
      1002       1004       1002 2023-01-11 12:00:00                      2023-01-11 20:00:00                                                         
New York City                                                                                                                                         
                                                                                                                                                      
      1003       1001       1003 2023-01-22 08:00:00                      2023-01-32 16:00:00                                                         
Miami                                                                                                                                                 
                                                                                                                                                      
      1004       1003       1004 2023-02-02 12:00:00                      2023-02-02 20:00:00                                                         
Chicago                                                                                                                                               
                                                                                                                                                      
      1005       1002       1005 2023-02-12 12:00:00                      2023-02-12 20:00:00                                                         
New Orleans                                                                                                                                           
                                                                                                                                                      
      1006       1006       1006 2023-03-22 12:00:00                      2023-03-22 20:00:00                                                         
Seattle                                                                                                                                               
                                                                                                                                                      
      1007       1007       1007 2023-04-04 08:00:00                      2023-04-04 16:00:00                                                         
San Francisco                                                                                                                                         
                                                                                                                                                      
      1008       1010       1008 2023-04-24 12:00:00                      2023-04-24 20:00:00                                                         
Boston                                                                                                                                                
                                                                                                                                                      
      1009       1009       1009 2023-05-05 08:00:00                      2023-05-15 16:00:00                                                         
Nashville                                                                                                                                             
                                                                                                                                                      
      1010       1008       1010 2023-05-15 12:00:00                      2023-05-15 20:00:00                                                         
Austin                                                                                                                                                
                                                                                                                                                      

10 rows selected.

Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 CUSTOMERFEEDBACKID                                                               NOT NULL NUMBER(4)
 CUSTOMERID                                                                                  NUMBER(4)
 PRODUCTID                                                                                     NUMBER(4)
 REVIEWS                                                                                          VARCHAR2(20)
 RATINGS                                                                                          NUMBER(2)

no rows selected.


Requirement 1: 
USER            SERVER                         SESSION_ID                                                                                             
--------------- ------------------------------ ----------                                                                                             
SYSTEM          XE                                 470012                                                                                             
TERMINAL                         USED_ON                                  USED_AT                                                                     
-------------------------------- ---------------------------------------- --------------------                                                        
DESKTOP-A3EL3T9                  24-MAY-2023                              02:52 P.M.                                                                  

Requirement: 1                                                                                                                                        
Table dropped.
…
Table dropped.
Table created.
1 row created.
…
1 row created.
Table created.
1 row created.
…
1 row created.
Table created.
1 row created.
…
1 row created.
Table created.
1 row created.
…
1 row created.
Table created.
1 row created.
	…
1 row created.


Requirement: 2
USER            SERVER                         SESSION_ID                                                                                             
--------------- ------------------------------ ----------                                                                                             
SYSTEM          XE                                 470012                                                                                             


TERMINAL                         USED_ON                                  USED_AT                                                                     
-------------------------------- ---------------------------------------- --------------------                                                        
DESKTOP-A3EL3T9                  24-MAY-2023                              03:04 P.M.                                                                  


Requirement: 2                                                                                                                                        


1 row created.


Requirement 3:
USER            SERVER                         SESSION_ID                                                                                             
--------------- ------------------------------ ----------                                                                                             
SYSTEM          XE                                 470012                                                                                             


TERMINAL                         USED_ON                                  USED_AT                                                                     
-------------------------------- ---------------------------------------- --------------------                                                        
DESKTOP-A3EL3T9                  24-MAY-2023                              03:11 P.M.                                                                  


Requirement: 3                                                                                                                                        


1 row created.

Requirement 4:
USER            SERVER                         SESSION_ID                                                                                                                                               
--------------- ------------------------------ ----------                                                                                                                                               
SYSTEM          XE                                 170608                                                                                                                                               


TERMINAL                         USED_ON                                  USED_AT                                                                                                                       
-------------------------------- ---------------------------------------- --------------------                                                                                                          
LAPTOP-G0QGGGE8                  24-MAY-2023                              11:24 A.M.                                                                                                                    


Requirement: 4                                                                                                                                                                                         


CUSTOMERID TRANSACTIONID TRANSACTIOND TRANSACTIONTYPE      TOTALAMOUNT  PRODUCTID PRODUCTNAME                DESCRIPTION                              CATEGORY                                  UNITPRICE                                   
---------- ------------- ------------ ----------------- ----------- ---------- -------------------------------- ------------------------------- -------------------------------- ----------                                   
      1000         1003 15-JUN-23    payment              88.4       1007 Mouse Pad                          accessories                       accessories                                  22.5                                   
      1000         1003 15-JUN-23    payment              88.4       1005 T-shirt                                  Clothing                             Clothing                                      32.95                                   
      1001          1004 30-JUN-23    credit                       45       1007 Mouse Pad                        accessories                       accessories                                   22.5                                   
      1002          1005 12-JAN-23    credit                    67.5       1002 Skirt                                    Clothing                                 Clothing                                      33.75                                   
      1003          1002 18-JUN-23    credit                  32.95       1005 T-shirt                                  Clothing                                 Clothing                                      32.95                                   
      1003          1000 02-JAN-23    payment              12.5       1008 Battery                             accessories                       accessories                                     2.5                                   
      1004          1006 24-FEB-23     credit                 121.3       1001 Shorts                                Clothing                                 Clothing                                    20.65                                   
      1004          1007 07-MAR-23   payment             59.4       1008 Battery                                 accessories                          accessories                                     2.5                                   
      1004          1006 24-FEB-23      credit                121.3       1004 Watch                                accessories                           accessories                                      40                                   
      1005          1009 16-MAR-23    payment               85       1006 Mouse                             Electronic                            Electronic                                   42.5                                   
      1006         1010 28-MAY-23    credit                  250       1001 Shorts                            Clothing                              Clothing                                 20.65                                   
      1007          1001 09-MAY-23    payment                50       1009 Hat                                      Clothing                                 Clothing                                       12.5                                   
      1008          1008 09-MAY-23    payment             250       1010 Phone                                Electronic                            Electronic                                      250                                   
      1009          1011 21-AUG-23    payment            89.9       1003 Keyboard                         Electronic                             Electronic                                  89.9                                   

14 rows selected.

Requirement 5:
USER            SERVER                         SESSION_ID                                                                                                                                                                                                 
--------------- ------------------------------ ----------                                                                                                                                                                                                 
SYSTEM          XE                                 170608                                                                                                                                                                                                 


TERMINAL                         USED_ON                                  USED_AT                                                                                                                                                                         
-------------------------------- ---------------------------------------- --------------------                                                                                                                                                            
LAPTOP-G0QGGGE8                  24-MAY-2023                              11:48 A.M.                                                                                                                                                                      


Requirement: 5                                                                                                                                                                                                                                            


1 row updated.

Requirement 6:
USER            SERVER                         SESSION_ID                                                                                                                                                                                                 
--------------- ------------------------------ ----------                                                                                                                                                                                                 
SYSTEM          XE                                 170608                                                                                                                                                                                                 


TERMINAL                         USED_ON                                  USED_AT                                                                                                                                                                         
-------------------------------- ---------------------------------------- --------------------                                                                                                                                                            
LAPTOP-G0QGGGE8                  24-MAY-2023                              12:13 P.M.                                                                                                                                                                      


Requirement: 6                                                                                                                                                                                                                                            


2 rows deleted.


2 rows deleted.


2 rows deleted.


2 rows deleted.


1 row deleted.

Requirement 7:
USER            SERVER                         SESSION_ID                                                                                                                                                                                                 
--------------- ------------------------------ ----------                                                                                                                                                                                                 
SYSTEM          XE                                 170608                                                                                                                                                                                                 


TERMINAL                         USED_ON                                  USED_AT                                                                                                                                                                         
-------------------------------- ---------------------------------------- --------------------                                                                                                                                                            
LAPTOP-G0QGGGE8                  24-MAY-2023                              13:13 P.M.                                                                                                                                                                      


Requirement: 7                                                                                                                


2 rows updated.

Requirement 8:
USER            SERVER                         SESSION_ID                                                                                                                                                                                                 
--------------- ------------------------------ ----------                                                                                                                                                                                                 
SYSTEM          XE                                 170608                                                                                                                                                                                                 


TERMINAL                         USED_ON                                  USED_AT                                                                                                                                                                         
-------------------------------- ---------------------------------------- --------------------                                                                                                                                                            
LAPTOP-G0QGGGE8                  24-MAY-2023                              9:41 P.M.                                                                                                                                                                      


Requirement:8                                                                          

SQL> create user c##Group21 identified by Group21YYDS;

User created.

SQL> grant connect,resource to c##Group21;

Grant succeeded.

SQL> grant all on customer to c##Group21;

Grant succeeded.

SQL> grant all on orders to c##Group21;

Grant succeeded.

SQL> grant all on order_details to c##Group21;

Grant succeeded.

SQL> grant all on product to c##Group21;

Grant succeeded.

SQL> grant all on inventory to c##Group21;

Grant succeeded.

SQL> grant all on transaction to c##Group21;

Grant succeeded.

SQL> grant all on transaction_details to c##Group21;

Grant succeeded.

SQL> grant all on transaction_details to c##Group21;

Grant succeeded.

SQL> grant all on salary to c##Group21;

Grant succeeded.

SQL> grant all on SHIFT to c##Group21;

Grant succeeded.

SQL> grant all on STORE to c##Group21;

Grant succeeded.

SQL> conn
Enter user-name: c##group21
Enter password:
Connected.

Requirement 9:
SQL> @@C:\KXO206\requirement.sql

USER            SERVER                         SESSION_ID                                                                                                                                                                                                 
--------------- ------------------------------ ----------                                                                                                                                                                                                 
SYSTEM          XE                                 170608                                                                                                                                                                                                 


TERMINAL                         USED_ON                                  USED_AT                                                                                                                                                                         
-------------------------------- ---------------------------------------- --------------------                                                                                                                                                            
LAPTOP-G0QGGGE8                  25-MAY-2023                              5:13 A.M.                                                                                                                                                                      


Requirement: 9                                                                
                                                                                


SQL> ALTER SYSTEM SET ENCRYPTION KEY IDENTIFIED BY "Group21YYDS";

System altered.

SQL> ALTER SYSTEM SET ENCRYPTION WALLET CLOSE IDENTIFIED BY "Group21YYDS";

System altered.

SQL> ALTER SYSTEM SET ENCRYPTION WALLET OPEN IDENTIFIED BY "Group21YYDS";

System altered.

SQL> ALTER TABLE CUSTOMER MODIFY (PHONENUMBER ENCRYPT);

Table altered.

SQL> ALTER TABLE CUSTOMER MODIFY (EMAIL ENCRYPT);

Table altered.

SQL> ALTER TABLE EMPLOYEE MODIFY (PHONENUMBER ENCRYPT);

Table altered.

SQL> ALTER TABLE EMPLOYEE MODIFY (EMAIL ENCRYPT);

Table altered.

SQL>ALTER TABLE SALARY MODIFY (SALARYAMOUNT ENCRYPT);

Table altered.

SQL> ALTER TABLE TRANSACTION MODIFY (TOTALAMOUNT ENCRYPT);

Table altered.

SQL> ALTER TABLE TRANSACTION_DETAILS MODIFY (PRICE ENCRYPT);

Table altered.

SQL> ALTER TABLE TRANSACTION_DETAILS MODIFY (SUBTOTAL ENCRYPT);

Table altered.

SQL> ALTER TABLE ORDERS MODIFY (TotalCost ENCRYPT);

Table altered.

SQL> ALTER TABLE ORDER_DETAILS MODIFY (PRICE ENCRYPT);

Table altered.

SQL> ALTER TABLE ORDER_DETAILS MODIFY (SUBTOTAL ENCRYPT);

Table altered.

SQL> ALTER TABLE PRODUCT MODIFY (PRICE ENCRYPT);

Table altered.

SQL> ALTER TABLE INVENTORY MODIFY (Quantity ENCRYPT);

Table altered.

SQL> ALTER TABLE INVENTORY MODIFY (ReorderPoint ENCRYPT);

Table altered.

SQL> ALTER SYSTEM SET ENCRYPTION WALLET CLOSE IDENTIFIED BY "Group21YYDS";

System altered.


SQL> SPOOL OFF

Requirement 10:
USER            SERVER                         SESSION_ID                                                                                                                                                                                                 
--------------- ------------------------------ ----------                                                                                                                                                                                                 
SYSTEM          XE                                 170608                                                                                                                                                                                                 


TERMINAL                         USED_ON                                  USED_AT                                                                                                                                                                         
-------------------------------- ---------------------------------------- --------------------                                                                                                                                                            
LAPTOP-G0QGGGE8                  24-MAY-2023                              12:37 P.M.                                                                                                                                                                      


Requirement: 10                                                                                                                                                                                                                                            


Table created.

Requirement 11: recorded in the Structure.sql

Requirement 12: recorded in the front of this file

