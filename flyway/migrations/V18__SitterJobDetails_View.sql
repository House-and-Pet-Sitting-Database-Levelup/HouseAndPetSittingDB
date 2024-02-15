CREATE VIEW View_SitterCompletedSimpleJobs AS
SELECT
    u.PK_UserID AS SitterID,
    u.UserName AS SitterName,
    u.Surname AS SitterSurname,
    b.PK_bookingID AS BookingID,
    b.StartDateTime,
    b.EndDateTime,
    c.PK_UserID AS ClientID,
    c.UserName AS ClientName,
    c.Surname AS ClientSurname
FROM Users u
JOIN Bookings b ON u.PK_UserID = b.FK_sitterID
JOIN Users c ON b.FK_clientID = c.PK_UserID
WHERE b.BookingStatus = 'Completed';


-- To get all sitters with jobs that hae been completed
-- SELECT * FROM View_SitterJobs;
-- To get all completed jobs for a specific sitter
-- SELECT * FROM View_SitterJobs WHERE SitterID = 'SitterID';
