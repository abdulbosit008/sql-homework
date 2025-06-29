create database homework_lesson_2

--1.Create table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
 
 create table Employees(EmpID Int, Name Varchar(50), Salary Decimal(10,2))

 --2. Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
 select *from Employees
 Insert into Employees (EmpID, Name, Salary) values (1, 'Ali', 5000.00)
 Insert into Employees values (2, 'Jasur', 6000.00)
 Insert into Employees values (3, 'Bexruz', 5500.00)
 Insert into Employees values (4, 'Anvar', 5800.00)

 --3. Update the Salary of an employee to 7000 where EmpID = 1.

 update Employees
 set Salary = 7000
 where EmpID = 1

 --4. Delete a record from the Employees table where EmpID = 2.

 delete from Employees
 where EmpID = 2

 --5. Give a brief definition for difference between DELETE, TRUNCATE, and DROP.

 --Delete - tanlanagan  qatorlarni o'chiradi, WHERE bilan
 --Truncate - barcha qatorlarni o'chiradi, tezroq
 --Drop - butun jadvalni (strukturasi bilan) o'chiradi

 --6. Modify the Name column in the Employees table to VARCHAR(100).
 
 Alter table Employees
 alter column Name Varchar(100)

 --7. Add a new column Department (VARCHAR(50)) to the Employees table

 Alter table employees
 add Department Varchar(50)

 --8. Change the data type of the Salary column to FLOAT.

 Alter table employees
 alter column Salary Float

 --9. Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).

 create table Departments (DepartmentID Int Primary Key, DepartmentName varchar (50))

 --10. Remove all records from the Employees table without deleting its structure.

 truncate table Employees

 --11. Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).
 select *from Departments
 Insert into Departments (DepartmentID, DepartmentName) 
 select 1, 'HR' Union all
 select 2, 'IT' union all
 select 3, 'Finance' union all
 select 4, 'Marketing' union all
 select 5, 'Sales';

--12. Update the Department of all employees where Salary > 5000 to 'Management'.

update Employees
Set department = 'Management'
where salary > 5000

--13. Write a query that removes all employees but keeps the table structure intact.

truncate table employees

--14. Drop the Department column from the Employees table.

alter table Employees
drop column Department

--15. Rename the Employees table to StaffMembers using SQL commands.

EXEC sp_rename 'Employees', 'StaffMembers' 

--16. Write a query to completely remove the Departments table from the database.

drop table Departments

--17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

create table products (ProductID Int Primary Key, ProductName varchar(100), Category varchar(50), Price Decimal (10,2) check (price>0), Describtion varchar(255))

--18. Add a CHECK constraint to ensure Price is always greater than 0.

Alter table Products
add constraint chk_Price check (Price>0)

--19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.
select *from products
alter table products
add StockQuantity Int default 50

--20. Rename Category to ProductCategory
 
exec sp_rename 'dbo.Products.Category', 'ProductCategory', 'Column'

--21. Insert 5 records into the Products table using standard INSERT INTO queries.

insert into products(ProductID, ProductName, productCategory, price, describtion) values
(1, 'Laptop', 'Electronics', 1200.00, 'Gaming laptop'),
(2, 'Mouse', 'Accessories', 30.00, 'Wireless mouse'),
(3, 'Chair', 'Furniture', 45.00, 'Office chair'),
(4, 'Desk', 'Furniture', 210.00, 'Wooden desk'),
(5, 'Phone', 'Electronics', 1400.00, 'Iphone');

--22. Use SELECT INTO to create a backup table called Products_Backup containing all Products data.

select * into Products_backup
from products

--23. Rename the Products table to Inventory.

exec sp_rename 'products', 'inventory'

--24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

alter table inventory
drop constraint CK__products__Price__3C69FB99

alter table inventory
alter column price float

select * from inventory

--25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.

create table inventory_new (
ProductCode Int IDENTITY(1000, 5) Primary Key,
ProductID Int,
ProductName Varchar (100),
ProductCategory varchar (50),
Price float,
Describtion varchar (255),
StockQuantity Int
);

INSERT INTO Inventory_New (ProductID, ProductName, ProductCategory, Price, Describtion, StockQuantity)
SELECT ProductID, ProductName, ProductCategory, Price, Describtion, StockQuantity
FROM Inventory;

drop table inventory

exec sp_rename 'Inventory_new','Inventory'
