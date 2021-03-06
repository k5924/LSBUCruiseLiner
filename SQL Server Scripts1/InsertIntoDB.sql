USE Cruise_Liner;
GO

INSERT INTO Customer(FirstName, LastName, DeliveryAddress, Zipcode)
VALUES
('Spencer', 'Vazquez', 'Stinsford Hill House, Stinsford', 'DT2 8PS'),
('Porfirio', 'Jordan', 'Torrington, 10 Fairmile Lane, Cobham', 'KT11 2DJ'),
('Autumn', 'Flores', '2 Alaska Villas, Hull', 'HU8 7TF'),
('Michelle', 'Torres', 'Dashmonden Mews, High Halden Road, Biddenden', 'TN27 8BD'),
('Hong', 'Berg', 'Myotis Barn, South Duffield Road, Osgodby', 'YO8 5HW'),
('Alec', 'Velasquez', 'Top Floor Flat, 37 North Road, Brighton', 'BN1 1YB'),
('Norma', 'Cochran', '64 Beech Road, Tiverton', 'EX16 6HS'),
('Jaclyn', 'Blevins', '144 Main Street, Frizington', 'CA26 3SB'),
('Philip', 'Prince', 'Close Bye, Hynetown Road, Strete', 'TQ6 0RS'),
('Fausto', 'Case', '6 Mayfield Drive, Port Isaac', 'PL29 3SL'),
('Orval', 'Garrison', '2 Southon Close, Portslade', 'BN41 2RX'),
('Maura', 'Anthony', '36 Tyninghame Avenue, Wolverhampton', 'WV6 9PW'),
('Arthur', 'Hester', 'Burfield House, Morley Lane, Wymondham', 'NR18 9BT'),
('Allison', 'Tapia', '3 Melville Close, Loughborough', 'LE11 4FN'),
('Victor', 'Oconnell', '32B High Street, Leamington Spa', 'CV31 1LW'),
('Jerrold', 'Hayden', 'The Old Vicarage, Star', 'SA35 0AR'),
('Rico', 'Ibarra', 'Oakleaze, Bristol Road, Compton Martin', 'BS40 6NH'),
('Dale', 'Herman', '15 Kenning Road, Hoddesdon', 'EN11 9HE'),
('Mari', 'Bailey', '91 Beresford Road, Portsmouth', 'PO2 0NG'),
('Britt', 'Pittman', '2 Pear Tree Acre, Thorp Arch', 'LS23 7AS');

