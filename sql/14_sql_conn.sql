create database ayy;
CREATE TABLE farmers (
    farmer_id INT PRIMARY KEY AUTO_INCREMENT,
    farmer_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL,
    crop_type VARCHAR(50) NOT NULL,
    land_area_acres DECIMAL(6,2),
    annual_income DECIMAL(10,2),
    contact_number VARCHAR(15),
    date_joined DATE DEFAULT (NOW())
);
INSERT INTO farmers (farmer_name, location, crop_type, land_area_acres, annual_income, contact_number, date_joined)
VALUES
('Ravi Kumar', 'Punjab', 'Wheat', 15.50, 250000.00, '9876543210', '2023-02-10'),
('Suresh Patel', 'Gujarat', 'Cotton', 20.00, 300000.00, '9823456789', '2022-06-15'),
('Lakshmi Devi', 'Andhra Pradesh', 'Rice', 10.25, 200000.00, '9123456780', '2021-09-20'),
('Mahesh Yadav', 'Uttar Pradesh', 'Sugarcane', 18.00, 275000.00, '9988776655', '2020-11-05'),
('Rina Sharma', 'Haryana', 'Mustard', 12.50, 220000.00, '9898989898', '2023-03-18'),
('Ganesh Reddy', 'Telangana', 'Maize', 14.75, 240000.00, '9786543210', '2022-01-25'),
('Anita Singh', 'Madhya Pradesh', 'Soybean', 16.00, 260000.00, '9777777777', '2021-07-30');
select * from farmers;
create index locatio on farmers(location);
show * from locatio;