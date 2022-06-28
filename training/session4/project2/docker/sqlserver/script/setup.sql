CREATE DATABASE $(DB_NAME);
GO
USE $(DB_NAME);

IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'$(DB_USER)')
BEGIN
    CREATE LOGIN [$(DB_USER)] WITH PASSWORD = '[$(DB_USER_PASSWORD)]' ;
    CREATE USER [$(DB_USER)] FOR LOGIN [$(DB_USER)] ;
    EXEC sp_addrolemember N'db_owner', N'$(DB_USER)' ;
END;
GO