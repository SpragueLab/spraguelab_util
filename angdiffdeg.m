function d = angdiffdeg(a1,a2)
% computes a2 MINUS a1

d = atan2d(sind(a2-a1),cosd(a2-a1));

return