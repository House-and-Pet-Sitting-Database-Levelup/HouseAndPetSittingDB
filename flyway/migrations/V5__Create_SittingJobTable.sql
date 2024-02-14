CREATE TABLE SittingJob (
    PK_jobID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    FK_sitterID uniqueidentifier NOT NULL,
    FK_clientID uniqueidentifier NOT NULL,
    startDate DATE,
    startTime TIME,
    endDate DATE,
    endTime TIME,
    jobRate INT,

    FOREIGN KEY (FK_sitterID) REFERENCES Sitters(PK_sitterID),
    FOREIGN KEY (FK_clientID) REFERENCES Users(PK_UserID)
)