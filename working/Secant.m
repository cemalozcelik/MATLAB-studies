close all,clear all,clc


f = @(x) (exp(-x))-x;%function
xa=0;%initial value1
xb=1;%initial value2

es=0.01;%stopping criterion
imax=100;%max iteration

x0=xb;
x_m=xa;
table=[];

for iter=1:imax
   
    x_p1 = x0 - f(x0)*((x0-x_m)/(f(x0)-f(x_m)));
    if x_p1 ~= 0
       ea=abs((x_p1-x0)/x_p1)*100; 
    end
    
    fprintf('\niter:%d xr:%.5f ea:%.7f',iter,x_p1,ea)
    table(iter,:)=[iter,x_p1,ea];
    x_m=x0;
    if ea<es
        break
    end
end
table
