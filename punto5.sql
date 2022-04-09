SELECT COUNT (*) UnitsSold , Product.Name
FROM
Production.Product
JOIN Production.ProductProductPhoto on Product.ProductID = Production.ProductProductPhoto.ProductID
JOIN Sales.SpecialOfferProduct on Production.ProductProductPhoto.ProductID = Sales.SpecialOfferProduct.ProductID
JOIN Sales.SalesOrderDetail on Sales.SpecialOfferProduct.SpecialOfferID = Sales.SalesOrderDetail.SpecialOfferID
GROUP BY Product.Name
ORDER BY UnitsSold;