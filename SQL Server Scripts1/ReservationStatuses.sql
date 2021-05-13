USE Cruise_Liner;
GO

-- if for each status type (as in cancelled, incomplete or complete)
SELECT [Status], COUNT([Status]) as TotalPerStatus
FROM Employees, Reservation
WHERE Employees.ID = Reservation.EmployeesID
GROUP BY [Status]

-- if for each employee
SELECT FirstName, LastName, OfficeAddress, OfficeZipcode, [Status], COUNT(EmployeesID) as NumberOfReservations
FROM Employees, Reservation
WHERE Employees.ID = Reservation.EmployeesID
GROUP BY FirstName, LastName, OfficeAddress, OfficeZipcode, [Status]