--To add path into the maria DB
source C:\Users\bharath kumar4568\Downloads\0nline_Grocery_store_create (1).sql


--To show tables
show tables;

--describe tables or summary:

describe product;
describe payment;
describe customer;
describe online_grocery_store;
describe employee;
describe sales;


--product
insert into product values(101,'butter',0,8.00);

insert into product values(102,'Chicken',1,16.00);

insert into product values(103,'Cheese',1,6.00);

insert into product values(104,'Donut',1,2.00);

select * from product;

delete from product where product_Id=104;

select * from product;

--customer
insert into customer values(111,'bunny','bharath',101);

insert into customer values(112,'rahul','reddy',102);

insert into customer values(113,'ravi','krishna',103);

insert into customer values(114,'revanth','kiran',103);


select * from customer;

delete from customer where customer_id=114;

select * from customer;

--Online Grocery Store
insert into online_grocery_store values(121,101);

insert into online_grocery_store values(122,102);

insert into online_grocery_store values(123,101);

insert into online_grocery_store values(124,103);


select * from online_grocery_store;

--employee
insert into employee values(131,'karthik','2012-02-20',5000,'Manager',121);

insert into employee values(132,'kumar','2021-12-10',1500,'Cashier',122);

insert into employee values(133,'Ram','2020-11-11',2500,'Analyst',123);


select * from employee;

--payment
insert into payment values(141,'bunny',30.00,'2022-02-03',101);


insert into payment values(142,'ravi',40.00,'2022-03-05',102);


insert into payment values(143,'rahul',50.00,'2022-04-05',103);


select * from payment;

--Sales
insert into sales values(151,'butter',8.00,1,'2022-03-03',101,121);

insert into sales values(152,'Cheese',12.00,2,'2022-02-02',103,123);

insert into sales values(153,'chicken',16.00,1,'2022-04-04',102,122);


select * from sales;



--Join Statements:
select Sales_ID, Product_name,Quantity from sales inner join product where sales.Product_product_Id=product.product_Id;

select Payment_ID,Customer_name,Total_payment,Product_product_Id from payment inner join product where payment.Product_product_Id=product.product_Id;


--Aggregate functions:

select Max(Total_payment) as Maximum_Total_Payment from payment;


--Update queries:

update employee set Salary=3000 where Employee_ID=131;


select * from employee;

update product set price=10.00 where product_Id=101;


select * from payment;
---LOAD Statements:
LOAD DATA LOCAL INFILE 'C:\Users\bharath kumar4568\Downloads\Payment.csv'
    -> INTO TABLE payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (Payment_ID, Customer_name, Total_payment, Date, Product_product_Id); 
LOAD DATA LOCAL INFILE 'C:\Users\bharath kumar4568\Downloads\Employee.csv'
    -> INTO TABLE payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (Employee_ID, Name, Hire_Date, Salary, job_title, Online_Grocery_Store_Store_ID); 
LOAD DATA LOCAL INFILE 'C:\Users\bharath kumar4568\Downloads\product.csv'
    -> INTO TABLE payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (product_Id, Name, Availability, price); 
LOAD DATA LOCAL INFILE 'C:\Users\bharath kumar4568\Downloads\Customer.csv'
    -> INTO TABLE payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (customer_id, firstname, lastname, Product_product_Id);
LOAD DATA LOCAL INFILE 'C:\Users\bharath kumar4568\Downloads\Online_Grocery_Store.csv'
    -> INTO TABLE payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> ( Store_ID, Product_product_Id);
LOAD DATA LOCAL INFILE 'C:\Users\bharath kumar4568\Downloads\Sales.csv'
    -> INTO TABLE payment
    -> FIELDS TERMINATED BY ','
    -> LINES TERMINATED BY '\r\n'
    -> IGNORE 1 LINES
    -> (Sales_ID, Product_name, Price, Quantity,Date_Purchase,Product_product_Id, Online_Grocery_Store_Store_ID);