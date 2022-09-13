prm=107;
dtS=[24.3 25.4 28.4 25.9 23.2 25.4 23.6]';
dtA=[9.90 19.9 16.1 17.5]'; %dtA=[9.9.0  19.9  16.1  17.5]; ?????

mu_s = mean(dtS)
sigma_s = std(dtS) 

y = normpdf(dtS, mu_s, sigma_s)

%scatter(x, y)

pd = fitdist(dtS,'Normal');

x_values = 0:0.1:40;
y_s = pdf(pd, x_values);

plot(x_values, y_s);
title('Steel')

pd = fitdist(dtA,'Normal');

mu_a = mean(dtA)
sigma_a = std(dtA)

x_values = 0:0.1:40;
y_a = pdf(pd, x_values);

hold on
plot(x_values, y_a);
title('Steel och Alloy normalfördelningar')

lillietest(y_s, 'Alpha', 0.01)
lillietest(y_a, 'Alpha', 0.01)

legend('Steel', 'Alloy')

%figure
%normplot([y_s y_a]);

%[h,p,ci,stats] = ttest(y_s, y_a, 'Alpha', 0.01, 'Tail', 'right')
%[h,p,ci,stats] = ttest(y_a, y_s, 'Alpha', 0.01, 'Tail', 'left')

t = abs((mu_a - mu_s)/sqrt((sigma_a^2)/length(dtA) + (sigma_s^2)/length(dtS)))

length(dtS) %-2 = 5 DOG
length(dtA) %-2 = 2 DOF
length(dtS)+length(dtA) %-2 = 9 DOF
var(dtA)^2
var(dtS)^2
(var(dtA)^2)/(var(dtS)^2)

gammas = ((var(dtA)^2/length(dtA)+var(dtS)^2/length(dtS))^2)/(((var(dtA)^2/length(dtA))^2/(length(dtA)-1) + (var(dtS)^2/length(dtS))^2/(length(dtS)-1)))

a = mean(dtA)-mean(dtS)
b = 1.6377*sqrt((var(dtA)^2)/length(dtA)+(var(dtS)^2)/length(dtS))

L1 = a - b
L2 = a + b

%https://www.itl.nist.gov/div898/handbook/eda/section3/eda3672.htm#:~:text=The%20most%20commonly%20used%20significance,we%20reject%20the%20null%20hypothesis.