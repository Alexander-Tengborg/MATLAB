function x=min_newton(f,Df,x0,tol)
% min_newton - beräknar nollställe till f(x) givet startapproximation x0.
%   Syntax:
%           x = min_newton(f,Df,x0,tol)
%   Argument:
%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion. T.ex. f=@funk eller f=@(x)cos(x)-x
%           Df  - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion som ger derivatan av f. 
%                 T.ex. f=@Dfunk eller Df=@(x)-sin(x)-1
%           x0  - ett tal som ger en startapproximation av nollstället.
%           tol - positivt tal som anger önskad noggrannhet för nollstället.
%   Returnerar:
%           x   - ett tal som ger approximativt nollställe.
%   Beskrivning:
%           Programmet beräknar ett approximativt nollställe till f(x) med
%	    Newtons metod.
%   Exempel:
%           x = min_newton(@(x)cos(x)-x,@(x)-sin(x)-1,1.0,1e-5)

    x=x0; kmax=10;
	     
    for k=1:kmax
        h=-f(x)/Df(x);
        x=x+h;
        %disp([x h])
        if abs(h)<tol, break, end
    end

    msg=sprintf('Varning: Det krävs mer än kmax=10 iterationer för att bestämma nollstället.');

    if k==kmax, disp(msg), end