
close all, clear all,clc
a=0.35;
fonk=@(x) 1-tan(x-a);
fonk_d=@(x)-sec(x-a)^2;
x0=0;
xr=x0;
ea_s=0.000001;
for i=1:4
   
    xrold=xr;
    xr=xrold-(fonk(xrold))/(fonk_d(xrold))
    ea=100*abs((xr-xrold)/xr)
    
    
end