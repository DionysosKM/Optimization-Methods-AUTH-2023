syms x1 x2;
f(x1,x2) = (1/3) * x1^2 + 3 * x2^2;


figure(1)
fsurf(f,[-20 20],'ShowContours','on');
xlabel('x1');
ylabel('x2');
grid on;
