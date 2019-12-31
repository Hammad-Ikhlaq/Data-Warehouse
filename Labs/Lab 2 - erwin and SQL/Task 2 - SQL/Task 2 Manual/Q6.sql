CREATE TRIGGER dTriger
ON dbo.EmployeePayHistory
Instead Of Delete
AS 
BEGIN
print 'you cannot delete'
END

Delete from dbo.EmployeePayHistory
where EmployeeID=1

select*from dbo.EmployeePayHistory