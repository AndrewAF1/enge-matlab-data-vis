data = readtable('grade_distribution.csv');


eng_disiplines = {
                  "aoe",  data(data.department == "AOE", :);
                  "bse",  data(data.department == "BSE", :);
                  "che",  data(data.department == "CHE", :);
                  "cee",  data(data.department == "CEE", :);
                  "ece",  data(data.department == "ECE", :);
                  "cs",   data(data.department == "CS", :);
                  "cem",  data(data.department == "CEM", :);
                  "esm",  data(data.department == "ESM", :);
                  "ise",  data(data.department == "ISE", :);
                  "mse",  data(data.department == "MSE", :);
                  "me",   data(data.department == "ME", :);
                  "mine", data(data.department == "MINE", :);
                 };

             
for i = 1:12
    temp = table2array(eng_disiplines(i, 2));
    temp = temp.qca;
    names(i) = eng_disiplines(i, 1);
    avgs(i) = mean(temp);
end
             
bar(avgs);
set(gca, 'xticklabel', names)