% IFPB
% DATA: 19.03.19
% EDMILA DE MACEDO GOMES
% Calculo Numerico - Aula 2
% APROXIMAÇÕES E ERROS

%%%PROGRAMA 1: DETERMINA A PRECISÃO DE UMA MAQUINA
EPS=1;
EPS1=2;
while(EPS1>1)
    EPS=EPS/2;
    EPS1=EPS+1;
end
disp('A maquina acha que');
EPS
disp('Vale zero')
pause

% A maquina acha que
% 
% EPS =
% 
%    1.1102e-16
% 
% Vale zero