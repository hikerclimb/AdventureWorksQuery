select city, COUNT(AddressTypeID) as noofemployees from Person.BusinessEntityAddress  bea
join Person.Address a on a.AddressID = bea.AddressID 
group by City order by city asc