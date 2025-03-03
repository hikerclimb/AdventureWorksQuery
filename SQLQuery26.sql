select SalesOrderID as OrderNumber, ProductID, OrderQty as Quantity,
SUM(OrderQty) over win as total, AVG(OrderQty) over win2 as avg, count(orderqty) over win3 as count from Sales.SalesOrderDetail where SalesOrderID IN (43659, 43664) and ProductID LIKE '71%'
window win as (order by SalesOrderID, ProductID), win2 as(Partition by SalesOrderID order by SalesOrderID, ProductID),
win3 as(order by SalesOrderID, ProductID rows between unbounded preceding and 1 following) order by SalesOrderID, ProductID