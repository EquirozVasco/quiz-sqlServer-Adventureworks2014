use AdventureWorks2014

SELECT COUNT(*) MetalSlug FROM Production.Product
INNER JOIN Production.ProductInventory on Production.Product.ProductID = Production.ProductInventory.ProductID
INNER JOIN Production.Location on Production.ProductInventory.LocationID = Production.Location.LocationID
WHERE Production.Location.Name = 'Metal Storage';

