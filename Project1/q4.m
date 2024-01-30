clear

syms f1(x)
f1(x) = (x-1)^3 + ((x-4)^2 * cos(x));

syms f2(x)
f2(x) = exp(-2*x) + (x-2)^2;

syms f3(x)
f3(x) = x^2 * log(x/2) + sin((x/5)^2);

x = linspace(0,3);

as=0;
bs=3;

e = 0.001;
i = 1;
for l = 0.01:0.01:0.1
    [a,b,k] = derdichotomy(f1,as,bs,l);
    d1l(i,1) = k;
    d1l(i,2) = l;
    d1ab(i,1) = a;
    d1ab(i,2) = b;
    
    [a,b,k] = derdichotomy(f2,as,bs,l);
    d2l(i,1) = k;
    d2l(i,2) = l;
    d2ab(i,1) = a;
    d2ab(i,2) = b;
    
    [a,b,k] = derdichotomy(f3,as,bs,l);
    d3l(i,1) = k;
    d3l(i,2) = l;
    d3ab(i,1) = a;
    d3ab(i,2) = b;
    
    i = i+1; 
end    

figure
plot(d1l(:,2),d1l(:,1));
figure
plot(d2l(:,2),d2l(:,1));
figure
plot(d3l(:,2),d3l(:,1));

figure
plot(d1l(:,1),d1ab(:,1),d1l(:,1),d1ab(:,2));
figure
plot(d2l(:,1),d2ab(:,1),d2l(:,1),d2ab(:,2));
figure
plot(d3l(:,1),d3ab(:,1),d3l(:,1),d3ab(:,2));