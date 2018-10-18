n = 15;
% Initialize the videowriter object
v = VideoWriter('sinsinc.avi');
v.FrameRate = 5;
open(v);
% simulation time interval (time step)
inc = 2*pi/(n-1);
[X,Y] = meshgrid(-10:.2:10, -10:.2:10);
for k = 1:n,
    t = inc * k;
    Z = sinsinc(t,X,Y); % output at k-th time step
    clf % clear image
    surf(X,Y,Z);
    axis([-10 10 -10 10 -1 1])
    colormap(copper) % set color scheme
                     % put the frame into movie object
    frame = getframe;
    writeVideo(v,frame);
end
close(v);
