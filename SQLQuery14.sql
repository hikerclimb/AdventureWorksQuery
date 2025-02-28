SELECT locationid, shelf, SUM(quantity) AS TotalQuantity
FROM production.productinventory
GROUP BY GROUPING SETS ( ROLLUP (locationid, shelf), CUBE (locationid, shelf) );