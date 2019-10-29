data = readtable('grade_distribution.csv');

sem1 = {
        "CHEM 1035",  data(data.department == "CHEM" & data.course_number_1 == 1035, :);
        "CHEM 1045",  data(data.department == "CHEM" & data.course_number_1 == 1045, :);
        "ENGL 1105",  data(data.department == "ENGL" & data.course_number_1 == 1105, :);
        "MATH 1225",  data(data.department == "MATH" & data.course_number_1 == 1225, :);
        "ENGE 1215",  data(data.department == "ENGE" & data.course_number_1 == 1215, :);
}

sem2 = {
        "ENGL 1106",  data(data.department == "ENGL" & data.course_number_1 == 1106, :);
        "MATH 1226",  data(data.department == "MATH" & data.course_number_1 == 1226, :);
        "PHYS 2305",  data(data.department == "PHYS" & data.course_number_1 == 2305, :);
        "ENGE 1216",  data(data.department == "ENGE" & data.course_number_1 == 1216, :);
        "CS 1114",    data(data.department == "CS"   & data.course_number_1 == 1114, :);
}  

sem3 = {
        "MATH 2204",  data(data.department == "MATH" & data.course_number_1 == 2204, :);
        "MATH 2534",  data(data.department == "MATH" & data.course_number_1 == 2534, :);
        "PHYS 2306",  data(data.department == "PHYS" & data.course_number_1 == 2306, :);
        "CS 2104",    data(data.department == "CS"   & data.course_number_1 == 2104, :);
        "CS 2114",    data(data.department == "CS"   & data.course_number_1 == 2114, :);
}

sem4 = {
        "COMM 2004",  data(data.department == "COMM" & data.course_number_1 == 2004, :);
        "MATH 2114",  data(data.department == "MATH" & data.course_number_1 == 2114, :);
        "CS 2505",    data(data.department == "CS"   & data.course_number_1 == 2505, :);
}


for i = 1:5
    temp = table2array(sem1(i, 2));
    temp = temp.qca;
    names(i) = sem1(i, 1);
    sem1_avgs(i) = mean(temp);
end
disp(sem1_avgs)

for i = 1:5
    temp = table2array(sem2(i, 2));
    temp = temp.qca;
    names(i) = sem2(i, 1);
    sem2_avgs(i) = mean(temp);
end
disp(sem2_avgs)

for i = 1:5
    temp = table2array(sem3(i, 2));
    temp = temp.qca;
    names(i) = sem3(i, 1);
    sem3_avgs(i) = mean(temp);
end
disp(sem3_avgs)

for i = 1:3
    temp = table2array(sem4(i, 2));
    temp = temp.qca;
    names(i) = sem4(i, 1);
    sem4_avgs(i) = mean(temp);
end
disp(sem4_avgs)


total_avgs = mean([sem1_avgs, sem2_avgs, sem3_avgs, sem4_avgs])