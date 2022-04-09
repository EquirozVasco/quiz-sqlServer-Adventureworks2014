SELECT
AdventureWorks2014.Production.Product.Name,
AdventureWorks2014.Production.ProductCostHistory.StandardCost, 
AdventureWorks2014.Production.ProductCostHistory.ModifiedDate 
FROM AdventureWorks2014.Production.ProductCostHistory INNER JOIN AdventureWorks2014.Production.Product 
ON AdventureWorks2014.Production.Product.ProductID = AdventureWorks2014.Production.ProductCostHistory.ProductID
WHERE AdventureWorks2014.Production.ProductCostHistory.ModifiedDate = '2013-05-16';