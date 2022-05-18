%Escolha do valor a do intervalo de x atraves da visualizacao do grafico da
%aproximacao de y
[X,Y]=trapezios(0.0001, 7);
grafy=plot(X,Y,'r');
%a=2

%Calculo de h e z
hbest=sqrt(10^(-3)/(pi/8+const(0.005,2)))
zbest=interpol(hbest, 2, 1)

