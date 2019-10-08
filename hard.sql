/*Make a copy of your Medium Challenge
-Write out the queries that would add the director’s First Name and Last Name into two separate columns. 
-Create a query that puts the names together.
-Create a query to put the list in alphabetical order by last name from A-Z
-After you order the list, remove the Movies where the Last Name ends with ”R-Z”
-Write a query where the first three appear*/

/* deletes database if it already exists*/
DROP DATABASE IF EXISTS movies;
CREATE DATABASE movies;
USE movies;
CREATE TABLE movies
(
    movies_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(20),
    releaseDate INT,
    rating VARCHAR(20),
    PRIMARY KEY (movies_id)
);

/* query that inserts data into table*/
INSERT INTO movies(`title`, `release_date`, `rating`)
VALUES
('Salt', 2010, 'PG-13'),
('The Equalizer', 2014, 'R'),
('Mission Impossible', 1996, 'PG-13'),
('Jack Reacher', 2012, 'PG-13'),
('Red', 2010, 'PG-13'),
('Safe', 2012, 'R'),
('The Transporter', 2002, 'PG-13'),
('Split', 2016, 'PG-13'),
('The Avengers', 2012, 'PG-13'),
('Black Panther', 2018, 'PG-13');

/*select movies where there is a S located in the title and order in asc*/
SELECT * FROM movies 
SELECT * FROM movies 
WHERE `title` 
LIKE "%S%" 
ORDER BY `release_date` ASC;

/*adds directors name to movies table*/
ALTER TABLE movies
ADD directors_first_name VARCHAR(125);
ALTER TABLE movies
ADD directors_last_name VARCHAR(125);

/*updates movies table names by title*/
UPDATE movies 
SET 
`directors_first_name`='Phillip',
`directors_last_name`= 'Noyce'
WHERE `title`='Salt';

UPDATE movies 
SET 
`directors_first_name`='Antoine',
`directors_last_name`= 'Fuqua'
WHERE `title`='The Equalizer';

UPDATE movies 
SET 
`directors_first_name`='Brian',
`directors_last_name`= 'Palma'
WHERE `title`='Mission Impossible';

UPDATE movies 
SET 
`directors_first_name`='Christopher',
`directors_last_name`= 'McQuarrie'
WHERE `title`='Jack Reacher';

UPDATE movies 
SET 
`directors_first_name`='Robert',
`directors_last_name`= 'Schwentke'
WHERE `title`='Red';

UPDATE movies 
SET 
`directors_first_name`='Harlan',
`directors_last_name`= 'Coben'
WHERE `title`='Safe';

UPDATE movies 
SET 
`directors_first_name`='Louis',
`directors_last_name`= 'Leterrier'
WHERE `title`='The Transporter';

UPDATE movies 
SET 
`directors_first_name`='M.Night',
`directors_last_name`= 'Shyamalan'
WHERE `title`='Split';

UPDATE movies 
SET 
`directors_first_name`='Joss',
`directors_last_name`= 'Whedon'
WHERE `title`='The Avengers';

UPDATE movies 
SET 
`directors_first_name`='Ryan',
`directors_last_name`= 'Coogler'
WHERE `title`='Black Panther';

SELECT * 
FROM movies;

/*puts together autors first and last name*/
SELECT 
CONCAT(directors_first_name, ' ', directors_last_name) 
AS 'Full Name' 
FROM movies;

SELECT `directors_last_name` 
FROM movies  
ORDER BY `directors_last_name` ASC;

SELECT * 
FROM movies 
WHERE `directors_last_name` >= 'R%';

/*only first 3 directors last name appear*/
SELECT `directors_last_name`
FROM movies
ORDER BY `directors_last_name`
LIMIT 3;













