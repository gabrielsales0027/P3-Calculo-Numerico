%IFPB
%Data: 26.03.19
% EDMILA DE MACEDO GOMES
%Ex.1 - Metodo da substituição retroativa
a=[[3 4 -5 1 -10];[0 1 1 -2 -1];[0 0 4 -5 3];[0 0 0 2 2]]; n=4;
%a=[[3 4 -5 1 -10];[0 0 1 -2 0];[0 0 4 -5 3];[0 0 0 2 2]]; n=4;
%a=[[3 4 -5 1 -10];[0 0 1 -2 -1];[0 0 4 -5 3];[0 0 0 2 2]]; n=4;
% a=[[1 3 -2 7 0 -9 6 -1 6.25];[0 4 3 -1 8 6 -7 4 55.08];...
% [0 0 7 4 2 -4 -8 2 -2.454];[0 0 0 -3 5 9 5 1 51.442];...
% [0 0 0 0 2 -6 -4 8 0];[0 0 0 0 0 -5 0 3 -0.008];...
% [0 0 0 0 0 0 -9 5 7.228];[0 0 0 0 0 0 0 6 24]]; n=8;

disp('Matriz aumentada do sistema:'); disp(num2str(a));
n1=n+1; k=n-1;
x(n)=a(n,n1)/a(n,n);
for i=1:k
    L=n-i;
    x(L)=a(L,n1);
    m=L+1;
    for j=m:n
        x(L)=x(L)-a(L,j)*x(j);
    end
    x(L)=x(L)/a(L,L);
end
disp(' '); disp('Vetor solucao:'); disp(num2str(x)); disp(' ');