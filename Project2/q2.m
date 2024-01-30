clear

syms f(x,y);
f(x,y) = (x.^3).*exp(-x.^2 - y.^4);

A = [0 0; -1 -1; 1 1;];

for i = 1:3
    [B,n] = steepest_descent(f,0.01,A(i,:),'armijo');
    figure(i)
    grid on
    fcontour(f,[-3 3]);
    hold on
    plot(B(1:end,1),B(1:end,2));
    scatter(B(end,1),B(end,2),'*');
    figure(3+i)
    plot(0:n,f(B(1:end,1),B(1:end,2)));
end  
    