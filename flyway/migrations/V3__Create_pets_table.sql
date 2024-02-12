CREATE TABLE Pets (
    PetID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    ClientID_U_FK uniqueidentifier NOT NULL,
    PetName varchar(255) NOT NULL,
    SpeciesID_U_FK uniqueidentifier NOT NULL,
    SpecialRequirements varchar(MAX),
    AdditionalNotes varchar(MAX),
    YearOfBirth int,
    FOREIGN KEY (ClientID_U_FK) REFERENCES Users(UserID),
    FOREIGN KEY (SpeciesID_U_FK) REFERENCES Species(SpeciesID)
);
