


CREATE PROCEDURE dbo.getDetail2 
AS

SELECT*FROM Employee E
WHERE E.EmployeeID IN (SELECT EmployeeID FROM EmployeePayHistory EP
					   GROUP BY EmployeeID
					   HAVING Count(EP.EmployeeID)>1)


EXEC dbo.getDetail2