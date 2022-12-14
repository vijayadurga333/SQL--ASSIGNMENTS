ASSIGNMENT_1

Create table Customer
( 
Id int Primary Key ,
FirstName nvarchar(40) not null ,
lastName nvarchar(40),
city nvarchar(40),
Country nvarchar(40),
Phone nvarchar(40));
Insert into Customer values ('Vijaya','Durga','Palakol','India','7879879871' )
Insert into Customer values ('Silpa,'Nagasri','Jinnuru','India','6877691034' )
Insert into Customer values ('Priyanka','Yashna','Thanuku','India','7075345456' )
Insert into Customer values ('Aswini','Sri','palakol','India','9878767654')
Insert into Customer values ('Meghana','Keerthi','Palakol','India','7234567891' )
Insert into Customer values ('sri','Keerthi','Palakol','India','9234567891' )
Insert into Customer values ('Lalitha','Sri','Narsapure','India','6234868891' )

Select*from Customer

Create Table Order
(
OrderID int Primary Key Identity (20,20),
OrderDate datetime ,
OrderNumber nvarchar(10),
CustomerID int ,
TotalAmount decimal (12,2)
);
select *from Order1
Insert into Order1 values ( 12/6/2022 , '3', 10 ,300)
Alter Table Order1 add constraint Order1_CustomerID_FK Foreign Key (CustomerID) references Customer (ID) 
Insert into Order1 values ( 25/6/2022 , '2', 10 ,400)

Create table Product 
(
ProductID int primary key ,
ProductName nvarchar(50) not null,
Unitprice decimal (12,2),
Package nvarchar(20), 
Isdiscounued  BIT )

Select *from Product
insert into Product values ( 200, 'Milk', 125.00,'Packet','true')
insert into Product values ( 400 , 'Butter','100.00' ,'packet','true')
Insert into Product values ( 100 , 'Buscuit', 111.0,'packet','true')
Insert into Product values ( 205, 'Choclate', 100.00,'packet','true')
Insert into Product values ( 350 , 'Yuppy', 85.23,'packet','true')
Insert into Product values ( 500 , 'Apple juice', '105.00','packet','False')
Insert into Product values ( 520 , 'Pizza', '102.00','packet','true')

Create  Table OrderItem
(
OrderitemID int primary key ,
OrderID int foreign key references Order1 (OrderID),
ProductID int foreign key references Product (ProductID),
UnitPrice decimal (12,2),
Quantity int )

select * From OrderItem
Insert into  OrderItem values ( 1 , 100 , 200, 200, 8)
Insert into  OrderItem values ( 2 , 110 , 400 , 860, 9)
Insert into  OrderItem values ( 3 , 120, 100 , 430, 6)
Insert into  OrderItem values ( 4 , 130 , 205 , 240, 7)
Insert into  OrderItem values ( 5 , 140 , 350, 800, 3)
Insert into  OrderItem values ( 6 , 150 , 500, 700, 5)
Insert into  OrderItem values ( 7 , 160 , 520, 800, 4)

Select * from Customer
Select * from Order1
Select * from OrderItem
Select * from Product

select * from Customer where Country ='India' 
select * from Customer where Country ='America' 
Select * from Customer where FirstName like '_i%';

ASSIGNMENT-2

Select * From Customer Where Country='Germany';

Create Table Employee ( Fullname varchar(20) not null)
Insert into Employee values (' Vijayadurga')
Insert into Employee values ('Silpa')
Insert into Employee values ( 'Mallesh')
Insert into Employee values ( ' Venkatesh')
select * from Employee


Select * From Customer
Where FirstName LIKE '_U%';

Update OrderItem Set unitPrice = 12 where OrderitemID = 2
Update OrderItem Set unitPrice = 14 where OrderitemID = 3
Update OrderItem Set unitPrice = 16 where OrderitemID = 5
Update OrderItem Set unitPrice = 18 where OrderitemID = 6
Select *from OrderItem

Select * From Order
Where UnitPrice>10 and UnitPrice<20;

Select OrderDate From Order
Group By OrderDate;

Select * From Order Where OrderDate BETWEEN 10/06/2022 And 25/06/2022;

---Query 3 ---

Select * From Product;
Select ProductName From Product
Where ProductName='Juices'

---Query 4---

Select AVG(Quantity) From OrderItem;

---Query 5---

Select * From Employee;
Select Fullname From Employee;

Assignment_3

Select Id, FirstName , LastName ,City,Country,Phone, OrderID,OrderDate,OrderNumber,TotalAmount 
From Customer JOIN Order
On Customer1.ID = Order2.OrdID WHERE Customer.Phone='7075449060';

---Query2----

Update Customer Set Country= 'America' where Id=40
Select * From Customer
Select * From Customer1where Country !='America'

---Query3---

Select * From Product
update Product set ProductName ='Green Tea' Where ProductID = 430 
select * From Product  where ProductName='Green Tea'

---Query4---

Select * From Employee
ALTER Table Employee ADD DepartName nvarchar(20)
ALTER Table Employee ADD DepartId;
SELECT Fullname, DepartName,DepartId
From Where FullName ='Vijayadurga'

Assignment_4

Alter table Product Add ShippingCompany nVARCHAR(40) 
Select ShipingCompany, 
TotalAmount As TotalPrice
From Order Inner Join OrderItem 
On Order.OrderID =OrderItem.OrderitemID 
Inner Join Product on
OrderItem.ProductId=Product.ProductID
WHERE ProductName='Juices' And TotalAmount>100;

---Query2---

Select * From Employee
Alter table Employee add Innerjoin int Id(20,10)
Select Innerjoin From Employee Order by Innerjoin Bottle

---Query4---

Select ID , FirstName,LastName,City,Country,Phone,OrderID,OrderDate 
FROM Customer1 Joi Order On
Customer.ID=Order.CustomerID;

---Quert6---

Select * From Product
Select Max( Unitprice) AS [Most Expensive] as [Least Expensive] 
From Product]

---Query8---

Select FirstName as CustomerName, Quantity As MaximumOrder 
FROM Customer Inner Joiin Order on 
Customer.ID=Order.CustomerID
Inner Join OrderItem on 
Order.OrderID=OrderItem.OrderItemID 
Where OrderItem.Quantity =(select Max(Quantity) From OrderItem)

---Query10---

Select CustomerId From Customer
Where Firstname like %RA%









