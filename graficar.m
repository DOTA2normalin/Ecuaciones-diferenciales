x=linspace(-6*pi,6*pi,200)
k=101;
y=pi^2/3;
for n=1:k
  y=y+(4-(-1)^n*cos(x*n))/n^2;
endfor
y=2*y;
plot(x,y,'b');
grid on;
