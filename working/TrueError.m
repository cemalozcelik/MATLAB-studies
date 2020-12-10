clc,clear all,close all

x=1;
true_value=exp(x);
tp_errors=[];
n_values=[];

for n=1:5
    toplam=0;
    for k=0:n
        f=(x^k)/factorial(k);
        toplam=toplam+f;
    end
    app_value=toplam;
    err_tp=100*(true_value-app_value)/true_value; % Error in Percentage
    tp_errors = [tp_errors err_tp];
    n_values = [n_values n];
    fprintf('\n\n x = %.5f, n = %d \nApproximated Value = %.9f, True Value = %.9f, \nRelative True Percent Error = %.2f percent\n',x,n,app_value,true_value,err_tp)
end

figure
stem(n_values,tp_errors,'m','LineWidth',2) % Use stem to plot unit step style (discrete elements)%or use plot
xlabel('n')
ylabel('True Percent Error (%)')
title('Taylor Approximation Example')
