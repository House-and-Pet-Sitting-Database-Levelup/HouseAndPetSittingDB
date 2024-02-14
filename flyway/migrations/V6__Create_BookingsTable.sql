CREATE TABLE Bookings (
    PK_bookingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_sitterID int NOT NULL,
    FK_clientID int NOT NULL,
    FK_serviceTypeID int,
    startDateTime DATETIME NOT NULL,
    endDateTime DATETIME NOT NULL,
    additionalNotes VARCHAR (255),
    totalCost DECIMAL (18, 2) NOT NULL,
    BookingStatus VARCHAR (255),

    FOREIGN KEY (FK_sitterID) REFERENCES Users(PK_UserID),
    FOREIGN KEY (FK_clientID) REFERENCES Users(PK_UserID),
    FOREIGN KEY (FK_serviceTypeID) REFERENCES ServiceTypes(PK_serviceTypeID)
)