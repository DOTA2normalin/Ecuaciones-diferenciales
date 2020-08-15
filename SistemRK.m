function SistemRK(f,g,xi,xf,y1,y2,h)
  % f es una funcion 
  % g es otra funcion
  % xi valor de x inicial
  % xf valor de x final
  % y1 valor de y inicial
  % y2 valor de y final
  % h es el paso
  a=xi;
  b=y1;
  c=y2;
  m=y1;
  n=y2;
  paso=xi;
  fprintf('  x       ||    Y1     ||   Y2      \n');

  while(paso<=xf)
    fprintf('%0.2f  || %0.6f  ||  %0.6f  \n',double(paso),double(b),double(c));
    s=[0 0 0 0];
    t=[0 0 0 0];
    for i=1:4
      if(i!=3 && i!=4)
        q=f(a,b,c);
        w=g(a,b,c);
        s(i)=q;
        t(i)=w;
        e=m + q *h/2;
        r=n + w *h/2;
        b=e;
        c=r;
      endif
      if(i==3)
        q=f(a,b,c);
        w=g(a,b,c);
        s(i)=q;
        t(i)=w;
        e=m + q *h;
        r=n + w *h;
        b=e;
        c=r;
      endif
      if(i==4)
        q=f(a,b,c);
        w=g(a,b,c);
        s(i)=q;
        t(i)=w;
      endif
    endfor
    d=m+1/6*[s(1)+2*(s(2)+s(3))+s(4)]*h;
    m=d;
    e=n+1/6*[t(1)+2*(t(2)+t(3))+t(4)]*h;
    n=e;
    b=d;
    c=e;
    
    paso=paso+h;
  endwhile
endfunction
