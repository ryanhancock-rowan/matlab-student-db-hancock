% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Main Script
% Date: 11/13/24

% Creates plot of the GPA distribution
function plotGPADistribution(students)
    gpas = [students.GPA];
    histogram(gpas, 'FaceColor', 'b');
    title('GPA Distribution');
    xlabel('GPA');
    ylabel('Number of Students');
end