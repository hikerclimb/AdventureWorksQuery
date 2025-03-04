-- Selecting specific columns from the vSalesPerson view
SELECT BusinessEntityID, LastName, TerritoryName, CountryRegionName  

-- From the Sales schema's vSalesPerson view
FROM Sales.vSalesPerson  

-- Filtering the results to include only rows where TerritoryName is not NULL
WHERE TerritoryName IS NOT NULL  

-- Ordering the results using a conditional CASE statement
-- If CountryRegionName is 'United States', order by TerritoryName
-- Otherwise, order by CountryRegionName
ORDER BY CASE CountryRegionName WHEN 'United States' THEN TerritoryName  
         ELSE CountryRegionName END;


SELECT      c.name  AS 'ColumnName'
            ,(SCHEMA_NAME(t.schema_id) + '.' + t.name) AS 'TableName'
FROM        sys.columns c
JOIN        sys.tables  t   ON c.object_id = t.object_id
WHERE       c.name LIKE '%territory%'
ORDER BY    TableName
            ,ColumnName;