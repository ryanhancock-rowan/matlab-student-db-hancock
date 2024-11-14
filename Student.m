% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Main Script
% Date: 11/13/24

classdef Student
    % Defines properties of the classes    
    properties
        ID
        Name
        Age
        GPA
        Major
    end
    
    methods
    % Makes variables into objects
        function obj = Student(id, name, age, gpa, major)
            obj.ID = id;
            obj.Name = name;
            obj.Age = age;
            obj.GPA = gpa;
            obj.Major = major;
        end
        % Displays the objects
        function displayInfo(obj)
            fprintf('ID: %s\nName: %s\nAge: %d\nGPA: %.2f\nMajor: %s\n', ...
                obj.ID, obj.Name, obj.Age, obj.GPA, obj.Major);
        end
        % Allows GPA to be updated
        function obj = updateGPA(obj, newGPA)
            obj.GPA = newGPA;
        end
    end
end
