function [x,y]= graphics(xmax,ymax)

axis equal
hold on
axis([0,xmax,0,ymax])
x=randi([25,60],1,1);
y=randi([25,60],1,1);
h1=rectangle('position',[x,y,25,25],'facecolor','y');
h2=rectangle('position',[0,0,10,10],'facecolor','k');

end

