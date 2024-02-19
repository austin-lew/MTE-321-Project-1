function [ma] = getVectorma(i, m2, r2, theta2, d1theta2, m3, d2theta4, theta4, d1theta4, r6, d2theta6, theta6, d1theta6, m6, I6, I3, r4)
%Returns the ma vector given an iterator
    ma = [m2.*(-r2./2.*d1theta2.^2.*cos(theta2(i)));
        m2.*(-r2./2.*d1theta2.^2.*sin(theta2(i)));
        0;
        m3.*(-r2.*d1theta2.^2.*cos(theta2(i))+r4./2.*d2theta4(i).*sin(theta4(i))+r4./2.*d1theta4(i).^2.*cos(theta4(i)));
        m3.*(-r2.*d1theta2.^2.*sin(theta2(i))-r4./2.*d2theta4(i).*cos(theta4(i))+r4./2.*d1theta4(i).^2.*sin(theta4(i)));
        I3.*d2theta4(i);
        5.*(-r2.*d1theta2.^2.*cos(theta2(i))+r4.*d2theta4(i).*sin(theta4(i))+r4.*d1theta4(i).^2.*cos(theta4(i)));
        0;
        5.*(-r6.*d2theta6(i).*sin(theta6(i))-r6.*d1theta6(i).^2.*cos(theta6(i)));
        5.*(r6.*d2theta6(i).*cos(theta6(i))-r6.*d1theta6(i).^2.*sin(theta6(i)));
        m6.*(-r6./2.*d2theta6(i).*sin(theta6(i))-r6./2.*d1theta6(i).^2.*cos(theta6(i)));
        m6.*(r6./2.*d2theta6(i).*cos(theta6(i))-r6./2.*d1theta6(i).^2.*sin(theta6(i)));
        I6.*d2theta6(i)];
end