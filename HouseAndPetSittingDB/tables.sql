CREATE TABLE sitters(
sitterID int, 
sitterName varchar(255), 
sitterSurname varchar(255), 
sitterEmail varchar(255), 
sitterCellNumber varchar(255)
);

CREATE TABLE clients(
clientID int, 
clientName varchar(255), 
clientSurname varchar(255), 
clientAddressID varchar(255), 
clientEmail varchar(255), 
clientCellNumber varchar(255), 
petNumber int
);

CREATE TABLE clientPets(
petID int, 
clientID int, 
petName varchar(255), 
petSpecies varchar(255), 
petAge int, 
specialNotes varchar(255)
);

CREATE TABLE sittingJob(
jobID int, 
sitterID int, 
clientID int, 
startDate DATE, 
startTime TIME, 
endDate DATE, 
endTime TIME, 
jobRate int
);

CREATE TABLE clientAddresses(
addressID int, 
clientID int,
addressLine1 varchar(255), 
addressLine2 varchar(255), 
City varchar(255), 
Suburb varchar(255), 
postalCode varchar(255)
);

CREATE TABLE petSpecies(
speciesID integer, 
speciesName varchar(255), 
exotic int --0 for no, 1 for yes
);