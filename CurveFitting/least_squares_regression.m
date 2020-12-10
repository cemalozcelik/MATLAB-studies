%Author : Cemal Özçelik

clear all,close all, clc

x = [1 3 5 7 10 12 13 16 18 20];%inputs
y = [4 5 6 5 8 7 6 9 12 11];
c=size(x,2);
sum_x = 0;%Requirements
sum_y=0;
sum_x2=0;
sum_xy=dot(x,y);

for i = x 
    sum_x=sum_x+i;
    sum_x2=sum_x2+i^2;
end
for i = y
    sum_y=sum_y+i;
end

mean_x=sum_x/c;
mean_y=sum_y/c;

a1=(c*sum_xy-sum_x*sum_y)/(c*sum_x2-sum_x^2);
a0=mean_y-a1*mean_x;
p=polyfit(x,y,1);%p(2)=a0 and p(1)=a1
yapp=a0+a1*x;%Result 

st=0;
sr=0;

for i=1:c
    
   st = st + (y(i)-mean_y)^2;
   sr = sr + (y(i)-a1*x(i)-a0)^2;
end

syx=sqrt(sr/(c-2)); %correlation coef 
r2=(st-sr)/st;%coef of determination, if it close to 1 : represent a good fit.

plot(x,y,'bx','LineWidth',2,'MarkerSize',7,'MarkerEdgeColor','r','MarkerFaceColor','k')
grid
hold on
plot(x,yapp,'k')



