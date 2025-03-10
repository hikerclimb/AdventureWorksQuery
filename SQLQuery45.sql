select productid, name, color from (select * from Production.Product 
where name = 'Blade' or Name = 'Crown Race' or Name = 'AWC Logo Cap') as out