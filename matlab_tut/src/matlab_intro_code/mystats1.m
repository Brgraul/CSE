function [avg] = mystats1(x)
    n = length(x);
    avg = mymean(x,n);
end

function a = mymean(v,n)
% MYMEAN Example of a local function.

    a = sum(v)/n;
end