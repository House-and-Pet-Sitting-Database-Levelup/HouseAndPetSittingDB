DELIMITER //

CREATE PROCEDURE ApplyForJob(IN SitterID int, IN BookingID int)
BEGIN
    DECLARE NewApplicationID INT;

    START TRANSACTION;
    
    INSERT INTO SitterApplications (PK_ApplicationID, FK_BookingID, FK_SitterID, ApplicationStatus)
    VALUES (DEFAULT, BookingID, SitterID, 'Pending');

    SELECT LAST_INSERT_ID() INTO NewApplicationID;
    
    COMMIT;
    
    SELECT NewApplicationID AS 'NewApplicationID';
END//

DELIMITER ;