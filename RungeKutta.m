%f es la funcion
%xi el valor inicial de x
%y el valor inicial de y
%xf es el valor final de x
%h es el paso
function RungeKutta(f,xi,xf,y,h)
  t=xi;
  w=y;
  ya(1,1)=t;
  ya(1,2)=w;
  i=1;
  fprintf('   x   ||  k1   || k2   ||  k3  ||  k4  || ymejorado \n');
  while(t<=xf)
    fprintf('%0.4f||',double(t))
    k1=f(t,y);
    k2=f(t+0.5*h,w+0.5*k1*h);
    k3=f(t+0.5*h,w+0.5*k2*h);
    k4=f(t+h,w+k3*h);
    mejorado=w+(k1+2*k2+2*k3+k4)*h/6;
    w=mejorado;
    t=t+h;
    ya(i+1,1)=t;
    ya(i+1,2)=w;
    i=i+1;
    fprintf('%0.4f ||%0.4f ||%0.4f ||%0.4f ||%0.4f\n',double(k1),double(k2),double(k3),double(k4),double(mejorado));
  endwhile
  t=xi:0.01:xf;
  plot(ya(:,1),ya(:,2),'ro')
  grid on;
endfunction