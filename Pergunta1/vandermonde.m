function V = vandermonde(n)
% calcula a matriz de Vandermonde, base canonica
% primeiro cria um vetor coluna com os nos de
% interpolacao t=i/n
t = zeros(n,1);
for j = 1:n+1
    t(j) = (j-1)/n;
end
% matriz de Vandermonde, criada atraves de multiplicacoes 
% sucessivas, uma vez que o comando .^ seria mais lento
V = ones(length(t), n+1);
for i = 2:n+1
  V(:, i) = t .* V(:, i-1);
end
end