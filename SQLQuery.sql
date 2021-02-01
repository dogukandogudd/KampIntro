--Select
Select ContactName Adi,CompanyName Sirketadi,City  Sehir from Customers
--ANSII
Select * from Customers where City ='Berlin'
--Case insensitive
SeLECt * from Products where categoryID=1 or categoryId=3
Select * from Products where CategoryID=1 and UnitPrice>=10
--
Select * from Products order by UnitPrice asc --ascending,artan
Select * from Products order by UnitPrice desc --descending,azalan
Select * from Products where CategoryID=1 order by UnitPrice desc
--
Select count(*) from Products where CategoryID=2
--
Select CategoryID,count(*) from Products group by CategoryID
Select CategoryID,count(*) from Products group by CategoryID having count(*)<10 --having kümülatiflere uygulanır örn count(*)
Select CategoryID,count(*) from Products where UnitPrice>20 group by CategoryID having count(*)<10

--Inner Joın (iki tabloda da eşleşen- ortak olanları geititr)
Select Products.ProductID,Products.ProductName,Products.UnitPrice,Categories.CategoryName 
from Products inner join Categories 
on Products.CategoryID=Categories.CategoryID
where Products.UnitPrice>10
--DTO Data Transformation Object

Select * from Products p left join [Order Details] od -- left join --solda olup sağda olmayanlarıda getir--right join :)
on p.ProductID=od.ProductID
inner join Orders o
on o.OrderID=od.OrderID

Select *from Customers c left join Orders o
on c.CustomerID=o.CustomerID
where o.CustomerID is null
