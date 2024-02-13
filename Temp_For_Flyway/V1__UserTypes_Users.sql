CREATE TABLE UserTypes (
    UserTypeID_PK uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    UserTypeDescription varchar(255) NOT NULL
);

INSERT INTO UserTypes (UserTypeID, UserTypeDescription) VALUES
(DEFAULT,'Sitter'),
(DEFAULT,'Client'),
(DEFAULT,'Admin');

CREATE TABLE Users (
    UserID_PK uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    UserName varchar(255) NOT NULL,
    Surname varchar(255) NOT NULL,
    Email varchar(255) UNIQUE NOT NULL CHECK (Email LIKE '%_@__%.__%'), -- Basic email format validation
    CellNumber varchar(255) UNIQUE NOT NULL CHECK (LEN(CellNumber) = 13 AND LEFT(CellNumber, 1) = '+'),
    UserTypeID_U_FK uniqueidentifier NOT NULL,
    FOREIGN KEY (UserTypeID_U_FK) REFERENCES UserTypes(UserTypeID)
);


