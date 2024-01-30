function [af,bf,k,calls] = goldensection(f,a1,b1,l)
   a(1) = a1;
   b(1) = b1;
   k = 1;
   phi = 0.618;
   x1(k) = a(k) + (1-phi)*(b(k)-a(k)); 
   x2(k) = a(k) + phi*(b(k)-a(k));
   fx1(k) = f(x1(k));
   fx2(k) = f(x2(k));
   
   while b(k) - a(k) >= l
       if  fx1(k) > fx2(k) 
        a(k+1) = x1(k);
        b(k+1) = b(k);
        
        x1(k+1) = x2(k);
        fx1(k+1) = fx2(k);
        
        x2(k+1) = a(k+1) + phi*(b(k+1) - a(k+1));
        fx2(k+1) = f(x2(k+1));
        
       else
        a(k+1) = a(k);
        b(k+1) = x2(k);
        
        x1(k+1) = a(k+1) + (1 - phi)*(b(k+1) - a(k+1));
        fx1(k+1) = f(x1(k+1));
        
        x2(k+1) = x1(k);
        fx2(k+1) = fx1(k);
       end
   k = k +1;    
   end
   calls = k+1;
   af = a(k);
   bf = b(k);   
end
   
   