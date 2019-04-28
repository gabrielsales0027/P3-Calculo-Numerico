%IFPB
%DATA: 09.04.19
%EDMILA DE MACEDO GOMES
%METODOS NUMERICOS - SISTEMAS LINEARES
%%%% METODOS ITERATIVOS DE JACOBI E DE GAUSS-SEIDEL

K = 10;
EPSILON = 1E-6;
x1(1) = 0;
x2(1) = 0;
for k = 1:K
 x1(k + 1) = (1 + x2(k))/2;
 x2(k + 1) = (3 - x1(k))/2;

 epsilon = max(abs([(x1(k + 1) - x1(k)),(x2(k + 1) -x2(k))]));
 if epsilon < EPSILON
 break;
 end
end
disp(' METODO DE JACOBI: ');
disp(' k x1(k) x2(k)');
disp([(1:k+1)' x1' x2']);
clear all
K = 10;
EPSILON = 1E-6;
x1(1) = 0;
x2(1) = 0;
for k = 1:K
 x1(k + 1) = (1 + x2(k))/2;
 x2(k + 1) = (3 - x1(k+1))/2;
 epsilon = max(abs([(x1(k + 1) - x1(k)), (x2(k + 1) -x2(k))]));
 if epsilon < EPSILON
 break;
 end
end
disp(' METODO DE GAUSS-SEIDEL: ');
disp(' k x1(k) x2(k)');
disp([(1:k+1)' x1' x2']);
