n = 10;
z = rand(1,n);
l = -1;
for (k=1:n)
    if (z(k)<0.5)
        l = k;
        break;
    end
end
l
clear n z l;
