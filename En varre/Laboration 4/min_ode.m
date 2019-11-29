function [t,U]=min_ode(f,I,ua,h)
% min_ode - löser begynnelsevärdesproblemet för första ordningens differential-
%           ekvationen u'=f(t,u), u(a)=ua.
%
%   Syntax:
%           [t,U]=min_ode(f,I,ua,h)
%   Argument:
%           f   - funktionshandtag: pekar på namnet till en funktionsfil eller
%                 till en anonym funktion, t.ex. f=@funk
%           I   - 1x2 matris, anger ett intervall I=[a b]
%           ua  - ett tal, anger begynnelsevärdet
%           h   - positivt tal, anger steglängden
%   Returnerar:
%           t -  en kolonnvektor, beräkningsnoderna t(i)
%           U -  en kolonnvektor, U(i) är approximationen i
%                tidpunkten t(i)
%   Beskrivning:
%           Programmet beräknar en approximativ lösning av begynnelsevärdes-
%           problemet  u'=f(t,u), a<t<b; u(a)=ua, med Eulers metod.
%           Programmet använder konstant steglängd h.
%   Exampel:
%           [t,U]=min_ode(@fun, [0, 20], 10, 1e-3)         
    a=I(1); b=I(2);
    N=(abs(a-b)/h);
    t=a+(0:N)*h; U=zeros(size(t));
    U(1)=ua;
    for n=1:N
        U(n+1)=U(n)+h*f(t(n),U(n));
    end