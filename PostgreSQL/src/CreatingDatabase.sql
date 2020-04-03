CREATE TABLE Customer
(
    CustomerID INTEGER NOT NULL,
    FirstName  VARCHAR(50),
    LastName   VARCHAR(50),
    Gender     VARCHAR(6),
    Address    VARCHAR(200),
    Phone      VARCHAR(20),
    Email      VARCHAR(100),
    City       VARCHAR(20),
    Country    VARCHAR(50),
    PRIMARY KEY (CustomerID)
);

INSERT INTO Customer(CustomerID, FirstName, LastName, Gender, Address, Phone, Email, City, Country)
VALUES (1, 'John', 'Hilbert', 'Male', '284 chaucer st', '(+27)84789657', 'john@gmail.com', 'Johannesburg',
        'South Africa'),
       (2, 'Thando', 'Sithole', 'Female', '240 Sect 1', '(+27)794445584', 'thando@gmail.com', 'Cape Town',
        'South Africa'),
       (3, 'Leon', 'Glen', 'Male', '81 Everton Rd Gillits', '(+27) 820832830', 'leon@gmail.com', 'Durban',
        'South Africa'),
       (4, 'Charl', 'Muller', 'Male', '290A Dorset Ecke', '(+44) 856872553', 'Charl.muller@yahoo.com', 'Berlin',
        'Germany'),
       (5, 'Julia', 'Stein', 'Female', '2 Wernerring', '(+44) 8672445058', 'js234@yahoo.com', 'Frankfurt', 'Germany');

CREATE TABLE Employees
(
    EmployeeID INTEGER,
    FirstName  VARCHAR(50),
    LastName   VARCHAR(50),
    Email      VARCHAR(100),
    JobTitle   VARCHAR(20),
    PRIMARY KEY (EmployeeID)
);

INSERT INTO Employees (EmployeeID, FirstName, LastName, Email, JobTitle)
VALUES (1, 'Kani', 'Matthew', 'mat@gmail.com', 'Manager'),
       (2, 'Lesly', 'Cronje', 'LesC@gmail.com', 'Clerk'),
       (3, 'Gideon', 'Maduku', 'm@gmail.com', 'Accountant');

CREATE TABLE Orders
(
    OrderId                INTEGER,
    ProductID              INTEGER,
    PaymentID              INTEGER,
    FullFilledByEmployeeID INTEGER,
    DateRequired           VARCHAR(10),
    DateShipped            VARCHAR(10),
    Status                 VARCHAR(50),
    PRIMARY KEY (OrderID)

);

INSERT INTO Orders(OrderID, ProductID, PaymentID, FullFilledByEmployeeID, DateRequired, DateShipped, Status)
VALUES (1, 1, 1, 2, '05-09-2018', NULL, 'Not Shipped'),
       (2, 1, 2, 2, '04-09-2018', '03-09-2018', 'Shipped'),
       (3, 3, 3, 3, '06-09-2018', NULL, 'Not Shipped');

CREATE TABLE Payments
(
    CustomerId  INTEGER,
    PaymentID   INTEGER,
    PaymentDate VARCHAR(10),
    Amount      DECIMAL,
    PRIMARY KEY (PaymentID)

);

INSERT INTO Payments (CustomerID, PaymentID, PaymentDate, Amount)
VALUES (1, 1, '01-09-2018', 150.75),
       (5, 2, '03-09-2018', 150.75),
       (4, 3, '03-09-2018', 700.60);



CREATE TABLE Products
(
    ProductId   INTEGER,
    ProductName VARCHAR(100),
    Description VARCHAR(300),
    BuyPrice    DECIMAL,
    PRIMARY KEY (ProductID)
);


INSERT INTO Products(ProductId, ProductName, Description, BuyPrice)
VALUES (1, 'Harley Davidson Chopper', 'This replica features working kickstand,front suspension, gear-shift lever',
        150.75),
       (2, 'Classic Car', 'Turnable front wheels, steering function', 550.75),
       (3, 'Sports Car', 'Turnable front wheels, steering function', 700.60);
