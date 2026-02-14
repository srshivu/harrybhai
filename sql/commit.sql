-- Use your database (or create one)
CREATE DATABASE IF NOT EXISTS smart_agriculture;
USE smart_agriculture;

-- Create the farmer data table
CREATE TABLE farmers (
    Farmer_ID INT PRIMARY KEY AUTO_INCREMENT,
    Farmer_Name VARCHAR(100) NOT NULL,
    Crop_Type VARCHAR(50),
    Land_Area DECIMAL(6,2),        -- in acres
    Season ENUM('Kharif', 'Rabi', 'Zaid'),
    Yield_kg INT,
    Profit DECIMAL(10,2)           -- in Indian Rupees
);

-- Insert sample data
INSERT INTO farmers (Farmer_Name, Crop_Type, Land_Area, Season, Yield_kg, Profit)
VALUES
('Ramesh', 'Wheat', 5.0, 'Rabi', 3200, 40000.00),
('Suresh', 'Rice', 3.0, 'Kharif', 2800, 35000.00),
('Mahesh', 'Cotton', 6.0, 'Kharif', 4100, 50000.00),
('Kiran', 'Sugarcane', 8.5, 'Zaid', 7200, 90000.00),
('Anita', 'Maize', 4.2, 'Rabi', 3100, 42000.00);

-- View the table
select * from farmers;
start transaction; -- it will fully done or fail which is not well do the partially
UPDATE farmers SET Profit = Profit + 1 WHERE Farmer_ID = 1;
UPDATE farmers SET Profit = Profit -1 where Farmer_ID = 2;
rollback; -- it a function it will do the again it will do the work 
SELECT * FROM farmers;






