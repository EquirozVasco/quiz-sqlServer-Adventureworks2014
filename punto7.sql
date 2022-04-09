use AdventureWorks2014

SELECT COUNT (*) Empleados
FROM HumanResources.Employee
JOIN HumanResources.EmployeeDepartmentHistory on HumanResources.EmployeeDepartmentHistory.BusinessEntityID = HumanResources.Employee.BusinessEntityID
JOIN HumanResources.Shift on HumanResources.Shift.ShiftID = HumanResources.EmployeeDepartmentHistory.ShiftID
JOIN Sales.SalesPerson ON Sales.SalesPerson.BusinessEntityID = HumanResources.Employee.BusinessEntityID
JOIN Sales.SalesOrderHeader on Sales.SalesOrderHeader.SalesPersonID = Sales.SalesPerson.BusinessEntityID
WHERE HumanResources.Shift.Name = 'Night' AND Sales.SalesOrderHeader.TotalDue > 865.204;