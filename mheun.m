%f es la funcion
%y el valor inicial de y
%xi es el valor de xi
%xf es el valor final de x
%h es el paso
%g es la solucion analitica

function mheun(f,g,xi,xf,y,h)
  t=xi;
  w=y;
  yver=y;
  mejorado=y;
  ya(1,1)=t;
  ya(1,2)=w;
  i=1;
  fprintf('  x      ||   Yheun   ||  Yverdadero \n');
  while(t<=xf)
    fprintf('%0.7f || %0.7f ||',double(t),double(mejorado));
    k1=f(t,w);
    k2=f(t+h,w+k1*h);
    yver=g(t,w);
    %y1=f(z,v);
    %v=v+h*y1;
    %z=z+h;
    mejorado=w+(k1+k2)*h/2;
    w=mejorado;
    t=t+h;
    ya(i+1,1)=t;
    ya(i+1,2)=w;
    i=i+1;
    fprintf('%0.7f||\n',double(yver));
    %fprintf('%0.4f ||%0.4f || %0.4f\n',double(k1),double(k2),double(mejorado))
  endwhile
 
  t=xi:0.01:xf;
  plot(ya(:,1),ya(:,2),'ro');
  grid on;
endfunction
