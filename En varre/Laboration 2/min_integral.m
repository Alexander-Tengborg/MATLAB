function A=min_integral(f,l,n,k)
    a=l(1);
    b=l(2);
    
    w = @(n)(b-a)/n;
        
    if k=="v"
        x=linspace(a,b,n);
        A = sum(w(n)*f(x(1:n)));
    elseif k=="m"
        x=linspace(a,b,n+1);
        A = sum(w(n)*(f(x(1:n))+f(x(2:n+1)))/2);
    elseif k=="t"
        x=linspace(a,b,n+1);
        A = sum(w(n)*(f(x(1:n))+f(x(2:n+1)))/2);
    end