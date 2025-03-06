select p.Name, SalesOrderID from Production.Product p join Sales.SalesOrderDetail sod on p.ProductID = sod.ProductID
order by p.Name