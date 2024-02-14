CREATE FUNCTION GetSitterApplicationByStatus
(
    @status VARCHAR(8)
)

RETURNS TABLE
AS
RETURNS
(
    SELECT *
    FROM SitterApplications
    WHERE applicationStatus = @status
)