DELIMITER //

CREATE FUNCTION GetNumberOfPets(ownerID int)
RETURNS INT
BEGIN
    DECLARE numPets INT;

    SELECT COUNT(*) INTO numPets FROM Pets WHERE FK_clientID = ownerID;

    RETURN numPets;
END;
//

DELIMITER ;
