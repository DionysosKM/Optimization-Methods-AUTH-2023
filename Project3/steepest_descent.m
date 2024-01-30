function [B,n] = steepest_descent(f,e,A,g,projection)
   
   k=1;
   fgrad = gradient(f);
   points = [];
   points(1,:) = A;
   d = [];
   
   if projection == true
           if points(k,1) < -10
               points(k,1) = -10;
           elseif points(k,1) > 5
               points(k,1) = 5;    
           end
           
           if points(k,2) < -8 
               points(k,2) = -8;
           elseif points(k,2) > 12
               points(k,2) = 12;   
           end
       end
 
   while(norm(fgrad(points(k,1),points(k,2)))>=e && k<=100)
       
       d(k,:) = -fgrad(points(k,1),points(k,2));       
       points(k+1,:) = points(k,:) + g * d(k,:);
       k = k+1;
       
       if projection == true
           if points(k,1) < -10
               points(k,1) = -10;
           elseif points(k,1) > 5
               points(k,1) = 5;    
           end
           
           if points(k,2) < -8 
               points(k,2) = -8;
           elseif points(k,2) > 12
               points(k,2) = 12;   
           end
       end
       
   end
n = k-1;
B = points; %list of points
end   