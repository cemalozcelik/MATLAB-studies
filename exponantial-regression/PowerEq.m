
clear all,close all, clc

x = [2.5 3.5 5 6 7.5 10 12.5 15 17.5 20];%inputs
y = [7 5.5 3.9 3.6 3.1 2.8 2.6 2.4 2.3 2.3];
c=size(y,2);

plot(x,y,'bx','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
title('Fig.1:direct linear regression')

%direct linear regresion
p=polyfit(x,y,1);
reg_line=p(1)*x+p(2);
hold on
plot(x,reg_line,'m','LineWidth',2)
hold off
grid


x2=linspace(min(x),max(x),100);
%Map to log.
lny=log(y);
pp=polyfit(x,lny,1);
A=exp(pp(2));
B=pp(1);
reg_line_exp=A*exp(B*x2);
figure
plot(x,y,'bo','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
hold on
grid
plot(x2,reg_line_exp,'m','LineWidth',2)
title('Fig.1:linear regression that transformed to log space')
hold off


%Power Equation model

logx=log10(x);
logy=log10(y);
ppp=polyfit(logx,logy,1);
A2=10^(ppp(2));
B2=ppp(1);
reg_line_pow=A2*x2.^(B2);
figure
plot(x,y,'bo','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
hold on
grid
plot(x2,reg_line_pow,'m','LineWidth',2)
title('Fig.2:linear regression that transformed to power space')
hold off
%Power model has smallest error




