CREATE TABLE Cohort (
    cohort_id	   INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    Name   TEXT NOT NULL UNIQUE
);

CREATE TABLE Student (
	Id		INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	slack_handle TEXT NOT NULL UNIQUE,
	cohort_id INTEGER,
	FOREIGN KEY (cohort_id)
		REFERENCES Cohort (cohort_id));

CREATE TABLE Instructor (
	instructor_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	slack_handle TEXT NOT NULL UNIQUE,
	specialties TEXT NOT NULL,
	cohort_id INTEGER,
	FOREIGN KEY (cohort_id)
		REFERENCES Cohort (cohort_id)
);

CREATE TABLE Exercise (
	exercise_id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL UNIQUE,
	language TEXT NOT NULL
);

CREATE TABLE Student_Exercises(
	id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	Student_Id INTEGER,
	Exercise_Id INTEGER,
	FOREIGN KEY (Student_Id)
		REFERENCES Student(Id),
	FOREIGN KEY (Exercise_Id)
		REFERENCES Exercise(Exercise_Id)
);





