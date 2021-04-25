USE Cruise_Liner;
GO

-- See all cabins and their availability
SELECT Cabins.VoyageNumber, Cabins.CabinNumber, Cabins.Type, Cabins.Price, CASE WHEN Cabins.Available = 1 THEN 'Available'
ELSE 'Unavailable'
END as Availability
FROM Cabins, Voyage
WHERE Cabins.VoyageNumber = Voyage.Number;

-- See only available cabins
SELECT Cabins.VoyageNumber, Cabins.CabinNumber, Cabins.Type, Cabins.Price, CASE WHEN Cabins.Available = 1 THEN 'Available'
ELSE 'Unavailable'
END as Availability
FROM Cabins, Voyage
WHERE Cabins.VoyageNumber = Voyage.Number AND Cabins.Available = 1;