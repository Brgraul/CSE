%%% Matlab tutorial 18.10.18
%
% Exercise 3
% 
%%% 

 

if size(A)(2) == size(B)(1)
    res = ones(size(A)(1),size(B)(2))
    for k = 1:size(A)(2)
        sum = 0
        for j = 1:size(B)(1)
            sum = sum + A(k,j).*B(j,k) 
        end
    end
else
error('Dimensions of the matrixes do not match'); 
end

