h=0.00001;
f=@(x)cos(5*x).*exp(x);	
ddf = @(x) (f(x+h^2) - f(x)) / h^2;
ddf(2)

	
ddf = @(x) (f(x+h) + f(x-h) - 2*f(x)) / h^2;
ddf(2)

	
ddf = @(x) (f(x+h)^2 - f(x)^2) / h^2;
ddf(2)

	
ddf = @(x) (f(x+2*h) + f(x) - 2*f(x+h)) / h^2;
ddf(2)

  
f(2);
