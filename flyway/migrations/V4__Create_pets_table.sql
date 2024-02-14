CREATE TABLE Pets (
    PetID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    ClientID_U_FK int NOT NULL,
    PetName varchar(255) NOT NULL,
    SpeciesID_U_FK int NOT NULL,
    SpecialRequirements varchar(255),
    AdditionalNotes varchar(255),
    YearOfBirth int,
    FOREIGN KEY (ClientID_U_FK) REFERENCES Users(PK_UserID),
    FOREIGN KEY (SpeciesID_U_FK) REFERENCES Species(PK_SpeciesID)
);
