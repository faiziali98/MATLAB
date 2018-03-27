function level_1 (source, eventdata)

fig2=figure;
close all
axis equal
iskl=imread('game2.png');
imshow(iskl);
rectangle('position',[201-10,180,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[293,190,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[428,258,15,15],'facecolor',rand(1,3),'curvature',[1,1]);

end

