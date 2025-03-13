with Sales_CTE(salespersonId, numberoforders)
as ( 
	select salespersonid, count(*) as numberoforders
	from sales.SalesOrderHeader
	where SalesPersonID is not null
	group by SalesPersonID
)
select AVG(numberoforders) as "Average Sales per person"
from Sales_CTE


--select SUM(totaldue) from Sales.SalesOrderHeader group by SalesPersonID
-- Common Table Expression (CTE) named Sales_CTE defined
