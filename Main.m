% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Main Script
% Date: 11/13/24

clear;
clc;


db = StudentDatabase();

% Creating 6 students with vaiorus attributes
s1 = Student('1', 'Joey', 19, 3.1, 'CivE');
s2 = Student('2', 'Brianna', 21, 2.9, 'ChemE');
s3 = Student('3', 'Matt', 18, 3.3, 'MechE');
s4 = Student('4', 'Derek', 23, 3.9, 'EcE');
s5 = Student('5', 'Ryan', 20, 3.0, 'Computer Science');
s6 = Student('6', 'George', 17, 1.9, 'MechE');

% Add students to the database
db = db.addStudent(s1);
db = db.addStudent(s2);
db = db.addStudent(s3);
db = db.addStudent(s4);
db = db.addStudent(s5);
db = db.addStudent(s6);

% Save database to a file
db.saveToFile('studentDatabase.mat');

% Load database from a file
loadedDB = db.loadFromFile('studentDatabase.mat');

% Find student by ID
studentFound = loadedDB.findStudentByID('002');
if ~isempty(studentFound)
    studentFound.displayInfo();
end

% List students by major
csStudents = loadedDB.getStudentsByMajor('Computer Science');
for i = 1:length(csStudents)
    csStudents(i).displayInfo();
end

% Generate graphs
figure;
subplot(3, 1, 1);
plotGPADistribution(loadedDB.Students);

subplot(3, 1, 2);
plotAverageGPAByMajor(loadedDB.Students);

subplot(3, 1, 3);
plotAgeDistribution(loadedDB.Students);