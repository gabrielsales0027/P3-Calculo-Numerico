%IFPB
%DATA: 16.04.19
%EDMILA DE MACEDO GOMES
%EUQA��ES TRANSCENDENTES E ALG�BRICAS
%%%%%% CALCULO DE RA�ZES - METODO DE NEWTON

TOL=1E-9; N=1000;
%12 SETS
exe='EXERCICIO 1'; fxy = 'x.^3+2*x.^2-3*x-10'; gxy='3*x.^2+4*x-3'; a=-5;b=6;x(1)=-3;raiz=2;
%exe='EXERCICIO 2'; fxy='2.*x.^3+log(x)-5';gxy='6.*x.^2+1./x';a=1;b=2;raiz=1.33084;x(1)=b;
%exe='EXERCICIO 3'; fxy=x.^3-5.*x^2+x+3';gxy='3.*x.^2-10.*x+1';a=-2.44;b=-0.38;x(1)=a;raiz=-0.064575;
%exe='EXERCICIO 4'; fxy='2.*x-sin(X)+4';gxy='2-cos(x)';a=-5;b=0;x(!)=b;raiz=2.3542;
%exe='EXERCICIO 5'; fxy='exp(x)-tan(x)';gxy='exp(x)-sec(x).^2';a=1;b=1.55;x(1)=b;raiz=1.3063
%exe='EXERCICIO 6'; fxy='10.^x+x.^3+2';gxy='(10.^x).*log(10)+3.*x.^2';a=-5;b=2.5;x(1)=a;raiz=-1.2711

%METODO DE NEWTON
n=1;
e(1)=0;
CP=1;

while(CP>TOL & n<=N)
 n=n+1;
 x(n)=x(n-1)-fun(fxy,x(n-1))/fun(gxy,x(n-1));
 e(n)=abs(x(n)-x(n-1));CP=e(n);
end

X=[(0:length(x)-1),x,e];[s,t]=size(X); tab=[' TABELA:' exe];
disp(tab),disp(' -----------------'), disp(X)
disp([' TOL=' num2str(TOL)]);
disp([' ITERA��ES GASTAS:' num2str(n-1)])
disp(' -----------------')
h=(b-a)/N;xg=a:h:b;yg=fun(fxy,xg);
ymin=floor(min(yg)/10)*10; ymax=ceil(max(yg)/10)*10;
set(gcf,'Color',[1 1 1])
21
set(axes,'Nextplot', 'Add', 'GridLineStyle', '-', 'Xgrid', 'On',...
'Ygrid', 'On', 'YLimMode', 'Manual', 'Ylim', [ymin ymax],...
'Fontsize', 12, 'FontWeight' , 'Bold');
graf=plot(xg,yg,'k');set(graf,'Linewidth',2);
graf1=plot(x(n),0,'ko');set(graf1, 'Linewidth',3);

for j=1:n-1
 traj=line([x(j) x(j)],[0 fun(fxy,x(j))]);set(traj,'LineWidth',2,'LineStyle', '-');
 traj=line([x(j) x(j+1)],[fun(fxy, x(j)) 0]);set(traj,'LineWidth', 2,'LineStyle', '-');
end
str=['f(x)=' fxy];str1=['raiz=' num2str(x(n))];
legend(str, str1, 0), xlabel('(x)'),ylabel('f(x)'), title(exe)

%function y=fun(xy,x)
%y=eval(fxy);
