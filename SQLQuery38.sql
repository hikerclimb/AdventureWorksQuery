select Name, SalesOrderID from Production.Product p full outer join Sales.SalesOrderDetail sod on p.ProductID = sod.ProductID
where SalesOrderID is null order by p.Name asc;