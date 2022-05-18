function B = bernstein(n)
% calcula a matriz utilizando a base de Bernstein
% primeiro cria um vetor coluna com os nos de
% interpolacao t=i/n
t = zeros(n,1);
for j = 1:n+1
    t(j) = (j-1)/n;
end
B = zeros(n+1,n+1);
l = length(t);
for k = 0:n
    for i = 1:l
        % expressao dos polinomios de Bernstein
        B(i,k+1) = nchoosek(n,k)*t(i)^k*(1-t(i))^(n-k);
    end
end
end
    
