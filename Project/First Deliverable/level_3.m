function level_3 (source, eventdata)

fig2=figure;
close all
iskl=imread('game3.png');
imshow(iskl);
r=7.5;
rectangle('position',[102-r,192-r,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[158-r,136-r,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[335-r,217-r,15,15],'facecolor',rand(1,3),'curvature',[1,1]);
rectangle('position',[374-r,258-r,15,15],'facecolor',rand(1,3),'curvature',[1,1]);

end

