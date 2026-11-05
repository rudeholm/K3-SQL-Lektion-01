USE master;
GO

-- Uppgift 3
-- Skriv och exekvera ett T-SQL-kommando som skapar en helt ny, tom
-- utvecklingsdatabas med namnet FailSafeIT_Local.
CREATE DATABASE FailSafeIT_Local;
GO

-- Uppgift 4
-- Skriv det kommando som talar om för SSMS att växla kontext så att alla efterföljande
-- SQL-frågor körs inuti din nyskapade databas FailSafeIT_Local.
USE FailSafeIT_Local;
GO

-- Uppgift 5
-- Skapa tabellen Users med kolumnerna Id (heltal som räknar upp sig själv automatiskt),
-- Username (text med stöd för internationella tecken, max 50 tecken, får ej vara tom) och
-- Role (text, max 20 tecken).
CREATE TABLE Users (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Username NVARCHAR(50) NOT NULL UNIQUE,
	Email NVARCHAR(100) NOT NULL UNIQUE,
	Role NVARCHAR(20) NOT NULL
);

-- Uppgift 6
-- Skapa tabellen Servers med kolumnerna Id (självuppräknande heltal), ServerName
-- (text, max 100 tecken, får ej vara tom), IpAddress (ren textsträng för IPv4, max 15
-- tecken) och Environment (text, max 20 tecken).
CREATE TABLE Servers (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	ServerName NVARCHAR(100) NOT NULL,
	IpAddress VARCHAR(15) NOT NULL,
	Environment NVARCHAR(20) NOT NULL,
	IsActive BIT NOT NULL DEFAULT 1,
	ManagedByUserId INT NULL,
	CONSTRAINT FK_Servers_Users FOREIGN KEY (ManagedByUserId)
		REFERENCES Users(Id)
);



