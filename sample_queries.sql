-- Sample Queries for Emuge Mechanical Application

-- Insert sample data
INSERT INTO ProductCategory (CategoryName, Description)
VALUES ('Cutting Tools', 'Used for machining operations'),
       ('Taps', 'Used for threading holes'),
       ('Gauges', 'Used for measurement accuracy');

INSERT INTO Product (ProductName, ProductType, Material)
VALUES ('End Mill 6mm', 'Cutting Tool', 'HSS'),
       ('Tap M10', 'Taps', 'Carbide'),
       ('Ring Gauge', 'Gauges', 'Steel');

INSERT INTO Customer (CustomerName, ContactNumber, Email, Address)
VALUES ('ABC Industries', '9876543210', 'abc@example.com', 'Pune, India'),
       ('XYZ Tools', '9123456780', 'xyz@example.com', 'Mumbai, India');

-- Example Query: Show Orders with Details
SELECT o.OrderID, p.ProductName, c.CustomerName, o.Quantity, o.OrderDate
FROM Orders o
JOIN Product p ON o.ProductID = p.ProductID
JOIN Customer c ON o.CustomerID = c.CustomerID;
