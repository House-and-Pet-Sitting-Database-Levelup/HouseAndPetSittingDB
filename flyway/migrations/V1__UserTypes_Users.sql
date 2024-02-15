CREATE TABLE UserTypes (
    PK_userTypeID int NOT NULL AUTO_INCREMENT,
    description varchar(255) NOT NULL,
    PRIMARY KEY (PK_userTypeID)
);

INSERT INTO UserTypes (PK_userTypeID, description) VALUES
(DEFAULT,'Sitter'),
(DEFAULT,'Client'),
(DEFAULT,'Admin');

CREATE TABLE Users (
    PK_userID int NOT NULL AUTO_INCREMENT,
    userName varchar(255) NOT NULL,
    surname varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL CHECK (Email LIKE '%_@__%.__%'),
    cellNumber varchar(255) UNIQUE NOT NULL CHECK (CHAR_LENGTH(cellNumber) = 13 AND LEFT(cellNumber, 1) = '+'),
    FK_userTypeID int NOT NULL,
    FOREIGN KEY (FK_userTypeID) REFERENCES UserTypes(PK_userTypeID),
    PRIMARY KEY (PK_userID)
);


