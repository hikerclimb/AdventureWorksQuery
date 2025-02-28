select YEAR(OrderDate) as yeroforderdate, SUM(TotalDue) as totaldueorder from Sales.SalesOrderHeader group by YEAR(OrderDate) order by
YEAR(orderDate) asc