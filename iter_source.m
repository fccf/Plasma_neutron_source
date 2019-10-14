clear;
clc;
r = [501+5.5:11:941-5.5];
z = [0+21.75*0.5:21.75:870-21.75*0.5];
source = read_iter_source();

for i = 1:40
    s(1:40,i) = source(:,i+1)*source(i,1);
end
m = max(max(s));
s =s/m;
% for i = 1:40
%     for j = 1:40
%         if s(i,j)< 1.0e-13
%             s(i,j) = NaN;
%         end
%     end
% end
    
h=surf(r,z,s)

set(h,'edgecolor','none')
view(0,90)
colormap('jet')
axis equal
axis off
colorbar;

