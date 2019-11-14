function y=kastbana(x,theta)
    t=theta*pi/180; % theta i grader, t i radianer
    v0=10; y0=1.85; g=9.82;
    a=g/(2*v0^2*cos(t)^2);
    b=v0^2*sin(2*t)/(2*g);
    c=v0^2*sin(t)^2/(2*g);
    y=y0-a*(x-b).^2+c;

% Uttrycket blir svårt att läsa om det inte är uppdelat i flera delar.