function [r,z] = cal_rz(a,alpha)
r0 = 5.48;
delta = 0.4;
el = 2.0;

% r0 = 7.5;
% delta = 0.7;
% el = 2.1;

r = r0 + a*cos(alpha+0.4*sin(alpha));
z = el*a*sin(alpha);
end
