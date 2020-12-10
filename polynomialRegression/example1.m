clear all,close all,clc

x=[0 1 2 3 4 5];
y=[2.1 7.7 13.6 27.2 40.9 61.1];
plot(x,y,'bx','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
title('Fig.1:direct linear regression')


%direct linear regresion

p=polyfit(x,y,1);
reg_line=p(1)*x+p(2);
hold on
plot(x,reg_line,'m','LineWidth',2)
hold off
grid

n=size(x,2);

sum_x=sum(x);
sum_y=sum(y);
sum_x2=sum(x.^2);
sum_x3=sum(x.^3);
sum_x4=sum(x.^4);
sum_xy=sum(x.*y);
sum_x2y=sum(x.^2.*y);

eq=[n sum_x sum_x2;sum_x sum_x2 sum_x3 ; sum_x2 sum_x3 sum_x4];
sol=[sum_y;sum_xy;sum_x2y];

D=det(eq);
a_val=[];
for k=1:size(eq,1)
    
    M_Cr=eq;
    M_Cr(:,k)=sol;
    x_k=det(M_Cr)/D;
    a_val(k,:)= x_k;
    
end
polyfit(x,y,2)%a_val(1,2,3)=polyfit(3,2,1)

xx=0:0.01:5;
yy=a_val(1)+a_val(2).*xx+a_val(3).*xx.^2;%
figure
plot(x,y,'bo','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
hold on
grid
plot(xx,yy,'m','LineWidth',2)
title('Fig.2    :polynomal regression ')
hold off





