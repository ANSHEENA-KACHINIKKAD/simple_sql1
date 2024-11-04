use entri_d42;
create database Sales;
use Sales;
create table Orders(Order_id int unique primary key,Customer_name varchar(30),Product_category varchar(35),Order_item varchar(30),Contact_no int not null);
alter table Orders add order_quantity int;
alter table Orders rename sales_orders;

alter table sales_orders drop column Contact_no ;
alter table sales_orders add Contact_no bigint not null;
insert into sales_orders(Order_id ,Customer_name,Product_category ,Order_item ,Contact_no) values(101,"anu","Laptop","HP",9844332281),
(102,"nidha","Mobile","Redmi",7845634873),(103,"lal","Furniture","Table",6789345665),
(104,"sik","Laptop","Aspire",5678983453),(105,"jack","Grinder","Bajaj",5672348723),(106,"john","Mobile","Iphone",3456798760),
(107,"rosy","Laptop","Toshiba",9870123045),(108,"sham","Mobile","Honor",7650065401),
(109,"popy","Grinder","Pigeon",9900567812),(110,"sam","Furniture","chair",8989800452);
select Customer_name , Order_item from sales_orders;
update sales_orders set Customer_name="soosan" where Order_id=108;
drop table sales_orders;




