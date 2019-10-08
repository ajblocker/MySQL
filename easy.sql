/*Easy:
-Create a database with your top five favorite books with Title, Publish Date, and Author First/Last Name
-Create a query to add in two new books
-Remove the oldest book
-Provide an additional query giving the sum of all books
*/

/* deletes database if it already exists*/
DROP DATABASE IF EXISTS books;
CREATE DATABASE books;
USE books;
CREATE TABLE books
(
    books_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(125),
    publish_date INT,
    author_name VARCHAR(125),
    PRIMARY KEY (books_id)
);

/* query that inserts data into table*/
INSERT INTO books(`title`, `publish_date`, `author_name`)
VALUES
('Diary of A Wimpy Kid', 2004, 'Jeff Kinney'),
('The Hunger Games', 2008, 'Suzanne Collins'),
('Twilight', 2005, 'Stephanie Meyer'),
('Green Eggs and Ham', 1960, 'Dr.Suess'),
('One fish Two fish Red Fish Blue Fish', 1960, 'Dr.Suess');

INSERT INTO books(`title`, `publish_date`, `author_name`)
VALUES
('Everything, Everything', 2015, 'Nicola Yoon'),
('The Hate U Give', 2017, 'Angie Thomas');

/*deleting publish date from books*/
DELETE FROM books WHERE `publish_date`< 1965;

/*adding price to books table and updating price by publish_date*/
ALTER TABLE books
ADD price DECIMAL(10,2);
 UPDATE books 
 SET `price`=3.40 
 WHERE `publish_date`=2004;

 UPDATE books 
 SET `price`=8.14 
 WHERE `publish_date`=2008;

 UPDATE books 
 SET `price`=9.39 
 WHERE `publish_date`=2005;

 UPDATE books 
 SET `price`=7.69 
 WHERE `publish_date`=2015;

 UPDATE books 
 SET `price`=7.71 
 WHERE `publish_date`=2017;

/*adds price of all books*/
 SELECT 
 SUM(price) 
 AS 'total price' 
 FROM books;
