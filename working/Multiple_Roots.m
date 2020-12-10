clear all,close all,clc

f =@(x) x^3 - 5*x^2 + 7*x -3;
f_d=@(x) 3*x^2 - 10*x + 7;
f_dd=@(x) 6*x - 10;

x0=0;
xr=x0;
table=[];
for i=1:6
   
    xrold=xr;
    xr=xrold-(f(xrold))/(f_d(xrold));
    table(i,:)=xr;
end

%modified method
for i=1:6
   
    xrold=xr;
    xr=xrold-(f(xrold)*f_d(xrold))/(f_d(xrold)^2-f(xrold)*f_dd(xrold));
    table(i;)=[table(i) xr];
end
table



