Drop Database IF EXISTS VehicleDealership;
CREATE Database VehicleDealership;

USE VehicleDealership; 

DROP TABLE IF EXISTS Vehicles;
DROP TABLE IF EXISTS SalesContract;
DROP TABLE IF EXISTS Dealership;
DROP TABLE IF EXISTS Inventory;

CREATE TABLE Vehicles (
VIN VARCHAR(17) PRIMARY KEY,
YEAR YEAR NOT NULL,
Sold boolean NOT NULL,
Make VARCHAR(50) NOT NULL,
Model VARCHAR(50) NOT NULL,
VehicleType VARCHAR(50),
Color VARCHAR(50),
Odometer Int NOT NULL,
Price DECIMAL NOT NULL
);

CREATE TABLE SalesContract(

SalesContractID INT auto_increment PRIMARY KEY,
Date DATE,
CustomerName VARCHAR(50),
CustomerEmail VARCHAR(50),
VIN VARCHAR(17),
Sold BOOLEAN,
TotalPrice DECIMAL,
Monthlypayment DECIMAL,
SalesTaxAmount DECIMAL,
RecordingFee DECIMAL,
ProcessingFee DECIMAL,
FinanceOption BOOLEAN,
FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);

CREATE TABLE Dealership(
DealershipID INT auto_increment primary key,
Name VARCHAR(50),
Address VARCHAR(100),
Phone VARCHAR(12)
);

CREATE TABLE Inventory(
DealershipID INT,
VIN VARCHAR(17),
FOREIGN KEY (DealershipID) REFERENCES Dealership(DealershipID),
FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);

INSERT INTO Vehicles (Vin,Year,Sold,Make,Model,VehicleType,color,Odometer,Price)
VALUES 
('51A8943FERRARI23', '2023', 0, 'Ferrari', '488 Spider', 'Convertible', 'Red', 500, 280000.00),
('7268194LAMBO2022', '2022', 1, 'Lamborghini', 'Huracan EVO', 'Coupe', 'Yellow', 1200, 240000.00),
('9835641BUGATTI24', '2024', 0, 'Bugatti', 'Chiron', 'Coupe', 'Blue', 800, 3000000.00),
('2341876MCLAREN23', '2023', 0, 'McLaren', '720S', 'Convertible', 'Orange', 300, 310000.00),
('6712489ROLLS2023', '2023', 1, 'Rolls-Royce', 'Cullinan', 'SUV', 'White', 1500, 350000.00),
('9831762ASTON2024', '2024', 0, 'Aston Martin', 'DBX707', 'SUV', 'Green', 700, 260000.00),
('4529837PORSCHE22', '2022', 0, 'Porsche', '911 Turbo S', 'Coupe', 'Silver', 400, 220000.00),
('6198743KOENIG23', '2023', 0, 'Koenigsegg', 'Jesko', 'Coupe', 'Black', 100, 3300000.00),
('7192836BENTLEY23', '2023', 1, 'Bentley', 'Continental GT', 'Convertible', 'Dark Green', 2000, 250000.00),
('9148263PAGANI24', '2024', 0, 'Pagani', 'Huayra', 'Coupe', 'Gold', 600, 3400000.00);

INSERT INTO SalesContract (Date, CustomerName, CustomerEmail, VIN, Sold, TotalPrice, MonthlyPayment, SalesTaxAmount, RecordingFee, ProcessingFee, FinanceOption)
VALUES
('2023-10-15', 'John Doe', 'johndoe@example.com', '7268194LAMBO2022', 1, 240000, 4000, 18000, 500, 300, 1),
('2023-09-22', 'Jane Smith', 'janesmith@example.com', '6712489ROLLS2023', 1, 350000, 5833, 26250, 500, 300, 0),
('2023-11-01', 'Alice Brown', 'alicebrown@example.com', '7192836BENTLEY23', 1, 250000, 4166, 18750, 500, 300, 1),
('2023-10-05', 'Michael Green', 'michaelgreen@example.com', '4529837PORSCHE22', 1, 220000, 3666, 16500, 500, 300, 0),
('2023-10-20', 'Chris Johnson', 'chrisjohnson@example.com', '9831762ASTON2024', 1, 260000, 4333, 19500, 500, 300, 0),
('2023-09-30', 'Emma Wilson', 'emmawilson@example.com', '51A8943FERRARI23', 1, 280000, 4666, 21000, 500, 300, 1),
('2023-10-10', 'Robert Davis', 'robertdavis@example.com', '7268194LAMBO2022', 1, 240000, 4000, 18000, 500, 300, 1),
('2023-11-15', 'Sophia Martinez', 'sophiamartinez@example.com', '2341876MCLAREN23', 1, 310000, 5166, 23250, 500, 300, 0),
('2023-11-01', 'Ethan Thomas', 'ethanthomas@example.com', '6712489ROLLS2023', 1, 350000, 5833, 26250, 500, 300, 0),
('2023-11-20', 'Isabella Moore', 'isabellamoore@example.com', '9835641BUGATTI24', 1, 3000000, 50000, 225000, 500, 300, 1);

INSERT INTO Dealership(Name,Address,Phone)
VALUES 
('Dev Exotic Dealership','123 Maplewood Drive, Springfield, IL 62704,United States','4516952347'),
('Elite Motors', '456 Oceanview Avenue, Santa Monica, CA 90401, United States', '3105557890'),
('Prestige Auto Gallery', '789 Cedar Lane, Austin, TX 78701, United States', '5123334455');

INSERT INTO Inventory (DealershipID, VIN)
VALUES
(1,'51A8943FERRARI23'), 
(1, '7268194LAMBO2022'), 
(3, '9835641BUGATTI24'), 
(2, '2341876MCLAREN23'), 
(3, '6712489ROLLS2023'), 
(1, '9831762ASTON2024'), 
(2, '4529837PORSCHE22'), 
(2, '6198743KOENIG23'), 
(3, '7192836BENTLEY23'), 
(2, '9148263PAGANI24'); 


