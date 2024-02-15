CREATE TABLE SitterApplications(
	PK_ApplicationID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
	FK_BookingID int NOT NULL,
	FK_UserID int NOT NULL,
	applicationStatus varchar(225),
	--CONSTRAINT chk_Status CHECK (applicationStatus IN ('Pending','Approved', 'Rejected'))-
);

ALTER TABLE SitterApplications
	ADD CONSTRAINT fk_BookingReference
	FOREIGN KEY (FK_BookingID)
	REFERENCES Bookings(PK_BookingID);

ALTER TABLE SitterApplications
	ADD CONSTRAINT fk_UserIDReference
	FOREIGN KEY (FK_UserID)
	REFERENCES Users(PK_UserID);