INSERT INTO Employees(FirstName, LastName, HomeAddress, HomeZipcode, OfficeAddress, OfficeZipcode, Position)
VALUES
('Sung', 'Frazier', 'Flats 1-17, 37 - 39 Marine Parade, Worthing', 'BN11 3PH', 'Paddock View, Netherfield Lane, Stanstead Abbotts', 'SG12 8HD', 'Clerk'),
('Maximo', 'Ibarra', '12 Cumberland Avenue, Bedlington', 'NE22 6DH', 'Paddock View, Netherfield Lane, Stanstead Abbotts', 'SG12 8HD', 'Clerk'),
('Newton', 'Combs', '440 Stockport Road West, Bredbury', 'SK6 2EE', '1 Mill Cottages, Mill Road, Long Stratton', 'NR15 2RT', 'Clerk'),
('Brant', 'Irwin', 'Somerton House, Somerton Rise, Boothby Graffoe', 'LN5 0LS', '1 Mill Cottages, Mill Road, Long Stratton', 'NR15 2RT', 'Clerk'),
('Cameron', 'Pope', '9 Lord Rosebery Mews, Norwich', 'NR7 0GX', 'Doxford Newhouses Farm, Doxford', 'NE67 5EA', 'Clerk'),
('Olga', 'Gates', '28 Whalley Road, Clitheroe', 'BB7 1AW', 'Doxford Newhouses Farm, Doxford', 'NE67 5EA', 'Clerk'),
('Hilario', 'Cordova', '8 College Way, Nottingham', 'NG8 4JH', '67A Devonport Road, Plymouth', 'PL3 4DL', 'Clerk'),
('Eric', 'Lutz', 'Brook Hollow, Heath Lane, Gunthorpe', 'NR24 2NT', '67A Devonport Road, Plymouth', 'PL3 4DL', 'Clerk'),
('Raquel', 'Kelley', 'Flat 2, Keynes Court, 593 Ringwood Road, Ferndown', 'BH22 9AJ', '170 Byron Road, Southampton', 'SO19 6QW', 'Clerk'),
('Latasha', 'Mayer', '92 Park Road, Chesterfield', 'S40 2JX', '170 Byron Road, Southampton', 'SO19 6QW', 'Clerk'),
('Keneth', 'Patel', '11A Quebec Gardens, Blackwater', 'GU17 9DE', null, null, 'Crew'),
('Rosetta', 'Barrera', '9 Moorhouses, Hightown', 'L38 9ER', null, null, 'Crew'),
('Jared', 'Hudson', '16 Pen Y Dre, Llanrwst', 'LL26 0BG', null, null, 'Crew'),
('Gordon', 'Lloyd', 'Greenlands, 93 Skipton Road, Silsden', 'BD20 9DA', null, null, 'Crew'),
('Carla', 'Barajas', 'Hillcrest, Birmingham Road, Kingshurst', 'B37 6RB', null, null, 'Crew'),
('Kate', 'Daugherty', 'White Gates, Mayflower Close, Bawtry', 'DN10 6NG', null, null, 'Crew'),
('Kathleen', 'Dixon', '8 Whitsand Bay Holiday Park, Millbrook', 'PL10 1JZ', null, null, 'Crew'),
('Lula', 'Wolf', '5 Dennis Road, Padstow', 'PL28 8DD', null, null, 'Crew'),
('Dave', 'Nichols', '2 Summerhill Gardens, Market Drayton', 'TF9 1BG', null, null, 'Crew'),
('Demarcus', 'Chavez', '1 Swaledale, Sunderland', 'SR6 8AH', null, null, 'Crew'),
('Quentin', 'Gill', '3 Berrymoor Road, Banbury', 'OX16 9QD', null, null, 'Crew'),
('Jimmy', 'Kelly', '14 Northerwood Avenue, Lyndhurst', 'SO43 7DU', null, null, 'Crew'),
('Elias', 'Mendez', 'Palmer House, Berrier', 'CA11 0XD', null, null, 'Crew'),
('Cheryl', 'Wong', '2 Chapel Street, Caistor', 'LN7 6UF', null, null, 'Crew'),
('Kayla', 'Osborne', '3 Linforth Way, Coleshill', 'B46 3LH', null, null, 'Crew'),
('Sonya', 'Black', '88 The Oval, Leeds', 'LS14 6BB', null, null, 'Crew'),
('Elliott', 'Henderson', '14 Ardleigh Green Road, Hornchurch', 'RM11 2LW', null, null, 'Crew'),
('Rosetta', 'Carter', '66 Felcourt Drive, Bradford', 'BD4 0LJ', null, null, 'Crew'),
('Rene', 'Boyer', '39 Brinklow Road, Binley', 'CV3 2HZ', null, null, 'Crew'),
('Pete', 'Harris', '6 Mariners Terrace, Bosham', 'PO18 8JA', null, null, 'Crew');

INSERT INTO Seaport(Code, City, Country, PhoneNumber)
VALUES
('LDN', 'London', 'United Kingdom', '+44 7457 850959'),
('SMO', 'Saint-Malo', 'France', '+33 6 40 67 00 06'),
('PAN', 'Pont-Aven', 'France', '+33 7 00 18 38 85'),
('BDX', 'Bordeaux', 'France', '+33 7 00 05 09 74'),
('BBO', 'Bilbao', 'Spain', '+34 721 21 86 18'),
('LCA', 'La Coruna', 'Spain', '+34 590 60 07 92'),
('ORO', 'Oporto', 'Portugal', '+351 639 367 973'),
('LBN', 'Lisbon', 'Portugal', '+351 639 306 175'),
('SVE', 'Seville', 'Spain', '+34 695 64 17 37'),
('CDZ', 'Cadiz', 'Spain', '+34 973 90 72 03'),
('BCA', 'Barcelona', 'Spain', '+34 973 90 40 20'),
('TVT', 'Tivat', 'Montenegro', '+382 60 775 241'),
('SDP', 'Santa Cruz De La Palma', 'Spain', '+34 673 92 09 86'),
('SNS', 'Sines', 'Portugal', '+351 659 230 848'),
('CTA', 'Constanta', 'Romania', '+40 702 081 640'),
('CUA', 'Ceuta', 'Spain', '+34 973 90 57 61'),
('STI', 'Stratoni', 'Greece', '+30 689 487 8551'),
('CVA', 'Civitavecchia', 'Italy', '+39 349 325 4928'),
('ATN', 'Ardalstangen', 'Norway', '+47 481 44 187'),
('RNK', 'Runavik', 'Faroe Islands', '+298 517228');

