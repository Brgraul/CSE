function [avg] = mystats2(x)
    n = length(x);
    avg = mymean();

    function a = mymean()
        a = sum(x)/n;
    end
end
