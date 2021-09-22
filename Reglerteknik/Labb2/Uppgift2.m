%%Uppgift A
s=tf('s'); % Görs bar en gång för att skapa laplacevariabeln s

%Kp = 0.1
Kp=0.1; % Sätt förstärkningen Kp = 0.4
Ki=0.036; % Sätt förstärkningen Ki = 0.0359478 (45grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F
Gry=feedback(G*F,1);

[Am,phim,wpi,wc]=margin(Gry)

%Kp = 0.2
Kp=0.2; % Sätt förstärkningen Kp = 0.1
Ki=0.082; % Sätt förstärkningen Ki = 0.082 (45grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F
Gry=feedback(G*F,1);

[Am,phim,wpi,wc]=margin(Gry)

%Kp = 0.4
Kp=0.4; % Sätt förstärkningen Kp = 0.4
Ki=0.141; % Sätt förstärkningen Ki = 0.141 (45grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F
Gry=feedback(G*F,1);

[Am,phim,wpi,wc]=margin(Gry)