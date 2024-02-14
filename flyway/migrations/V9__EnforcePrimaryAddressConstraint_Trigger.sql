CREATE TRIGGER EnforcePrimaryAddressConstraint
BEFORE INSERT OR UPDATE 
ON Addresses
FOR EACH ROW
BEGIN
    DECLARE @primary_count INT;
    
    IF NEW.IsPrimary = 1 THEN
        SELECT COUNT(*) INTO @primary_count
        FROM Addresses WHERE FK_UserID = NEW.FK_UserID AND IsPrimary = 1;
        
        IF @primary_count > 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot have more than one primary address for a user';
        END IF;
    END IF;
END;
