function [ grad ] = basicGradient(p,x,y,Dim)
%y is fixed
len = length(p);
degree = (len+1)/2;
grad = zeros(len,Dim);
for i = 1:len
    grad(i,:) = p(i)*(i-degree)*(norm(x-y)^(i-degree-2))*(x-y);
end
end