t = linspace(0,1);
xt = 20*t-54*t.^2+36*t.^3;
yt = 8.5*t-9*t.^2+4.5*t.^3;
plot(xt,yt)
hold on
plot(0,0,'o')
hold on
plot(2,2,'o')
hold on
plot(0,3,'o')
hold on
plot(2,4,'o')
title('Curva r(t)')
xlabel('x(t)')
ylabel('y(t)')