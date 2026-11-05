USE FailSafeIT_Local;
GO

-- Uppgift 7
-- Mata in två valfria tekniker i tabellen Users (t.ex. 'GlennDevOps' och 'AdaAdmin') i en
-- och samma INSERT-sats utan att manuellt ange något värde för Id-kolumnen.
INSERT INTO Users (Username, Email, Role)
VALUES	('GlennDevOps', 'glenn@failsafe.it', 'DevOps'),
		('AdaAdmin', 'ada@failsafe.it', 'Sysadmin');

-- Uppgift 8
-- Mata in tre servrar i tabellen Servers. Konfigurera en av dem för produktionsmiljön
-- ('Prod') och de andra två för utvecklingsmiljön ('Dev').
INSERT INTO Servers (ServerName, IpAddress, Environment, ManagedByUserId)
VALUES	('SVR-PROD-SQL01', '10.0.1.10', 'Prod', 2),
		('SVR-DEV-SAND01', '10.0.3.10', 'Dev', 1),
		('SVR-DEV-SAND02', '10.0.3.20', 'Dev', NULL);

-- Uppgift 9
-- Skriv en sökfråga som hämtar och visar samtliga kolumner och samtliga rader från
-- tabellen Servers för att verifiera inmatningen.
SELECT * FROM Servers;

-- Uppgift 10
-- Optimera sökfrågan från Uppgift 9 så att den endast hämtar kolumnerna ServerName
-- och IpAddress, samt filtrerar bort alla servrar som inte tillhör produktionsmiljön ('Prod').
SELECT ServerName, IpAddress FROM Servers
	WHERE Environment = 'Prod';

-- Uppgift 11
-- Uppdatera IP-adressen för en specifik server i databasen med hjälp av ett UPDATE-
-- kommando. Säkerställ att du använder ett filter så att inte alla servrar påverkas.
UPDATE Servers SET IpAddress = '10.0.1.45'
	WHERE Id = 2;

-- Uppgift 12
-- Radera en av utvecklingsservrarna permanent från tabellen Servers genom att rikta ett
-- DELETE-kommando specifikt mot radens unika ID-nummer.
DELETE FROM Servers WHERE Id = 2;

SELECT * FROM Servers;
