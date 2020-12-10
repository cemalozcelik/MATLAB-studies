clear all,clc,close all

f = @(x) exp(-x)-x;
g = @(x2) f(x2)+x2;
x0=0;
es=0.01;
imax=100;

xr=x0;
iter=0;
result_table=[];
ea=NaN;


while(1)
    
    xrold=xr;
    xr=g(xrold);
    iter=iter+1;
    result_table=[result_table; [iter xr ea]];
    
    if xr~=0
       ea=abs((xr-xrold)/xr)*100; 
    end
    if ((ea<es)|| iter>=imax)
       break 
    end
end
xr=0
for i=1:10
   x0=xr;
   xr=g(x0)
end
result_table