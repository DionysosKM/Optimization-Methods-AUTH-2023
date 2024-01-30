function [af,bf,k,calls] = dichotomy(f,as,bs,l,e)
   a(1) = as;
   b(1) = bs;
   k=1;
   
   while b(k) - a(k) >= l
      x1(k) = (a(k) + b(k))/2 - e;
      x2(k) = (a(k) + b(k))/2 + e;
      if f(x1(k)) < f(x2(k))
         b(k+1) = x2(k);
         a(k+1) = a(k);
      else
         a(k+1) = x1(k);
         b(k+1) = b(k);
      end  
      k = k + 1;  
   end
   calls = 2 * (k-1);
   af = a(k);
   bf = b(k);
end