SELECT * FROM HumanResources.Employee
inner join HumanResources.EmployeeDepartmentHistory on HumanResources.Employee.BusinessEntityID = HumanResources.EmployeeDepartmentHistory.BusinessEntityID
inner join HumanResources.Department on HumanResources.EmployeeDepartmentHistory.DepartmentID = HumanResources.Department.DepartmentID
inner join Person.Person on HumanResources.Employee.BusinessEntityID = Person.Person.BusinessEntityID
inner join Person.BusinessEntity on Person.Person.BusinessEntityID = Person.BusinessEntity.BusinessEntityID
inner join Person.BusinessEntityAddress on Person.BusinessEntity.BusinessEntityID = Person.BusinessEntityAddress.BusinessEntityID
inner join Person.Address on Person.BusinessEntityAddress.AddressID = Person.Address.AddressID
inner join Person.StateProvince on Person.Address.StateProvinceID = Person.StateProvince.StateProvinceID
inner join Sales.SalesPerson on HumanResources.Employee.BusinessEntityID = Sales.SalesPerson.BusinessEntityID
WHERE Person.StateProvince.Name = 'Colorado' and GroupName = 'Sales And Marketing' and HumanResources.Employee.BusinessEntityID 
not in (Sales.SalesPerson.BusinessEntityID);