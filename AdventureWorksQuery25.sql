select SalesOrderID, ProductID, OrderQty, SUM(OrderQty) over win as totalquantity, AVG(OrderQty)over win as avg_quantity, 
COUNT(OrderQty) over win as no_Of_Orders,
MIN(OrderQty) over win as min_quanttity, 
MAX(OrderQty) over win as max_quantity from Sales.SalesOrderDetail
where SalesOrderID = 43659 or SalesOrderID = 43664 WINDOW win AS (PARTITION BY SalesOrderID)

