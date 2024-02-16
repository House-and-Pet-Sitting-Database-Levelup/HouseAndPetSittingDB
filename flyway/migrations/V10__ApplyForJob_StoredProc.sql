DELIMITER //

CREATE PROCEDURE ApplyForJob(IN SitterID int, IN BookingID int)
BEGIN
    DECLARE NewApplicationID INT;

    START TRANSACTION;
    
    INSERT INTO SitterApplications (PK_applicationID, FK_bookingID, FK_userID, FK_applicationStatus)
    VALUES (DEFAULT, BookingID, SitterID, 3);

    SELECT LAST_INSERT_ID() INTO NewApplicationID;
    
    COMMIT;
    
    SELECT NewApplicationID AS 'NewApplicationID';
END//

DELIMITER ;