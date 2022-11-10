create table customers
(
custId int primary key identity(1,1),
custname varchar(10),
city varchar(10),
country varchar(10),
product varchar(10),
price decimal(10),
postalcode decimal(10),
);

select * from customers

insert into customers values('Amol','Mumbai','India','pen',50,44444)
insert into customers values('Chetan','Pune','US','table',1000,44455)
insert into customers values('Pratik','Mumbai','Russia','laptop',40000,22222)
insert into customers values('Rahul','Pune','France','pendrive',500,52363)
insert into customers values('Rohan','Yavatmal','China','car',500000,445001)
insert into customers values('Suraj','Nagpur','Cambodia','Book',45,45242)
insert into customers values('Rajesh','Nashik','Australia','computer',15000,45103)
insert into customers values('Kishor','Hyderabad','Germany','Bottle',40,45002)
insert into customers values('Ajay','Pune','Brazil','Chair',800,51004)
insert into customers values('Tushar','Delhi','Berlin','Bench',450,45511)



--a statement that will select the City column from the Customers table
select  city from customer 

--Select all the different values from the Country column in the Customers table.
select  country from customer

--Select all records where the City column has the value "London
select* from customer where city ='london'

--Use the NOT keyword to select all records where City is NOT "Berlin".
select * from customer where not city='Berlin'


--Select all records where the CustomerID column has the value 23.
select * from customer where custid =23


--Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select * from customer where city = 'Berlin' and postalcode = 121110

--Select all records where the City column has the value 'Berlin' or 'London'.
select *from customer where city = 'Berlin'or city='London'

--Select all records from the Customers table, sort the result alphabetically by the column City.
select * from customer order by city

--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select * from customer order by city desc

--Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select * from customer order by country,city 

--Select all records from the Customers where the PostalCode column is empty.
select * from customer where postalcode is null 

--Select all records from the Customers where the PostalCode column is NOT empty.
select * from customer where postalcode is not null

--Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update customer set city='oslo' where country='norway'

--Delete all the records from the Customers table where the Country value is 'Norway'.
delete from customer where country='norway'

--Use the MIN function to select the record with the smallest value of the Price column.
select MIN(price)from product

--Use an SQL function to select the record with the highest value of the Price column.
select MAX(price)from product

--Use the correct function to return the number of records that have the Price value set to 20
select * from customer where price=20

--Use an SQL function to calculate the average price of all products.
select avg(price)from Product

--Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price)from Product

--Select all records where the value of the City column starts with the letter "a".
select * from customer where city like 'a%'

--Select all records where the value of the City column ends with the letter "a".
select * from customer where city like '%a'

--Select all records where the value of the City column contains the letter "a".
select * from customer where city like '%a%'

--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select * from customer where city like 'a%b'

--Select all records where the value of the City column does NOT start with the letter "a".
select * from customer where city not like 'a%'

--Select all records where the second letter of the City is an "a".
select * from customer where city like '_a%'

--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select * from customer where city like '[acs]%'

--Select all records where the first letter of the City starts with anything from an "a" to an "f".
select * from customer where city like '[a-f]%'

--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
select * from customer where city like '[!acf]%'

--Use the IN operator to select all the records where the Country is either "Norway" or "France".
select * from customer where country in('Norway','France')  

--Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select * from customer where country not in('Norway','France')  

--Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select * from product where price between 10 & 20  

--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select * from product where price not between 10 & 20  

--Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select * from product where product name between 'Geitost' &'Pavlova'

--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select custname,adress,postalcode as pno from customer

--When displaying the Customers table, refer to the table as Consumers instead of Customers.
select * from customer as consumer

--List the number of customers in each country.
select count(custid),country from customer group by country

--List the number of customers in each country, ordered by the country with the most customers first.
select count(custid),country from customer group by country order by count(custid)desc


--Write the correct SQL statement to create a new database called testDB.
create database testdb

--Write the correct SQL statement to delete a database named testDB
drop database testdb

--Add a column of type DATE called Birthday in Persons table
alter table person add Birthday DATE

--Delete the column Birthday from the Persons table
alter table person Birthday