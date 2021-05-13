CREATE DATABASE Cruise_Liner;
GO

USE Cruise_Liner;
GO

CREATE TABLE Seaport(
	Code	Varchar(3)	NOT NULL,
	City	Varchar(100)	NOT NULL,
	Country	Varchar(100)	NOT NULL,
	PhoneNumber	Varchar(20)	NOT NULL,
	CONSTRAINT	Code	PRIMARY KEY(Code)
);

CREATE TABLE Ship(
	[Name]	Varchar(255)	NOT NULL,
	[Type]	Varchar(10)	NOT NULL,
	NumberOfCabins	Int	NOT NULL,
	FullDisplacement	Numeric(19,2)	NOT NULL,
	FuelCapacity	Numeric(10,2)	NOT NULL,
	Speed	Numeric	(11,2)	NOT NULL,
	SeaportCode	Varchar(3)	NOT NULL,
	CONSTRAINT	ShipName PRIMARY KEY([Name]),
	CONSTRAINT	OriginSeaport	FOREIGN KEY(SeaportCode)	REFERENCES	Seaport(Code)
);

CREATE TABLE Voyage(
	Number	Int	NOT NULL	IDENTITY (1,1),
	ShipName	Varchar(255)	NOT NULL,
	DestinationSeaport	Varchar(3)	NOT NULL,
	DateOfDeparture	Date	NOT NULL,
	DateOfArrival	Date	NOT NULL,
	TravelTime	Int	NOT NULL,
	CONSTRAINT Number	PRIMARY KEY(Number),
	CONSTRAINT	ShipName2	FOREIGN KEY(ShipName)	REFERENCES	Ship([Name]),
	CONSTRAINT	DestinationSeaport	FOREIGN KEY(DestinationSeaport)	REFERENCES	Seaport(Code)
);

CREATE TABLE Cabins(
	VoyageNumber	Int	NOT NULL,
	CabinNumber	Int	NOT NULL,
	[Type]	Varchar(255)	NOT NULL,
	Price	Numeric(6,2)	NOT NULL,
	Available	Bit	NOT NULL,
	CONSTRAINT	CabinsPK	PRIMARY KEY(VoyageNumber, CabinNumber),
	CONSTRAINT	VoyageFK	FOREIGN KEY(VoyageNumber)	REFERENCES	Voyage(Number)
);

CREATE TABLE Meal(
	[Type]	Varchar(100)	NOT NULL,
	Price	Numeric(5,2)	NOT NULL,
	CONSTRAINT MealType	PRIMARY KEY([Type])
);

CREATE TABLE Activities(
	[Type]	Varchar(100)	NOT NULL,
	[Location] Varchar(100)	NOT NULL,
	[Time]	Time(7)	NOT NULL,
	Price	Numeric(5,2)	NOT NULL,
	CONSTRAINT	ActivityType	PRIMARY KEY([Type])
);

CREATE TABLE Customer(
	ID	Int	NOT NULL	IDENTITY (1,1),
	FirstName	Varchar(25)	NOT NULL,
	LastName	Varchar(25)	NOT NULL,
	DeliveryAddress	Varchar(100)	NOT NULL,
	Zipcode	Varchar(10)	NOT NULL,
	CONSTRAINT	CustomerID	PRIMARY KEY(ID)
);

CREATE TABLE Employees(
	ID	Int	NOT NULL	IDENTITY(1,1),
	FirstName	Varchar(25)	NOT NULL,
	LastName	Varchar(25)	NOT NULL,
	HomeAddress	Varchar(100)	NOT NULL,
	HomeZipcode	Varchar(10)	NOT NULL,
	OfficeAddress	Varchar(100)	NULL,
	OfficeZipcode	Varchar(10)	NULL,
	Position	Varchar(100)	NOT NULL,
	CONSTRAINT	EmployeesID	PRIMARY KEY(ID)
);

CREATE TABLE CruiseLinerEmployees(
	EmployeesID	Int	NOT NULL,
	SeaportCode	Varchar(3)	NOT NULL,
	CONSTRAINT	CrewID	PRIMARY KEY(EmployeesID),
	CONSTRAINT	EmployeesFK2	FOREIGN KEY(EmployeesID)	REFERENCES	Employees(ID),
	CONSTRAINT	SeaportCode	FOREIGN KEY(SeaportCode)	REFERENCES	Seaport(Code)
);

CREATE TABLE Reservation(
	ID	Int	NOT NULL	IDENTITY(1,1),
	PassengerFirstName	Varchar(25)	NOT NULL,
	PassengerLastName	Varchar(25)	NOT NULL,
	AmountToPay	Numeric(6,2)	NOT NULL,
	[Status]	Varchar(10)	NOT	NULL,
	CustomerID	Int	NOT NULL,
	EmployeesID	Int	NOT NULL,
	CONSTRAINT	ReservationID	PRIMARY KEY(ID),
	CONSTRAINT	CustomerFK	FOREIGN KEY(CustomerID)	REFERENCES	Customer(ID),
	CONSTRAINT	EmployeesFK	FOREIGN KEY(EmployeesID)	REFERENCES	Employees(ID)
);

CREATE TABLE Ticket(
	ID	Int	NOT NULL	IDENTITY(1,1),
	ReservationID	Int	NULL,
	CrewID	Int	NULL,
	VoyageNumber	Int	NOT NULL,
	CabinNumber	Int	NOT NULL,
	MealType	Varchar(100)	NOT NULL,
	TravelType	Varchar(30)	NOT NULL,
	CONSTRAINT	TicketID	PRIMARY KEY(ID),
	CONSTRAINT	ReservationFK	FOREIGN KEY(ReservationID)	REFERENCES	Reservation(ID),
	CONSTRAINT	CrewFK	FOREIGN KEY(CrewID)	REFERENCES	CruiseLinerEmployees(EmployeesID),
	CONSTRAINT	CabinFK	FOREIGN KEY(VoyageNumber, CabinNumber)	REFERENCES	Cabins(VoyageNumber, CabinNumber),
	CONSTRAINT	MealTypeFK	FOREIGN KEY(MealType)	REFERENCES	Meal([Type])
);

CREATE TABLE Ticket_Activities(
	TicketID	Int	NOT NULL,
	ActivityType	Varchar(100)	NOT NULL,
	CONSTRAINT	TicketFK	FOREIGN KEY(TicketID)	REFERENCES	Ticket(ID),
	CONSTRAINT	ActivitiesFK	FOREIGN KEY(ActivityType)	REFERENCES	Activities([Type])
);