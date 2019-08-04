EXEC sp_addumpdevice 'disk', 'BackupTests',
'D:\Projects\Github\My\Private\BackupMe\Backups\backuptests.bak';
GO

EXEC sp_addumpdevice 'disk', 'BackupTestsLog',
'X:\SQLServerBackups\AdvWorksLog.bak';
GO

BACKUP DATABASE BackupTests
TO DISK = 'D:\Projects\Github\My\Private\BackupMe\Backups\backuptests.bak';

RESTORE DATABASE bk1
FROM DISK = 'D:\Projects\Github\My\Private\BackupMe\Backups\backuptests.bak'
WITH REPLACE,
MOVE 'BackupTests' To 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\bk1.mdf',
MOVE 'BackupTests_log' To 'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\bk1.ldf'

DROP DATABASE bk1

