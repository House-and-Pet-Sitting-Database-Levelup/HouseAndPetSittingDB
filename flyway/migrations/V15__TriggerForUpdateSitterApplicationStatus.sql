DELIMITER //
CREATE TRIGGER update_sitter_application_status 
AFTER UPDATE 
ON Bookings 
FOR EACH ROW
BEGIN
    IF NEW.BookingStatus = 'Approved' THEN
		UPDATE SitterApplications SET applicationStatus = 'Approved' WHERE FK_SitterID = NEW.FK_SitterID AND FK_BookingID = NEW.PK_BookingID;
		UPDATE SitterApplications SET applicationStatus = 'Rejected' WHERE FK_SitterID <> NEW.FK_SitterID AND FK_BookingID = NEW.PK_BookingID;
		SELECT 'Should have set approved and rejected' AS output_message;
    END IF;
	IF NEW.BookingStatus = 'Cancelled' THEN
		DELETE FROM SitterApplications WHERE FK_BookingID = NEW.PK_BookingID;
    END IF;

END//

DELIMITER ;