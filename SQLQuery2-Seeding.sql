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

