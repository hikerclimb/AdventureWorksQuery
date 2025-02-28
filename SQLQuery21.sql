select ROW_NUMBER() OVER(ORDER BY salesytd desc, postalcode asc) as row, LastName, SUM(SalesYTD) as salesytd, PostalCode from Sales.SalesPerson sp join
Person.Person p on sp.BusinessEntityID = p.BusinessEntityID
join Person.Address a
on a.AddressID = p.BusinessEntityID 
group by a.AddressID, LastName, PostalCode, salesytd order by salesytd desc, PostalCode asc

