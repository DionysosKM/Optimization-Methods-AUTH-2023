syms x1 x2;
f(x1,x2) = (1/3) * x1^2 + 3 * x2^2;

A = [6;6];
g = [0.1 0.3 3 5];    
e = 0.001;
projection = false;

for i = 1:4
    [B,n] = steepest_descent(f,e,A,g(i),projection);
    figure(i);
    plot(0:n,f(B(1:end,1),B(1:end,2)))    
end
