CREATE TABLE Species (
    SpeciesID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    SpeciesName varchar(255) NOT NULL
);
