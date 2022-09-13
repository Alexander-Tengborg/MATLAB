% 1a

%x = (-log(1-u).^(1/bta))/alf; Denna??
%x = (-log(1-u)/alf).^(1/bta);

% 1b

datab = [15, 21, 25, 23, 21, 21, 25, 15, 15, 19, 22, 26, 25, 15, 27, 19, 20, 17];

std_error = @(conf, data, n) conf*std(data)/sqrt(n);
std_error_prob = @(conf, p, n) conf*sqrt(p*(1-p)/n)

conf99 = 2.576;
conf95 = 1.960;

estb = mean(datab);
errb = std_error(conf99, datab, length(datab)); % HUR ÄR DENNA FEL?

estb = round(estb, 1) %Glöm ej å ta bort sis    ta nollor
errb = round(errb, 1) %Glöm ej å ta bort sista nollor

t = tinv(0.99, length(datab)-2)

errb = t

x = conf99*errb/sqrt(length(datab))

% 1c

datac = [1, 4, 0, 4, 2, 2, 3, 1, 4, 3, 2, 3, 1, 1, 1, 1, 3, 4, 0, 3, 1, 2, 3, 1, 4, 1, 1, 2, 1, 1, 0, 2, 3, 2, 1, 2, 0, 4, 3, 2, 0, 2, 2, 3, 3, 2, 4, 1, 2, 1, 1, 1, 2, 2];

p = nnz(datac >= 2)/length(datac);

estc = mean(datac(datac >= 2)) %DETTA BORDE GE RIKTIGA ESTC

%estc = mean(datac)*p; GAMLA ESTC????????????
errc = std_error_prob(conf95, p, length(datac));
%errc = std_error(conf95, datac, length(datac)); % Denna borde vara fel,
%men ger närmre värde?

estc = round(estc, 3) %Glöm ej å ta bort sista nollor
errc = round(errc, 3) %Glöm ej å ta bort sista nollor

z=1.96
a=z*sqrt(p*(1-p)/length(datab))

L1=p-a
L2=p+a

CI_1 = mean([L1 L2])
CI_2 = (L2-L1)/2

errc = CI_2

% Normal approximation är tillåtet då np >= 10 och n(1-p) >= 10
% Då detta gäller i vårt fall så är normal approximation tillåtet här.
length(datac)*p >= 10
length(datac)*(1-p) >= 10