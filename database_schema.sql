-- Create Database
CREATE DATABASE pakistan_bus_db;
USE pakistan_bus_db;

-- 1. Table for Bus Companies (Admins)
CREATE TABLE operators (
    operator_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Table for Cities
CREATE TABLE cities (
    city_id INT AUTO_INCREMENT PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL UNIQUE
);

-- 3. Table for Services (Routes + Schedule + Price)
CREATE TABLE services (
    service_id INT AUTO_INCREMENT PRIMARY KEY,
    operator_id INT,
    from_city_id INT,
    to_city_id INT,
    departure_time TIME,
    arrival_time TIME,
    bus_type VARCHAR(50), -- e.g., Executive, Standard
    fare_price DECIMAL(10, 2) NOT NULL, -- The Price
    total_seats INT DEFAULT 40,
    FOREIGN KEY (operator_id) REFERENCES operators(operator_id),
    FOREIGN KEY (from_city_id) REFERENCES cities(city_id),
    FOREIGN KEY (to_city_id) REFERENCES cities(city_id)
);

-- 4. Table for Bookings
CREATE TABLE bookings (
    booking_id INT AUTO_INCREMENT PRIMARY KEY,
    service_id INT,
    customer_name VARCHAR(100),
    seats_booked VARCHAR(255), -- Stores "1A, 1B"
    total_amount DECIMAL(10, 2),
    booking_date DATE,
    FOREIGN KEY (service_id) REFERENCES services(service_id)
);

-- Insert Dummy Cities (expanded list)
INSERT INTO cities (city_name) VALUES
('Abbottabad'),
('Bahawalpur'),
('Dadu'),
('Faisalabad'),
('Ghotki'),
('Gujranwala'),
('Hyderabad'),
('Islamabad'),
('Jamshoro'),
('Karachi'),
('Kharipur'),
('Lahore'),
('Larkana'),
('Mardan'),
('Mirpurkhas'),
('Multan'),
('Peshawar'),
('Quetta'),
('Rawalpindi'),
('Sheikhupura'),
('Sukkur'),
('Thatta'),
('Mithi');