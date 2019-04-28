% IFPB
% DATA: 19.03.19
% EDMILA DE MACEDO GOMES
% Calculo Numerico - Aula 2
% APROXIMAÇÕES E ERROS
% PROGRAMA SERIE DE TAYLOR PARA FUNÇÃO SENO
% X = ANGULO EM RADIANO
% N = NUMERO DE TERMOS DA SERIE(INTEIRO IMPAR)
%%%PROGRAMA 2: EXPANSAO EM SERIE DE TAYLOR PARA FUNÇÃO SENO

disp('Aproximacao em serie de taylor da funcao seno')
X=input('Angulo, x=');
N=input('Numero de termos da serie, N=');
Fact=1;
Seno=X;
Sinal=1;
for n=3:2:N
    Fact=Fact*n*(n-1);
    Sinal=-Sinal;
    Termo=Sinal*(X^n)/Fact;
    Seno=Seno+Termo;
end
disp('O valor do seno vale');
Seno