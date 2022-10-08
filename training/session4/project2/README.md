# Solomon Islands Training

## [Session 4](../README.md) - Project 2

Building onto project one, lets run the same requirements, but with some initialisation of creating a user and a database.

- note the .docker or docker folder (look for either)
- note docker-compose.yml references the docker folder
- note one folder per service, this is not a rule but is a convention we will follow
- Dont get overly bogged down in the scripts etc.   Comes in time, with exposure.


##### Restore SOLLIC
[reference](https://docs.microsoft.com/en-us/sql/linux/tutorial-restore-backup-in-sql-server-container?view=sql-server-ver16)
(slightly different for windows)
```
docker exec -it project2a-sqlserver-1 mkdir /var/opt/mssql/backup
docker cp ~/Documents/sollic/LICDATA_Backup_089622.bak project2a-sqlserver-1:/var/opt/mssql/backup

docker exec -it project2a-sqlserver-1 /opt/mssql-tools/bin/sqlcmd -S localhost \
-U SA -P '<YourNewStrong!Passw0rd>' \
-Q 'RESTORE FILELISTONLY FROM DISK = "/var/opt/mssql/backup/LICDATA_Backup_089622.bak"' \
| tr -s ' ' | cut -d ' ' -f 1-2

docker exec -it project2a-sqlserver-1 /opt/mssql-tools/bin/sqlcmd \
-S localhost -U SA -P '<YourNewStrong!Passw0rd>' \
-Q 'RESTORE DATABASE licdata FROM DISK = "/var/opt/mssql/backup/LICDATA_Backup_089622.bak" WITH MOVE "LicData" TO "/var/opt/mssql/data/licdata.mdf", MOVE "LicData_log" TO "/var/opt/mssql/data/licdata_log.ldf"'
```
