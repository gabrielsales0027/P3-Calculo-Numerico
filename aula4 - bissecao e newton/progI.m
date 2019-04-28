%CEFET-PB
%DATA: 16.04.19
%EDMILA DE MACEDO GOMES
%EQUAÇÕES TRANSCENDENTES E ALGEBRICAS
%%%%%% CALCULO DE RAIZES - METODO DA BISSECAO

a=-3;
b=4;
N=5000;
h=(b-a)/N;
tol=1e-3;
x=a:h:b;
fxy='(exp(x)-exp(-x))./(exp(x)+exp(-x))';
y=fun(fxy,x);
set(gcf,'Position',[1 29 800 504],'Color',[1 1 1]);
set(axes,'NextPlot','Add','XGrid','On','GridLineStyle','-','FontName','Arial','FontSize',12,'FontWeight','Bold','YLim',[-2 2],'XLim',[a-1 b+1]);
p=plot(x,y,'r');
set(p,'LineWidth',3);
q(1)=xlabel('x');
q(2)=ylabel('y(x)');
q(3)=title('METODO DA BISSECAO');
q(4)=legend(['TOLERANCIA = ',num2str(tol)]);
set(q,'FontName','TimesNewRoman','FontSize',12,'FontWeight','Bold');


% METODO DA BISSECAO

n=1;
e(n)=b-a;
while(e(n)>tol)
    ya=fun(fxy,a);
    yb=fun(fxy,b);
    xi(n)=a+(b-a)/2;
    yi(n)=fun(fxy,xi(n));
    p=plot([a a],[0 ya],'b');
    set(p,'LineWidth',2);
    p=plot([b b],[0 yb],'b');
    set(p,'LineWidth',2);
    p=plot([xi(n) xi(n)],[0 yi(n)],'b');
    set(p,'LineWidth',2);
    if (yi(n)==0), break;
    end
    if (ya*yi(n)<0)
        b=xi(n);
    else
        a=xi(n);
    end
    n=n+1;
    e(n)=b-a;
end

txt=text(3,0.7,num2str([xi']))
set(txt,'FontName','Arial','FontSize',7,'FontWeight','Bold','HorizontalAlignment','right','VerticalAlignment','top')
txt=text(4,0.7,num2str([e']))
set(txt,'FontName','Arial','FontSize',7,'FontWeight','Bold','HorizontalAlignment','right','VerticalAlignment','top')

