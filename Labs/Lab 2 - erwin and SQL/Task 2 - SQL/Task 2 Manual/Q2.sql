
SELECT*FROM dbo.Employee
SELECT*FROM dbo.EmployeePayHistory



					    
CREATE FUNCTION [dbo].[tablefunc1] ()
RETURNS TABLE
AS

RETURN
SELECT*FROM Employee E
WHERE E.EmployeeID IN (SELECT EmployeeID FROM EmployeePayHistory EP
					   GROUP BY EmployeeID
					   HAVING Count(EP.EmployeeID)>1)

SELECT*FROM dbo.[tablefunc1]();
