function f = sinsinc (t,x,y)
    r = sqrt(x.^2+y.^2) + eps;
    f = cos(t)*sin(r)./r;
end 