ncond=[];
for n=2:20
    V=vandermonde(n);
    ncond=[ncond log(cond(V,inf))];
end
ncond2=[];
for n=2:20
    B=bernstein(n);
    ncond2=[ncond2 log(cond(B,inf))];
end
x=[2:20];
hold on
p=plot(x,ncond,'o'); 
p1=plot(x,ncond2,'o');
xlabel('n') 
ylabel('ln(cond(V))')
hold off
legend('canonica','Bernstein')
figure()
r=plotregression(x,ncond,'canonica',x,ncond2,'Bernstein');