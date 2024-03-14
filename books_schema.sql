CREATE DATABASE IF NOT EXISTS books;
USE books;

-- ************************
-- create all entity tables
-- ************************

-- publisher table
DROP TABLE IF EXISTS publisher;
CREATE TABLE publisher(
publisher_name VARCHAR(100) PRIMARY KEY
);

-- format table
DROP TABLE IF EXISTS format;
CREATE TABLE format(
format_name VARCHAR(50) PRIMARY KEY,
format_description TEXT
);

-- language table
DROP TABLE IF EXISTS language;
CREATE TABLE language(
language_name VARCHAR(30) PRIMARY KEY,
language_description TEXT
);

-- genre table
DROP TABLE IF EXISTS genre;
CREATE TABLE genre(
genre_type VARCHAR(30) PRIMARY KEY,
genre_description TEXT
);

-- nationality table
DROP TABLE IF EXISTS nationality;
CREATE TABLE nationality(
nationality_name VARCHAR(30) PRIMARY KEY
);

-- author table
DROP TABLE IF EXISTS author;
CREATE TABLE author(
author_id INT PRIMARY KEY,
author_name VARCHAR(50) NOT NULL,
born VARCHAR(10),
died VARCHAR(10),
author_description TEXT
);


-- Book table
DROP TABLE IF EXISTS book;
CREATE TABLE book(
book_id INT PRIMARY KEY,
ISBN_10 VARCHAR(10) NOT NULL,
title VARCHAR(500) NOT NULL,
edition VARCHAR(40),
page_count INT NOT NULL DEFAULT 100,
publisher VARCHAR(100) NOT NULL,
language VARCHAR(30) NOT NULL,
format VARCHAR(50) NOT NULL,
genre VARCHAR(30) NOT NULL,
first_published DATE NOT NULL,
avg_rating DECIMAL(2,1) NOT NULL DEFAULT 0,
FOREIGN KEY (publisher) REFERENCES publisher(publisher_name) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (language) REFERENCES language(language_name) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (format) REFERENCES format(format_name) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (genre) REFERENCES genre(genre_type) ON UPDATE CASCADE ON DELETE RESTRICT
);


-- user table
DROP TABLE IF EXISTS user;
CREATE TABLE user(
user_id INT PRIMARY KEY,
user_name VARCHAR(40)
);

-- ********************************************
-- create all relationship tables
-- ********************************************

