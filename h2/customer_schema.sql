CREATE TABLE cust(ID INT PRIMARY KEY,
   NAME VARCHAR(255),
   DOB DATE);

CREATE TABLE cust_addr(ID INT PRIMARY KEY,
   street VARCHAR(255),
   city VARCHAR(255),
   state VARCHAR(2),
   zip VARCHAR(9),
   cust_id INT,
   foreign key (cust_id) references cust(id));

   