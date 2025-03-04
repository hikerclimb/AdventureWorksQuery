select FirstName, LastName, ROW_NUMBER() OVER(partition by AddressId order by postalcode) as 'Row Number', RANK() OVER(partition BY AddressId 
order by postalcode) as Rank
,DENSE_RANK() OVER(partition by AddressId order by postalcode desc) as 'Dense Rank', NTILE(4) OVER(order by postalcode) as Quartile, SalesYTD, PostalCode from 
Sales.SalesPerson sp join Person.Person p on sp.BusinessEntityID = p.BusinessEntityID 
join Person.Address a on a.AddressID = p.BusinessEntityID where TerritoryID is not null and salesytd <> 0;

select a.name View_name,b.name column_name

from sys.all_objects a,sys.all_columns b

where a.object_id=b.object_id

and a.type='V'

and a.name like '%quar%';