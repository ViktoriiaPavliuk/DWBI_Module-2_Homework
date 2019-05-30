use VP_module_2

go
drop trigger if exists trg_Patient
go

create trigger trg_Patient ON Patient
AFTER UPDATE
AS
BEGIN
	UPDATE Patient SET Updated_date = GETDATE()
END
GO