INSERT INTO Meal([Type], Price)
VALUES
('No food', 0),
('Vegitarian', 20),
('Vegan', 25),
('Halal', 20),
('Kosher', 35),
('Gluten-free', 100),
('Pescetarian', 50),
('Diabetic', 45),
('Lactose-free', 55),
('Remba', 75),
('Intermittent fasting', 25),
('Atkins', 15),
('Dukan', 35),
('Monotrophic', 32),
('Ketogenic', 41),
('Low-FODMAP', 27),
('Pegan', 29),
('Pollotarian', 55),
('Climatarian', 43),
('Macrobiotic', 37);

INSERT INTO Activities([Type], [Location], [Time], Price)
VALUES
('Cats', ' Tchaikovsky Hall', '8:00:00', 50),
('The Wizard of Oz', ' Tchaikovsky Hall', '10:00:00', 50),
('Oliver!', ' Tchaikovsky Hall', '12:00:00', 50),
('West Side Story', ' Tchaikovsky Hall', '14:00:00', 50),
('The Sound of Music', ' Tchaikovsky Hall', '16:00:00', 50),
('The Phantom of the Opera', ' Tchaikovsky Hall', '18:00:00', 50),
('Les Miserables', ' Tchaikovsky Hall', '20:00:00', 50),
('Cabaret', ' Tchaikovsky Hall', '22:00:00', 50),
('Hip Hop Music', ' Music Hall', '12:00:00', 0),
('Contemporary Music', ' Music Hall', '14:00:00', 0),
('Classical Music', ' Music Hall', '6:00:00', 0),
('Pop Music', ' Music Hall', '18:00:00', 0),
('Rock Music', ' Music Hall', '20:00:00', 0),
('Disco Music', ' Music Hall', '22:00:00', 0),
('Jogging', ' Main Deck', '6:00:00', 0),
('Swimming', ' Swimming Pool', '8:00:00', 10),
('Yoga', ' Main Deck', '10:00:00', 20),
('Pilates', ' Main Deck', '12:00:00', 20),
('Tai Chi', ' Main Deck', '14:00:00', 20),
('Walking', ' Main Deck', '16:00:00', 0);

INSERT INTO CruiseLinerEmployees(EmployeesID, SeaportCode)
VALUES
(11, 'ATN'),
(12, 'BBO'),
(13, 'BCA'),
(14, 'BDX'),
(15, 'CDZ'),
(16, 'CTA'),
(17, 'CUA'),
(18, 'CVA'),
(19, 'LBN'),
(20, 'LCA'),
(21, 'LDN'),
(22, 'ORO'),
(23, 'PAN'),
(24, 'RNK'),
(25, 'SDP'),
(26, 'SMO'),
(27, 'SNS'),
(28, 'STI'),
(29, 'SVE'),
(30, 'TVT');

