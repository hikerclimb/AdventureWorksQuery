select p.BusinessEntityID, FirstName, LastName, PhoneNumber from Person.PersonPhone pp join
Person.Person p on p.BusinessEntityID = pp.BusinessEntityID where LastName LIKE 'L%'
order by LastName, FirstName