

CREATE DATABASE StudentManagementSystem;
USE StudentManagementSystem;
CREATE TABLE Student (
    StudentID INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(50) ,
    LastName VARCHAR(50),
    DateOfBirth DATE ,
    Gender ENUM('Male', 'Female', 'Other') ,
    Email VARCHAR(100) ,
    Phone VARCHAR(15),
    PRIMARY KEY (StudentID)
);
select *from student;
CREATE TABLE Course (
    CourseID INT NOT NULL AUTO_INCREMENT,
    CourseTitle VARCHAR(100) NOT NULL,
    Credits INT NOT NULL,
    PRIMARY KEY (CourseID)
);
CREATE TABLE Enrollment (
    EnrollmentID INT NOT NULL AUTO_INCREMENT,
    EnrollmentDate DATE NOT NULL,
    StudentID INT NOT NULL,
    CourseID INT NOT NULL,
    InstructorID INT NOT NULL,
    PRIMARY KEY (EnrollmentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
);
CREATE TABLE Score (
    ScoreID INT NOT NULL AUTO_INCREMENT,
    CourseID INT NOT NULL,
    StudentID INT NOT NULL,
    DateOfExam DATE NOT NULL,
    CreditObtained INT NOT NULL,
    PRIMARY KEY (ScoreID),
    FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
SHOW TABLES;


