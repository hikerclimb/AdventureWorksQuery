select businessentityid, firstname, lastname
from Person.Person 
WHERE businessentityid <= 1500 AND LastName LIKE '%Al%' AND FirstName LIKE '%M%';