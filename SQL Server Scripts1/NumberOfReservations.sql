USE Cruise_Liner;
GO

SELECT FirstName, LastName, OfficeAddress, OfficeZipcode, NumberOfReservations
FROM(
SELECT FirstName, LastName, OfficeAddress, OfficeZipcode, COUNT(EmployeesID) as NumberOfReservations
FROM Employees, Reservation
WHERE Employees.ID = Reservation.EmployeesID
GROUP BY FirstName, LastName, OfficeAddress, OfficeZipcode
) a
WHERE NumberOfReservations=(SELECT MIN(COUNT(EmployeesID)) FROM Reservation);