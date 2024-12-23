create database mock1;

create table customers(
CustomerID int primary key,
Name varchar,
Age int,
Gender varchar,
Region varchar,
Email varchar

);

create table products(
ProductID int primary key,
ProductName varchar,
Category varchar,
Price real,
StockQuantity int 
);


create table sales(
SaleID int primary key,
Date date,
CustomerID int references customers(CustomerID),
ProductID int references products(ProductID),
Quantity int,
TotalAmount real

);
create table returns(
ReturnID int primary key,
SaleID int references sales(SaleID),
ReturnDate date,
Reason varchar

);
select * from returns;

copy returns from 'G:/Data Analytics/Mock1/returns.csv' delimiter ',' csv header;