CREATE TABLE ClientAddresses(
    PK_addressID uniqueidentifier PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
    FK_UserID uniqueidentifier NOT NULL,
    streetAddress varchar(225) NOT NULL,
    city varchar(225) NOT NULL,
    state varchar (225) NOT NULL,
    postalCode varchar (225) NOT NULL,
    isPrimary BOOLEAN,
    
    FOREIGN KEY (FK_UserID) REFERENCE Users(PK_UserID)
)