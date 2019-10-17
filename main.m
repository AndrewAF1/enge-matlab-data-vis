data = readtable('grade_distribution.csv');


enge = data(data.department == "ENGE", :);
hist = data(data.department == "HIST", :);

enge_gpa = mean(table2array(enge(:, "qca")));
hist_gpa = mean(table2array(hist(:, "qca")));

barh([enge_gpa, hist_gpa]);
set(gca, 'yticklabel', ["Engineering"; "History"])