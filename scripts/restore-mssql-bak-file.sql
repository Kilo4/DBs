-- Run pwsh for upload bak file to docker image 
-- docker ps
-- docker cp '/Users/yourname/Downloads/mydb.bak' cotainerID:/var/backups

RESTORE FILELISTONLY FROM DISK = N'/var/backups/Posybe2024-04-08.bak'

RESTORE DATABASE Posybe 
FROM DISK = N'/var/backups/Posybe2024-04-08.bak' 
WITH MOVE 'Posybe' 
TO '/var/opt/mssql/data/Posybe.mdf' , MOVE 'Posybe_log' 
TO '/var/opt/mssql/data/Posybe_log.ldf'
