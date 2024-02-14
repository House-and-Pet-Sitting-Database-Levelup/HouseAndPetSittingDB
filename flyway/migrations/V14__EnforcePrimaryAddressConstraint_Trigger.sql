DELIMITER //

CREATE TRIGGER EnforcePrimaryAddressConstraint_Insert
BEFORE INSERT ON ClientAddresses
FOR EACH ROW
BEGIN
    DECLARE primary_count INT;

    IF NEW.IsPrimary = 1 THEN
        SELECT COUNT(*) INTO primary_count
        FROM ClientAddresses WHERE FK_clientID = NEW.FK_clientID AND IsPrimary = 1;

        IF primary_count > 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot have more than one primary address for a user';
        END IF;
    END IF;
END//

CREATE TRIGGER EnforcePrimaryAddressConstraint_Update
BEFORE UPDATE ON ClientAddresses
FOR EACH ROW
BEGIN
    DECLARE primary_count INT;

    IF NEW.IsPrimary = 1 THEN
        SELECT COUNT(*) INTO primary_count
        FROM ClientAddresses WHERE FK_clientID = NEW.FK_clientID AND IsPrimary = 1;

        IF primary_count > 0 THEN
            SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot have more than one primary address for a user';
        END IF;
    END IF;
END//

DELIMITER ;
