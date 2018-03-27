
close all
axis equal
iskl=imread('game2.png');
imshow(iskl);
rectangle('position',[201-10,180,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[293,190,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[428,258,15,15],'facecolor',rand(1,3),'curvature',[1,1]);

set(gcf, 'WindowButtonUpFcn', 'a = get(gca, ''CurrentPoint'')');
a=zeros(2,3);
l=1;

while l
    if a(1,2)>=357 && a(1,2)<=422 && a(1,1)>=62 && a(1,1)<=137
    disp('Faizi Boy')
    l=0
    end
    pause(0.1)
end