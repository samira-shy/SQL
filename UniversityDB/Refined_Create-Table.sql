
CREATE TABLE Building (
    BuildingID INT IDENTITY(1,1) PRIMARY KEY,
    Address TEXT,
    NumberOfRooms INT
);
CREATE TABLE Department (
    DepID INT IDENTITY(1,1) PRIMARY KEY,
    FacultyID INT FOREIGN KEY REFERENCES Faculty(FacultyID),
    DepartmentName VARCHAR(100)
);


----

CREATE TABLE Staff (
    StaffID INT IDENTITY(1,1) PRIMARY KEY,
    DepID INT FOREIGN KEY REFERENCES Department(DepID),
    StaffName VARCHAR(100)
);

CREATE TABLE Faculty (
    FacultyID INT IDENTITY(1,1) PRIMARY KEY,
    FacultyName VARCHAR(100),
    Description TEXT,
    BuildingID INT FOREIGN KEY REFERENCES Building(BuildingID)
);

CREATE TABLE Student (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    Gender VARCHAR(10),
    Name VARCHAR(100),
    Family VARCHAR(100),
    Address TEXT
);


CREATE TABLE Course (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    DepID INT FOREIGN KEY REFERENCES Department(DepID),
    CourseName VARCHAR(100)
);

CREATE TABLE Unit (
    UnitID INT IDENTITY(1,1) PRIMARY KEY,
    UnitName VARCHAR(100)
);

CREATE TABLE CourseUnit (
    CourseID INT FOREIGN KEY REFERENCES Course(CourseID),
    UnitID INT FOREIGN KEY REFERENCES Unit(UnitID),
    PRIMARY KEY (CourseID, UnitID)
);
