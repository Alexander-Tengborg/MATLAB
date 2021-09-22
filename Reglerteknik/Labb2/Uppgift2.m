%%Uppgift A
s=tf('s'); % G�rs bar en g�ng f�r att skapa laplacevariabeln s

%Kp = 0.1
Kp=0.1; % S�tt f�rst�rkningen Kp = 0.4
Ki=0.036; % S�tt f�rst�rkningen Ki = 0.0359478 (45grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F
Gry=feedback(G*F,1);

[Am,phim,wpi,wc]=margin(Gry)

%Kp = 0.2
Kp=0.2; % S�tt f�rst�rkningen Kp = 0.1
Ki=0.082; % S�tt f�rst�rkningen Ki = 0.082 (45grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F
Gry=feedback(G*F,1);

[Am,phim,wpi,wc]=margin(Gry)

%Kp = 0.4
Kp=0.4; % S�tt f�rst�rkningen Kp = 0.4
Ki=0.141; % S�tt f�rst�rkningen Ki = 0.141 (45grader)

G=(1-0.5*s)/s/(1+0.5*s); % Generera processmodellen G
F=Ki/s+Kp; % Generera regulatorn F
Gry=feedback(G*F,1);

[Am,phim,wpi,wc]=margin(Gry)