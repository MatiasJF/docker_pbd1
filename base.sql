CREATE DATABASE IF NOT EXISTS pbd1;
USE pbd1;
CREATE TABLE IF NOT EXISTS casas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    longitude DECIMAL(9,6),
    latitude DECIMAL(8,6),
    housing_median_age DECIMAL(4,1),
    total_rooms DECIMAL(7,1),
    total_bedrooms DECIMAL(7,1),
    population DECIMAL(7,1),
    households DECIMAL(7,1),
    median_income DECIMAL(7,4),
    median_house_value DECIMAL(10,2),
    ocean_proximity VARCHAR(50)
);

LOAD DATA INFILE '/PBDI_data_1_housing.csv'
INTO TABLE casas
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

SELECT * FROM casas;
