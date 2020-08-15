%f es la funcion
%t0 tiempo inicial
%tf tiempo final
%x0 condicion inicial
%N numero de pasos
function metodoHeun(f,t0,tf,x0,N)
  h=(tf-t0)/N; %calculamos el paso de integracion
  t=t0:h:tf; %tiempo
  x=[x0]; 
  y=x0;
  for i=1:N
    t1=t(i) +2*h/3;
    k1=f(t(i),y);
    k2=f(t1,y+2*h*k1/3);
    y=y+(k1+3*k2)*h/4;
    x=[x;y];
  endfor
endfunction