-- publisher published a book at one published date
DROP TABLE IF EXISTS publish;
CREATE TABLE publish(
book_id INT,
publisher VARCHAR(100),
published_date DATE NOT NULL,
PRIMARY KEY (book_id, publisher),
FOREIGN KEY (publisher) REFERENCES publisher(publisher_name) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (book_id) REFERENCES book(book_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- one author has up to 2 nationalities
DROP TABLE IF EXISTS author_nationality;
CREATE TABLE author_nationality(
author_id INT,
nationality VARCHAR(30),
PRIMARY KEY(author_id, nationality),
FOREIGN KEY (author_id) REFERENCES author(author_id) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (nationality) REFERENCES nationality(nationality_name) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- author writes books
DROP TABLE IF EXISTS author_write_book;
CREATE TABLE author_write_book(
book_id INT,
author_id INT,
FOREIGN KEY (book_id) REFERENCES book(book_id) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (author_id) REFERENCES author(author_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- user rates books
DROP TABLE IF EXISTS user_rate_book;
CREATE TABLE user_rate_book(
user_id INT,
book_id INT,
rating_value INT,
FOREIGN KEY (book_id) REFERENCES book(book_id) ON UPDATE CASCADE ON DELETE RESTRICT,
FOREIGN KEY (user_id) REFERENCES user(user_id) ON UPDATE CASCADE ON DELETE RESTRICT
);

-- ------------------------------------------------------------------------------------------------
-- Belows are all need procedures and triggers

-- *********************************
-- Triggers and procedures if user tries adding (inserting) a new rating value of a book
-- *********************************

--  Procedure to update the average rating of this book on book table after a user submits a rating
DELIMITER $$
CREATE PROCEDURE update_avg_rating(book_id_para INT)
BEGIN
DECLARE new_avg_rate DECIMAL(2,1) DEFAULT 0.0;

-- count the new average 
SELECT ROUND(AVG(urb.rating_value), 1) INTO new_avg_rate FROM user_rate_book urb 
WHERE urb.book_id = book_id_para GROUP BY book_id; 
-- Update book table
UPDATE book SET avg_rating = new_avg_rate WHERE book_id = book_id_para;

END $$
DELIMITER ;

-- ----------------------------------------------
DROP TRIGGER IF EXISTS books.bookrating_update_after_insert_rate;
-- Trigger to update the average rating of a book after user inserts a new rating to user_rate_book table
DELIMITER $$
CREATE TRIGGER bookrating_update_after_insert_rate AFTER INSERT ON user_rate_book
FOR EACH ROW
BEGIN
CALL update_avg_rating(new.book_id);
END$$
DELIMITER ;

-- ------------------------------------------
-- Procedures to insert new rating to user_rate_book table
DELIMITER $$
CREATE PROCEDURE add_new_rating(user_id_para INT, book_id_para INT, rate_para INT)
BEGIN
-- check when user tries to insert a new rating value to the user_rate_book table:
-- if this rating value is valid (between 0 and 5)
-- if the provided book id is existed in the database
-- if the user has already rated this book (we only allow one user rates the same book once)

IF user_id_para NOT IN (SELECT user_id FROM user) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided user id is not registered';
END IF;
IF rate_para > 5 OR rate_para < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided rating value should be an integer between 0 and 5';
END IF;
IF book_id_para NOT IN (SELECT book_id FROM book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided book id is not valid';
END IF;
IF (user_id_para, book_id_para) IN (SELECT user_id, book_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User already rated this book';
END IF;
INSERT INTO user_rate_book VALUE(user_id_para, book_id_para, rate_para);
END $$
DELIMITER ;


-- *****************************************************
-- Triggers and procedures if a user tries to update an existing rating value 
-- ******************************************************

--  Procedure to update the existing rating value of a book
DELIMITER $$
CREATE PROCEDURE update_exist_rating(user_id_para INT, book_id_para INT, new_rate INT)
BEGIN
-- check valid input 
IF user_id_para NOT IN (SELECT user_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no rating record for this user';
END IF;
IF (user_id_para, book_id_para) NOT IN (SELECT user_id, book_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no matched rating record';
END IF;
IF new_rate > 5 OR new_rate < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided rating value should be an integer between 0 and 5';
END IF;

-- update the user_rate_book table using the new rate value
UPDATE user_rate_book SET rating_value = new_rate WHERE user_id = user_id_para AND book_id = book_id_para;

END $$
DELIMITER ;

-- -------------------------------------------
DROP TRIGGER IF EXISTS books.bookrating_update_after_update_rate;
-- Trigger to update the average rating of a book after user updates an existing rating value of this book
DELIMITER $$
CREATE TRIGGER bookrating_update_after_update_rate AFTER UPDATE ON user_rate_book
FOR EACH ROW
BEGIN
CALL update_avg_rating(new.book_id);
END$$
DELIMITER ;


-- **********************************************
-- Trigger and proceudre when a user tries to delete an existing rating of a book
-- **********************************************

--  Procedure to delete the existing rating value of a book
DELIMITER $$
CREATE PROCEDURE delete_exist_rating(user_id_para INT, book_id_para INT)
BEGIN
-- check valid input 
IF user_id_para NOT IN (SELECT user_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no rating record for this user';
END IF;
IF (user_id_para, book_id_para) NOT IN (SELECT user_id, book_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no matched rating record';
END IF;

-- delete the rating value of the provided user and book
DELETE FROM user_rate_book WHERE user_id = user_id_para AND book_id = book_id_para;

END $$
DELIMITER ;

-- -----------------------------------------------
-- Trigger to update the average rating of a book after user deletes an existing rating value of a book
DROP TRIGGER IF EXISTS books.bookrating_update_after_delete_rate;

DELIMITER $$
CREATE TRIGGER bookrating_update_after_delete_rate AFTER DELETE ON user_rate_book
FOR EACH ROW
BEGIN
CALL update_avg_rating(old.book_id);
END$$
DELIMITER ;

-- ***********************************
-- procedures to display all ratings from one specific user
-- ***********************************
DELIMITER $$
CREATE PROCEDURE read_user_rating(user_id_para INT)
BEGIN
SELECT b.book_id, b.ISBN_10, b.title AS book_title,   
b.publisher, b.language, b.genre, b.avg_rating, ur.rating_value AS your_rating
FROM user_rate_book ur JOIN book b 
ON  ur.book_id = b.book_id
WHERE ur.user_id = user_id_para
ORDER BY b.book_id;
END $$
DELIMITER ;


-- *************************************
-- procedures to READ book table
-- **************************************

-- Procedure to diplay all books information
DELIMITER $$
CREATE PROCEDURE read_book_all()
BEGIN
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher;
END$$

DELIMITER ;


-- ----------------------------------------
-- Display data of a specific book based on the provided book id

DELIMITER $$
CREATE PROCEDURE read_book_one(book_id_para INT)
BEGIN

-- check valid input
IF book_id_para NOT IN (SELECT book_id FROM book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided book id is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE book_id_para = b.book_id;

END $$
DELIMITER ;


-- -----------------------------------------
-- Procedure to show all books written by a specific author

DELIMITER $$
CREATE PROCEDURE read_author_book(author_name_para VARCHAR(50))
BEGIN

-- check valid input
IF author_name_para NOT IN (SELECT author_name FROM author) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided author name is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE author_name_para = a.author_name ORDER BY b.book_id;

END $$
DELIMITER ;


-- -------------------------------------
-- procedures to display all books classified to one specific genre type

DELIMITER $$
CREATE PROCEDURE read_genre_book(genre_para VARCHAR(30))
BEGIN
-- check valid input
IF genre_para NOT IN (SELECT genre_type FROM genre) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided genre is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE genre_para = b.genre ORDER BY b.book_id;
END$$

DELIMITER ;


-- -------------------------------
-- Procedures to display all books of one specific format
DELIMITER $$
CREATE PROCEDURE read_format_book(format_para VARCHAR(50))
BEGIN
-- check valid input
IF format_para NOT IN (SELECT format_name FROM format) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided format is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE format_para = b.format ORDER BY b.book_id;
END$$

DELIMITER ;

-- -----------------------------
-- Procedure to display all books of one specific language
DELIMITER $$
CREATE PROCEDURE read_language_book(lan_para VARCHAR(30))
BEGIN
-- check valid input
IF lan_para NOT IN (SELECT language_name FROM language) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided language is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE lan_para = b.language ORDER BY b.book_id;
END$$

DELIMITER ;


-- ----------------------------------
-- procedure to check all books ratings (for validating user rating update)
DELIMITER $$
CREATE PROCEDURE read_books_rating()
BEGIN
SELECT b.book_id, b.ISBN_10, b.title AS book_title,   
b.publisher, b.language, b.genre, b.format, b.avg_rating
FROM book b; 
END $$
DELIMITER ;

CALL read_books_rating;


-- ***************************************
-- Proccedures related to Author
-- ***************************************

-- Procedure to read all data in author table
DELIMITER $$
CREATE PROCEDURE read_author_all()
BEGIN
SELECT a.author_id, a.author_name, an.nationality, a.born, a.died, a.author_description 
FROM author a JOIN author_nationality an ON a.author_id = an.author_id;
END$$

DELIMITER ;

CALL read_author_all;

-- --------------------------------------
-- Procedure to read author based on a given author_id
DELIMITER $$
CREATE PROCEDURE read_author_one(author_id_para INT)
BEGIN

-- check valid input
IF author_id_para NOT IN (SELECT author_id FROM author) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided author id is not valid';
END IF;
SELECT a.author_id, a.author_name, an.nationality, a.born, a.died, a.author_description 
FROM author a JOIN author_nationality an ON a.author_id = an.author_id
WHERE author_id_para = a.author_id;
END $$
DELIMITER ;


-- -------------------------------------
-- Procedures to display all authors who have one specific nationality
DELIMITER $$
CREATE PROCEDURE read_nat_author(nat_para VARCHAR(30))
BEGIN
-- check valid input
IF nat_para NOT IN (SELECT nationality_name FROM nationality) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided nationality is not valid';
END IF;
SELECT a.author_id, a.author_name, an.nationality, a.born, a.died, a.author_description 
FROM author a JOIN author_nationality an ON a.author_id = an.author_id
WHERE nat_para = an.nationality;
END$$

DELIMITER ;


-- ****************************************
-- Procedures related to Publisher
-- ****************************************

-- Procedure to display all data in publisher table
DELIMITER $$
CREATE PROCEDURE read_publisher_all()
BEGIN
SELECT * FROM publisher;
END $$
DELIMITER ;

CALL read_publisher_all;

-- ---------------------------------------------
-- Procedure to display all books published by one specific publisher

DELIMITER $$
CREATE PROCEDURE read_publisher_one(pub_para VARCHAR(100))
BEGIN
-- check valid input
IF pub_para NOT IN (SELECT * FROM publisher) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided publisher is not valid';
END IF;

SELECT b.publisher, b.book_id, b.ISBN_10, b.title AS book_title, GROUP_CONCAT(a.author_name) AS author, b.edition, b.page_count, 
 b.language, b.format, b.genre, pd.published_date, b.avg_rating 
FROM publish pd JOIN book b JOIN author a JOIN author_write_book awb ON b.book_id = awb.book_id AND a.author_id = awb.author_id
AND pd.publisher = b.publisher AND pd.book_id = b.book_id
WHERE b.publisher = pub_para
GROUP BY b.book_id;
END$$

DELIMITER ;


-- **************************************
-- Procedures related to Genre table
-- ****************************************

-- Procedure to display all data in genre table
DELIMITER $$
CREATE PROCEDURE read_genre_all()
BEGIN
SELECT * FROM genre;
END $$
DELIMITER ;



-- *************************************
--  Procedures related to Language table
-- **************************************

-- Procedure to display all data in language table
DELIMITER $$
CREATE PROCEDURE read_language_all()
BEGIN
SELECT * FROM language;
END $$
DELIMITER ;

-- ************************************
-- Procedures related to format table
-- ***********************************
-- Procedure to display all data in format table
DELIMITER $$
CREATE PROCEDURE read_format_all()
BEGIN
SELECT * FROM format;
END $$
DELIMITER ;


-- ******************************************
-- Procedures related to nationality table
-- ***************************************
-- Procedure to display all data in nationality table
DELIMITER $$
CREATE PROCEDURE read_nationality_all()
BEGIN
SELECT * FROM nationality;
END $$
DELIMITER ;


-- ------------------------------------------
-- Procedures to find all authors who have given number of nationalities (some authors have more than 1 nationality)
DELIMITER $$
CREATE PROCEDURE read_nat_count(nat_count_para INT)
BEGIN
# check valid input
IF nat_count_para < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please provide a positive number';
END IF;
SELECT a.author_name, a. born, a.died, a.author_description FROM author a JOIN author_nationality an 
ON a.author_id = an.author_id
GROUP BY a.author_id HAVING COUNT(an.nationality) = nat_count_para ;
END$$

DELIMITER ;


-- *************************************
-- Procedures related to User table
-- *************************************
-- Procedure to check whether a provided user_id with a user_name is already in the database

DELIMITER $$
CREATE PROCEDURE check_user_login(user_id_para INT)
BEGIN
SELECT user_id FROM user WHERE user_id = user_id_para;
END$$
DELIMITER ;


-- -------------------------------------
-- Procedure to insert new user_id to user table
DELIMITER $$
CREATE PROCEDURE add_user(user_id_para INT)
BEGIN
DECLARE user_name_var VARCHAR(40) DEFAULT NULL;
INSERT INTO user VALUE(user_id_para, user_name_var);
END $$
DELIMITER ;





