close all
clear all
clc

A=[1 2 3; -4 5 6; 7 8 9];
b=[-1;2;1];
D=det(A);
[m,n]=size(A);
if size(A,1)~=m
   error('Coefficient matrix A must be square') 
end

nb=n+1;
x_val=[];
Aug=[A b];

%forward  elimination
for k=1:n-1
    %partial pivoting
    [big, i]=max(abs(Aug(k:n,k)));
    ipr=i+k-1;
    if ipr~=k
       Aug([k,ipr],:)=Aug([ipr,k],:); 
    end
    for i=k+1:n
        factor = Aug(i,k)/Aug(k,k);
        Aug(i,k:nb) = Aug(i,k:nb)-factor*Aug(k,k:nb);
    end
end

% back substitution
x=zeros(n,1);
x(n) = Aug(n,nb)/Aug(n,n);
for i=n-1:-1:1
   x(i)=(Aug(i,nb)-Aug(i,i+1:n)*x(i+1:n))/Aug(i,i); 
end
x


