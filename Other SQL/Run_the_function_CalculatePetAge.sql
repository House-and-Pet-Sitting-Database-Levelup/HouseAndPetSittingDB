DECLARE @Age INT;
SET @Age=dbo.CalculatePetAge('A84BDD5B-CFD0-4201-94DF-7C88A7728EB9');

SELECT @Age AS petAge;