select name, SalesOrderID from Production.Product p left outer join Sales.SalesOrderDetail sod
on p.ProductID = sod.ProductID order by p.Name