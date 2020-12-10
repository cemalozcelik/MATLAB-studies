clc,clf,clear,close all
v0=5;
g=9.81;
theta0=45*pi/180;

t(1)=0;x=0;y = 0;%initials

plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
axis([0 3 0 0.8])

dt=1/128;

for j =2:2000 
    t(j)=t(j-1)+dt;
    x=v0*cos(theta0)*t(j);
    y=v0*sin(theta0)*t(j)-0.5*g*t(j)^2;
    plot(x,y,'o','MarkerFaceColor','b','MarkerSize',8)
    axis([0 3 0 0.8])
    pause(0.02)
    if y<=0 , break, end 
end
