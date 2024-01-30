function [af,bf,k,calls] = derdichotomy(f,a1,b1,l)
   a(1) = a1;
   b(1) = b1;
   k=1;
   n=0;
   df = diff(f);
   
   while (0.5)^n > l/(b-a)
     n = n + 1;
   end
   
   while k <=    n
      x(k) = ( a(k) + b(k) ) / 2;
      d = df(x(k));
      
      if d == 0
        a(k) = x(k);
        b(k) = x(k);
      elseif d > 0
        a(k+1) = a(k);
        b(k+1) = x(k);
      else  
        a(k+1) = x(k);
        b(k+1) = b(k); 
      end     
      k = k +1;
   end    
   calls = k-1;
   af = a(k);
   bf = b(k);   
end   
   
