for n=2:20
    sprintf('numero de condicao matriz Vandermonde para n=%d',n)
    cond(vandermonde(n),inf)
    sprintf('numero de condicao matriz Bernstein para n=%d',n)
    cond(bernstein(n),inf)
    % linha trajejada apenas para clarificar a visualizacao 
    % dos numeros de condicao para os n diferentes
    display('---------------------------------------------------')
end