data = table2array(readtable('grade_distribution.csv'));
first_col = (:, "department");
enge = data(first_col == "ENGE", :);
gpa = data(:, "qca");
plot(table2array(enge));