INSERT INTO Reservation(PassengerFirstName, PassengerLastName, AmountToPay, Status, CustomerID, EmployeesID)
VALUES
('Spencer', 'Vazquez', 1000, 'complete', 1, 1),
('Porfirio', 'Jordan', 2000, 'incomplete', 2, 2),
('Autumn', 'Flores', 2500, 'cancelled', 3, 3),
('Michelle', 'Torres', 3000, 'complete', 4, 4),
('Hong', 'Berg', 1500, 'incomplete', 5, 5),
('Alec', 'Velasquez', 1200, 'cancelled', 6, 1),
('Norma', 'Cochran', 1600, 'complete', 7, 2),
('Jaclyn', 'Blevins', 1400, 'incomplete', 8, 3),
('Philip', 'Prince', 1700, 'cancelled', 9, 4),
('Fausto', 'Case', 2100, 'complete', 10, 5),
('Orval', 'Garrison', 2500, 'incomplete', 11, 2),
('Maura', 'Anthony', 2600, 'cancelled', 12, 3),
('Arthur', 'Hester', 1000, 'complete', 13, 4),
('Allison', 'Tapia', 1200, 'incomplete', 14, 5),
('Victor', 'Oconnell', 2400, 'cancelled', 15, 3),
('Jerrold', 'Hayden', 2300, 'complete', 16, 4),
('Rico', 'Ibarra', 3200, 'incomplete', 17, 5),
('Dale', 'Herman', 3100, 'cancelled', 18, 4),
('Mari', 'Bailey', 2400, 'complete', 19, 5),
('Britt', 'Pittman', 2600, 'incomplete', 20, 5);

INSERT INTO Ship([Name], [Type], NumberOfCabins, FullDisplacement, FuelCapacity, Speed, SeaportCode)
VALUES
('Apollo', 'F70', 87, 169000, 7450000, 18000, 'ATN'),
('Abyss', 'F80', 97, 225000, 8450000, 17000, 'BBO'),
('Atlantis', 'F90', 107, 228000, 9450000, 16000, 'BCA'),
('Calypso', 'F50', 67, 165000, 5450000, 20000, 'BDX'),
('Encore', 'F60', 77, 168000, 6450000, 19000, 'CDZ'),
('Eclipse', 'F70', 87, 169000, 7450000, 18000, 'CTA'),
('Fantasia', 'F80', 97, 225000, 8450000, 17000, 'CUA'),
('Gemini', 'F90', 107, 228000, 9450000, 16000, 'CVA'),
('Jubilee', 'F50', 67, 165000, 5450000, 20000, 'LBN'),
('Liberty', 'F60', 77, 168000, 6450000, 19000, 'LCA'),
('Luna', 'F70', 87, 169000, 7450000, 18000, 'LDN'),
('Grand Bleu', 'F80', 97, 225000, 8450000, 17000, 'ORO'),
('Maverick', 'F90', 107, 228000, 9450000, 16000, 'PAN'),
('North Star', 'F50', 67, 165000, 5450000, 20000, 'RNK'),
('Neptune', 'F60', 77, 168000, 6450000, 19000, 'SDP'),
('Orion', 'F70', 87, 169000, 7450000, 18000, 'SMO'),
('Odysse', 'F80', 97, 225000, 8450000, 17000, 'SNS'),
('Pegasus', 'F90', 107, 228000, 9450000, 16000, 'STI'),
('Silver Lining', 'F50', 67, 165000, 5450000, 20000, 'SVE'),
('Ultra Violet', 'F60', 77, 168000, 6450000, 19000, 'TVT');

INSERT INTO Voyage(ShipName, DestinationSeaport, DateOfDeparture, DateOfArrival, TravelTime)
VALUES
('Apollo', 'TVT', '2021-05-11', '2021-05-16', 5),
('Abyss', 'ATN', '2021-05-12', '2021-05-18', 6),
('Atlantis', 'BBO', '2021-05-13', '2021-05-20', 7),
('Calypso', 'BCA', '2021-05-14', '2021-05-22', 8),
('Encore', 'BDX', '2021-05-15', '2021-05-20', 5),
('Eclipse', 'CDZ', '2021-05-16', '2021-05-22', 6),
('Fantasia', 'CTA', '2021-05-17', '2021-05-24', 7),
('Gemini', 'CUA', '2021-05-18', '2021-05-26', 8),
('Jubilee', 'CVA', '2021-05-19', '2021-05-24', 5),
('Liberty', 'LBN', '2021-05-20', '2021-05-26', 6),
('Luna', 'LCA', '2021-05-21', '2021-05-28', 7),
('Grand Bleu', 'LDN', '2021-05-22', '2021-05-30', 8),
('Maverick', 'ORO', '2021-05-23', '2021-05-28', 5),
('North Star', 'PAN', '2021-05-24', '2021-05-30', 6),
('Neptune', 'RNK', '2021-05-25', '2021-06-02', 7),
('Orion', 'SDP', '2021-05-26', '2021-06-04', 8),
('Odysse', 'SMO', '2021-05-27', '2021-06-02', 5),
('Pegasus', 'SNS', '2021-05-28', '2021-06-04', 6),
('Silver Lining', 'STI', '2021-05-29', '2021-06-06', 7),
('Ultra Violet', 'SVE', '2021-05-30', '2021-06-08', 8);

