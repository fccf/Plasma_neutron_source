clear;
clc;
a0 = 1.6;
a = linspace(0,a0,40);
alpha = linspace(0,2*pi,64);

for i = 1:size(a,2);
    a_i = a(i);
    for j = 1:size(alpha,2)
        alpha_j = alpha(j);
        [r(i,j),z(i,j)] = cal_rz(a_i,alpha_j);
%         s(i, j) = cal_source(a_i);
        s(i, j) = cal_Lmode_source(a_i);
        if(isnan(s(i,j))) 
            s(i,j) = 0.;
        end
    end
end
m = max(max(s));
s = s/m;
h=surf(r,z,s);
set(h,'edgecolor','none');
view(0,90);
colormap('jet');
axis equal;
axis off;
colorbar;