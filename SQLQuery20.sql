select p.BusinessEntityID, LastName, FirstName, Name from Person.BusinessEntityContact bec join 
Person.ContactType ct on bec.ContactTypeID = ct.ContactTypeID join Person.Person p on
p.BusinessEntityID = bec.PersonID where ct.Name LIKE 'Purchasing Manager' order by LastName, FirstName asc;

