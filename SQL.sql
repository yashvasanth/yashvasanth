create database Bank;
use Bank;
create table e_Employee(e_id int,e_name varchar(20)not null,b_name varchar(30)not null,e_age int,b_id int );
insert into e_Employee values(1,"sri","CSE",21,1),(2,"praveen","ECE",20,2),(3,"pravin","EEE",21,3),(4,"sugan","MECH",19,4),(5,"navani","BIO",20,5),(6,"noah","AIDS",23,6),(7,"vicky","ECE",22,7),(8,"selva","CIVIL",21,8),(9,"sanjay","ROBOTICS",20,9),(10,"vikram","TRANSPORT",22,10);
select * from e_Employee;

create table Customer(acc_no int not null,pin int,name varchar(20) not null,contactno int,b_id int);
insert into Customer values(1234,5678,"sri",9876,01),(5678,9012,"praveen",5432,02),(9012,3456,"pravin",1098,03),(3456,7890,"sugan",7654,04),(7890,6543,"navani",3210,05),(1234,2109,"noah",9876,06),(5678,8765,"vicky",5432,07),(9012,4321,"sanjay",1098,09),(3456,0987,"selva",7654,08),(7890,6543,"vikram",3210,10);
select * from Customer;
SELECT
  e_Employee.e_id,
  e_Employee.e_name,
  e_Employee.b_name,
  e_Employee.e_age,
  e_Employee.b_id,
  Customer.acc_no,
  Customer.pin,
  Customer.name,
  Customer.contactno,
  Customer.b_id
FROM
  e_Employee
INNER JOIN
  Customer
ON
  e_Employee.b_id = Customer.b_id;