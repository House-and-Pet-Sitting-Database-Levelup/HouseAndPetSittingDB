CREATE TRIGGER update_sitter_application_status 
AFTER UPDATE 
ON Bookings 
FOR EACH ROW
BEGIN
    IF NEW.Status = 'Approved' THEN
		START TRANSACTION;
		UPDATE SitterApplications SET status = 'Approved' WHERE FK_SitterID = NEW.FK_SitterID AND FK_BookingID = NEW.PK_BookingID;
		UPDATE SitterApplications SET status = 'Rejected' WHERE FK_SitterID != NEW.FK_SitterID AND FK_BookingID = NEW.PK_BookingID;
		COMMIT;
    END IF;
	IF NEW.Status = 'Cancelled' THEN
		START TRANSACTION;
		DELETE FROM SitterApplications WHERE FK_BookingID = NEW.PK_BookingID;
        COMMIT;
    END IF;
END;

