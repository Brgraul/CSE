%%% Matlab tutorial 18.10.18
%
% Exercise 2
% 
%%% 

function sum = exercise2(a,b)
    if (length(a) == length(b))
      sum = 0;
      for(k = 1:length(a))
          sum = sum + a(k) + b(k)
      end
    else
       error('Dimensions of the vectors should be the same.');
    end
end