USE FailSafeIT_Local;
GO

INSERT INTO Users (Username, Email, Role)
VALUES	('GlennDevOps', 'glenn@failsafe.it', 'DevOps'),
		('AdaAdmin', 'ada@failsafe.it', 'Sysadmin');

INSERT INTO Servers (ServerName, IpAddress, Environment, ManagedByUserId)
VALUES	('SVR-PROD-SQL01', '10.0.1.10', 'Prod', 2),
		('SVR-DEV-SAND01', '10.0.3.10', 'Dev', 1),
		('SVR-DEV-SAND02', '10.0.3.20', 'Dev', NULL);

SELECT * FROM Servers;

SELECT ServerName, IpAddress FROM Servers
	WHERE Environment = 'Prod';

