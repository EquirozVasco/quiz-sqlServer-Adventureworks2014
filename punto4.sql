use AdventureWorks2014

SELECT
Person.Person.FirstName,
COUNT (HumanResources.EmployeeDepartmentHistory.BusinessEntityID) Contador
FROM
HumanResources.EmployeeDepartmentHistory
join HumanResources.Employee on HumanResources.EmployeeDepartmentHistory.BusinessEntityID = HumanResources.Employee.BusinessEntityID
join Person.Person on HumanResources.Employee.BusinessEntityID = Person.Person.BusinessEntityID
GROUP BY Person.Person.FirstName
HAVING COUNT (HumanResources.EmployeeDepartmentHistory.BusinessEntityID) = 1;