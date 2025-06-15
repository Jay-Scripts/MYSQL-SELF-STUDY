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
