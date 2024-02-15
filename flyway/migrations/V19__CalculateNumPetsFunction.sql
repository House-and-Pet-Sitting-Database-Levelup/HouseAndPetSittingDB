DELIMITER //

CREATE FUNCTION GetNumberOfPets(ownerID int)
RETURNS INT
BEGIN
    DECLARE numPets INT;

    SELECT COUNT(*) INTO numPets FROM Pets WHERE ClientID_U_FK = ownerID;

    RETURN numPets;
END;
//

DELIMITER ;
