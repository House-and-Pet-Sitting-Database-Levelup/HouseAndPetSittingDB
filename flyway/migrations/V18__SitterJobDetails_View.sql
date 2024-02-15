CREATE VIEW View_SitterCompletedSimpleJobs AS
SELECT
    u.PK_userID AS SitterID,
    u.userName AS SitterName,
    u.surname AS SitterSurname,
    b.PK_bookingID AS BookingID,
    b.startDateTime,
    b.endDateTime,
    c.PK_userID AS ClientID,
    c.userName AS ClientName,
    c.surname AS ClientSurname
FROM Users u
JOIN Bookings b ON u.PK_userID = b.FK_sitterID
JOIN Users c ON b.FK_clientID = c.PK_userID
WHERE b.bookingStatus = 'Completed';


-- To get all sitters with jobs that hae been completed
-- SELECT * FROM View_SitterJobs;
-- To get all completed jobs for a specific sitter
-- SELECT * FROM View_SitterJobs WHERE SitterID = 'SitterID';
