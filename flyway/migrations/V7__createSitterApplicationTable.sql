CREATE TABLE SitterApplications(
	PK_ApplicationID uniqueidentifier PRIMARY KEY DEFAULT NEWSEQUENTIALID(),
	FK_BookingID uniqueidentifier NOT NULL,
	FK_UserID uniqueidentifier NOT NULL,
	applicationStatus varchar(8),
	CONSTRAINT chk_Status CHECK (applicationStatus IN ('Pending','Approved', 'Rejected'))
);

ALTER TABLE SitterApplications
	ADD CONSTRAINT fk_BookingReference
	FOREIGN KEY (FK_BookingID)
	REFERENCES Bookings(PK_BookingID);

ALTER TABLE SitterApplications
	ADD CONSTRAINT fk_UserIDReference
	FOREIGN KEY (FK_UserID)
	REFERENCES Users(PK_UserID);