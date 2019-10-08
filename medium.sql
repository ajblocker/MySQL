/*-Create a database with your top 10 movies. Include title, release date, and rating
-Create a query that pulls all movies, in order of release date, where title includes the letter “s”.*/

/* deletes database if it already exists*/
DROP DATABASE IF EXISTS movies;
CREATE DATABASE movies;
USE movies;
CREATE TABLE movies
(
    movies_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(20),
    release_date INT,
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

SELECT * FROM movies;

/*select movies where there is a S located in the title and order in asc*/
SELECT * FROM movies 
WHERE `title` 
LIKE "%S%" 
ORDER BY `release_date` ASC;


