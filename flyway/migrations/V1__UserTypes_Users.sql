CREATE TABLE UserTypes (
    PK_UserTypeID int NOT NULL AUTO_INCREMENT,
    UserTypeDescription varchar(255) NOT NULL,
    PRIMARY KEY (PK_UserTypeID)
);

INSERT INTO UserTypes (PK_UserTypeID, UserTypeDescription) VALUES
(DEFAULT,'Sitter'),
(DEFAULT,'Client'),
(DEFAULT,'Admin');

CREATE TABLE Users (
    PK_UserID int NOT NULL AUTO_INCREMENT,
    UserName varchar(255) NOT NULL,
    Surname varchar(255) NOT NULL,
    Email varchar(255) UNIQUE NOT NULL CHECK (Email LIKE '%_@__%.__%'),
    CellNumber varchar(255) UNIQUE NOT NULL CHECK (CHAR_LENGTH(CellNumber) = 13 AND LEFT(CellNumber, 1) = '+'),
    FK_UserTypeID int NOT NULL,
    FOREIGN KEY (FK_UserTypeID) REFERENCES UserTypes(PK_UserTypeID),
    PRIMARY KEY (PK_UserID)
);


