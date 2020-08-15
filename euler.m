function  euler(f,g)
  x0 = input('Valor inicial de x: ');
  y0 = input('Valor de y1: ');
  y1= input('Valor de y2: ');
  xf = input('Valor final de x: ');
  h = input('Paso: ');

  a=x0;
  paso=x0;
  b=y0;
  c=y1;
  fprintf('  x       ||    Y1     ||   Y2     \n');

  while(paso<=xf)
    fprintf('%0.7f  || %0.7f  ||  %0.7f  \n',double(paso),double(b),double(c));
    Y1=b+f(b)*h;
    Y2=c+g(c,b)*h;
    b=Y1;
    c=Y2;
    paso=paso+h;
  endwhile


endfunction