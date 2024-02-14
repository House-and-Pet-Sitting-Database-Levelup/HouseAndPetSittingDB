CREATE TABLE ClientAddresses(
    PK_addressID uniqueidentifier PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
    FK_clientID uniqueidentifier NOT NULL
    addressLine1 varchar(225) NOT NULL
    addressLine2 varchar(225) NOT NULL
    city varchar(225) NOT NULL
    suburb varchar (225) NOT NULL
    postalCode varchar (225) NOT NULL
    FOREIGN KEY (FK_clientID) REFERENCE Users(PK_UserID)
)