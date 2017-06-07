create database my_student;

CREATE TABLE Student (
    ID int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    Age int,
    Grade int,
    PRIMARY KEY (ID)
);

CREATE TABLE Lesson (
    ID int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Score (
    Score int NOT NULL,
    StudentID int,
    LessonID int,
    FOREIGN KEY (StudentID) REFERENCES Student(ID)
    FOREIGN KEY (LessonID) REFERENCES Lesson(ID)
);
