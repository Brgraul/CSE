clc
clear

% inversion of A

A = [
    1 3 3;
    1 4 3;
    1 3 4]

B = [A, eye(3)]

for diag = 1:3,
    
   col = diag; % fix column number of current iteration
   
   for row = (col+1):(col+2), % fix row number of current iteration
       
       if (row > 3),
           row = mod(row,3);
       end
       
       display(sprintf('diag = %f',diag))
       disp(sprintf('row = %f',row))
      
       if (B(row,col) ~= 0),
           c = -B(diag,diag)/B(row,col);
           B(row,:) = B(diag,:) + c*B(row,:)
       end
        
   end
end


for i = 1:3,
    
    if (B(i,i) ~= 1),
        B(i,:) = B(i,:) /B(i,i)
    end
end

inv_A = B(:,4:6)

% verify result
inv(A)
