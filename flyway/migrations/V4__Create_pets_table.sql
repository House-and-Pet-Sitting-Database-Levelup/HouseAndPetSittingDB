CREATE TABLE Pets (
    PK_petID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_clientID int NOT NULL,
    petName varchar(255) NOT NULL,
    FK_speciesID int NOT NULL,
    specialRequirements varchar(255),
    additionalNotes varchar(255),
    yearOfBirth int,
    FOREIGN KEY (FK_clientID) REFERENCES Users(PK_userID),
    FOREIGN KEY (FK_speciesID) REFERENCES Species(PK_speciesID)
);
