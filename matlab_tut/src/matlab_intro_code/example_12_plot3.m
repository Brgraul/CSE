z = -2*pi:0.1:2*pi;
plot(z,sin(z),'r-',z,cos(z),'b--')
title('Sine and Cosine');
xlabel('angle');
ylabel('value');
legend('sine','cosine');
grid on
axis([-pi pi -1.5 1.5]);
clear z;
