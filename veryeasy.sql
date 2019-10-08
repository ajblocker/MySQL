/*Very Easy:
-Create a database with your top three cars and include Make, model, year.
-Create a query to add in two more cars*/

/* deletes database if it already exists*/
DROP DATABASE IF EXISTS cars;
CREATE DATABASE cars;
USE cars;
CREATE TABLE cars
(
    cars_id INT NOT NULL AUTO_INCREMENT,
    make VARCHAR(20),
    model VARCHAR(20),
    year INT,
    PRIMARY KEY (cars_id)
);

/* query that inserts data into table*/
INSERT INTO cars(make, model, year) 
VALUES 
('Audi', 'r8', 2020),
('Mercedes', 'G Wagon', 2016),
('Ferrari', 'F8 Tributo', 2019);

INSERT INTO cars(make, model, year)
VALUES
('Lexus', 'LFA', 2012),
('Infiniti', 'F1', 2018);




