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

INSERT INTO cars(make, model, year)
VALUES
('Honda', 'Accord', 2006),
('Nissian', 'Altima', 2007),
('Kia', 'Optima', 2003);

SELECT * FROM cars; 

/*adds price and color to cars table*/
ALTER TABLE cars
ADD price DECIMAL(10,2),
ADD color VARCHAR(10);

/*updates cars table for price and color by model of car*/
UPDATE cars 
SET `price`=50000, `color`='matte black' 
WHERE `model`='r8';

UPDATE cars 
SET `price`=40000, `color`='white' 
WHERE `model`='G Wagon';

UPDATE cars 
SET `price`=100000,`color`='red' 
WHERE `model`='F8 Tributo';

UPDATE cars 
SET `price`=40000, `color`='black' 
WHERE `model`='LFA';

UPDATE cars 
SET `price`=50000, `color`='blue' 
WHERE `model`='F1';

UPDATE cars 
SET `price`=25000, `color`='light grey' 
WHERE `model`='Accord';

UPDATE cars 
SET `price`=20000, `color`='purple' 
WHERE `model`='Altima';

UPDATE cars 
SET `price`=15000, `color`='pink' 
WHERE `model`='Optima';

SELECT CONCAT(`make`, ' ', `model`) 
AS 'Make and Model' 
FROM cars;

/*counts total and groups by model*/
SELECT DISTINCT `model`, 
COUNT(`model`) 
AS results 
FROM cars 
GROUP BY `model`;


