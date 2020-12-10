clear all, close all, clc

f=@(x) log(x); %function
f_d=@(x) 1/x; %first derivative of f
f_dd=@(x) -1/(x^2);%second derivative of f
f_ddd= @(x) 2/(x^3);%third derivative of f


xi2=2.99;
xi=1.59;
h= xi2-xi;%step size x(i+1)-xi
true_value=f(xi+h);
fprintf('True value: %.5f',true_value);

%Zero order Taylor Approximation

Appr0=f(xi);
eps_t0=100*(true_value-Appr0)/true_value;
fprintf('\n n=0 -->  Apprx=%.5f, eps_t=%.3f',Appr0,eps_t0)

%First order Taylor Approximation

Appr1=f(xi)+h*f_d(xi);
eps_t1=100*(true_value-Appr1)/true_value;
fprintf('\n n=1 -->  Apprx=%.5f, eps_t=%.3f',Appr1,eps_t1)

%Second order Taylor Approximation

Appr2=f(xi)+h*f_d(xi)+f_dd(xi)*h^2*(1/factorial(2));
eps_t2=100*(true_value-Appr2)/true_value;
fprintf('\n n=2 -->  Apprx=%.5f, eps_t=%.3f',Appr2,eps_t2)

%third order Taylor Approximation

Appr3=f(xi)+h*f_d(xi)+f_dd(xi)*h^2*(1/factorial(2))+f_ddd(xi)*h^3*(1/factorial(3));
eps_t3=100*(true_value-Appr3)/true_value;
fprintf('\n n=3 -->  Apprx=%.5f, eps_t=%.3f',Appr3,eps_t3)

