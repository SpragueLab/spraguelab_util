function corr_coef = my_cc(x,y)
%         calculate correlation coefficient between two circular variables
%         Using Fisher & Lee circular correlation formula
%         x, y are both in radians [0,2pi]
%
% FROM SERENCES LAB

    n = length(x);
    A = sum(cos(x).*cos(y));
    B = sum(sin(x).*sin(y));
    C = sum(cos(x).*sin(y));
    D = sum(sin(x).*cos(y));
    E = sum(cos(2*x));
    Fl = sum(sin(2*x));
    G = sum(cos(2*y));
    H = sum(sin(2*y));
    corr_coef = 4*(A*B-C*D) ./ sqrt( ((n.^2) - (E.^2) - (Fl.^2)).*((n.^2) - (G.^2) - (H.^2)));
end