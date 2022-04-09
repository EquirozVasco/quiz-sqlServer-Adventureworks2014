select COUNT (MaritalStatus) FROM AdventureWorks2014.HumanResources.Employee 
WHERE MaritalStatus = 'M' AND AdventureWorks2014.HumanResources.Employee.JobTitle != 'Research and Development Manager';
