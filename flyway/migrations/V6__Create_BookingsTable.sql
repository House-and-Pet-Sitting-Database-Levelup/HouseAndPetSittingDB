CREATE TABLE Bookings (
    PK_bookingID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    FK_sitterID int,
    FK_clientID int NOT NULL,
    FK_serviceTypeID int NOT NULL,
    startDateTime DATETIME NOT NULL,
    endDateTime DATETIME NOT NULL,
    additionalNotes VARCHAR (255),
    totalCost DECIMAL(10, 2),
    FK_bookingStatus int DEFAULT 3,

    FOREIGN KEY (FK_sitterID) REFERENCES Users(PK_userID),
    FOREIGN KEY (FK_clientID) REFERENCES Users(PK_userID),
    FOREIGN KEY (FK_serviceTypeID) REFERENCES ServiceTypes(PK_serviceTypeID),
    FOREIGN KEY (FK_bookingStatus) REFERENCES StatusTypes(PK_statusType)
)