CREATE FUNCTION GetSitterApplicationByStatus
(
    @status VARCHAR(225)
)

RETURNS TABLE
AS
RETURNS
(
    SELECT *
    FROM SitterApplications
    WHERE applicationStatus = @status
)
