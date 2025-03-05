select name, Color, ListPrice from Production.Product where Color = 'Red' or Color = 'Blue' order by ListPrice;

-- Selecting specific columns from the Product table where Color is 'Red'
SELECT Name, Color, ListPrice  

-- From the Production schema's Product table
FROM Production.Product  

-- Filtering the results to include only rows where Color is 'Red'
WHERE Color = 'Red'  

-- UNION ALL combines the results of two SELECT statements, including duplicates
UNION ALL  

-- Selecting specific columns from the Product table where Color is 'Blue'
SELECT Name, Color, ListPrice  

-- From the Production schema's Product table
FROM Production.Product  

-- Filtering the results to include only rows where Color is 'Blue'
WHERE Color = 'Blue'  

-- Ordering the combined results by ListPrice in ascending order
ORDER BY ListPrice ASC;