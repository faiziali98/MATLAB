function level_2 (source, eventdata)

fig2=figure;
close all
axis equal
iskl=imread('game.png');
imshow(iskl);
rectangle('position',[238.5,172.5,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[271-7.5,229-7.5,15,15],'curvature',[1,1],'facecolor',rand(1,3));
rectangle('position',[306-7.5,273-7.5,15,15],'facecolor',rand(1,3),'curvature',[1,1]);
rectangle('position',[416-7.5,328-7.5,15,15],'facecolor',rand(1,3),'curvature',[1,1]);

end

