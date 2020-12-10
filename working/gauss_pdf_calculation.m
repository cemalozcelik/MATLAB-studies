function y=gauss_pdf_calculation(x,mu,sigma)

%x:random interval
%mu:mean
%sigma:std deviation
y =(exp((-(x-mu).^2)/(2*sigma^2)))/(sigma*sqrt(2*pi));