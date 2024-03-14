# Library-Books-Management-System

## Project Overview:
MyBooks is a Python-based GUI library management system designed to manage book records using a MySQL database. This application provides a user-friendly interface for viewing records such as books, authors, genres, book binding formats and languages. In addition, users are able to post, update or delete rating values to any book through the application.

## Features
- View Records: display all records from Book, Author, Genre, Format, Nationality, Language table
- View Records by User Input: display records from Book and Author tables based on user's inputs
- View User's Book Ratings: display all book ratings posted by the current user
- Add New Book Ratings: Insert new book rating records into user_rate_book table
- Delete Existed Book Ratings: Delete existed book rating records from user_rate_book table
- Update Existed Book Ratings: Update existed book rating records in user_rate_book table
- Display Error Messages: Display error message to user when SQL server connection is rejected or user input is not valid
- Exit Application: Close the application window

## Technical Specifications
- The primary language is Python3.
- MySQL database will be used for efficient data query. 
- For the Graphical interface, the tkinter library and the tkinter.messagebox will be used to display message boxes to the user.
- The pymysql library will be used to connect the Python application to the MySQL database for CRUD (Create, Read, Update, Delete) operations.
   - $ pip install pymysql
- Tkinter library will be used for the GUI:
    - $ pip install tk

## Setting up the MySQL Database
To set up the database, import the MySQL dump file "books_dump.sql" into your MySQL server
 
## Running the Application
1. Set up and connect to MySQL Database with instruction listed above
2. Navigate to the project directory and execute the program using command line argument: $ python booksApp.py

## Usage
Upon launching, the application window will prompt out and ask you to input the username and password to connect to your local host MySQL server. After this, the program will begin and you will be instructed to either view the records or add, delete or update the book ratings.
