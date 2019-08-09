DECLARE @cnt INT = 0;

WHILE @cnt < 10
BEGIN
   INSERT INTO [dbo].[Table1] 
     (Name)
   VALUES
	 ('Raul ' + CAST(@cnt as varchar(10)))

	  SET @cnt = @cnt + 1;
END;

'raul


