function [B,n] = newton(f,e,A,method)
   
   fgrad = gradient(f);
   fhess = hessian(f);
   k=1;
   points = [];
   points(1,:) = A;
   d = [];
   
   
   %initialize armijo method
   a = 0.001;
   b = 0.03;
   g = 1;
   mk = 0;
   s = g * b^mk;
   while(norm(fgrad(points(k,1),points(k,2)))>=e)
       
       d(k,:) = -(fgrad(points(k,1),points(k,2))\fhess(points(k,1),points(k,2)));
       
       if strcmp(method,'constant')
          g = 0.5;
       elseif strcmp(method,'gamma')
          syms g
          fmin(g) = f(points(k,1)+g*d(k,1),points(k,2)+g*d(k,2));
          g = goldensection(fmin,0,1,0.001);
       elseif strcmp(method,'armijo')
          while (points(k,:) - points(k,:) + g * d(k,:) < -a * b^mk * s * d(k,:) *fgrad(points(k,1),points(k,2)))
            mk = mk + 1;
            g = s * b^mk;
          end 
       end
       
       if strcmp(method,'armijo')
          mk = 0;
          g = s * b^mk;
       end 
       
      points(k+1,:) = points(k,:) + g * d(k,:); 
      k = k+1;
   end
   n = k-1;
   B = points; %list of points
end   