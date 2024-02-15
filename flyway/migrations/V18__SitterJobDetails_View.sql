/*CREATE VIEW View_SitterSimpleJobs AS
SELECT
    u.UserID AS SitterID,
    u.Name AS SitterName,
    u.Surname AS SitterSurname,
    b.BookingID,
    b.StartDateTime,
    b.EndDateTime,
    b.TotalCost,
FROM Users u
JOIN Bookings b ON u.UserID = b.SitterID;
*/

CREATE VIEW View_SitterCompletedSimpleJobs AS
SELECT
    u.UserID AS SitterID,
    u.Name AS SitterName,
    u.Surname AS SitterSurname,
    b.BookingID,
    b.StartDateTime,
    b.EndDateTime,
    c.UserID AS ClientID,
    c.Name AS ClientName,
    c.Surname AS ClientSurname
FROM Users u
JOIN Bookings b ON u.UserID = b.SitterID
JOIN Users c ON b.ClientID = c.UserID
WHERE b.Status = 'Completed';


-- To get all sitters with jobs that hae been completed
-- SELECT * FROM View_SitterJobs;
-- To get all completed jobs for a specific sitter
-- SELECT * FROM View_SitterJobs WHERE SitterID = 'SitterID';
