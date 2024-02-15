DELIMITER //

CREATE FUNCTION CalculateBookingCost (starting_date DATETIME, ending_date DATETIME, hourly_rate DECIMAL(10,2))
RETURNS DECIMAL(10,2)
BEGIN

    DECLARE total_hours INT;
    DECLARE total_cost DECIMAL(10, 2);
   
    SET total_hours = TIMESTAMPDIFF(HOUR, starting_date, ending_date);
   
    SET total_cost = total_hours * hourly_rate;
    
    RETURN total_cost;

END;
//

DELIMITER ;