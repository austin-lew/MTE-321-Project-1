function [A] = getMatrixA(i, r2, theta2, theta4, r4, r5, r6, theta6)
% Returns the matrix A given an iterator
A = [1 0 -1 0 0 0 0 0 0 0 0 0 0;
     0 -1 0 -1 0 0 0 0 0 0 0 0 0;
     0 0 -r2.*sin(theta2(i)) -r2.*cos(theta2(i)) 0 0 0 0 0 0 0 0 1;
     0 0 1 0 -1 0 cos(theta4(i)) 0 0 0 0 0 0;
     0 0 0 1 0 -1 sin(theta4(i)) 0 0 0 0 0 0;
     0 0 -(r4./2).*sin(theta4(i)) (r4./2).*sin(theta4(i)) -(r4./2).*sin(theta4(i)) -(r4./2).*cos(theta4(i)) (-r4./2)+r5(i) 0 0 0 0 0 0;
     0 0 0 0 1 0 0 0 0 0 0 0 0;
     0 0 0 0 0 1 0 1 0 0 0 0 0;
     0 0 0 0 0 0 -cos(theta4(i)+pi./2) 0 -1 0 0 0 0;
     0 0 0 0 0 0 sin(theta4(i)+pi./2) 0 0 -1 0 0 0;
     0 0 0 0 0 0 0 0 1 0 -1 0 0;
     0 0 0 0 0 0 0 0 0 1 0 -1 0;
     0 0 0 0 0 0 0 0 -r6.*sin(theta6(i)) r6.*cos(theta6(i)) 0 0 0];
end