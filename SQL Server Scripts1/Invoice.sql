USE Cruise_Liner;
GO

DROP PROCEDURE IF EXISTS Invoice_Slip;
GO

CREATE PROCEDURE Invoice_Slip
	@customerID	Int
AS

BEGIN
	DECLARE @rowCount AS Int;
	DECLARE @firstName AS Varchar(25);
	DECLARE @lastName AS Varchar(25);
	DECLARE @deliveryAddress AS Varchar(100);
	DECLARE @zipcode AS Varchar(10);
	DECLARE @reservationID AS Int;
	DECLARE @reservationPrice AS Numeric(6,2);
	DECLARE @ticketID AS Int;
	DECLARE @voyage AS Int;
	DECLARE @cabin AS Int;
	DECLARE @cabinType AS Varchar(255);
	DECLARE @cabinPrice AS Numeric(6,2);
	DECLARE @meal AS Varchar(100);
	DECLARE @mealPrice AS Numeric(5,2);
	DECLARE @activityType AS Varchar(100);
	DECLARE @activityPrice AS Numeric(5,2);
	DECLARE @totalActivityPrice AS Numeric(6,2);
	DECLARE @beforeVAT AS Numeric(12,2);

	SELECT @rowCount = COUNT(*)
	FROM Reservation
	WHERE Reservation.CustomerID = @customerID;

	IF @rowCount = 0
		BEGIN
			PRINT '###################################################################################'
			PRINT'          That customer either doesnt exist or has no reservations listed           '
			PRINT '###################################################################################'
			RETURN;
		END;
	BEGIN
		SELECT @firstname = FirstName, @lastName = LastName, @deliveryAddress = DeliveryAddress, @zipcode = Zipcode
		FROM Customer
		WHERE ID = @customerID;

		SELECT @reservationID = ID, @reservationPrice = AmountToPay
		FROM Reservation
		WHERE CustomerID = @customerID;

		SELECT @ticketID = ID, @voyage = VoyageNumber, @cabin = CabinNumber, @meal = MealType
		FROM Ticket
		WHERE ReservationID = @reservationID;

		SELECT @cabinType = [Type], @cabinPrice = Price
		FROM Cabins
		WHERE VoyageNumber = @voyage AND CabinNumber = @cabin;

		SELECT @mealPrice = Price
		FROM Meal
		WHERE [Type] = @meal;

		DECLARE activityCursor CURSOR FOR
			SELECT ActivityType, Price
			FROM Ticket_Activities, Activities
			WHERE TicketID = @ticketID AND ActivityType = Activities.[Type];

		SELECT @totalActivityPrice = SUM(Price)
		FROM Ticket_Activities, Activities
		WHERE TicketID = @ticketID AND ActivityType = Activities.[Type];

		SELECT @beforeVAT = @cabinPrice + @mealPrice + @reservationPrice + @totalActivityPrice;
		PRINT '###################################################################################'
		PRINT '-----------------------------LSBU Cruise Liner Invoice-----------------------------'
		PRINT '###################################################################################'
		PRINT 'Firstname: '+CONVERT(Char(25),@firstName)+' Lastname: '+CONVERT(Char(25),@lastName)
		PRINT 'Address: '+CONVERT(Char(100),@deliveryAddress)
		PRINT 'Zipcode: '+CONVERT(Char(10),@zipcode)
		PRINT '-----------------------------------------------------------------------------------'
		PRINT 'Price of Reservation: '+CONVERT(Char(10),FORMAT(@reservationPrice, 'C2', 'gb-GB'))
		PRINT '-----------------------------------------------------------------------------------'
		PRINT 'Cabin type: '+CONVERT(Char(255),@cabinType)
		PRINT 'Cabin Costs '+CONVERT(Char(6),FORMAT(@cabinPrice, 'C2', 'gb-GB'))
		PRINT '-----------------------------------------------------------------------------------'
		PRINT 'Meal Chosen: '+CONVERT(Char(100),@meal)
		PRINT 'Meal Costs '+CONVERT(Char(5),FORMAT(@mealPrice, 'C2', 'gb-GB'))
		PRINT '-----------------------------------------------------------------------------------'
		PRINT 'Activities: '
		OPEN activityCursor;
		FETCH NEXT FROM activityCursor into @activityType, @activityPrice
		WHILE @@FETCH_STATUS = 0
			BEGIN
				PRINT @activityType+' costs '+CONVERT(Char(5),FORMAT(@activityPrice, 'C2', 'gb-GB'))
				FETCH NEXT FROM activityCursor into @activityType, @activityPrice
			END;
		CLOSE activityCursor;
		DEALLOCATE activityCursor;
		PRINT 'Total cost of Activities: '+CONVERT(Char(6),FORMAT(@totalActivityPrice, 'C2', 'gb-GB'))
		PRINT '-----------------------------------------------------------------------------------'
		PRINT'Total Price Before VAT: '+CONVERT(Char(12),FORMAT(@beforeVAT, 'C2', 'gb-GB'))
		PRINT '-----------------------------------------------------------------------------------'
		PRINT'Total Price After VAT(+20%): '+CONVERT(Char(12),FORMAT((@beforeVAT*1.2), 'C2', 'gb-GB'))
		PRINT '-----------------------------------------------------------------------------------'
		RETURN;
	END;
	
END;

EXEC Invoice_Slip @customerID = 1;