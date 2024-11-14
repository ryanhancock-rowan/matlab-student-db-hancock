% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Main Script
% Date: 11/13/24

% Creates age distribution histogram
function plotAgeDistribution(students)
    ages = [students.Age];
    histogram(ages, 'FaceColor', 'r');
    title('Age Distribution');
    xlabel('Age');
    ylabel('Number of Students');
end