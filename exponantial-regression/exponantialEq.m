close all,clear all,clc

x = [0.4 0.8 1.2 1.6 2.0 2.3];
y = [750 1000 1400 2000 2700 3750];
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





