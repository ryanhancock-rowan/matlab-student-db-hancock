% Author Name: Ryan Hancock
% Email: hancoc44@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Midterm Project
% Task: Main Script
% Date: 11/13/24

% Creates plot of the  average GPA by major
function plotAverageGPAByMajor(students)
    majors = unique({students.Major});
    avgGPA = arrayfun(@(m) mean([students(strcmp({students.Major}, m)).GPA]), majors);
    bar(avgGPA);
    set(gca, 'XTickLabel', majors);
    title('Average GPA by Major');
    xlabel('Major');
    ylabel('Average GPA');
end