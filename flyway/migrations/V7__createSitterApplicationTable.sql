CREATE TABLE SitterApplications(
	PK_applicationID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	FK_bookingID int NOT NULL,
	FK_userID int NOT NULL,
	FK_applicationStatus int DEFAULT 3,

	FOREIGN KEY (FK_applicationStatus) REFERENCES StatusTypes(PK_statusType)
);

ALTER TABLE SitterApplications
	ADD CONSTRAINT fk_BookingReference
	FOREIGN KEY (FK_BookingID)
	REFERENCES Bookings(PK_BookingID);

ALTER TABLE SitterApplications
	ADD CONSTRAINT fk_UserIDReference
	FOREIGN KEY (FK_userID)
	REFERENCES Users(PK_userID);