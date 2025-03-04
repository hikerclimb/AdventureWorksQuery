select salesorderid, SUM(UnitPrice*Orderqty) as orderidcost from Sales.SalesOrderDetail group by SalesOrderID
having SUM(OrderQty*UnitPrice) > 100000.00 order by SalesOrderID asc