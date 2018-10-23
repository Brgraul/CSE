%%% Matlab tutorial 18.10.18
%
% Exercise 1
% 
%%% 

x = 0:0.1:2*pi
f1 = @(x)(sin(2.*x)+cos(x))
f2 = @(x)(x.^4+3.*x.^3-4.*x.^2-1.*x+1)

plot(x,f1(x),'r-',x, f2(x), 'b.')
title('Sine and Cosine')
xlabel('angle')
ylabel('value')
legend('sine', 'cosine')
grid on
axis([0 2*pi -10 20])