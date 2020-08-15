% f1 es la primera funcion
% f2 es la segunda funcion
% xi el valor de x 
% xf hasta donde ira xi
% y1 primera y
% y2 segunda y
% h es el paso
function MetodoEuler(f1,f2,xi,xf,y1,y2,h)
  tiempo=xi;
  z=y1;
  w=y2;
  a=xi;
  error=(y2-y1)/y2
  fprintf('  x       ||    Y1     ||   Y2        ||   error\n');
  while(tiempo<=xf)
    fprintf('%0.7f  || %0.7f  ||  %0.7f  ||   %0.7f\n',double(tiempo),double(z),double(w),double(error));
    Y1=z+f1(z,w,a)*h;
    Y2=w+f2(z,a,w)*h;
    z=Y1;
    a=a+h;
    w=Y2;
    error=(w-z)/w;
    tiempo=tiempo+h;
  endwhile
endfunction
