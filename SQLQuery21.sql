select ROW_NUMBER() OVER(PARTITION BY PostalCode ORDER BY PostalCode asc) as row, LastName, SUM(SalesYTD) as salesytd, PostalCode from Sales.SalesPerson sp join
Person.Person p on sp.BusinessEntityID = p.BusinessEntityID
join Person.Address a
on a.AddressID = p.BusinessEntityID where SalesYTD <> 0 and TerritoryID is not NULL
group by LastName, PostalCode, salesytd order by PostalCode asc, salesytd desc

select TerritoryID from Person.Address a join Person.Person p on a.AddressID = p.BusinessEntityID 
join Sales.SalesPerson s on s.TerritoryID = p.BusinessEntityID
where PostalCode = '98027' and LastName = 'Jiang'

SELECT 
    ROW_NUMBER() OVER (PARTITION BY pa.PostalCode ORDER BY sp.SalesYTD DESC) AS "Row Number",
    pp.LastName, 
    sp.SalesYTD, 
    pa.PostalCode
FROM Sales.SalesPerson AS sp
    INNER JOIN Person.Person AS pp
        ON sp.BusinessEntityID = pp.BusinessEntityID
    INNER JOIN Person.BusinessEntityAddress AS pba
        ON sp.BusinessEntityID = pba.BusinessEntityID
    INNER JOIN Person.Address AS pa
        ON pba.AddressID = pa.AddressID
WHERE sp.TerritoryID IS NOT NULL
    AND sp.SalesYTD <> 0
ORDER BY pa.PostalCode;