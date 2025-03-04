select t2.BusinessEntityId, coalesce(t1.SalariedFlag, t2.SalariedFlag) as salariedflag from (select BusinessEntityID, 
SalariedFlag from HumanResources.Employee where SalariedFlag = 'true' 
or businessentityid is not NULL) as t1
join
(select BusinessEntityID, SalariedFlag from HumanResources.Employee where SalariedFlag = 'false' or businessentityid 
is not NULL) as t2 on t1.businessentityid = t2.businessentityid order 
by case when t2.SalariedFlag = 'false' then 'false' else 'true' end, BusinessEntityID asc;


--correct answer doens't account for ordering of businessentityid
-- Selecting specific columns from the Employee table
SELECT BusinessEntityID, SalariedFlag  

-- From the HumanResources schema's Employee table
FROM HumanResources.Employee  

-- Ordering the results using a conditional CASE statement
-- If SalariedFlag is 'true', order by BusinessEntityID in descending order
-- If SalariedFlag is 'false', order by BusinessEntityID in ascending order
ORDER BY CASE SalariedFlag WHEN 'true' THEN BusinessEntityID END DESC  
        ,CASE WHEN SalariedFlag ='false' THEN BusinessEntityID END;