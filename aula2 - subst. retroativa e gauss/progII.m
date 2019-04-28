% IFPB
% Data: 26.03.19
% EDMILA DE MACEDO GOMES
% Ex.2 - Metodo de Gauss

%a= [[2 3 -1 5];[4 4 -3 3];[2 -3 1 -1]];n=3;
%a= [[1 1 2 4];[2 -1 -1 0];[1 -1 -1 -1]];n=3;
a= [[2 3 1 -1 6.9];[-1 1 -4 1 -6.6];[1 1 1 1 10.2];[4 -5 1 -2 -12.3]];n=4;
%a= [[4 3 2 1 10];[1 2 3 4 5];[1 -1 -1 -1 -1];[1 1 1 1 3]];n=4;
%a= [[3 4 -5 1 -10];[0 0 1 -2 -1];[0 0 4 -5 3];[0 0 0 2 2]];n=4;
%a= [[1 -2 3 1 4];[0 0 3 1 3];[0 0 1 1 2];[0 0 0 1 1]];n=4;

disp('Matriz aumentada do sistema:');
disp(num2str(a));

n1=n+1;mm=n-1;
for k=1:mm
    m=k+1;
    for i=m:n
        muLt=-a(i,k)/a(k,k);
        for j=k:n1
            a(i,j)=a(i,j)+muLt*a(k,j);
        end
    end
if isnan(a(n,n))
    disp(' '); disp('<<< O sistema e incompativel !!!>>>'); break;
end
if abs(a(n,n))==0 && abs(a(n,n1))==0
    disp(' '); disp('<<< O sistema e indeterminado !!!>>>'); break;
end
end
x(n)=a(n,n1)/a(n,n);
k=n-1;
for i=1:k
    L=n-i;
    x(L)=a(L,n1);
    m=L+1;
    for j=m:n
        x(L)=x(L)-a(L,j)*x(j);
    end
    x(L)=x(L)/a(L,L);
end

disp(' '); disp('Matriz do sistema triangular equivalente:'); disp(num2str(a));
disp(' '); disp('Vetor solucao:'); disp(num2str(x)); disp(' ');
