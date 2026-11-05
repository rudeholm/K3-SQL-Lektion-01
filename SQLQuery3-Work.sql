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

-- Uppgift 13
-- Modifiera tabellen Users i efterhand med hjälp av ett DDL-kommando (ALTER TABLE) så
-- att kolumnen Username får villkoret UNIQUE (vilket förhindrar att två tekniker har samma
-- namn).
ALTER TABLE Servers
	ADD CONSTRAINT UQ_Servers_IpAddress UNIQUE (IpAddress);

SELECT * FROM Servers;
