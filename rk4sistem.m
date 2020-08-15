function rk4sistem(f,g,x0,y0,inicio,fin,h)
  paso=inicio;
  t = inicio:h:fin;
  n = length(t);
  x = [x0]; y = [y0];
  fprintf('  x  ||   y1     ||   y2  \n');
  for i=1:n
    fprintf('%0.2f  || %0.6f  ||  %0.6f  \n',paso,double(x(i)),double(y(i)));
    paso=paso+h;
    k1 = h*f(x(i),y(i),t(i));
    a1 = h*g(x(i),y(i),t(i));
    k2 = h*f(x(i)+k1/2,y(i)+a1/2,t(i)+h/2);
    a2 = h*g(x(i)+k1/2,y(i)+a1/2,t(i)+h/2);
    k3 = h*f(x(i)+k2/2,y(i)+a2/2,t(i)+h/2);
    a3 = h*g(x(i)+k2/2,y(i)+a2/2,t(i)+h/2);
    k4 = h*f(x(i)+k3,y(i)+a3,t(i)+h);
    a4 = h*g(x(i)+k3,y(i)+a3,t(i)+h);
    x(i+1) = x(i)+(1/6)*(k1+2*k2+2*k3+k4);
    y(i+1) = y(i)+(1/6)*(a1+2*a2+2*a3+a4);
  end
  plot(x,y,'b');
  grid on;
endfunction
