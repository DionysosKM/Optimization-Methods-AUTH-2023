clear

syms f1(x)
f1(x) = (x-1)^3 + ((x-4)^2 * cos(x));

syms f2(x)
f2(x) = exp(-2*x) + (x-2)^2;

syms f3(x)
f3(x) = x^2 * log(x/2) + sin((x/5)^2);

[a,b,k,calls] = dichotomy(f1,0,3,0.1,0.001);
temps(1,1)=calls;
temps(1,2)=b-a;
[a,b,k,calls] = dichotomy(f2,0,3,0.1,0.001);
temps(2,1)=calls;
temps(2,2)=b-a;
[a,b,k,calls] = dichotomy(f3,0,3,0.1,0.001);
temps(3,1)=calls;
temps(3,2)=b-a;

[a,b,k,calls] = goldensection(f1,0,3,0.1);
temps(1,3)=calls;
temps(1,4)=b-a;
[a,b,k,calls] = goldensection(f1,0,3,0.1);
temps(2,3)=calls;
temps(2,4)=b-a;
[a,b,k,calls] = goldensection(f1,0,3,0.1);
temps(3,3)=calls;
temps(3,4)=b-a;


[a,b,k,calls] = fibonaccius(f1,0,3,0.1,0.001);
temps(1,5)=calls;
temps(1,6)=b-a;
[a,b,k,calls] = fibonaccius(f1,0,3,0.1,0.001);
temps(2,5)=calls;
temps(2,6)=b-a;
[a,b,k,calls] = fibonaccius(f1,0,3,0.1,0.001);
temps(3,5)=calls;
temps(3,6)=b-a;
[a,b,k,calls] = derdichotomy(f1,0,3,0.1);
temps(1,7)=calls;
temps(1,8)=b-a;
[a,b,k,calls] = derdichotomy(f1,0,3,0.1);
temps(2,7)=calls;
temps(2,8)=b-a;
[a,b,k,calls] = derdichotomy(f1,0,3,0.1);
temps(3,7)=calls;
temps(3,8)=b-a;