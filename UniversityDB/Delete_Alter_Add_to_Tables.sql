-- alter table Building
-- Rename COLUMN Address to BuildingLocation;

-- ALTER TABLE Building RENAME COLUMN Address TO BuildingLocation;

-- ALTER TABLE Building CHANGE Address BuildingLocation TEXT;

EXEC sp_rename 'Building.Address', 'BuildingLocation', 'COLUMN';
alter table Building 
add BuildingName NVARCHAR(50),
Campus NVARCHAR(30);

--Reseed
DBCC CHECKIDENT ('Faculty', RESEED, 0);
--Reseed Building
DBCC CHECKIDENT('Building',RESEED,0);
delete from Building
select * from building

--Reseed Department
--Reseed Building
DBCC CHECKIDENT('Department',RESEED,0);
dbcc checkident('Department',reseed,0);
delete from Department
select * from Department