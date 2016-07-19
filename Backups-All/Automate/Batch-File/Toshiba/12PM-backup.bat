echo off
cls

REM ==============================
REM To configure this properly See Video tutorial by Sachin Samy on YouTube:  
REM Powered by: tech.petercrys.com
REM ==============================

REM The sqlcmd utility lets you enter Transact-SQL statements.

REM [-S] Specifies the instance of SQL Server to which to connect.

REM [.\instance name of the SQL Server] Specifies the instance 
REM of SQL Server to which to connect. 

REM [-E] Uses a trusted connection instead of using a user name 
REM and password to log on to SQL Server.

REM [-Q] Executes a query when sqlcmd starts and then immediately exits sqlcmd. 

REM Quotation marks around the query which is going to executed [" "]

REM The path of the backup folder ['C:\Backups-All\Backup 12AM\']

REM  Type of backup you want to take [F=full, D=differential, L=log]

REM ==============================

REM ------------------------------

sqlcmd -S .\SQLEXPRESS -E -Q "EXEC sp_BackupDatabases @backupLocation='C:\Backups-All\Backup\Toshiba\12PM\', @backupType='F'"


REM ------------------------------