USE master;
GO
    Create DATABASE BobsShoes;
GO    


SELECT * FROM sys.databases where name = 'BobsShoes';

USE BobsShoes;
GO

-- Show the layout of the files for the database
EXEC sp_helpfile;
GO

CREATE SCHEMA Orders 
    AUTHORIZATION dbo;
GO

-- Create new filegroups for data and logs
ALTER DATABASE BobsShoes
    ADD FILEGROUP BobsData;
ALTER DATABASE BobsShoes
    ADD FILE (
       NAME = BobsData,
       FILENAME = 'C:\Users\kushal.seth\BobsData.mdf'
    )
    TO FILEGROUP BobsData;
 
ALTER DATABASE BobsShoes
    ADD LOG FILE ( 
        NAME = BobsLogs,
        FILENAME = 'C:\Users\kushal.seth\BobsLog.ldf'
    );

GO
