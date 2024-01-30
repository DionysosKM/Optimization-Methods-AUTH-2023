clear

syms f1(x)
f1(x) = (x-1)^3 + ((x-4)^2 * cos(x));

syms f2(x)
f2(x) = exp(-2*x) + (x-2)^2;

syms f3(x)
f3(x) = x^2 * log(x/2) + sin((x/5)^2);

x = linspace(0,3);

plot(x,f1(x));
figure
plot(x,f2(x));
figure
plot(x,f3(x));


as=0;
bs=3;
i=1;
l=0.01;

for e = 0.001:0.0005:(l/2 - 0.0005)
    [a,b,k,calls] = dichotomy(f1,as,bs,l,e);
    d1e(i,1) = k;
    d1e(i,2) = e;
    d1e(i,3) = calls;
    
    [a,b,k,calls] = dichotomy(f2,as,bs,l,e);
    d2e(i,1) = k;
    d2e(i,2) = e;
    d2e(i,3) = calls;
    
    
    [a,b,k,calls] = dichotomy(f3,as,bs,l,e);
    d3e(i,1) = k;
    d3e(i,2) = e;
    d3e(i,3) = calls;
    
    
    i = i+1;
end



figure
plot(d1e(:,2),d1e(:,3));
figure
plot(d2e(:,2),d1e(:,3));
figure
plot(d3e(:,2),d1e(:,3));

e = 0.001;
i = 1;
for l = 0.01:0.01:0.1
    [a,b,k,calls] = dichotomy(f1,as,bs,l,e);
    d1l(i,1) = k;
    d1l(i,2) = l;
    d1l(i,3) = calls;
    d1ab(i,1) = a;
    d1ab(i,2) = b;
    
    [a,b,k,calls] = dichotomy(f2,as,bs,l,e);
    d2l(i,1) = k;
    d2l(i,2) = l;
    d2l(i,3) = calls;
    d2ab(i,1) = a;
    d2ab(i,2) = b;
    
    [a,b,k,calls] = dichotomy(f3,as,bs,l,e);
    d3l(i,1) = k;
    d3l(i,2) = l;
    d3l(i,3) = calls;
    d3ab(i,1) = a;
    d3ab(i,2) = b;

    
    i = i+1; 
end    

figure
plot(d1l(:,2),d1l(:,3));
figure
plot(d2l(:,2),d2l(:,3));
figure
plot(d3l(:,2),d3l(:,3));

figure
plot(d1l(:,1),d1ab(:,1),d1l(:,1),d1ab(:,2));
figure
plot(d2l(:,1),d2ab(:,1),d2l(:,1),d2ab(:,2));
figure
plot(d3l(:,1),d3ab(:,1),d3l(:,1),d3ab(:,2));

