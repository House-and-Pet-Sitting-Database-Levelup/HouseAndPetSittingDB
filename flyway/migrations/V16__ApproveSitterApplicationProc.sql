DELIMITER //

CREATE PROCEDURE ApproveSitterApplication(IN applicationID INT)    
BEGIN 
    DECLARE bookingID int;
    DECLARE sitterID int;

    SELECT FK_UserID INTO sitterID FROM SitterApplications WHERE PK_applicationID = applicationID;
    SELECT FK_bookingID INTO bookingID FROM SitterApplications WHERE PK_applicationID = applicationID;

    UPDATE SitterApplications
    SET FK_applicationStatus = 1
    WHERE PK_applicationID = applicationID
        AND FK_applicationStatus = 3;
    UPDATE Bookings
    SET FK_bookingStatus = 1
    WHERE bookingID = PK_bookingID;
    UPDATE Bookings
    SET FK_sitterID = sitterID
    WHERE bookingID = PK_bookingID;
    
    IF ROW_COUNT() > 0 THEN
       SELECT 'Sitter Application approved' AS output_message;
    ELSE
        SELECT 'Sitter application ID not found, already approved, or no changes made' AS output_message;
    END IF;
    
END//

DELIMITER ;