INSERT INTO Cabins(VoyageNumber, CabinNumber, [Type], Price, Available)
VALUES
(1, 106, 'Suite', 300, 0),
(1, 112, 'Junior suite', 200, 1),
(2, 112, 'Junior suite', 200, 0),
(2, 106, 'Suite', 300, 1),
(3, 202, 'Double', 100, 0),
(3, 136, 'Single', 50, 1),
(4, 136, 'Single', 50, 0),
(4, 202, 'Double', 100, 1),
(5, 321, 'Triple', 150, 0),
(5, 326, 'Triple', 150, 1),
(6, 106, 'Suite', 300, 0),
(6, 112, 'Junior suite', 200, 1),
(7, 112, 'Junior suite', 200, 0),
(7, 106, 'Suite', 300, 1),
(8, 202, 'Double', 100, 0),
(8, 136, 'Single', 50, 1),
(9, 136, 'Single', 50, 0),
(9, 202, 'Double', 100, 1),
(10, 321, 'Triple', 150, 0),
(10, 326, 'Triple', 150, 1),
(1, 107, 'Suite', 300, 0),
(2, 113, 'Junior suite', 200, 0),
(3, 310, 'Double', 100, 0),
(4, 240, 'Single', 50, 0),
(5, 334, 'Triple', 150, 0),
(6, 107, 'Suite', 300, 0),
(7, 113, 'Junior suite', 200, 0),
(8, 310, 'Double', 100, 0),
(9, 240, 'Single', 50, 0),
(10, 334, 'Triple', 150, 0);

INSERT INTO Ticket(ReservationID, CrewID, VoyageNumber, CabinNumber, MealType, TravelType)
VALUES
(1, null, 1, 106, 'No food', 'Departure'),
(2, null, 1, 107, 'No food', 'Departure'),
(3, null, 2, 112, 'Vegitarian', 'Return'),
(4, null, 2, 113, 'Vegitarian', 'Return'),
(5, null, 3, 202, 'Vegan', 'Departure'),
(6, null, 3, 310, 'Vegan', 'Departure'),
(7, null, 4, 136, 'Halal', 'Return'),
(8, null, 4, 240, 'Halal', 'Return'),
(9, null, 5, 321, 'Kosher', 'Departure'),
(10, null, 5, 334, 'Kosher', 'Departure'),
(null, 11, 6, 106, 'Gluten-free', 'Return'),
(null, 12, 6, 107, 'Gluten-free', 'Return'),
(null, 13, 7, 112, 'Pescetarian', 'Departure'),
(null, 14, 7, 113, 'Pescetarian', 'Departure'),
(null, 15, 8, 202, 'Diabetic', 'Return'),
(null, 16, 8, 310, 'Diabetic', 'Return'),
(null, 17, 9, 136, 'Lactose-free', 'Departure'),
(null, 18, 9, 240, 'Lactose-free', 'Departure'),
(null, 19, 10, 321, 'Remba', 'Return'),
(null, 20, 10, 334, 'Remba', 'Return');

INSERT INTO Ticket_Activities(TicketID, ActivityType)
VALUES
(1, 'Cats'),
(2, 'The Wizard of Oz'),
(3, 'Oliver!'),
(4, 'West Side Story'),
(5, 'The Sound of Music'),
(6, 'The Phantom of the Opera'),
(7, 'Les Miserables'),
(8, 'Cabaret'),
(9, 'Hip Hop Music'),
(10, 'Contemporary Music'),
(1, 'Classical Music'),
(2, 'Pop Music'),
(3, 'Rock Music'),
(4, 'Disco Music'),
(5, 'Jogging'),
(6, 'Swimming'),
(7, 'Yoga'),
(8, 'Pilates'),
(9, 'Tai Chi'),
(10, 'Walking');