CREATE TABLE Bookings (
    PK_bookingID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    FK_sitterID uniqueidentifier NOT NULL,
    FK_clientID uniqueidentifier NOT NULL,
    FK_serviceTypeiD uniqueidentifier,
    startDateTime DATETIME NOT NULL,
    endDateTime DATETIME NOT NULL,
    additionalNotes VARCHAR (MAX),
    totalCost DECIMAL (18, 2) NOT NULL,
    status VARCHAR (255),

    FOREIGN KEY (FK_sitterID) REFERENCES Sitters(PK_sitterID),
    FOREIGN KEY (FK_clientID) REFERENCES Users(PK_UserID),
    FOREIGN KEY (FK_serviceTypeID) REFERENCES ServiceTypes(PK_serviceTypeID)
)