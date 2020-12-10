clear all,close all, clc


x = [0.75 2 2.5 4 6 8 8.5];%inputs
y = [0.8 1.3 1.2 1.6 1.7 1.8 1.7];

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
oo_x=1./x;
oo_y=1./y;
pp=polyfit(oo_x,oo_y,1);
A3=1/pp(2);
B3=A3*pp(1);
reg_line2=(A3*x2)./(B3+x2);
figure
plot(x,y,'bo','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
hold on
grid
plot(x2,reg_line2,'m','LineWidth',2)
title('Fig.2:linear regression that transformed to saturated space')
hold off

