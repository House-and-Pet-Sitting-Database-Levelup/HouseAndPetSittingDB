DELIMITER //

CREATE PROCEDURE ApproveSitterApplication(IN applicationID INT)    
BEGIN 
    DECLARE bookingID int;
    DECLARE sitterID int;

    SELECT FK_UserID INTO sitterID FROM SitterApplications WHERE PK_ApplicationID = applicationID;
    SELECT FK_BookingID INTO bookingID FROM SitterApplications WHERE PK_ApplicationID = applicationID;

    UPDATE SitterApplications
    SET applicationStatus = 'Approved'
    WHERE PK_ApplicationID = applicationID
        AND applicationStatus = 'Pending';
    UPDATE Bookings
    SET BookingStatus = 'Approved'
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
