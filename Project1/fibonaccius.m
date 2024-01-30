function [af,bf,k,calls] = fibonaccius(f,a1,b1,l,e)
   a(1) = a1;
   b(1) = b1;
   k = 1;
   n = 1;

   while  fibonacci(n) < (b - a) / l
      n = n + 1 ;   
   end
   
   x1(k) = a(k) + ( fibonacci(n-2)/fibonacci(n) )*( b(k) - a(k) );
   x2(k) = a(k) + ( fibonacci(n-1)/fibonacci(n) )*( b(k) - a(k) );
   fx1(k) = f(x1(k));
   fx2(k) = f(x2(k));
   
   while  k < n - 2 
      if fx1(k) > fx2(k)
        a(k+1) = x1(k);
        b(k+1) = b(k);
        
        x1(k+1) = x2(k);
        fx1(k+1) = f(x1(k+1));
        
        x2(k+1) = a(k+1) + ( fibonacci(n-k-1)/ fibonacci(n-k) )*( b(k+1) - a(k+1) );
        fx2(k+1) = f(x2(k+1)); 
      else
        a(k+1) = a(k);
        b(k+1) = x2(k);
    
        x1(k+1) = a(k+1) + ( fibonacci(n-k-2)/fibonacci(n-k) )*( b(k+1) - a(k+1) );
        fx1(k+1) = f(x1(k+1));
        
        x2(k+1) = x1(k);
        fx2(k+1) = f(x2(k+1));
      end
      k = k + 1;
   end
   
   if k == n-2
     x1(k) = x1(k-1);
     x2(k) = x1(k-1) + e;
     
     if fx1(k) > fx2(k) 
       a(k) = x1(k);
       b(k) = b(k-1);
     else
       a(k) = a(k-1);
       b(k) = x2(k);
     end 
   end
   calls = k+1;
   af = a(k);
   bf = b(k);   
end   