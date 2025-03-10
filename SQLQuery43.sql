-- Selecting specific columns from a derived table
SELECT businessentityid, firstname,lastname  

-- Creating a derived table by selecting all columns from the Person table
-- Filtering the result to include only rows where persontype is 'IN'
FROM  
   (SELECT * FROM person.person  
    WHERE persontype = 'IN') AS personDerivedTable 

-- Filtering the results to include only rows where lastname is 'Adams'
WHERE lastname = 'Adams'  

-- Ordering the results by firstname
ORDER BY firstname;