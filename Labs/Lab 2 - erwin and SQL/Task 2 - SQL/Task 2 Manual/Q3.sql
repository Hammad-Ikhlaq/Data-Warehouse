
SELECT*FROM dbo.EmployeeAddress
SELECT*FROM dbo.EmployeePayHistory

CREATE PROCEDURE dbo.getDetail 
AS
		SELECT*FROM dbo.EmployeePayHistory EP
		WHERE EP.EmployeeID IN (SELECT EA.EmployeeID
								FROM dbo.EmployeeAddress EA
								WHERE EA.City='Calgary') and EP.PayFrequency>1


EXEC dbo.getDetail
