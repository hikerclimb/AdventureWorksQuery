select SalesPersonID, CustomerID, sum(SubTotal) as sum_subtotal from sales.SalesOrderHeader 
where SalesPersonID is not NULL group by SalesPersonID, CustomerID order by SalesPersonID asc