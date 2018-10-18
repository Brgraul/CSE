function [vol, diag] = cube_info2(e,d)
% CUBE INFO. Volume and length of the diagonal of
% a cube.
%
%  [VOL,DIAG] = CUBE INFO(E) produces the volume of
%  a cube VOL and the length of diagonal of the cube.
%   Where E is the length of a edge of the cube.
%
%  [VOLL,DIAG] = CUBE INFO(E,D) produces the volume of
%  a cube VOL and the length of diagonal of the cube.
%  Where E is the length of a edge of a D-dimensional cube.

if (nargin < 2),
    d = 3;
end

vol = e^d;
diag = e * sqrt(d);

end