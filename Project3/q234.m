syms x1 x2;
f(x1,x2) = (1/3) * x1^2 + 3 * x2^2;

A = [5 -5;-5 10;8 -10];
g = [0.5 0.1 0.2];   
sk = [5 15 0.1];
e = 0.01;
projection = true;
gk = g.*sk;

for i=1:3
    [B,n] = steepest_descent(f,e,A(i,:),gk(i),projection);
    figure(i);
    plot(0:n,f(B(1:end,1),B(1:end,2)));
    figure(i+3)
    grid on
    fcontour(f,[-7 7]);
    hold on
    plot(B(1:end,1),B(1:end,2));
end    

