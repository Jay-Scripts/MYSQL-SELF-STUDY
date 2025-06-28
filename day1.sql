CREATE DATABASE student_portal;

CREATE TABLE students(
student_id int AUTO_INCREMENT not null,
 full_name varchar(50) not null,
    birthdate date not null,
    gender ENUM('M', 'F') DEFAULT ('F') not null,
    PRIMARY KEY (student_id)
);

CREATE TABLE courses (
course_id int AUTO_INCREMENT not null,
    course_name varchar(50) not null,
    PRIMARY key (course_id)
);

CREATE TABLE enrollments (
enroll_id int AUTO_INCREMENT not null,
    student_id int not null,
    course_id int not null,
    enrolled_on date null,
    PRIMARY key (enroll_id),
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN key (course_id) REFERENCES  courses(course_id) 
);

--act 3 
--🔹 Part A – Basic SELECT (5 points each)
--1. Display all book titles and their authors.
SELECT title, AUTHOR from books;
--2. Display all VIP members only.
SELECT * FROM members WHERE membership_type ='VIP';
--3. Show only the 2 most recently borrowed books (BORROWED_DATE DESC)
--ddnt know that
--4. Show full names of members with the titles of books they borrowed.
SELECT MEMBER_ID FROM borrowed_books JOIN ON borrowed_books members.FULL_NAME = MEMBER_ID;
--5. Display all borrowed records including member name, book title, and borrowed date.

🔹 Part C – Bonus Challenge (optional, +5)
SELECT
MEMBERS.FULL_NAME,
BOOKS.TITLE FROM borrowed_books
JOIN members ON borrowed_books.MEMBER_ID = members.MEMBER_ID;