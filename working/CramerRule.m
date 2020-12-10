close all
clear all
clc

A=[3 2 1 0; 1 -2 0 1;0 1 2 1;-3 2 2 1];
b=[2.8;2.8/2;0;-5*(2.8)/2];
D=det(A);
if size(A,1)~=size(A,2)
   error('Coefficient matrix A must be square') 
end
x_val=[];
for k=1:size(A,1)
    
    M_Cr=A;
    M_Cr(:,k)=b;
    x_k=det(M_Cr)/D;
    x_val(k,:)= x_k;
    
end
x_val