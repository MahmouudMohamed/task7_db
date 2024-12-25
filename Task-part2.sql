create database Task_part2
use Task_part2
create schema management

-- 1.Create a table named "Employees" with columns for ID (integer), Name (varchar), and Salary (decimal).
		create table management.employees
		(
		id int not null ,
		name varchar(20) ,
		salary decimal(11,2)
		)

--2.Add a new column named "Department" to the "Employees" table with data type varchar(50).
		alter table management.employees add Department varchar(50)

--3.Remove the "salary" column from the "Employees" table.
		alter table management.employees drop column salary

--4.Rename the "Department" column in the "Employees" table to "DeptName".
		EXEC sp_rename 'management.employees.department',  'DeptName', 'COLUMN'

--5.Create a new table called "Projects" with columns for ProjectID (integer) and ProjectName (varchar).
		create table management.projects
		(
		project_ID int,
		projectName varchar(50)
		)

--6.Add a primary key constraint to the "Employees" table for the "ID" column
		alter table management.employees add primary key(id)
		
--7.Add a unique constraint to the "Name" column in the "Employees" table.

--8.Create a table named "Customers" with columns for CustomerID (integer), FirstName (varchar), LastName (varchar), and Email (varchar), and Status (varchar).
		create table management.customers
		(
		customerId int not null,
		FirstName varchar(50),
		LastName varchar(50),
		Email varchar(50),
		Status varchar(25)
		)

--9.Add a unique constraint to the combination of "FirstName" and "LastName" columns in the "Customers" table.
		alter table  management.customers add unique (firstName , lastName)

--10.Create a table named "Orders" with columns for OrderID (integer), CustomerID (integer), OrderDate (datetime), and TotalAmount (decimal).
		create table management.orders
		(
		orderID int not null ,
		customer_ID int ,
		orderDate datetime ,
		totalAmount dec
		)

--11.Add a check constraint to the "TotalAmount" column in the "Orders" table to ensure that it is greater than zero.
		alter table management.orders add check(totalAmount >0)

--12.Create a schema named "Sales" and move the "Orders" table into this schema.
		create schema sales 
		alter schema sales transfer management.orders

--13.Rename the "Orders" table to "SalesOrders."
		EXEC sp_rename 'sales.orders',  'sales.Orders'