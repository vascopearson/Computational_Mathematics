function [C] = const(h, a)
%Calcula constante da majoracao do erro do metodo dos trapezios Ch^2
[x1, y1]=(trapezios(h, a));
[x2, y2]=(trapezios(h/2, a));
y2=y2(1:2:length(y2));
y=y1-y2;
C=max(abs(y))/(h^2-(h/2)^2);
end

