function [xlist, ylist] = trapezios(h, a)
%Aproxima a solucao y atraves do metodo dos trapeziso
%INPUT: passo h para as iteracoes do metodo e extremo a do intervalo de
%valores de x
%OUTPUT:Valores (x,y) da aproximacao da funcao solucao da eq. diferenciavel
x0=0;
y0=0;
xlist=[x0];
ylist=[y0];
for x0=h:h:a
    y1=y0+h*sin(exp(y0));
    y=y0+1/2*h*(sin(exp(y0))+sin(exp(y1)));
    y0=y;
    xlist = [xlist x0];
    ylist=[ylist y];
end
    
