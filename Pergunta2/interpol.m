function [z] = interpol(h, a, Y)
%Realiza interpolacao linear no intervalo que contem Y e devolve o valor z tal que y(z)=Y
[xlist, ylist]=trapezios(h, a);
min=abs(Y-ylist(1));
indMin=1;
for i=1:(a/h+1)   %considerando que a funcao e monotona crescente
    if abs(Y-ylist(i))<min
        min=abs(Y-ylist(i));
        indMin=i; %Obtemos o valor de ylist mais proximo de y
    end
end

if Y-ylist(indMin)<0  %Obtemos o segundo valor de ylist mais proximo de y
    %O que fazer se y-ylist(indMin)=0????ACHO QUE DÁ BEM
    ind2=indMin-1;
else
    ind2=indMin+1;  
end

m=(ylist(ind2)-ylist(indMin))/(xlist(ind2)-xlist(indMin));  %Declive
z=xlist(indMin)+(Y-ylist(indMin))/m; 
end
    

        
    