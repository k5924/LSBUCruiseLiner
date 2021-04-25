USE Cruise_Liner;
GO

-- Should check availability of Cabin via Cabin Number and Voyage Number to check if the cabin on that voyage is available
DROP PROCEDURE IF EXISTS Check_Availability;
GO

CREATE PROCEDURE Check_Availability
	@VoyageNumber	Int,
	@CabinNumber	Int
AS

BEGIN
	DECLARE	@rowCount AS Int;
	DECLARE @availability AS Bit;

	SELECT @rowCount = COUNT(*)
	FROM Cabins
	WHERE Cabins.CabinNumber = @CabinNumber AND Cabins.VoyageNumber = @VoyageNumber;

	IF @rowCount = 0
		BEGIN
			PRINT 'Cabin number: ' + CONVERT(Char(12), @CabinNumber) + ' on Voyage number: ' + CONVERT(Char(12),@VoyageNumber) + ' doesnt exist'
			RETURN;
		END;

	BEGIN
		SELECT @availability = Cabins.Available
		FROM Cabins, Voyage
		WHERE Cabins.VoyageNumber = Voyage.Number AND Cabins.CabinNumber = @CabinNumber AND Cabins.VoyageNumber = @VoyageNumber;

		IF @availability = 1
			BEGIN
				PRINT 'Cabin number: ' + CONVERT(Char(12), @CabinNumber) + ' on Voyage number: ' + CONVERT(Char(12),@VoyageNumber) + ' is available'
				RETURN;
			END;
		ELSE
			BEGIN
				PRINT 'Cabin number: ' + CONVERT(Char(12), @CabinNumber) + ' on Voyage number: ' + CONVERT(Char(12),@VoyageNumber) + ' is unavailable'
				RETURN;
			END;
	END;
END;

EXEC Check_Availability @VoyageNumber=1, @CabinNumber=112;