
SELECT*FROM dbo.Project

CREATE TRIGGER Triger
ON dbo.Project
Instead Of INSERT
AS 
BEGIN
DECLARE @P int, @N varchar(100),@S datetime, @E datetime, @des varchar(50), @D int
Select @P=ProjectID, @N=Name, @S=StartDate, @E=EndDate, @des=Description, @D=DeptID from inserted
INSERT INTO Project values(@P, @N, @S, @E, @des, @D)
END
 
INSERT INTO Project values(60,'qw',1,1,'qw',1)
 
SELECT * FROM TriggerEmployee
