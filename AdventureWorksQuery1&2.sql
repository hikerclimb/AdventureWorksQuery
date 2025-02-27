SELECT TOP (1000) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]gi
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[HumanResources].[Employee] order by JobTitle asc

  select * from [AdventureWorks2022].[HumanResources].[Employee] e join [AdventureWorks2022].[Person].[Person] p on p.BusinessEntityID = e.BusinessEntityID order by LastName
