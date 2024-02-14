CREATE TABLE UserTypes (
    PK_UserTypeID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    UserTypeDescription varchar(255) NOT NULL
);

INSERT INTO UserTypes (PK_UserTypeID, UserTypeDescription) VALUES
(DEFAULT,'Sitter'),
(DEFAULT,'Client'),
(DEFAULT,'Admin');

CREATE TABLE Users (
    PK_UserID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    UserName varchar(255) NOT NULL,
    Surname varchar(255) NOT NULL,
    Email varchar(255) UNIQUE NOT NULL CHECK (Email LIKE '%_@__%.__%'),
    CellNumber varchar(255) UNIQUE NOT NULL CHECK (LEN(CellNumber) = 13 AND LEFT(CellNumber, 1) = '+'),
    FK_UserTypeID uniqueidentifier NOT NULL,
    FOREIGN KEY (FK_UserTypeID) REFERENCES UserTypes(PK_UserTypeID)
);


