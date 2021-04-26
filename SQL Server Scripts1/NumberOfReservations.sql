USE Cruise_Liner;
GO

-- for seeing only the highest and lowest reservations by employee
DROP VIEW IF EXISTS query1;
GO

CREATE VIEW query1 as(
SELECT FirstName, LastName, OfficeAddress, OfficeZipcode, COUNT(EmployeesID) as NumberOfReservations
FROM Employees, Reservation
WHERE Employees.ID = Reservation.EmployeesID
GROUP BY FirstName, LastName, OfficeAddress, OfficeZipcode);
GO

SELECT * 
FROM query1
WHERE query1.NumberOfReservations=(SELECT MIN(NumberOfReservations) FROM query1) OR query1.NumberOfReservations=(SELECT MAX(NumberOfReservations) FROM query1);

-- to see all employees ordered by number of reservations
SELECT FirstName, LastName, OfficeAddress, OfficeZipcode, COUNT(EmployeesID) as NumberOfReservations
FROM Employees, Reservation
WHERE Employees.ID = Reservation.EmployeesID
GROUP BY FirstName, LastName, OfficeAddress, OfficeZipcode
ORDER BY NumberOfReservations DESC;