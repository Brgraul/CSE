A = [ 1 2 3; 4 5 6; 7 8 9]
n = [1 2 3]

rows = size(A,1);
cols = size(A,2);

B = zeros(size(A));
for i = 1:rows   
    B(i,:) = A(i,:) * n(i);    
end
disp(B)

C = A.*n';
disp(C)