select LocationID, shelf, sum(Quantity) as total from Production.ProductInventory group by CUBE(LocationID, Shelf);
