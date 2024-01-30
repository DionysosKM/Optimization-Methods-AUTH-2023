clear

syms f(x,y);
f(x,y) = (x.^3).*exp(-x.^2 - y.^4);

figure(1);
fsurf(f);
grid on;
xlabel('x');
ylabel('y');
saveas(figure(1),'plotf.png');


figure(2);
fcontour(f,[-3 3]);
grid on;
xlabel('x');
ylabel('y');
saveas(figure(2),'plotfcnt.png');


