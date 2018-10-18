close all

[X,Y] = meshgrid(-10:.2:10, -10:.2:10);
Z = sinsinc(0.0,X,Y); 
surf(X,Y,Z);

f1_handle = gcf;
%get(f1_handle)
a1_handle = gca;
get(a1_handle,'XTick')

%return

f2_handle = figure;

n = 15;
inc = 2*pi/(n-1);

M=moviein(n);

for k=1:n
  t = inc*k;
  Z = sinsinc(t,X,Y); 
  
  clf                             % clear figure
  surf(X,Y,Z);
  axis([-10 10 -10 10 -1 1])
  %colormap(hot)
  %colormap(cool)
  %colormap(gray)
  colormap(copper)
  %colormap(hsv)
  
  M(:,k) = getframe;
  
  s = 'print -dpng myfigure';
  s = [ s num2str(k)];
  eval(s);
  
  %pause
end

movie(M);
movie2avi(M,'sinc.avi');
