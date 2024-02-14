CREATE TABLE ClientAddresses(
    PK_addressID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_clientID int NOT NULL,
    addressLine1 varchar(225) NOT NULL,
    addressLine2 varchar(225) NOT NULL,
    city varchar(225) NOT NULL,
    suburb varchar (225) NOT NULL,
    postalCode varchar (225) NOT NULL,
    IsPrimary bit(7) NOT NULL,

    FOREIGN KEY (FK_clientID) REFERENCES Users(PK_UserID)
)