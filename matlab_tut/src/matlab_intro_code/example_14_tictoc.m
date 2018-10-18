time = zeros(100,1);
for i = 1:100,
    A = rand(i);
    b = rand(i,1);
    tic
    x = A\b;
    time(i) = toc;
end
plot(time)