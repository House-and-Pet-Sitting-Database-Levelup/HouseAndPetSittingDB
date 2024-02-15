DELIMITER //

CREATE PROCEDURE ApproveSitterApplication(IN applicationID INT)    

BEGIN 
    UPDATE SitterApplications
    SET applicationStatus = 'Approved'
    WHERE PK_ApplicationID = applicationID
        AND applicationStatus = 'Pending';
    UPDATE Bookings
    SET BookingStatus = 'Approved'
    WHERE FK_BookingID = PK_bookingID;
    
    IF ROW_COUNT() > 0 THEN
       SELECT 'Sitter Application approved' AS output_message;
    ELSE
        SELECT 'Sitter application ID not found, already approved, or no changes made' AS output_message;
    END IF;
    
END//

DELIMITER ;
