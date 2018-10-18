plot(sin(0:0.1:2*pi));
hold on
plot(cos(0:0.1:2*pi));
hold off
z = 0:0.1:2*pi;
plot(z,sin(z),'r-',z,cos(z),'b--')
clear z;
