select *
from Sales.SalesOrderHeader soh join Sales.SalesOrderDetail sod on soh.SalesOrderID = sod.SalesOrderID 
where (OrderQty > 5 or UnitPriceDiscount < 1000) and TotalDue > 100
