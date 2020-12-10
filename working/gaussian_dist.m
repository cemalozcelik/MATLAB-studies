close all
clear all

mu=0;
sigma=1;
x=-5:0.01:5;



f =@(x) (exp((-(x-mu).^2)/(2*sigma^2)))/(sigma*sqrt(2*pi));

fplot(f)
xlabel('x')
ylabel('f(x)')
title("Gaussian PDF")