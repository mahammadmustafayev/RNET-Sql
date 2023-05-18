Select FirstName,LastName,Notes from Employees where  Notes like '%toast%'

Select FirstName,LastName from Employees 
where (MONTH(BirthDate)= MONTH(GETDATE())) and (DAY(BirthDate)= DAY(GETDATE()))



Select E1.EmployeeID, 
       E1.FirstName,
	   E1.LastName,
	   E2.EmployeeID,
	   E2.FirstName,
	   E2.LastName
from Employees E1, Employees E2
where e2.EmployeeID=e1.ReportsTo