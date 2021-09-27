%%Uppgift A
clc

s=tf('s'); % Görs bar en gång för att skapa laplacevariabeln s

%Kp = 0.1
Kp=0.1; % Sätt förstärkningen Kp = 0.1
Ki=0.0098; % Sätt förstärkningen Ki = 0.0098 (44.9964 grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F

disp('Kp=0.1:')

[Am,phim,wpi,wc]=margin(F*G)

%Kp = 0.2
Kp=0.2; % Sätt förstärkningen Kp = 0.2
Ki=0.0289; % Sätt förstärkningen Ki = 0.0289 (45.0010 grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F

disp('Kp=0.2:')

[Am,phim,wpi,wc]=margin(F*G)

%Kp = 0.4
Kp=0.4; % Sätt förstärkningen Kp = 0.4
Ki=0.0652; % Sätt förstärkningen Ki = 0.0652 (44.9927 grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F

disp('Kp=0.4:')

[Am,phim,wpi,wc]=margin(F*G)

%%Uppgift B
clc

s=tf('s'); % Görs bar en gång för att skapa laplacevariabeln s

%Kp = 0.1
Kp=0.1; % Sätt förstärkningen Kp = 0.1
Ki=0.0098; % Sätt förstärkningen Ki = 0.0098 (44.9964 grader)
G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F

Gry=feedback(G*F,1)
%sigma(Gry) % Plotta frekvensfunktion |Gry(jω)|
figure
%step(Gry) % Plotta stegsvar
[Am,phim,wpi,wc]=margin(F*G);
wc
wb=bandwidth(Gry)

%Kp = 0.2
Kp=0.2; % Sätt förstärkningen Kp = 0.2
Ki=0.0289; % Sätt förstärkningen Ki = 0.0289 (45.0010 grader)
G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F

Gry=feedback(G*F,1)
%sigma(Gry) % Plotta frekvensfunktion |Gry(jω)|
figure
%step(Gry) % Plotta stegsvar
[Am,phim,wpi,wc]=margin(F*G);
wc
wb=bandwidth(Gry)

%Kp = 0.4
Kp=0.4; % Sätt förstärkningen Kp = 0.4
Ki=0.0652; % Sätt förstärkningen Ki = 0.0652 (44.9927 grader)
G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F

Gry=feedback(G*F,1)
sigma(Gry) % Plotta frekvensfunktion |Gry(jω)|
figure
step(Gry) % Plotta stegsvar
[Am,phim,wpi,wc]=margin(F*G);
wc
wb=bandwidth(Gry)